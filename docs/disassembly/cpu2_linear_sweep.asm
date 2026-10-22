0000: 31 00 9B      LD SP,0x9B00
0003: C3 85 00      JP 0x0085
0006: FF            RST 0x38
0007: FF            RST 0x38
0008: 87            ADD A,A
0009: 30 05         JR NC,0x0010
000B: 24            INC H
000C: 18 02         JR 0x0010
000E: FF            RST 0x38
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
001D: FF            RST 0x38
001E: FF            RST 0x38
001F: FF            RST 0x38
0020: FF            RST 0x38
0021: FF            RST 0x38
0022: FF            RST 0x38
0023: FF            RST 0x38
0024: FF            RST 0x38
0025: FF            RST 0x38
0026: FF            RST 0x38
0027: FF            RST 0x38
0028: FF            RST 0x38
0029: FF            RST 0x38
002A: FF            RST 0x38
002B: FF            RST 0x38
002C: FF            RST 0x38
002D: FF            RST 0x38
002E: FF            RST 0x38
002F: FF            RST 0x38
0030: FF            RST 0x38
0031: FF            RST 0x38
0032: FF            RST 0x38
0033: FF            RST 0x38
0034: FF            RST 0x38
0035: FF            RST 0x38
0036: FF            RST 0x38
0037: FF            RST 0x38
0038: FF            RST 0x38
0039: FF            RST 0x38
003A: FF            RST 0x38
003B: FF            RST 0x38
003C: FF            RST 0x38
003D: FF            RST 0x38
003E: FF            RST 0x38
003F: FF            RST 0x38
0040: FF            RST 0x38
0041: FF            RST 0x38
0042: FF            RST 0x38
0043: FF            RST 0x38
0044: FF            RST 0x38
0045: FF            RST 0x38
0046: FF            RST 0x38
0047: FF            RST 0x38
0048: FF            RST 0x38
0049: FF            RST 0x38
004A: FF            RST 0x38
004B: FF            RST 0x38
004C: FF            RST 0x38
004D: FF            RST 0x38
004E: FF            RST 0x38
004F: FF            RST 0x38
0050: FF            RST 0x38
0051: FF            RST 0x38
0052: FF            RST 0x38
0053: FF            RST 0x38
0054: FF            RST 0x38
0055: FF            RST 0x38
0056: FF            RST 0x38
0057: FF            RST 0x38
0058: FF            RST 0x38
0059: FF            RST 0x38
005A: FF            RST 0x38
005B: FF            RST 0x38
005C: FF            RST 0x38
005D: FF            RST 0x38
005E: FF            RST 0x38
005F: FF            RST 0x38
0060: FF            RST 0x38
0061: FF            RST 0x38
0062: FF            RST 0x38
0063: FF            RST 0x38
0064: FF            RST 0x38
0065: FF            RST 0x38
0066: F5            PUSH AF
0067: 3A 8C 9A      LD A,(0x9A8C)
006A: A7            AND A
006B: 28 03         JR Z,0x0070
006D: F1            POP AF
006E: ED 45         RETN
0070: 3E 01         LD A,0x01
0072: 32 22 68      LD (0x6822),A
0075: 32 8C 9A      LD (0x9A8C),A
0078: AF            XOR A
0079: 32 22 68      LD (0x6822),A
007C: CD BB 00      CALL 0x00BB
007F: AF            XOR A
0080: 32 8C 9A      LD (0x9A8C),A
0083: F1            POP AF
0084: C9            RET
0085: 3E 01         LD A,0x01
0087: 32 22 68      LD (0x6822),A
008A: 11 01 91      LD DE,0x9101
008D: 1A            LD A,(DE)
008E: A7            AND A
008F: 20 FC         JR NZ,0x008D
0091: 67            LD H,A
0092: 6F            LD L,A
0093: 01 10 00      LD BC,0x0010
0096: 86            ADD A,(HL)
0097: 23            INC HL
0098: 10 FC         DJNZ 0x0096
009A: 0D            DEC C
009B: 20 F9         JR NZ,0x0096
009D: FE FF         CP 0xFF
009F: 28 02         JR Z,0x00A3
00A1: 3E 21         LD A,0x21
00A3: 12            LD (DE),A
00A4: 1A            LD A,(DE)
00A5: A7            AND A
00A6: 20 FC         JR NZ,0x00A4
00A8: AF            XOR A
00A9: 32 22 68      LD (0x6822),A
00AC: 21 00 9A      LD HL,0x9A00
00AF: 36 00         LD (HL),0x00
00B1: 11 01 9A      LD DE,0x9A01
00B4: 01 FF 00      LD BC,0x00FF
00B7: ED B0         LDIR
00B9: 18 FE         JR 0x00B9
00BB: 3A B8 9A      LD A,(0x9AB8)
00BE: A7            AND A
00BF: C2 AB 06      JP NZ,0x06AB
00C2: 21 60 9A      LD HL,0x9A60
00C5: 36 00         LD (HL),0x00
00C7: 11 61 9A      LD DE,0x9A61
00CA: 01 0F 00      LD BC,0x000F
00CD: ED B0         LDIR
00CF: 3A B7 9A      LD A,(0x9AB7)
00D2: A7            AND A
00D3: C2 4C 03      JP NZ,0x034C
00D6: 3A 79 9A      LD A,(0x9A79)
00D9: A7            AND A
00DA: 28 09         JR Z,0x00E5
00DC: 21 A8 9A      LD HL,0x9AA8
00DF: 86            ADD A,(HL)
00E0: 77            LD (HL),A
00E1: AF            XOR A
00E2: 32 79 9A      LD (0x9A79),A
00E5: 3A A0 9A      LD A,(0x9AA0)
00E8: A7            AND A
00E9: 28 6F         JR Z,0x015A
00EB: 3A 11 92      LD A,(0x9211)
00EE: 21 80 9A      LD HL,0x9A80
00F1: BE            CP (HL)
00F2: 28 20         JR Z,0x0114
00F4: 32 80 9A      LD (0x9A80),A
00F7: 3C            INC A
00F8: 28 0C         JR Z,0x0106
00FA: 21 F4 06      LD HL,0x06F4
00FD: 22 82 9A      LD (0x9A82),HL
0100: AF            XOR A
0101: 32 00 9A      LD (0x9A00),A
0104: 18 09         JR 0x010F
0106: 21 04 07      LD HL,0x0704
0109: 22 82 9A      LD (0x9A82),HL
010C: 32 00 9A      LD (0x9A00),A
010F: 32 81 9A      LD (0x9A81),A
0112: 18 12         JR 0x0126
0114: 21 00 9A      LD HL,0x9A00
0117: 34            INC (HL)
0118: 7E            LD A,(HL)
0119: FE 22         CP 0x22
011B: 20 1E         JR NZ,0x013B
011D: 36 00         LD (HL),0x00
011F: 3A 81 9A      LD A,(0x9A81)
0122: 3C            INC A
0123: 32 81 9A      LD (0x9A81),A
0126: 2A 82 9A      LD HL,(0x9A82)
0129: CF            RST 0x08
012A: 5E            LD E,(HL)
012B: 23            INC HL
012C: 56            LD D,(HL)
012D: ED 53 84 9A   LD (0x9a84),DE
0131: 3E 1F         LD A,0x1F
0133: D7            RST 0x10
0134: 5E            LD E,(HL)
0135: 23            INC HL
0136: 56            LD D,(HL)
0137: ED 53 86 9A   LD (0x9a86),DE
013B: 2A 86 9A      LD HL,(0x9A86)
013E: ED 5B 84 9A   LD DE,(0x9a84)
0142: 19            ADD HL,DE
0143: 22 86 9A      LD (0x9A86),HL
0146: 7C            LD A,H
0147: 32 61 9A      LD (0x9A61),A
014A: 0F            RRCA
014B: 0F            RRCA
014C: 0F            RRCA
014D: 0F            RRCA
014E: 32 62 9A      LD (0x9A62),A
0151: 3E 0A         LD A,0x0A
0153: 32 65 9A      LD (0x9A65),A
0156: AF            XOR A
0157: 32 70 9A      LD (0x9A70),A
015A: 21 74 9A      LD HL,0x9A74
015D: 36 13         LD (HL),0x13
015F: 3A B3 9A      LD A,(0x9AB3)
0162: A7            AND A
0163: 28 09         JR Z,0x016E
0165: AF            XOR A
0166: 32 B3 9A      LD (0x9AB3),A
0169: CD 03 04      CALL 0x0403
016C: 18 09         JR 0x0177
016E: 3A D3 9A      LD A,(0x9AD3)
0171: A7            AND A
0172: 28 03         JR Z,0x0177
0174: CD 59 04      CALL 0x0459
0177: 21 74 9A      LD HL,0x9A74
017A: 36 0F         LD (HL),0x0F
017C: 3A AF 9A      LD A,(0x9AAF)
017F: A7            AND A
0180: 28 09         JR Z,0x018B
0182: AF            XOR A
0183: 32 AF 9A      LD (0x9AAF),A
0186: CD 03 04      CALL 0x0403
0189: 18 09         JR 0x0194
018B: 3A CF 9A      LD A,(0x9ACF)
018E: A7            AND A
018F: 28 03         JR Z,0x0194
0191: CD 59 04      CALL 0x0459
0194: 21 74 9A      LD HL,0x9A74
0197: 36 03         LD (HL),0x03
0199: 3A A3 9A      LD A,(0x9AA3)
019C: A7            AND A
019D: 28 09         JR Z,0x01A8
019F: AF            XOR A
01A0: 32 A3 9A      LD (0x9AA3),A
01A3: CD 03 04      CALL 0x0403
01A6: 18 09         JR 0x01B1
01A8: 3A C3 9A      LD A,(0x9AC3)
01AB: A7            AND A
01AC: 28 03         JR Z,0x01B1
01AE: CD 59 04      CALL 0x0459
01B1: 21 74 9A      LD HL,0x9A74
01B4: 36 02         LD (HL),0x02
01B6: 3A A2 9A      LD A,(0x9AA2)
01B9: A7            AND A
01BA: 28 09         JR Z,0x01C5
01BC: AF            XOR A
01BD: 32 A2 9A      LD (0x9AA2),A
01C0: CD 03 04      CALL 0x0403
01C3: 18 09         JR 0x01CE
01C5: 3A C2 9A      LD A,(0x9AC2)
01C8: A7            AND A
01C9: 28 03         JR Z,0x01CE
01CB: CD 59 04      CALL 0x0459
01CE: 21 74 9A      LD HL,0x9A74
01D1: 36 04         LD (HL),0x04
01D3: 3A A4 9A      LD A,(0x9AA4)
01D6: A7            AND A
01D7: 28 09         JR Z,0x01E2
01D9: AF            XOR A
01DA: 32 A4 9A      LD (0x9AA4),A
01DD: CD 03 04      CALL 0x0403
01E0: 18 09         JR 0x01EB
01E2: 3A C4 9A      LD A,(0x9AC4)
01E5: A7            AND A
01E6: 28 03         JR Z,0x01EB
01E8: CD 59 04      CALL 0x0459
01EB: 21 74 9A      LD HL,0x9A74
01EE: 36 01         LD (HL),0x01
01F0: 3A A1 9A      LD A,(0x9AA1)
01F3: A7            AND A
01F4: 28 09         JR Z,0x01FF
01F6: AF            XOR A
01F7: 32 A1 9A      LD (0x9AA1),A
01FA: CD 03 04      CALL 0x0403
01FD: 18 09         JR 0x0208
01FF: 3A C1 9A      LD A,(0x9AC1)
0202: A7            AND A
0203: 28 03         JR Z,0x0208
0205: CD 59 04      CALL 0x0459
0208: 3A B2 9A      LD A,(0x9AB2)
020B: A7            AND A
020C: 28 08         JR Z,0x0216
020E: 21 74 9A      LD HL,0x9A74
0211: 36 12         LD (HL),0x12
0213: CD B1 04      CALL 0x04B1
0216: 3A A5 9A      LD A,(0x9AA5)
0219: A7            AND A
021A: 28 2C         JR Z,0x0248
021C: 21 74 9A      LD HL,0x9A74
021F: 36 05         LD (HL),0x05
0221: CD 84 03      CALL 0x0384
0224: 21 7E 9A      LD HL,0x9A7E
0227: 34            INC (HL)
0228: 3A 7E 9A      LD A,(0x9A7E)
022B: FE 06         CP 0x06
022D: 38 11         JR C,0x0240
022F: 36 00         LD (HL),0x00
0231: 3A 7C 9A      LD A,(0x9A7C)
0234: FE 04         CP 0x04
0236: 38 03         JR C,0x023B
0238: 3D            DEC A
0239: 18 02         JR 0x023D
023B: 3E 0C         LD A,0x0C
023D: 32 7C 9A      LD (0x9A7C),A
0240: 3A 7C 9A      LD A,(0x9A7C)
0243: 32 6F 9A      LD (0x9A6F),A
0246: 18 03         JR 0x024B
0248: 32 C5 9A      LD (0x9AC5),A
024B: 3A A6 9A      LD A,(0x9AA6)
024E: A7            AND A
024F: 28 24         JR Z,0x0275
0251: 21 74 9A      LD HL,0x9A74
0254: 36 06         LD (HL),0x06
0256: CD 84 03      CALL 0x0384
0259: 21 7F 9A      LD HL,0x9A7F
025C: 34            INC (HL)
025D: 7E            LD A,(HL)
025E: FE 1C         CP 0x1C
0260: 20 0B         JR NZ,0x026D
0262: AF            XOR A
0263: 32 7F 9A      LD (0x9A7F),A
0266: 3A 7D 9A      LD A,(0x9A7D)
0269: 3C            INC A
026A: 32 7D 9A      LD (0x9A7D),A
026D: 3A 7D 9A      LD A,(0x9A7D)
0270: 32 70 9A      LD (0x9A70),A
0273: 18 03         JR 0x0278
0275: 32 C6 9A      LD (0x9AC6),A
0278: 3A A9 9A      LD A,(0x9AA9)
027B: A7            AND A
027C: 28 0A         JR Z,0x0288
027E: 21 74 9A      LD HL,0x9A74
0281: 36 09         LD (HL),0x09
0283: CD 84 03      CALL 0x0384
0286: 18 03         JR 0x028B
0288: 32 C9 9A      LD (0x9AC9),A
028B: 3A A7 9A      LD A,(0x9AA7)
028E: A7            AND A
028F: 28 0B         JR Z,0x029C
0291: 21 74 9A      LD HL,0x9A74
0294: 36 07         LD (HL),0x07
0296: CD B1 04      CALL 0x04B1
0299: C3 3C 03      JP 0x033C
029C: 3A B1 9A      LD A,(0x9AB1)
029F: A7            AND A
02A0: 28 0A         JR Z,0x02AC
02A2: 21 74 9A      LD HL,0x9A74
02A5: 36 11         LD (HL),0x11
02A7: CD 84 03      CALL 0x0384
02AA: 18 03         JR 0x02AF
02AC: 32 D1 9A      LD (0x9AD1),A
02AF: 3A AD 9A      LD A,(0x9AAD)
02B2: A7            AND A
02B3: 28 08         JR Z,0x02BD
02B5: 21 74 9A      LD HL,0x9A74
02B8: 36 0D         LD (HL),0x0D
02BA: CD B1 04      CALL 0x04B1
02BD: 3A AE 9A      LD A,(0x9AAE)
02C0: A7            AND A
02C1: 28 12         JR Z,0x02D5
02C3: 21 74 9A      LD HL,0x9A74
02C6: 36 0E         LD (HL),0x0E
02C8: CD B1 04      CALL 0x04B1
02CB: 3E 09         LD A,0x09
02CD: 32 6A 9A      LD (0x9A6A),A
02D0: 3E 06         LD A,0x06
02D2: 32 6F 9A      LD (0x9A6F),A
02D5: 3A B4 9A      LD A,(0x9AB4)
02D8: A7            AND A
02D9: 28 08         JR Z,0x02E3
02DB: 21 74 9A      LD HL,0x9A74
02DE: 36 14         LD (HL),0x14
02E0: CD B1 04      CALL 0x04B1
02E3: 3A B5 9A      LD A,(0x9AB5)
02E6: A7            AND A
02E7: 28 08         JR Z,0x02F1
02E9: 21 74 9A      LD HL,0x9A74
02EC: 36 15         LD (HL),0x15
02EE: CD B1 04      CALL 0x04B1
02F1: 3A AA 9A      LD A,(0x9AAA)
02F4: A7            AND A
02F5: 28 08         JR Z,0x02FF
02F7: 21 74 9A      LD HL,0x9A74
02FA: 36 0A         LD (HL),0x0A
02FC: CD B1 04      CALL 0x04B1
02FF: 3A AB 9A      LD A,(0x9AAB)
0302: A7            AND A
0303: 28 08         JR Z,0x030D
0305: 21 74 9A      LD HL,0x9A74
0308: 36 0B         LD (HL),0x0B
030A: CD B1 04      CALL 0x04B1
030D: 3A B0 9A      LD A,(0x9AB0)
0310: A7            AND A
0311: 28 0A         JR Z,0x031D
0313: 21 74 9A      LD HL,0x9A74
0316: 36 10         LD (HL),0x10
0318: CD 84 03      CALL 0x0384
031B: 18 03         JR 0x0320
031D: 32 D0 9A      LD (0x9AD0),A
0320: 3A AC 9A      LD A,(0x9AAC)
0323: A7            AND A
0324: 28 08         JR Z,0x032E
0326: 21 74 9A      LD HL,0x9A74
0329: 36 0C         LD (HL),0x0C
032B: CD B1 04      CALL 0x04B1
032E: 3A B6 9A      LD A,(0x9AB6)
0331: A7            AND A
0332: 28 08         JR Z,0x033C
0334: 21 74 9A      LD HL,0x9A74
0337: 36 16         LD (HL),0x16
0339: CD B1 04      CALL 0x04B1
033C: 3A A8 9A      LD A,(0x9AA8)
033F: A7            AND A
0340: 28 08         JR Z,0x034A
0342: 21 74 9A      LD HL,0x9A74
0345: 36 08         LD (HL),0x08
0347: CD B1 04      CALL 0x04B1
034A: 18 1A         JR 0x0366
034C: 21 A0 9A      LD HL,0x9AA0
034F: 36 00         LD (HL),0x00
0351: 11 A1 9A      LD DE,0x9AA1
0354: 01 15 00      LD BC,0x0015
0357: ED B0         LDIR
0359: 21 C0 9A      LD HL,0x9AC0
035C: 36 00         LD (HL),0x00
035E: 11 C1 9A      LD DE,0x9AC1
0361: 01 16 00      LD BC,0x0016
0364: ED B0         LDIR
0366: 21 60 9A      LD HL,0x9A60
0369: 11 10 68      LD DE,0x6810
036C: 01 10 00      LD BC,0x0010
036F: ED B0         LDIR
0371: 3A 70 9A      LD A,(0x9A70)
0374: 32 05 68      LD (0x6805),A
0377: 3A 71 9A      LD A,(0x9A71)
037A: 32 0A 68      LD (0x680A),A
037D: 3A 72 9A      LD A,(0x9A72)
0380: 32 0F 68      LD (0x680F),A
0383: C9            RET
0384: 21 74 9A      LD HL,0x9A74
0387: 7E            LD A,(HL)
0388: 87            ADD A,A
0389: 86            ADD A,(HL)
038A: 21 34 07      LD HL,0x0734
038D: D7            RST 0x10
038E: 11 75 9A      LD DE,0x9A75
0391: 01 03 00      LD BC,0x0003
0394: ED B0         LDIR
0396: 3A 74 9A      LD A,(0x9A74)
0399: FE 0E         CP 0x0E
039B: 20 18         JR NZ,0x03B5
039D: 3A 4C 9A      LD A,(0x9A4C)
03A0: A7            AND A
03A1: 28 0D         JR Z,0x03B0
03A3: 3D            DEC A
03A4: 28 06         JR Z,0x03AC
03A6: 3A 4D 9A      LD A,(0x9A4D)
03A9: A7            AND A
03AA: 20 09         JR NZ,0x03B5
03AC: 3E 02         LD A,0x02
03AE: 18 02         JR 0x03B2
03B0: 3E 01         LD A,0x01
03B2: 32 76 9A      LD (0x9A76),A
03B5: 21 C0 9A      LD HL,0x9AC0
03B8: 3A 74 9A      LD A,(0x9A74)
03BB: 85            ADD A,L
03BC: 6F            LD L,A
03BD: 7E            LD A,(HL)
03BE: A7            AND A
03BF: 20 1B         JR NZ,0x03DC
03C1: 34            INC (HL)
03C2: 21 76 9A      LD HL,0x9A76
03C5: 46            LD B,(HL)
03C6: 48            LD C,B
03C7: 21 30 9A      LD HL,0x9A30
03CA: 3A 75 9A      LD A,(0x9A75)
03CD: 85            ADD A,L
03CE: 6F            LD L,A
03CF: AF            XOR A
03D0: DF            RST 0x18
03D1: 41            LD B,C
03D2: 21 00 9A      LD HL,0x9A00
03D5: 3A 75 9A      LD A,(0x9A75)
03D8: 85            ADD A,L
03D9: 6F            LD L,A
03DA: AF            XOR A
03DB: DF            RST 0x18
03DC: CD 81 05      CALL 0x0581
03DF: 21 76 9A      LD HL,0x9A76
03E2: 35            DEC (HL)
03E3: 28 0A         JR Z,0x03EF
03E5: 21 75 9A      LD HL,0x9A75
03E8: 34            INC (HL)
03E9: 21 77 9A      LD HL,0x9A77
03EC: 34            INC (HL)
03ED: 18 ED         JR 0x03DC
03EF: 3A 78 9A      LD A,(0x9A78)
03F2: A7            AND A
03F3: C8            RET Z
03F4: AF            XOR A
03F5: 32 78 9A      LD (0x9A78),A
03F8: 21 C0 9A      LD HL,0x9AC0
03FB: 3A 74 9A      LD A,(0x9A74)
03FE: 85            ADD A,L
03FF: 6F            LD L,A
0400: 36 00         LD (HL),0x00
0402: C9            RET
0403: 21 C0 9A      LD HL,0x9AC0
0406: 3A 74 9A      LD A,(0x9A74)
0409: 85            ADD A,L
040A: 6F            LD L,A
040B: 34            INC (HL)
040C: 21 74 9A      LD HL,0x9A74
040F: 7E            LD A,(HL)
0410: 87            ADD A,A
0411: 86            ADD A,(HL)
0412: 21 34 07      LD HL,0x0734
0415: D7            RST 0x10
0416: 11 75 9A      LD DE,0x9A75
0419: 01 03 00      LD BC,0x0003
041C: ED B0         LDIR
041E: 3A 74 9A      LD A,(0x9A74)
0421: FE 0E         CP 0x0E
0423: 20 18         JR NZ,0x043D
0425: 3A 4C 9A      LD A,(0x9A4C)
0428: A7            AND A
0429: 28 0D         JR Z,0x0438
042B: 3D            DEC A
042C: 28 06         JR Z,0x0434
042E: 3A 4D 9A      LD A,(0x9A4D)
0431: A7            AND A
0432: 20 09         JR NZ,0x043D
0434: 3E 02         LD A,0x02
0436: 18 02         JR 0x043A
0438: 3E 01         LD A,0x01
043A: 32 76 9A      LD (0x9A76),A
043D: 21 76 9A      LD HL,0x9A76
0440: 46            LD B,(HL)
0441: 48            LD C,B
0442: 21 30 9A      LD HL,0x9A30
0445: 3A 75 9A      LD A,(0x9A75)
0448: 85            ADD A,L
0449: 6F            LD L,A
044A: AF            XOR A
044B: DF            RST 0x18
044C: 41            LD B,C
044D: 21 00 9A      LD HL,0x9A00
0450: 3A 75 9A      LD A,(0x9A75)
0453: 85            ADD A,L
0454: 6F            LD L,A
0455: AF            XOR A
0456: DF            RST 0x18
0457: 18 31         JR 0x048A
0459: 21 74 9A      LD HL,0x9A74
045C: 7E            LD A,(HL)
045D: 87            ADD A,A
045E: 86            ADD A,(HL)
045F: 21 34 07      LD HL,0x0734
0462: D7            RST 0x10
0463: 11 75 9A      LD DE,0x9A75
0466: 01 03 00      LD BC,0x0003
0469: ED B0         LDIR
046B: 3A 74 9A      LD A,(0x9A74)
046E: FE 0E         CP 0x0E
0470: 20 18         JR NZ,0x048A
0472: 3A 4C 9A      LD A,(0x9A4C)
0475: A7            AND A
0476: 28 0D         JR Z,0x0485
0478: 3D            DEC A
0479: 28 06         JR Z,0x0481
047B: 3A 4D 9A      LD A,(0x9A4D)
047E: A7            AND A
047F: 20 09         JR NZ,0x048A
0481: 3E 02         LD A,0x02
0483: 18 02         JR 0x0487
0485: 3E 01         LD A,0x01
0487: 32 76 9A      LD (0x9A76),A
048A: CD 81 05      CALL 0x0581
048D: 21 76 9A      LD HL,0x9A76
0490: 35            DEC (HL)
0491: 28 0A         JR Z,0x049D
0493: 21 75 9A      LD HL,0x9A75
0496: 34            INC (HL)
0497: 21 77 9A      LD HL,0x9A77
049A: 34            INC (HL)
049B: 18 ED         JR 0x048A
049D: 3A 78 9A      LD A,(0x9A78)
04A0: A7            AND A
04A1: C8            RET Z
04A2: AF            XOR A
04A3: 32 78 9A      LD (0x9A78),A
04A6: 21 C0 9A      LD HL,0x9AC0
04A9: 3A 74 9A      LD A,(0x9A74)
04AC: 85            ADD A,L
04AD: 6F            LD L,A
04AE: 36 00         LD (HL),0x00
04B0: C9            RET
04B1: 21 74 9A      LD HL,0x9A74
04B4: 7E            LD A,(HL)
04B5: 87            ADD A,A
04B6: 86            ADD A,(HL)
04B7: 21 34 07      LD HL,0x0734
04BA: D7            RST 0x10
04BB: 11 75 9A      LD DE,0x9A75
04BE: 01 03 00      LD BC,0x0003
04C1: ED B0         LDIR
04C3: 3A 74 9A      LD A,(0x9A74)
04C6: FE 0E         CP 0x0E
04C8: 20 18         JR NZ,0x04E2
04CA: 3A 4C 9A      LD A,(0x9A4C)
04CD: A7            AND A
04CE: 28 0D         JR Z,0x04DD
04D0: 3D            DEC A
04D1: 28 06         JR Z,0x04D9
04D3: 3A 4D 9A      LD A,(0x9A4D)
04D6: A7            AND A
04D7: 20 09         JR NZ,0x04E2
04D9: 3E 02         LD A,0x02
04DB: 18 02         JR 0x04DF
04DD: 3E 01         LD A,0x01
04DF: 32 76 9A      LD (0x9A76),A
04E2: 21 C0 9A      LD HL,0x9AC0
04E5: 3A 74 9A      LD A,(0x9A74)
04E8: 85            ADD A,L
04E9: 6F            LD L,A
04EA: 7E            LD A,(HL)
04EB: A7            AND A
04EC: 20 1B         JR NZ,0x0509
04EE: 34            INC (HL)
04EF: 21 76 9A      LD HL,0x9A76
04F2: 46            LD B,(HL)
04F3: 48            LD C,B
04F4: 21 30 9A      LD HL,0x9A30
04F7: 3A 75 9A      LD A,(0x9A75)
04FA: 85            ADD A,L
04FB: 6F            LD L,A
04FC: AF            XOR A
04FD: DF            RST 0x18
04FE: 41            LD B,C
04FF: 21 00 9A      LD HL,0x9A00
0502: 3A 75 9A      LD A,(0x9A75)
0505: 85            ADD A,L
0506: 6F            LD L,A
0507: AF            XOR A
0508: DF            RST 0x18
0509: CD 81 05      CALL 0x0581
050C: 21 76 9A      LD HL,0x9A76
050F: 35            DEC (HL)
0510: 28 0A         JR Z,0x051C
0512: 21 75 9A      LD HL,0x9A75
0515: 34            INC (HL)
0516: 21 77 9A      LD HL,0x9A77
0519: 34            INC (HL)
051A: 18 ED         JR 0x0509
051C: 3A 78 9A      LD A,(0x9A78)
051F: A7            AND A
0520: C8            RET Z
0521: AF            XOR A
0522: 32 78 9A      LD (0x9A78),A
0525: 21 C0 9A      LD HL,0x9AC0
0528: 3A 74 9A      LD A,(0x9A74)
052B: 85            ADD A,L
052C: 6F            LD L,A
052D: 36 00         LD (HL),0x00
052F: 21 A0 9A      LD HL,0x9AA0
0532: 3A 74 9A      LD A,(0x9A74)
0535: 85            ADD A,L
0536: 6F            LD L,A
0537: 3A 74 9A      LD A,(0x9A74)
053A: FE 08         CP 0x08
053C: 28 0F         JR Z,0x054D
053E: FE 0C         CP 0x0C
0540: 28 0D         JR Z,0x054F
0542: FE 14         CP 0x14
0544: 28 15         JR Z,0x055B
0546: FE 07         CP 0x07
0548: 28 19         JR Z,0x0563
054A: 36 00         LD (HL),0x00
054C: C9            RET
054D: 35            DEC (HL)
054E: C9            RET
054F: 35            DEC (HL)
0550: 28 03         JR Z,0x0555
0552: CB 46         BIT 0,(HL)
0554: C8            RET Z
0555: 3E 01         LD A,0x01
0557: 32 B6 9A      LD (0x9AB6),A
055A: C9            RET
055B: 36 00         LD (HL),0x00
055D: 21 B3 9A      LD HL,0x9AB3
0560: 36 01         LD (HL),0x01
0562: C9            RET
0563: 36 00         LD (HL),0x00
0565: 21 A0 9A      LD HL,0x9AA0
0568: AF            XOR A
0569: 06 08         LD B,0x08
056B: DF            RST 0x18
056C: 23            INC HL
056D: 77            LD (HL),A
056E: 23            INC HL
056F: 23            INC HL
0570: 06 0C         LD B,0x0C
0572: DF            RST 0x18
0573: 21 C0 9A      LD HL,0x9AC0
0576: 06 08         LD B,0x08
0578: DF            RST 0x18
0579: 23            INC HL
057A: 77            LD (HL),A
057B: 23            INC HL
057C: 23            INC HL
057D: 06 0C         LD B,0x0C
057F: DF            RST 0x18
0580: C9            RET
0581: 21 00 9A      LD HL,0x9A00
0584: 3A 75 9A      LD A,(0x9A75)
0587: 85            ADD A,L
0588: 6F            LD L,A
0589: 34            INC (HL)
058A: 3A 75 9A      LD A,(0x9A75)
058D: 21 79 07      LD HL,0x0779
0590: CF            RST 0x08
0591: 5E            LD E,(HL)
0592: 23            INC HL
0593: 56            LD D,(HL)
0594: EB            EX DE,HL
0595: 11 88 9A      LD DE,0x9A88
0598: 01 03 00      LD BC,0x0003
059B: ED B0         LDIR
059D: EB            EX DE,HL
059E: 21 30 9A      LD HL,0x9A30
05A1: 3A 75 9A      LD A,(0x9A75)
05A4: 85            ADD A,L
05A5: 6F            LD L,A
05A6: 7E            LD A,(HL)
05A7: EB            EX DE,HL
05A8: D7            RST 0x10
05A9: 22 7A 9A      LD (0x9A7A),HL
05AC: 7E            LD A,(HL)
05AD: 3C            INC A
05AE: CA BC 06      JP Z,0x06BC
05B1: 11 DA 06      LD DE,0x06DA
05B4: 2A 7A 9A      LD HL,(0x9A7A)
05B7: 7E            LD A,(HL)
05B8: E6 0F         AND 0x0F
05BA: EB            EX DE,HL
05BB: CF            RST 0x08
05BC: 4E            LD C,(HL)
05BD: 23            INC HL
05BE: 46            LD B,(HL)
05BF: EB            EX DE,HL
05C0: 7E            LD A,(HL)
05C1: 0F            RRCA
05C2: 0F            RRCA
05C3: 0F            RRCA
05C4: 0F            RRCA
05C5: E6 0F         AND 0x0F
05C7: 28 07         JR Z,0x05D0
05C9: CB 38         SRL B
05CB: CB 19         RR C
05CD: 3D            DEC A
05CE: 20 F9         JR NZ,0x05C9
05D0: 3A 77 9A      LD A,(0x9A77)
05D3: A7            AND A
05D4: 28 0D         JR Z,0x05E3
05D6: 3D            DEC A
05D7: 28 05         JR Z,0x05DE
05D9: 21 6B 9A      LD HL,0x9A6B
05DC: 18 08         JR 0x05E6
05DE: 21 66 9A      LD HL,0x9A66
05E1: 18 03         JR 0x05E6
05E3: 21 61 9A      LD HL,0x9A61
05E6: 71            LD (HL),C
05E7: 7E            LD A,(HL)
05E8: 0F            RRCA
05E9: 0F            RRCA
05EA: 0F            RRCA
05EB: 0F            RRCA
05EC: 23            INC HL
05ED: 77            LD (HL),A
05EE: 23            INC HL
05EF: 70            LD (HL),B
05F0: 7E            LD A,(HL)
05F1: 0F            RRCA
05F2: 0F            RRCA
05F3: 0F            RRCA
05F4: 0F            RRCA
05F5: 23            INC HL
05F6: 77            LD (HL),A
05F7: 3A 77 9A      LD A,(0x9A77)
05FA: A7            AND A
05FB: 28 0D         JR Z,0x060A
05FD: 3D            DEC A
05FE: 28 05         JR Z,0x0605
0600: 11 6F 9A      LD DE,0x9A6F
0603: 18 08         JR 0x060D
0605: 11 6A 9A      LD DE,0x9A6A
0608: 18 03         JR 0x060D
060A: 11 65 9A      LD DE,0x9A65
060D: 2A 7A 9A      LD HL,(0x9A7A)
0610: 7E            LD A,(HL)
0611: D6 0C         SUB 0x0C
0613: 28 44         JR Z,0x0659
0615: 3A 88 9A      LD A,(0x9A88)
0618: A7            AND A
0619: 28 23         JR Z,0x063E
061B: 3D            DEC A
061C: 28 10         JR Z,0x062E
061E: 21 00 9A      LD HL,0x9A00
0621: 3A 75 9A      LD A,(0x9A75)
0624: 85            ADD A,L
0625: 6F            LD L,A
0626: 7E            LD A,(HL)
0627: FE 06         CP 0x06
0629: 30 13         JR NC,0x063E
062B: 2F            CPL
062C: 18 30         JR 0x065E
062E: 21 00 9A      LD HL,0x9A00
0631: 3A 75 9A      LD A,(0x9A75)
0634: 85            ADD A,L
0635: 6F            LD L,A
0636: 7E            LD A,(HL)
0637: FE 06         CP 0x06
0639: 30 03         JR NC,0x063E
063B: 87            ADD A,A
063C: 18 20         JR 0x065E
063E: 3A 89 9A      LD A,(0x9A89)
0641: A7            AND A
0642: 28 18         JR Z,0x065C
0644: 47            LD B,A
0645: 21 00 9A      LD HL,0x9A00
0648: 3A 75 9A      LD A,(0x9A75)
064B: 85            ADD A,L
064C: 6F            LD L,A
064D: 7E            LD A,(HL)
064E: 90            SUB B
064F: 38 0B         JR C,0x065C
0651: D6 0A         SUB 0x0A
0653: 30 04         JR NC,0x0659
0655: ED 44         NEG
0657: 18 05         JR 0x065E
0659: AF            XOR A
065A: 18 02         JR 0x065E
065C: 3E 0A         LD A,0x0A
065E: 12            LD (DE),A
065F: 21 70 9A      LD HL,0x9A70
0662: 3A 77 9A      LD A,(0x9A77)
0665: 85            ADD A,L
0666: 6F            LD L,A
0667: 3A 8A 9A      LD A,(0x9A8A)
066A: 77            LD (HL),A
066B: 21 D7 07      LD HL,0x07D7
066E: 3A 74 9A      LD A,(0x9A74)
0671: D7            RST 0x10
0672: 7E            LD A,(HL)
0673: 2A 7A 9A      LD HL,(0x9A7A)
0676: 23            INC HL
0677: 5E            LD E,(HL)
0678: 16 00         LD D,0x00
067A: 21 00 00      LD HL,0x0000
067D: 06 08         LD B,0x08
067F: CB 3F         SRL A
0681: 30 01         JR NC,0x0684
0683: 19            ADD HL,DE
0684: CB 23         SLA E
0686: CB 12         RL D
0688: 10 F5         DJNZ 0x067F
068A: 45            LD B,L
068B: 21 00 9A      LD HL,0x9A00
068E: 3A 75 9A      LD A,(0x9A75)
0691: 85            ADD A,L
0692: 6F            LD L,A
0693: 78            LD A,B
0694: BE            CP (HL)
0695: C0            RET NZ
0696: 21 30 9A      LD HL,0x9A30
0699: 3A 75 9A      LD A,(0x9A75)
069C: 85            ADD A,L
069D: 6F            LD L,A
069E: 34            INC (HL)
069F: 34            INC (HL)
06A0: 21 00 9A      LD HL,0x9A00
06A3: 3A 75 9A      LD A,(0x9A75)
06A6: 85            ADD A,L
06A7: 6F            LD L,A
06A8: 36 00         LD (HL),0x00
06AA: C9            RET
06AB: 21 00 9A      LD HL,0x9A00
06AE: 36 00         LD (HL),0x00
06B0: 11 01 9A      LD DE,0x9A01
06B3: 01 FF 00      LD BC,0x00FF
06B6: ED B0         LDIR
06B8: 31 00 9B      LD SP,0x9B00
06BB: C9            RET
06BC: 3A 77 9A      LD A,(0x9A77)
06BF: A7            AND A
06C0: 28 0D         JR Z,0x06CF
06C2: 3D            DEC A
06C3: 28 05         JR Z,0x06CA
06C5: 21 6F 9A      LD HL,0x9A6F
06C8: 18 08         JR 0x06D2
06CA: 21 6A 9A      LD HL,0x9A6A
06CD: 18 03         JR 0x06D2
06CF: 21 65 9A      LD HL,0x9A65
06D2: 36 00         LD (HL),0x00
06D4: 3E 01         LD A,0x01
06D6: 32 78 9A      LD (0x9A78),A
06D9: C9            RET
06DA: 50            LD D,B
06DB: 81            ADD A,C
06DC: 00            NOP
06DD: 89            ADC A,C
06DE: 26 91         LD H,0x91
06E0: C8            RET Z
06E1: 99            SBC A,C
06E2: EC A2 9D      CALL PE,0x9DA2
06E5: AC            XOR H
06E6: E0            RET PO
06E7: B6            OR (HL)
06E8: C0            RET NZ
06E9: C1            POP BC
06EA: 45            LD B,L
06EB: CD 7A D9      CALL 0xD97A
06EE: 69            LD L,C
06EF: E6 1C         AND 0x1C
06F1: F4 00 00      CALL P,0x0000
06F4: 30 01         JR NC,0x06F7
06F6: 68            LD L,B
06F7: 01 36 01      LD BC,0x0136
06FA: A8            XOR B
06FB: 01 68 01      LD BC,0x0168
06FE: 00            NOP
06FF: 02            LD (BC),A
0700: AC            XOR H
0701: 01 08 02      LD BC,0x0208
0704: 00            NOP
0705: FE 58         CP 0x58
0707: FE 08         CP 0x08
0709: FE 98         CP 0x98
070B: FE 58         CP 0x58
070D: FE D0         CP 0xD0
070F: FE 98         CP 0x98
0711: FE D6         CP 0xD6
0713: FE 00         CP 0x00
0715: 5B            LD E,E
0716: 00            NOP
0717: 6C            LD L,H
0718: 00            NOP
0719: 5B            LD E,E
071A: 00            NOP
071B: 7E            LD A,(HL)
071C: 00            NOP
071D: 6C            LD L,H
071E: 00            NOP
071F: 97            SUB A
0720: 00            NOP
0721: 81            ADD A,C
0722: 00            NOP
0723: 99            SBC A,C
0724: 00            NOP
0725: D9            EXX
0726: 00            NOP
0727: B6            OR (HL)
0728: 00            NOP
0729: D9            EXX
072A: 00            NOP
072B: 97            SUB A
072C: 00            NOP
072D: B6            OR (HL)
072E: 00            NOP
072F: 7E            LD A,(HL)
0730: 00            NOP
0731: 99            SBC A,C
0732: 00            NOP
0733: 81            ADD A,C
0734: 00            NOP
0735: 01 00 01      LD BC,0x0100
0738: 01 01 02      LD BC,0x0201
073B: 01 01 03      LD BC,0x0301
073E: 01 01 04      LD BC,0x0401
0741: 01 01 05      LD BC,0x0501
0744: 01 00 06      LD BC,0x0600
0747: 01 00 20      LD BC,0x2000
074A: 03            INC BC
074B: 00            NOP
074C: 0A            LD A,(BC)
074D: 03            INC BC
074E: 00            NOP
074F: 0D            DEC C
0750: 03            INC BC
0751: 00            NOP
0752: 07            RLCA
0753: 03            INC BC
0754: 00            NOP
0755: 13            INC DE
0756: 03            INC BC
0757: 00            NOP
0758: 16 03         LD D,0x03
075A: 00            NOP
075B: 19            ADD HL,DE
075C: 03            INC BC
075D: 00            NOP
075E: 1C            INC E
075F: 03            INC BC
0760: 00            NOP
0761: 1F            RRA
0762: 01 02 2C      LD BC,0x2C02
0765: 03            INC BC
0766: 00            NOP
0767: 10 03         DJNZ 0x076C
0769: 00            NOP
076A: 23            INC HL
076B: 01 00 24      LD BC,0x2400
076E: 01 00 25      LD BC,0x2500
0771: 03            INC BC
0772: 00            NOP
0773: 28 01         JR Z,0x0776
0775: 00            NOP
0776: 29            ADD HL,HL
0777: 03            INC BC
0778: 00            NOP
0779: EE 07         XOR 0x07
077B: 45            LD B,L
077C: 08            EX AF,AF'
077D: 23            INC HL
077E: 08            EX AF,AF'
077F: EF            RST 0x28
0780: 07            RLCA
0781: 8F            ADC A,A
0782: 08            EX AF,AF'
0783: A9            XOR C
0784: 08            EX AF,AF'
0785: BD            CP L
0786: 08            EX AF,AF'
0787: 03            INC BC
0788: 0A            LD A,(BC)
0789: 13            INC DE
078A: 0A            LD A,(BC)
078B: 23            INC HL
078C: 0A            LD A,(BC)
078D: CD 09 DF      CALL 0xDF09
0790: 09            ADD HL,BC
0791: F1            POP AF
0792: 09            ADD HL,BC
0793: 33            INC SP
0794: 0A            LD A,(BC)
0795: 77            LD (HL),A
0796: 0A            LD A,(BC)
0797: BB            CP E
0798: 0A            LD A,(BC)
0799: E7            RST 0x20
079A: 0A            LD A,(BC)
079B: 2B            DEC HL
079C: 0B            DEC BC
079D: 6F            LD L,A
079E: 0B            DEC BC
079F: D1            POP DE
07A0: 08            EX AF,AF'
07A1: 1D            DEC E
07A2: 09            ADD HL,BC
07A3: 67            LD H,A
07A4: 09            ADD HL,BC
07A5: 8D            ADC A,L
07A6: 0C            INC C
07A7: 1B            DEC DE
07A8: 0D            DEC C
07A9: 69            LD L,C
07AA: 0D            DEC C
07AB: 97            SUB A
07AC: 09            ADD HL,BC
07AD: A9            XOR C
07AE: 09            ADD HL,BC
07AF: BB            CP E
07B0: 09            ADD HL,BC
07B1: D1            POP DE
07B2: 08            EX AF,AF'
07B3: D1            POP DE
07B4: 08            EX AF,AF'
07B5: D1            POP DE
07B6: 08            EX AF,AF'
07B7: 39            ADD HL,SP
07B8: 0C            INC C
07B9: 9B            SBC A,E
07BA: 0B            DEC BC
07BB: D1            POP DE
07BC: 0B            DEC BC
07BD: 07            RLCA
07BE: 0C            INC C
07BF: 25            DEC H
07C0: 0C            INC C
07C1: 39            ADD HL,SP
07C2: 0C            INC C
07C3: 9D            SBC A,L
07C4: 0D            DEC C
07C5: 11 0E 8D      LD DE,0x8D0E
07C8: 0E 8F         LD C,0x8F
07CA: 0D            DEC C
07CB: 11 0D 5F      LD DE,0x5F0D
07CE: 0D            DEC C
07CF: 85            ADD A,L
07D0: 0D            DEC C
07D1: CF            RST 0x08
07D2: 0E 0B         LD C,0x0B
07D4: 0F            RRCA
07D5: 47            LD B,A
07D6: 0F            RRCA
07D7: 04            INC B
07D8: 02            LD (BC),A
07D9: 02            LD (BC),A
07DA: 02            LD (BC),A
07DB: 02            LD (BC),A
07DC: 04            INC B
07DD: 04            INC B
07DE: 0A            LD A,(BC)
07DF: 07            RLCA
07E0: 0C            INC C
07E1: 0B            DEC BC
07E2: 04            INC B
07E3: 0A            LD A,(BC)
07E4: 0D            DEC C
07E5: 04            INC B
07E6: 01 04 0C      LD BC,0x0C04
07E9: 02            LD (BC),A
07EA: 06 05         LD B,0x05
07EC: 02            LD (BC),A
07ED: 0A            LD A,(BC)
07EE: FF            RST 0x38
07EF: 00            NOP
07F0: 00            NOP
07F1: 06 71         LD B,0x71
07F3: 01 72 01      LD BC,0x0172
07F6: 73            LD (HL),E
07F7: 01 75 01      LD BC,0x0175
07FA: 74            LD (HL),H
07FB: 01 73 01      LD BC,0x0173
07FE: 72            LD (HL),D
07FF: 01 71 01      LD BC,0x0171
0802: 70            LD (HL),B
0803: 01 8B 01      LD BC,0x018B
0806: 8A            ADC A,D
0807: 01 0C 04      LD BC,0x040C
080A: 86            ADD A,(HL)
080B: 01 87 01      LD BC,0x0187
080E: 88            ADC A,B
080F: 01 89 01      LD BC,0x0189
0812: 8A            ADC A,D
0813: 01 89 01      LD BC,0x0189
0816: 88            ADC A,B
0817: 01 87 01      LD BC,0x0187
081A: 86            ADD A,(HL)
081B: 01 85 01      LD BC,0x0185
081E: 84            ADD A,H
081F: 01 83 01      LD BC,0x0183
0822: FF            RST 0x38
0823: 00            NOP
0824: 00            NOP
0825: 04            INC B
0826: 88            ADC A,B
0827: 01 8A 01      LD BC,0x018A
082A: 70            LD (HL),B
082B: 01 71 01      LD BC,0x0171
082E: 73            LD (HL),E
082F: 01 75 01      LD BC,0x0175
0832: 77            LD (HL),A
0833: 01 78 01      LD BC,0x0178
0836: 0C            INC C
0837: 06 74         LD B,0x74
0839: 01 73 01      LD BC,0x0173
083C: 72            LD (HL),D
083D: 01 71 01      LD BC,0x0171
0840: 70            LD (HL),B
0841: 01 8B 01      LD BC,0x018B
0844: FF            RST 0x38
0845: 00            NOP
0846: 00            NOP
0847: 07            RLCA
0848: 89            ADC A,C
0849: 01 8A 01      LD BC,0x018A
084C: 8B            ADC A,E
084D: 01 0C 01      LD BC,0x010C
0850: 70            LD (HL),B
0851: 01 71 01      LD BC,0x0171
0854: 72            LD (HL),D
0855: 01 0C 01      LD BC,0x010C
0858: 73            LD (HL),E
0859: 01 74 01      LD BC,0x0174
085C: 75            LD (HL),L
085D: 01 0C 03      LD BC,0x030C
0860: 8B            ADC A,E
0861: 01 70 01      LD BC,0x0170
0864: 71            LD (HL),C
0865: 01 0C 01      LD BC,0x010C
0868: 72            LD (HL),D
0869: 01 73 01      LD BC,0x0173
086C: 74            LD (HL),H
086D: 01 0C 01      LD BC,0x010C
0870: 75            LD (HL),L
0871: 01 76 01      LD BC,0x0176
0874: 77            LD (HL),A
0875: 01 0C 03      LD BC,0x030C
0878: 71            LD (HL),C
0879: 01 72 01      LD BC,0x0172
087C: 73            LD (HL),E
087D: 01 0C 01      LD BC,0x010C
0880: 74            LD (HL),H
0881: 01 75 01      LD BC,0x0175
0884: 76            HALT
0885: 01 0C 01      LD BC,0x010C
0888: 77            LD (HL),A
0889: 01 78 01      LD BC,0x0178
088C: 79            LD A,C
088D: 01 FF 00      LD BC,0x00FF
0890: 00            NOP
0891: 05            DEC B
0892: 71            LD (HL),C
0893: 01 72 01      LD BC,0x0172
0896: 73            LD (HL),E
0897: 01 0C 01      LD BC,0x010C
089A: 74            LD (HL),H
089B: 01 75 01      LD BC,0x0175
089E: 76            HALT
089F: 01 0C 01      LD BC,0x010C
08A2: 77            LD (HL),A
08A3: 01 78 01      LD BC,0x0178
08A6: 79            LD A,C
08A7: 01 FF 00      LD BC,0x00FF
08AA: 00            NOP
08AB: 04            INC B
08AC: 61            LD H,C
08AD: 01 7A 01      LD BC,0x017A
08B0: 60            LD H,B
08B1: 01 78 01      LD BC,0x0178
08B4: 7A            LD A,D
08B5: 01 76 01      LD BC,0x0176
08B8: 78            LD A,B
08B9: 01 75 01      LD BC,0x0175
08BC: FF            RST 0x38
08BD: 00            NOP
08BE: 00            NOP
08BF: 00            NOP
08C0: 76            HALT
08C1: 01 79 01      LD BC,0x0179
08C4: 60            LD H,B
08C5: 01 63 01      LD BC,0x0163
08C8: 66            LD H,(HL)
08C9: 01 63 01      LD BC,0x0163
08CC: 60            LD H,B
08CD: 01 79 01      LD BC,0x0179
08D0: FF            RST 0x38
08D1: 00            NOP
08D2: 00            NOP
08D3: 07            RLCA
08D4: 81            ADD A,C
08D5: 08            EX AF,AF'
08D6: 81            ADD A,C
08D7: 01 86 03      LD BC,0x0386
08DA: 88            ADC A,B
08DB: 09            ADD HL,BC
08DC: 8B            ADC A,E
08DD: 03            INC BC
08DE: 8A            ADC A,D
08DF: 09            ADD HL,BC
08E0: 86            ADD A,(HL)
08E1: 03            INC BC
08E2: 88            ADC A,B
08E3: 09            ADD HL,BC
08E4: 73            LD (HL),E
08E5: 03            INC BC
08E6: 71            LD (HL),C
08E7: 09            ADD HL,BC
08E8: 86            ADD A,(HL)
08E9: 03            INC BC
08EA: 88            ADC A,B
08EB: 09            ADD HL,BC
08EC: 8B            ADC A,E
08ED: 03            INC BC
08EE: 8A            ADC A,D
08EF: 09            ADD HL,BC
08F0: 86            ADD A,(HL)
08F1: 03            INC BC
08F2: 71            LD (HL),C
08F3: 09            ADD HL,BC
08F4: 75            LD (HL),L
08F5: 03            INC BC
08F6: 76            HALT
08F7: 09            ADD HL,BC
08F8: 74            LD (HL),H
08F9: 03            INC BC
08FA: 72            LD (HL),D
08FB: 09            ADD HL,BC
08FC: 71            LD (HL),C
08FD: 03            INC BC
08FE: 8B            ADC A,E
08FF: 09            ADD HL,BC
0900: 89            ADC A,C
0901: 03            INC BC
0902: 88            ADC A,B
0903: 09            ADD HL,BC
0904: 84            ADD A,H
0905: 03            INC BC
0906: 74            LD (HL),H
0907: 09            ADD HL,BC
0908: 76            HALT
0909: 03            INC BC
090A: 74            LD (HL),H
090B: 09            ADD HL,BC
090C: 71            LD (HL),C
090D: 03            INC BC
090E: 73            LD (HL),E
090F: 04            INC B
0910: 8B            ADC A,E
0911: 04            INC B
0912: 88            ADC A,B
0913: 04            INC B
0914: 71            LD (HL),C
0915: 04            INC B
0916: 8A            ADC A,D
0917: 04            INC B
0918: 88            ADC A,B
0919: 04            INC B
091A: 0C            INC C
091B: 10 FF         DJNZ 0x091C
091D: 00            NOP
091E: 00            NOP
091F: 06 8A         LD B,0x8A
0921: 09            ADD HL,BC
0922: 81            ADD A,C
0923: 03            INC BC
0924: 88            ADC A,B
0925: 09            ADD HL,BC
0926: 83            ADD A,E
0927: 03            INC BC
0928: 86            ADD A,(HL)
0929: 09            ADD HL,BC
092A: 81            ADD A,C
092B: 03            INC BC
092C: 83            ADD A,E
092D: 09            ADD HL,BC
092E: 85            ADD A,L
092F: 03            INC BC
0930: 8A            ADC A,D
0931: 09            ADD HL,BC
0932: 81            ADD A,C
0933: 03            INC BC
0934: 88            ADC A,B
0935: 09            ADD HL,BC
0936: 83            ADD A,E
0937: 03            INC BC
0938: 86            ADD A,(HL)
0939: 09            ADD HL,BC
093A: 81            ADD A,C
093B: 03            INC BC
093C: 88            ADC A,B
093D: 09            ADD HL,BC
093E: 71            LD (HL),C
093F: 03            INC BC
0940: 72            LD (HL),D
0941: 09            ADD HL,BC
0942: 71            LD (HL),C
0943: 03            INC BC
0944: 8B            ADC A,E
0945: 09            ADD HL,BC
0946: 89            ADC A,C
0947: 03            INC BC
0948: 88            ADC A,B
0949: 09            ADD HL,BC
094A: 86            ADD A,(HL)
094B: 03            INC BC
094C: 84            ADD A,H
094D: 09            ADD HL,BC
094E: 88            ADC A,B
094F: 03            INC BC
0950: 89            ADC A,C
0951: 09            ADD HL,BC
0952: 8B            ADC A,E
0953: 03            INC BC
0954: 89            ADC A,C
0955: 09            ADD HL,BC
0956: 86            ADD A,(HL)
0957: 03            INC BC
0958: 8B            ADC A,E
0959: 04            INC B
095A: 88            ADC A,B
095B: 04            INC B
095C: 83            ADD A,E
095D: 04            INC B
095E: 88            ADC A,B
095F: 04            INC B
0960: 85            ADD A,L
0961: 04            INC B
0962: 83            ADD A,E
0963: 04            INC B
0964: 0C            INC C
0965: 10 FF         DJNZ 0x0966
0967: 00            NOP
0968: 00            NOP
0969: 07            RLCA
096A: 81            ADD A,C
096B: 0C            INC C
096C: 83            ADD A,E
096D: 09            ADD HL,BC
096E: 86            ADD A,(HL)
096F: 03            INC BC
0970: 85            ADD A,L
0971: 0C            INC C
0972: 81            ADD A,C
0973: 0C            INC C
0974: 86            ADD A,(HL)
0975: 0C            INC C
0976: 88            ADC A,B
0977: 09            ADD HL,BC
0978: 8B            ADC A,E
0979: 03            INC BC
097A: 8A            ADC A,D
097B: 0C            INC C
097C: 88            ADC A,B
097D: 0C            INC C
097E: 89            ADC A,C
097F: 0C            INC C
0980: 88            ADC A,B
0981: 09            ADD HL,BC
0982: 86            ADD A,(HL)
0983: 03            INC BC
0984: 84            ADD A,H
0985: 0C            INC C
0986: 89            ADC A,C
0987: 0C            INC C
0988: 74            LD (HL),H
0989: 0C            INC C
098A: 71            LD (HL),C
098B: 09            ADD HL,BC
098C: 89            ADC A,C
098D: 03            INC BC
098E: 88            ADC A,B
098F: 0C            INC C
0990: 71            LD (HL),C
0991: 09            ADD HL,BC
0992: 8A            ADC A,D
0993: 03            INC BC
0994: 0C            INC C
0995: 10 FF         DJNZ 0x0996
0997: 02            LD (BC),A
0998: 00            NOP
0999: 03            INC BC
099A: 78            LD A,B
099B: 02            LD (BC),A
099C: 0C            INC C
099D: 01 78 01      LD BC,0x0178
09A0: 79            LD A,C
09A1: 01 7B 01      LD BC,0x017B
09A4: 61            LD H,C
09A5: 03            INC BC
09A6: 0C            INC C
09A7: 03            INC BC
09A8: FF            RST 0x38
09A9: 02            LD (BC),A
09AA: 00            NOP
09AB: 03            INC BC
09AC: 73            LD (HL),E
09AD: 02            LD (BC),A
09AE: 0C            INC C
09AF: 01 73 01      LD BC,0x0173
09B2: 74            LD (HL),H
09B3: 01 76 01      LD BC,0x0176
09B6: 78            LD A,B
09B7: 03            INC BC
09B8: 0C            INC C
09B9: 02            LD (BC),A
09BA: FF            RST 0x38
09BB: 02            LD (BC),A
09BC: 00            NOP
09BD: 03            INC BC
09BE: 70            LD (HL),B
09BF: 02            LD (BC),A
09C0: 0C            INC C
09C1: 01 70 01      LD BC,0x0170
09C4: 71            LD (HL),C
09C5: 01 73 01      LD BC,0x0173
09C8: 75            LD (HL),L
09C9: 03            INC BC
09CA: 0C            INC C
09CB: 02            LD (BC),A
09CC: FF            RST 0x38
09CD: 01 00 04      LD BC,0x0400
09D0: 78            LD A,B
09D1: 01 7A 01      LD BC,0x017A
09D4: 63            LD H,E
09D5: 01 78 01      LD BC,0x0178
09D8: 7A            LD A,D
09D9: 01 63 01      LD BC,0x0163
09DC: 65            LD H,L
09DD: 03            INC BC
09DE: FF            RST 0x38
09DF: 01 00 05      LD BC,0x0500
09E2: 73            LD (HL),E
09E3: 01 78 01      LD BC,0x0178
09E6: 7A            LD A,D
09E7: 01 73 01      LD BC,0x0173
09EA: 78            LD A,B
09EB: 01 7A 01      LD BC,0x017A
09EE: 60            LD H,B
09EF: 03            INC BC
09F0: FF            RST 0x38
09F1: 01 00 07      LD BC,0x0700
09F4: 8A            ADC A,D
09F5: 01 73 01      LD BC,0x0173
09F8: 78            LD A,B
09F9: 01 8A 01      LD BC,0x018A
09FC: 73            LD (HL),E
09FD: 01 78 01      LD BC,0x0178
0A00: 7A            LD A,D
0A01: 03            INC BC
0A02: FF            RST 0x38
0A03: 01 06 04      LD BC,0x0406
0A06: 7A            LD A,D
0A07: 01 78 01      LD BC,0x0178
0A0A: 7A            LD A,D
0A0B: 01 61 01      LD BC,0x0161
0A0E: 65            LD H,L
0A0F: 01 68 03      LD BC,0x0368
0A12: FF            RST 0x38
0A13: 01 06 04      LD BC,0x0406
0A16: 78            LD A,B
0A17: 01 75 01      LD BC,0x0175
0A1A: 78            LD A,B
0A1B: 01 7A 01      LD BC,0x017A
0A1E: 61            LD H,C
0A1F: 01 65 03      LD BC,0x0365
0A22: FF            RST 0x38
0A23: 01 06 04      LD BC,0x0406
0A26: 75            LD (HL),L
0A27: 01 71 01      LD BC,0x0171
0A2A: 75            LD (HL),L
0A2B: 01 78 01      LD BC,0x0178
0A2E: 7A            LD A,D
0A2F: 01 60 03      LD BC,0x0360
0A32: FF            RST 0x38
0A33: 02            LD (BC),A
0A34: 04            INC B
0A35: 03            INC BC
0A36: 7A            LD A,D
0A37: 01 76 01      LD BC,0x0176
0A3A: 78            LD A,B
0A3B: 01 75 01      LD BC,0x0175
0A3E: 76            HALT
0A3F: 01 73 01      LD BC,0x0173
0A42: 75            LD (HL),L
0A43: 01 72 01      LD BC,0x0172
0A46: 73            LD (HL),E
0A47: 01 8A 01      LD BC,0x018A
0A4A: 8B            ADC A,E
0A4B: 01 88 01      LD BC,0x0188
0A4E: 86            ADD A,(HL)
0A4F: 01 85 01      LD BC,0x0185
0A52: 83            ADD A,E
0A53: 01 82 01      LD BC,0x0182
0A56: 83            ADD A,E
0A57: 01 86 01      LD BC,0x0186
0A5A: 85            ADD A,L
0A5B: 01 88 01      LD BC,0x0188
0A5E: 86            ADD A,(HL)
0A5F: 01 8A 01      LD BC,0x018A
0A62: 88            ADC A,B
0A63: 01 8B 01      LD BC,0x018B
0A66: 8A            ADC A,D
0A67: 01 73 01      LD BC,0x0173
0A6A: 72            LD (HL),D
0A6B: 01 73 01      LD BC,0x0173
0A6E: 75            LD (HL),L
0A6F: 01 8A 01      LD BC,0x018A
0A72: 70            LD (HL),B
0A73: 01 72 01      LD BC,0x0172
0A76: FF            RST 0x38
0A77: 02            LD (BC),A
0A78: 04            INC B
0A79: 03            INC BC
0A7A: 76            HALT
0A7B: 01 73 01      LD BC,0x0173
0A7E: 75            LD (HL),L
0A7F: 01 72 01      LD BC,0x0172
0A82: 73            LD (HL),E
0A83: 01 70 01      LD BC,0x0170
0A86: 72            LD (HL),D
0A87: 01 8A 01      LD BC,0x018A
0A8A: 8B            ADC A,E
0A8B: 01 86 01      LD BC,0x0186
0A8E: 88            ADC A,B
0A8F: 01 85 01      LD BC,0x0185
0A92: 83            ADD A,E
0A93: 01 82 01      LD BC,0x0182
0A96: 80            ADD A,B
0A97: 01 9A 01      LD BC,0x019A
0A9A: 9A            SBC A,D
0A9B: 01 83 01      LD BC,0x0183
0A9E: 82            ADD A,D
0A9F: 01 85 01      LD BC,0x0185
0AA2: 83            ADD A,E
0AA3: 01 86 01      LD BC,0x0186
0AA6: 85            ADD A,L
0AA7: 01 88 01      LD BC,0x0188
0AAA: 86            ADD A,(HL)
0AAB: 01 8A 01      LD BC,0x018A
0AAE: 88            ADC A,B
0AAF: 01 8B 01      LD BC,0x018B
0AB2: 8A            ADC A,D
0AB3: 01 88 01      LD BC,0x0188
0AB6: 86            ADD A,(HL)
0AB7: 01 85 01      LD BC,0x0185
0ABA: FF            RST 0x38
0ABB: 02            LD (BC),A
0ABC: 10 03         DJNZ 0x0AC1
0ABE: 93            SUB E
0ABF: 02            LD (BC),A
0AC0: 9A            SBC A,D
0AC1: 02            LD (BC),A
0AC2: 83            ADD A,E
0AC3: 03            INC BC
0AC4: 9A            SBC A,D
0AC5: 01 98 01      LD BC,0x0198
0AC8: 96            SUB (HL)
0AC9: 01 95 01      LD BC,0x0195
0ACC: 93            SUB E
0ACD: 02            LD (BC),A
0ACE: 95            SUB L
0ACF: 03            INC BC
0AD0: 96            SUB (HL)
0AD1: 02            LD (BC),A
0AD2: 98            SBC A,B
0AD3: 02            LD (BC),A
0AD4: 9A            SBC A,D
0AD5: 02            LD (BC),A
0AD6: 9B            SBC A,E
0AD7: 02            LD (BC),A
0AD8: 9A            SBC A,D
0AD9: 02            LD (BC),A
0ADA: 98            SBC A,B
0ADB: 01 96 01      LD BC,0x0196
0ADE: 95            SUB L
0ADF: 01 92 01      LD BC,0x0192
0AE2: 93            SUB E
0AE3: 01 95 01      LD BC,0x0195
0AE6: FF            RST 0x38
0AE7: 02            LD (BC),A
0AE8: 04            INC B
0AE9: 03            INC BC
0AEA: 7A            LD A,D
0AEB: 01 77 01      LD BC,0x0177
0AEE: 78            LD A,B
0AEF: 01 75 01      LD BC,0x0175
0AF2: 77            LD (HL),A
0AF3: 01 73 01      LD BC,0x0173
0AF6: 75            LD (HL),L
0AF7: 01 72 01      LD BC,0x0172
0AFA: 73            LD (HL),E
0AFB: 01 8A 01      LD BC,0x018A
0AFE: 80            ADD A,B
0AFF: 01 88 01      LD BC,0x0188
0B02: 87            ADD A,A
0B03: 01 85 01      LD BC,0x0185
0B06: 83            ADD A,E
0B07: 01 82 01      LD BC,0x0182
0B0A: 83            ADD A,E
0B0B: 01 87 01      LD BC,0x0187
0B0E: 85            ADD A,L
0B0F: 01 88 01      LD BC,0x0188
0B12: 87            ADD A,A
0B13: 01 8A 01      LD BC,0x018A
0B16: 88            ADC A,B
0B17: 01 80 01      LD BC,0x0180
0B1A: 8A            ADC A,D
0B1B: 01 73 01      LD BC,0x0173
0B1E: 72            LD (HL),D
0B1F: 01 73 01      LD BC,0x0173
0B22: 75            LD (HL),L
0B23: 01 8A 01      LD BC,0x018A
0B26: 70            LD (HL),B
0B27: 01 72 01      LD BC,0x0172
0B2A: FF            RST 0x38
0B2B: 02            LD (BC),A
0B2C: 04            INC B
0B2D: 03            INC BC
0B2E: 77            LD (HL),A
0B2F: 01 73 01      LD BC,0x0173
0B32: 75            LD (HL),L
0B33: 01 72 01      LD BC,0x0172
0B36: 73            LD (HL),E
0B37: 01 70 01      LD BC,0x0170
0B3A: 72            LD (HL),D
0B3B: 01 8A 01      LD BC,0x018A
0B3E: 80            ADD A,B
0B3F: 01 87 01      LD BC,0x0187
0B42: 88            ADC A,B
0B43: 01 85 01      LD BC,0x0185
0B46: 83            ADD A,E
0B47: 01 82 01      LD BC,0x0182
0B4A: 80            ADD A,B
0B4B: 01 9A 01      LD BC,0x019A
0B4E: 9A            SBC A,D
0B4F: 01 83 01      LD BC,0x0183
0B52: 82            ADD A,D
0B53: 01 85 01      LD BC,0x0185
0B56: 83            ADD A,E
0B57: 01 87 01      LD BC,0x0187
0B5A: 85            ADD A,L
0B5B: 01 88 01      LD BC,0x0188
0B5E: 87            ADD A,A
0B5F: 01 8A 01      LD BC,0x018A
0B62: 88            ADC A,B
0B63: 01 80 01      LD BC,0x0180
0B66: 8A            ADC A,D
0B67: 01 88 01      LD BC,0x0188
0B6A: 87            ADD A,A
0B6B: 01 85 01      LD BC,0x0185
0B6E: FF            RST 0x38
0B6F: 02            LD (BC),A
0B70: 10 03         DJNZ 0x0B75
0B72: 93            SUB E
0B73: 02            LD (BC),A
0B74: 9A            SBC A,D
0B75: 02            LD (BC),A
0B76: 83            ADD A,E
0B77: 03            INC BC
0B78: 9A            SBC A,D
0B79: 01 98 01      LD BC,0x0198
0B7C: 97            SUB A
0B7D: 01 95 01      LD BC,0x0195
0B80: 93            SUB E
0B81: 02            LD (BC),A
0B82: 95            SUB L
0B83: 03            INC BC
0B84: 97            SUB A
0B85: 02            LD (BC),A
0B86: 98            SBC A,B
0B87: 02            LD (BC),A
0B88: 9A            SBC A,D
0B89: 02            LD (BC),A
0B8A: 90            SUB B
0B8B: 02            LD (BC),A
0B8C: 9A            SBC A,D
0B8D: 02            LD (BC),A
0B8E: 98            SBC A,B
0B8F: 01 97 01      LD BC,0x0197
0B92: 95            SUB L
0B93: 01 92 01      LD BC,0x0192
0B96: 93            SUB E
0B97: 01 95 01      LD BC,0x0195
0B9A: FF            RST 0x38
0B9B: 02            LD (BC),A
0B9C: 04            INC B
0B9D: 03            INC BC
0B9E: 7A            LD A,D
0B9F: 01 76 01      LD BC,0x0176
0BA2: 78            LD A,B
0BA3: 01 75 01      LD BC,0x0175
0BA6: 76            HALT
0BA7: 01 73 01      LD BC,0x0173
0BAA: 75            LD (HL),L
0BAB: 01 72 01      LD BC,0x0172
0BAE: 73            LD (HL),E
0BAF: 01 8A 01      LD BC,0x018A
0BB2: 8A            ADC A,D
0BB3: 01 88 01      LD BC,0x0188
0BB6: 86            ADD A,(HL)
0BB7: 01 85 01      LD BC,0x0185
0BBA: 83            ADD A,E
0BBB: 01 82 01      LD BC,0x0182
0BBE: 83            ADD A,E
0BBF: 01 85 01      LD BC,0x0185
0BC2: 86            ADD A,(HL)
0BC3: 01 88 01      LD BC,0x0188
0BC6: 86            ADD A,(HL)
0BC7: 01 8A 01      LD BC,0x018A
0BCA: 70            LD (HL),B
0BCB: 01 72 01      LD BC,0x0172
0BCE: 73            LD (HL),E
0BCF: 04            INC B
0BD0: FF            RST 0x38
0BD1: 02            LD (BC),A
0BD2: 04            INC B
0BD3: 03            INC BC
0BD4: 76            HALT
0BD5: 01 73 01      LD BC,0x0173
0BD8: 75            LD (HL),L
0BD9: 01 72 01      LD BC,0x0172
0BDC: 73            LD (HL),E
0BDD: 01 70 01      LD BC,0x0170
0BE0: 72            LD (HL),D
0BE1: 01 8A 01      LD BC,0x018A
0BE4: 8A            ADC A,D
0BE5: 01 86 01      LD BC,0x0186
0BE8: 86            ADD A,(HL)
0BE9: 01 85 01      LD BC,0x0185
0BEC: 83            ADD A,E
0BED: 01 82 01      LD BC,0x0182
0BF0: 80            ADD A,B
0BF1: 01 9A 01      LD BC,0x019A
0BF4: 9A            SBC A,D
0BF5: 01 8B 01      LD BC,0x018B
0BF8: 80            ADD A,B
0BF9: 01 82 01      LD BC,0x0182
0BFC: 83            ADD A,E
0BFD: 01 85 01      LD BC,0x0185
0C00: 86            ADD A,(HL)
0C01: 01 88 01      LD BC,0x0188
0C04: 8A            ADC A,D
0C05: 04            INC B
0C06: FF            RST 0x38
0C07: 02            LD (BC),A
0C08: 10 03         DJNZ 0x0C0D
0C0A: 73            LD (HL),E
0C0B: 02            LD (BC),A
0C0C: 75            LD (HL),L
0C0D: 02            LD (BC),A
0C0E: 76            HALT
0C0F: 02            LD (BC),A
0C10: 75            LD (HL),L
0C11: 02            LD (BC),A
0C12: 73            LD (HL),E
0C13: 02            LD (BC),A
0C14: 72            LD (HL),D
0C15: 02            LD (BC),A
0C16: 70            LD (HL),B
0C17: 02            LD (BC),A
0C18: 72            LD (HL),D
0C19: 02            LD (BC),A
0C1A: 73            LD (HL),E
0C1B: 02            LD (BC),A
0C1C: 8B            ADC A,E
0C1D: 02            LD (BC),A
0C1E: 8A            ADC A,D
0C1F: 02            LD (BC),A
0C20: 86            ADD A,(HL)
0C21: 02            LD (BC),A
0C22: 83            ADD A,E
0C23: 04            INC B
0C24: FF            RST 0x38
0C25: 00            NOP
0C26: 00            NOP
0C27: 04            INC B
0C28: 71            LD (HL),C
0C29: 04            INC B
0C2A: 73            LD (HL),E
0C2B: 04            INC B
0C2C: 71            LD (HL),C
0C2D: 04            INC B
0C2E: 73            LD (HL),E
0C2F: 04            INC B
0C30: 76            HALT
0C31: 04            INC B
0C32: 78            LD A,B
0C33: 04            INC B
0C34: 76            HALT
0C35: 04            INC B
0C36: 78            LD A,B
0C37: 04            INC B
0C38: FF            RST 0x38
0C39: 00            NOP
0C3A: 00            NOP
0C3B: 06 56         LD B,0x56
0C3D: 01 55 01      LD BC,0x0155
0C40: 54            LD D,H
0C41: 01 53 01      LD BC,0x0153
0C44: 52            LD D,D
0C45: 01 51 01      LD BC,0x0151
0C48: 50            LD D,B
0C49: 01 6B 01      LD BC,0x016B
0C4C: 6A            LD L,D
0C4D: 01 69 01      LD BC,0x0169
0C50: 68            LD L,B
0C51: 01 67 01      LD BC,0x0167
0C54: 66            LD H,(HL)
0C55: 01 65 01      LD BC,0x0165
0C58: 64            LD H,H
0C59: 01 63 01      LD BC,0x0163
0C5C: 62            LD H,D
0C5D: 01 61 01      LD BC,0x0161
0C60: 60            LD H,B
0C61: 01 7B 01      LD BC,0x017B
0C64: 7A            LD A,D
0C65: 01 79 01      LD BC,0x0179
0C68: 78            LD A,B
0C69: 01 77 01      LD BC,0x0177
0C6C: 76            HALT
0C6D: 01 75 01      LD BC,0x0175
0C70: 74            LD (HL),H
0C71: 01 73 01      LD BC,0x0173
0C74: 72            LD (HL),D
0C75: 01 71 01      LD BC,0x0171
0C78: 70            LD (HL),B
0C79: 01 8B 01      LD BC,0x018B
0C7C: 8A            ADC A,D
0C7D: 01 89 01      LD BC,0x0189
0C80: 88            ADC A,B
0C81: 01 87 01      LD BC,0x0187
0C84: 86            ADD A,(HL)
0C85: 01 85 01      LD BC,0x0185
0C88: 84            ADD A,H
0C89: 01 83 01      LD BC,0x0183
0C8C: FF            RST 0x38
0C8D: 02            LD (BC),A
0C8E: 04            INC B
0C8F: 05            DEC B
0C90: 60            LD H,B
0C91: 01 78 01      LD BC,0x0178
0C94: 75            LD (HL),L
0C95: 01 71 01      LD BC,0x0171
0C98: 60            LD H,B
0C99: 01 78 01      LD BC,0x0178
0C9C: 75            LD (HL),L
0C9D: 01 71 01      LD BC,0x0171
0CA0: 60            LD H,B
0CA1: 01 78 01      LD BC,0x0178
0CA4: 75            LD (HL),L
0CA5: 01 71 01      LD BC,0x0171
0CA8: 60            LD H,B
0CA9: 01 78 01      LD BC,0x0178
0CAC: 75            LD (HL),L
0CAD: 01 71 01      LD BC,0x0171
0CB0: 60            LD H,B
0CB1: 01 78 01      LD BC,0x0178
0CB4: 75            LD (HL),L
0CB5: 01 71 01      LD BC,0x0171
0CB8: 60            LD H,B
0CB9: 01 78 01      LD BC,0x0178
0CBC: 75            LD (HL),L
0CBD: 01 71 01      LD BC,0x0171
0CC0: 60            LD H,B
0CC1: 01 0C 01      LD BC,0x010C
0CC4: 78            LD A,B
0CC5: 01 7A 01      LD BC,0x017A
0CC8: 75            LD (HL),L
0CC9: 01 78 01      LD BC,0x0178
0CCC: 73            LD (HL),E
0CCD: 01 75 01      LD BC,0x0175
0CD0: 61            LD H,C
0CD1: 01 7A 01      LD BC,0x017A
0CD4: 76            HALT
0CD5: 01 73 01      LD BC,0x0173
0CD8: 61            LD H,C
0CD9: 01 7A 01      LD BC,0x017A
0CDC: 76            HALT
0CDD: 01 73 01      LD BC,0x0173
0CE0: 61            LD H,C
0CE1: 01 7A 01      LD BC,0x017A
0CE4: 76            HALT
0CE5: 01 73 01      LD BC,0x0173
0CE8: 61            LD H,C
0CE9: 01 7A 01      LD BC,0x017A
0CEC: 76            HALT
0CED: 01 73 01      LD BC,0x0173
0CF0: 61            LD H,C
0CF1: 01 79 01      LD BC,0x0179
0CF4: 76            HALT
0CF5: 01 73 01      LD BC,0x0173
0CF8: 61            LD H,C
0CF9: 01 79 01      LD BC,0x0179
0CFC: 76            HALT
0CFD: 01 73 01      LD BC,0x0173
0D00: 61            LD H,C
0D01: 01 0C 01      LD BC,0x010C
0D04: 79            LD A,C
0D05: 01 61 01      LD BC,0x0161
0D08: 78            LD A,B
0D09: 01 79 01      LD BC,0x0179
0D0C: 75            LD (HL),L
0D0D: 01 78 01      LD BC,0x0178
0D10: FF            RST 0x38
0D11: 02            LD (BC),A
0D12: 02            LD (BC),A
0D13: 05            DEC B
0D14: 60            LD H,B
0D15: 01 60 01      LD BC,0x0160
0D18: 60            LD H,B
0D19: 01 FF 02      LD BC,0x02FF
0D1C: 04            INC B
0D1D: 05            DEC B
0D1E: 61            LD H,C
0D1F: 02            LD (BC),A
0D20: 78            LD A,B
0D21: 02            LD (BC),A
0D22: 78            LD A,B
0D23: 02            LD (BC),A
0D24: 61            LD H,C
0D25: 02            LD (BC),A
0D26: 78            LD A,B
0D27: 02            LD (BC),A
0D28: 78            LD A,B
0D29: 02            LD (BC),A
0D2A: 61            LD H,C
0D2B: 02            LD (BC),A
0D2C: 78            LD A,B
0D2D: 02            LD (BC),A
0D2E: 78            LD A,B
0D2F: 02            LD (BC),A
0D30: 61            LD H,C
0D31: 02            LD (BC),A
0D32: 78            LD A,B
0D33: 02            LD (BC),A
0D34: 78            LD A,B
0D35: 02            LD (BC),A
0D36: 61            LD H,C
0D37: 02            LD (BC),A
0D38: 78            LD A,B
0D39: 02            LD (BC),A
0D3A: 7A            LD A,D
0D3B: 02            LD (BC),A
0D3C: 75            LD (HL),L
0D3D: 02            LD (BC),A
0D3E: 63            LD H,E
0D3F: 02            LD (BC),A
0D40: 7A            LD A,D
0D41: 02            LD (BC),A
0D42: 7A            LD A,D
0D43: 02            LD (BC),A
0D44: 63            LD H,E
0D45: 02            LD (BC),A
0D46: 7A            LD A,D
0D47: 02            LD (BC),A
0D48: 7A            LD A,D
0D49: 02            LD (BC),A
0D4A: 63            LD H,E
0D4B: 02            LD (BC),A
0D4C: 7A            LD A,D
0D4D: 02            LD (BC),A
0D4E: 79            LD A,C
0D4F: 02            LD (BC),A
0D50: 63            LD H,E
0D51: 02            LD (BC),A
0D52: 79            LD A,C
0D53: 02            LD (BC),A
0D54: 79            LD A,C
0D55: 02            LD (BC),A
0D56: 63            LD H,E
0D57: 02            LD (BC),A
0D58: 79            LD A,C
0D59: 02            LD (BC),A
0D5A: 76            HALT
0D5B: 02            LD (BC),A
0D5C: 73            LD (HL),E
0D5D: 02            LD (BC),A
0D5E: FF            RST 0x38
0D5F: 02            LD (BC),A
0D60: 02            LD (BC),A
0D61: 05            DEC B
0D62: 78            LD A,B
0D63: 01 78 01      LD BC,0x0178
0D66: 78            LD A,B
0D67: 01 FF 02      LD BC,0x02FF
0D6A: 10 05         DJNZ 0x0D71
0D6C: 85            ADD A,L
0D6D: 06 85         LD B,0x85
0D6F: 06 85         LD B,0x85
0D71: 06 85         LD B,0x85
0D73: 06 85         LD B,0x85
0D75: 04            INC B
0D76: 85            ADD A,L
0D77: 04            INC B
0D78: 86            ADD A,(HL)
0D79: 06 86         LD B,0x86
0D7B: 06 86         LD B,0x86
0D7D: 06 86         LD B,0x86
0D7F: 06 86         LD B,0x86
0D81: 04            INC B
0D82: 86            ADD A,(HL)
0D83: 04            INC B
0D84: FF            RST 0x38
0D85: 02            LD (BC),A
0D86: 04            INC B
0D87: 05            DEC B
0D88: 81            ADD A,C
0D89: 01 81 01      LD BC,0x0181
0D8C: 81            ADD A,C
0D8D: 01 FF 02      LD BC,0x02FF
0D90: 00            NOP
0D91: 07            RLCA
0D92: 65            LD H,L
0D93: 01 0C 01      LD BC,0x010C
0D96: 61            LD H,C
0D97: 01 0C 01      LD BC,0x010C
0D9A: 63            LD H,E
0D9B: 01 FF 02      LD BC,0x02FF
0D9E: 00            NOP
0D9F: 05            DEC B
0DA0: 7A            LD A,D
0DA1: 05            DEC B
0DA2: 0C            INC C
0DA3: 01 7A 01      LD BC,0x017A
0DA6: 0C            INC C
0DA7: 01 7A 03      LD BC,0x037A
0DAA: 0C            INC C
0DAB: 01 78 07      LD BC,0x0778
0DAE: 0C            INC C
0DAF: 01 78 07      LD BC,0x0778
0DB2: 0C            INC C
0DB3: 01 78 03      LD BC,0x0378
0DB6: 0C            INC C
0DB7: 01 7B 05      LD BC,0x057B
0DBA: 0C            INC C
0DBB: 01 7B 01      LD BC,0x017B
0DBE: 0C            INC C
0DBF: 01 7B 03      LD BC,0x037B
0DC2: 0C            INC C
0DC3: 01 7A 07      LD BC,0x077A
0DC6: 0C            INC C
0DC7: 01 7A 07      LD BC,0x077A
0DCA: 0C            INC C
0DCB: 01 7A 03      LD BC,0x037A
0DCE: 0C            INC C
0DCF: 01 7B 01      LD BC,0x017B
0DD2: 0C            INC C
0DD3: 01 7B 01      LD BC,0x017B
0DD6: 0C            INC C
0DD7: 03            INC BC
0DD8: 7B            LD A,E
0DD9: 01 0C 01      LD BC,0x010C
0DDC: 7B            LD A,E
0DDD: 03            INC BC
0DDE: 0C            INC C
0DDF: 01 61 01      LD BC,0x0161
0DE2: 0C            INC C
0DE3: 01 61 01      LD BC,0x0161
0DE6: 0C            INC C
0DE7: 03            INC BC
0DE8: 61            LD H,C
0DE9: 01 0C 01      LD BC,0x010C
0DEC: 61            LD H,C
0DED: 03            INC BC
0DEE: 0C            INC C
0DEF: 01 61 03      LD BC,0x0361
0DF2: 0C            INC C
0DF3: 01 61 03      LD BC,0x0361
0DF6: 0C            INC C
0DF7: 01 63 01      LD BC,0x0163
0DFA: 0C            INC C
0DFB: 01 63 01      LD BC,0x0163
0DFE: 0C            INC C
0DFF: 03            INC BC
0E00: 63            LD H,E
0E01: 01 0C 01      LD BC,0x010C
0E04: 63            LD H,E
0E05: 03            INC BC
0E06: 0C            INC C
0E07: 01 63 03      LD BC,0x0363
0E0A: 0C            INC C
0E0B: 01 63 03      LD BC,0x0363
0E0E: 0C            INC C
0E0F: 01 FF 02      LD BC,0x02FF
0E12: 00            NOP
0E13: 03            INC BC
0E14: 86            ADD A,(HL)
0E15: 02            LD (BC),A
0E16: 8A            ADC A,D
0E17: 02            LD (BC),A
0E18: 71            LD (HL),C
0E19: 02            LD (BC),A
0E1A: 76            HALT
0E1B: 02            LD (BC),A
0E1C: 86            ADD A,(HL)
0E1D: 02            LD (BC),A
0E1E: 8A            ADC A,D
0E1F: 02            LD (BC),A
0E20: 71            LD (HL),C
0E21: 02            LD (BC),A
0E22: 76            HALT
0E23: 02            LD (BC),A
0E24: 86            ADD A,(HL)
0E25: 02            LD (BC),A
0E26: 8A            ADC A,D
0E27: 02            LD (BC),A
0E28: 71            LD (HL),C
0E29: 02            LD (BC),A
0E2A: 76            HALT
0E2B: 02            LD (BC),A
0E2C: 86            ADD A,(HL)
0E2D: 02            LD (BC),A
0E2E: 8A            ADC A,D
0E2F: 02            LD (BC),A
0E30: 71            LD (HL),C
0E31: 02            LD (BC),A
0E32: 76            HALT
0E33: 02            LD (BC),A
0E34: 86            ADD A,(HL)
0E35: 02            LD (BC),A
0E36: 8A            ADC A,D
0E37: 02            LD (BC),A
0E38: 71            LD (HL),C
0E39: 02            LD (BC),A
0E3A: 76            HALT
0E3B: 02            LD (BC),A
0E3C: 86            ADD A,(HL)
0E3D: 02            LD (BC),A
0E3E: 8A            ADC A,D
0E3F: 02            LD (BC),A
0E40: 71            LD (HL),C
0E41: 02            LD (BC),A
0E42: 76            HALT
0E43: 02            LD (BC),A
0E44: 86            ADD A,(HL)
0E45: 02            LD (BC),A
0E46: 8A            ADC A,D
0E47: 02            LD (BC),A
0E48: 71            LD (HL),C
0E49: 02            LD (BC),A
0E4A: 76            HALT
0E4B: 02            LD (BC),A
0E4C: 86            ADD A,(HL)
0E4D: 02            LD (BC),A
0E4E: 8A            ADC A,D
0E4F: 02            LD (BC),A
0E50: 71            LD (HL),C
0E51: 02            LD (BC),A
0E52: 76            HALT
0E53: 02            LD (BC),A
0E54: 77            LD (HL),A
0E55: 01 0C 01      LD BC,0x010C
0E58: 77            LD (HL),A
0E59: 01 0C 03      LD BC,0x030C
0E5C: 77            LD (HL),A
0E5D: 01 0C 01      LD BC,0x010C
0E60: 77            LD (HL),A
0E61: 03            INC BC
0E62: 0C            INC C
0E63: 01 69 01      LD BC,0x0169
0E66: 0C            INC C
0E67: 01 69 01      LD BC,0x0169
0E6A: 0C            INC C
0E6B: 03            INC BC
0E6C: 69            LD L,C
0E6D: 01 0C 01      LD BC,0x010C
0E70: 69            LD L,C
0E71: 03            INC BC
0E72: 0C            INC C
0E73: 01 69 03      LD BC,0x0369
0E76: 0C            INC C
0E77: 01 69 03      LD BC,0x0369
0E7A: 0C            INC C
0E7B: 01 8B 02      LD BC,0x028B
0E7E: 73            LD (HL),E
0E7F: 02            LD (BC),A
0E80: 76            HALT
0E81: 02            LD (BC),A
0E82: 7B            LD A,E
0E83: 02            LD (BC),A
0E84: 7B            LD A,E
0E85: 02            LD (BC),A
0E86: 76            HALT
0E87: 02            LD (BC),A
0E88: 73            LD (HL),E
0E89: 02            LD (BC),A
0E8A: 8B            ADC A,E
0E8B: 02            LD (BC),A
0E8C: FF            RST 0x38
0E8D: 00            NOP
0E8E: 00            NOP
0E8F: 02            LD (BC),A
0E90: 86            ADD A,(HL)
0E91: 08            EX AF,AF'
0E92: 81            ADD A,C
0E93: 08            EX AF,AF'
0E94: 86            ADD A,(HL)
0E95: 08            EX AF,AF'
0E96: 81            ADD A,C
0E97: 08            EX AF,AF'
0E98: 86            ADD A,(HL)
0E99: 08            EX AF,AF'
0E9A: 81            ADD A,C
0E9B: 08            EX AF,AF'
0E9C: 86            ADD A,(HL)
0E9D: 08            EX AF,AF'
0E9E: 81            ADD A,C
0E9F: 08            EX AF,AF'
0EA0: 82            ADD A,D
0EA1: 01 0C 01      LD BC,0x010C
0EA4: 82            ADD A,D
0EA5: 01 0C 03      LD BC,0x030C
0EA8: 82            ADD A,D
0EA9: 01 0C 01      LD BC,0x010C
0EAC: 82            ADD A,D
0EAD: 03            INC BC
0EAE: 0C            INC C
0EAF: 01 84 01      LD BC,0x0184
0EB2: 0C            INC C
0EB3: 01 84 01      LD BC,0x0184
0EB6: 0C            INC C
0EB7: 03            INC BC
0EB8: 84            ADD A,H
0EB9: 01 0C 01      LD BC,0x010C
0EBC: 84            ADD A,H
0EBD: 03            INC BC
0EBE: 0C            INC C
0EBF: 01 84 03      LD BC,0x0384
0EC2: 0C            INC C
0EC3: 01 84 03      LD BC,0x0384
0EC6: 0C            INC C
0EC7: 01 7B 08      LD BC,0x087B
0ECA: 76            HALT
0ECB: 04            INC B
0ECC: 8B            ADC A,E
0ECD: 04            INC B
0ECE: FF            RST 0x38
0ECF: 00            NOP
0ED0: 0C            INC C
0ED1: 05            DEC B
0ED2: 75            LD (HL),L
0ED3: 0C            INC C
0ED4: 71            LD (HL),C
0ED5: 0C            INC C
0ED6: 8A            ADC A,D
0ED7: 0C            INC C
0ED8: 86            ADD A,(HL)
0ED9: 0C            INC C
0EDA: 0C            INC C
0EDB: 09            ADD HL,BC
0EDC: 75            LD (HL),L
0EDD: 03            INC BC
0EDE: 71            LD (HL),C
0EDF: 09            ADD HL,BC
0EE0: 8A            ADC A,D
0EE1: 03            INC BC
0EE2: 86            ADD A,(HL)
0EE3: 04            INC B
0EE4: 8A            ADC A,D
0EE5: 04            INC B
0EE6: 71            LD (HL),C
0EE7: 04            INC B
0EE8: 89            ADC A,C
0EE9: 04            INC B
0EEA: 70            LD (HL),B
0EEB: 04            INC B
0EEC: 73            LD (HL),E
0EED: 04            INC B
0EEE: 8B            ADC A,E
0EEF: 0C            INC C
0EF0: 73            LD (HL),E
0EF1: 0C            INC C
0EF2: 76            HALT
0EF3: 0C            INC C
0EF4: 78            LD A,B
0EF5: 0C            INC C
0EF6: 0C            INC C
0EF7: 09            ADD HL,BC
0EF8: 79            LD A,C
0EF9: 03            INC BC
0EFA: 76            HALT
0EFB: 09            ADD HL,BC
0EFC: 72            LD (HL),D
0EFD: 03            INC BC
0EFE: 8B            ADC A,E
0EFF: 04            INC B
0F00: 89            ADC A,C
0F01: 04            INC B
0F02: 86            ADD A,(HL)
0F03: 04            INC B
0F04: 72            LD (HL),D
0F05: 04            INC B
0F06: 89            ADC A,C
0F07: 04            INC B
0F08: 76            HALT
0F09: 04            INC B
0F0A: FF            RST 0x38
0F0B: 00            NOP
0F0C: 0C            INC C
0F0D: 05            DEC B
0F0E: 71            LD (HL),C
0F0F: 0C            INC C
0F10: 8A            ADC A,D
0F11: 0C            INC C
0F12: 86            ADD A,(HL)
0F13: 0C            INC C
0F14: 85            ADD A,L
0F15: 0C            INC C
0F16: 0C            INC C
0F17: 09            ADD HL,BC
0F18: 81            ADD A,C
0F19: 03            INC BC
0F1A: 8A            ADC A,D
0F1B: 09            ADD HL,BC
0F1C: 86            ADD A,(HL)
0F1D: 03            INC BC
0F1E: 85            ADD A,L
0F1F: 04            INC B
0F20: 86            ADD A,(HL)
0F21: 04            INC B
0F22: 8A            ADC A,D
0F23: 04            INC B
0F24: 86            ADD A,(HL)
0F25: 04            INC B
0F26: 89            ADC A,C
0F27: 04            INC B
0F28: 8B            ADC A,E
0F29: 04            INC B
0F2A: 88            ADC A,B
0F2B: 0C            INC C
0F2C: 8B            ADC A,E
0F2D: 0C            INC C
0F2E: 73            LD (HL),E
0F2F: 0C            INC C
0F30: 76            HALT
0F31: 0C            INC C
0F32: 0C            INC C
0F33: 09            ADD HL,BC
0F34: 76            HALT
0F35: 03            INC BC
0F36: 72            LD (HL),D
0F37: 09            ADD HL,BC
0F38: 8B            ADC A,E
0F39: 03            INC BC
0F3A: 8A            ADC A,D
0F3B: 04            INC B
0F3C: 86            ADD A,(HL)
0F3D: 04            INC B
0F3E: 82            ADD A,D
0F3F: 04            INC B
0F40: 8B            ADC A,E
0F41: 04            INC B
0F42: 89            ADC A,C
0F43: 04            INC B
0F44: 82            ADD A,D
0F45: 04            INC B
0F46: FF            RST 0x38
0F47: 00            NOP
0F48: 00            NOP
0F49: 03            INC BC
0F4A: 75            LD (HL),L
0F4B: 18 75         JR 0x0FC2
0F4D: 18 75         JR 0x0FC4
0F4F: 18 71         JR 0x0FC2
0F51: 0C            INC C
0F52: 75            LD (HL),L
0F53: 0C            INC C
0F54: 73            LD (HL),E
0F55: 18 73         JR 0x0FCA
0F57: 18 72         JR 0x0FCB
0F59: 18 76         JR 0x0FD1
0F5B: 0C            INC C
0F5C: 78            LD A,B
0F5D: 0C            INC C
0F5E: FF            RST 0x38
0F5F: 84            ADD A,H
0F60: FF            RST 0x38
0F61: FF            RST 0x38
0F62: FF            RST 0x38
0F63: FF            RST 0x38
0F64: FF            RST 0x38
0F65: FF            RST 0x38
0F66: FF            RST 0x38
0F67: FF            RST 0x38
0F68: FF            RST 0x38
0F69: FF            RST 0x38
0F6A: FF            RST 0x38
0F6B: FF            RST 0x38
0F6C: FF            RST 0x38
0F6D: FF            RST 0x38
0F6E: FF            RST 0x38
0F6F: FF            RST 0x38
0F70: FF            RST 0x38
0F71: FF            RST 0x38
0F72: FF            RST 0x38
0F73: FF            RST 0x38
0F74: FF            RST 0x38
0F75: FF            RST 0x38
0F76: FF            RST 0x38
0F77: FF            RST 0x38
0F78: FF            RST 0x38
0F79: FF            RST 0x38
0F7A: FF            RST 0x38
0F7B: FF            RST 0x38
0F7C: FF            RST 0x38
0F7D: FF            RST 0x38
0F7E: FF            RST 0x38
0F7F: FF            RST 0x38
0F80: FF            RST 0x38
0F81: FF            RST 0x38
0F82: FF            RST 0x38
0F83: FF            RST 0x38
0F84: FF            RST 0x38
0F85: FF            RST 0x38
0F86: FF            RST 0x38
0F87: FF            RST 0x38
0F88: FF            RST 0x38
0F89: FF            RST 0x38
0F8A: FF            RST 0x38
0F8B: FF            RST 0x38
0F8C: FF            RST 0x38
0F8D: FF            RST 0x38
0F8E: FF            RST 0x38
0F8F: FF            RST 0x38
0F90: FF            RST 0x38
0F91: FF            RST 0x38
0F92: FF            RST 0x38
0F93: FF            RST 0x38
0F94: FF            RST 0x38
0F95: FF            RST 0x38
0F96: FF            RST 0x38
0F97: FF            RST 0x38
0F98: FF            RST 0x38
0F99: FF            RST 0x38
0F9A: FF            RST 0x38
0F9B: FF            RST 0x38
0F9C: FF            RST 0x38
0F9D: FF            RST 0x38
0F9E: FF            RST 0x38
0F9F: FF            RST 0x38
0FA0: FF            RST 0x38
0FA1: FF            RST 0x38
0FA2: FF            RST 0x38
0FA3: FF            RST 0x38
0FA4: FF            RST 0x38
0FA5: FF            RST 0x38
0FA6: FF            RST 0x38
0FA7: FF            RST 0x38
0FA8: FF            RST 0x38
0FA9: FF            RST 0x38
0FAA: FF            RST 0x38
0FAB: FF            RST 0x38
0FAC: FF            RST 0x38
0FAD: FF            RST 0x38
0FAE: FF            RST 0x38
0FAF: FF            RST 0x38
0FB0: FF            RST 0x38
0FB1: FF            RST 0x38
0FB2: FF            RST 0x38
0FB3: FF            RST 0x38
0FB4: FF            RST 0x38
0FB5: FF            RST 0x38
0FB6: FF            RST 0x38
0FB7: FF            RST 0x38
0FB8: FF            RST 0x38
0FB9: FF            RST 0x38
0FBA: FF            RST 0x38
0FBB: FF            RST 0x38
0FBC: FF            RST 0x38
0FBD: FF            RST 0x38
0FBE: FF            RST 0x38
0FBF: FF            RST 0x38
0FC0: FF            RST 0x38
0FC1: FF            RST 0x38
0FC2: FF            RST 0x38
0FC3: FF            RST 0x38
0FC4: FF            RST 0x38
0FC5: FF            RST 0x38
0FC6: FF            RST 0x38
0FC7: FF            RST 0x38
0FC8: FF            RST 0x38
0FC9: FF            RST 0x38
0FCA: FF            RST 0x38
0FCB: FF            RST 0x38
0FCC: FF            RST 0x38
0FCD: FF            RST 0x38
0FCE: FF            RST 0x38
0FCF: FF            RST 0x38
0FD0: FF            RST 0x38
0FD1: FF            RST 0x38
0FD2: FF            RST 0x38
0FD3: FF            RST 0x38
0FD4: FF            RST 0x38
0FD5: FF            RST 0x38
0FD6: FF            RST 0x38
0FD7: FF            RST 0x38
0FD8: FF            RST 0x38
0FD9: FF            RST 0x38
0FDA: FF            RST 0x38
0FDB: FF            RST 0x38
0FDC: FF            RST 0x38
0FDD: FF            RST 0x38
0FDE: FF            RST 0x38
0FDF: FF            RST 0x38
0FE0: FF            RST 0x38
0FE1: FF            RST 0x38
0FE2: FF            RST 0x38
0FE3: FF            RST 0x38
0FE4: FF            RST 0x38
0FE5: FF            RST 0x38
0FE6: FF            RST 0x38
0FE7: FF            RST 0x38
0FE8: FF            RST 0x38
0FE9: FF            RST 0x38
0FEA: FF            RST 0x38
0FEB: FF            RST 0x38
0FEC: FF            RST 0x38
0FED: FF            RST 0x38
0FEE: FF            RST 0x38
0FEF: FF            RST 0x38
0FF0: FF            RST 0x38
0FF1: FF            RST 0x38
0FF2: FF            RST 0x38
0FF3: FF            RST 0x38
0FF4: FF            RST 0x38
0FF5: FF            RST 0x38
0FF6: FF            RST 0x38
0FF7: FF            RST 0x38
0FF8: FF            RST 0x38
0FF9: FF            RST 0x38
0FFA: FF            RST 0x38
0FFB: FF            RST 0x38
0FFC: FF            RST 0x38
0FFD: FF            RST 0x38
0FFE: FF            RST 0x38
0FFF: FF            RST 0x38
