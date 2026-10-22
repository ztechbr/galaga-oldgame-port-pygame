0000: 31 00 91      LD SP,0x9100
0003: C3 7C 05      JP 0x057C
0006: FF            RST 0x38
0007: FF            RST 0x38
0008: 87            ADD A,A
0009: 30 05         JR NC,0x0010
000B: 24            INC H
000C: C3 10 00      JP 0x0010
000F: FF            RST 0x38
0010: 85            ADD A,L
0011: 6F            LD L,A
0012: D0            RET NC
0013: 24            INC H
0014: C9            RET
0015: FF            RST 0x38
0016: FF            RST 0x38
0017: FF            RST 0x38
0018: 77            LD (HL),A
0019: 23            INC HL
001A: 10 FC         DJNZ 0x0018
001C: C9            RET
001D: 23            INC HL
001E: 06 16         LD B,0x16
0020: 23            INC HL
0021: 00            NOP
0022: 19            ADD HL,DE
0023: F7            RST 0x30
0024: 4B            LD C,E
0025: 00            NOP
0026: 23            INC HL
0027: F0            RET P
0028: 02            LD (BC),A
0029: F0            RET P
002A: 5E            LD E,(HL)
002B: 00            NOP
002C: 23            INC HL
002D: F0            RET P
002E: 24            INC H
002F: FB            EI
0030: 23            INC HL
0031: 00            NOP
0032: FF            RST 0x38
0033: FF            RST 0x38
0034: E9            JP (HL)
0035: FF            RST 0x38
0036: FF            RST 0x38
0037: FF            RST 0x38
0038: C3 13 05      JP 0x0513
003B: BE            CP (HL)
003C: 05            DEC B
003D: BF            CP A
003E: 05            DEC B
003F: D3 08         OUT (0x08),A
0041: BE            CP (HL)
0042: 05            DEC B
0043: F5            PUSH AF
0044: 06 EE         LD B,0xEE
0046: 05            DEC B
0047: BE            CP (HL)
0048: 05            DEC B
0049: CA 0E 23      JP Z,0x230E
004C: F0            RET P
004D: 26 23         LD H,0x23
004F: 14            INC D
0050: 13            INC DE
0051: FE 0D         CP 0x0D
0053: 0B            DEC BC
0054: 0A            LD A,(BC)
0055: 08            EX AF,AF'
0056: 06 04         LD B,0x04
0058: 03            INC BC
0059: 01 23 FF      LD BC,0xFF23
005C: FF            RST 0x38
005D: FF            RST 0x38
005E: 44            LD B,H
005F: E4 18 FB      CALL PO,0xFB18
0062: 44            LD B,H
0063: 00            NOP
0064: FF            RST 0x38
0065: FF            RST 0x38
0066: C9            RET
0067: 23            INC HL
0068: 08            EX AF,AF'
0069: 08            EX AF,AF'
006A: 23            INC HL
006B: 03            INC BC
006C: 1B            DEC DE
006D: 23            INC HL
006E: 08            EX AF,AF'
006F: 0F            RRCA
0070: 23            INC HL
0071: 16 15         LD D,0x15
0073: F7            RST 0x30
0074: 84            ADD A,H
0075: 00            NOP
0076: 23            INC HL
0077: 16 03         LD D,0x03
0079: F0            RET P
007A: 97            SUB A
007B: 00            NOP
007C: 23            INC HL
007D: 16 19         LD D,0x19
007F: FB            EI
0080: 23            INC HL
0081: 00            NOP
0082: FF            RST 0x38
0083: FF            RST 0x38
0084: 23            INC HL
0085: 16 01         LD D,0x01
0087: FE 0D         CP 0x0D
0089: 0C            INC C
008A: 0A            LD A,(BC)
008B: 08            EX AF,AF'
008C: 06 04         LD B,0x04
008E: 03            INC BC
008F: 01 23 FC      LD BC,0xFC23
0092: 30 23         JR NC,0x00B7
0094: 00            NOP
0095: FF            RST 0x38
0096: FF            RST 0x38
0097: 44            LD B,H
0098: 27            DAA
0099: 0E FB         LD C,0xFB
009B: 44            LD B,H
009C: 00            NOP
009D: FF            RST 0x38
009E: FF            RST 0x38
009F: 33            INC SP
00A0: 06 18         LD B,0x18
00A2: 23            INC HL
00A3: 00            NOP
00A4: 18 F7         JR 0x009D
00A6: B6            OR (HL)
00A7: 00            NOP
00A8: 23            INC HL
00A9: F0            RET P
00AA: 08            EX AF,AF'
00AB: F0            RET P
00AC: CC 00 23      CALL Z,0x2300
00AF: F0            RET P
00B0: 20 FB         JR NZ,0x00AD
00B2: 23            INC HL
00B3: 00            NOP
00B4: FF            RST 0x38
00B5: FF            RST 0x38
00B6: 23            INC HL
00B7: F0            RET P
00B8: 20 23         JR NZ,0x00DD
00BA: 10 0D         DJNZ 0x00C9
00BC: FE 1A         CP 0x1A
00BE: 18 15         JR 0x00D5
00C0: 10 0C         DJNZ 0x00CE
00C2: 08            EX AF,AF'
00C3: 05            DEC B
00C4: 03            INC BC
00C5: 23            INC HL
00C6: FE 30         CP 0x30
00C8: 23            INC HL
00C9: 00            NOP
00CA: FF            RST 0x38
00CB: FF            RST 0x38
00CC: 33            INC SP
00CD: E0            RET PO
00CE: 10 FB         DJNZ 0x00CB
00D0: 44            LD B,H
00D1: 00            NOP
00D2: FF            RST 0x38
00D3: FF            RST 0x38
00D4: 23            INC HL
00D5: 03            INC BC
00D6: 18 33         JR 0x010B
00D8: 04            INC B
00D9: 10 23         DJNZ 0x00FE
00DB: 08            EX AF,AF'
00DC: 0A            LD A,(BC)
00DD: 44            LD B,H
00DE: 16 12         LD D,0x12
00E0: F7            RST 0x30
00E1: 60            LD H,B
00E2: 01 44 16      LD BC,0x1644
00E5: 03            INC BC
00E6: F0            RET P
00E7: 73            LD (HL),E
00E8: 01 44 16      LD BC,0x1644
00EB: 1D            DEC E
00EC: FB            EI
00ED: 23            INC HL
00EE: 00            NOP
00EF: FF            RST 0x38
00F0: FF            RST 0x38
00F1: 12            LD (DE),A
00F2: 18 17         JR 0x010B
00F4: 12            LD (DE),A
00F5: 00            NOP
00F6: 80            ADD A,B
00F7: FF            RST 0x38
00F8: FF            RST 0x38
00F9: FF            RST 0x38
00FA: FF            RST 0x38
00FB: FF            RST 0x38
00FC: FF            RST 0x38
00FD: FF            RST 0x38
00FE: FF            RST 0x38
00FF: FF            RST 0x38
0100: 14            INC D
0101: 06 14         LD B,0x14
0103: 0C            INC C
0104: 14            INC D
0105: 08            EX AF,AF'
0106: 14            INC D
0107: 0A            LD A,(BC)
0108: 1C            INC E
0109: 00            NOP
010A: 1C            INC E
010B: 12            LD (DE),A
010C: 1E 00         LD E,0x00
010E: 1E 12         LD E,0x12
0110: 1C            INC E
0111: 02            LD (BC),A
0112: 1C            INC E
0113: 10 1E         DJNZ 0x0133
0115: 02            LD (BC),A
0116: 1E 10         LD E,0x10
0118: 1C            INC E
0119: 04            INC B
011A: 1C            INC E
011B: 0E 1E         LD C,0x1E
011D: 04            INC B
011E: 1E 0E         LD E,0x0E
0120: 1C            INC E
0121: 06 1C         LD B,0x1C
0123: 0C            INC C
0124: 1E 06         LD E,0x06
0126: 1E 0C         LD E,0x0C
0128: 1C            INC E
0129: 08            EX AF,AF'
012A: 1C            INC E
012B: 0A            LD A,(BC)
012C: 1E 08         LD E,0x08
012E: 1E 0A         LD E,0x0A
0130: 16 06         LD D,0x06
0132: 16 0C         LD D,0x0C
0134: 16 08         LD D,0x08
0136: 16 0A         LD D,0x0A
0138: 18 00         JR 0x013A
013A: 18 12         JR 0x014E
013C: 1A            LD A,(DE)
013D: 00            NOP
013E: 1A            LD A,(DE)
013F: 12            LD (DE),A
0140: 18 02         JR 0x0144
0142: 18 10         JR 0x0154
0144: 1A            LD A,(DE)
0145: 02            LD (BC),A
0146: 1A            LD A,(DE)
0147: 10 18         DJNZ 0x0161
0149: 04            INC B
014A: 18 0E         JR 0x015A
014C: 1A            LD A,(DE)
014D: 04            INC B
014E: 1A            LD A,(DE)
014F: 0E 18         LD C,0x18
0151: 06 18         LD B,0x18
0153: 0C            INC C
0154: 1A            LD A,(DE)
0155: 06 1A         LD B,0x1A
0157: 0C            INC C
0158: 18 08         JR 0x0162
015A: 18 0A         JR 0x0166
015C: 1A            LD A,(DE)
015D: 08            EX AF,AF'
015E: 1A            LD A,(DE)
015F: 0A            LD A,(BC)
0160: 44            LD B,H
0161: 16 06         LD D,0x06
0163: FE 0C         CP 0x0C
0165: 0B            DEC BC
0166: 0A            LD A,(BC)
0167: 08            EX AF,AF'
0168: 06 04         LD B,0x04
016A: 02            LD (BC),A
016B: 01 23 FE      LD BC,0xFE23
016E: 30 23         JR NC,0x0193
0170: 00            NOP
0171: FF            RST 0x38
0172: FF            RST 0x38
0173: 66            LD H,(HL)
0174: 20 14         JR NZ,0x018A
0176: FB            EI
0177: 44            LD B,H
0178: 00            NOP
0179: FF            RST 0x38
017A: FF            RST 0x38
017B: 23            INC HL
017C: 06 18         LD B,0x18
017E: 23            INC HL
017F: 00            NOP
0180: 18 F7         JR 0x0179
0182: 92            SUB D
0183: 01 44 F0      LD BC,0xF044
0186: 08            EX AF,AF'
0187: F0            RET P
0188: A8            XOR B
0189: 01 44 F0      LD BC,0xF044
018C: 20 FB         JR NZ,0x0189
018E: 23            INC HL
018F: 00            NOP
0190: FF            RST 0x38
0191: FF            RST 0x38
0192: 44            LD B,H
0193: F0            RET P
0194: 26 23         LD H,0x23
0196: 10 0B         DJNZ 0x01A3
0198: FE 22         CP 0x22
019A: 20 1E         JR NZ,0x01BA
019C: 1B            DEC DE
019D: 18 15         JR 0x01B4
019F: 12            LD (DE),A
01A0: 10 23         DJNZ 0x01C5
01A2: FE 30         CP 0x30
01A4: 23            INC HL
01A5: 00            NOP
01A6: FF            RST 0x38
01A7: FF            RST 0x38
01A8: 66            LD H,(HL)
01A9: E0            RET PO
01AA: 10 FB         DJNZ 0x01A7
01AC: 44            LD B,H
01AD: 00            NOP
01AE: FF            RST 0x38
01AF: FF            RST 0x38
01B0: 23            INC HL
01B1: 03            INC BC
01B2: 20 23         JR NZ,0x01D7
01B4: 08            EX AF,AF'
01B5: 0F            RRCA
01B6: 23            INC HL
01B7: 16 12         LD D,0x12
01B9: F7            RST 0x30
01BA: CA 01 23      JP Z,0x2301
01BD: 16 03         LD D,0x03
01BF: F0            RET P
01C0: E0            RET PO
01C1: 01 23 16      LD BC,0x1623
01C4: 1D            DEC E
01C5: FB            EI
01C6: 23            INC HL
01C7: 00            NOP
01C8: FF            RST 0x38
01C9: FF            RST 0x38
01CA: 23            INC HL
01CB: 16 01         LD D,0x01
01CD: FE 0D         CP 0x0D
01CF: 0C            INC C
01D0: 0B            DEC BC
01D1: 09            ADD HL,BC
01D2: 07            RLCA
01D3: 05            DEC B
01D4: 03            INC BC
01D5: 02            LD (BC),A
01D6: 23            INC HL
01D7: 02            LD (BC),A
01D8: 20 23         JR NZ,0x01FD
01DA: FC 12 23      CALL M,0x2312
01DD: 00            NOP
01DE: FF            RST 0x38
01DF: FF            RST 0x38
01E0: 44            LD B,H
01E1: 20 14         JR NZ,0x01F7
01E3: FB            EI
01E4: 44            LD B,H
01E5: 00            NOP
01E6: FF            RST 0x38
01E7: FF            RST 0x38
01E8: 23            INC HL
01E9: 00            NOP
01EA: 10 23         DJNZ 0x020F
01EC: 01 40 22      LD BC,0x2240
01EF: 0C            INC C
01F0: 37            SCF
01F1: 23            INC HL
01F2: 00            NOP
01F3: FF            RST 0x38
01F4: FF            RST 0x38
01F5: 23            INC HL
01F6: 02            LD (BC),A
01F7: 3A 23 10      LD A,(0x1023)
01FA: 09            ADD HL,BC
01FB: 23            INC HL
01FC: 00            NOP
01FD: 18 23         JR 0x0222
01FF: 20 10         JR NZ,0x0211
0201: 23            INC HL
0202: 00            NOP
0203: 18 23         JR 0x0228
0205: 20 0D         JR NZ,0x0214
0207: 23            INC HL
0208: 00            NOP
0209: FF            RST 0x38
020A: FF            RST 0x38
020B: 23            INC HL
020C: 00            NOP
020D: 10 23         DJNZ 0x0232
020F: 01 30 00      LD BC,0x0030
0212: 40            LD B,B
0213: 08            EX AF,AF'
0214: 23            INC HL
0215: FF            RST 0x38
0216: 30 23         JR NC,0x023B
0218: 00            NOP
0219: FF            RST 0x38
021A: FF            RST 0x38
021B: 23            INC HL
021C: 00            NOP
021D: 30 23         JR NC,0x0242
021F: 05            DEC B
0220: 80            ADD A,B
0221: 23            INC HL
0222: 05            DEC B
0223: 4C            LD C,H
0224: 23            INC HL
0225: 04            INC B
0226: 01 23 00      LD BC,0x0023
0229: 50            LD D,B
022A: FF            RST 0x38
022B: 23            INC HL
022C: 00            NOP
022D: 28 23         JR Z,0x0252
022F: 06 1D         LD B,0x1D
0231: 23            INC HL
0232: 00            NOP
0233: 11 00 40      LD DE,0x4000
0236: 08            EX AF,AF'
0237: 23            INC HL
0238: 00            NOP
0239: 11 23 FA      LD DE,0xFA23
023C: 1D            DEC E
023D: 23            INC HL
023E: 00            NOP
023F: 50            LD D,B
0240: FF            RST 0x38
0241: 23            INC HL
0242: 00            NOP
0243: 21 00 20      LD HL,0x2000
0246: 10 23         DJNZ 0x026B
0248: F8            RET M
0249: 20 23         JR NZ,0x026E
024B: FF            RST 0x38
024C: 20 23         JR NZ,0x0271
024E: F8            RET M
024F: 1B            DEC DE
0250: 23            INC HL
0251: E8            RET PE
0252: 0B            DEC BC
0253: 23            INC HL
0254: 00            NOP
0255: 21 00 20      LD HL,0x2000
0258: 08            EX AF,AF'
0259: 23            INC HL
025A: 00            NOP
025B: 42            LD B,D
025C: FF            RST 0x38
025D: 23            INC HL
025E: 00            NOP
025F: 08            EX AF,AF'
0260: 00            NOP
0261: 20 08         JR NZ,0x026B
0263: 23            INC HL
0264: F0            RET P
0265: 20 23         JR NZ,0x028A
0267: 10 20         DJNZ 0x0289
0269: 23            INC HL
026A: F0            RET P
026B: 40            LD B,B
026C: 23            INC HL
026D: 10 20         DJNZ 0x028F
026F: 23            INC HL
0270: F0            RET P
0271: 20 00         JR NZ,0x0273
0273: 20 08         JR NZ,0x027D
0275: 23            INC HL
0276: 00            NOP
0277: 30 FF         JR NC,0x0278
0279: 23            INC HL
027A: 10 0C         DJNZ 0x0288
027C: 23            INC HL
027D: 00            NOP
027E: 20 23         JR NZ,0x02A3
0280: E8            RET PE
0281: 10 23         DJNZ 0x02A6
0283: F4 10 23      CALL P,0x2310
0286: E8            RET PE
0287: 10 23         DJNZ 0x02AC
0289: F4 32 23      CALL P,0x2332
028C: E8            RET PE
028D: 10 23         DJNZ 0x02B2
028F: F4 32 23      CALL P,0x2332
0292: E8            RET PE
0293: 10 23         DJNZ 0x02B8
0295: F4 10 23      CALL P,0x2310
0298: E8            RET PE
0299: 0E 23         LD C,0x23
029B: 02            LD (BC),A
029C: 30 FF         JR NC,0x029D
029E: 23            INC HL
029F: F1            POP AF
02A0: 08            EX AF,AF'
02A1: 23            INC HL
02A2: 00            NOP
02A3: 10 23         DJNZ 0x02C8
02A5: 05            DEC B
02A6: 3C            INC A
02A7: 23            INC HL
02A8: 07            RLCA
02A9: 42            LD B,D
02AA: 23            INC HL
02AB: 0A            LD A,(BC)
02AC: 40            LD B,B
02AD: 23            INC HL
02AE: 10 2D         DJNZ 0x02DD
02B0: 23            INC HL
02B1: 20 19         JR NZ,0x02CC
02B3: 00            NOP
02B4: FC 14 23      CALL M,0x2314
02B7: 02            LD (BC),A
02B8: 4A            LD C,D
02B9: FF            RST 0x38
02BA: 23            INC HL
02BB: 04            INC B
02BC: 20 23         JR NZ,0x02E1
02BE: 00            NOP
02BF: 16 23         LD D,0x23
02C1: F0            RET P
02C2: 30 23         JR NC,0x02E7
02C4: 00            NOP
02C5: 12            LD (DE),A
02C6: 23            INC HL
02C7: 10 30         DJNZ 0x02F9
02C9: 23            INC HL
02CA: 00            NOP
02CB: 12            LD (DE),A
02CC: 23            INC HL
02CD: 10 30         DJNZ 0x02FF
02CF: 23            INC HL
02D0: 00            NOP
02D1: 16 23         LD D,0x23
02D3: 04            INC B
02D4: 20 23         JR NZ,0x02F9
02D6: 00            NOP
02D7: 10 FF         DJNZ 0x02D8
02D9: 23            INC HL
02DA: 00            NOP
02DB: 15            DEC D
02DC: 00            NOP
02DD: 20 08         JR NZ,0x02E7
02DF: 23            INC HL
02E0: 00            NOP
02E1: 11 00 E0      LD DE,0xE000
02E4: 08            EX AF,AF'
02E5: 23            INC HL
02E6: 00            NOP
02E7: 18 00         JR 0x02E9
02E9: 20 08         JR NZ,0x02F3
02EB: 23            INC HL
02EC: 00            NOP
02ED: 13            INC DE
02EE: 00            NOP
02EF: E0            RET PO
02F0: 08            EX AF,AF'
02F1: 23            INC HL
02F2: 00            NOP
02F3: 1F            RRA
02F4: 00            NOP
02F5: 20 08         JR NZ,0x02FF
02F7: 23            INC HL
02F8: 00            NOP
02F9: 30 FF         JR NC,0x02FA
02FB: 23            INC HL
02FC: 02            LD (BC),A
02FD: 0E 23         LD C,0x23
02FF: 00            NOP
0300: 34            INC (HL)
0301: 23            INC HL
0302: 12            LD (DE),A
0303: 19            ADD HL,DE
0304: 23            INC HL
0305: 00            NOP
0306: 20 23         JR NZ,0x032B
0308: E0            RET PO
0309: 0E 23         LD C,0x23
030B: 00            NOP
030C: 12            LD (DE),A
030D: 23            INC HL
030E: 20 0E         JR NZ,0x031E
0310: 23            INC HL
0311: 00            NOP
0312: 0C            INC C
0313: 23            INC HL
0314: E0            RET PO
0315: 0E 23         LD C,0x23
0317: 1B            DEC DE
0318: 08            EX AF,AF'
0319: 23            INC HL
031A: 00            NOP
031B: 10 FF         DJNZ 0x031C
031D: 23            INC HL
031E: 00            NOP
031F: 0D            DEC C
0320: 00            NOP
0321: C0            RET NZ
0322: 04            INC B
0323: 23            INC HL
0324: 00            NOP
0325: 21 00 40      LD HL,0x4000
0328: 06 23         LD B,0x23
032A: 00            NOP
032B: 51            LD D,C
032C: 00            NOP
032D: C0            RET NZ
032E: 06 23         LD B,0x23
0330: 00            NOP
0331: 73            LD (HL),E
0332: FF            RST 0x38
0333: 23            INC HL
0334: 08            EX AF,AF'
0335: 20 23         JR NZ,0x035A
0337: 00            NOP
0338: 16 23         LD D,0x23
033A: E0            RET PO
033B: 0C            INC C
033C: 23            INC HL
033D: 02            LD (BC),A
033E: 0B            DEC BC
033F: 23            INC HL
0340: 11 0C 23      LD DE,0x230C
0343: 02            LD (BC),A
0344: 0B            DEC BC
0345: 23            INC HL
0346: E0            RET PO
0347: 0C            INC C
0348: 23            INC HL
0349: 00            NOP
034A: 16 23         LD D,0x23
034C: 08            EX AF,AF'
034D: 20 FF         JR NZ,0x034E
034F: 12            LD (DE),A
0350: 18 1E         JR 0x0370
0352: 12            LD (DE),A
0353: 00            NOP
0354: 34            INC (HL)
0355: 12            LD (DE),A
0356: FB            EI
0357: 26 12         LD H,0x12
0359: 00            NOP
035A: 02            LD (BC),A
035B: FC 2E 12      CALL M,0x122E
035E: FA 3C FA      JP M,0xFA3C
0361: 9E            SBC A,(HL)
0362: 03            INC BC
0363: 12            LD (DE),A
0364: F8            RET M
0365: 10 12         DJNZ 0x0379
0367: FA 5C 12      JP M,0x125C
036A: 00            NOP
036B: 23            INC HL
036C: F8            RET M
036D: F9            LD SP,HL
036E: EF            RST 0x28
036F: 7C            LD A,H
0370: 03            INC BC
0371: F6 AB         OR 0xAB
0373: 12            LD (DE),A
0374: 01 28 12      LD BC,0x1228
0377: 0A            LD A,(BC)
0378: 18 FD         JR 0x0377
037A: 52            LD D,D
037B: 03            INC BC
037C: F6 B0         OR 0xB0
037E: 23            INC HL
037F: 08            EX AF,AF'
0380: 1E 23         LD E,0x23
0382: 00            NOP
0383: 19            ADD HL,DE
0384: 23            INC HL
0385: F8            RET M
0386: 16 23         LD D,0x23
0388: 00            NOP
0389: 02            LD (BC),A
038A: FC 30 23      CALL M,0x2330
038D: F7            RST 0x30
038E: 26 FA         LD H,0xFA
0390: 9E            SBC A,(HL)
0391: 03            INC BC
0392: 23            INC HL
0393: F0            RET P
0394: 0A            LD A,(BC)
0395: 23            INC HL
0396: F5            PUSH AF
0397: 31 23 00      LD SP,0x0023
039A: 10 FD         DJNZ 0x0399
039C: 6C            LD L,H
039D: 03            INC BC
039E: 12            LD (DE),A
039F: F8            RET M
03A0: 10 12         DJNZ 0x03B4
03A2: 00            NOP
03A3: 40            LD B,B
03A4: FB            EI
03A5: 12            LD (DE),A
03A6: 00            NOP
03A7: FF            RST 0x38
03A8: FF            RST 0x38
03A9: 12            LD (DE),A
03AA: 18 1D         JR 0x03C9
03AC: 12            LD (DE),A
03AD: 00            NOP
03AE: 28 12         JR Z,0x03C2
03B0: FA 02 F3      JP M,0xF302
03B3: 3F            CCF
03B4: 3B            DEC SP
03B5: 36 32         LD (HL),0x32
03B7: 28 26         JR Z,0x03DF
03B9: 24            INC H
03BA: 22 12 04      LD (0x0412),HL
03BD: 30 12         JR NC,0x03D1
03BF: FC 30 12      CALL M,0x1230
03C2: 00            NOP
03C3: 18 F8         JR 0x03BD
03C5: F9            LD SP,HL
03C6: FA 0C 04      JP M,0x040C
03C9: EF            RST 0x28
03CA: D7            RST 0x10
03CB: 03            INC BC
03CC: F6 B0         OR 0xB0
03CE: 12            LD (DE),A
03CF: 01 28 12      LD BC,0x1228
03D2: 0A            LD A,(BC)
03D3: 15            DEC D
03D4: FD            DB 0xFD ; IX/IY prefix, manual analysis required
03D5: AC            XOR H
03D6: 03            INC BC
03D7: F6 C0         OR 0xC0
03D9: 23            INC HL
03DA: 08            EX AF,AF'
03DB: 10 23         DJNZ 0x0400
03DD: 00            NOP
03DE: 23            INC HL
03DF: 23            INC HL
03E0: F8            RET M
03E1: 0F            RRCA
03E2: 23            INC HL
03E3: 00            NOP
03E4: 48            LD C,B
03E5: F8            RET M
03E6: F9            LD SP,HL
03E7: FA 0C 04      JP M,0x040C
03EA: F6 B0         OR 0xB0
03EC: 23            INC HL
03ED: 08            EX AF,AF'
03EE: 20 23         JR NZ,0x0413
03F0: 00            NOP
03F1: 08            EX AF,AF'
03F2: 23            INC HL
03F3: F8            RET M
03F4: 02            LD (BC),A
03F5: F3            DI
03F6: 34            INC (HL)
03F7: 31 2D 29      LD SP,0x292D
03FA: 22 26 1F      LD (0x1F26),HL
03FD: 18 23         JR 0x0422
03FF: 08            EX AF,AF'
0400: 18 23         JR 0x0425
0402: F8            RET M
0403: 18 23         JR 0x0428
0405: 00            NOP
0406: 10 F8         DJNZ 0x0400
0408: F9            LD SP,HL
0409: FD            DB 0xFD ; IX/IY prefix, manual analysis required
040A: CC 03 FB      CALL Z,0xFB03
040D: 12            LD (DE),A
040E: 00            NOP
040F: FF            RST 0x38
0410: FF            RST 0x38
0411: 12            LD (DE),A
0412: 18 14         JR 0x0428
0414: 12            LD (DE),A
0415: 03            INC BC
0416: 2A 12 10      LD HL,(0x1012)
0419: 40            LD B,B
041A: 12            LD (DE),A
041B: 01 20 12      LD BC,0x1220
041E: FE 71         CP 0x71
0420: F9            LD SP,HL
0421: F1            POP AF
0422: FA 0C 04      JP M,0x040C
0425: EF            RST 0x28
0426: 30 04         JR NC,0x042C
0428: F6 AB         OR 0xAB
042A: 12            LD (DE),A
042B: 02            LD (BC),A
042C: 20 FD         JR NZ,0x042B
042E: 14            INC D
042F: 04            INC B
0430: F6 B0         OR 0xB0
0432: 23            INC HL
0433: 04            INC B
0434: 1A            LD A,(DE)
0435: 23            INC HL
0436: 03            INC BC
0437: 1D            DEC E
0438: 23            INC HL
0439: 1A            LD A,(DE)
043A: 25            DEC H
043B: 23            INC HL
043C: 03            INC BC
043D: 10 23         DJNZ 0x0462
043F: FD            DB 0xFD ; IX/IY prefix, manual analysis required
0440: 48            LD C,B
0441: FD            DB 0xFD ; IX/IY prefix, manual analysis required
0442: 20 04         JR NZ,0x0448
0444: 12            LD (DE),A
0445: 18 14         JR 0x045B
0447: 12            LD (DE),A
0448: 03            INC BC
0449: 2A 12 10      LD HL,(0x1012)
044C: 40            LD B,B
044D: 12            LD (DE),A
044E: 01 20 12      LD BC,0x1220
0451: FE 78         CP 0x78
0453: FF            RST 0x38
0454: 12            LD (DE),A
0455: 18 14         JR 0x046B
0457: F4 12 00      CALL P,0x0012
045A: 04            INC B
045B: FC 48 00      CALL M,0x0048
045E: FC FF 23      CALL M,0x23FF
0461: 00            NOP
0462: 30 F8         JR NC,0x045C
0464: F9            LD SP,HL
0465: FA 0C 04      JP M,0x040C
0468: FD            DB 0xFD ; IX/IY prefix, manual analysis required
0469: 25            DEC H
046A: 04            INC B
046B: 12            LD (DE),A
046C: 18 14         JR 0x0482
046E: FB            EI
046F: 12            LD (DE),A
0470: 00            NOP
0471: FF            RST 0x38
0472: FF            RST 0x38
0473: 12            LD (DE),A
0474: 18 1E         JR 0x0494
0476: 12            LD (DE),A
0477: 00            NOP
0478: 08            EX AF,AF'
0479: F2 99 04      JP P,0x0499
047C: 00            NOP
047D: 00            NOP
047E: 0A            LD A,(BC)
047F: F2 99 04      JP P,0x0499
0482: 00            NOP
0483: 00            NOP
0484: 0A            LD A,(BC)
0485: 12            LD (DE),A
0486: 00            NOP
0487: 2C            INC L
0488: 12            LD (DE),A
0489: FB            EI
048A: 26 12         LD H,0x12
048C: 00            NOP
048D: 02            LD (BC),A
048E: FC 2E 12      CALL M,0x122E
0491: FA 3C FA      JP M,0xFA3C
0494: 9E            SBC A,(HL)
0495: 03            INC BC
0496: FD            DB 0xFD ; IX/IY prefix, manual analysis required
0497: 63            LD H,E
0498: 03            INC BC
0499: 12            LD (DE),A
049A: 00            NOP
049B: 2C            INC L
049C: 12            LD (DE),A
049D: FB            EI
049E: 26 12         LD H,0x12
04A0: 00            NOP
04A1: 02            LD (BC),A
04A2: FC 2E 12      CALL M,0x122E
04A5: FA 18 12      JP M,0x1218
04A8: 00            NOP
04A9: 10 FF         DJNZ 0x04AA
04AB: 12            LD (DE),A
04AC: 18 13         JR 0x04C1
04AE: F2 C6 04      JP P,0x04C6
04B1: 00            NOP
04B2: 00            NOP
04B3: 08            EX AF,AF'
04B4: F2 CF 04      JP P,0x04CF
04B7: 00            NOP
04B8: 00            NOP
04B9: 08            EX AF,AF'
04BA: 12            LD (DE),A
04BB: 18 0B         JR 0x04C8
04BD: 12            LD (DE),A
04BE: 00            NOP
04BF: 34            INC (HL)
04C0: 12            LD (DE),A
04C1: FB            EI
04C2: 26 FD         LD H,0xFD
04C4: 58            LD E,B
04C5: 03            INC BC
04C6: 12            LD (DE),A
04C7: 00            NOP
04C8: 10 12         DJNZ 0x04DC
04CA: 18 0B         JR 0x04D7
04CC: FD            DB 0xFD ; IX/IY prefix, manual analysis required
04CD: D8            RET C
04CE: 04            INC B
04CF: 12            LD (DE),A
04D0: 00            NOP
04D1: 08            EX AF,AF'
04D2: 12            LD (DE),A
04D3: 18 0B         JR 0x04E0
04D5: 12            LD (DE),A
04D6: 00            NOP
04D7: 06 12         LD B,0x12
04D9: 00            NOP
04DA: 22 12 FB      LD (0xFB12),HL
04DD: 26 12         LD H,0x12
04DF: 00            NOP
04E0: 02            LD (BC),A
04E1: FC 2E 12      CALL M,0x122E
04E4: FA 18 12      JP M,0x1218
04E7: 00            NOP
04E8: 20 FF         JR NZ,0x04E9
04EA: 12            LD (DE),A
04EB: 18 1E         JR 0x050B
04ED: 12            LD (DE),A
04EE: 00            NOP
04EF: 14            INC D
04F0: F2 02 05      JP P,0x0502
04F3: 12            LD (DE),A
04F4: 00            NOP
04F5: 08            EX AF,AF'
04F6: F2 02 05      JP P,0x0502
04F9: 12            LD (DE),A
04FA: 00            NOP
04FB: 18 12         JR 0x050F
04FD: FB            EI
04FE: 26 FD         LD H,0xFD
0500: 58            LD E,B
0501: 03            INC BC
0502: 12            LD (DE),A
0503: E2 01 F3      JP PO,0xF301
0506: 08            EX AF,AF'
0507: 07            RLCA
0508: 06 05         LD B,0x05
050A: 04            INC B
050B: 03            INC BC
050C: 02            LD (BC),A
050D: 01 F5 23      LD BC,0x23F5
0510: 00            NOP
0511: 48            LD C,B
0512: FF            RST 0x38
0513: AF            XOR A
0514: 32 21 68      LD (0x6821),A
0517: 3A 04 68      LD A,(0x6804)
051A: E6 02         AND 0x02
051C: CA 75 05      JP Z,0x0575
051F: 3A A0 92      LD A,(0x92A0)
0522: 3C            INC A
0523: 32 A0 92      LD (0x92A0),A
0526: 2A A1 92      LD HL,(0x92A1)
0529: E6 1F         AND 0x1F
052B: 3D            DEC A
052C: 28 08         JR Z,0x0536
052E: 3C            INC A
052F: 20 06         JR NZ,0x0537
0531: 7C            LD A,H
0532: F6 01         OR 0x01
0534: 67            LD H,A
0535: 2C            INC L
0536: 24            INC H
0537: 22 A1 92      LD (0x92A1),HL
053A: 3A C7 99      LD A,(0x99C7)
053D: 5F            LD E,A
053E: 3A A7 92      LD A,(0x92A7)
0541: BB            CP E
0542: CB 10         RL B
0544: 3A 15 90      LD A,(0x9015)
0547: A0            AND B
0548: E6 01         AND 0x01
054A: 32 AA 92      LD (0x92AA),A
054D: 0E 00         LD C,0x00
054F: 21 20 90      LD HL,0x9020
0552: 79            LD A,C
0553: 85            ADD A,L
0554: 6F            LD L,A
0555: 7E            LD A,(HL)
0556: A7            AND A
0557: 20 03         JR NZ,0x055C
0559: 0C            INC C
055A: 18 F3         JR 0x054F
055C: 47            LD B,A
055D: 21 3B 00      LD HL,0x003B
0560: 79            LD A,C
0561: CB 27         SLA A
0563: 85            ADD A,L
0564: 6F            LD L,A
0565: 5E            LD E,(HL)
0566: 23            INC HL
0567: 56            LD D,(HL)
0568: EB            EX DE,HL
0569: C5            PUSH BC
056A: CD 34 00      CALL 0x0034
056D: C1            POP BC
056E: 78            LD A,B
056F: 81            ADD A,C
0570: 4F            LD C,A
0571: E6 F8         AND 0xF8
0573: 28 DA         JR Z,0x054F
0575: 3E 01         LD A,0x01
0577: 32 21 68      LD (0x6821),A
057A: FB            EI
057B: C9            RET
057C: 11 00 91      LD DE,0x9100
057F: 1A            LD A,(DE)
0580: A7            AND A
0581: 20 FC         JR NZ,0x057F
0583: 67            LD H,A
0584: 6F            LD L,A
0585: 01 10 00      LD BC,0x0010
0588: 86            ADD A,(HL)
0589: 23            INC HL
058A: 10 FC         DJNZ 0x0588
058C: 0D            DEC C
058D: 20 F9         JR NZ,0x0588
058F: FE FF         CP 0xFF
0591: 28 02         JR Z,0x0595
0593: 3E 11         LD A,0x11
0595: 12            LD (DE),A
0596: 1A            LD A,(DE)
0597: A7            AND A
0598: 20 FC         JR NZ,0x0596
059A: ED 56         DB 0xED,0x56 ; undefined/alias
059C: AF            XOR A
059D: 32 E0 89      LD (0x89E0),A
05A0: 21 B7 05      LD HL,0x05B7
05A3: 11 21 90      LD DE,0x9021
05A6: 01 07 00      LD BC,0x0007
05A9: ED B0         LDIR
05AB: 3E 01         LD A,0x01
05AD: 32 21 68      LD (0x6821),A
05B0: FB            EI
05B1: 31 00 91      LD SP,0x9100
05B4: C3 B1 05      JP 0x05B1
05B7: 01 01 00      LD BC,0x0001
05BA: 01 01 00      LD BC,0x0001
05BD: 0A            LD A,(BC)
05BE: C9            RET
05BF: 3E 01         LD A,0x01
05C1: 32 D7 92      LD (0x92D7),A
05C4: 21 00 8B      LD HL,0x8B00
05C7: 11 80 8B      LD DE,0x8B80
05CA: 01 40 00      LD BC,0x0040
05CD: ED B0         LDIR
05CF: 21 00 93      LD HL,0x9300
05D2: 11 80 93      LD DE,0x9380
05D5: 0E 40         LD C,0x40
05D7: ED B0         LDIR
05D9: 21 00 9B      LD HL,0x9B00
05DC: 11 80 9B      LD DE,0x9B80
05DF: 0E 40         LD C,0x40
05E1: ED B0         LDIR
05E3: AF            XOR A
05E4: 32 D7 92      LD (0x92D7),A
05E7: 3A D6 92      LD A,(0x92D6)
05EA: 3D            DEC A
05EB: 28 FA         JR Z,0x05E7
05ED: C9            RET
05EE: 3A 14 90      LD A,(0x9014)
05F1: A7            AND A
05F2: C8            RET Z
05F3: 32 17 92      LD (0x9217),A
05F6: 3A 27 98      LD A,(0x9827)
05F9: A7            AND A
05FA: 28 17         JR Z,0x0613
05FC: 21 60 93      LD HL,0x9360
05FF: 7E            LD A,(HL)
0600: A7            AND A
0601: 28 10         JR Z,0x0613
0603: CD 81 06      CALL 0x0681
0606: 3A BF 99      LD A,(0x99BF)
0609: A7            AND A
060A: 28 07         JR Z,0x0613
060C: CD 49 06      CALL 0x0649
060F: AF            XOR A
0610: 32 2B 98      LD (0x982B),A
0613: 21 62 93      LD HL,0x9362
0616: 7E            LD A,(HL)
0617: A7            AND A
0618: C8            RET Z
0619: CD 81 06      CALL 0x0681
061C: 3A BF 99      LD A,(0x99BF)
061F: A7            AND A
0620: C8            RET Z
0621: 3A 27 98      LD A,(0x9827)
0624: A7            AND A
0625: 28 12         JR Z,0x0639
0627: AF            XOR A
0628: 32 2B 98      LD (0x982B),A
062B: 3A 60 93      LD A,(0x9360)
062E: 32 62 93      LD (0x9362),A
0631: 3A E2 93      LD A,(0x93E2)
0634: 21 E0 93      LD HL,0x93E0
0637: 18 16         JR 0x064F
0639: AF            XOR A
063A: 32 14 90      LD (0x9014),A
063D: 32 15 90      LD (0x9015),A
0640: 32 25 90      LD (0x9025),A
0643: 32 B9 99      LD (0x99B9),A
0646: 32 17 92      LD (0x9217),A
0649: EB            EX DE,HL
064A: 26 93         LD H,0x93
064C: CB FD         SET 7,L
064E: 7E            LD A,(HL)
064F: D6 08         SUB 0x08
0651: CB BD         RES 7,L
0653: 77            LD (HL),A
0654: 2C            INC L
0655: 7E            LD A,(HL)
0656: D6 08         SUB 0x08
0658: 77            LD (HL),A
0659: 26 8B         LD H,0x8B
065B: 36 0B         LD (HL),0x0B
065D: 2D            DEC L
065E: 36 20         LD (HL),0x20
0660: 26 88         LD H,0x88
0662: 36 08         LD (HL),0x08
0664: 2C            INC L
0665: 36 0F         LD (HL),0x0F
0667: 2D            DEC L
0668: 26 9B         LD H,0x9B
066A: 36 0C         LD (HL),0x0C
066C: AF            XOR A
066D: 32 27 98      LD (0x9827),A
0670: 3A 01 92      LD A,(0x9201)
0673: 3D            DEC A
0674: 32 B9 9A      LD (0x9AB9),A
0677: 3A 17 92      LD A,(0x9217)
067A: A7            AND A
067B: C0            RET NZ
067C: 3C            INC A
067D: 32 13 92      LD (0x9213),A
0680: C9            RET
0681: AF            XOR A
0682: 32 BF 99      LD (0x99BF),A
0685: 26 88         LD H,0x88
0687: 7E            LD A,(HL)
0688: 26 93         LD H,0x93
068A: FE 08         CP 0x08
068C: C8            RET Z
068D: 7E            LD A,(HL)
068E: DD            DB 0xDD ; IX/IY prefix, manual analysis required
068F: 6F            LD L,A
0690: 2C            INC L
0691: 46            LD B,(HL)
0692: 26 9B         LD H,0x9B
0694: 7E            LD A,(HL)
0695: 0F            RRCA
0696: CB 18         RR B
0698: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0699: 60            LD H,B
069A: 2D            DEC L
069B: 5D            LD E,L
069C: 3A 08 90      LD A,(0x9008)
069F: A7            AND A
06A0: 28 06         JR Z,0x06A8
06A2: 2E 38         LD L,0x38
06A4: 06 04         LD B,0x04
06A6: 18 04         JR 0x06AC
06A8: 2E 00         LD L,0x00
06AA: 06 30         LD B,0x30
06AC: CD B7 06      CALL 0x06B7
06AF: 2E 68         LD L,0x68
06B1: 06 08         LD B,0x08
06B3: CD B7 06      CALL 0x06B7
06B6: C9            RET
06B7: 26 92         LD H,0x92
06B9: 7E            LD A,(HL)
06BA: 26 88         LD H,0x88
06BC: B6            OR (HL)
06BD: 07            RLCA
06BE: 38 30         JR C,0x06F0
06C0: 7E            LD A,(HL)
06C1: E6 FE         AND 0xFE
06C3: FE 04         CP 0x04
06C5: 28 29         JR Z,0x06F0
06C7: 26 93         LD H,0x93
06C9: 7E            LD A,(HL)
06CA: A7            AND A
06CB: 28 23         JR Z,0x06F0
06CD: DD            DB 0xDD ; IX/IY prefix, manual analysis required
06CE: 95            SUB L
06CF: D6 07         SUB 0x07
06D1: C6 0D         ADD A,0x0D
06D3: 30 1B         JR NC,0x06F0
06D5: 2C            INC L
06D6: 7E            LD A,(HL)
06D7: 26 9B         LD H,0x9B
06D9: 4E            LD C,(HL)
06DA: 2D            DEC L
06DB: CB 09         RRC C
06DD: 1F            RRA
06DE: DD            DB 0xDD ; IX/IY prefix, manual analysis required
06DF: 94            SUB H
06E0: D6 04         SUB 0x04
06E2: C6 07         ADD A,0x07
06E4: 30 0A         JR NC,0x06F0
06E6: 3E 01         LD A,0x01
06E8: 32 BF 99      LD (0x99BF),A
06EB: B7            OR A
06EC: 08            EX AF,AF'
06ED: C3 C2 07      JP 0x07C2
06F0: 2C            INC L
06F1: 2C            INC L
06F2: 10 C3         DJNZ 0x06B7
06F4: C9            RET
06F5: 11 A4 92      LD DE,0x92A4
06F8: 21 64 93      LD HL,0x9364
06FB: CD 04 07      CALL 0x0704
06FE: 11 A5 92      LD DE,0x92A5
0701: 21 66 93      LD HL,0x9366
0704: 7E            LD A,(HL)
0705: A7            AND A
0706: C8            RET Z
0707: 1A            LD A,(DE)
0708: 47            LD B,A
0709: E6 07         AND 0x07
070B: 08            EX AF,AF'
070C: 3E 06         LD A,0x06
070E: CB 78         BIT 7,B
0710: 28 01         JR Z,0x0713
0712: 08            EX AF,AF'
0713: CB 70         BIT 6,B
0715: 28 02         JR Z,0x0719
0717: ED 44         NEG
0719: 86            ADD A,(HL)
071A: 77            LD (HL),A
071B: FE F0         CP 0xF0
071D: 30 44         JR NC,0x0763
071F: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0720: 6F            LD L,A
0721: 2C            INC L
0722: 08            EX AF,AF'
0723: CB 68         BIT 5,B
0725: 28 02         JR Z,0x0729
0727: ED 44         NEG
0729: 4F            LD C,A
072A: 86            ADD A,(HL)
072B: 77            LD (HL),A
072C: 1F            RRA
072D: A9            XOR C
072E: 26 9B         LD H,0x9B
0730: 07            RLCA
0731: 30 05         JR NC,0x0738
0733: CB 0E         RRC (HL)
0735: 3F            CCF
0736: CB 16         RL (HL)
0738: 4E            LD C,(HL)
0739: 26 93         LD H,0x93
073B: 7E            LD A,(HL)
073C: CB 09         RRC C
073E: 1F            RRA
073F: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0740: 67            LD H,A
0741: FE 14         CP 0x14
0743: 38 1B         JR C,0x0760
0745: FE 9C         CP 0x9C
0747: 30 17         JR NC,0x0760
0749: 5D            LD E,L
074A: 3A 1D 90      LD A,(0x901D)
074D: A7            AND A
074E: 28 07         JR Z,0x0757
0750: 21 08 93      LD HL,0x9308
0753: 06 2C         LD B,0x2C
0755: 18 05         JR 0x075C
0757: 21 00 93      LD HL,0x9300
075A: 06 30         LD B,0x30
075C: CD 6A 07      CALL 0x076A
075F: C9            RET
0760: 2D            DEC L
0761: 26 93         LD H,0x93
0763: 36 00         LD (HL),0x00
0765: 26 9B         LD H,0x9B
0767: 36 00         LD (HL),0x00
0769: C9            RET
076A: 26 92         LD H,0x92
076C: 7E            LD A,(HL)
076D: 26 88         LD H,0x88
076F: B6            OR (HL)
0770: 07            RLCA
0771: 38 41         JR C,0x07B4
0773: 7E            LD A,(HL)
0774: 4F            LD C,A
0775: E6 FE         AND 0xFE
0777: FE 04         CP 0x04
0779: 28 39         JR Z,0x07B4
077B: 2C            INC L
077C: 26 9B         LD H,0x9B
077E: 56            LD D,(HL)
077F: 26 93         LD H,0x93
0781: 7E            LD A,(HL)
0782: CB 0A         RRC D
0784: 1F            RRA
0785: 2D            DEC L
0786: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0787: 94            SUB H
0788: D6 03         SUB 0x03
078A: C6 06         ADD A,0x06
078C: 30 26         JR NC,0x07B4
078E: 79            LD A,C
078F: 3D            DEC A
0790: E6 FE         AND 0xFE
0792: 08            EX AF,AF'
0793: 3A 27 98      LD A,(0x9827)
0796: A7            AND A
0797: 7E            LD A,(HL)
0798: 20 0A         JR NZ,0x07A4
079A: DD            DB 0xDD ; IX/IY prefix, manual analysis required
079B: 95            SUB L
079C: D6 06         SUB 0x06
079E: C6 0B         ADD A,0x0B
07A0: 38 17         JR C,0x07B9
07A2: 18 10         JR 0x07B4
07A4: DD            DB 0xDD ; IX/IY prefix, manual analysis required
07A5: 95            SUB L
07A6: D6 14         SUB 0x14
07A8: C6 0B         ADD A,0x0B
07AA: 38 0D         JR C,0x07B9
07AC: C6 04         ADD A,0x04
07AE: 38 04         JR C,0x07B4
07B0: C6 0B         ADD A,0x0B
07B2: 38 05         JR C,0x07B9
07B4: 2C            INC L
07B5: 2C            INC L
07B6: 10 B2         DJNZ 0x076A
07B8: C9            RET
07B9: 7D            LD A,L
07BA: 2A 44 98      LD HL,(0x9844)
07BD: 23            INC HL
07BE: 22 44 98      LD (0x9844),HL
07C1: 6F            LD L,A
07C2: 16 93         LD D,0x93
07C4: AF            XOR A
07C5: 12            LD (DE),A
07C6: 16 9B         LD D,0x9B
07C8: 12            LD (DE),A
07C9: 2C            INC L
07CA: 26 8B         LD H,0x8B
07CC: 7E            LD A,(HL)
07CD: 4F            LD C,A
07CE: A7            AND A
07CF: CA CA 08      JP Z,0x08CA
07D2: 2D            DEC L
07D3: FE 0B         CP 0x0B
07D5: 28 3E         JR Z,0x0815
07D7: 08            EX AF,AF'
07D8: 20 44         JR NZ,0x081E
07DA: 08            EX AF,AF'
07DB: 26 92         LD H,0x92
07DD: 36 81         LD (HL),0x81
07DF: 3A 28 98      LD A,(0x9828)
07E2: 95            SUB L
07E3: 20 07         JR NZ,0x07EC
07E5: 32 2B 98      LD (0x982B),A
07E8: 3C            INC A
07E9: 32 28 98      LD (0x9828),A
07EC: E5            PUSH HL
07ED: 79            LD A,C
07EE: FE 07         CP 0x07
07F0: 20 03         JR NZ,0x07F5
07F2: 3D            DEC A
07F3: 18 03         JR 0x07F8
07F5: 3D            DEC A
07F6: E6 03         AND 0x03
07F8: 21 A1 9A      LD HL,0x9AA1
07FB: D7            RST 0x10
07FC: 36 01         LD (HL),0x01
07FE: 79            LD A,C
07FF: FE 07         CP 0x07
0801: 20 05         JR NZ,0x0808
0803: 21 2B 98      LD HL,0x982B
0806: 36 00         LD (HL),0x00
0808: 21 90 92      LD HL,0x9290
080B: D7            RST 0x10
080C: 34            INC (HL)
080D: 08            EX AF,AF'
080E: 28 01         JR Z,0x0811
0810: 34            INC (HL)
0811: E1            POP HL
0812: C3 B4 07      JP 0x07B4
0815: 26 93         LD H,0x93
0817: 36 00         LD (HL),0x00
0819: 26 88         LD H,0x88
081B: 36 80         LD (HL),0x80
081D: C9            RET
081E: 26 88         LD H,0x88
0820: E5            PUSH HL
0821: 08            EX AF,AF'
0822: 2C            INC L
0823: 7E            LD A,(HL)
0824: 26 91         LD H,0x91
0826: C6 13         ADD A,0x13
0828: 6F            LD L,A
0829: 36 00         LD (HL),0x00
082B: 21 88 92      LD HL,0x9288
082E: 34            INC (HL)
082F: 21 A8 92      LD HL,0x92A8
0832: 35            DEC (HL)
0833: E1            POP HL
0834: 20 13         JR NZ,0x0849
0836: 26 92         LD H,0x92
0838: 3A 85 92      LD A,(0x9285)
083B: 77            LD (HL),A
083C: 3A 84 92      LD A,(0x9284)
083F: 67            LD H,A
0840: 3A 9F 92      LD A,(0x929F)
0843: 84            ADD A,H
0844: 32 9F 92      LD (0x929F),A
0847: 18 96         JR 0x07DF
0849: 79            LD A,C
084A: FE 07         CP 0x07
084C: 20 04         JR NZ,0x0852
084E: 16 B8         LD D,0xB8
0850: 18 5E         JR 0x08B0
0852: 3A 2D 98      LD A,(0x982D)
0855: BD            CP L
0856: CA B6 08      JP Z,0x08B6
0859: 7D            LD A,L
085A: E6 38         AND 0x38
085C: FE 38         CP 0x38
085E: CA B6 08      JP Z,0x08B6
0861: 79            LD A,C
0862: FE 01         CP 0x01
0864: C2 DB 07      JP NZ,0x07DB
0867: D5            PUSH DE
0868: 7D            LD A,L
0869: E6 07         AND 0x07
086B: 5F            LD E,A
086C: 16 88         LD D,0x88
086E: 1A            LD A,(DE)
086F: FE 09         CP 0x09
0871: 20 26         JR NZ,0x0899
0873: E5            PUSH HL
0874: EB            EX DE,HL
0875: 2C            INC L
0876: 7E            LD A,(HL)
0877: C6 13         ADD A,0x13
0879: 5F            LD E,A
087A: 16 91         LD D,0x91
087C: AF            XOR A
087D: 12            LD (DE),A
087E: 26 8B         LD H,0x8B
0880: 36 09         LD (HL),0x09
0882: 2D            DEC L
0883: 7D            LD A,L
0884: 32 28 98      LD (0x9828),A
0887: 26 88         LD H,0x88
0889: AF            XOR A
088A: 77            LD (HL),A
088B: 32 8B 92      LD (0x928B),A
088E: 3C            INC A
088F: 32 1D 90      LD (0x901D),A
0892: 32 8D 92      LD (0x928D),A
0895: 32 B1 9A      LD (0x9AB1),A
0898: E1            POP HL
0899: D1            POP DE
089A: E5            PUSH HL
089B: 3E 06         LD A,0x06
089D: 32 AD 92      LD (0x92AD),A
08A0: 7D            LD A,L
08A1: E6 07         AND 0x07
08A3: 21 30 98      LD HL,0x9830
08A6: D7            RST 0x10
08A7: 7E            LD A,(HL)
08A8: 2C            INC L
08A9: 56            LD D,(HL)
08AA: 21 9F 92      LD HL,0x929F
08AD: 86            ADD A,(HL)
08AE: 77            LD (HL),A
08AF: E1            POP HL
08B0: 26 92         LD H,0x92
08B2: 72            LD (HL),D
08B3: C3 DF 07      JP 0x07DF
08B6: E5            PUSH HL
08B7: 21 B0 99      LD HL,0x99B0
08BA: 35            DEC (HL)
08BB: E1            POP HL
08BC: C2 DB 07      JP NZ,0x07DB
08BF: 3A B2 99      LD A,(0x99B2)
08C2: 57            LD D,A
08C3: 3A B1 99      LD A,(0x99B1)
08C6: E5            PUSH HL
08C7: C3 AA 08      JP 0x08AA
08CA: 3C            INC A
08CB: 77            LD (HL),A
08CC: 32 A4 9A      LD (0x9AA4),A
08CF: 2D            DEC L
08D0: C3 B4 07      JP 0x07B4
08D3: DD            DB 0xDD ; IX/IY prefix, manual analysis required
08D4: 21 00 91      LD HL,0x9100
08D7: 3E 0C         LD A,0x0C
08D9: 32 89 92      LD (0x9289),A
08DC: 21 86 92      LD HL,0x9286
08DF: 7E            LD A,(HL)
08E0: 36 00         LD (HL),0x00
08E2: 23            INC HL
08E3: 77            LD (HL),A
08E4: DD            DB 0xDD ; IX/IY prefix, manual analysis required
08E5: CB 13         RL E
08E7: 46            LD B,(HL)
08E8: CA FF 0D      JP Z,0x0DFF
08EB: 21 86 92      LD HL,0x9286
08EE: 34            INC (HL)
08EF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
08F0: 6E            LD L,(HL)
08F1: 10 26         DJNZ 0x0919
08F3: 88            ADC A,B
08F4: 7E            LD A,(HL)
08F5: FE 03         CP 0x03
08F7: 28 09         JR Z,0x0902
08F9: FE 09         CP 0x09
08FB: 28 05         JR Z,0x0902
08FD: FE 07         CP 0x07
08FF: C2 4D 0E      JP NZ,0x0E4D
0902: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0903: 35            DEC (HL)
0904: 0D            DEC C
0905: C2 05 0C      JP NZ,0x0C05
0908: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0909: 6E            LD L,(HL)
090A: 08            EX AF,AF'
090B: DD            DB 0xDD ; IX/IY prefix, manual analysis required
090C: 66            LD H,(HL)
090D: 09            ADD HL,BC
090E: 7E            LD A,(HL)
090F: FE EF         CP 0xEF
0911: DA DC 0B      JP C,0x0BDC
0914: E5            PUSH HL
0915: 2F            CPL
0916: 21 20 09      LD HL,0x0920
0919: CF            RST 0x08
091A: 7E            LD A,(HL)
091B: 23            INC HL
091C: 66            LD H,(HL)
091D: 6F            LD L,A
091E: E3            EX (SP),HL
091F: C9            RET
0920: 4D            LD C,L
0921: 0E 16         LD C,0x16
0923: 0B            DEC BC
0924: 46            LD B,(HL)
0925: 0B            DEC BC
0926: 4E            LD C,(HL)
0927: 0B            DEC BC
0928: A0            AND B
0929: 0A            LD A,(BC)
092A: D1            POP DE
092B: 0B            DEC BC
092C: 5F            LD E,A
092D: 0B            DEC BC
092E: 87            ADD A,A
092F: 0B            DEC BC
0930: 98            SBC A,B
0931: 0B            DEC BC
0932: A8            XOR B
0933: 0B            DEC BC
0934: 42            LD B,D
0935: 09            ADD HL,BC
0936: 53            LD D,E
0937: 0A            LD A,(BC)
0938: 01 0A 7B      LD BC,0x7B0A
093B: 09            ADD HL,BC
093C: 68            LD L,B
093D: 09            ADD HL,BC
093E: 55            LD D,L
093F: 09            ADD HL,BC
0940: 4E            LD C,(HL)
0941: 09            ADD HL,BC
0942: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0943: 5E            LD E,(HL)
0944: 10 16         DJNZ 0x095C
0946: 88            ADC A,B
0947: 3E 03         LD A,0x03
0949: 12            LD (DE),A
094A: 23            INC HL
094B: C3 0E 09      JP 0x090E
094E: 3A C9 99      LD A,(0x99C9)
0951: A7            AND A
0952: C3 59 09      JP 0x0959
0955: 3A C8 99      LD A,(0x99C8)
0958: A7            AND A
0959: 28 08         JR Z,0x0963
095B: 23            INC HL
095C: 7E            LD A,(HL)
095D: 23            INC HL
095E: 66            LD H,(HL)
095F: 6F            LD L,A
0960: C3 8C 0B      JP 0x0B8C
0963: 23            INC HL
0964: 23            INC HL
0965: C3 8B 0B      JP 0x0B8B
0968: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0969: 5E            LD E,(HL)
096A: 10 16         DJNZ 0x0982
096C: 01 1A 5F      LD BC,0x5F1A
096F: 16 99         LD D,0x99
0971: 1C            INC E
0972: 1A            LD A,(DE)
0973: C6 20         ADD A,0x20
0975: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0976: 77            LD (HL),A
0977: 01 C3 8B      LD BC,0x8BC3
097A: 0B            DEC BC
097B: E5            PUSH HL
097C: DD            DB 0xDD ; IX/IY prefix, manual analysis required
097D: 5E            LD E,(HL)
097E: 10 21         DJNZ 0x09A1
0980: 38 88         JR C,0x090A
0982: 06 04         LD B,0x04
0984: 7E            LD A,(HL)
0985: 07            RLCA
0986: 38 07         JR C,0x098F
0988: 2C            INC L
0989: 2C            INC L
098A: 10 F8         DJNZ 0x0984
098C: C3 FA 09      JP 0x09FA
098F: 26 8B         LD H,0x8B
0991: 54            LD D,H
0992: 1A            LD A,(DE)
0993: 77            LD (HL),A
0994: 2C            INC L
0995: 1C            INC E
0996: 1A            LD A,(DE)
0997: 77            LD (HL),A
0998: 2D            DEC L
0999: 7D            LD A,L
099A: 08            EX AF,AF'
099B: 21 EF 91      LD HL,0x91EF
099E: 11 EC FF      LD DE,0xFFEC
09A1: 06 0C         LD B,0x0C
09A3: 7E            LD A,(HL)
09A4: E6 01         AND 0x01
09A6: 28 06         JR Z,0x09AE
09A8: 19            ADD HL,DE
09A9: 10 F8         DJNZ 0x09A3
09AB: C3 FA 09      JP 0x09FA
09AE: 19            ADD HL,DE
09AF: 23            INC HL
09B0: DD            DB 0xDD ; IX/IY prefix, manual analysis required
09B1: 7E            LD A,(HL)
09B2: 00            NOP
09B3: DD            DB 0xDD ; IX/IY prefix, manual analysis required
09B4: 5D            LD E,L
09B5: DD            DB 0xDD ; IX/IY prefix, manual analysis required
09B6: 54            LD D,H
09B7: EB            EX DE,HL
09B8: FD            DB 0xFD ; IX/IY prefix, manual analysis required
09B9: 6B            LD L,E
09BA: FD            DB 0xFD ; IX/IY prefix, manual analysis required
09BB: 62            LD H,D
09BC: 01 06 00      LD BC,0x0006
09BF: ED B0         LDIR
09C1: 0E 06         LD C,0x06
09C3: 09            ADD HL,BC
09C4: EB            EX DE,HL
09C5: 19            ADD HL,DE
09C6: EB            EX DE,HL
09C7: 0E 04         LD C,0x04
09C9: ED B0         LDIR
09CB: DD            DB 0xDD ; IX/IY prefix, manual analysis required
09CC: 7E            LD A,(HL)
09CD: 13            INC DE
09CE: FD            DB 0xFD ; IX/IY prefix, manual analysis required
09CF: 77            LD (HL),A
09D0: 13            INC DE
09D1: E1            POP HL
09D2: 23            INC HL
09D3: 7E            LD A,(HL)
09D4: FD            DB 0xFD ; IX/IY prefix, manual analysis required
09D5: 77            LD (HL),A
09D6: 08            EX AF,AF'
09D7: 23            INC HL
09D8: 7E            LD A,(HL)
09D9: FD            DB 0xFD ; IX/IY prefix, manual analysis required
09DA: 77            LD (HL),A
09DB: 09            ADD HL,BC
09DC: FD            DB 0xFD ; IX/IY prefix, manual analysis required
09DD: 36 0A         LD (HL),0x0A
09DF: 01 FD 36      LD BC,0x36FD
09E2: 0B            DEC BC
09E3: 02            LD (BC),A
09E4: FD            DB 0xFD ; IX/IY prefix, manual analysis required
09E5: 36 0D         LD (HL),0x0D
09E7: 01 08 FD      LD BC,0xFD08
09EA: 77            LD (HL),A
09EB: 10 5F         DJNZ 0x0A4C
09ED: 16 88         LD D,0x88
09EF: 3E 09         LD A,0x09
09F1: 12            LD (DE),A
09F2: 1C            INC E
09F3: FD            DB 0xFD ; IX/IY prefix, manual analysis required
09F4: 7D            LD A,L
09F5: 12            LD (DE),A
09F6: 23            INC HL
09F7: C3 0E 09      JP 0x090E
09FA: E1            POP HL
09FB: 23            INC HL
09FC: 23            INC HL
09FD: 23            INC HL
09FE: C3 0E 09      JP 0x090E
0A01: E5            PUSH HL
0A02: EB            EX DE,HL
0A03: 3A 15 92      LD A,(0x9215)
0A06: 4F            LD C,A
0A07: 3A 62 93      LD A,(0x9362)
0A0A: FE 1E         CP 0x1E
0A0C: 30 02         JR NC,0x0A10
0A0E: 3E 1E         LD A,0x1E
0A10: FE D1         CP 0xD1
0A12: 38 02         JR C,0x0A16
0A14: 3E D1         LD A,0xD1
0A16: CB 41         BIT 0,C
0A18: 28 04         JR Z,0x0A1E
0A1A: C6 0E         ADD A,0x0E
0A1C: ED 44         NEG
0A1E: CB 3F         SRL A
0A20: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0A21: 96            SUB (HL)
0A22: 03            INC BC
0A23: 1F            RRA
0A24: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0A25: CB 13         RL E
0A27: 7E            LD A,(HL)
0A28: 28 02         JR Z,0x0A2C
0A2A: ED 44         NEG
0A2C: C6 18         ADD A,0x18
0A2E: F2 32 0A      JP P,0x0A32
0A31: AF            XOR A
0A32: FE 30         CP 0x30
0A34: 38 02         JR C,0x0A38
0A36: 3E 2F         LD A,0x2F
0A38: 67            LD H,A
0A39: 3E 06         LD A,0x06
0A3B: CD AE 0E      CALL 0x0EAE
0A3E: 7C            LD A,H
0A3F: 3C            INC A
0A40: EB            EX DE,HL
0A41: D7            RST 0x10
0A42: 7E            LD A,(HL)
0A43: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0A44: 77            LD (HL),A
0A45: 0D            DEC C
0A46: E1            POP HL
0A47: 3E 09         LD A,0x09
0A49: D7            RST 0x10
0A4A: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0A4B: 75            LD (HL),L
0A4C: 08            EX AF,AF'
0A4D: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0A4E: 74            LD (HL),H
0A4F: 09            ADD HL,BC
0A50: C3 FF 0B      JP 0x0BFF
0A53: E5            PUSH HL
0A54: 3A 15 92      LD A,(0x9215)
0A57: 4F            LD C,A
0A58: 3A 62 93      LD A,(0x9362)
0A5B: C6 03         ADD A,0x03
0A5D: E6 F8         AND 0xF8
0A5F: 3C            INC A
0A60: FE 29         CP 0x29
0A62: 30 02         JR NC,0x0A66
0A64: 3E 29         LD A,0x29
0A66: FE CA         CP 0xCA
0A68: 38 02         JR C,0x0A6C
0A6A: 3E C9         LD A,0xC9
0A6C: CB 41         BIT 0,C
0A6E: 28 03         JR Z,0x0A73
0A70: C6 0D         ADD A,0x0D
0A72: 2F            CPL
0A73: 32 8A 92      LD (0x928A),A
0A76: CB 3F         SRL A
0A78: 5F            LD E,A
0A79: 16 48         LD D,0x48
0A7B: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0A7C: 66            LD H,(HL)
0A7D: 01 DD 6E      LD BC,0x6EDD
0A80: 03            INC BC
0A81: CD 5F 0E      CALL 0x0E5F
0A84: CB 3C         SRL H
0A86: CB 1D         RR L
0A88: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0A89: 75            LD (HL),L
0A8A: 04            INC B
0A8B: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0A8C: 74            LD (HL),H
0A8D: 05            DEC B
0A8E: AF            XOR A
0A8F: 32 8B 92      LD (0x928B),A
0A92: 3C            INC A
0A93: 32 19 90      LD (0x9019),A
0A96: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0A97: 7D            LD A,L
0A98: 32 29 98      LD (0x9829),A
0A9B: E1            POP HL
0A9C: 23            INC HL
0A9D: C3 0E 09      JP 0x090E
0AA0: E5            PUSH HL
0AA1: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0AA2: 6E            LD L,(HL)
0AA3: 10 26         DJNZ 0x0ACB
0AA5: 88            ADC A,B
0AA6: 36 09         LD (HL),0x09
0AA8: 26 01         LD H,0x01
0AAA: 4E            LD C,(HL)
0AAB: 2C            INC L
0AAC: 6E            LD L,(HL)
0AAD: 26 99         LD H,0x99
0AAF: 46            LD B,(HL)
0AB0: 2C            INC L
0AB1: 5E            LD E,(HL)
0AB2: 69            LD L,C
0AB3: 4E            LD C,(HL)
0AB4: 2C            INC L
0AB5: 56            LD D,(HL)
0AB6: CB 3B         SRL E
0AB8: D5            PUSH DE
0AB9: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0ABA: 70            LD (HL),B
0ABB: 11 DD 71      LD DE,0x71DD
0ABE: 12            LD (DE),A
0ABF: 3A 15 92      LD A,(0x9215)
0AC2: A7            AND A
0AC3: 28 08         JR Z,0x0ACD
0AC5: 78            LD A,B
0AC6: ED 44         NEG
0AC8: 47            LD B,A
0AC9: 79            LD A,C
0ACA: ED 44         NEG
0ACC: 4F            LD C,A
0ACD: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0ACE: 6E            LD L,(HL)
0ACF: 00            NOP
0AD0: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0AD1: 66            LD H,(HL)
0AD2: 01 51 1E      LD BC,0x1E51
0AD5: 00            NOP
0AD6: CB 2A         SRA D
0AD8: CB 1B         RR E
0ADA: 19            ADD HL,DE
0ADB: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0ADC: 75            LD (HL),L
0ADD: 00            NOP
0ADE: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0ADF: 74            LD (HL),H
0AE0: 01 5C DD      LD BC,0xDD5C
0AE3: 6E            LD L,(HL)
0AE4: 02            LD (BC),A
0AE5: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0AE6: 66            LD H,(HL)
0AE7: 03            INC BC
0AE8: 0E 00         LD C,0x00
0AEA: CB 28         SRA B
0AEC: CB 19         RR C
0AEE: ED 42         SBC HL,BC
0AF0: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0AF1: 75            LD (HL),L
0AF2: 02            LD (BC),A
0AF3: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0AF4: 74            LD (HL),H
0AF5: 03            INC BC
0AF6: 6C            LD L,H
0AF7: 63            LD H,E
0AF8: 4A            LD C,D
0AF9: D1            POP DE
0AFA: CD 5F 0E      CALL 0x0E5F
0AFD: CB 3C         SRL H
0AFF: CB 1D         RR L
0B01: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B02: 75            LD (HL),L
0B03: 04            INC B
0B04: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B05: 74            LD (HL),H
0B06: 05            DEC B
0B07: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B08: 72            LD (HL),D
0B09: 06 DD         LD B,0xDD
0B0B: 73            LD (HL),E
0B0C: 07            RLCA
0B0D: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B0E: CB 13         RL E
0B10: F6 E1         OR 0xE1
0B12: 23            INC HL
0B13: C3 0E 09      JP 0x090E
0B16: E5            PUSH HL
0B17: EB            EX DE,HL
0B18: 3A 15 92      LD A,(0x9215)
0B1B: 0F            RRCA
0B1C: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B1D: 46            LD B,(HL)
0B1E: 13            INC DE
0B1F: A8            XOR B
0B20: 07            RLCA
0B21: 3A E2 93      LD A,(0x93E2)
0B24: 3C            INC A
0B25: 3D            DEC A
0B26: 20 02         JR NZ,0x0B2A
0B28: 3E 80         LD A,0x80
0B2A: 38 04         JR C,0x0B30
0B2C: ED 44         NEG
0B2E: C6 F2         ADD A,0xF2
0B30: C6 0E         ADD A,0x0E
0B32: 67            LD H,A
0B33: 3E 1E         LD A,0x1E
0B35: CD AE 0E      CALL 0x0EAE
0B38: 7C            LD A,H
0B39: EB            EX DE,HL
0B3A: D7            RST 0x10
0B3B: 7E            LD A,(HL)
0B3C: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B3D: 77            LD (HL),A
0B3E: 0D            DEC C
0B3F: E1            POP HL
0B40: 3E 09         LD A,0x09
0B42: D7            RST 0x10
0B43: C3 FF 0B      JP 0x0BFF
0B46: 23            INC HL
0B47: 5E            LD E,(HL)
0B48: 23            INC HL
0B49: 56            LD D,(HL)
0B4A: EB            EX DE,HL
0B4B: C3 0E 09      JP 0x090E
0B4E: 23            INC HL
0B4F: 5E            LD E,(HL)
0B50: 23            INC HL
0B51: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B52: 73            LD (HL),E
0B53: 06 DD         LD B,0xDD
0B55: 36 07         LD (HL),0x07
0B57: 00            NOP
0B58: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B59: CB 13         RL E
0B5B: EE C3         XOR 0xC3
0B5D: FF            RST 0x38
0B5E: 0B            DEC BC
0B5F: 3A 15 92      LD A,(0x9215)
0B62: 4F            LD C,A
0B63: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B64: 5E            LD E,(HL)
0B65: 10 1C         DJNZ 0x0B83
0B67: 16 01         LD D,0x01
0B69: 1A            LD A,(DE)
0B6A: 5F            LD E,A
0B6B: 16 98         LD D,0x98
0B6D: 1A            LD A,(DE)
0B6E: CB 41         BIT 0,C
0B70: 28 04         JR Z,0x0B76
0B72: C6 0E         ADD A,0x0E
0B74: ED 44         NEG
0B76: CB 3F         SRL A
0B78: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B79: 77            LD (HL),A
0B7A: 03            INC BC
0B7B: 3A AA 92      LD A,(0x92AA)
0B7E: A7            AND A
0B7F: CA 8B 0B      JP Z,0x0B8B
0B82: 32 B3 9A      LD (0x9AB3),A
0B85: 18 04         JR 0x0B8B
0B87: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B88: 36 01         LD (HL),0x01
0B8A: 9C            SBC A,H
0B8B: 23            INC HL
0B8C: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B8D: 75            LD (HL),L
0B8E: 08            EX AF,AF'
0B8F: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B90: 74            LD (HL),H
0B91: 09            ADD HL,BC
0B92: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B93: 34            INC (HL)
0B94: 0D            DEC C
0B95: C3 FF 0D      JP 0x0DFF
0B98: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0B99: 7E            LD A,(HL)
0B9A: 10 E6         DJNZ 0x0B82
0B9C: 38 FE         JR C,0x0B9C
0B9E: 38 CA         JR C,0x0B6A
0BA0: 46            LD B,(HL)
0BA1: 0B            DEC BC
0BA2: 23            INC HL
0BA3: 23            INC HL
0BA4: 23            INC HL
0BA5: C3 0E 09      JP 0x090E
0BA8: 23            INC HL
0BA9: 7E            LD A,(HL)
0BAA: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BAB: CB 13         RL E
0BAD: 7E            LD A,(HL)
0BAE: 28 04         JR Z,0x0BB4
0BB0: C6 80         ADD A,0x80
0BB2: ED 44         NEG
0BB4: 0E 00         LD C,0x00
0BB6: CB 27         SLA A
0BB8: CB 11         RL C
0BBA: CB 27         SLA A
0BBC: CB 11         RL C
0BBE: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BBF: 77            LD (HL),A
0BC0: 04            INC B
0BC1: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BC2: 71            LD (HL),C
0BC3: 05            DEC B
0BC4: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BC5: 36 0E         LD (HL),0x0E
0BC7: 1E 3A         LD E,0x3A
0BC9: C8            RET Z
0BCA: 92            SUB D
0BCB: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BCC: 77            LD (HL),A
0BCD: 0F            RRCA
0BCE: C3 8B 0B      JP 0x0B8B
0BD1: 3A AA 92      LD A,(0x92AA)
0BD4: 4F            LD C,A
0BD5: 3A 1D 90      LD A,(0x901D)
0BD8: 3D            DEC A
0BD9: A1            AND C
0BDA: 18 C3         JR 0x0B9F
0BDC: 4F            LD C,A
0BDD: E6 0F         AND 0x0F
0BDF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BE0: 77            LD (HL),A
0BE1: 0A            LD A,(BC)
0BE2: 79            LD A,C
0BE3: 07            RLCA
0BE4: 07            RLCA
0BE5: 07            RLCA
0BE6: 07            RLCA
0BE7: E6 0F         AND 0x0F
0BE9: 23            INC HL
0BEA: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BEB: 77            LD (HL),A
0BEC: 0B            DEC BC
0BED: 7E            LD A,(HL)
0BEE: 23            INC HL
0BEF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BF0: CB 13         RL E
0BF2: 7E            LD A,(HL)
0BF3: 28 02         JR Z,0x0BF7
0BF5: ED 44         NEG
0BF7: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BF8: 77            LD (HL),A
0BF9: 0C            INC C
0BFA: 7E            LD A,(HL)
0BFB: 23            INC HL
0BFC: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0BFD: 77            LD (HL),A
0BFE: 0D            DEC C
0BFF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C00: 75            LD (HL),L
0C01: 08            EX AF,AF'
0C02: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C03: 74            LD (HL),H
0C04: 09            ADD HL,BC
0C05: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C06: CB 13         RL E
0C08: 76            HALT
0C09: 28 22         JR Z,0x0C2D
0C0B: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C0C: 7E            LD A,(HL)
0C0D: 01 DD 96      LD BC,0x96DD
0C10: 06 28         LD B,0x28
0C12: 08            EX AF,AF'
0C13: F2 18 0C      JP P,0x0C18
0C16: ED 44         NEG
0C18: 3D            DEC A
0C19: 20 12         JR NZ,0x0C2D
0C1B: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C1C: 7E            LD A,(HL)
0C1D: 03            INC BC
0C1E: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C1F: 96            SUB (HL)
0C20: 07            RLCA
0C21: CA 0C 0E      JP Z,0x0E0C
0C24: F2 29 0C      JP P,0x0C29
0C27: ED 44         NEG
0C29: 3D            DEC A
0C2A: CA 0C 0E      JP Z,0x0E0C
0C2D: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C2E: CB 13         RL E
0C30: 6E            LD L,(HL)
0C31: 28 13         JR Z,0x0C46
0C33: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C34: 7E            LD A,(HL)
0C35: 01 DD 96      LD BC,0x96DD
0C38: 06 28         LD B,0x28
0C3A: 03            INC BC
0C3B: 3C            INC A
0C3C: 20 08         JR NZ,0x0C46
0C3E: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C3F: 36 0D         LD (HL),0x0D
0C41: 01 DD CB      LD BC,0xCBDD
0C44: 13            INC DE
0C45: AE            XOR (HL)
0C46: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C47: 46            LD B,(HL)
0C48: 0C            INC C
0C49: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C4A: 7E            LD A,(HL)
0C4B: 04            INC B
0C4C: 5F            LD E,A
0C4D: 80            ADD A,B
0C4E: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C4F: 77            LD (HL),A
0C50: 04            INC B
0C51: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C52: 56            LD D,(HL)
0C53: 05            DEC B
0C54: 2E 01         LD L,0x01
0C56: CB 78         BIT 7,B
0C58: 28 02         JR Z,0x0C5C
0C5A: 2E FF         LD L,0xFF
0C5C: 1F            RRA
0C5D: A8            XOR B
0C5E: 7A            LD A,D
0C5F: F2 63 0C      JP P,0x0C63
0C62: 85            ADD A,L
0C63: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C64: 77            LD (HL),A
0C65: 05            DEC B
0C66: 7B            LD A,E
0C67: 4A            LD C,D
0C68: CB 41         BIT 0,C
0C6A: 28 01         JR Z,0x0C6D
0C6C: 2F            CPL
0C6D: C6 15         ADD A,0x15
0C6F: 30 04         JR NC,0x0C75
0C71: 06 06         LD B,0x06
0C73: 18 0C         JR 0x0C81
0C75: CB 3F         SRL A
0C77: 47            LD B,A
0C78: CB 38         SRL B
0C7A: 80            ADD A,B
0C7B: 07            RLCA
0C7C: 07            RLCA
0C7D: 07            RLCA
0C7E: E6 07         AND 0x07
0C80: 47            LD B,A
0C81: 26 8B         LD H,0x8B
0C83: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0C84: 6E            LD L,(HL)
0C85: 10 7E         DJNZ 0x0D05
0C87: E6 F8         AND 0xF8
0C89: B0            OR B
0C8A: 77            LD (HL),A
0C8B: 26 9B         LD H,0x9B
0C8D: 79            LD A,C
0C8E: CB 09         RRC C
0C90: A9            XOR C
0C91: 3C            INC A
0C92: CB 09         RRC C
0C94: 17            RLA
0C95: E6 03         AND 0x03
0C97: 77            LD (HL),A
0C98: 3A A0 92      LD A,(0x92A0)
0C9B: E6 01         AND 0x01
0C9D: 28 05         JR Z,0x0CA4
0C9F: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0CA0: 7E            LD A,(HL)
0CA1: 0A            LD A,(BC)
0CA2: 18 03         JR 0x0CA7
0CA4: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0CA5: 7E            LD A,(HL)
0CA6: 0B            DEC BC
0CA7: A7            AND A
0CA8: CA 03 0D      JP Z,0x0D03
0CAB: E5            PUSH HL
0CAC: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0CAD: E5            PUSH HL
0CAE: E1            POP HL
0CAF: 47            LD B,A
0CB0: 7A            LD A,D
0CB1: E6 03         AND 0x03
0CB3: 57            LD D,A
0CB4: CB 03         RLC E
0CB6: CB 12         RL D
0CB8: D5            PUSH DE
0CB9: AA            XOR D
0CBA: 0F            RRCA
0CBB: 38 02         JR C,0x0CBF
0CBD: 2C            INC L
0CBE: 2C            INC L
0CBF: 14            INC D
0CC0: CB 52         BIT 2,D
0CC2: 78            LD A,B
0CC3: 28 02         JR Z,0x0CC7
0CC5: ED 44         NEG
0CC7: 4F            LD C,A
0CC8: CB 29         SRA C
0CCA: 30 04         JR NC,0x0CD0
0CCC: 7E            LD A,(HL)
0CCD: C6 80         ADD A,0x80
0CCF: 77            LD (HL),A
0CD0: 2C            INC L
0CD1: 7E            LD A,(HL)
0CD2: 89            ADC A,C
0CD3: 77            LD (HL),A
0CD4: 2D            DEC L
0CD5: EB            EX DE,HL
0CD6: 7B            LD A,E
0CD7: EE 02         XOR 0x02
0CD9: 5F            LD E,A
0CDA: E1            POP HL
0CDB: CB 3D         SRL L
0CDD: 30 04         JR NC,0x0CE3
0CDF: 7D            LD A,L
0CE0: EE 7F         XOR 0x7F
0CE2: 6F            LD L,A
0CE3: 78            LD A,B
0CE4: 44            LD B,H
0CE5: 26 00         LD H,0x00
0CE7: CD 9B 0E      CALL 0x0E9B
0CEA: 78            LD A,B
0CEB: EE 02         XOR 0x02
0CED: 3D            DEC A
0CEE: CB 57         BIT 2,A
0CF0: 28 08         JR Z,0x0CFA
0CF2: 44            LD B,H
0CF3: 4D            LD C,L
0CF4: 21 00 00      LD HL,0x0000
0CF7: A7            AND A
0CF8: ED 42         SBC HL,BC
0CFA: EB            EX DE,HL
0CFB: 7B            LD A,E
0CFC: 86            ADD A,(HL)
0CFD: 77            LD (HL),A
0CFE: 2C            INC L
0CFF: 7A            LD A,D
0D00: 8E            ADC A,(HL)
0D01: 77            LD (HL),A
0D02: E1            POP HL
0D03: 3A 15 92      LD A,(0x9215)
0D06: 4F            LD C,A
0D07: 26 93         LD H,0x93
0D09: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D0A: 56            LD D,(HL)
0D0B: 03            INC BC
0D0C: 3E 7F         LD A,0x7F
0D0E: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D0F: BE            CP (HL)
0D10: 02            LD (BC),A
0D11: 7A            LD A,D
0D12: 17            RLA
0D13: CB 41         BIT 0,C
0D15: 28 03         JR Z,0x0D1A
0D17: C6 0D         ADD A,0x0D
0D19: 2F            CPL
0D1A: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D1B: CB 13         RL E
0D1D: 76            HALT
0D1E: 28 03         JR Z,0x0D23
0D20: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D21: 86            ADD A,(HL)
0D22: 11 77 2C      LD DE,0x2C77
0D25: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D26: 46            LD B,(HL)
0D27: 01 3E 7F      LD BC,0x7F3E
0D2A: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D2B: BE            CP (HL)
0D2C: 00            NOP
0D2D: CB 13         RL E
0D2F: 78            LD A,B
0D30: CB 41         BIT 0,C
0D32: 20 04         JR NZ,0x0D38
0D34: C6 4F         ADD A,0x4F
0D36: 2F            CPL
0D37: 1D            DEC E
0D38: CB 1B         RR E
0D3A: 17            RLA
0D3B: CB 13         RL E
0D3D: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D3E: CB 13         RL E
0D40: 76            HALT
0D41: 28 0D         JR Z,0x0D50
0D43: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D44: 86            ADD A,(HL)
0D45: 12            LD (DE),A
0D46: 57            LD D,A
0D47: 1F            RRA
0D48: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D49: AE            XOR (HL)
0D4A: 12            LD (DE),A
0D4B: 07            RLCA
0D4C: 7A            LD A,D
0D4D: 30 01         JR NC,0x0D50
0D4F: 1C            INC E
0D50: 77            LD (HL),A
0D51: 26 9B         LD H,0x9B
0D53: CB 0E         RRC (HL)
0D55: CB 0B         RRC E
0D57: CB 16         RL (HL)
0D59: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D5A: 35            DEC (HL)
0D5B: 0E C2         LD C,0xC2
0D5D: FF            RST 0x38
0D5E: 0D            DEC C
0D5F: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D60: CB 0F         RRC A
0D62: 3E D2         LD A,0xD2
0D64: F9            LD SP,HL
0D65: 0D            DEC C
0D66: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0D67: 7E            LD A,(HL)
0D68: 01 FE 4C      LD BC,0x4CFE
0D6B: DA F9 0D      JP C,0x0DF9
0D6E: 3A 15 90      LD A,(0x9015)
0D71: A7            AND A
0D72: CA F9 0D      JP Z,0x0DF9
0D75: 3A AD 92      LD A,(0x92AD)
0D78: A7            AND A
0D79: C2 F9 0D      JP NZ,0x0DF9
0D7C: EB            EX DE,HL
0D7D: 21 68 88      LD HL,0x8868
0D80: 06 08         LD B,0x08
0D82: 7E            LD A,(HL)
0D83: FE 80         CP 0x80
0D85: 28 06         JR Z,0x0D8D
0D87: 2C            INC L
0D88: 2C            INC L
0D89: 10 F7         DJNZ 0x0D82
0D8B: 18 6C         JR 0x0DF9
0D8D: 36 06         LD (HL),0x06
0D8F: 26 9B         LD H,0x9B
0D91: 36 01         LD (HL),0x01
0D93: E5            PUSH HL
0D94: 26 93         LD H,0x93
0D96: 54            LD D,H
0D97: 1D            DEC E
0D98: 1A            LD A,(DE)
0D99: 4F            LD C,A
0D9A: 77            LD (HL),A
0D9B: 1C            INC E
0D9C: 2C            INC L
0D9D: 1A            LD A,(DE)
0D9E: 47            LD B,A
0D9F: 77            LD (HL),A
0DA0: 26 9B         LD H,0x9B
0DA2: 54            LD D,H
0DA3: 1A            LD A,(DE)
0DA4: CB 0E         RRC (HL)
0DA6: 0F            RRCA
0DA7: CB 16         RL (HL)
0DA9: 07            RLCA
0DAA: CB 18         RR B
0DAC: 3A 62 93      LD A,(0x9362)
0DAF: 91            SUB C
0DB0: F5            PUSH AF
0DB1: 30 02         JR NC,0x0DB5
0DB3: ED 44         NEG
0DB5: 67            LD H,A
0DB6: 3A 15 92      LD A,(0x9215)
0DB9: A7            AND A
0DBA: 3E 95         LD A,0x95
0DBC: 28 02         JR Z,0x0DC0
0DBE: 3E 1C         LD A,0x1C
0DC0: 90            SUB B
0DC1: 30 02         JR NC,0x0DC5
0DC3: ED 44         NEG
0DC5: CD AE 0E      CALL 0x0EAE
0DC8: 44            LD B,H
0DC9: 4D            LD C,L
0DCA: CB 3C         SRL H
0DCC: CB 1D         RR L
0DCE: CB 3C         SRL H
0DD0: CB 1D         RR L
0DD2: 09            ADD HL,BC
0DD3: CB 3C         SRL H
0DD5: CB 1D         RR L
0DD7: CB 3C         SRL H
0DD9: CB 1D         RR L
0DDB: 7C            LD A,H
0DDC: A7            AND A
0DDD: 20 05         JR NZ,0x0DE4
0DDF: 7D            LD A,L
0DE0: FE 60         CP 0x60
0DE2: 38 02         JR C,0x0DE6
0DE4: 3E 60         LD A,0x60
0DE6: 47            LD B,A
0DE7: F1            POP AF
0DE8: CB 18         RR B
0DEA: E1            POP HL
0DEB: 7D            LD A,L
0DEC: C6 08         ADD A,0x08
0DEE: E6 0F         AND 0x0F
0DF0: 21 B0 92      LD HL,0x92B0
0DF3: 85            ADD A,L
0DF4: 6F            LD L,A
0DF5: 70            LD (HL),B
0DF6: 23            INC HL
0DF7: 36 00         LD (HL),0x00
0DF9: 3A E2 92      LD A,(0x92E2)
0DFC: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0DFD: 77            LD (HL),A
0DFE: 0E 21         LD C,0x21
0E00: 89            ADC A,C
0E01: 92            SUB D
0E02: 35            DEC (HL)
0E03: C8            RET Z
0E04: 11 14 00      LD DE,0x0014
0E07: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0E08: 19            ADD HL,DE
0E09: C3 E4 08      JP 0x08E4
0E0C: AF            XOR A
0E0D: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0E0E: CB 13         RL E
0E10: 86            ADD A,(HL)
0E11: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0E12: 77            LD (HL),A
0E13: 00            NOP
0E14: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0E15: 77            LD (HL),A
0E16: 02            LD (BC),A
0E17: 26 88         LD H,0x88
0E19: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0E1A: 6E            LD L,(HL)
0E1B: 10 36         DJNZ 0x0E53
0E1D: 02            LD (BC),A
0E1E: 26 8B         LD H,0x8B
0E20: 2C            INC L
0E21: 7E            LD A,(HL)
0E22: 2D            DEC L
0E23: 3C            INC A
0E24: E6 07         AND 0x07
0E26: FE 05         CP 0x05
0E28: 38 14         JR C,0x0E3E
0E2A: 3A 2E 98      LD A,(0x982E)
0E2D: 4F            LD C,A
0E2E: E6 F8         AND 0xF8
0E30: C6 06         ADD A,0x06
0E32: 77            LD (HL),A
0E33: 2C            INC L
0E34: 79            LD A,C
0E35: E6 07         AND 0x07
0E37: 77            LD (HL),A
0E38: 2D            DEC L
0E39: 3E 01         LD A,0x01
0E3B: 32 2D 98      LD (0x982D),A
0E3E: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0E3F: 7E            LD A,(HL)
0E40: 06 DD         LD B,0xDD
0E42: 77            LD (HL),A
0E43: 01 DD 7E      LD BC,0x7EDD
0E46: 07            RLCA
0E47: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0E48: 77            LD (HL),A
0E49: 03            INC BC
0E4A: C3 03 0D      JP 0x0D03
0E4D: 26 88         LD H,0x88
0E4F: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0E50: 6E            LD L,(HL)
0E51: 10 36         DJNZ 0x0E89
0E53: 80            ADD A,B
0E54: 26 93         LD H,0x93
0E56: 36 00         LD (HL),0x00
0E58: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0E59: 36 13         LD (HL),0x13
0E5B: 00            NOP
0E5C: C3 FF 0D      JP 0x0DFF
0E5F: C5            PUSH BC
0E60: D5            PUSH DE
0E61: 7B            LD A,E
0E62: 95            SUB L
0E63: 06 00         LD B,0x00
0E65: 30 04         JR NC,0x0E6B
0E67: CB C0         SET 0,B
0E69: ED 44         NEG
0E6B: 4F            LD C,A
0E6C: 7A            LD A,D
0E6D: 94            SUB H
0E6E: 30 0A         JR NC,0x0E7A
0E70: 57            LD D,A
0E71: 78            LD A,B
0E72: EE 01         XOR 0x01
0E74: F6 02         OR 0x02
0E76: 47            LD B,A
0E77: 7A            LD A,D
0E78: ED 44         NEG
0E7A: B9            CP C
0E7B: F5            PUSH AF
0E7C: 17            RLA
0E7D: A8            XOR B
0E7E: 1F            RRA
0E7F: 3F            CCF
0E80: CB 10         RL B
0E82: F1            POP AF
0E83: 30 03         JR NC,0x0E88
0E85: 51            LD D,C
0E86: 4F            LD C,A
0E87: 7A            LD A,D
0E88: 61            LD H,C
0E89: 2E 00         LD L,0x00
0E8B: CD AE 0E      CALL 0x0EAE
0E8E: 7C            LD A,H
0E8F: A8            XOR B
0E90: E6 01         AND 0x01
0E92: 28 03         JR Z,0x0E97
0E94: 7D            LD A,L
0E95: 2F            CPL
0E96: 6F            LD L,A
0E97: 60            LD H,B
0E98: D1            POP DE
0E99: C1            POP BC
0E9A: C9            RET
0E9B: D5            PUSH DE
0E9C: EB            EX DE,HL
0E9D: 21 00 00      LD HL,0x0000
0EA0: CB 3F         SRL A
0EA2: 30 01         JR NC,0x0EA5
0EA4: 19            ADD HL,DE
0EA5: CB 23         SLA E
0EA7: CB 12         RL D
0EA9: A7            AND A
0EAA: 20 F4         JR NZ,0x0EA0
0EAC: D1            POP DE
0EAD: C9            RET
0EAE: C5            PUSH BC
0EAF: 4F            LD C,A
0EB0: AF            XOR A
0EB1: 06 11         LD B,0x11
0EB3: 8F            ADC A,A
0EB4: 38 0B         JR C,0x0EC1
0EB6: B9            CP C
0EB7: 38 01         JR C,0x0EBA
0EB9: 91            SUB C
0EBA: 3F            CCF
0EBB: ED 6A         ADC HL,HL
0EBD: 10 F4         DJNZ 0x0EB3
0EBF: C1            POP BC
0EC0: C9            RET
0EC1: 91            SUB C
0EC2: 37            SCF
0EC3: C3 BB 0E      JP 0x0EBB
0EC6: FF            RST 0x38
0EC7: FF            RST 0x38
0EC8: FF            RST 0x38
0EC9: FF            RST 0x38
0ECA: 3A 02 68      LD A,(0x6802)
0ECD: E6 02         AND 0x02
0ECF: C0            RET NZ
0ED0: 21 FF 10      LD HL,0x10FF
0ED3: 7E            LD A,(HL)
0ED4: 2E DF         LD L,0xDF
0ED6: 4E            LD C,(HL)
0ED7: 7E            LD A,(HL)
0ED8: A9            XOR C
0ED9: CB 67         BIT 4,A
0EDB: 20 01         JR NZ,0x0EDE
0EDD: C7            RST 0x00
0EDE: 11 F7 89      LD DE,0x89F7
0EE1: 21 F6 89      LD HL,0x89F6
0EE4: 01 13 00      LD BC,0x0013
0EE7: ED B8         LDDR
0EE9: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0EEA: 21 D5 0F      LD HL,0x0FD5
0EED: 1E E0         LD E,0xE0
0EEF: 01 04 05      LD BC,0x0504
0EF2: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0EF3: 7E            LD A,(HL)
0EF4: 00            NOP
0EF5: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0EF6: 23            INC HL
0EF7: 6F            LD L,A
0EF8: 26 10         LD H,0x10
0EFA: 7E            LD A,(HL)
0EFB: 7B            LD A,E
0EFC: 81            ADD A,C
0EFD: 5F            LD E,A
0EFE: 7E            LD A,(HL)
0EFF: 12            LD (DE),A
0F00: 10 F0         DJNZ 0x0EF2
0F02: 06 05         LD B,0x05
0F04: 21 E4 89      LD HL,0x89E4
0F07: 7E            LD A,(HL)
0F08: 2C            INC L
0F09: B6            OR (HL)
0F0A: 2C            INC L
0F0B: 2F            CPL
0F0C: A6            AND (HL)
0F0D: 2C            INC L
0F0E: A6            AND (HL)
0F0F: 2C            INC L
0F10: E6 0F         AND 0x0F
0F12: 20 04         JR NZ,0x0F18
0F14: 10 F1         DJNZ 0x0F07
0F16: 18 40         JR 0x0F58
0F18: 05            DEC B
0F19: 28 4F         JR Z,0x0F6A
0F1B: 05            DEC B
0F1C: CB 20         SLA B
0F1E: CB 20         SLA B
0F20: 0F            RRCA
0F21: 38 03         JR C,0x0F26
0F23: 04            INC B
0F24: 18 FA         JR 0x0F20
0F26: 3A E0 89      LD A,(0x89E0)
0F29: CB 3F         SRL A
0F2B: 5F            LD E,A
0F2C: CB 11         RL C
0F2E: C6 E1         ADD A,0xE1
0F30: 6F            LD L,A
0F31: 26 89         LD H,0x89
0F33: 7E            LD A,(HL)
0F34: CB 41         BIT 0,C
0F36: 28 04         JR Z,0x0F3C
0F38: 07            RLCA
0F39: 07            RLCA
0F3A: 07            RLCA
0F3B: 07            RLCA
0F3C: E6 F0         AND 0xF0
0F3E: B0            OR B
0F3F: CB 41         BIT 0,C
0F41: 28 04         JR Z,0x0F47
0F43: 07            RLCA
0F44: 07            RLCA
0F45: 07            RLCA
0F46: 07            RLCA
0F47: 77            LD (HL),A
0F48: 3A E0 89      LD A,(0x89E0)
0F4B: A7            AND A
0F4C: 20 02         JR NZ,0x0F50
0F4E: 3E 02         LD A,0x02
0F50: 3D            DEC A
0F51: 32 E0 89      LD (0x89E0),A
0F54: 7B            LD A,E
0F55: A7            AND A
0F56: 28 09         JR Z,0x0F61
0F58: 2A E2 89      LD HL,(0x89E2)
0F5B: 7E            LD A,(HL)
0F5C: 32 E1 89      LD (0x89E1),A
0F5F: 18 42         JR 0x0FA3
0F61: 2A E2 89      LD HL,(0x89E2)
0F64: 3A E1 89      LD A,(0x89E1)
0F67: 77            LD (HL),A
0F68: 18 39         JR 0x0FA3
0F6A: 4F            LD C,A
0F6B: 21 E0 89      LD HL,0x89E0
0F6E: CB 41         BIT 0,C
0F70: 20 2D         JR NZ,0x0F9F
0F72: 7E            LD A,(HL)
0F73: CB 3F         SRL A
0F75: 28 13         JR Z,0x0F8A
0F77: CB 59         BIT 3,C
0F79: 20 0C         JR NZ,0x0F87
0F7B: 7E            LD A,(HL)
0F7C: FE 05         CP 0x05
0F7E: 30 03         JR NC,0x0F83
0F80: 34            INC (HL)
0F81: 18 D5         JR 0x0F58
0F83: 36 05         LD (HL),0x05
0F85: 18 D1         JR 0x0F58
0F87: 35            DEC (HL)
0F88: 18 CE         JR 0x0F58
0F8A: 2A E2 89      LD HL,(0x89E2)
0F8D: CB 59         BIT 3,C
0F8F: 20 03         JR NZ,0x0F94
0F91: 2B            DEC HL
0F92: 18 01         JR 0x0F95
0F94: 23            INC HL
0F95: 22 E2 89      LD (0x89E2),HL
0F98: 3E 01         LD A,0x01
0F9A: 32 E0 89      LD (0x89E0),A
0F9D: 18 B9         JR 0x0F58
0F9F: 36 05         LD (HL),0x05
0FA1: 18 B5         JR 0x0F58
0FA3: 21 CA 83      LD HL,0x83CA
0FA6: 11 E1 89      LD DE,0x89E1
0FA9: 06 03         LD B,0x03
0FAB: 1A            LD A,(DE)
0FAC: 1C            INC E
0FAD: CD C6 0F      CALL 0x0FC6
0FB0: 10 F9         DJNZ 0x0FAB
0FB2: 21 CA 87      LD HL,0x87CA
0FB5: 3A E0 89      LD A,(0x89E0)
0FB8: 06 06         LD B,0x06
0FBA: A7            AND A
0FBB: 4F            LD C,A
0FBC: 28 02         JR Z,0x0FC0
0FBE: 0E 01         LD C,0x01
0FC0: 71            LD (HL),C
0FC1: 2C            INC L
0FC2: 3D            DEC A
0FC3: 10 F5         DJNZ 0x0FBA
0FC5: C9            RET
0FC6: 4F            LD C,A
0FC7: E6 0F         AND 0x0F
0FC9: 77            LD (HL),A
0FCA: 2C            INC L
0FCB: 79            LD A,C
0FCC: 07            RLCA
0FCD: 07            RLCA
0FCE: 07            RLCA
0FCF: 07            RLCA
0FD0: E6 0F         AND 0x0F
0FD2: 77            LD (HL),A
0FD3: 2C            INC L
0FD4: C9            RET
0FD5: FD            DB 0xFD ; IX/IY prefix, manual analysis required
0FD6: FB            EI
0FD7: F7            RST 0x30
0FD8: EF            RST 0x28
0FD9: FE 23         CP 0x23
0FDB: 00            NOP
0FDC: 1B            DEC DE
0FDD: 23            INC HL
0FDE: F0            RET P
0FDF: 40            LD B,B
0FE0: 23            INC HL
0FE1: 00            NOP
0FE2: 09            ADD HL,BC
0FE3: 23            INC HL
0FE4: 05            DEC B
0FE5: 11 23 00      LD DE,0x0023
0FE8: 10 23         DJNZ 0x100D
0FEA: 10 40         DJNZ 0x102C
0FEC: 23            INC HL
0FED: 04            INC B
0FEE: 30 FF         JR NC,0x0FEF
0FF0: 23            INC HL
0FF1: 02            LD (BC),A
0FF2: 35            DEC (HL)
0FF3: 23            INC HL
0FF4: 08            EX AF,AF'
0FF5: 10 23         DJNZ 0x101A
0FF7: 10 3C         DJNZ 0x1035
0FF9: 23            INC HL
0FFA: 00            NOP
0FFB: FF            RST 0x38
0FFC: FF            RST 0x38
0FFD: E2 FF FF      JP PO,0xFFFF
