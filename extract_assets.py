"""Reprodução literal do esquema de endereçamento dos gráficos Galaga 2bpp."""
from pathlib import Path
import json, hashlib, zlib
ROOT=Path(__file__).resolve().parent
ROM=ROOT/'rom'; OUT=ROOT/'assets'; OUT.mkdir(exist_ok=True)
CHARS=(ROM/'gg1_9.4l').read_bytes()
SPRITES=(ROM/'gg1_11.4d').read_bytes()+(ROM/'gg1_10.4f').read_bytes()
PROM=(ROM/'prom-5.5n').read_bytes()
CHAR_LOOKUP=(ROM/'prom-4.2n').read_bytes()
SPR_LOOKUP=(ROM/'prom-3.1c').read_bytes()
def bit(raw, offset):return (raw[offset//8]>>(offset%8))&1
def decode(raw,width,height,stride,xoff,yoff):
    out=[]
    for index in range(len(raw)*8//stride):
        pixels=[]
        for y in range(height):
            row=[]
            for x in range(width):
                p=index*stride+yoff[y]+xoff[x]
                row.append(bit(raw,p)|bit(raw,p+4)<<1)
            pixels.append(row)
        out.append(pixels)
    return out
chars=decode(CHARS,8,8,128,[64,65,66,67,0,1,2,3],[i*8 for i in range(8)])
sprites=decode(SPRITES,16,16,512,[*range(4),*[64+i for i in range(4)],*[128+i for i in range(4)],*[192+i for i in range(4)]],[*[i*8 for i in range(8)],*[256+i*8 for i in range(8)]])
# Resistive DAC reference approximation: 1000,470,220 Ohm inputs.
def dac(v,bits):
    weights=[1/r for r in (1000,470,220)][:bits]
    return round(255*sum(weights[i]*((v>>i)&1) for i in range(bits))/sum(weights))
def palette(v):return [dac(v,3),dac(v>>3,3),dac(v>>6,2)]
colors=[palette(c) for c in PROM]
assets={'metadata':{'format':'literal 2-bit palette-index arrays','sprites':'16x16 2bpp, 128 objects','characters':'8x8 2bpp, 256 objects','transparency':'pixel 0','original_files':['gg1_11.4d','gg1_10.4f','gg1_9.4l']},'sprites':sprites,'chars':chars,'palette':colors,'char_lookup':list(CHAR_LOOKUP),'sprite_lookup':list(SPR_LOOKUP)}
(OUT/'rom_graphics.json').write_text(json.dumps(assets,separators=(',',':')))
# Export explicit Python array literals: accessible to teaching without image libraries.
with (OUT/'sprite_arrays.py').open('w') as f:
    f.write('"""Native ROM pixels decoded as 16x16 arrays, each element 0..3 (2 bpp). Generated with extract_assets.py."""\n')
    f.write('SPRITES = '+repr(sprites)+'\n')
    f.write('CHARS = '+repr(chars)+'\n')
    f.write('PALETTE = '+repr(colors)+'\n')
    f.write('SPRITE_LOOKUP = '+repr(list(SPR_LOOKUP))+'\n')
    f.write('CHAR_LOOKUP = '+repr(list(CHAR_LOOKUP))+'\n')
manifest={p.name:{'bytes':p.stat().st_size,'crc32':f'{zlib.crc32(p.read_bytes()):08x}','sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in sorted(ROM.iterdir())}
(OUT/'rom_manifest.json').write_text(json.dumps(manifest,indent=2))
print(f'Exportados {len(sprites)} sprites, {len(chars)} caracteres, paleta de {len(colors)} entradas')
