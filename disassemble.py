"""Static Z80 ROM analysis, linear-sweep disassembly with explicit uncertainty.
Outputs full byte coverage for each CPU (instructions or DB).
Does not claim control flow recovery or faithful emulation.
"""
from pathlib import Path
from collections import Counter
import json
ROOT=Path(__file__).resolve().parent
REG=['B','C','D','E','H','L','(HL)','A']
RR=['BC','DE','HL','SP'];CC=['NZ','Z','NC','C','PO','PE','P','M'];ALU=['ADD A,','ADC A,','SUB ','SBC A,','AND ','XOR ','OR ','CP ']

def decode(mem,pc):
    op=mem[pc];x=op>>6;y=(op>>3)&7;z=op&7;p=y>>1;q=y&1
    def u8(i):return mem[pc+i] if pc+i<len(mem) else 0
    def u16(i):return u8(i)|(u8(i+1)<<8)
    def rel(i):return (pc+i+1+((u8(i)+128)%256-128))&65535
    if op==0xCB:
        a=u8(1);xx=a>>6;yy=(a>>3)&7;zz=a&7
        return (['RLC','RRC','RL','RR','SLA','SRA','SLL','SRL'][yy]+' '+REG[zz] if xx==0 else ('BIT' if xx==1 else 'RES' if xx==2 else 'SET')+f' {yy},{REG[zz]}',2)
    if op==0xED:
        a=u8(1)
        ops={0x44:'NEG',0x45:'RETN',0x4D:'RETI',0x47:'LD I,A',0x4F:'LD R,A',0x57:'LD A,I',0x5F:'LD A,R',0xA0:'LDI',0xA1:'CPI',0xA2:'INI',0xA3:'OUTI',0xA8:'LDD',0xA9:'CPD',0xAA:'IND',0xAB:'OUTD',0xB0:'LDIR',0xB1:'CPIR',0xB2:'INIR',0xB3:'OTIR',0xB8:'LDDR',0xB9:'CPDR',0xBA:'INDR',0xBB:'OTDR'}
        if a in ops:return ops[a],2
        if a&0xC7==0x40:return f'IN {REG[(a>>3)&7]},(C)',2
        if a&0xC7==0x41:return f'OUT (C),{REG[(a>>3)&7]}',2
        if a&0xCF==0x42:return f'SBC HL,{RR[(a>>4)&3]}',2
        if a&0xCF==0x4A:return f'ADC HL,{RR[(a>>4)&3]}',2
        if a&0xCF in (0x43,0x4B):return f'{"LD ("+hex(u16(2))+"),"+RR[(a>>4)&3] if a&8==0 else "LD "+RR[(a>>4)&3]+",("+hex(u16(2))+")"}',4
        return f'DB 0xED,0x{a:02X} ; undefined/alias',2
    if op in (0xDD,0xFD):
        # Preserve all bytes with explicit prefix, avoid inventing semantics.
        return f'DB 0x{op:02X} ; IX/IY prefix, manual analysis required',1
    if x==0:
        if z==0:
            if y==0:return 'NOP',1
            if y==1:return "EX AF,AF'",1
            if y==2:return f'DJNZ 0x{rel(1):04X}',2
            if y==3:return f'JR 0x{rel(1):04X}',2
            return f'JR {CC[y-4]},0x{rel(1):04X}',2
        if z==1:return (f'LD {RR[p]},0x{u16(1):04X}',3) if q==0 else (f'ADD HL,{RR[p]}',1)
        if z==2:
            t=['(BC)','(DE)',f'(0x{u16(1):04X})',f'(0x{u16(1):04X})'][p]
            r='HL' if p==2 else 'A'
            return (f'LD {t},{r}',3 if p>=2 else 1) if q==0 else (f'LD {r},{t}',3 if p>=2 else 1)
        if z==3:return ('INC ' if q==0 else 'DEC ')+RR[p],1
        if z==4:return 'INC '+REG[y],1
        if z==5:return 'DEC '+REG[y],1
        if z==6:return f'LD {REG[y]},0x{u8(1):02X}',2
        return ['RLCA','RRCA','RLA','RRA','DAA','CPL','SCF','CCF'][y],1
    if x==1:return ('HALT' if op==0x76 else f'LD {REG[y]},{REG[z]}'),1
    if x==2:return ALU[y]+REG[z],1
    if z==0:return f'RET {CC[y]}',1
    if z==1:
        if q==0:return 'POP '+['BC','DE','HL','AF'][p],1
        return ['RET','EXX','JP (HL)','LD SP,HL'][p],1
    if z==2:return f'JP {CC[y]},0x{u16(1):04X}',3
    if z==3:
        return [(f'JP 0x{u16(1):04X}',3),('DB 0xCB ; escaped',1),(f'OUT (0x{u8(1):02X}),A',2),(f'IN A,(0x{u8(1):02X})',2),('EX (SP),HL',1),('EX DE,HL',1),('DI',1),('EI',1)][y]
    if z==4:return f'CALL {CC[y]},0x{u16(1):04X}',3
    if z==5:
        if q==0:return 'PUSH '+['BC','DE','HL','AF'][p],1
        if p==0:return f'CALL 0x{u16(1):04X}',3
        return f'DB 0x{op:02X} ; prefix',1
    if z==6:return f'{ALU[y]}0x{u8(1):02X}',2
    return f'RST 0x{y*8:02X}',1

def build():
    cpu={'cpu0':['gg1_1b.3p','gg1_2b.3m','gg1_3.2m','gg1_4b.2l'],'cpu1':['gg1_5b.3f'],'cpu2':['gg1_7b.2c']}
    result={}
    (ROOT/'docs'/'disassembly').mkdir(exist_ok=True)
    for name,paths in cpu.items():
        mem=b''.join((ROOT/'rom'/p).read_bytes() for p in paths);pc=0;lines=[];opcounts=Counter()
        while pc<len(mem):
            asm,size=decode(mem,pc)
            size=min(size,len(mem)-pc)
            opcounts[mem[pc]]+=1
            lines.append(f'{pc:04X}: {mem[pc:pc+size].hex(" ").upper():<13} {asm}')
            pc+=size
        (ROOT/'docs'/'disassembly'/f'{name}_linear_sweep.asm').write_text('\n'.join(lines)+'\n')
        result[name]={'rom_files':paths,'bytes':len(mem),'listing_lines':len(lines),'opcode_histogram':{f'{k:02X}':v for k,v in opcounts.items()},'method':'linear sweep, no code/data separation'}
    (ROOT/'docs'/'disassembly_report.json').write_text(json.dumps(result,indent=2))
    print('Static listing:',[(k,v['listing_lines']) for k,v in result.items()])
if __name__=='__main__':build()
