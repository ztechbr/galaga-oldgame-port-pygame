0000: 3E 10         LD A,0x10
0002: 32 00 71      LD (0x7100),A
0005: C3 C4 02      JP 0x02C4
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
001D: FF            RST 0x38
001E: FF            RST 0x38
001F: FF            RST 0x38
0020: 7B            LD A,E
0021: D6 20         SUB 0x20
0023: 5F            LD E,A
0024: D0            RET NC
0025: 15            DEC D
0026: C9            RET
0027: FF            RST 0x38
0028: 21 00 91      LD HL,0x9100
002B: 06 F0         LD B,0xF0
002D: AF            XOR A
002E: DF            RST 0x18
002F: C9            RET
0030: 37            SCF
0031: 08            EX AF,AF'
0032: C3 B5 13      JP 0x13B5
0035: FF            RST 0x38
0036: FF            RST 0x38
0037: FF            RST 0x38
0038: C3 37 02      JP 0x0237
003B: E9            JP (HL)
003C: 21 00 93      LD HL,0x9300
003F: 06 80         LD B,0x80
0041: AF            XOR A
0042: DF            RST 0x18
0043: 21 00 9B      LD HL,0x9B00
0046: 06 80         LD B,0x80
0048: DF            RST 0x18
0049: 21 00 88      LD HL,0x8800
004C: 3E 80         LD A,0x80
004E: 06 80         LD B,0x80
0050: DF            RST 0x18
0051: C9            RET
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
0066: D9            EXX
0067: ED A0         LDI
0069: EA 8F 00      JP PE,0x008F
006C: F5            PUSH AF
006D: 21 00 71      LD HL,0x7100
0070: 36 10         LD (HL),0x10
0072: 3A B9 9A      LD A,(0x9AB9)
0075: A7            AND A
0076: 28 16         JR Z,0x008E
0078: AF            XOR A
0079: 32 B9 9A      LD (0x9AB9),A
007C: 21 92 00      LD HL,0x0092
007F: 11 00 70      LD DE,0x7000
0082: 01 04 00      LD BC,0x0004
0085: D9            EXX
0086: 3E A8         LD A,0xA8
0088: 32 00 71      LD (0x7100),A
008B: F1            POP AF
008C: ED 45         RETN
008E: F1            POP AF
008F: D9            EXX
0090: ED 45         RETN
0092: 10 10         DJNZ 0x00A4
0094: 20 20         JR NZ,0x00B6
0096: 27            DAA
0097: 08            EX AF,AF'
0098: 28 08         JR Z,0x00A2
009A: B2            OR D
009B: 17            RLA
009C: 00            NOP
009D: 17            RLA
009E: 86            ADD A,(HL)
009F: 1A            LD A,(DE)
00A0: 57            LD D,A
00A1: 08            EX AF,AF'
00A2: 27            DAA
00A3: 08            EX AF,AF'
00A4: 27            DAA
00A5: 08            EX AF,AF'
00A6: 16 29         LD D,0x29
00A8: EC 1D 90      CALL PE,0x901D
00AB: 2A B9 1D      LD HL,(0x1DB9)
00AE: DD            DB 0xDD ; IX/IY prefix, manual analysis required
00AF: 23            INC HL
00B0: AA            XOR D
00B1: 1E 38         LD E,0x38
00B3: 1D            DEC E
00B4: 35            DEC (HL)
00B5: 09            ADD HL,BC
00B6: 6B            LD L,E
00B7: 1B            DEC DE
00B8: B2            OR D
00B9: 19            ADD HL,DE
00BA: 7C            LD A,H
00BB: 1D            DEC E
00BC: 27            DAA
00BD: 08            EX AF,AF'
00BE: 8F            ADC A,A
00BF: 1F            RRA
00C0: 0E 1F         LD C,0x1F
00C2: 27            DAA
00C3: 08            EX AF,AF'
00C4: D8            RET C
00C5: 1D            DEC E
00C6: 22 22 CB      LD (0xCB22),HL
00C9: 21 27 08      LD HL,0x0827
00CC: 27            DAA
00CD: 08            EX AF,AF'
00CE: F2 20 00      JP P,0x0020
00D1: 20 27         JR NZ,0x00FA
00D3: 08            EX AF,AF'
00D4: 77            LD (HL),A
00D5: 09            ADD HL,BC
00D6: 11 ED 83      LD DE,0x83ED
00D9: 21 B9 02      LD HL,0x02B9
00DC: 01 05 00      LD BC,0x0005
00DF: ED B0         LDIR
00E1: 1E CB         LD E,0xCB
00E3: 21 EB 00      LD HL,0x00EB
00E6: 0E 11         LD C,0x11
00E8: ED B0         LDIR
00EA: C9            RET
00EB: 0E 1B         LD C,0x1B
00ED: 18 0C         JR 0x00FB
00EF: 1C            INC E
00F0: 24            INC H
00F1: 11 10 12      LD DE,0x1210
00F4: 11 24 24      LD DE,0x2424
00F7: 24            INC H
00F8: 24            INC H
00F9: 19            ADD HL,DE
00FA: 1E 01         LD E,0x01
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
0160: 21 40 80      LD HL,0x8040
0163: 11 41 80      LD DE,0x8041
0166: 01 7F 03      LD BC,0x037F
0169: 36 24         LD (HL),0x24
016B: ED B0         LDIR
016D: 21 40 84      LD HL,0x8440
0170: 11 41 84      LD DE,0x8441
0173: 01 7F 03      LD BC,0x037F
0176: 36 00         LD (HL),0x00
0178: ED B0         LDIR
017A: 3E 04         LD A,0x04
017C: 06 20         LD B,0x20
017E: DF            RST 0x18
017F: 3E 4E         LD A,0x4E
0181: 06 20         LD B,0x20
0183: DF            RST 0x18
0184: C9            RET
0185: 21 21 98      LD HL,0x9821
0188: 34            INC (HL)
0189: 7E            LD A,(HL)
018A: 3C            INC A
018B: E6 03         AND 0x03
018D: 32 25 98      LD (0x9825),A
0190: 28 10         JR Z,0x01A2
0192: 0E 06         LD C,0x06
0194: F7            RST 0x30
0195: EB            EX DE,HL
0196: 3A 21 98      LD A,(0x9821)
0199: 6F            LD L,A
019A: 26 00         LD H,0x00
019C: CD 53 0A      CALL 0x0A53
019F: AF            XOR A
01A0: 18 0A         JR 0x01AC
01A2: 0E 07         LD C,0x07
01A4: F7            RST 0x30
01A5: 3E 01         LD A,0x01
01A7: 32 AD 9A      LD (0x9AAD),A
01AA: 3E 08         LD A,0x08
01AC: 32 A8 92      LD (0x92A8),A
01AF: 3E 03         LD A,0x03
01B1: 32 AE 92      LD (0x92AE),A
01B4: 32 0B 92      LD (0x920B),A
01B7: 3A 25 98      LD A,(0x9825)
01BA: A7            AND A
01BB: 08            EX AF,AF'
01BC: CD 7F 11      CALL 0x117F
01BF: 3A AE 92      LD A,(0x92AE)
01C2: A7            AND A
01C3: 20 FA         JR NZ,0x01BF
01C5: 3E 78         LD A,0x78
01C7: 32 AE 92      LD (0x92AE),A
01CA: CD 96 28      CALL 0x2896
01CD: CD A2 25      CALL 0x25A2
01D0: 3E 02         LD A,0x02
01D2: 32 AC 92      LD (0x92AC),A
01D5: AF            XOR A
01D6: CD D5 12      CALL 0x12D5
01D9: AF            XOR A
01DA: 06 30         LD B,0x30
01DC: 21 00 92      LD HL,0x9200
01DF: 77            LD (HL),A
01E0: 2C            INC L
01E1: 2C            INC L
01E2: 10 FB         DJNZ 0x01DF
01E4: 32 09 90      LD (0x9009),A
01E7: 32 10 90      LD (0x9010),A
01EA: 32 04 90      LD (0x9004),A
01ED: 32 88 92      LD (0x9288),A
01F0: 32 2C 98      LD (0x982C),A
01F3: 32 41 98      LD (0x9841),A
01F6: 32 42 98      LD (0x9842),A
01F9: 32 26 98      LD (0x9826),A
01FC: 32 B0 99      LD (0x99B0),A
01FF: 32 24 98      LD (0x9824),A
0202: 3C            INC A
0203: 32 2D 98      LD (0x982D),A
0206: 32 6D 98      LD (0x986D),A
0209: 32 28 98      LD (0x9828),A
020C: 32 0B 90      LD (0x900B),A
020F: 32 08 90      LD (0x9008),A
0212: 32 0A 90      LD (0x900A),A
0215: CD 00 2C      CALL 0x2C00
0218: 21 30 98      LD HL,0x9830
021B: 11 B5 01      LD DE,0x01B5
021E: 06 04         LD B,0x04
0220: 72            LD (HL),D
0221: 2C            INC L
0222: 73            LD (HL),E
0223: 2C            INC L
0224: 10 FA         DJNZ 0x0220
0226: 3A 05 68      LD A,(0x6805)
0229: CB 4F         BIT 1,A
022B: C0            RET NZ
022C: 0E 0B         LD C,0x0B
022E: 21 B0 83      LD HL,0x83B0
0231: CD B3 13      CALL 0x13B3
0234: C3 85 01      JP 0x0185
0237: F5            PUSH AF
0238: 08            EX AF,AF'
0239: F5            PUSH AF
023A: C5            PUSH BC
023B: D5            PUSH DE
023C: E5            PUSH HL
023D: DD            DB 0xDD ; IX/IY prefix, manual analysis required
023E: E5            PUSH HL
023F: FD            DB 0xFD ; IX/IY prefix, manual analysis required
0240: E5            PUSH HL
0241: 3A 04 68      LD A,(0x6804)
0244: 57            LD D,A
0245: 3A A0 92      LD A,(0x92A0)
0248: E6 1C         AND 0x1C
024A: 4F            LD C,A
024B: 0F            RRCA
024C: A9            XOR C
024D: E6 18         AND 0x18
024F: 4F            LD C,A
0250: 3A BE 99      LD A,(0x99BE)
0253: CB 4A         BIT 1,D
0255: 20 02         JR NZ,0x0259
0257: 3E 07         LD A,0x07
0259: E6 07         AND 0x07
025B: B1            OR C
025C: 06 05         LD B,0x05
025E: 21 00 A0      LD HL,0xA000
0261: 77            LD (HL),A
0262: 2C            INC L
0263: 0F            RRCA
0264: 10 FB         DJNZ 0x0261
0266: 32 30 68      LD (0x6830),A
0269: AF            XOR A
026A: 32 20 68      LD (0x6820),A
026D: CB 4A         BIT 1,D
026F: CA A8 02      JP Z,0x02A8
0272: 4F            LD C,A
0273: 21 00 90      LD HL,0x9000
0276: 79            LD A,C
0277: 85            ADD A,L
0278: 6F            LD L,A
0279: 7E            LD A,(HL)
027A: A7            AND A
027B: 20 03         JR NZ,0x0280
027D: 0C            INC C
027E: 18 F3         JR 0x0273
0280: 47            LD B,A
0281: 21 96 00      LD HL,0x0096
0284: 79            LD A,C
0285: CB 27         SLA A
0287: 85            ADD A,L
0288: 6F            LD L,A
0289: 5E            LD E,(HL)
028A: 23            INC HL
028B: 56            LD D,(HL)
028C: EB            EX DE,HL
028D: C5            PUSH BC
028E: CD 3B 00      CALL 0x003B
0291: C1            POP BC
0292: 78            LD A,B
0293: 81            ADD A,C
0294: 4F            LD C,A
0295: E6 E0         AND 0xE0
0297: 28 DA         JR Z,0x0273
0299: 21 00 70      LD HL,0x7000
029C: 11 B5 99      LD DE,0x99B5
029F: 01 03 00      LD BC,0x0003
02A2: D9            EXX
02A3: 3E 71         LD A,0x71
02A5: 32 00 71      LD (0x7100),A
02A8: 3E 01         LD A,0x01
02AA: 32 20 68      LD (0x6820),A
02AD: FD            DB 0xFD ; IX/IY prefix, manual analysis required
02AE: E1            POP HL
02AF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
02B0: E1            POP HL
02B1: E1            POP HL
02B2: D1            POP DE
02B3: C1            POP BC
02B4: F1            POP AF
02B5: 08            EX AF,AF'
02B6: F1            POP AF
02B7: FB            EI
02B8: C9            RET
02B9: 00            NOP
02BA: 00            NOP
02BB: 00            NOP
02BC: 00            NOP
02BD: 02            LD (BC),A
02BE: 24            INC H
02BF: 17            RLA
02C0: 0A            LD A,(BC)
02C1: 16 0C         LD D,0x0C
02C3: 18 ED         JR 0x02B2
02C5: 56            LD D,(HL)
02C6: AF            XOR A
02C7: 21 E0 99      LD HL,0x99E0
02CA: 06 10         LD B,0x10
02CC: 77            LD (HL),A
02CD: 23            INC HL
02CE: 10 FC         DJNZ 0x02CC
02D0: C3 6C 33      JP 0x336C
02D3: 31 A0 90      LD SP,0x90A0
02D6: AF            XOR A
02D7: 21 AC 92      LD HL,0x92AC
02DA: 06 04         LD B,0x04
02DC: DF            RST 0x18
02DD: 21 A0 9A      LD HL,0x9AA0
02E0: 06 20         LD B,0x20
02E2: DF            RST 0x18
02E3: 32 07 A0      LD (0xA007),A
02E6: 32 15 92      LD (0x9215),A
02E9: 32 B9 99      LD (0x99B9),A
02EC: 3D            DEC A
02ED: 21 CA 92      LD HL,0x92CA
02F0: 06 10         LD B,0x10
02F2: DF            RST 0x18
02F3: 3E 01         LD A,0x01
02F5: 32 20 68      LD (0x6820),A
02F8: 21 C0 83      LD HL,0x83C0
02FB: 06 40         LD B,0x40
02FD: 3E 24         LD A,0x24
02FF: DF            RST 0x18
0300: 26 80         LD H,0x80
0302: 06 40         LD B,0x40
0304: DF            RST 0x18
0305: 21 00 84      LD HL,0x8400
0308: 06 40         LD B,0x40
030A: 3E 03         LD A,0x03
030C: DF            RST 0x18
030D: CD 60 01      CALL 0x0160
0310: 11 20 8A      LD DE,0x8A20
0313: 3E 05         LD A,0x05
0315: 06 00         LD B,0x00
0317: 21 B9 02      LD HL,0x02B9
031A: 0E 06         LD C,0x06
031C: ED B0         LDIR
031E: 3D            DEC A
031F: 20 F6         JR NZ,0x0317
0321: 21 BF 02      LD HL,0x02BF
0324: 3E 2A         LD A,0x2A
0326: 06 05         LD B,0x05
0328: 0E FF         LD C,0xFF
032A: ED A0         LDI
032C: 2B            DEC HL
032D: 12            LD (DE),A
032E: 1C            INC E
032F: ED A0         LDI
0331: 10 F7         DJNZ 0x032A
0333: 3E 01         LD A,0x01
0335: 32 01 92      LD (0x9201),A
0338: 21 05 A0      LD HL,0xA005
033B: 36 00         LD (HL),0x00
033D: 77            LD (HL),A
033E: CD 3C 00      CALL 0x003C
0341: CD D6 00      CALL 0x00D6
0344: CD 42 12      CALL 0x1242
0347: EF            RST 0x28
0348: 3E 20         LD A,0x20
034A: 32 1E 90      LD (0x901E),A
034D: 3A B5 99      LD A,(0x99B5)
0350: 32 B8 99      LD (0x99B8),A
0353: AF            XOR A
0354: 32 1E 90      LD (0x901E),A
0357: 32 20 90      LD (0x9020),A
035A: AF            XOR A
035B: 32 07 A0      LD (0xA007),A
035E: 32 15 92      LD (0x9215),A
0361: 32 12 90      LD (0x9012),A
0364: 06 80         LD B,0x80
0366: 21 00 92      LD HL,0x9200
0369: DF            RST 0x18
036A: 3E 06         LD A,0x06
036C: 32 BE 99      LD (0x99BE),A
036F: EF            RST 0x28
0370: CD 3C 00      CALL 0x003C
0373: CD 42 12      CALL 0x1242
0376: 3A B8 99      LD A,(0x99B8)
0379: A7            AND A
037A: 3E 01         LD A,0x01
037C: 28 02         JR Z,0x0380
037E: 3E 02         LD A,0x02
0380: 32 01 92      LD (0x9201),A
0383: 20 18         JR NZ,0x039D
0385: AF            XOR A
0386: 32 03 92      LD (0x9203),A
0389: 3C            INC A
038A: 32 02 90      LD (0x9002),A
038D: 3A 01 92      LD A,(0x9201)
0390: 3D            DEC A
0391: 28 FA         JR Z,0x038D
0393: CD 42 12      CALL 0x1242
0396: CD 60 01      CALL 0x0160
0399: EF            RST 0x28
039A: CD 3C 00      CALL 0x003C
039D: AF            XOR A
039E: 32 0B 92      LD (0x920B),A
03A1: 0E 13         LD C,0x13
03A3: F7            RST 0x30
03A4: 0E 01         LD C,0x01
03A6: F7            RST 0x30
03A7: 21 52 04      LD HL,0x0452
03AA: 22 80 92      LD (0x9280),HL
03AD: 3A 80 99      LD A,(0x9980)
03B0: FE FF         CP 0xFF
03B2: 28 24         JR Z,0x03D8
03B4: 5F            LD E,A
03B5: 0E 1B         LD C,0x1B
03B7: CD 3D 04      CALL 0x043D
03BA: 3A 81 99      LD A,(0x9981)
03BD: FE FF         CP 0xFF
03BF: 28 17         JR Z,0x03D8
03C1: E6 7F         AND 0x7F
03C3: 5F            LD E,A
03C4: 0E 1C         LD C,0x1C
03C6: CD 3D 04      CALL 0x043D
03C9: 3A 81 99      LD A,(0x9981)
03CC: CB 7F         BIT 7,A
03CE: 20 08         JR NZ,0x03D8
03D0: E6 7F         AND 0x7F
03D2: 5F            LD E,A
03D3: 0E 1D         LD C,0x1D
03D5: CD 3D 04      CALL 0x043D
03D8: 3A 01 92      LD A,(0x9201)
03DB: FE 02         CP 0x02
03DD: 28 F9         JR Z,0x03D8
03DF: 32 B7 9A      LD (0x9AB7),A
03E2: CD 60 01      CALL 0x0160
03E5: CD 3C 00      CALL 0x003C
03E8: 21 05 A0      LD HL,0xA005
03EB: 36 00         LD (HL),0x00
03ED: 36 01         LD (HL),0x01
03EF: 21 20 98      LD HL,0x9820
03F2: AF            XOR A
03F3: 06 A0         LD B,0xA0
03F5: DF            RST 0x18
03F6: 32 B7 9A      LD (0x9AB7),A
03F9: 32 B9 99      LD (0x99B9),A
03FC: 3C            INC A
03FD: 32 AB 9A      LD (0x9AAB),A
0400: 32 12 90      LD (0x9012),A
0403: 32 F2 98      LD (0x98F2),A
0406: CD 66 04      CALL 0x0466
0409: CD 7B 12      CALL 0x127B
040C: 0E 04         LD C,0x04
040E: F7            RST 0x30
040F: 21 AF 92      LD HL,0x92AF
0412: 36 08         LD (HL),0x08
0414: 7E            LD A,(HL)
0415: A7            AND A
0416: 20 FC         JR NZ,0x0414
0418: 21 90 92      LD HL,0x9290
041B: 06 10         LD B,0x10
041D: DF            RST 0x18
041E: 06 30         LD B,0x30
0420: 21 B0 98      LD HL,0x98B0
0423: DF            RST 0x18
0424: 21 B0 83      LD HL,0x83B0
0427: 0E 0B         LD C,0x0B
0429: CD B3 13      CALL 0x13B3
042C: 3E 01         LD A,0x01
042E: 32 80 98      LD (0x9880),A
0431: 3A 80 99      LD A,(0x9980)
0434: 32 3E 98      LD (0x983E),A
0437: 32 7E 98      LD (0x987E),A
043A: C3 0F 06      JP 0x060F
043D: F7            RST 0x30
043E: EB            EX DE,HL
043F: 7B            LD A,E
0440: C6 40         ADD A,0x40
0442: 5F            LD E,A
0443: 26 00         LD H,0x00
0445: CD 53 0A      CALL 0x0A53
0448: EB            EX DE,HL
0449: 0E 1E         LD C,0x1E
044B: CD B3 13      CALL 0x13B3
044E: CD 9E 12      CALL 0x129E
0451: C9            RET
0452: 00            NOP
0453: 81            ADD A,C
0454: 19            ADD HL,DE
0455: 56            LD D,(HL)
0456: 02            LD (BC),A
0457: 81            ADD A,C
0458: 19            ADD HL,DE
0459: 62            LD H,D
045A: 04            INC B
045B: 81            ADD A,C
045C: 19            ADD HL,DE
045D: 6E            LD L,(HL)
045E: CD 28 07      CALL 0x0728
0461: CD 0B 08      CALL 0x080B
0464: 18 F8         JR 0x045E
0466: 3A 82 99      LD A,(0x9982)
0469: 32 20 98      LD (0x9820),A
046C: 32 60 98      LD (0x9860),A
046F: 11 F8 83      LD DE,0x83F8
0472: 21 95 04      LD HL,0x0495
0475: CD 86 04      CALL 0x0486
0478: 11 E3 83      LD DE,0x83E3
047B: 21 95 04      LD HL,0x0495
047E: 3A B3 99      LD A,(0x99B3)
0481: A7            AND A
0482: 20 02         JR NZ,0x0486
0484: 23            INC HL
0485: 23            INC HL
0486: 0E 07         LD C,0x07
0488: ED B0         LDIR
048A: 21 97 04      LD HL,0x0497
048D: 11 C3 83      LD DE,0x83C3
0490: 0E 04         LD C,0x04
0492: ED B0         LDIR
0494: C9            RET
0495: 00            NOP
0496: 00            NOP
0497: 24            INC H
0498: 24            INC H
0499: 24            INC H
049A: 24            INC H
049B: 24            INC H
049C: 24            INC H
049D: 24            INC H
049E: E1            POP HL
049F: 21 AF 92      LD HL,0x92AF
04A2: 36 04         LD (HL),0x04
04A4: 3A 1D 90      LD A,(0x901D)
04A7: A7            AND A
04A8: 28 17         JR Z,0x04C1
04AA: AF            XOR A
04AB: 32 13 92      LD (0x9213),A
04AE: 3C            INC A
04AF: 32 25 90      LD (0x9025),A
04B2: 3A A7 92      LD A,(0x92A7)
04B5: A7            AND A
04B6: C2 5E 04      JP NZ,0x045E
04B9: 3A 1D 90      LD A,(0x901D)
04BC: A7            AND A
04BD: 20 FA         JR NZ,0x04B9
04BF: 18 1B         JR 0x04DC
04C1: 7E            LD A,(HL)
04C2: A7            AND A
04C3: 20 DF         JR NZ,0x04A4
04C5: CD 28 07      CALL 0x0728
04C8: 3A A7 92      LD A,(0x92A7)
04CB: 32 43 98      LD (0x9843),A
04CE: 4F            LD C,A
04CF: 3A 13 92      LD A,(0x9213)
04D2: B1            OR C
04D3: 20 0D         JR NZ,0x04E2
04D5: 3A 25 98      LD A,(0x9825)
04D8: A7            AND A
04D9: CA 50 06      JP Z,0x0650
04DC: CD 85 01      CALL 0x0185
04DF: C3 32 06      JP 0x0632
04E2: 21 20 98      LD HL,0x9820
04E5: 7E            LD A,(HL)
04E6: 35            DEC (HL)
04E7: A7            AND A
04E8: C2 79 05      JP NZ,0x0579
04EB: 3A B3 99      LD A,(0x99B3)
04EE: A7            AND A
04EF: 28 0C         JR Z,0x04FD
04F1: 21 4E 82      LD HL,0x824E
04F4: 3A 40 98      LD A,(0x9840)
04F7: C6 04         ADD A,0x04
04F9: 4F            LD C,A
04FA: CD B3 13      CALL 0x13B3
04FD: 0E 02         LD C,0x02
04FF: F7            RST 0x30
0500: CD 31 13      CALL 0x1331
0503: CD 31 13      CALL 0x1331
0506: 21 18 90      LD HL,0x9018
0509: 7E            LD A,(HL)
050A: A7            AND A
050B: 20 FC         JR NZ,0x0509
050D: EF            RST 0x28
050E: CD 3C 00      CALL 0x003C
0511: CD 60 01      CALL 0x0160
0514: 0E 15         LD C,0x15
0516: F7            RST 0x30
0517: 0E 16         LD C,0x16
0519: F7            RST 0x30
051A: 11 32 81      LD DE,0x8132
051D: 2A 46 98      LD HL,(0x9846)
0520: CD 53 0A      CALL 0x0A53
0523: 0E 18         LD C,0x18
0525: F7            RST 0x30
0526: 11 35 81      LD DE,0x8135
0529: 2A 44 98      LD HL,(0x9844)
052C: CD 53 0A      CALL 0x0A53
052F: 0E 19         LD C,0x19
0531: F7            RST 0x30
0532: CD 72 0A      CALL 0x0A72
0535: EB            EX DE,HL
0536: 0E 1A         LD C,0x1A
0538: CD B3 13      CALL 0x13B3
053B: 21 AE 92      LD HL,0x92AE
053E: 36 0E         LD (HL),0x0E
0540: 7E            LD A,(HL)
0541: A7            AND A
0542: 20 FC         JR NZ,0x0540
0544: CD 60 01      CALL 0x0160
0547: CD 00 30      CALL 0x3000
054A: AF            XOR A
054B: 32 B0 9A      LD (0x9AB0),A
054E: 21 AC 9A      LD HL,0x9AAC
0551: 11 B6 9A      LD DE,0x9AB6
0554: 1A            LD A,(DE)
0555: 46            LD B,(HL)
0556: B0            OR B
0557: 28 09         JR Z,0x0562
0559: 04            INC B
055A: 05            DEC B
055B: 28 02         JR Z,0x055F
055D: 36 01         LD (HL),0x01
055F: 76            HALT
0560: 18 F2         JR 0x0554
0562: CD 60 01      CALL 0x0160
0565: 3A B3 99      LD A,(0x99B3)
0568: A7            AND A
0569: CA DE 06      JP Z,0x06DE
056C: 3A 60 98      LD A,(0x9860)
056F: 3C            INC A
0570: CA DE 06      JP Z,0x06DE
0573: 3A 13 92      LD A,(0x9213)
0576: 3D            DEC A
0577: 20 15         JR NZ,0x058E
0579: 3A B3 99      LD A,(0x99B3)
057C: A7            AND A
057D: CA 04 06      JP Z,0x0604
0580: 3A 60 98      LD A,(0x9860)
0583: 3C            INC A
0584: CA 12 06      JP Z,0x0612
0587: 3A 13 92      LD A,(0x9213)
058A: 3D            DEC A
058B: C2 12 06      JP NZ,0x0612
058E: 3A A7 92      LD A,(0x92A7)
0591: A7            AND A
0592: 28 06         JR Z,0x059A
0594: 3A 87 92      LD A,(0x9287)
0597: A7            AND A
0598: 20 FA         JR NZ,0x0594
059A: AF            XOR A
059B: 32 B4 99      LD (0x99B4),A
059E: 3C            INC A
059F: 21 0E 90      LD HL,0x900E
05A2: 77            LD (HL),A
05A3: 7E            LD A,(HL)
05A4: A7            AND A
05A5: 20 FC         JR NZ,0x05A3
05A7: 3A A0 9A      LD A,(0x9AA0)
05AA: 32 48 98      LD (0x9848),A
05AD: 3A AE 92      LD A,(0x92AE)
05B0: 32 3F 98      LD (0x983F),A
05B3: CD 0C 11      CALL 0x110C
05B6: CD 00 2C      CALL 0x2C00
05B9: 3A 3F 98      LD A,(0x983F)
05BC: 32 AE 92      LD (0x92AE),A
05BF: 3A 48 98      LD A,(0x9848)
05C2: 32 A0 9A      LD (0x9AA0),A
05C5: CD 7E 13      CALL 0x137E
05C8: 3A 43 98      LD A,(0x9843)
05CB: A7            AND A
05CC: 28 03         JR Z,0x05D1
05CE: CD A2 25      CALL 0x25A2
05D1: 3A 40 98      LD A,(0x9840)
05D4: 4F            LD C,A
05D5: 3A 83 99      LD A,(0x9983)
05D8: A1            AND C
05D9: 32 07 A0      LD (0xA007),A
05DC: 32 15 92      LD (0x9215),A
05DF: 3E 3F         LD A,0x3F
05E1: CD D5 12      CALL 0x12D5
05E4: 37            SCF
05E5: 08            EX AF,AF'
05E6: CD 7F 11      CALL 0x117F
05E9: 3A 43 98      LD A,(0x9843)
05EC: A7            AND A
05ED: 28 20         JR Z,0x060F
05EF: 0E 03         LD C,0x03
05F1: F7            RST 0x30
05F2: 3E 80         LD A,0x80
05F4: 32 B4 99      LD (0x99B4),A
05F7: 21 0E 90      LD HL,0x900E
05FA: 3E 01         LD A,0x01
05FC: 77            LD (HL),A
05FD: 7E            LD A,(HL)
05FE: A7            AND A
05FF: 20 FC         JR NZ,0x05FD
0601: C3 12 06      JP 0x0612
0604: 3A 43 98      LD A,(0x9843)
0607: A7            AND A
0608: 20 14         JR NZ,0x061E
060A: CD 85 01      CALL 0x0185
060D: 18 0F         JR 0x061E
060F: CD 85 01      CALL 0x0185
0612: 3A 40 98      LD A,(0x9840)
0615: C6 04         ADD A,0x04
0617: 4F            LD C,A
0618: 21 6E 82      LD HL,0x826E
061B: CD B3 13      CALL 0x13B3
061E: CD 3D 13      CALL 0x133D
0621: 3A AE 92      LD A,(0x92AE)
0624: C6 1E         ADD A,0x1E
0626: FE 78         CP 0x78
0628: 38 02         JR C,0x062C
062A: 3E 78         LD A,0x78
062C: 32 AE 92      LD (0x92AE),A
062F: CD 31 13      CALL 0x1331
0632: 3E 01         LD A,0x01
0634: 32 15 90      LD (0x9015),A
0637: 32 25 90      LD (0x9025),A
063A: 32 42 98      LD (0x9842),A
063D: 0E 0B         LD C,0x0B
063F: 21 B0 83      LD HL,0x83B0
0642: CD B3 13      CALL 0x13B3
0645: 0E 0B         LD C,0x0B
0647: 21 AE 83      LD HL,0x83AE
064A: CD B3 13      CALL 0x13B3
064D: C3 5E 04      JP 0x045E
0650: 3A 88 92      LD A,(0x9288)
0653: 5F            LD E,A
0654: 21 AE 9A      LD HL,0x9AAE
0657: FE 28         CP 0x28
0659: 20 03         JR NZ,0x065E
065B: 21 B4 9A      LD HL,0x9AB4
065E: 36 01         LD (HL),0x01
0660: CD 31 13      CALL 0x1331
0663: 0E 08         LD C,0x08
0665: F7            RST 0x30
0666: CD 31 13      CALL 0x1331
0669: 6B            LD L,E
066A: 26 00         LD H,0x00
066C: 11 10 81      LD DE,0x8110
066F: CD 53 0A      CALL 0x0A53
0672: CD 31 13      CALL 0x1331
0675: 3A 88 92      LD A,(0x9288)
0678: FE 28         CP 0x28
067A: 28 1D         JR Z,0x0699
067C: 0E 09         LD C,0x09
067E: F7            RST 0x30
067F: CD 31 13      CALL 0x1331
0682: EB            EX DE,HL
0683: 3A 88 92      LD A,(0x9288)
0686: A7            AND A
0687: 28 0A         JR Z,0x0693
0689: 6F            LD L,A
068A: 26 00         LD H,0x00
068C: CD 53 0A      CALL 0x0A53
068F: AF            XOR A
0690: 12            LD (DE),A
0691: E7            RST 0x20
0692: AF            XOR A
0693: 12            LD (DE),A
0694: 3A 88 92      LD A,(0x9288)
0697: 18 21         JR 0x06BA
0699: 06 07         LD B,0x07
069B: 3A A0 92      LD A,(0x92A0)
069E: E6 0F         AND 0x0F
06A0: 20 F9         JR NZ,0x069B
06A2: 0E 0B         LD C,0x0B
06A4: CB 40         BIT 0,B
06A6: 28 01         JR Z,0x06A9
06A8: 0C            INC C
06A9: C5            PUSH BC
06AA: F7            RST 0x30
06AB: C1            POP BC
06AC: 3A A0 92      LD A,(0x92A0)
06AF: E6 0F         AND 0x0F
06B1: 28 F9         JR Z,0x06AC
06B3: 10 E6         DJNZ 0x069B
06B5: 0E 0D         LD C,0x0D
06B7: F7            RST 0x30
06B8: 3E 64         LD A,0x64
06BA: 21 9F 92      LD HL,0x929F
06BD: 86            ADD A,(HL)
06BE: 77            LD (HL),A
06BF: CD 28 07      CALL 0x0728
06C2: CD 31 13      CALL 0x1331
06C5: CD 31 13      CALL 0x1331
06C8: 21 B0 83      LD HL,0x83B0
06CB: 0E 0B         LD C,0x0B
06CD: CD B3 13      CALL 0x13B3
06D0: 21 B3 83      LD HL,0x83B3
06D3: 0E 0B         LD C,0x0B
06D5: CD B3 13      CALL 0x13B3
06D8: 0E 0B         LD C,0x0B
06DA: F7            RST 0x30
06DB: C3 DC 04      JP 0x04DC
06DE: 76            HALT
06DF: F3            DI
06E0: 3A 00 71      LD A,(0x7100)
06E3: FE 10         CP 0x10
06E5: 20 F9         JR NZ,0x06E0
06E7: 21 25 07      LD HL,0x0725
06EA: 11 00 70      LD DE,0x7000
06ED: 01 03 00      LD BC,0x0003
06F0: D9            EXX
06F1: 3E 61         LD A,0x61
06F3: 32 00 71      LD (0x7100),A
06F6: 76            HALT
06F7: AF            XOR A
06F8: CD 3C 09      CALL 0x093C
06FB: FB            EI
06FC: AF            XOR A
06FD: 06 20         LD B,0x20
06FF: 21 A0 9A      LD HL,0x9AA0
0702: DF            RST 0x18
0703: 11 F9 83      LD DE,0x83F9
0706: CD 27 0A      CALL 0x0A27
0709: 11 E4 83      LD DE,0x83E4
070C: CD 27 0A      CALL 0x0A27
070F: 3A B3 99      LD A,(0x99B3)
0712: 3C            INC A
0713: 21 E1 99      LD HL,0x99E1
0716: 86            ADD A,(HL)
0717: 27            DAA
0718: 77            LD (HL),A
0719: D2 5A 03      JP NC,0x035A
071C: 2B            DEC HL
071D: 7E            LD A,(HL)
071E: C6 01         ADD A,0x01
0720: 27            DAA
0721: 77            LD (HL),A
0722: C3 5A 03      JP 0x035A
0725: 02            LD (BC),A
0726: 02            LD (BC),A
0727: 02            LD (BC),A
0728: 3A 40 98      LD A,(0x9840)
072B: A7            AND A
072C: 3E F9         LD A,0xF9
072E: 28 02         JR Z,0x0732
0730: 3E E4         LD A,0xE4
0732: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0733: 6F            LD L,A
0734: 06 10         LD B,0x10
0736: 21 90 92      LD HL,0x9290
0739: EB            EX DE,HL
073A: 21 FA 07      LD HL,0x07FA
073D: 78            LD A,B
073E: D7            RST 0x10
073F: 4E            LD C,(HL)
0740: EB            EX DE,HL
0741: 7E            LD A,(HL)
0742: A7            AND A
0743: 28 1D         JR Z,0x0762
0745: 35            DEC (HL)
0746: EB            EX DE,HL
0747: 26 83         LD H,0x83
0749: DD            DB 0xDD ; IX/IY prefix, manual analysis required
074A: 7D            LD A,L
074B: 6F            LD L,A
074C: 79            LD A,C
074D: E6 0F         AND 0x0F
074F: CD D8 07      CALL 0x07D8
0752: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0753: 7D            LD A,L
0754: 3C            INC A
0755: 6F            LD L,A
0756: 79            LD A,C
0757: 07            RLCA
0758: 07            RLCA
0759: 07            RLCA
075A: 07            RLCA
075B: E6 0F         AND 0x0F
075D: CD D8 07      CALL 0x07D8
0760: 18 DE         JR 0x0740
0762: 2C            INC L
0763: 10 D4         DJNZ 0x0739
0765: DD            DB 0xDD ; IX/IY prefix, manual analysis required
0766: 7D            LD A,L
0767: C6 04         ADD A,0x04
0769: 5F            LD E,A
076A: 21 F2 83      LD HL,0x83F2
076D: 16 83         LD D,0x83
076F: 06 06         LD B,0x06
0771: 1A            LD A,(DE)
0772: 96            SUB (HL)
0773: C6 09         ADD A,0x09
0775: FE E5         CP 0xE5
0777: 30 0F         JR NC,0x0788
0779: D6 0A         SUB 0x0A
077B: FE 09         CP 0x09
077D: 38 09         JR C,0x0788
077F: 3C            INC A
0780: 20 0C         JR NZ,0x078E
0782: 2D            DEC L
0783: 1D            DEC E
0784: 10 EB         DJNZ 0x0771
0786: 18 06         JR 0x078E
0788: 1A            LD A,(DE)
0789: 77            LD (HL),A
078A: 2D            DEC L
078B: 1D            DEC E
078C: 10 FA         DJNZ 0x0788
078E: DD            DB 0xDD ; IX/IY prefix, manual analysis required
078F: 7D            LD A,L
0790: C6 04         ADD A,0x04
0792: 6F            LD L,A
0793: 7E            LD A,(HL)
0794: FE 24         CP 0x24
0796: 20 01         JR NZ,0x0799
0798: AF            XOR A
0799: E6 3F         AND 0x3F
079B: 07            RLCA
079C: 4F            LD C,A
079D: 07            RLCA
079E: 07            RLCA
079F: 81            ADD A,C
07A0: 4F            LD C,A
07A1: 2D            DEC L
07A2: 7E            LD A,(HL)
07A3: FE 24         CP 0x24
07A5: 20 01         JR NZ,0x07A8
07A7: AF            XOR A
07A8: 81            ADD A,C
07A9: 21 3E 98      LD HL,0x983E
07AC: BE            CP (HL)
07AD: C0            RET NZ
07AE: 3A 81 99      LD A,(0x9981)
07B1: 47            LD B,A
07B2: E6 7F         AND 0x7F
07B4: 4F            LD C,A
07B5: 7E            LD A,(HL)
07B6: B9            CP C
07B7: 30 03         JR NC,0x07BC
07B9: 79            LD A,C
07BA: 18 01         JR 0x07BD
07BC: 80            ADD A,B
07BD: 77            LD (HL),A
07BE: 32 AA 9A      LD (0x9AAA),A
07C1: 21 20 98      LD HL,0x9820
07C4: 34            INC (HL)
07C5: CD 7E 13      CALL 0x137E
07C8: 21 EB 99      LD HL,0x99EB
07CB: 7E            LD A,(HL)
07CC: C6 01         ADD A,0x01
07CE: 27            DAA
07CF: 77            LD (HL),A
07D0: D0            RET NC
07D1: 2D            DEC L
07D2: 7E            LD A,(HL)
07D3: C6 01         ADD A,0x01
07D5: 27            DAA
07D6: 77            LD (HL),A
07D7: C9            RET
07D8: A7            AND A
07D9: C8            RET Z
07DA: 86            ADD A,(HL)
07DB: FE 24         CP 0x24
07DD: 38 02         JR C,0x07E1
07DF: D6 24         SUB 0x24
07E1: FE 0A         CP 0x0A
07E3: 30 02         JR NC,0x07E7
07E5: 77            LD (HL),A
07E6: C9            RET
07E7: D6 0A         SUB 0x0A
07E9: 77            LD (HL),A
07EA: 2C            INC L
07EB: 7E            LD A,(HL)
07EC: FE 24         CP 0x24
07EE: 20 01         JR NZ,0x07F1
07F0: AF            XOR A
07F1: FE 09         CP 0x09
07F3: 28 03         JR Z,0x07F8
07F5: 3C            INC A
07F6: 77            LD (HL),A
07F7: C9            RET
07F8: AF            XOR A
07F9: 18 EE         JR 0x07E9
07FB: 10 00         DJNZ 0x07FD
07FD: 00            NOP
07FE: 00            NOP
07FF: 00            NOP
0800: 00            NOP
0801: 00            NOP
0802: 00            NOP
0803: 50            LD D,B
0804: 08            EX AF,AF'
0805: 08            EX AF,AF'
0806: 08            EX AF,AF'
0807: 05            DEC B
0808: 08            EX AF,AF'
0809: 15            DEC D
080A: 00            NOP
080B: 3A 08 90      LD A,(0x9008)
080E: 47            LD B,A
080F: 3A A7 92      LD A,(0x92A7)
0812: B0            OR B
0813: 20 06         JR NZ,0x081B
0815: 32 A0 9A      LD (0x9AA0),A
0818: C3 9E 04      JP 0x049E
081B: 3A 13 92      LD A,(0x9213)
081E: A7            AND A
081F: C8            RET Z
0820: AF            XOR A
0821: 32 42 98      LD (0x9842),A
0824: C3 9E 04      JP 0x049E
0827: C9            RET
0828: 3E 01         LD A,0x01
082A: 32 D6 92      LD (0x92D6),A
082D: 21 40 8B      LD HL,0x8B40
0830: 11 C0 8B      LD DE,0x8BC0
0833: 01 40 00      LD BC,0x0040
0836: ED B0         LDIR
0838: 21 40 93      LD HL,0x9340
083B: 11 C0 93      LD DE,0x93C0
083E: 0E 40         LD C,0x40
0840: ED B0         LDIR
0842: 21 40 9B      LD HL,0x9B40
0845: 11 C0 9B      LD DE,0x9BC0
0848: 0E 40         LD C,0x40
084A: ED B0         LDIR
084C: AF            XOR A
084D: 32 D6 92      LD (0x92D6),A
0850: 3A D7 92      LD A,(0x92D7)
0853: 3D            DEC A
0854: 28 FA         JR Z,0x0850
0856: C9            RET
0857: 3A AE 92      LD A,(0x92AE)
085A: 47            LD B,A
085B: FE 3C         CP 0x3C
085D: 30 06         JR NC,0x0865
085F: 3A C5 99      LD A,(0x99C5)
0862: 32 C4 99      LD (0x99C4),A
0865: 3A A7 92      LD A,(0x92A7)
0868: 4F            LD C,A
0869: 3A C0 99      LD A,(0x99C0)
086C: 21 09 09      LD HL,0x0909
086F: CD BE 08      CALL 0x08BE
0872: 32 C8 92      LD (0x92C8),A
0875: 3A AA 92      LD A,(0x92AA)
0878: A7            AND A
0879: 28 0D         JR Z,0x0888
087B: 21 C4 92      LD HL,0x92C4
087E: 3E 02         LD A,0x02
0880: 06 03         LD B,0x03
0882: DF            RST 0x18
0883: AF            XOR A
0884: 32 A0 9A      LD (0x9AA0),A
0887: C9            RET
0888: 3A C1 99      LD A,(0x99C1)
088B: 21 29 09      LD HL,0x0929
088E: CD BE 08      CALL 0x08BE
0891: 32 C4 92      LD (0x92C4),A
0894: 3A C2 99      LD A,(0x99C2)
0897: 21 CD 08      LD HL,0x08CD
089A: CD AD 08      CALL 0x08AD
089D: 32 C5 92      LD (0x92C5),A
08A0: 3A C3 99      LD A,(0x99C3)
08A3: 21 EB 08      LD HL,0x08EB
08A6: CD AD 08      CALL 0x08AD
08A9: 32 C6 92      LD (0x92C6),A
08AC: C9            RET
08AD: 5F            LD E,A
08AE: CB 27         SLA A
08B0: 83            ADD A,E
08B1: D7            RST 0x10
08B2: 78            LD A,B
08B3: FE 28         CP 0x28
08B5: 30 01         JR NC,0x08B8
08B7: 23            INC HL
08B8: A7            AND A
08B9: 20 01         JR NZ,0x08BC
08BB: 23            INC HL
08BC: 7E            LD A,(HL)
08BD: C9            RET
08BE: CB 27         SLA A
08C0: CF            RST 0x08
08C1: EB            EX DE,HL
08C2: 61            LD H,C
08C3: 3E 0A         LD A,0x0A
08C5: CD 61 10      CALL 0x1061
08C8: EB            EX DE,HL
08C9: 7A            LD A,D
08CA: D7            RST 0x10
08CB: 7E            LD A,(HL)
08CC: C9            RET
08CD: 09            ADD HL,BC
08CE: 07            RLCA
08CF: 05            DEC B
08D0: 08            EX AF,AF'
08D1: 06 04         LD B,0x04
08D3: 07            RLCA
08D4: 05            DEC B
08D5: 04            INC B
08D6: 06 04         LD B,0x04
08D8: 03            INC BC
08D9: 05            DEC B
08DA: 03            INC BC
08DB: 03            INC BC
08DC: 04            INC B
08DD: 03            INC BC
08DE: 03            INC BC
08DF: 04            INC B
08E0: 02            LD (BC),A
08E1: 02            LD (BC),A
08E2: 03            INC BC
08E3: 03            INC BC
08E4: 02            LD (BC),A
08E5: 03            INC BC
08E6: 02            LD (BC),A
08E7: 02            LD (BC),A
08E8: 02            LD (BC),A
08E9: 02            LD (BC),A
08EA: 02            LD (BC),A
08EB: 06 05         LD B,0x05
08ED: 04            INC B
08EE: 05            DEC B
08EF: 04            INC B
08F0: 03            INC BC
08F1: 05            DEC B
08F2: 03            INC BC
08F3: 03            INC BC
08F4: 04            INC B
08F5: 03            INC BC
08F6: 02            LD (BC),A
08F7: 04            INC B
08F8: 02            LD (BC),A
08F9: 02            LD (BC),A
08FA: 03            INC BC
08FB: 03            INC BC
08FC: 02            LD (BC),A
08FD: 03            INC BC
08FE: 02            LD (BC),A
08FF: 01 02 02      LD BC,0x0202
0902: 01 02 01      LD BC,0x0102
0905: 01 01 01      LD BC,0x0101
0908: 01 03 03      LD BC,0x0303
090B: 01 01 03      LD BC,0x0301
090E: 03            INC BC
090F: 03            INC BC
0910: 01 07 03      LD BC,0x0307
0913: 03            INC BC
0914: 01 07 03      LD BC,0x0307
0917: 03            INC BC
0918: 03            INC BC
0919: 07            RLCA
091A: 07            RLCA
091B: 03            INC BC
091C: 03            INC BC
091D: 0F            RRCA
091E: 07            RLCA
091F: 03            INC BC
0920: 03            INC BC
0921: 0F            RRCA
0922: 07            RLCA
0923: 07            RLCA
0924: 03            INC BC
0925: 0F            RRCA
0926: 07            RLCA
0927: 07            RLCA
0928: 07            RLCA
0929: 06 0A         LD B,0x0A
092B: 0F            RRCA
092C: 0F            RRCA
092D: 04            INC B
092E: 08            EX AF,AF'
092F: 0D            DEC C
0930: 0D            DEC C
0931: 04            INC B
0932: 06 0A         LD B,0x0A
0934: 0A            LD A,(BC)
0935: 3A A0 92      LD A,(0x92A0)
0938: 07            RLCA
0939: 07            RLCA
093A: 07            RLCA
093B: 07            RLCA
093C: 4F            LD C,A
093D: 3A 01 92      LD A,(0x9201)
0940: FE 03         CP 0x03
0942: C0            RET NZ
0943: 3A 40 98      LD A,(0x9840)
0946: 47            LD B,A
0947: 2F            CPL
0948: A1            AND C
0949: 21 6E 09      LD HL,0x096E
094C: 11 D9 83      LD DE,0x83D9
094F: CD 5F 09      CALL 0x095F
0952: 3A B3 99      LD A,(0x99B3)
0955: A7            AND A
0956: C8            RET Z
0957: 78            LD A,B
0958: A1            AND C
0959: 21 71 09      LD HL,0x0971
095C: 11 C4 83      LD DE,0x83C4
095F: C5            PUSH BC
0960: E6 01         AND 0x01
0962: 28 03         JR Z,0x0967
0964: 21 74 09      LD HL,0x0974
0967: 01 03 00      LD BC,0x0003
096A: ED B0         LDIR
096C: C1            POP BC
096D: C9            RET
096E: 19            ADD HL,DE
096F: 1E 01         LD E,0x01
0971: 19            ADD HL,DE
0972: 1E 02         LD E,0x02
0974: 24            INC H
0975: 24            INC H
0976: 24            INC H
0977: 3A B5 99      LD A,(0x99B5)
097A: FE BB         CP 0xBB
097C: CA 6C 33      JP Z,0x336C
097F: 3A 01 92      LD A,(0x9201)
0982: FE 03         CP 0x03
0984: 20 19         JR NZ,0x099F
0986: 21 E9 99      LD HL,0x99E9
0989: 7E            LD A,(HL)
098A: C6 01         ADD A,0x01
098C: 27            DAA
098D: FE 60         CP 0x60
098F: 20 01         JR NZ,0x0992
0991: AF            XOR A
0992: 06 04         LD B,0x04
0994: 3F            CCF
0995: 77            LD (HL),A
0996: 2D            DEC L
0997: 7E            LD A,(HL)
0998: CE 00         ADC A,0x00
099A: 27            DAA
099B: 10 F8         DJNZ 0x0995
099D: 18 42         JR 0x09E1
099F: 3A B8 99      LD A,(0x99B8)
09A2: FE A0         CP 0xA0
09A4: 11 3C 80      LD DE,0x803C
09A7: 28 30         JR Z,0x09D9
09A9: 3A B5 99      LD A,(0x99B5)
09AC: 21 CF 09      LD HL,0x09CF
09AF: 01 06 00      LD BC,0x0006
09B2: ED B8         LDDR
09B4: 1D            DEC E
09B5: 4F            LD C,A
09B6: 07            RLCA
09B7: 07            RLCA
09B8: 07            RLCA
09B9: 07            RLCA
09BA: E6 0F         AND 0x0F
09BC: 28 02         JR Z,0x09C0
09BE: 12            LD (DE),A
09BF: 1D            DEC E
09C0: 79            LD A,C
09C1: E6 0F         AND 0x0F
09C3: 12            LD (DE),A
09C4: 1D            DEC E
09C5: 3E 24         LD A,0x24
09C7: 12            LD (DE),A
09C8: 18 17         JR 0x09E1
09CA: 1D            DEC E
09CB: 12            LD (DE),A
09CC: 0D            DEC C
09CD: 0E 1B         LD C,0x1B
09CF: 0C            INC C
09D0: 22 0A 15      LD (0x150A),HL
09D3: 19            ADD HL,DE
09D4: 24            INC H
09D5: 0E 0E         LD C,0x0E
09D7: 1B            DEC DE
09D8: 0F            RRCA
09D9: 21 D8 09      LD HL,0x09D8
09DC: 01 09 00      LD BC,0x0009
09DF: ED B8         LDDR
09E1: 3A 01 92      LD A,(0x9201)
09E4: A7            AND A
09E5: C8            RET Z
09E6: 3D            DEC A
09E7: 20 16         JR NZ,0x09FF
09E9: 3A B5 99      LD A,(0x99B5)
09EC: A7            AND A
09ED: 28 10         JR Z,0x09FF
09EF: 3E 02         LD A,0x02
09F1: 32 01 92      LD (0x9201),A
09F4: AF            XOR A
09F5: 21 A0 9A      LD HL,0x9AA0
09F8: 06 08         LD B,0x08
09FA: DF            RST 0x18
09FB: 2C            INC L
09FC: 06 0F         LD B,0x0F
09FE: DF            RST 0x18
09FF: 3A B5 99      LD A,(0x99B5)
0A02: 4F            LD C,A
0A03: 3A B8 99      LD A,(0x99B8)
0A06: 47            LD B,A
0A07: 91            SUB C
0A08: C8            RET Z
0A09: 38 0F         JR C,0x0A1A
0A0B: 27            DAA
0A0C: 3D            DEC A
0A0D: 32 B3 99      LD (0x99B3),A
0A10: 79            LD A,C
0A11: 32 B8 99      LD (0x99B8),A
0A14: 3E 03         LD A,0x03
0A16: 32 01 92      LD (0x9201),A
0A19: C9            RET
0A1A: 79            LD A,C
0A1B: 32 B8 99      LD (0x99B8),A
0A1E: FE A0         CP 0xA0
0A20: C8            RET Z
0A21: 90            SUB B
0A22: 27            DAA
0A23: 32 79 9A      LD (0x9A79),A
0A26: C9            RET
0A27: 21 03 91      LD HL,0x9103
0A2A: 06 05         LD B,0x05
0A2C: 1A            LD A,(DE)
0A2D: 1C            INC E
0A2E: FE 24         CP 0x24
0A30: 20 01         JR NZ,0x0A33
0A32: AF            XOR A
0A33: ED 67         DB 0xED,0x67 ; undefined/alias
0A35: CB 40         BIT 0,B
0A37: 20 01         JR NZ,0x0A3A
0A39: 2D            DEC L
0A3A: 10 F0         DJNZ 0x0A2C
0A3C: AF            XOR A
0A3D: ED 67         DB 0xED,0x67 ; undefined/alias
0A3F: 2D            DEC L
0A40: 36 00         LD (HL),0x00
0A42: 2E 03         LD L,0x03
0A44: 11 E5 99      LD DE,0x99E5
0A47: 06 04         LD B,0x04
0A49: A7            AND A
0A4A: 1A            LD A,(DE)
0A4B: 8E            ADC A,(HL)
0A4C: 27            DAA
0A4D: 12            LD (DE),A
0A4E: 1D            DEC E
0A4F: 2D            DEC L
0A50: 10 F8         DJNZ 0x0A4A
0A52: C9            RET
0A53: 06 01         LD B,0x01
0A55: 25            DEC H
0A56: 24            INC H
0A57: 20 05         JR NZ,0x0A5E
0A59: 7D            LD A,L
0A5A: FE 0A         CP 0x0A
0A5C: 38 0A         JR C,0x0A68
0A5E: 3E 0A         LD A,0x0A
0A60: CD 61 10      CALL 0x1061
0A63: F5            PUSH AF
0A64: 04            INC B
0A65: 18 EE         JR 0x0A55
0A67: F1            POP AF
0A68: CD 6E 0A      CALL 0x0A6E
0A6B: 10 FA         DJNZ 0x0A67
0A6D: C9            RET
0A6E: 12            LD (DE),A
0A6F: C3 20 00      JP 0x0020
0A72: 2A 44 98      LD HL,(0x9844)
0A75: ED 5B 46 98   LD DE,(0x9846)
0A79: 7A            LD A,D
0A7A: B3            OR E
0A7B: 20 05         JR NZ,0x0A82
0A7D: 11 00 00      LD DE,0x0000
0A80: 18 51         JR 0x0AD3
0A82: CB 7A         BIT 7,D
0A84: 20 0A         JR NZ,0x0A90
0A86: CB 7C         BIT 7,H
0A88: 20 06         JR NZ,0x0A90
0A8A: 29            ADD HL,HL
0A8B: EB            EX DE,HL
0A8C: 29            ADD HL,HL
0A8D: EB            EX DE,HL
0A8E: 18 F2         JR 0x0A82
0A90: 7A            LD A,D
0A91: CD 61 10      CALL 0x1061
0A94: E5            PUSH HL
0A95: 67            LD H,A
0A96: 2E 00         LD L,0x00
0A98: 7A            LD A,D
0A99: CD 61 10      CALL 0x1061
0A9C: E3            EX (SP),HL
0A9D: 11 B0 99      LD DE,0x99B0
0AA0: 06 04         LD B,0x04
0AA2: 7C            LD A,H
0AA3: 26 00         LD H,0x00
0AA5: EB            EX DE,HL
0AA6: ED 6F         DB 0xED,0x6F ; undefined/alias
0AA8: CB 40         BIT 0,B
0AAA: 28 01         JR Z,0x0AAD
0AAC: 2C            INC L
0AAD: EB            EX DE,HL
0AAE: CD 06 0B      CALL 0x0B06
0AB1: 08            EX AF,AF'
0AB2: E3            EX (SP),HL
0AB3: CD 06 0B      CALL 0x0B06
0AB6: E3            EX (SP),HL
0AB7: D7            RST 0x10
0AB8: 08            EX AF,AF'
0AB9: 84            ADD A,H
0ABA: 26 00         LD H,0x00
0ABC: 10 E7         DJNZ 0x0AA5
0ABE: D1            POP DE
0ABF: FE 05         CP 0x05
0AC1: 38 14         JR C,0x0AD7
0AC3: ED 5B B0 99   LD DE,(0x99b0)
0AC7: 7A            LD A,D
0AC8: C6 01         ADD A,0x01
0ACA: 27            DAA
0ACB: 57            LD D,A
0ACC: 30 05         JR NC,0x0AD3
0ACE: 7B            LD A,E
0ACF: C6 01         ADD A,0x01
0AD1: 27            DAA
0AD2: 5F            LD E,A
0AD3: ED 53 B0 99   LD (0x99b0),DE
0AD7: 06 04         LD B,0x04
0AD9: 0E 00         LD C,0x00
0ADB: 21 B0 99      LD HL,0x99B0
0ADE: 11 38 81      LD DE,0x8138
0AE1: 05            DEC B
0AE2: 20 04         JR NZ,0x0AE8
0AE4: 3E 2A         LD A,0x2A
0AE6: 12            LD (DE),A
0AE7: E7            RST 0x20
0AE8: 04            INC B
0AE9: AF            XOR A
0AEA: ED 6F         DB 0xED,0x6F ; undefined/alias
0AEC: CB 40         BIT 0,B
0AEE: 28 01         JR Z,0x0AF1
0AF0: 2C            INC L
0AF1: A7            AND A
0AF2: 20 04         JR NZ,0x0AF8
0AF4: CB 41         BIT 0,C
0AF6: 28 04         JR Z,0x0AFC
0AF8: CB C1         SET 0,C
0AFA: 12            LD (DE),A
0AFB: E7            RST 0x20
0AFC: 78            LD A,B
0AFD: FE 03         CP 0x03
0AFF: 20 02         JR NZ,0x0B03
0B01: CB C1         SET 0,C
0B03: 10 DC         DJNZ 0x0AE1
0B05: C9            RET
0B06: 3E 0A         LD A,0x0A
0B08: CD 4E 10      CALL 0x104E
0B0B: 7C            LD A,H
0B0C: 26 00         LD H,0x00
0B0E: C9            RET
0B0F: FF            RST 0x38
0B10: FF            RST 0x38
0B11: FF            RST 0x38
0B12: FF            RST 0x38
0B13: FF            RST 0x38
0B14: FF            RST 0x38
0B15: FF            RST 0x38
0B16: FF            RST 0x38
0B17: FF            RST 0x38
0B18: FF            RST 0x38
0B19: FF            RST 0x38
0B1A: FF            RST 0x38
0B1B: FF            RST 0x38
0B1C: FF            RST 0x38
0B1D: FF            RST 0x38
0B1E: FF            RST 0x38
0B1F: FF            RST 0x38
0B20: FF            RST 0x38
0B21: FF            RST 0x38
0B22: FF            RST 0x38
0B23: FF            RST 0x38
0B24: FF            RST 0x38
0B25: FF            RST 0x38
0B26: FF            RST 0x38
0B27: FF            RST 0x38
0B28: FF            RST 0x38
0B29: FF            RST 0x38
0B2A: FF            RST 0x38
0B2B: FF            RST 0x38
0B2C: FF            RST 0x38
0B2D: FF            RST 0x38
0B2E: FF            RST 0x38
0B2F: FF            RST 0x38
0B30: FF            RST 0x38
0B31: FF            RST 0x38
0B32: FF            RST 0x38
0B33: FF            RST 0x38
0B34: FF            RST 0x38
0B35: FF            RST 0x38
0B36: FF            RST 0x38
0B37: FF            RST 0x38
0B38: FF            RST 0x38
0B39: FF            RST 0x38
0B3A: FF            RST 0x38
0B3B: FF            RST 0x38
0B3C: FF            RST 0x38
0B3D: FF            RST 0x38
0B3E: FF            RST 0x38
0B3F: FF            RST 0x38
0B40: FF            RST 0x38
0B41: FF            RST 0x38
0B42: FF            RST 0x38
0B43: FF            RST 0x38
0B44: FF            RST 0x38
0B45: FF            RST 0x38
0B46: FF            RST 0x38
0B47: FF            RST 0x38
0B48: FF            RST 0x38
0B49: FF            RST 0x38
0B4A: FF            RST 0x38
0B4B: FF            RST 0x38
0B4C: FF            RST 0x38
0B4D: FF            RST 0x38
0B4E: FF            RST 0x38
0B4F: FF            RST 0x38
0B50: FF            RST 0x38
0B51: FF            RST 0x38
0B52: FF            RST 0x38
0B53: FF            RST 0x38
0B54: FF            RST 0x38
0B55: FF            RST 0x38
0B56: FF            RST 0x38
0B57: FF            RST 0x38
0B58: FF            RST 0x38
0B59: FF            RST 0x38
0B5A: FF            RST 0x38
0B5B: FF            RST 0x38
0B5C: FF            RST 0x38
0B5D: FF            RST 0x38
0B5E: FF            RST 0x38
0B5F: FF            RST 0x38
0B60: FF            RST 0x38
0B61: FF            RST 0x38
0B62: FF            RST 0x38
0B63: FF            RST 0x38
0B64: FF            RST 0x38
0B65: FF            RST 0x38
0B66: FF            RST 0x38
0B67: FF            RST 0x38
0B68: FF            RST 0x38
0B69: FF            RST 0x38
0B6A: FF            RST 0x38
0B6B: FF            RST 0x38
0B6C: FF            RST 0x38
0B6D: FF            RST 0x38
0B6E: FF            RST 0x38
0B6F: FF            RST 0x38
0B70: FF            RST 0x38
0B71: FF            RST 0x38
0B72: FF            RST 0x38
0B73: FF            RST 0x38
0B74: FF            RST 0x38
0B75: FF            RST 0x38
0B76: FF            RST 0x38
0B77: FF            RST 0x38
0B78: FF            RST 0x38
0B79: FF            RST 0x38
0B7A: FF            RST 0x38
0B7B: FF            RST 0x38
0B7C: FF            RST 0x38
0B7D: FF            RST 0x38
0B7E: FF            RST 0x38
0B7F: FF            RST 0x38
0B80: FF            RST 0x38
0B81: FF            RST 0x38
0B82: FF            RST 0x38
0B83: FF            RST 0x38
0B84: FF            RST 0x38
0B85: FF            RST 0x38
0B86: FF            RST 0x38
0B87: FF            RST 0x38
0B88: FF            RST 0x38
0B89: FF            RST 0x38
0B8A: FF            RST 0x38
0B8B: FF            RST 0x38
0B8C: FF            RST 0x38
0B8D: FF            RST 0x38
0B8E: FF            RST 0x38
0B8F: FF            RST 0x38
0B90: FF            RST 0x38
0B91: FF            RST 0x38
0B92: FF            RST 0x38
0B93: FF            RST 0x38
0B94: FF            RST 0x38
0B95: FF            RST 0x38
0B96: FF            RST 0x38
0B97: FF            RST 0x38
0B98: FF            RST 0x38
0B99: FF            RST 0x38
0B9A: FF            RST 0x38
0B9B: FF            RST 0x38
0B9C: FF            RST 0x38
0B9D: FF            RST 0x38
0B9E: FF            RST 0x38
0B9F: FF            RST 0x38
0BA0: FF            RST 0x38
0BA1: FF            RST 0x38
0BA2: FF            RST 0x38
0BA3: FF            RST 0x38
0BA4: FF            RST 0x38
0BA5: FF            RST 0x38
0BA6: FF            RST 0x38
0BA7: FF            RST 0x38
0BA8: FF            RST 0x38
0BA9: FF            RST 0x38
0BAA: FF            RST 0x38
0BAB: FF            RST 0x38
0BAC: FF            RST 0x38
0BAD: FF            RST 0x38
0BAE: FF            RST 0x38
0BAF: FF            RST 0x38
0BB0: FF            RST 0x38
0BB1: FF            RST 0x38
0BB2: FF            RST 0x38
0BB3: FF            RST 0x38
0BB4: FF            RST 0x38
0BB5: FF            RST 0x38
0BB6: FF            RST 0x38
0BB7: FF            RST 0x38
0BB8: FF            RST 0x38
0BB9: FF            RST 0x38
0BBA: FF            RST 0x38
0BBB: FF            RST 0x38
0BBC: FF            RST 0x38
0BBD: FF            RST 0x38
0BBE: FF            RST 0x38
0BBF: FF            RST 0x38
0BC0: FF            RST 0x38
0BC1: FF            RST 0x38
0BC2: FF            RST 0x38
0BC3: FF            RST 0x38
0BC4: FF            RST 0x38
0BC5: FF            RST 0x38
0BC6: FF            RST 0x38
0BC7: FF            RST 0x38
0BC8: FF            RST 0x38
0BC9: FF            RST 0x38
0BCA: FF            RST 0x38
0BCB: FF            RST 0x38
0BCC: FF            RST 0x38
0BCD: FF            RST 0x38
0BCE: FF            RST 0x38
0BCF: FF            RST 0x38
0BD0: FF            RST 0x38
0BD1: FF            RST 0x38
0BD2: FF            RST 0x38
0BD3: FF            RST 0x38
0BD4: FF            RST 0x38
0BD5: FF            RST 0x38
0BD6: FF            RST 0x38
0BD7: FF            RST 0x38
0BD8: FF            RST 0x38
0BD9: FF            RST 0x38
0BDA: FF            RST 0x38
0BDB: FF            RST 0x38
0BDC: FF            RST 0x38
0BDD: FF            RST 0x38
0BDE: FF            RST 0x38
0BDF: FF            RST 0x38
0BE0: FF            RST 0x38
0BE1: FF            RST 0x38
0BE2: FF            RST 0x38
0BE3: FF            RST 0x38
0BE4: FF            RST 0x38
0BE5: FF            RST 0x38
0BE6: FF            RST 0x38
0BE7: FF            RST 0x38
0BE8: FF            RST 0x38
0BE9: FF            RST 0x38
0BEA: FF            RST 0x38
0BEB: FF            RST 0x38
0BEC: FF            RST 0x38
0BED: FF            RST 0x38
0BEE: FF            RST 0x38
0BEF: FF            RST 0x38
0BF0: FF            RST 0x38
0BF1: FF            RST 0x38
0BF2: FF            RST 0x38
0BF3: FF            RST 0x38
0BF4: FF            RST 0x38
0BF5: FF            RST 0x38
0BF6: FF            RST 0x38
0BF7: FF            RST 0x38
0BF8: FF            RST 0x38
0BF9: FF            RST 0x38
0BFA: FF            RST 0x38
0BFB: FF            RST 0x38
0BFC: FF            RST 0x38
0BFD: FF            RST 0x38
0BFE: FF            RST 0x38
0BFF: FF            RST 0x38
0C00: FF            RST 0x38
0C01: FF            RST 0x38
0C02: FF            RST 0x38
0C03: FF            RST 0x38
0C04: FF            RST 0x38
0C05: FF            RST 0x38
0C06: FF            RST 0x38
0C07: FF            RST 0x38
0C08: FF            RST 0x38
0C09: FF            RST 0x38
0C0A: FF            RST 0x38
0C0B: FF            RST 0x38
0C0C: FF            RST 0x38
0C0D: FF            RST 0x38
0C0E: FF            RST 0x38
0C0F: FF            RST 0x38
0C10: FF            RST 0x38
0C11: FF            RST 0x38
0C12: FF            RST 0x38
0C13: FF            RST 0x38
0C14: FF            RST 0x38
0C15: FF            RST 0x38
0C16: FF            RST 0x38
0C17: FF            RST 0x38
0C18: FF            RST 0x38
0C19: FF            RST 0x38
0C1A: FF            RST 0x38
0C1B: FF            RST 0x38
0C1C: FF            RST 0x38
0C1D: FF            RST 0x38
0C1E: FF            RST 0x38
0C1F: FF            RST 0x38
0C20: FF            RST 0x38
0C21: FF            RST 0x38
0C22: FF            RST 0x38
0C23: FF            RST 0x38
0C24: FF            RST 0x38
0C25: FF            RST 0x38
0C26: FF            RST 0x38
0C27: FF            RST 0x38
0C28: FF            RST 0x38
0C29: FF            RST 0x38
0C2A: FF            RST 0x38
0C2B: FF            RST 0x38
0C2C: FF            RST 0x38
0C2D: FF            RST 0x38
0C2E: FF            RST 0x38
0C2F: FF            RST 0x38
0C30: FF            RST 0x38
0C31: FF            RST 0x38
0C32: FF            RST 0x38
0C33: FF            RST 0x38
0C34: FF            RST 0x38
0C35: FF            RST 0x38
0C36: FF            RST 0x38
0C37: FF            RST 0x38
0C38: FF            RST 0x38
0C39: FF            RST 0x38
0C3A: FF            RST 0x38
0C3B: FF            RST 0x38
0C3C: FF            RST 0x38
0C3D: FF            RST 0x38
0C3E: FF            RST 0x38
0C3F: FF            RST 0x38
0C40: FF            RST 0x38
0C41: FF            RST 0x38
0C42: FF            RST 0x38
0C43: FF            RST 0x38
0C44: FF            RST 0x38
0C45: FF            RST 0x38
0C46: FF            RST 0x38
0C47: FF            RST 0x38
0C48: FF            RST 0x38
0C49: FF            RST 0x38
0C4A: FF            RST 0x38
0C4B: FF            RST 0x38
0C4C: FF            RST 0x38
0C4D: FF            RST 0x38
0C4E: FF            RST 0x38
0C4F: FF            RST 0x38
0C50: FF            RST 0x38
0C51: FF            RST 0x38
0C52: FF            RST 0x38
0C53: FF            RST 0x38
0C54: FF            RST 0x38
0C55: FF            RST 0x38
0C56: FF            RST 0x38
0C57: FF            RST 0x38
0C58: FF            RST 0x38
0C59: FF            RST 0x38
0C5A: FF            RST 0x38
0C5B: FF            RST 0x38
0C5C: FF            RST 0x38
0C5D: FF            RST 0x38
0C5E: FF            RST 0x38
0C5F: FF            RST 0x38
0C60: FF            RST 0x38
0C61: FF            RST 0x38
0C62: FF            RST 0x38
0C63: FF            RST 0x38
0C64: FF            RST 0x38
0C65: FF            RST 0x38
0C66: FF            RST 0x38
0C67: FF            RST 0x38
0C68: FF            RST 0x38
0C69: FF            RST 0x38
0C6A: FF            RST 0x38
0C6B: FF            RST 0x38
0C6C: FF            RST 0x38
0C6D: FF            RST 0x38
0C6E: FF            RST 0x38
0C6F: FF            RST 0x38
0C70: FF            RST 0x38
0C71: FF            RST 0x38
0C72: FF            RST 0x38
0C73: FF            RST 0x38
0C74: FF            RST 0x38
0C75: FF            RST 0x38
0C76: FF            RST 0x38
0C77: FF            RST 0x38
0C78: FF            RST 0x38
0C79: FF            RST 0x38
0C7A: FF            RST 0x38
0C7B: FF            RST 0x38
0C7C: FF            RST 0x38
0C7D: FF            RST 0x38
0C7E: FF            RST 0x38
0C7F: FF            RST 0x38
0C80: FF            RST 0x38
0C81: FF            RST 0x38
0C82: FF            RST 0x38
0C83: FF            RST 0x38
0C84: FF            RST 0x38
0C85: FF            RST 0x38
0C86: FF            RST 0x38
0C87: FF            RST 0x38
0C88: FF            RST 0x38
0C89: FF            RST 0x38
0C8A: FF            RST 0x38
0C8B: FF            RST 0x38
0C8C: FF            RST 0x38
0C8D: FF            RST 0x38
0C8E: FF            RST 0x38
0C8F: FF            RST 0x38
0C90: FF            RST 0x38
0C91: FF            RST 0x38
0C92: FF            RST 0x38
0C93: FF            RST 0x38
0C94: FF            RST 0x38
0C95: FF            RST 0x38
0C96: FF            RST 0x38
0C97: FF            RST 0x38
0C98: FF            RST 0x38
0C99: FF            RST 0x38
0C9A: FF            RST 0x38
0C9B: FF            RST 0x38
0C9C: FF            RST 0x38
0C9D: FF            RST 0x38
0C9E: FF            RST 0x38
0C9F: FF            RST 0x38
0CA0: FF            RST 0x38
0CA1: FF            RST 0x38
0CA2: FF            RST 0x38
0CA3: FF            RST 0x38
0CA4: FF            RST 0x38
0CA5: FF            RST 0x38
0CA6: FF            RST 0x38
0CA7: FF            RST 0x38
0CA8: FF            RST 0x38
0CA9: FF            RST 0x38
0CAA: FF            RST 0x38
0CAB: FF            RST 0x38
0CAC: FF            RST 0x38
0CAD: FF            RST 0x38
0CAE: FF            RST 0x38
0CAF: FF            RST 0x38
0CB0: FF            RST 0x38
0CB1: FF            RST 0x38
0CB2: FF            RST 0x38
0CB3: FF            RST 0x38
0CB4: FF            RST 0x38
0CB5: FF            RST 0x38
0CB6: FF            RST 0x38
0CB7: FF            RST 0x38
0CB8: FF            RST 0x38
0CB9: FF            RST 0x38
0CBA: FF            RST 0x38
0CBB: FF            RST 0x38
0CBC: FF            RST 0x38
0CBD: FF            RST 0x38
0CBE: FF            RST 0x38
0CBF: FF            RST 0x38
0CC0: FF            RST 0x38
0CC1: FF            RST 0x38
0CC2: FF            RST 0x38
0CC3: FF            RST 0x38
0CC4: FF            RST 0x38
0CC5: FF            RST 0x38
0CC6: FF            RST 0x38
0CC7: FF            RST 0x38
0CC8: FF            RST 0x38
0CC9: FF            RST 0x38
0CCA: FF            RST 0x38
0CCB: FF            RST 0x38
0CCC: FF            RST 0x38
0CCD: FF            RST 0x38
0CCE: FF            RST 0x38
0CCF: FF            RST 0x38
0CD0: FF            RST 0x38
0CD1: FF            RST 0x38
0CD2: FF            RST 0x38
0CD3: FF            RST 0x38
0CD4: FF            RST 0x38
0CD5: FF            RST 0x38
0CD6: FF            RST 0x38
0CD7: FF            RST 0x38
0CD8: FF            RST 0x38
0CD9: FF            RST 0x38
0CDA: FF            RST 0x38
0CDB: FF            RST 0x38
0CDC: FF            RST 0x38
0CDD: FF            RST 0x38
0CDE: FF            RST 0x38
0CDF: FF            RST 0x38
0CE0: FF            RST 0x38
0CE1: FF            RST 0x38
0CE2: FF            RST 0x38
0CE3: FF            RST 0x38
0CE4: FF            RST 0x38
0CE5: FF            RST 0x38
0CE6: FF            RST 0x38
0CE7: FF            RST 0x38
0CE8: FF            RST 0x38
0CE9: FF            RST 0x38
0CEA: FF            RST 0x38
0CEB: FF            RST 0x38
0CEC: FF            RST 0x38
0CED: FF            RST 0x38
0CEE: FF            RST 0x38
0CEF: FF            RST 0x38
0CF0: FF            RST 0x38
0CF1: FF            RST 0x38
0CF2: FF            RST 0x38
0CF3: FF            RST 0x38
0CF4: FF            RST 0x38
0CF5: FF            RST 0x38
0CF6: FF            RST 0x38
0CF7: FF            RST 0x38
0CF8: FF            RST 0x38
0CF9: FF            RST 0x38
0CFA: FF            RST 0x38
0CFB: FF            RST 0x38
0CFC: FF            RST 0x38
0CFD: FF            RST 0x38
0CFE: FF            RST 0x38
0CFF: FF            RST 0x38
0D00: FF            RST 0x38
0D01: FF            RST 0x38
0D02: FF            RST 0x38
0D03: FF            RST 0x38
0D04: FF            RST 0x38
0D05: FF            RST 0x38
0D06: FF            RST 0x38
0D07: FF            RST 0x38
0D08: FF            RST 0x38
0D09: FF            RST 0x38
0D0A: FF            RST 0x38
0D0B: FF            RST 0x38
0D0C: FF            RST 0x38
0D0D: FF            RST 0x38
0D0E: FF            RST 0x38
0D0F: FF            RST 0x38
0D10: FF            RST 0x38
0D11: FF            RST 0x38
0D12: FF            RST 0x38
0D13: FF            RST 0x38
0D14: FF            RST 0x38
0D15: FF            RST 0x38
0D16: FF            RST 0x38
0D17: FF            RST 0x38
0D18: FF            RST 0x38
0D19: FF            RST 0x38
0D1A: FF            RST 0x38
0D1B: FF            RST 0x38
0D1C: FF            RST 0x38
0D1D: FF            RST 0x38
0D1E: FF            RST 0x38
0D1F: FF            RST 0x38
0D20: FF            RST 0x38
0D21: FF            RST 0x38
0D22: FF            RST 0x38
0D23: FF            RST 0x38
0D24: FF            RST 0x38
0D25: FF            RST 0x38
0D26: FF            RST 0x38
0D27: FF            RST 0x38
0D28: FF            RST 0x38
0D29: FF            RST 0x38
0D2A: FF            RST 0x38
0D2B: FF            RST 0x38
0D2C: FF            RST 0x38
0D2D: FF            RST 0x38
0D2E: FF            RST 0x38
0D2F: FF            RST 0x38
0D30: FF            RST 0x38
0D31: FF            RST 0x38
0D32: FF            RST 0x38
0D33: FF            RST 0x38
0D34: FF            RST 0x38
0D35: FF            RST 0x38
0D36: FF            RST 0x38
0D37: FF            RST 0x38
0D38: FF            RST 0x38
0D39: FF            RST 0x38
0D3A: FF            RST 0x38
0D3B: FF            RST 0x38
0D3C: FF            RST 0x38
0D3D: FF            RST 0x38
0D3E: FF            RST 0x38
0D3F: FF            RST 0x38
0D40: FF            RST 0x38
0D41: FF            RST 0x38
0D42: FF            RST 0x38
0D43: FF            RST 0x38
0D44: FF            RST 0x38
0D45: FF            RST 0x38
0D46: FF            RST 0x38
0D47: FF            RST 0x38
0D48: FF            RST 0x38
0D49: FF            RST 0x38
0D4A: FF            RST 0x38
0D4B: FF            RST 0x38
0D4C: FF            RST 0x38
0D4D: FF            RST 0x38
0D4E: FF            RST 0x38
0D4F: FF            RST 0x38
0D50: FF            RST 0x38
0D51: FF            RST 0x38
0D52: FF            RST 0x38
0D53: FF            RST 0x38
0D54: FF            RST 0x38
0D55: FF            RST 0x38
0D56: FF            RST 0x38
0D57: FF            RST 0x38
0D58: FF            RST 0x38
0D59: FF            RST 0x38
0D5A: FF            RST 0x38
0D5B: FF            RST 0x38
0D5C: FF            RST 0x38
0D5D: FF            RST 0x38
0D5E: FF            RST 0x38
0D5F: FF            RST 0x38
0D60: FF            RST 0x38
0D61: FF            RST 0x38
0D62: FF            RST 0x38
0D63: FF            RST 0x38
0D64: FF            RST 0x38
0D65: FF            RST 0x38
0D66: FF            RST 0x38
0D67: FF            RST 0x38
0D68: FF            RST 0x38
0D69: FF            RST 0x38
0D6A: FF            RST 0x38
0D6B: FF            RST 0x38
0D6C: FF            RST 0x38
0D6D: FF            RST 0x38
0D6E: FF            RST 0x38
0D6F: FF            RST 0x38
0D70: FF            RST 0x38
0D71: FF            RST 0x38
0D72: FF            RST 0x38
0D73: FF            RST 0x38
0D74: FF            RST 0x38
0D75: FF            RST 0x38
0D76: FF            RST 0x38
0D77: FF            RST 0x38
0D78: FF            RST 0x38
0D79: FF            RST 0x38
0D7A: FF            RST 0x38
0D7B: FF            RST 0x38
0D7C: FF            RST 0x38
0D7D: FF            RST 0x38
0D7E: FF            RST 0x38
0D7F: FF            RST 0x38
0D80: FF            RST 0x38
0D81: FF            RST 0x38
0D82: FF            RST 0x38
0D83: FF            RST 0x38
0D84: FF            RST 0x38
0D85: FF            RST 0x38
0D86: FF            RST 0x38
0D87: FF            RST 0x38
0D88: FF            RST 0x38
0D89: FF            RST 0x38
0D8A: FF            RST 0x38
0D8B: FF            RST 0x38
0D8C: FF            RST 0x38
0D8D: FF            RST 0x38
0D8E: FF            RST 0x38
0D8F: FF            RST 0x38
0D90: FF            RST 0x38
0D91: FF            RST 0x38
0D92: FF            RST 0x38
0D93: FF            RST 0x38
0D94: FF            RST 0x38
0D95: FF            RST 0x38
0D96: FF            RST 0x38
0D97: FF            RST 0x38
0D98: FF            RST 0x38
0D99: FF            RST 0x38
0D9A: FF            RST 0x38
0D9B: FF            RST 0x38
0D9C: FF            RST 0x38
0D9D: FF            RST 0x38
0D9E: FF            RST 0x38
0D9F: FF            RST 0x38
0DA0: FF            RST 0x38
0DA1: FF            RST 0x38
0DA2: FF            RST 0x38
0DA3: FF            RST 0x38
0DA4: FF            RST 0x38
0DA5: FF            RST 0x38
0DA6: FF            RST 0x38
0DA7: FF            RST 0x38
0DA8: FF            RST 0x38
0DA9: FF            RST 0x38
0DAA: FF            RST 0x38
0DAB: FF            RST 0x38
0DAC: FF            RST 0x38
0DAD: FF            RST 0x38
0DAE: FF            RST 0x38
0DAF: FF            RST 0x38
0DB0: FF            RST 0x38
0DB1: FF            RST 0x38
0DB2: FF            RST 0x38
0DB3: FF            RST 0x38
0DB4: FF            RST 0x38
0DB5: FF            RST 0x38
0DB6: FF            RST 0x38
0DB7: FF            RST 0x38
0DB8: FF            RST 0x38
0DB9: FF            RST 0x38
0DBA: FF            RST 0x38
0DBB: FF            RST 0x38
0DBC: FF            RST 0x38
0DBD: FF            RST 0x38
0DBE: FF            RST 0x38
0DBF: FF            RST 0x38
0DC0: FF            RST 0x38
0DC1: FF            RST 0x38
0DC2: FF            RST 0x38
0DC3: FF            RST 0x38
0DC4: FF            RST 0x38
0DC5: FF            RST 0x38
0DC6: FF            RST 0x38
0DC7: FF            RST 0x38
0DC8: FF            RST 0x38
0DC9: FF            RST 0x38
0DCA: FF            RST 0x38
0DCB: FF            RST 0x38
0DCC: FF            RST 0x38
0DCD: FF            RST 0x38
0DCE: FF            RST 0x38
0DCF: FF            RST 0x38
0DD0: FF            RST 0x38
0DD1: FF            RST 0x38
0DD2: FF            RST 0x38
0DD3: FF            RST 0x38
0DD4: FF            RST 0x38
0DD5: FF            RST 0x38
0DD6: FF            RST 0x38
0DD7: FF            RST 0x38
0DD8: FF            RST 0x38
0DD9: FF            RST 0x38
0DDA: FF            RST 0x38
0DDB: FF            RST 0x38
0DDC: FF            RST 0x38
0DDD: FF            RST 0x38
0DDE: FF            RST 0x38
0DDF: FF            RST 0x38
0DE0: FF            RST 0x38
0DE1: FF            RST 0x38
0DE2: FF            RST 0x38
0DE3: FF            RST 0x38
0DE4: FF            RST 0x38
0DE5: FF            RST 0x38
0DE6: FF            RST 0x38
0DE7: FF            RST 0x38
0DE8: FF            RST 0x38
0DE9: FF            RST 0x38
0DEA: FF            RST 0x38
0DEB: FF            RST 0x38
0DEC: FF            RST 0x38
0DED: FF            RST 0x38
0DEE: FF            RST 0x38
0DEF: FF            RST 0x38
0DF0: FF            RST 0x38
0DF1: FF            RST 0x38
0DF2: FF            RST 0x38
0DF3: FF            RST 0x38
0DF4: FF            RST 0x38
0DF5: FF            RST 0x38
0DF6: FF            RST 0x38
0DF7: FF            RST 0x38
0DF8: FF            RST 0x38
0DF9: FF            RST 0x38
0DFA: FF            RST 0x38
0DFB: FF            RST 0x38
0DFC: FF            RST 0x38
0DFD: FF            RST 0x38
0DFE: FF            RST 0x38
0DFF: FF            RST 0x38
0E00: FF            RST 0x38
0E01: FF            RST 0x38
0E02: FF            RST 0x38
0E03: FF            RST 0x38
0E04: FF            RST 0x38
0E05: FF            RST 0x38
0E06: FF            RST 0x38
0E07: FF            RST 0x38
0E08: FF            RST 0x38
0E09: FF            RST 0x38
0E0A: FF            RST 0x38
0E0B: FF            RST 0x38
0E0C: FF            RST 0x38
0E0D: FF            RST 0x38
0E0E: FF            RST 0x38
0E0F: FF            RST 0x38
0E10: FF            RST 0x38
0E11: FF            RST 0x38
0E12: FF            RST 0x38
0E13: FF            RST 0x38
0E14: FF            RST 0x38
0E15: FF            RST 0x38
0E16: FF            RST 0x38
0E17: FF            RST 0x38
0E18: FF            RST 0x38
0E19: FF            RST 0x38
0E1A: FF            RST 0x38
0E1B: FF            RST 0x38
0E1C: FF            RST 0x38
0E1D: FF            RST 0x38
0E1E: FF            RST 0x38
0E1F: FF            RST 0x38
0E20: FF            RST 0x38
0E21: FF            RST 0x38
0E22: FF            RST 0x38
0E23: FF            RST 0x38
0E24: FF            RST 0x38
0E25: FF            RST 0x38
0E26: FF            RST 0x38
0E27: FF            RST 0x38
0E28: FF            RST 0x38
0E29: FF            RST 0x38
0E2A: FF            RST 0x38
0E2B: FF            RST 0x38
0E2C: FF            RST 0x38
0E2D: FF            RST 0x38
0E2E: FF            RST 0x38
0E2F: FF            RST 0x38
0E30: FF            RST 0x38
0E31: FF            RST 0x38
0E32: FF            RST 0x38
0E33: FF            RST 0x38
0E34: FF            RST 0x38
0E35: FF            RST 0x38
0E36: FF            RST 0x38
0E37: FF            RST 0x38
0E38: FF            RST 0x38
0E39: FF            RST 0x38
0E3A: FF            RST 0x38
0E3B: FF            RST 0x38
0E3C: FF            RST 0x38
0E3D: FF            RST 0x38
0E3E: FF            RST 0x38
0E3F: FF            RST 0x38
0E40: FF            RST 0x38
0E41: FF            RST 0x38
0E42: FF            RST 0x38
0E43: FF            RST 0x38
0E44: FF            RST 0x38
0E45: FF            RST 0x38
0E46: FF            RST 0x38
0E47: FF            RST 0x38
0E48: FF            RST 0x38
0E49: FF            RST 0x38
0E4A: FF            RST 0x38
0E4B: FF            RST 0x38
0E4C: FF            RST 0x38
0E4D: FF            RST 0x38
0E4E: FF            RST 0x38
0E4F: FF            RST 0x38
0E50: FF            RST 0x38
0E51: FF            RST 0x38
0E52: FF            RST 0x38
0E53: FF            RST 0x38
0E54: FF            RST 0x38
0E55: FF            RST 0x38
0E56: FF            RST 0x38
0E57: FF            RST 0x38
0E58: FF            RST 0x38
0E59: FF            RST 0x38
0E5A: FF            RST 0x38
0E5B: FF            RST 0x38
0E5C: FF            RST 0x38
0E5D: FF            RST 0x38
0E5E: FF            RST 0x38
0E5F: FF            RST 0x38
0E60: FF            RST 0x38
0E61: FF            RST 0x38
0E62: FF            RST 0x38
0E63: FF            RST 0x38
0E64: FF            RST 0x38
0E65: FF            RST 0x38
0E66: FF            RST 0x38
0E67: FF            RST 0x38
0E68: FF            RST 0x38
0E69: FF            RST 0x38
0E6A: FF            RST 0x38
0E6B: FF            RST 0x38
0E6C: FF            RST 0x38
0E6D: FF            RST 0x38
0E6E: FF            RST 0x38
0E6F: FF            RST 0x38
0E70: FF            RST 0x38
0E71: FF            RST 0x38
0E72: FF            RST 0x38
0E73: FF            RST 0x38
0E74: FF            RST 0x38
0E75: FF            RST 0x38
0E76: FF            RST 0x38
0E77: FF            RST 0x38
0E78: FF            RST 0x38
0E79: FF            RST 0x38
0E7A: FF            RST 0x38
0E7B: FF            RST 0x38
0E7C: FF            RST 0x38
0E7D: FF            RST 0x38
0E7E: FF            RST 0x38
0E7F: FF            RST 0x38
0E80: FF            RST 0x38
0E81: FF            RST 0x38
0E82: FF            RST 0x38
0E83: FF            RST 0x38
0E84: FF            RST 0x38
0E85: FF            RST 0x38
0E86: FF            RST 0x38
0E87: FF            RST 0x38
0E88: FF            RST 0x38
0E89: FF            RST 0x38
0E8A: FF            RST 0x38
0E8B: FF            RST 0x38
0E8C: FF            RST 0x38
0E8D: FF            RST 0x38
0E8E: FF            RST 0x38
0E8F: FF            RST 0x38
0E90: FF            RST 0x38
0E91: FF            RST 0x38
0E92: FF            RST 0x38
0E93: FF            RST 0x38
0E94: FF            RST 0x38
0E95: FF            RST 0x38
0E96: FF            RST 0x38
0E97: FF            RST 0x38
0E98: FF            RST 0x38
0E99: FF            RST 0x38
0E9A: FF            RST 0x38
0E9B: FF            RST 0x38
0E9C: FF            RST 0x38
0E9D: FF            RST 0x38
0E9E: FF            RST 0x38
0E9F: FF            RST 0x38
0EA0: FF            RST 0x38
0EA1: FF            RST 0x38
0EA2: FF            RST 0x38
0EA3: FF            RST 0x38
0EA4: FF            RST 0x38
0EA5: FF            RST 0x38
0EA6: FF            RST 0x38
0EA7: FF            RST 0x38
0EA8: FF            RST 0x38
0EA9: FF            RST 0x38
0EAA: FF            RST 0x38
0EAB: FF            RST 0x38
0EAC: FF            RST 0x38
0EAD: FF            RST 0x38
0EAE: FF            RST 0x38
0EAF: FF            RST 0x38
0EB0: FF            RST 0x38
0EB1: FF            RST 0x38
0EB2: FF            RST 0x38
0EB3: FF            RST 0x38
0EB4: FF            RST 0x38
0EB5: FF            RST 0x38
0EB6: FF            RST 0x38
0EB7: FF            RST 0x38
0EB8: FF            RST 0x38
0EB9: FF            RST 0x38
0EBA: FF            RST 0x38
0EBB: FF            RST 0x38
0EBC: FF            RST 0x38
0EBD: FF            RST 0x38
0EBE: FF            RST 0x38
0EBF: FF            RST 0x38
0EC0: FF            RST 0x38
0EC1: FF            RST 0x38
0EC2: FF            RST 0x38
0EC3: FF            RST 0x38
0EC4: FF            RST 0x38
0EC5: FF            RST 0x38
0EC6: FF            RST 0x38
0EC7: FF            RST 0x38
0EC8: FF            RST 0x38
0EC9: FF            RST 0x38
0ECA: FF            RST 0x38
0ECB: FF            RST 0x38
0ECC: FF            RST 0x38
0ECD: FF            RST 0x38
0ECE: FF            RST 0x38
0ECF: FF            RST 0x38
0ED0: FF            RST 0x38
0ED1: FF            RST 0x38
0ED2: FF            RST 0x38
0ED3: FF            RST 0x38
0ED4: FF            RST 0x38
0ED5: FF            RST 0x38
0ED6: FF            RST 0x38
0ED7: FF            RST 0x38
0ED8: FF            RST 0x38
0ED9: FF            RST 0x38
0EDA: FF            RST 0x38
0EDB: FF            RST 0x38
0EDC: FF            RST 0x38
0EDD: FF            RST 0x38
0EDE: FF            RST 0x38
0EDF: FF            RST 0x38
0EE0: FF            RST 0x38
0EE1: FF            RST 0x38
0EE2: FF            RST 0x38
0EE3: FF            RST 0x38
0EE4: FF            RST 0x38
0EE5: FF            RST 0x38
0EE6: FF            RST 0x38
0EE7: FF            RST 0x38
0EE8: FF            RST 0x38
0EE9: FF            RST 0x38
0EEA: FF            RST 0x38
0EEB: FF            RST 0x38
0EEC: FF            RST 0x38
0EED: FF            RST 0x38
0EEE: FF            RST 0x38
0EEF: FF            RST 0x38
0EF0: FF            RST 0x38
0EF1: FF            RST 0x38
0EF2: FF            RST 0x38
0EF3: FF            RST 0x38
0EF4: FF            RST 0x38
0EF5: FF            RST 0x38
0EF6: FF            RST 0x38
0EF7: FF            RST 0x38
0EF8: FF            RST 0x38
0EF9: FF            RST 0x38
0EFA: FF            RST 0x38
0EFB: FF            RST 0x38
0EFC: FF            RST 0x38
0EFD: FF            RST 0x38
0EFE: FF            RST 0x38
0EFF: FF            RST 0x38
0F00: FF            RST 0x38
0F01: FF            RST 0x38
0F02: FF            RST 0x38
0F03: FF            RST 0x38
0F04: FF            RST 0x38
0F05: FF            RST 0x38
0F06: FF            RST 0x38
0F07: FF            RST 0x38
0F08: FF            RST 0x38
0F09: FF            RST 0x38
0F0A: FF            RST 0x38
0F0B: FF            RST 0x38
0F0C: FF            RST 0x38
0F0D: FF            RST 0x38
0F0E: FF            RST 0x38
0F0F: FF            RST 0x38
0F10: FF            RST 0x38
0F11: FF            RST 0x38
0F12: FF            RST 0x38
0F13: FF            RST 0x38
0F14: FF            RST 0x38
0F15: FF            RST 0x38
0F16: FF            RST 0x38
0F17: FF            RST 0x38
0F18: FF            RST 0x38
0F19: FF            RST 0x38
0F1A: FF            RST 0x38
0F1B: FF            RST 0x38
0F1C: FF            RST 0x38
0F1D: FF            RST 0x38
0F1E: FF            RST 0x38
0F1F: FF            RST 0x38
0F20: FF            RST 0x38
0F21: FF            RST 0x38
0F22: FF            RST 0x38
0F23: FF            RST 0x38
0F24: FF            RST 0x38
0F25: FF            RST 0x38
0F26: FF            RST 0x38
0F27: FF            RST 0x38
0F28: FF            RST 0x38
0F29: FF            RST 0x38
0F2A: FF            RST 0x38
0F2B: FF            RST 0x38
0F2C: FF            RST 0x38
0F2D: FF            RST 0x38
0F2E: FF            RST 0x38
0F2F: FF            RST 0x38
0F30: FF            RST 0x38
0F31: FF            RST 0x38
0F32: FF            RST 0x38
0F33: FF            RST 0x38
0F34: FF            RST 0x38
0F35: FF            RST 0x38
0F36: FF            RST 0x38
0F37: FF            RST 0x38
0F38: FF            RST 0x38
0F39: FF            RST 0x38
0F3A: FF            RST 0x38
0F3B: FF            RST 0x38
0F3C: FF            RST 0x38
0F3D: FF            RST 0x38
0F3E: FF            RST 0x38
0F3F: FF            RST 0x38
0F40: FF            RST 0x38
0F41: FF            RST 0x38
0F42: FF            RST 0x38
0F43: FF            RST 0x38
0F44: FF            RST 0x38
0F45: FF            RST 0x38
0F46: FF            RST 0x38
0F47: FF            RST 0x38
0F48: FF            RST 0x38
0F49: FF            RST 0x38
0F4A: FF            RST 0x38
0F4B: FF            RST 0x38
0F4C: FF            RST 0x38
0F4D: FF            RST 0x38
0F4E: FF            RST 0x38
0F4F: FF            RST 0x38
0F50: FF            RST 0x38
0F51: FF            RST 0x38
0F52: FF            RST 0x38
0F53: FF            RST 0x38
0F54: FF            RST 0x38
0F55: FF            RST 0x38
0F56: FF            RST 0x38
0F57: FF            RST 0x38
0F58: FF            RST 0x38
0F59: FF            RST 0x38
0F5A: FF            RST 0x38
0F5B: FF            RST 0x38
0F5C: FF            RST 0x38
0F5D: FF            RST 0x38
0F5E: FF            RST 0x38
0F5F: FF            RST 0x38
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
0FFF: D0            RET NC
1000: E5            PUSH HL
1001: ED 5F         LD A,R
1003: 67            LD H,A
1004: 3A A0 92      LD A,(0x92A0)
1007: 84            ADD A,H
1008: 6F            LD L,A
1009: 26 01         LD H,0x01
100B: 7E            LD A,(HL)
100C: 67            LD H,A
100D: ED 5F         LD A,R
100F: 84            ADD A,H
1010: E1            POP HL
1011: C9            RET
1012: C5            PUSH BC
1013: D5            PUSH DE
1014: 7B            LD A,E
1015: 95            SUB L
1016: 06 00         LD B,0x00
1018: 30 04         JR NC,0x101E
101A: CB C0         SET 0,B
101C: ED 44         NEG
101E: 4F            LD C,A
101F: 7A            LD A,D
1020: 94            SUB H
1021: 30 0A         JR NC,0x102D
1023: 57            LD D,A
1024: 78            LD A,B
1025: EE 01         XOR 0x01
1027: F6 02         OR 0x02
1029: 47            LD B,A
102A: 7A            LD A,D
102B: ED 44         NEG
102D: B9            CP C
102E: F5            PUSH AF
102F: 17            RLA
1030: A8            XOR B
1031: 1F            RRA
1032: 3F            CCF
1033: CB 10         RL B
1035: F1            POP AF
1036: 30 03         JR NC,0x103B
1038: 51            LD D,C
1039: 4F            LD C,A
103A: 7A            LD A,D
103B: 61            LD H,C
103C: 2E 00         LD L,0x00
103E: CD 61 10      CALL 0x1061
1041: 7C            LD A,H
1042: A8            XOR B
1043: E6 01         AND 0x01
1045: 28 03         JR Z,0x104A
1047: 7D            LD A,L
1048: 2F            CPL
1049: 6F            LD L,A
104A: 60            LD H,B
104B: D1            POP DE
104C: C1            POP BC
104D: C9            RET
104E: D5            PUSH DE
104F: EB            EX DE,HL
1050: 21 00 00      LD HL,0x0000
1053: CB 3F         SRL A
1055: 30 01         JR NC,0x1058
1057: 19            ADD HL,DE
1058: CB 23         SLA E
105A: CB 12         RL D
105C: A7            AND A
105D: 20 F4         JR NZ,0x1053
105F: D1            POP DE
1060: C9            RET
1061: C5            PUSH BC
1062: 4F            LD C,A
1063: AF            XOR A
1064: 06 11         LD B,0x11
1066: 8F            ADC A,A
1067: 38 0B         JR C,0x1074
1069: B9            CP C
106A: 38 01         JR C,0x106D
106C: 91            SUB C
106D: 3F            CCF
106E: ED 6A         ADC HL,HL
1070: 10 F4         DJNZ 0x1066
1072: C1            POP BC
1073: C9            RET
1074: 91            SUB C
1075: 37            SCF
1076: C3 6E 10      JP 0x106E
1079: 7D            LD A,L
107A: E6 80         AND 0x80
107C: 3C            INC A
107D: 08            EX AF,AF'
107E: CB BD         RES 7,L
1080: C3 8A 10      JP 0x108A
1083: 7D            LD A,L
1084: 0F            RRCA
1085: 0F            RRCA
1086: E6 80         AND 0x80
1088: 3C            INC A
1089: 08            EX AF,AF'
108A: D5            PUSH DE
108B: 11 14 00      LD DE,0x0014
108E: 06 0C         LD B,0x0C
1090: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1091: 21 00 91      LD HL,0x9100
1094: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1095: CB 13         RL E
1097: 46            LD B,(HL)
1098: 28 06         JR Z,0x10A0
109A: DD            DB 0xDD ; IX/IY prefix, manual analysis required
109B: 19            ADD HL,DE
109C: 10 F6         DJNZ 0x1094
109E: D1            POP DE
109F: C9            RET
10A0: D1            POP DE
10A1: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10A2: 73            LD (HL),E
10A3: 08            EX AF,AF'
10A4: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10A5: 72            LD (HL),D
10A6: 09            ADD HL,BC
10A7: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10A8: 36 0D         LD (HL),0x0D
10AA: 01 DD 36      LD BC,0x36DD
10AD: 04            INC B
10AE: 00            NOP
10AF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10B0: 36 05         LD (HL),0x05
10B2: 01 4D DD      LD BC,0xDD4D
10B5: 71            LD (HL),C
10B6: 10 08         DJNZ 0x10C0
10B8: 57            LD D,A
10B9: 36 09         LD (HL),0x09
10BB: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10BC: 7D            LD A,L
10BD: 2C            INC L
10BE: 77            LD (HL),A
10BF: 3A 15 92      LD A,(0x9215)
10C2: 5F            LD E,A
10C3: 69            LD L,C
10C4: 26 93         LD H,0x93
10C6: 4E            LD C,(HL)
10C7: 2C            INC L
10C8: 46            LD B,(HL)
10C9: 26 9B         LD H,0x9B
10CB: 7E            LD A,(HL)
10CC: 0F            RRCA
10CD: CB 18         RR B
10CF: CB 43         BIT 0,E
10D1: 20 09         JR NZ,0x10DC
10D3: 08            EX AF,AF'
10D4: 78            LD A,B
10D5: C6 50         ADD A,0x50
10D7: ED 44         NEG
10D9: 47            LD B,A
10DA: 08            EX AF,AF'
10DB: 3F            CCF
10DC: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10DD: 70            LD (HL),B
10DE: 01 1F E6      LD BC,0xE61F
10E1: 80            ADD A,B
10E2: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10E3: 77            LD (HL),A
10E4: 00            NOP
10E5: 79            LD A,C
10E6: CB 43         BIT 0,E
10E8: 28 03         JR Z,0x10ED
10EA: C6 0D         ADD A,0x0D
10EC: 2F            CPL
10ED: CB 3F         SRL A
10EF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10F0: 77            LD (HL),A
10F1: 03            INC BC
10F2: 1F            RRA
10F3: E6 80         AND 0x80
10F5: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10F6: 77            LD (HL),A
10F7: 02            LD (BC),A
10F8: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10F9: 72            LD (HL),D
10FA: 13            INC DE
10FB: DD            DB 0xDD ; IX/IY prefix, manual analysis required
10FC: 36 0E         LD (HL),0x0E
10FE: 1E 3A         LD E,0x3A
1100: 0B            DEC BC
1101: 92            SUB D
1102: A7            AND A
1103: 28 03         JR Z,0x1108
1105: 3A C8 92      LD A,(0x92C8)
1108: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1109: 77            LD (HL),A
110A: 0F            RRCA
110B: C9            RET
110C: 3E 1F         LD A,0x1F
110E: 32 00 90      LD (0x9000),A
1111: 32 E0 98      LD (0x98E0),A
1114: 21 20 98      LD HL,0x9820
1117: 11 60 98      LD DE,0x9860
111A: 06 40         LD B,0x40
111C: 4E            LD C,(HL)
111D: 1A            LD A,(DE)
111E: 77            LD (HL),A
111F: 79            LD A,C
1120: 12            LD (DE),A
1121: 2C            INC L
1122: 1C            INC E
1123: 10 F7         DJNZ 0x111C
1125: 21 00 88      LD HL,0x8800
1128: 11 B0 98      LD DE,0x98B0
112B: 06 30         LD B,0x30
112D: 7E            LD A,(HL)
112E: 4F            LD C,A
112F: 26 8B         LD H,0x8B
1131: 7E            LD A,(HL)
1132: E6 7F         AND 0x7F
1134: 0D            DEC C
1135: 20 0B         JR NZ,0x1142
1137: E6 78         AND 0x78
1139: 4F            LD C,A
113A: 2C            INC L
113B: 7E            LD A,(HL)
113C: 2D            DEC L
113D: E6 07         AND 0x07
113F: B1            OR C
1140: F6 80         OR 0x80
1142: EB            EX DE,HL
1143: 4E            LD C,(HL)
1144: 77            LD (HL),A
1145: EB            EX DE,HL
1146: CB 79         BIT 7,C
1148: 28 10         JR Z,0x115A
114A: 79            LD A,C
114B: E6 78         AND 0x78
114D: C6 06         ADD A,0x06
114F: 77            LD (HL),A
1150: 2C            INC L
1151: 79            LD A,C
1152: E6 07         AND 0x07
1154: 77            LD (HL),A
1155: 2D            DEC L
1156: 3E 01         LD A,0x01
1158: 18 07         JR 0x1161
115A: 71            LD (HL),C
115B: 26 93         LD H,0x93
115D: 36 00         LD (HL),0x00
115F: 3E 80         LD A,0x80
1161: 26 88         LD H,0x88
1163: 77            LD (HL),A
1164: 13            INC DE
1165: 2C            INC L
1166: 2C            INC L
1167: 10 C4         DJNZ 0x112D
1169: 21 00 90      LD HL,0x9000
116C: 11 E0 98      LD DE,0x98E0
116F: 06 20         LD B,0x20
1171: 4E            LD C,(HL)
1172: 1A            LD A,(DE)
1173: 77            LD (HL),A
1174: 79            LD A,C
1175: 12            LD (DE),A
1176: 2C            INC L
1177: 1C            INC E
1178: 10 F7         DJNZ 0x1171
117A: AF            XOR A
117B: 32 00 90      LD (0x9000),A
117E: C9            RET
117F: 21 02 80      LD HL,0x8002
1182: 06 12         LD B,0x12
1184: 7E            LD A,(HL)
1185: FE 4A         CP 0x4A
1187: 30 02         JR NC,0x118B
1189: 36 24         LD (HL),0x24
118B: 2C            INC L
118C: 10 F6         DJNZ 0x1184
118E: 2E 22         LD L,0x22
1190: 06 12         LD B,0x12
1192: 7E            LD A,(HL)
1193: FE 4A         CP 0x4A
1195: 30 02         JR NC,0x1199
1197: 36 24         LD (HL),0x24
1199: 2C            INC L
119A: 10 F6         DJNZ 0x1192
119C: 3A 21 98      LD A,(0x9821)
119F: 06 00         LD B,0x00
11A1: 21 01 80      LD HL,0x8001
11A4: FE 32         CP 0x32
11A6: 38 07         JR C,0x11AF
11A8: D6 32         SUB 0x32
11AA: 04            INC B
11AB: 2C            INC L
11AC: 2C            INC L
11AD: 18 F5         JR 0x11A4
11AF: EB            EX DE,HL
11B0: 6F            LD L,A
11B1: 26 00         LD H,0x00
11B3: 3E 0A         LD A,0x0A
11B5: CD 61 10      CALL 0x1061
11B8: 67            LD H,A
11B9: E5            PUSH HL
11BA: EB            EX DE,HL
11BB: FE 05         CP 0x05
11BD: 38 02         JR C,0x11C1
11BF: D6 04         SUB 0x04
11C1: 4F            LD C,A
11C2: 7B            LD A,E
11C3: CB 47         BIT 0,A
11C5: 28 02         JR Z,0x11C9
11C7: 3E 02         LD A,0x02
11C9: 81            ADD A,C
11CA: D7            RST 0x10
11CB: 04            INC B
11CC: 10 20         DJNZ 0x11EE
11CE: C1            POP BC
11CF: 79            LD A,C
11D0: CD F5 11      CALL 0x11F5
11D3: 78            LD A,B
11D4: FE 05         CP 0x05
11D6: 38 08         JR C,0x11E0
11D8: 16 38         LD D,0x38
11DA: CD 13 12      CALL 0x1213
11DD: 78            LD A,B
11DE: D6 05         SUB 0x05
11E0: 47            LD B,A
11E1: 04            INC B
11E2: 10 03         DJNZ 0x11E7
11E4: C3 7E 13      JP 0x137E
11E7: 16 36         LD D,0x36
11E9: CD 13 12      CALL 0x1213
11EC: 18 F4         JR 0x11E2
11EE: 3E 04         LD A,0x04
11F0: CD FB 11      CALL 0x11FB
11F3: 18 D7         JR 0x11CC
11F5: A7            AND A
11F6: C8            RET Z
11F7: FE 04         CP 0x04
11F9: 28 07         JR Z,0x1202
11FB: 07            RLCA
11FC: 07            RLCA
11FD: C6 36         ADD A,0x36
11FF: 57            LD D,A
1200: 18 0A         JR 0x120C
1202: 16 42         LD D,0x42
1204: CD 13 12      CALL 0x1213
1207: CD 28 12      CALL 0x1228
120A: 16 3A         LD D,0x3A
120C: CD 13 12      CALL 0x1213
120F: CD 28 12      CALL 0x1228
1212: C9            RET
1213: 08            EX AF,AF'
1214: 38 11         JR C,0x1227
1216: 08            EX AF,AF'
1217: 3A A0 92      LD A,(0x92A0)
121A: C6 08         ADD A,0x08
121C: 5F            LD E,A
121D: 3A A0 92      LD A,(0x92A0)
1220: 93            SUB E
1221: 20 FA         JR NZ,0x121D
1223: 08            EX AF,AF'
1224: 32 B5 9A      LD (0x9AB5),A
1227: 08            EX AF,AF'
1228: 72            LD (HL),D
1229: 14            INC D
122A: CB ED         SET 5,L
122C: 72            LD (HL),D
122D: 14            INC D
122E: CB D4         SET 2,H
1230: 7A            LD A,D
1231: E6 0C         AND 0x0C
1233: FE 08         CP 0x08
1235: 3E 01         LD A,0x01
1237: 28 01         JR Z,0x123A
1239: 3C            INC A
123A: 77            LD (HL),A
123B: CB AD         RES 5,L
123D: 77            LD (HL),A
123E: CB 94         RES 2,H
1240: 2D            DEC L
1241: C9            RET
1242: 21 5B 12      LD HL,0x125B
1245: 11 00 90      LD DE,0x9000
1248: 01 20 00      LD BC,0x0020
124B: C5            PUSH BC
124C: E5            PUSH HL
124D: ED B0         LDIR
124F: E1            POP HL
1250: C1            POP BC
1251: 11 E0 98      LD DE,0x98E0
1254: ED B0         LDIR
1256: AF            XOR A
1257: 32 00 90      LD (0x9000),A
125A: C9            RET
125B: 1F            RRA
125C: 01 00 00      LD BC,0x0000
125F: 00            NOP
1260: 01 00 00      LD BC,0x0000
1263: 00            NOP
1264: 00            NOP
1265: 00            NOP
1266: 00            NOP
1267: 01 01 00      LD BC,0x0001
126A: 01 00 00      LD BC,0x0000
126D: 00            NOP
126E: 00            NOP
126F: 00            NOP
1270: 00            NOP
1271: 00            NOP
1272: 01 00 00      LD BC,0x0000
1275: 00            NOP
1276: 00            NOP
1277: 00            NOP
1278: 00            NOP
1279: 00            NOP
127A: 0A            LD A,(BC)
127B: 21 64 8B      LD HL,0x8B64
127E: 11 30 09      LD DE,0x0930
1281: 0E 00         LD C,0x00
1283: 06 0A         LD B,0x0A
1285: 73            LD (HL),E
1286: 26 93         LD H,0x93
1288: 36 00         LD (HL),0x00
128A: 26 9B         LD H,0x9B
128C: 71            LD (HL),C
128D: 26 8B         LD H,0x8B
128F: 2C            INC L
1290: 72            LD (HL),D
1291: 2C            INC L
1292: 78            LD A,B
1293: FE 09         CP 0x09
1295: 20 04         JR NZ,0x129B
1297: 0E 01         LD C,0x01
1299: 16 0B         LD D,0x0B
129B: 10 E8         DJNZ 0x1285
129D: C9            RET
129E: 26 8B         LD H,0x8B
12A0: ED 5B 80 92   LD DE,(0x9280)
12A4: 1A            LD A,(DE)
12A5: 6F            LD L,A
12A6: 13            INC DE
12A7: 1A            LD A,(DE)
12A8: 4F            LD C,A
12A9: E6 78         AND 0x78
12AB: C6 06         ADD A,0x06
12AD: 77            LD (HL),A
12AE: 2C            INC L
12AF: 79            LD A,C
12B0: E6 07         AND 0x07
12B2: CB 79         BIT 7,C
12B4: 28 02         JR Z,0x12B8
12B6: F6 08         OR 0x08
12B8: 77            LD (HL),A
12B9: 13            INC DE
12BA: 2D            DEC L
12BB: 26 88         LD H,0x88
12BD: 36 01         LD (HL),0x01
12BF: 26 93         LD H,0x93
12C1: 1A            LD A,(DE)
12C2: 77            LD (HL),A
12C3: 13            INC DE
12C4: 2C            INC L
12C5: 1A            LD A,(DE)
12C6: CB 27         SLA A
12C8: 77            LD (HL),A
12C9: 3E 00         LD A,0x00
12CB: 17            RLA
12CC: 26 9B         LD H,0x9B
12CE: 77            LD (HL),A
12CF: 13            INC DE
12D0: ED 53 80 92   LD (0x9280),DE
12D4: C9            RET
12D5: DD            DB 0xDD ; IX/IY prefix, manual analysis required
12D6: 6F            LD L,A
12D7: 3A 15 92      LD A,(0x9215)
12DA: 4F            LD C,A
12DB: 21 00 99      LD HL,0x9900
12DE: 11 21 13      LD DE,0x1321
12E1: 06 10         LD B,0x10
12E3: 36 00         LD (HL),0x00
12E5: 2C            INC L
12E6: 1A            LD A,(DE)
12E7: 13            INC DE
12E8: 77            LD (HL),A
12E9: 2C            INC L
12EA: 10 F7         DJNZ 0x12E3
12EC: 21 00 98      LD HL,0x9800
12EF: 11 21 13      LD DE,0x1321
12F2: 06 0A         LD B,0x0A
12F4: 1A            LD A,(DE)
12F5: 13            INC DE
12F6: CB 41         BIT 0,C
12F8: 28 03         JR Z,0x12FD
12FA: C6 0D         ADD A,0x0D
12FC: 2F            CPL
12FD: 77            LD (HL),A
12FE: 2C            INC L
12FF: 2C            INC L
1300: 10 F2         DJNZ 0x12F4
1302: 06 06         LD B,0x06
1304: 1A            LD A,(DE)
1305: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1306: 85            ADD A,L
1307: 13            INC DE
1308: CB 41         BIT 0,C
130A: 20 03         JR NZ,0x130F
130C: C6 4F         ADD A,0x4F
130E: 2F            CPL
130F: CB 27         SLA A
1311: 77            LD (HL),A
1312: 2C            INC L
1313: 3E 00         LD A,0x00
1315: 17            RLA
1316: 77            LD (HL),A
1317: 2C            INC L
1318: 10 EA         DJNZ 0x1304
131A: 3A 15 92      LD A,(0x9215)
131D: 32 0F 92      LD (0x920F),A
1320: C9            RET
1321: 31 41 51      LD SP,0x5141
1324: 61            LD H,C
1325: 71            LD (HL),C
1326: 81            ADD A,C
1327: 91            SUB C
1328: A1            AND C
1329: B1            OR C
132A: C1            POP BC
132B: 92            SUB D
132C: 8A            ADC A,D
132D: 82            ADD A,D
132E: 7C            LD A,H
132F: 76            HALT
1330: 70            LD (HL),B
1331: E5            PUSH HL
1332: 21 AF 92      LD HL,0x92AF
1335: 36 03         LD (HL),0x03
1337: 7E            LD A,(HL)
1338: A7            AND A
1339: 20 FC         JR NZ,0x1337
133B: E1            POP HL
133C: C9            RET
133D: 3E 01         LD A,0x01
133F: 32 14 90      LD (0x9014),A
1342: 3A 70 82      LD A,(0x8270)
1345: FE 24         CP 0x24
1347: 20 03         JR NZ,0x134C
1349: 0E 03         LD C,0x03
134B: F7            RST 0x30
134C: 3A 87 92      LD A,(0x9287)
134F: A7            AND A
1350: 20 FA         JR NZ,0x134C
1352: CD 7E 13      CALL 0x137E
1355: 21 06 09      LD HL,0x0906
1358: 22 62 8B      LD (0x8B62),HL
135B: 21 62 93      LD HL,0x9362
135E: 3A 15 92      LD A,(0x9215)
1361: E6 01         AND 0x01
1363: 3E 29         LD A,0x29
1365: 0E 01         LD C,0x01
1367: 28 03         JR Z,0x136C
1369: C6 0E         ADD A,0x0E
136B: 0D            DEC C
136C: 36 7A         LD (HL),0x7A
136E: 2C            INC L
136F: 77            LD (HL),A
1370: 26 9B         LD H,0x9B
1372: 71            LD (HL),C
1373: 2D            DEC L
1374: AF            XOR A
1375: 77            LD (HL),A
1376: 32 13 92      LD (0x9213),A
1379: 3C            INC A
137A: 32 B9 99      LD (0x99B9),A
137D: C9            RET
137E: 3A 20 98      LD A,(0x9820)
1381: 2F            CPL
1382: C6 09         ADD A,0x09
1384: 5F            LD E,A
1385: 16 49         LD D,0x49
1387: 21 1D 80      LD HL,0x801D
138A: CD 98 13      CALL 0x1398
138D: 2D            DEC L
138E: CD 98 13      CALL 0x1398
1391: CB ED         SET 5,L
1393: 2C            INC L
1394: CD 98 13      CALL 0x1398
1397: 2D            DEC L
1398: E5            PUSH HL
1399: 14            INC D
139A: 4A            LD C,D
139B: 06 08         LD B,0x08
139D: 78            LD A,B
139E: BB            CP E
139F: 20 02         JR NZ,0x13A3
13A1: 0E 24         LD C,0x24
13A3: 7E            LD A,(HL)
13A4: FE 36         CP 0x36
13A6: 38 04         JR C,0x13AC
13A8: FE 4A         CP 0x4A
13AA: 38 01         JR C,0x13AD
13AC: 71            LD (HL),C
13AD: 2D            DEC L
13AE: 2D            DEC L
13AF: 10 EC         DJNZ 0x139D
13B1: E1            POP HL
13B2: C9            RET
13B3: A7            AND A
13B4: 08            EX AF,AF'
13B5: D5            PUSH DE
13B6: EB            EX DE,HL
13B7: 79            LD A,C
13B8: 21 EF 13      LD HL,0x13EF
13BB: CF            RST 0x08
13BC: 7E            LD A,(HL)
13BD: 23            INC HL
13BE: 66            LD H,(HL)
13BF: 6F            LD L,A
13C0: 08            EX AF,AF'
13C1: 30 06         JR NC,0x13C9
13C3: 2B            DEC HL
13C4: 2B            DEC HL
13C5: 5E            LD E,(HL)
13C6: 23            INC HL
13C7: 56            LD D,(HL)
13C8: 23            INC HL
13C9: 4E            LD C,(HL)
13CA: 23            INC HL
13CB: EB            EX DE,HL
13CC: 1A            LD A,(DE)
13CD: FE 2F         CP 0x2F
13CF: 28 1E         JR Z,0x13EF
13D1: D6 30         SUB 0x30
13D3: 30 04         JR NC,0x13D9
13D5: 3E 24         LD A,0x24
13D7: 18 06         JR 0x13DF
13D9: FE 11         CP 0x11
13DB: 38 02         JR C,0x13DF
13DD: D6 07         SUB 0x07
13DF: 77            LD (HL),A
13E0: CB D4         SET 2,H
13E2: 71            LD (HL),C
13E3: CB 94         RES 2,H
13E5: 13            INC DE
13E6: 7D            LD A,L
13E7: D6 20         SUB 0x20
13E9: 6F            LD L,A
13EA: 30 E0         JR NC,0x13CC
13EC: 25            DEC H
13ED: 18 DD         JR 0x13CC
13EF: D1            POP DE
13F0: C9            RET
13F1: 2F            CPL
13F2: 14            INC D
13F3: 44            LD B,H
13F4: 14            INC D
13F5: 51            LD D,C
13F6: 14            INC D
13F7: 5C            LD E,H
13F8: 14            INC D
13F9: 66            LD H,(HL)
13FA: 14            INC D
13FB: 72            LD (HL),D
13FC: 14            INC D
13FD: 7C            LD A,H
13FE: 14            INC D
13FF: 91            SUB C
1400: 14            INC D
1401: A3            AND E
1402: 14            INC D
1403: AE            XOR (HL)
1404: 14            INC D
1405: C2 14 E1      JP NZ,0xE114
1408: 14            INC D
1409: EE 14         XOR 0x14
140B: 09            ADD HL,BC
140C: 15            DEC D
140D: 13            INC DE
140E: 15            DEC D
140F: 22 15 2F      LD (0x2F15),HL
1412: 15            DEC D
1413: 3C            INC A
1414: 15            DEC D
1415: 40            LD B,B
1416: 15            DEC D
1417: 55            LD D,L
1418: 15            DEC D
1419: 60            LD H,B
141A: 15            DEC D
141B: 6D            LD L,L
141C: 15            DEC D
141D: 84            ADD A,H
141E: 15            DEC D
141F: 92            SUB D
1420: 15            DEC D
1421: AB            XOR E
1422: 15            DEC D
1423: C2 15 C8      JP NZ,0xC815
1426: 15            DEC D
1427: DC 15 F0      CALL C,0xF015
142A: 15            DEC D
142B: 02            LD (BC),A
142C: 16 EB         LD D,0xEB
142E: 82            ADD A,D
142F: 00            NOP
1430: 50            LD D,B
1431: 55            LD D,L
1432: 53            LD D,E
1433: 48            LD C,B
1434: 20 53         JR NZ,0x1489
1436: 54            LD D,H
1437: 41            LD B,C
1438: 52            LD D,D
1439: 54            LD D,H
143A: 20 42         JR NZ,0x147E
143C: 55            LD D,L
143D: 54            LD D,H
143E: 54            LD D,H
143F: 4F            LD C,A
1440: 4E            LD C,(HL)
1441: 2F            CPL
1442: 70            LD (HL),B
1443: 82            ADD A,D
1444: 00            NOP
1445: 47            LD B,A
1446: 41            LD B,C
1447: 4D            LD C,L
1448: 45            LD B,L
1449: 20 4F         JR NZ,0x149A
144B: 56            LD D,(HL)
144C: 45            LD B,L
144D: 52            LD D,D
144E: 2F            CPL
144F: 70            LD (HL),B
1450: 82            ADD A,D
1451: 00            NOP
1452: 52            LD D,D
1453: 45            LD B,L
1454: 41            LD B,C
1455: 44            LD B,H
1456: 59            LD E,C
1457: 20 21         JR NZ,0x147A
1459: 2F            CPL
145A: 50            LD D,B
145B: 82            ADD A,D
145C: 00            NOP
145D: 50            LD D,B
145E: 4C            LD C,H
145F: 41            LD B,C
1460: 59            LD E,C
1461: 45            LD B,L
1462: 52            LD D,D
1463: 20 31         JR NZ,0x1496
1465: 2F            CPL
1466: 00            NOP
1467: 50            LD D,B
1468: 4C            LD C,H
1469: 41            LD B,C
146A: 59            LD E,C
146B: 45            LD B,L
146C: 52            LD D,D
146D: 20 32         JR NZ,0x14A1
146F: 2F            CPL
1470: 70            LD (HL),B
1471: 82            ADD A,D
1472: 00            NOP
1473: 53            LD D,E
1474: 54            LD D,H
1475: 41            LD B,C
1476: 47            LD B,A
1477: 45            LD B,L
1478: 20 2F         JR NZ,0x14A9
147A: 10 83         DJNZ 0x13FF
147C: 00            NOP
147D: 43            LD B,E
147E: 48            LD C,B
147F: 41            LD B,C
1480: 4C            LD C,H
1481: 4C            LD C,H
1482: 45            LD B,L
1483: 4E            LD C,(HL)
1484: 47            LD B,A
1485: 49            LD C,C
1486: 4E            LD C,(HL)
1487: 47            LD B,A
1488: 20 53         JR NZ,0x14DD
148A: 54            LD D,H
148B: 41            LD B,C
148C: 47            LD B,A
148D: 45            LD B,L
148E: 2F            CPL
148F: 10 83         DJNZ 0x1414
1491: 00            NOP
1492: 4E            LD C,(HL)
1493: 55            LD D,L
1494: 4D            LD C,L
1495: 42            LD B,D
1496: 45            LD B,L
1497: 52            LD D,D
1498: 20 4F         JR NZ,0x14E9
149A: 46            LD B,(HL)
149B: 20 48         JR NZ,0x14E5
149D: 49            LD C,C
149E: 54            LD D,H
149F: 53            LD D,E
14A0: 2F            CPL
14A1: B3            OR E
14A2: 82            ADD A,D
14A3: 00            NOP
14A4: 42            LD B,D
14A5: 4F            LD C,A
14A6: 4E            LD C,(HL)
14A7: 55            LD D,L
14A8: 53            LD D,E
14A9: 20 20         JR NZ,0x14CB
14AB: 2F            CPL
14AC: F1            POP AF
14AD: 82            ADD A,D
14AE: 04            INC B
14AF: 46            LD B,(HL)
14B0: 49            LD C,C
14B1: 47            LD B,A
14B2: 48            LD C,B
14B3: 54            LD D,H
14B4: 45            LD B,L
14B5: 52            LD D,D
14B6: 20 43         JR NZ,0x14FB
14B8: 41            LD B,C
14B9: 50            LD D,B
14BA: 54            LD D,H
14BB: 55            LD D,L
14BC: 52            LD D,D
14BD: 45            LD B,L
14BE: 44            LD B,H
14BF: 2F            CPL
14C0: AD            XOR L
14C1: 83            ADD A,E
14C2: 00            NOP
14C3: 20 20         JR NZ,0x14E5
14C5: 20 20         JR NZ,0x14E7
14C7: 20 20         JR NZ,0x14E9
14C9: 20 20         JR NZ,0x14EB
14CB: 20 20         JR NZ,0x14ED
14CD: 20 20         JR NZ,0x14EF
14CF: 20 20         JR NZ,0x14F1
14D1: 20 20         JR NZ,0x14F3
14D3: 20 20         JR NZ,0x14F5
14D5: 20 20         JR NZ,0x14F7
14D7: 20 20         JR NZ,0x14F9
14D9: 20 20         JR NZ,0x14FB
14DB: 20 20         JR NZ,0x14FD
14DD: 20 2F         JR NZ,0x150E
14DF: 6D            LD L,L
14E0: 82            ADD A,D
14E1: 04            INC B
14E2: 50            LD D,B
14E3: 45            LD B,L
14E4: 52            LD D,D
14E5: 46            LD B,(HL)
14E6: 45            LD B,L
14E7: 43            LD B,E
14E8: 54            LD D,H
14E9: 20 63         JR NZ,0x154E
14EB: 2F            CPL
14EC: 73            LD (HL),E
14ED: 83            ADD A,E
14EE: 05            DEC B
14EF: 53            LD D,E
14F0: 50            LD D,B
14F1: 45            LD B,L
14F2: 43            LD B,E
14F3: 49            LD C,C
14F4: 41            LD B,C
14F5: 4C            LD C,H
14F6: 20 42         JR NZ,0x153A
14F8: 4F            LD C,A
14F9: 4E            LD C,(HL)
14FA: 55            LD D,L
14FB: 53            LD D,E
14FC: 20 31         JR NZ,0x152F
14FE: 30 30         JR NC,0x1530
1500: 30 30         JR NC,0x1532
1502: 20 50         JR NZ,0x1554
1504: 54            LD D,H
1505: 53            LD D,E
1506: 2F            CPL
1507: 42            LD B,D
1508: 82            ADD A,D
1509: 00            NOP
150A: 47            LD B,A
150B: 41            LD B,C
150C: 4C            LD C,H
150D: 41            LD B,C
150E: 47            LD B,A
150F: 41            LD B,C
1510: 2F            CPL
1511: A5            AND L
1512: 82            ADD A,D
1513: 00            NOP
1514: 5D            LD E,L
1515: 5D            LD E,L
1516: 20 53         JR NZ,0x156B
1518: 43            LD B,E
1519: 4F            LD C,A
151A: 52            LD D,D
151B: 45            LD B,L
151C: 20 5D         JR NZ,0x157B
151E: 5D            LD E,L
151F: 2F            CPL
1520: 28 82         JR Z,0x14A4
1522: 00            NOP
1523: 35            DEC (HL)
1524: 30 20         JR NC,0x1546
1526: 20 20         JR NZ,0x1548
1528: 20 31         JR NZ,0x155B
152A: 30 30         JR NC,0x155C
152C: 2F            CPL
152D: 2A 82 00      LD HL,(0x0082)
1530: 38 30         JR C,0x1562
1532: 20 20         JR NZ,0x1554
1534: 20 20         JR NZ,0x1556
1536: 31 36 30      LD SP,0x3036
1539: 2F            CPL
153A: 2B            DEC HL
153B: 82            ADD A,D
153C: 00            NOP
153D: 2F            CPL
153E: FB            EI
153F: 82            ADD A,D
1540: 03            INC BC
1541: 65            LD H,L
1542: 20 31         JR NZ,0x1575
1544: 39            ADD HL,SP
1545: 38 31         JR C,0x1578
1547: 20 4E         JR NZ,0x1597
1549: 41            LD B,C
154A: 4D            LD C,L
154B: 43            LD B,E
154C: 4F            LD C,A
154D: 20 4C         JR NZ,0x159B
154F: 54            LD D,H
1550: 44            LD B,H
1551: 61            LD H,C
1552: 2F            CPL
1553: 5E            LD E,(HL)
1554: 82            ADD A,D
1555: 04            INC B
1556: 66            LD H,(HL)
1557: 67            LD H,A
1558: 68            LD L,B
1559: 69            LD L,C
155A: 6A            LD L,D
155B: 6B            LD L,E
155C: 6C            LD L,H
155D: 2F            CPL
155E: 8F            ADC A,A
155F: 82            ADD A,D
1560: 04            INC B
1561: 5D            LD E,L
1562: 52            LD D,D
1563: 45            LD B,L
1564: 53            LD D,E
1565: 55            LD D,L
1566: 4C            LD C,H
1567: 54            LD D,H
1568: 53            LD D,E
1569: 5D            LD E,L
156A: 2F            CPL
156B: 32 83 05      LD (0x0583),A
156E: 53            LD D,E
156F: 48            LD C,B
1570: 4F            LD C,A
1571: 54            LD D,H
1572: 53            LD D,E
1573: 20 46         JR NZ,0x15BB
1575: 49            LD C,C
1576: 52            LD D,D
1577: 45            LD B,L
1578: 44            LD B,H
1579: 20 20         JR NZ,0x159B
157B: 20 20         JR NZ,0x159D
157D: 20 20         JR NZ,0x159F
157F: 20 20         JR NZ,0x15A1
1581: 20 20         JR NZ,0x15A3
1583: 2F            CPL
1584: 05            DEC B
1585: 20 20         JR NZ,0x15A7
1587: 4D            LD C,L
1588: 49            LD C,C
1589: 53            LD D,E
158A: 53            LD D,E
158B: 49            LD C,C
158C: 4C            LD C,H
158D: 45            LD B,L
158E: 53            LD D,E
158F: 2F            CPL
1590: 35            DEC (HL)
1591: 83            ADD A,E
1592: 05            DEC B
1593: 4E            LD C,(HL)
1594: 55            LD D,L
1595: 4D            LD C,L
1596: 42            LD B,D
1597: 45            LD B,L
1598: 52            LD D,D
1599: 20 4F         JR NZ,0x15EA
159B: 46            LD B,(HL)
159C: 20 48         JR NZ,0x15E6
159E: 49            LD C,C
159F: 54            LD D,H
15A0: 53            LD D,E
15A1: 20 20         JR NZ,0x15C3
15A3: 20 20         JR NZ,0x15C5
15A5: 20 20         JR NZ,0x15C7
15A7: 20 2F         JR NZ,0x15D8
15A9: 38 83         JR C,0x152E
15AB: 03            INC BC
15AC: 48            LD C,B
15AD: 49            LD C,C
15AE: 54            LD D,H
15AF: 5D            LD E,L
15B0: 4D            LD C,L
15B1: 49            LD C,C
15B2: 53            LD D,E
15B3: 53            LD D,E
15B4: 20 52         JR NZ,0x1608
15B6: 41            LD B,C
15B7: 54            LD D,H
15B8: 49            LD C,C
15B9: 4F            LD C,A
15BA: 20 20         JR NZ,0x15DC
15BC: 20 20         JR NZ,0x15DE
15BE: 20 20         JR NZ,0x15E0
15C0: 20 2F         JR NZ,0x15F1
15C2: 03            INC BC
15C3: 24            INC H
15C4: 60            LD H,B
15C5: 2F            CPL
15C6: 2F            CPL
15C7: 83            ADD A,E
15C8: 05            DEC B
15C9: 31 53 54      LD SP,0x5453
15CC: 20 42         JR NZ,0x1610
15CE: 4F            LD C,A
15CF: 4E            LD C,(HL)
15D0: 55            LD D,L
15D1: 53            LD D,E
15D2: 20 46         JR NZ,0x161A
15D4: 4F            LD C,A
15D5: 52            LD D,D
15D6: 20 20         JR NZ,0x15F8
15D8: 20 2F         JR NZ,0x1609
15DA: 32 83 05      LD (0x0583),A
15DD: 32 4E 44      LD (0x444E),A
15E0: 20 42         JR NZ,0x1624
15E2: 4F            LD C,A
15E3: 4E            LD C,(HL)
15E4: 55            LD D,L
15E5: 53            LD D,E
15E6: 20 46         JR NZ,0x162E
15E8: 4F            LD C,A
15E9: 52            LD D,D
15EA: 20 20         JR NZ,0x160C
15EC: 20 2F         JR NZ,0x161D
15EE: 35            DEC (HL)
15EF: 83            ADD A,E
15F0: 05            DEC B
15F1: 41            LD B,C
15F2: 4E            LD C,(HL)
15F3: 44            LD B,H
15F4: 20 46         JR NZ,0x163C
15F6: 4F            LD C,A
15F7: 52            LD D,D
15F8: 20 45         JR NZ,0x163F
15FA: 56            LD D,(HL)
15FB: 45            LD B,L
15FC: 52            LD D,D
15FD: 59            LD E,C
15FE: 20 20         JR NZ,0x1620
1600: 20 2F         JR NZ,0x1631
1602: 05            DEC B
1603: 30 30         JR NC,0x1635
1605: 30 30         JR NC,0x1637
1607: 20 50         JR NZ,0x1659
1609: 54            LD D,H
160A: 53            LD D,E
160B: 2F            CPL
160C: FF            RST 0x38
160D: FF            RST 0x38
160E: FF            RST 0x38
160F: FF            RST 0x38
1610: FF            RST 0x38
1611: FF            RST 0x38
1612: FF            RST 0x38
1613: FF            RST 0x38
1614: FF            RST 0x38
1615: FF            RST 0x38
1616: FF            RST 0x38
1617: FF            RST 0x38
1618: FF            RST 0x38
1619: FF            RST 0x38
161A: FF            RST 0x38
161B: FF            RST 0x38
161C: FF            RST 0x38
161D: FF            RST 0x38
161E: FF            RST 0x38
161F: FF            RST 0x38
1620: FF            RST 0x38
1621: FF            RST 0x38
1622: FF            RST 0x38
1623: FF            RST 0x38
1624: FF            RST 0x38
1625: FF            RST 0x38
1626: FF            RST 0x38
1627: FF            RST 0x38
1628: FF            RST 0x38
1629: FF            RST 0x38
162A: FF            RST 0x38
162B: FF            RST 0x38
162C: FF            RST 0x38
162D: FF            RST 0x38
162E: FF            RST 0x38
162F: FF            RST 0x38
1630: FF            RST 0x38
1631: FF            RST 0x38
1632: FF            RST 0x38
1633: FF            RST 0x38
1634: FF            RST 0x38
1635: FF            RST 0x38
1636: FF            RST 0x38
1637: FF            RST 0x38
1638: FF            RST 0x38
1639: FF            RST 0x38
163A: FF            RST 0x38
163B: FF            RST 0x38
163C: FF            RST 0x38
163D: FF            RST 0x38
163E: FF            RST 0x38
163F: FF            RST 0x38
1640: FF            RST 0x38
1641: FF            RST 0x38
1642: FF            RST 0x38
1643: FF            RST 0x38
1644: FF            RST 0x38
1645: FF            RST 0x38
1646: FF            RST 0x38
1647: FF            RST 0x38
1648: FF            RST 0x38
1649: FF            RST 0x38
164A: FF            RST 0x38
164B: FF            RST 0x38
164C: FF            RST 0x38
164D: FF            RST 0x38
164E: FF            RST 0x38
164F: FF            RST 0x38
1650: FF            RST 0x38
1651: FF            RST 0x38
1652: FF            RST 0x38
1653: FF            RST 0x38
1654: FF            RST 0x38
1655: FF            RST 0x38
1656: FF            RST 0x38
1657: FF            RST 0x38
1658: FF            RST 0x38
1659: FF            RST 0x38
165A: FF            RST 0x38
165B: FF            RST 0x38
165C: FF            RST 0x38
165D: FF            RST 0x38
165E: FF            RST 0x38
165F: FF            RST 0x38
1660: FF            RST 0x38
1661: FF            RST 0x38
1662: FF            RST 0x38
1663: FF            RST 0x38
1664: FF            RST 0x38
1665: FF            RST 0x38
1666: FF            RST 0x38
1667: FF            RST 0x38
1668: FF            RST 0x38
1669: FF            RST 0x38
166A: FF            RST 0x38
166B: FF            RST 0x38
166C: FF            RST 0x38
166D: FF            RST 0x38
166E: FF            RST 0x38
166F: FF            RST 0x38
1670: FF            RST 0x38
1671: FF            RST 0x38
1672: FF            RST 0x38
1673: FF            RST 0x38
1674: FF            RST 0x38
1675: FF            RST 0x38
1676: FF            RST 0x38
1677: FF            RST 0x38
1678: FF            RST 0x38
1679: FF            RST 0x38
167A: FF            RST 0x38
167B: FF            RST 0x38
167C: FF            RST 0x38
167D: FF            RST 0x38
167E: FF            RST 0x38
167F: FF            RST 0x38
1680: FF            RST 0x38
1681: FF            RST 0x38
1682: FF            RST 0x38
1683: FF            RST 0x38
1684: FF            RST 0x38
1685: FF            RST 0x38
1686: FF            RST 0x38
1687: FF            RST 0x38
1688: FF            RST 0x38
1689: FF            RST 0x38
168A: FF            RST 0x38
168B: FF            RST 0x38
168C: FF            RST 0x38
168D: FF            RST 0x38
168E: FF            RST 0x38
168F: FF            RST 0x38
1690: FF            RST 0x38
1691: FF            RST 0x38
1692: FF            RST 0x38
1693: FF            RST 0x38
1694: FF            RST 0x38
1695: FF            RST 0x38
1696: FF            RST 0x38
1697: FF            RST 0x38
1698: FF            RST 0x38
1699: FF            RST 0x38
169A: FF            RST 0x38
169B: FF            RST 0x38
169C: FF            RST 0x38
169D: FF            RST 0x38
169E: FF            RST 0x38
169F: FF            RST 0x38
16A0: FF            RST 0x38
16A1: FF            RST 0x38
16A2: FF            RST 0x38
16A3: FF            RST 0x38
16A4: FF            RST 0x38
16A5: FF            RST 0x38
16A6: FF            RST 0x38
16A7: FF            RST 0x38
16A8: FF            RST 0x38
16A9: FF            RST 0x38
16AA: FF            RST 0x38
16AB: FF            RST 0x38
16AC: FF            RST 0x38
16AD: FF            RST 0x38
16AE: FF            RST 0x38
16AF: FF            RST 0x38
16B0: FF            RST 0x38
16B1: FF            RST 0x38
16B2: FF            RST 0x38
16B3: FF            RST 0x38
16B4: FF            RST 0x38
16B5: FF            RST 0x38
16B6: FF            RST 0x38
16B7: FF            RST 0x38
16B8: FF            RST 0x38
16B9: FF            RST 0x38
16BA: FF            RST 0x38
16BB: FF            RST 0x38
16BC: FF            RST 0x38
16BD: FF            RST 0x38
16BE: FF            RST 0x38
16BF: FF            RST 0x38
16C0: FF            RST 0x38
16C1: FF            RST 0x38
16C2: FF            RST 0x38
16C3: FF            RST 0x38
16C4: FF            RST 0x38
16C5: FF            RST 0x38
16C6: FF            RST 0x38
16C7: FF            RST 0x38
16C8: FF            RST 0x38
16C9: FF            RST 0x38
16CA: FF            RST 0x38
16CB: FF            RST 0x38
16CC: FF            RST 0x38
16CD: FF            RST 0x38
16CE: FF            RST 0x38
16CF: FF            RST 0x38
16D0: FF            RST 0x38
16D1: FF            RST 0x38
16D2: FF            RST 0x38
16D3: FF            RST 0x38
16D4: FF            RST 0x38
16D5: FF            RST 0x38
16D6: FF            RST 0x38
16D7: FF            RST 0x38
16D8: FF            RST 0x38
16D9: FF            RST 0x38
16DA: FF            RST 0x38
16DB: FF            RST 0x38
16DC: FF            RST 0x38
16DD: FF            RST 0x38
16DE: FF            RST 0x38
16DF: FF            RST 0x38
16E0: FF            RST 0x38
16E1: FF            RST 0x38
16E2: FF            RST 0x38
16E3: FF            RST 0x38
16E4: FF            RST 0x38
16E5: FF            RST 0x38
16E6: FF            RST 0x38
16E7: FF            RST 0x38
16E8: FF            RST 0x38
16E9: FF            RST 0x38
16EA: FF            RST 0x38
16EB: FF            RST 0x38
16EC: FF            RST 0x38
16ED: FF            RST 0x38
16EE: FF            RST 0x38
16EF: FF            RST 0x38
16F0: FF            RST 0x38
16F1: FF            RST 0x38
16F2: FF            RST 0x38
16F3: FF            RST 0x38
16F4: FF            RST 0x38
16F5: FF            RST 0x38
16F6: FF            RST 0x38
16F7: FF            RST 0x38
16F8: FF            RST 0x38
16F9: FF            RST 0x38
16FA: FF            RST 0x38
16FB: FF            RST 0x38
16FC: FF            RST 0x38
16FD: FF            RST 0x38
16FE: FF            RST 0x38
16FF: FF            RST 0x38
1700: ED 5B 82 92   LD DE,(0x9282)
1704: 1A            LD A,(DE)
1705: 07            RLCA
1706: 07            RLCA
1707: 07            RLCA
1708: E6 07         AND 0x07
170A: 21 13 17      LD HL,0x1713
170D: CF            RST 0x08
170E: 7E            LD A,(HL)
170F: 23            INC HL
1710: 66            LD H,(HL)
1711: 6F            LD L,A
1712: E9            JP (HL)
1713: 66            LD H,(HL)
1714: 17            RLA
1715: 66            LD H,(HL)
1716: 17            RLA
1717: 1F            RRA
1718: 17            RLA
1719: 66            LD H,(HL)
171A: 17            RLA
171B: 34            INC (HL)
171C: 17            RLA
171D: 2D            DEC L
171E: 17            RLA
171F: 3A A0 92      LD A,(0x92A0)
1722: E6 0F         AND 0x0F
1724: C0            RET NZ
1725: 21 07 92      LD HL,0x9207
1728: 35            DEC (HL)
1729: C0            RET NZ
172A: C3 66 17      JP 0x1766
172D: CD 19 1F      CALL 0x1F19
1730: ED 5B 82 92   LD DE,(0x9282)
1734: 1A            LD A,(DE)
1735: 21 27 98      LD HL,0x9827
1738: 5E            LD E,(HL)
1739: CB 47         BIT 0,A
173B: 20 04         JR NZ,0x1741
173D: E6 0A         AND 0x0A
173F: 18 14         JR 0x1755
1741: 3A 09 92      LD A,(0x9209)
1744: 6F            LD L,A
1745: 26 93         LD H,0x93
1747: 3A 62 93      LD A,(0x9362)
174A: 96            SUB (HL)
174B: 3E 0A         LD A,0x0A
174D: 28 06         JR Z,0x1755
174F: 3E 08         LD A,0x08
1751: 38 02         JR C,0x1755
1753: 3E 02         LD A,0x02
1755: CD 9C 1F      CALL 0x1F9C
1758: 3A A0 92      LD A,(0x92A0)
175B: E6 03         AND 0x03
175D: C0            RET NZ
175E: 21 07 92      LD HL,0x9207
1761: 35            DEC (HL)
1762: C0            RET NZ
1763: CD 19 1F      CALL 0x1F19
1766: ED 5B 82 92   LD DE,(0x9282)
176A: 1A            LD A,(DE)
176B: E6 C0         AND 0xC0
176D: FE 80         CP 0x80
176F: 20 01         JR NZ,0x1772
1771: 13            INC DE
1772: 13            INC DE
1773: 1A            LD A,(DE)
1774: ED 53 82 92   LD (0x9282),DE
1778: 07            RLCA
1779: 07            RLCA
177A: 07            RLCA
177B: E6 07         AND 0x07
177D: 21 86 17      LD HL,0x1786
1780: CF            RST 0x08
1781: 7E            LD A,(HL)
1782: 23            INC HL
1783: 66            LD H,(HL)
1784: 6F            LD L,A
1785: E9            JP (HL)
1786: 94            SUB H
1787: 17            RLA
1788: 94            SUB H
1789: 17            RLA
178A: A1            AND C
178B: 17            RLA
178C: A8            XOR B
178D: 17            RLA
178E: AE            XOR (HL)
178F: 17            RLA
1790: AE            XOR (HL)
1791: 17            RLA
1792: 9C            SBC A,H
1793: 17            RLA
1794: 1A            LD A,(DE)
1795: 07            RLCA
1796: E6 7E         AND 0x7E
1798: 32 09 92      LD (0x9209),A
179B: C9            RET
179C: AF            XOR A
179D: 32 03 90      LD (0x9003),A
17A0: C9            RET
17A1: 1A            LD A,(DE)
17A2: E6 1F         AND 0x1F
17A4: 32 07 92      LD (0x9207),A
17A7: C9            RET
17A8: 1A            LD A,(DE)
17A9: E6 1F         AND 0x1F
17AB: 4F            LD C,A
17AC: F7            RST 0x30
17AD: C9            RET
17AE: 13            INC DE
17AF: 1A            LD A,(DE)
17B0: 18 F2         JR 0x17A4
17B2: 3A 01 92      LD A,(0x9201)
17B5: 3D            DEC A
17B6: C0            RET NZ
17B7: 3A 03 92      LD A,(0x9203)
17BA: 21 C3 17      LD HL,0x17C3
17BD: CF            RST 0x08
17BE: 5E            LD E,(HL)
17BF: 23            INC HL
17C0: 56            LD D,(HL)
17C1: EB            EX DE,HL
17C2: E9            JP (HL)
17C3: 40            LD B,B
17C4: 19            ADD HL,DE
17C5: 48            LD C,B
17C6: 19            ADD HL,DE
17C7: 84            ADD A,H
17C8: 19            ADD HL,DE
17C9: D9            EXX
17CA: 18 D1         JR 0x179D
17CC: 18 AC         JR 0x177A
17CE: 18 40         JR 0x1810
17D0: 19            ADD HL,DE
17D1: F5            PUSH AF
17D2: 17            RLA
17D3: 52            LD D,D
17D4: 18 D1         JR 0x17A7
17D6: 18 08         JR 0x17E0
17D8: 18 D1         JR 0x17AB
17DA: 18 40         JR 0x181C
17DC: 18 40         JR 0x181E
17DE: 19            ADD HL,DE
17DF: E1            POP HL
17E0: 17            RLA
17E1: 3A AF 92      LD A,(0x92AF)
17E4: A7            AND A
17E5: 28 05         JR Z,0x17EC
17E7: 3D            DEC A
17E8: CA A7 19      JP Z,0x19A7
17EB: C9            RET
17EC: CD 14 32      CALL 0x3214
17EF: 3E 0A         LD A,0x0A
17F1: 32 AF 92      LD (0x92AF),A
17F4: C9            RET
17F5: 3A A0 92      LD A,(0x92A0)
17F8: E6 1F         AND 0x1F
17FA: FE 1F         CP 0x1F
17FC: C0            RET NZ
17FD: 3E 01         LD A,0x01
17FF: 32 05 90      LD (0x9005),A
1802: 0E 02         LD C,0x02
1804: F7            RST 0x30
1805: C3 A7 19      JP 0x19A7
1808: CD 4C 13      CALL 0x134C
180B: 21 1F 18      LD HL,0x181F
180E: 22 82 92      LD (0x9282),HL
1811: 3E 01         LD A,0x01
1813: 32 03 90      LD (0x9003),A
1816: 32 15 90      LD (0x9015),A
1819: 32 25 90      LD (0x9025),A
181C: C3 A7 19      JP 0x19A7
181F: 08            EX AF,AF'
1820: 18 8A         JR 0x17AC
1822: 08            EX AF,AF'
1823: 88            ADC A,B
1824: 06 81         LD B,0x81
1826: 28 81         JR Z,0x17A9
1828: 05            DEC B
1829: 54            LD D,H
182A: 1A            LD A,(DE)
182B: 88            ADC A,B
182C: 12            LD (DE),A
182D: 81            ADD A,C
182E: 0F            RRCA
182F: A2            AND D
1830: 16 AA         LD D,0xAA
1832: 14            INC D
1833: 88            ADC A,B
1834: 18 88         JR 0x17BE
1836: 10 43         DJNZ 0x187B
1838: 82            ADD A,D
1839: 10 88         DJNZ 0x17C3
183B: 06 A2         LD B,0xA2
183D: 20 56         JR NZ,0x1895
183F: C0            RET NZ
1840: EF            RST 0x28
1841: CD 42 12      CALL 0x1242
1844: AF            XOR A
1845: 32 10 90      LD (0x9010),A
1848: 32 0B 92      LD (0x920B),A
184B: 3C            INC A
184C: 32 02 90      LD (0x9002),A
184F: C3 A7 19      JP 0x19A7
1852: AF            XOR A
1853: 32 2B 98      LD (0x982B),A
1856: 3C            INC A
1857: 32 B7 9A      LD (0x9AB7),A
185A: 32 21 98      LD (0x9821),A
185D: 32 03 90      LD (0x9003),A
1860: 32 15 90      LD (0x9015),A
1863: 32 25 98      LD (0x9825),A
1866: 21 87 18      LD HL,0x1887
1869: 22 82 92      LD (0x9282),HL
186C: CD C5 01      CALL 0x01C5
186F: CD 4C 13      CALL 0x134C
1872: 3E 01         LD A,0x01
1874: 32 0B 92      LD (0x920B),A
1877: 32 42 98      LD (0x9842),A
187A: 32 2C 98      LD (0x982C),A
187D: 3C            INC A
187E: 32 C4 99      LD (0x99C4),A
1881: 32 C5 99      LD (0x99C5),A
1884: C3 A7 19      JP 0x19A7
1887: 02            LD (BC),A
1888: 8A            ADC A,D
1889: 04            INC B
188A: 82            ADD A,D
188B: 07            RLCA
188C: AA            XOR D
188D: 28 88         JR Z,0x1817
188F: 10 AA         DJNZ 0x183B
1891: 38 82         JR C,0x1815
1893: 12            LD (DE),A
1894: AA            XOR D
1895: 20 88         JR NZ,0x181F
1897: 14            INC D
1898: AA            XOR D
1899: 20 82         JR NZ,0x181D
189B: 06 A8         LD B,0xA8
189D: 0E A2         LD C,0xA2
189F: 17            RLA
18A0: 88            ADC A,B
18A1: 12            LD (DE),A
18A2: A2            AND D
18A3: 14            INC D
18A4: 18 88         JR 0x182E
18A6: 1B            DEC DE
18A7: 81            ADD A,C
18A8: 2A 5F 4C      LD HL,(0x4C5F)
18AB: C0            RET NZ
18AC: 3A AE 92      LD A,(0x92AE)
18AF: A7            AND A
18B0: 28 09         JR Z,0x18BB
18B2: 3D            DEC A
18B3: CA A7 19      JP Z,0x19A7
18B6: FE 05         CP 0x05
18B8: 28 0C         JR Z,0x18C6
18BA: C9            RET
18BB: 3E 34         LD A,0x34
18BD: 32 34 92      LD (0x9234),A
18C0: 3E 09         LD A,0x09
18C2: 32 AE 92      LD (0x92AE),A
18C5: C9            RET
18C6: AF            XOR A
18C7: 32 62 93      LD (0x9362),A
18CA: 0E 13         LD C,0x13
18CC: F7            RST 0x30
18CD: 0E 14         LD C,0x14
18CF: F7            RST 0x30
18D0: C9            RET
18D1: 3A 03 90      LD A,(0x9003)
18D4: A7            AND A
18D5: CA A7 19      JP Z,0x19A7
18D8: C9            RET
18D9: 06 07         LD B,0x07
18DB: CD 9E 12      CALL 0x129E
18DE: 10 FB         DJNZ 0x18DB
18E0: AF            XOR A
18E1: 32 20 98      LD (0x9820),A
18E4: 32 05 90      LD (0x9005),A
18E7: CD 4C 13      CALL 0x134C
18EA: 21 0D FF      LD HL,0xFF0D
18ED: 22 C5 92      LD (0x92C5),HL
18F0: 22 C4 92      LD (0x92C4),HL
18F3: 22 C1 92      LD (0x92C1),HL
18F6: 22 C0 92      LD (0x92C0),HL
18F9: 21 28 19      LD HL,0x1928
18FC: 22 82 92      LD (0x9282),HL
18FF: AF            XOR A
1900: 06 10         LD B,0x10
1902: 21 CA 92      LD HL,0x92CA
1905: DF            RST 0x18
1906: 32 27 98      LD (0x9827),A
1909: 32 0B 92      LD (0x920B),A
190C: 3C            INC A
190D: 32 2B 98      LD (0x982B),A
1910: 32 10 90      LD (0x9010),A
1913: 32 0B 90      LD (0x900B),A
1916: 32 03 90      LD (0x9003),A
1919: 3A 03 68      LD A,(0x6803)
191C: 0F            RRCA
191D: E6 01         AND 0x01
191F: 32 B7 9A      LD (0x9AB7),A
1922: CD 7B 12      CALL 0x127B
1925: C3 A7 19      JP 0x19A7
1928: 08            EX AF,AF'
1929: 1B            DEC DE
192A: 81            ADD A,C
192B: 3D            DEC A
192C: 81            ADD A,C
192D: 0A            LD A,(BC)
192E: 42            LD B,D
192F: 19            ADD HL,DE
1930: 81            ADD A,C
1931: 28 81         JR Z,0x18B4
1933: 08            EX AF,AF'
1934: 18 81         JR 0x18B7
1936: 2E 81         LD L,0x81
1938: 03            INC BC
1939: 1A            LD A,(DE)
193A: 81            ADD A,C
193B: 11 81 05      LD DE,0x0581
193E: 42            LD B,D
193F: C0            RET NZ
1940: CD 60 01      CALL 0x0160
1943: CD 3C 00      CALL 0x003C
1946: 18 5F         JR 0x19A7
1948: 21 5C 19      LD HL,0x195C
194B: 22 80 92      LD (0x9280),HL
194E: AF            XOR A
194F: 32 05 92      LD (0x9205),A
1952: 32 A8 92      LD (0x92A8),A
1955: 3E 02         LD A,0x02
1957: 32 AE 92      LD (0x92AE),A
195A: 18 4B         JR 0x19A7
195C: 08            EX AF,AF'
195D: 1B            DEC DE
195E: 44            LD B,H
195F: 3A 0A 12      LD A,(0x120A)
1962: 44            LD B,H
1963: 42            LD B,D
1964: 0C            INC C
1965: 08            EX AF,AF'
1966: 7C            LD A,H
1967: 50            LD D,B
1968: 34            INC (HL)
1969: 08            EX AF,AF'
196A: 34            INC (HL)
196B: 5C            LD E,H
196C: 30 08         JR NC,0x1976
196E: 64            LD H,H
196F: 5C            LD E,H
1970: 32 08 94      LD (0x9408),A
1973: 5C            LD E,H
1974: 4A            LD C,D
1975: 12            LD (DE),A
1976: A4            AND H
1977: 64            LD H,H
1978: 36 08         LD (HL),0x08
197A: C4 5C 58      CALL NZ,0x585C
197D: 12            LD (DE),A
197E: B4            OR H
197F: 64            LD H,H
1980: 52            LD D,D
1981: 12            LD (DE),A
1982: D4 64 3A      CALL NC,0x3A64
1985: AE            XOR (HL)
1986: 92            SUB D
1987: A7            AND A
1988: C0            RET NZ
1989: 3E 02         LD A,0x02
198B: 32 AE 92      LD (0x92AE),A
198E: 3A 05 92      LD A,(0x9205)
1991: FE 05         CP 0x05
1993: 28 12         JR Z,0x19A7
1995: 3C            INC A
1996: 32 05 92      LD (0x9205),A
1999: C6 0D         ADD A,0x0D
199B: 4F            LD C,A
199C: F7            RST 0x30
199D: 3A 05 92      LD A,(0x9205)
19A0: FE 03         CP 0x03
19A2: D8            RET C
19A3: CD 9E 12      CALL 0x129E
19A6: C9            RET
19A7: 21 03 92      LD HL,0x9203
19AA: 34            INC (HL)
19AB: 7E            LD A,(HL)
19AC: FE 0F         CP 0x0F
19AE: C0            RET NZ
19AF: 36 00         LD (HL),0x00
19B1: C9            RET
19B2: 3A 8E 92      LD A,(0x928E)
19B5: A7            AND A
19B6: 20 1A         JR NZ,0x19D2
19B8: 21 AD 92      LD HL,0x92AD
19BB: B6            OR (HL)
19BC: 28 28         JR Z,0x19E6
19BE: FE 04         CP 0x04
19C0: 20 05         JR NZ,0x19C7
19C2: 3D            DEC A
19C3: 77            LD (HL),A
19C4: 32 A9 9A      LD (0x9AA9),A
19C7: 3A 29 98      LD A,(0x9829)
19CA: C6 0D         ADD A,0x0D
19CC: 6F            LD L,A
19CD: 26 91         LD H,0x91
19CF: 36 04         LD (HL),0x04
19D1: C9            RET
19D2: 0E 0A         LD C,0x0A
19D4: F7            RST 0x30
19D5: 3E 06         LD A,0x06
19D7: 32 AD 92      LD (0x92AD),A
19DA: 3C            INC A
19DB: 32 63 8B      LD (0x8B63),A
19DE: AF            XOR A
19DF: 32 8B 92      LD (0x928B),A
19E2: 32 8E 92      LD (0x928E),A
19E5: C9            RET
19E6: 3A D1 82      LD A,(0x82D1)
19E9: FE 24         CP 0x24
19EB: 28 29         JR Z,0x1A16
19ED: 21 62 93      LD HL,0x9362
19F0: 3A 28 98      LD A,(0x9828)
19F3: E6 07         AND 0x07
19F5: 5F            LD E,A
19F6: 54            LD D,H
19F7: 7E            LD A,(HL)
19F8: 12            LD (DE),A
19F9: 36 00         LD (HL),0x00
19FB: 2C            INC L
19FC: 1C            INC E
19FD: 7E            LD A,(HL)
19FE: 12            LD (DE),A
19FF: 26 9B         LD H,0x9B
1A01: 54            LD D,H
1A02: ED A8         LDD
1A04: ED A0         LDI
1A06: 26 8B         LD H,0x8B
1A08: 6B            LD L,E
1A09: 36 07         LD (HL),0x07
1A0B: 2D            DEC L
1A0C: 36 07         LD (HL),0x07
1A0E: 0E 0B         LD C,0x0B
1A10: 21 B1 83      LD HL,0x83B1
1A13: CD B3 13      CALL 0x13B3
1A16: 3A 28 98      LD A,(0x9828)
1A19: 6F            LD L,A
1A1A: E6 07         AND 0x07
1A1C: 5F            LD E,A
1A1D: 26 88         LD H,0x88
1A1F: 3A 15 92      LD A,(0x9215)
1A22: 4F            LD C,A
1A23: 7E            LD A,(HL)
1A24: FE 09         CP 0x09
1A26: 20 1D         JR NZ,0x1A45
1A28: 26 93         LD H,0x93
1A2A: 54            LD D,H
1A2B: 7E            LD A,(HL)
1A2C: 12            LD (DE),A
1A2D: 2C            INC L
1A2E: 1C            INC E
1A2F: 3E 10         LD A,0x10
1A31: CB 41         BIT 0,C
1A33: 28 02         JR Z,0x1A37
1A35: ED 44         NEG
1A37: 47            LD B,A
1A38: 86            ADD A,(HL)
1A39: 12            LD (DE),A
1A3A: 1F            RRA
1A3B: A8            XOR B
1A3C: 07            RLCA
1A3D: E6 01         AND 0x01
1A3F: 26 9B         LD H,0x9B
1A41: 54            LD D,H
1A42: AE            XOR (HL)
1A43: 12            LD (DE),A
1A44: C9            RET
1A45: 21 8B 92      LD HL,0x928B
1A48: 7E            LD A,(HL)
1A49: A7            AND A
1A4A: 20 05         JR NZ,0x1A51
1A4C: 16 8B         LD D,0x8B
1A4E: 3E 06         LD A,0x06
1A50: 12            LD (DE),A
1A51: 34            INC (HL)
1A52: FE 24         CP 0x24
1A54: 28 1A         JR Z,0x1A70
1A56: 06 01         LD B,0x01
1A58: CB 41         BIT 0,C
1A5A: 20 02         JR NZ,0x1A5E
1A5C: 05            DEC B
1A5D: 05            DEC B
1A5E: 6B            LD L,E
1A5F: 2C            INC L
1A60: 26 93         LD H,0x93
1A62: 78            LD A,B
1A63: 86            ADD A,(HL)
1A64: 77            LD (HL),A
1A65: 1F            RRA
1A66: A8            XOR B
1A67: 07            RLCA
1A68: D0            RET NC
1A69: 26 9B         LD H,0x9B
1A6B: 7E            LD A,(HL)
1A6C: EE 01         XOR 0x01
1A6E: 77            LD (HL),A
1A6F: C9            RET
1A70: AF            XOR A
1A71: 32 11 90      LD (0x9011),A
1A74: 32 A9 9A      LD (0x9AA9),A
1A77: 16 88         LD D,0x88
1A79: 3C            INC A
1A7A: 12            LD (DE),A
1A7B: 32 28 98      LD (0x9828),A
1A7E: 32 B9 99      LD (0x99B9),A
1A81: 3C            INC A
1A82: 32 13 92      LD (0x9213),A
1A85: C9            RET
1A86: 3A CA 99      LD A,(0x99CA)
1A89: 4F            LD C,A
1A8A: 3A A7 92      LD A,(0x92A7)
1A8D: B9            CP C
1A8E: D0            RET NC
1A8F: 3A 41 98      LD A,(0x9841)
1A92: A7            AND A
1A93: 20 46         JR NZ,0x1ADB
1A95: 21 07 88      LD HL,0x8807
1A98: 01 FF 14      LD BC,0x14FF
1A9B: 3E 01         LD A,0x01
1A9D: 2C            INC L
1A9E: ED A1         CPI
1AA0: 28 0F         JR Z,0x1AB1
1AA2: 10 F9         DJNZ 0x1A9D
1AA4: 21 3F 88      LD HL,0x883F
1AA7: 06 10         LD B,0x10
1AA9: 2C            INC L
1AAA: ED A1         CPI
1AAC: 28 03         JR Z,0x1AB1
1AAE: 10 F9         DJNZ 0x1AA9
1AB0: C9            RET
1AB1: 3E C0         LD A,0xC0
1AB3: 32 41 98      LD (0x9841),A
1AB6: 2D            DEC L
1AB7: 5D            LD E,L
1AB8: 16 8B         LD D,0x8B
1ABA: 1C            INC E
1ABB: 1A            LD A,(DE)
1ABC: 1D            DEC E
1ABD: 4F            LD C,A
1ABE: 3A 21 98      LD A,(0x9821)
1AC1: CB 3F         SRL A
1AC3: CB 3F         SRL A
1AC5: 6F            LD L,A
1AC6: 26 00         LD H,0x00
1AC8: 3E 03         LD A,0x03
1ACA: CD 61 10      CALL 0x1061
1ACD: C6 04         ADD A,0x04
1ACF: 21 2D 98      LD HL,0x982D
1AD2: 73            LD (HL),E
1AD3: 2C            INC L
1AD4: 71            LD (HL),C
1AD5: 2C            INC L
1AD6: 77            LD (HL),A
1AD7: 32 B2 9A      LD (0x9AB2),A
1ADA: C9            RET
1ADB: 3C            INC A
1ADC: 28 1C         JR Z,0x1AFA
1ADE: 32 41 98      LD (0x9841),A
1AE1: 08            EX AF,AF'
1AE2: 21 2D 98      LD HL,0x982D
1AE5: 5E            LD E,(HL)
1AE6: 16 88         LD D,0x88
1AE8: 1A            LD A,(DE)
1AE9: 3D            DEC A
1AEA: C2 5A 1B      JP NZ,0x1B5A
1AED: 16 8B         LD D,0x8B
1AEF: 2C            INC L
1AF0: 08            EX AF,AF'
1AF1: CB 67         BIT 4,A
1AF3: 28 01         JR Z,0x1AF6
1AF5: 2C            INC L
1AF6: 7E            LD A,(HL)
1AF7: 1C            INC E
1AF8: 12            LD (DE),A
1AF9: C9            RET
1AFA: 3A 15 90      LD A,(0x9015)
1AFD: A7            AND A
1AFE: 20 06         JR NZ,0x1B06
1B00: 3E E0         LD A,0xE0
1B02: 32 41 98      LD (0x9841),A
1B05: C9            RET
1B06: 3A 2D 98      LD A,(0x982D)
1B09: 6F            LD L,A
1B0A: 26 88         LD H,0x88
1B0C: 7E            LD A,(HL)
1B0D: 3D            DEC A
1B0E: 20 4A         JR NZ,0x1B5A
1B10: 26 92         LD H,0x92
1B12: 7E            LD A,(HL)
1B13: CB 7F         BIT 7,A
1B15: 20 43         JR NZ,0x1B5A
1B17: 3A 2F 98      LD A,(0x982F)
1B1A: D6 04         SUB 0x04
1B1C: 21 5F 1B      LD HL,0x1B5F
1B1F: CF            RST 0x08
1B20: 11 B0 99      LD DE,0x99B0
1B23: 3E 03         LD A,0x03
1B25: 12            LD (DE),A
1B26: 1C            INC E
1B27: ED A0         LDI
1B29: ED A0         LDI
1B2B: 3A 2F 98      LD A,(0x982F)
1B2E: D6 04         SUB 0x04
1B30: E6 0F         AND 0x0F
1B32: 4F            LD C,A
1B33: 21 65 1B      LD HL,0x1B65
1B36: CF            RST 0x08
1B37: 5E            LD E,(HL)
1B38: 23            INC HL
1B39: 56            LD D,(HL)
1B3A: 26 8B         LD H,0x8B
1B3C: 3A 2D 98      LD A,(0x982D)
1B3F: 6F            LD L,A
1B40: 79            LD A,C
1B41: 07            RLCA
1B42: 07            RLCA
1B43: 07            RLCA
1B44: C6 56         ADD A,0x56
1B46: 4E            LD C,(HL)
1B47: 77            LD (HL),A
1B48: 79            LD A,C
1B49: E6 F8         AND 0xF8
1B4B: 4F            LD C,A
1B4C: 3A 2E 98      LD A,(0x982E)
1B4F: E6 07         AND 0x07
1B51: B1            OR C
1B52: 32 2E 98      LD (0x982E),A
1B55: 26 88         LD H,0x88
1B57: CD 83 10      CALL 0x1083
1B5A: AF            XOR A
1B5B: 32 04 90      LD (0x9004),A
1B5E: C9            RET
1B5F: 1E BD         LD E,0xBD
1B61: 0A            LD A,(BC)
1B62: B8            CP B
1B63: 14            INC D
1B64: BC            CP H
1B65: EA 04 73      JP PE,0x7304
1B68: 04            INC B
1B69: AB            XOR E
1B6A: 04            INC B
1B6B: 3A 0B 92      LD A,(0x920B)
1B6E: A7            AND A
1B6F: 28 0A         JR Z,0x1B7B
1B71: 3A 15 90      LD A,(0x9015)
1B74: 4F            LD C,A
1B75: 3A 1D 90      LD A,(0x901D)
1B78: 2F            CPL
1B79: A1            AND C
1B7A: C8            RET Z
1B7B: 06 04         LD B,0x04
1B7D: 21 CA 92      LD HL,0x92CA
1B80: 7E            LD A,(HL)
1B81: 3C            INC A
1B82: 20 0D         JR NZ,0x1B91
1B84: 2C            INC L
1B85: 2C            INC L
1B86: 2C            INC L
1B87: 10 F7         DJNZ 0x1B80
1B89: 3A A0 92      LD A,(0x92A0)
1B8C: E6 0F         AND 0x0F
1B8E: 28 1E         JR Z,0x1BAE
1B90: C9            RET
1B91: 36 FF         LD (HL),0xFF
1B93: 3D            DEC A
1B94: 16 88         LD D,0x88
1B96: 5F            LD E,A
1B97: CB BB         RES 7,E
1B99: 08            EX AF,AF'
1B9A: 1A            LD A,(DE)
1B9B: 3D            DEC A
1B9C: C0            RET NZ
1B9D: 2C            INC L
1B9E: 5E            LD E,(HL)
1B9F: 2C            INC L
1BA0: 56            LD D,(HL)
1BA1: 08            EX AF,AF'
1BA2: 6F            LD L,A
1BA3: 26 88         LD H,0x88
1BA5: CD 79 10      CALL 0x1079
1BA8: 3E 01         LD A,0x01
1BAA: 32 B3 9A      LD (0x9AB3),A
1BAD: C9            RET
1BAE: 21 C0 92      LD HL,0x92C0
1BB1: 06 03         LD B,0x03
1BB3: 35            DEC (HL)
1BB4: 28 04         JR Z,0x1BBA
1BB6: 2C            INC L
1BB7: 10 FA         DJNZ 0x1BB3
1BB9: C9            RET
1BBA: 3A C4 99      LD A,(0x99C4)
1BBD: 4F            LD C,A
1BBE: 3A 87 92      LD A,(0x9287)
1BC1: B9            CP C
1BC2: 38 02         JR C,0x1BC6
1BC4: 34            INC (HL)
1BC5: C9            RET
1BC6: CB D5         SET 2,L
1BC8: 7E            LD A,(HL)
1BC9: CB 95         RES 2,L
1BCB: 77            LD (HL),A
1BCC: 78            LD A,B
1BCD: 3D            DEC A
1BCE: 21 D7 1B      LD HL,0x1BD7
1BD1: CF            RST 0x08
1BD2: 7E            LD A,(HL)
1BD3: 23            INC HL
1BD4: 66            LD H,(HL)
1BD5: 6F            LD L,A
1BD6: E9            JP (HL)
1BD7: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1BD8: 1B            DEC DE
1BD9: FD            DB 0xFD ; IX/IY prefix, manual analysis required
1BDA: 1B            DEC DE
1BDB: 07            RLCA
1BDC: 1C            INC E
1BDD: 06 14         LD B,0x14
1BDF: 21 08 88      LD HL,0x8808
1BE2: 11 4F 03      LD DE,0x034F
1BE5: 3A 2D 98      LD A,(0x982D)
1BE8: 4F            LD C,A
1BE9: 7E            LD A,(HL)
1BEA: 3D            DEC A
1BEB: 20 04         JR NZ,0x1BF1
1BED: 79            LD A,C
1BEE: BD            CP L
1BEF: 20 05         JR NZ,0x1BF6
1BF1: 2C            INC L
1BF2: 2C            INC L
1BF3: 10 F4         DJNZ 0x1BE9
1BF5: C9            RET
1BF6: 32 B3 9A      LD (0x9AB3),A
1BF9: CD 83 10      CALL 0x1083
1BFC: C9            RET
1BFD: 06 10         LD B,0x10
1BFF: 21 40 88      LD HL,0x8840
1C02: 11 A9 03      LD DE,0x03A9
1C05: 18 DE         JR 0x1BE5
1C07: 3A 2B 98      LD A,(0x982B)
1C0A: A7            AND A
1C0B: 20 29         JR NZ,0x1C36
1C0D: 21 2C 98      LD HL,0x982C
1C10: 34            INC (HL)
1C11: CB 46         BIT 0,(HL)
1C13: 20 21         JR NZ,0x1C36
1C15: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1C16: 2E 02         LD L,0x02
1C18: FD            DB 0xFD ; IX/IY prefix, manual analysis required
1C19: 21 54 04      LD HL,0x0454
1C1C: 11 30 88      LD DE,0x8830
1C1F: 06 04         LD B,0x04
1C21: 1A            LD A,(DE)
1C22: 3D            DEC A
1C23: 28 05         JR Z,0x1C2A
1C25: 1C            INC E
1C26: 1C            INC E
1C27: 10 F8         DJNZ 0x1C21
1C29: C9            RET
1C2A: 3E 01         LD A,0x01
1C2C: 32 2B 98      LD (0x982B),A
1C2F: 7B            LD A,E
1C30: 32 28 98      LD (0x9828),A
1C33: C3 B4 1C      JP 0x1CB4
1C36: 21 32 1D      LD HL,0x1D32
1C39: 16 88         LD D,0x88
1C3B: 01 00 06      LD BC,0x0600
1C3E: 5E            LD E,(HL)
1C3F: 23            INC HL
1C40: 3A 2D 98      LD A,(0x982D)
1C43: BB            CP E
1C44: 28 04         JR Z,0x1C4A
1C46: 1A            LD A,(DE)
1C47: 3D            DEC A
1C48: D6 01         SUB 0x01
1C4A: CB 11         RL C
1C4C: 10 F0         DJNZ 0x1C3E
1C4E: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1C4F: 2E 00         LD L,0x00
1C51: 06 04         LD B,0x04
1C53: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1C54: 61            LD H,C
1C55: 79            LD A,C
1C56: E6 07         AND 0x07
1C58: FE 04         CP 0x04
1C5A: 28 05         JR Z,0x1C61
1C5C: FE 03         CP 0x03
1C5E: D4 93 1C      CALL NC,0x1C93
1C61: CB 19         RR C
1C63: 10 F0         DJNZ 0x1C55
1C65: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1C66: 2C            INC L
1C67: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1C68: 4C            LD C,H
1C69: 06 04         LD B,0x04
1C6B: 79            LD A,C
1C6C: E6 07         AND 0x07
1C6E: C4 93 1C      CALL NZ,0x1C93
1C71: CB 19         RR C
1C73: 10 F6         DJNZ 0x1C6B
1C75: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1C76: 2C            INC L
1C77: 11 30 88      LD DE,0x8830
1C7A: 06 04         LD B,0x04
1C7C: 1A            LD A,(DE)
1C7D: 3D            DEC A
1C7E: 28 26         JR Z,0x1CA6
1C80: 1C            INC E
1C81: 1C            INC E
1C82: 10 F8         DJNZ 0x1C7C
1C84: 21 00 88      LD HL,0x8800
1C87: 06 04         LD B,0x04
1C89: 7E            LD A,(HL)
1C8A: 3D            DEC A
1C8B: CA 2B 1D      JP Z,0x1D2B
1C8E: 2C            INC L
1C8F: 2C            INC L
1C90: 10 F7         DJNZ 0x1C89
1C92: C9            RET
1C93: 78            LD A,B
1C94: CB 4F         BIT 1,A
1C96: 28 02         JR Z,0x1C9A
1C98: EE 01         XOR 0x01
1C9A: E6 03         AND 0x03
1C9C: CB 27         SLA A
1C9E: C6 30         ADD A,0x30
1CA0: 5F            LD E,A
1CA1: 1A            LD A,(DE)
1CA2: FE 01         CP 0x01
1CA4: C0            RET NZ
1CA5: E1            POP HL
1CA6: FD            DB 0xFD ; IX/IY prefix, manual analysis required
1CA7: 21 11 04      LD HL,0x0411
1CAA: 3A 0B 92      LD A,(0x920B)
1CAD: A7            AND A
1CAE: 20 04         JR NZ,0x1CB4
1CB0: FD            DB 0xFD ; IX/IY prefix, manual analysis required
1CB1: 21 F1 00      LD HL,0x00F1
1CB4: 7B            LD A,E
1CB5: 0F            RRCA
1CB6: 0F            RRCA
1CB7: 7B            LD A,E
1CB8: 17            RLA
1CB9: 0F            RRCA
1CBA: 32 CA 92      LD (0x92CA),A
1CBD: 08            EX AF,AF'
1CBE: FD            DB 0xFD ; IX/IY prefix, manual analysis required
1CBF: 22 CB 92      LD (0x92CB),HL
1CC2: 04            INC B
1CC3: 7B            LD A,E
1CC4: E6 07         AND 0x07
1CC6: 21 30 98      LD HL,0x9830
1CC9: D7            RST 0x10
1CCA: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1CCB: 7D            LD A,L
1CCC: EB            EX DE,HL
1CCD: 21 03 1D      LD HL,0x1D03
1CD0: CF            RST 0x08
1CD1: 7E            LD A,(HL)
1CD2: 12            LD (DE),A
1CD3: 23            INC HL
1CD4: 1C            INC E
1CD5: 7E            LD A,(HL)
1CD6: 12            LD (DE),A
1CD7: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1CD8: 7D            LD A,L
1CD9: FE 02         CP 0x02
1CDB: 28 0C         JR Z,0x1CE9
1CDD: 11 CD 92      LD DE,0x92CD
1CE0: 3D            DEC A
1CE1: 28 03         JR Z,0x1CE6
1CE3: CD 09 1D      CALL 0x1D09
1CE6: CD 09 1D      CALL 0x1D09
1CE9: 3A CA 92      LD A,(0x92CA)
1CEC: E6 07         AND 0x07
1CEE: 6F            LD L,A
1CEF: 26 88         LD H,0x88
1CF1: 7E            LD A,(HL)
1CF2: 3D            DEC A
1CF3: C0            RET NZ
1CF4: 4D            LD C,L
1CF5: 21 CA 92      LD HL,0x92CA
1CF8: 2C            INC L
1CF9: 2C            INC L
1CFA: 2C            INC L
1CFB: 7E            LD A,(HL)
1CFC: 3C            INC A
1CFD: 20 F9         JR NZ,0x1CF8
1CFF: 08            EX AF,AF'
1D00: 79            LD A,C
1D01: 18 19         JR 0x1D1C
1D03: 0D            DEC C
1D04: BA            CP D
1D05: 05            DEC B
1D06: B7            OR A
1D07: 01 B5 CB      LD BC,0xCBB5
1D0A: 09            ADD HL,BC
1D0B: 38 06         JR C,0x1D13
1D0D: 05            DEC B
1D0E: CB 09         RRC C
1D10: 38 01         JR C,0x1D13
1D12: 05            DEC B
1D13: 78            LD A,B
1D14: 05            DEC B
1D15: 21 32 1D      LD HL,0x1D32
1D18: D7            RST 0x10
1D19: 08            EX AF,AF'
1D1A: 7E            LD A,(HL)
1D1B: EB            EX DE,HL
1D1C: 17            RLA
1D1D: 0F            RRCA
1D1E: 77            LD (HL),A
1D1F: 08            EX AF,AF'
1D20: 2C            INC L
1D21: FD            DB 0xFD ; IX/IY prefix, manual analysis required
1D22: 7D            LD A,L
1D23: 77            LD (HL),A
1D24: 2C            INC L
1D25: FD            DB 0xFD ; IX/IY prefix, manual analysis required
1D26: 7C            LD A,H
1D27: 77            LD (HL),A
1D28: 2C            INC L
1D29: EB            EX DE,HL
1D2A: C9            RET
1D2B: 11 44 04      LD DE,0x0444
1D2E: CD 83 10      CALL 0x1083
1D31: C9            RET
1D32: 4A            LD C,D
1D33: 52            LD D,D
1D34: 5A            LD E,D
1D35: 58            LD E,B
1D36: 50            LD D,B
1D37: 48            LD C,B
1D38: 21 B4 99      LD HL,0x99B4
1D3B: 7E            LD A,(HL)
1D3C: E6 7F         AND 0x7F
1D3E: D6 7E         SUB 0x7E
1D40: 28 36         JR Z,0x1D78
1D42: 4E            LD C,(HL)
1D43: 34            INC (HL)
1D44: 3A 15 92      LD A,(0x9215)
1D47: CB 01         RLC C
1D49: A9            XOR C
1D4A: 0F            RRCA
1D4B: 3E 01         LD A,0x01
1D4D: 38 02         JR C,0x1D51
1D4F: ED 44         NEG
1D51: 4F            LD C,A
1D52: 21 14 98      LD HL,0x9814
1D55: 06 06         LD B,0x06
1D57: 7E            LD A,(HL)
1D58: 81            ADD A,C
1D59: 77            LD (HL),A
1D5A: 1F            RRA
1D5B: A9            XOR C
1D5C: 2C            INC L
1D5D: 07            RLCA
1D5E: 30 04         JR NC,0x1D64
1D60: 7E            LD A,(HL)
1D61: EE 01         XOR 0x01
1D63: 77            LD (HL),A
1D64: 2C            INC L
1D65: 10 F0         DJNZ 0x1D57
1D67: 3A A0 92      LD A,(0x92A0)
1D6A: E6 FC         AND 0xFC
1D6C: 3C            INC A
1D6D: F5            PUSH AF
1D6E: CD E0 23      CALL 0x23E0
1D71: F1            POP AF
1D72: C6 02         ADD A,0x02
1D74: CD E0 23      CALL 0x23E0
1D77: C9            RET
1D78: 32 0E 90      LD (0x900E),A
1D7B: C9            RET
1D7C: 3A 15 92      LD A,(0x9215)
1D7F: 47            LD B,A
1D80: 21 B9 99      LD HL,0x99B9
1D83: 7E            LD A,(HL)
1D84: 2C            INC L
1D85: A7            AND A
1D86: 28 26         JR Z,0x1DAE
1D88: 7E            LD A,(HL)
1D89: A7            AND A
1D8A: 3E FD         LD A,0xFD
1D8C: 20 13         JR NZ,0x1DA1
1D8E: 2C            INC L
1D8F: 7E            LD A,(HL)
1D90: 2C            INC L
1D91: BE            CP (HL)
1D92: 28 01         JR Z,0x1D95
1D94: 34            INC (HL)
1D95: 7E            LD A,(HL)
1D96: 2C            INC L
1D97: 86            ADD A,(HL)
1D98: 4F            LD C,A
1D99: E6 3F         AND 0x3F
1D9B: 77            LD (HL),A
1D9C: 79            LD A,C
1D9D: 07            RLCA
1D9E: 07            RLCA
1D9F: E6 03         AND 0x03
1DA1: CB 40         BIT 0,B
1DA3: 20 02         JR NZ,0x1DA7
1DA5: ED 44         NEG
1DA7: 3D            DEC A
1DA8: E6 07         AND 0x07
1DAA: 32 BE 99      LD (0x99BE),A
1DAD: C9            RET
1DAE: AF            XOR A
1DAF: 77            LD (HL),A
1DB0: 2C            INC L
1DB1: 2C            INC L
1DB2: 77            LD (HL),A
1DB3: 2C            INC L
1DB4: 77            LD (HL),A
1DB5: 3E 07         LD A,0x07
1DB7: 18 F1         JR 0x1DAA
1DB9: 21 00 92      LD HL,0x9200
1DBC: 06 30         LD B,0x30
1DBE: CB 7E         BIT 7,(HL)
1DC0: 20 05         JR NZ,0x1DC7
1DC2: 2C            INC L
1DC3: 2C            INC L
1DC4: 10 F8         DJNZ 0x1DBE
1DC6: C9            RET
1DC7: CB BE         RES 7,(HL)
1DC9: 26 88         LD H,0x88
1DCB: 36 04         LD (HL),0x04
1DCD: 2C            INC L
1DCE: 36 40         LD (HL),0x40
1DD0: 26 8B         LD H,0x8B
1DD2: 36 0A         LD (HL),0x0A
1DD4: 26 92         LD H,0x92
1DD6: 18 EB         JR 0x1DC3
1DD8: 3A A2 92      LD A,(0x92A2)
1DDB: E6 01         AND 0x01
1DDD: C0            RET NZ
1DDE: 21 AC 92      LD HL,0x92AC
1DE1: 06 04         LD B,0x04
1DE3: 7E            LD A,(HL)
1DE4: A7            AND A
1DE5: 28 01         JR Z,0x1DE8
1DE7: 35            DEC (HL)
1DE8: 2C            INC L
1DE9: 10 F8         DJNZ 0x1DE3
1DEB: C9            RET
1DEC: 3A A0 92      LD A,(0x92A0)
1DEF: E6 03         AND 0x03
1DF1: C0            RET NZ
1DF2: 21 0F 92      LD HL,0x920F
1DF5: 7E            LD A,(HL)
1DF6: 5F            LD E,A
1DF7: 16 FF         LD D,0xFF
1DF9: CB 7F         BIT 7,A
1DFB: 20 05         JR NZ,0x1E02
1DFD: 14            INC D
1DFE: 14            INC D
1DFF: 34            INC (HL)
1E00: 18 01         JR 0x1E03
1E02: 35            DEC (HL)
1E03: FE 1F         CP 0x1F
1E05: 20 02         JR NZ,0x1E09
1E07: CB FE         SET 7,(HL)
1E09: FE 81         CP 0x81
1E0B: 20 02         JR NZ,0x1E0F
1E0D: CB BE         RES 7,(HL)
1E0F: 4E            LD C,(HL)
1E10: E6 07         AND 0x07
1E12: 7A            LD A,D
1E13: 32 11 92      LD (0x9211),A
1E16: 7B            LD A,E
1E17: 20 10         JR NZ,0x1E29
1E19: 21 6A 1E      LD HL,0x1E6A
1E1C: 79            LD A,C
1E1D: E6 18         AND 0x18
1E1F: CF            RST 0x08
1E20: 7B            LD A,E
1E21: 11 20 99      LD DE,0x9920
1E24: 01 10 00      LD BC,0x0010
1E27: ED B0         LDIR
1E29: 21 15 92      LD HL,0x9215
1E2C: 07            RLCA
1E2D: AE            XOR (HL)
1E2E: 0F            RRCA
1E2F: 21 20 99      LD HL,0x9920
1E32: 11 00 99      LD DE,0x9900
1E35: 30 05         JR NC,0x1E3C
1E37: 01 FF 01      LD BC,0x01FF
1E3A: 18 03         JR 0x1E3F
1E3C: 01 01 FF      LD BC,0xFF01
1E3F: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1E40: 2E 05         LD L,0x05
1E42: CD 49 1E      CALL 0x1E49
1E45: 41            LD B,C
1E46: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1E47: 2E 0B         LD L,0x0B
1E49: CB 0E         RRC (HL)
1E4B: 30 15         JR NC,0x1E62
1E4D: 1A            LD A,(DE)
1E4E: 80            ADD A,B
1E4F: 12            LD (DE),A
1E50: 16 98         LD D,0x98
1E52: 1A            LD A,(DE)
1E53: 80            ADD A,B
1E54: 12            LD (DE),A
1E55: 1F            RRA
1E56: A8            XOR B
1E57: 07            RLCA
1E58: 30 06         JR NC,0x1E60
1E5A: 1C            INC E
1E5B: 1A            LD A,(DE)
1E5C: EE 01         XOR 0x01
1E5E: 12            LD (DE),A
1E5F: 1D            DEC E
1E60: 16 99         LD D,0x99
1E62: 1C            INC E
1E63: 1C            INC E
1E64: 2C            INC L
1E65: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1E66: 2D            DEC L
1E67: 20 E0         JR NZ,0x1E49
1E69: C9            RET
1E6A: FF            RST 0x38
1E6B: 77            LD (HL),A
1E6C: 55            LD D,L
1E6D: 14            INC D
1E6E: 10 10         DJNZ 0x1E80
1E70: 14            INC D
1E71: 55            LD D,L
1E72: 77            LD (HL),A
1E73: FF            RST 0x38
1E74: 00            NOP
1E75: 10 14         DJNZ 0x1E8B
1E77: 55            LD D,L
1E78: 77            LD (HL),A
1E79: FF            RST 0x38
1E7A: FF            RST 0x38
1E7B: 77            LD (HL),A
1E7C: 55            LD D,L
1E7D: 51            LD D,C
1E7E: 10 10         DJNZ 0x1E90
1E80: 51            LD D,C
1E81: 55            LD D,L
1E82: 77            LD (HL),A
1E83: FF            RST 0x38
1E84: 00            NOP
1E85: 10 51         DJNZ 0x1ED8
1E87: 55            LD D,L
1E88: 77            LD (HL),A
1E89: FF            RST 0x38
1E8A: FF            RST 0x38
1E8B: 77            LD (HL),A
1E8C: 57            LD D,A
1E8D: 15            DEC D
1E8E: 10 10         DJNZ 0x1EA0
1E90: 15            DEC D
1E91: 57            LD D,A
1E92: 77            LD (HL),A
1E93: FF            RST 0x38
1E94: 00            NOP
1E95: 10 15         DJNZ 0x1EAC
1E97: 57            LD D,A
1E98: 77            LD (HL),A
1E99: FF            RST 0x38
1E9A: FF            RST 0x38
1E9B: F7            RST 0x30
1E9C: D5            PUSH DE
1E9D: 91            SUB C
1E9E: 10 10         DJNZ 0x1EB0
1EA0: 91            SUB C
1EA1: D5            PUSH DE
1EA2: F7            RST 0x30
1EA3: FF            RST 0x38
1EA4: 00            NOP
1EA5: 10 91         DJNZ 0x1E38
1EA7: D5            PUSH DE
1EA8: F7            RST 0x30
1EA9: FF            RST 0x38
1EAA: 3A A0 92      LD A,(0x92A0)
1EAD: E6 01         AND 0x01
1EAF: C6 02         ADD A,0x02
1EB1: 47            LD B,A
1EB2: 3A 15 92      LD A,(0x9215)
1EB5: A7            AND A
1EB6: 78            LD A,B
1EB7: 28 02         JR Z,0x1EBB
1EB9: ED 44         NEG
1EBB: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1EBC: 67            LD H,A
1EBD: 2E 68         LD L,0x68
1EBF: 11 B0 92      LD DE,0x92B0
1EC2: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1EC3: 2E 08         LD L,0x08
1EC5: 26 8B         LD H,0x8B
1EC7: 7E            LD A,(HL)
1EC8: FE 30         CP 0x30
1ECA: 20 39         JR NZ,0x1F05
1ECC: 26 93         LD H,0x93
1ECE: 7E            LD A,(HL)
1ECF: A7            AND A
1ED0: 28 33         JR Z,0x1F05
1ED2: EB            EX DE,HL
1ED3: 46            LD B,(HL)
1ED4: 78            LD A,B
1ED5: E6 7E         AND 0x7E
1ED7: 2C            INC L
1ED8: 86            ADD A,(HL)
1ED9: 4F            LD C,A
1EDA: E6 1F         AND 0x1F
1EDC: 77            LD (HL),A
1EDD: 2C            INC L
1EDE: 79            LD A,C
1EDF: 07            RLCA
1EE0: 07            RLCA
1EE1: 07            RLCA
1EE2: E6 07         AND 0x07
1EE4: CB 78         BIT 7,B
1EE6: 28 02         JR Z,0x1EEA
1EE8: ED 44         NEG
1EEA: EB            EX DE,HL
1EEB: 86            ADD A,(HL)
1EEC: 77            LD (HL),A
1EED: 2C            INC L
1EEE: 7E            LD A,(HL)
1EEF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1EF0: 84            ADD A,H
1EF1: 77            LD (HL),A
1EF2: 1F            RRA
1EF3: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1EF4: AC            XOR H
1EF5: 07            RLCA
1EF6: 30 07         JR NC,0x1EFF
1EF8: 26 9B         LD H,0x9B
1EFA: CB 0E         RRC (HL)
1EFC: 3F            CCF
1EFD: CB 16         RL (HL)
1EFF: 2C            INC L
1F00: DD            DB 0xDD ; IX/IY prefix, manual analysis required
1F01: 2D            DEC L
1F02: 20 C1         JR NZ,0x1EC5
1F04: C9            RET
1F05: 26 88         LD H,0x88
1F07: 36 80         LD (HL),0x80
1F09: 2C            INC L
1F0A: 1C            INC E
1F0B: 1C            INC E
1F0C: 18 F1         JR 0x1EFF
1F0E: 3A 15 92      LD A,(0x9215)
1F11: C6 B6         ADD A,0xB6
1F13: 6F            LD L,A
1F14: 26 99         LD H,0x99
1F16: CB 66         BIT 4,(HL)
1F18: C0            RET NZ
1F19: 21 64 93      LD HL,0x9364
1F1C: 11 A4 92      LD DE,0x92A4
1F1F: AF            XOR A
1F20: BE            CP (HL)
1F21: 28 05         JR Z,0x1F28
1F23: 2E 66         LD L,0x66
1F25: 1C            INC E
1F26: BE            CP (HL)
1F27: C0            RET NZ
1F28: D5            PUSH DE
1F29: EB            EX DE,HL
1F2A: 21 63 9B      LD HL,0x9B63
1F2D: 54            LD D,H
1F2E: 1C            INC E
1F2F: CB 56         BIT 2,(HL)
1F31: 28 02         JR Z,0x1F35
1F33: D1            POP DE
1F34: C9            RET
1F35: ED A8         LDD
1F37: 26 93         LD H,0x93
1F39: 54            LD D,H
1F3A: ED A0         LDI
1F3C: ED A8         LDD
1F3E: 26 9B         LD H,0x9B
1F40: 54            LD D,H
1F41: 46            LD B,(HL)
1F42: EB            EX DE,HL
1F43: 3A 27 98      LD A,(0x9827)
1F46: E6 01         AND 0x01
1F48: 07            RLCA
1F49: 07            RLCA
1F4A: 07            RLCA
1F4B: B0            OR B
1F4C: 77            LD (HL),A
1F4D: 16 8B         LD D,0x8B
1F4F: 1A            LD A,(DE)
1F50: 62            LD H,D
1F51: E6 07         AND 0x07
1F53: 0E 30         LD C,0x30
1F55: FE 05         CP 0x05
1F57: 30 07         JR NC,0x1F60
1F59: 0C            INC C
1F5A: FE 02         CP 0x02
1F5C: 30 02         JR NC,0x1F60
1F5E: 0C            INC C
1F5F: 0C            INC C
1F60: 71            LD (HL),C
1F61: FE 04         CP 0x04
1F63: 38 03         JR C,0x1F68
1F65: 2F            CPL
1F66: C6 47         ADD A,0x47
1F68: CB 27         SLA A
1F6A: 4F            LD C,A
1F6B: 78            LD A,B
1F6C: 0F            RRCA
1F6D: 0F            RRCA
1F6E: 0F            RRCA
1F6F: E6 60         AND 0x60
1F71: 47            LD B,A
1F72: 3A 15 92      LD A,(0x9215)
1F75: A7            AND A
1F76: 78            LD A,B
1F77: 20 02         JR NZ,0x1F7B
1F79: EE 60         XOR 0x60
1F7B: B1            OR C
1F7C: D1            POP DE
1F7D: 12            LD (DE),A
1F7E: 26 88         LD H,0x88
1F80: 36 06         LD (HL),0x06
1F82: 3E 01         LD A,0x01
1F84: 32 AF 9A      LD (0x9AAF),A
1F87: 2A 46 98      LD HL,(0x9846)
1F8A: 23            INC HL
1F8B: 22 46 98      LD (0x9846),HL
1F8E: C9            RET
1F8F: 3A 27 98      LD A,(0x9827)
1F92: 5F            LD E,A
1F93: 3A 15 92      LD A,(0x9215)
1F96: C6 B6         ADD A,0xB6
1F98: 6F            LD L,A
1F99: 26 99         LD H,0x99
1F9B: 7E            LD A,(HL)
1F9C: E6 0A         AND 0x0A
1F9E: FE 0A         CP 0x0A
1FA0: 28 37         JR Z,0x1FD9
1FA2: 21 15 92      LD HL,0x9215
1FA5: CB 46         BIT 0,(HL)
1FA7: 28 02         JR Z,0x1FAB
1FA9: EE 0A         XOR 0x0A
1FAB: 21 A3 92      LD HL,0x92A3
1FAE: 47            LD B,A
1FAF: 0E 01         LD C,0x01
1FB1: 7E            LD A,(HL)
1FB2: EE 01         XOR 0x01
1FB4: 77            LD (HL),A
1FB5: 20 01         JR NZ,0x1FB8
1FB7: 0C            INC C
1FB8: 21 62 93      LD HL,0x9362
1FBB: 7E            LD A,(HL)
1FBC: A7            AND A
1FBD: C8            RET Z
1FBE: CB 48         BIT 1,B
1FC0: 20 0F         JR NZ,0x1FD1
1FC2: 7E            LD A,(HL)
1FC3: FE D1         CP 0xD1
1FC5: 38 03         JR C,0x1FCA
1FC7: CB 43         BIT 0,E
1FC9: C0            RET NZ
1FCA: FE E1         CP 0xE1
1FCC: D0            RET NC
1FCD: 81            ADD A,C
1FCE: 77            LD (HL),A
1FCF: 18 0D         JR 0x1FDE
1FD1: 7E            LD A,(HL)
1FD2: FE 12         CP 0x12
1FD4: D8            RET C
1FD5: 91            SUB C
1FD6: 77            LD (HL),A
1FD7: 18 05         JR 0x1FDE
1FD9: AF            XOR A
1FDA: 32 A3 92      LD (0x92A3),A
1FDD: C9            RET
1FDE: CB 43         BIT 0,E
1FE0: C8            RET Z
1FE1: C6 0F         ADD A,0x0F
1FE3: 32 60 93      LD (0x9360),A
1FE6: C9            RET
1FE7: FF            RST 0x38
1FE8: FF            RST 0x38
1FE9: FF            RST 0x38
1FEA: FF            RST 0x38
1FEB: FF            RST 0x38
1FEC: FF            RST 0x38
1FED: FF            RST 0x38
1FEE: FF            RST 0x38
1FEF: FF            RST 0x38
1FF0: FF            RST 0x38
1FF1: FF            RST 0x38
1FF2: FF            RST 0x38
1FF3: FF            RST 0x38
1FF4: FF            RST 0x38
1FF5: FF            RST 0x38
1FF6: FF            RST 0x38
1FF7: FF            RST 0x38
1FF8: FF            RST 0x38
1FF9: FF            RST 0x38
1FFA: FF            RST 0x38
1FFB: FF            RST 0x38
1FFC: FF            RST 0x38
1FFD: FF            RST 0x38
1FFE: FF            RST 0x38
1FFF: B6            OR (HL)
2000: 3A 28 98      LD A,(0x9828)
2003: 6F            LD L,A
2004: 26 88         LD H,0x88
2006: 7E            LD A,(HL)
2007: A7            AND A
2008: C2 BF 20      JP NZ,0x20BF
200B: 3A 8B 92      LD A,(0x928B)
200E: A7            AND A
200F: CA C7 20      JP Z,0x20C7
2012: 3D            DEC A
2013: CA D1 20      JP Z,0x20D1
2016: 26 93         LD H,0x93
2018: 7E            LD A,(HL)
2019: FE 80         CP 0x80
201B: 28 09         JR Z,0x2026
201D: F2 23 20      JP P,0x2023
2020: 34            INC (HL)
2021: 18 3B         JR 0x205E
2023: 35            DEC (HL)
2024: 18 38         JR 0x205E
2026: 2C            INC L
2027: 3A 15 92      LD A,(0x9215)
202A: A7            AND A
202B: 20 1F         JR NZ,0x204C
202D: 7E            LD A,(HL)
202E: FE 29         CP 0x29
2030: 20 0F         JR NZ,0x2041
2032: 26 9B         LD H,0x9B
2034: 7E            LD A,(HL)
2035: 26 93         LD H,0x93
2037: 3D            DEC A
2038: 20 07         JR NZ,0x2041
203A: 3E 03         LD A,0x03
203C: 32 8B 92      LD (0x928B),A
203F: 18 1D         JR 0x205E
2041: 34            INC (HL)
2042: 20 1A         JR NZ,0x205E
2044: 26 9B         LD H,0x9B
2046: 7E            LD A,(HL)
2047: EE 01         XOR 0x01
2049: 77            LD (HL),A
204A: 18 12         JR 0x205E
204C: 7E            LD A,(HL)
204D: FE 37         CP 0x37
204F: 20 08         JR NZ,0x2059
2051: 26 9B         LD H,0x9B
2053: 7E            LD A,(HL)
2054: 26 93         LD H,0x93
2056: A7            AND A
2057: 28 E1         JR Z,0x203A
2059: 35            DEC (HL)
205A: 7E            LD A,(HL)
205B: 3C            INC A
205C: 28 E6         JR Z,0x2044
205E: 21 62 8B      LD HL,0x8B62
2061: 7E            LD A,(HL)
2062: D6 06         SUB 0x06
2064: 4F            LD C,A
2065: 26 93         LD H,0x93
2067: 20 0C         JR NZ,0x2075
2069: 7E            LD A,(HL)
206A: FE 71         CP 0x71
206C: 28 07         JR Z,0x2075
206E: F2 73 20      JP P,0x2073
2071: 34            INC (HL)
2072: C9            RET
2073: 35            DEC (HL)
2074: C9            RET
2075: 3A 8B 92      LD A,(0x928B)
2078: FE 03         CP 0x03
207A: C0            RET NZ
207B: 3A 28 98      LD A,(0x9828)
207E: 6F            LD L,A
207F: 36 00         LD (HL),0x00
2081: 2C            INC L
2082: 0D            DEC C
2083: 0C            INC C
2084: 28 09         JR Z,0x208F
2086: 11 63 93      LD DE,0x9363
2089: AF            XOR A
208A: 32 2B 98      LD (0x982B),A
208D: 18 08         JR 0x2097
208F: 3E 01         LD A,0x01
2091: 32 27 98      LD (0x9827),A
2094: 11 61 93      LD DE,0x9361
2097: 7E            LD A,(HL)
2098: 12            LD (DE),A
2099: 26 9B         LD H,0x9B
209B: 54            LD D,H
209C: 7E            LD A,(HL)
209D: 12            LD (DE),A
209E: 2D            DEC L
209F: 26 88         LD H,0x88
20A1: 36 80         LD (HL),0x80
20A3: 26 8B         LD H,0x8B
20A5: 6B            LD L,E
20A6: 2D            DEC L
20A7: 36 06         LD (HL),0x06
20A9: 2C            INC L
20AA: 36 09         LD (HL),0x09
20AC: 2D            DEC L
20AD: 26 93         LD H,0x93
20AF: 36 80         LD (HL),0x80
20B1: 3E 01         LD A,0x01
20B3: 32 14 90      LD (0x9014),A
20B6: 32 15 90      LD (0x9015),A
20B9: 32 25 90      LD (0x9025),A
20BC: 32 B9 99      LD (0x99B9),A
20BF: AF            XOR A
20C0: 32 1D 90      LD (0x901D),A
20C3: 32 B1 9A      LD (0x9AB1),A
20C6: C9            RET
20C7: 3C            INC A
20C8: 32 8B 92      LD (0x928B),A
20CB: 3E 02         LD A,0x02
20CD: 32 AD 92      LD (0x92AD),A
20D0: C9            RET
20D1: 26 9B         LD H,0x9B
20D3: 3A AD 92      LD A,(0x92AD)
20D6: 5F            LD E,A
20D7: 3A 87 92      LD A,(0x9287)
20DA: B3            OR E
20DB: 32 8D 92      LD (0x928D),A
20DE: CD 88 21      CALL 0x2188
20E1: 05            DEC B
20E2: C0            RET NZ
20E3: 32 14 90      LD (0x9014),A
20E6: 32 15 90      LD (0x9015),A
20E9: 32 25 90      LD (0x9025),A
20EC: 3E 02         LD A,0x02
20EE: 32 8B 92      LD (0x928B),A
20F1: C9            RET
20F2: 21 62 9B      LD HL,0x9B62
20F5: CD 88 21      CALL 0x2188
20F8: CB 40         BIT 0,B
20FA: 20 55         JR NZ,0x2151
20FC: 3A 8B 92      LD A,(0x928B)
20FF: CB 7F         BIT 7,A
2101: 20 5A         JR NZ,0x215D
2103: 3A 8D 92      LD A,(0x928D)
2106: A7            AND A
2107: C8            RET Z
2108: 26 93         LD H,0x93
210A: 3A 28 98      LD A,(0x9828)
210D: 5F            LD E,A
210E: 54            LD D,H
210F: 1A            LD A,(DE)
2110: BE            CP (HL)
2111: 28 07         JR Z,0x211A
2113: F2 19 21      JP P,0x2119
2116: 35            DEC (HL)
2117: 18 01         JR 0x211A
2119: 34            INC (HL)
211A: 2C            INC L
211B: 3A 15 92      LD A,(0x9215)
211E: A7            AND A
211F: 28 0B         JR Z,0x212C
2121: 34            INC (HL)
2122: 7E            LD A,(HL)
2123: FE 7A         CP 0x7A
2125: 28 25         JR Z,0x214C
2127: FE 80         CP 0x80
2129: 28 16         JR Z,0x2141
212B: C9            RET
212C: 35            DEC (HL)
212D: 7E            LD A,(HL)
212E: 3C            INC A
212F: 20 08         JR NZ,0x2139
2131: 26 9B         LD H,0x9B
2133: 7E            LD A,(HL)
2134: EE 01         XOR 0x01
2136: 77            LD (HL),A
2137: 26 93         LD H,0x93
2139: 7E            LD A,(HL)
213A: FE E6         CP 0xE6
213C: 28 0E         JR Z,0x214C
213E: FE E0         CP 0xE0
2140: C0            RET NZ
2141: AF            XOR A
2142: 32 8D 92      LD (0x928D),A
2145: 3C            INC A
2146: 3E 07         LD A,0x07
2148: 32 63 8B      LD (0x8B63),A
214B: C9            RET
214C: AF            XOR A
214D: 32 15 90      LD (0x9015),A
2150: C9            RET
2151: 3A 15 90      LD A,(0x9015)
2154: A7            AND A
2155: 20 06         JR NZ,0x215D
2157: 3C            INC A
2158: 32 0D 92      LD (0x920D),A
215B: 18 22         JR 0x217F
215D: 26 93         LD H,0x93
215F: 2C            INC L
2160: 3A 15 92      LD A,(0x9215)
2163: A7            AND A
2164: 28 07         JR Z,0x216D
2166: 7E            LD A,(HL)
2167: FE 37         CP 0x37
2169: 28 12         JR Z,0x217D
216B: 35            DEC (HL)
216C: C9            RET
216D: 7E            LD A,(HL)
216E: FE 29         CP 0x29
2170: 28 0B         JR Z,0x217D
2172: 34            INC (HL)
2173: C0            RET NZ
2174: 26 9B         LD H,0x9B
2176: 7E            LD A,(HL)
2177: EE 01         XOR 0x01
2179: 77            LD (HL),A
217A: 26 93         LD H,0x93
217C: C9            RET
217D: 05            DEC B
217E: C0            RET NZ
217F: AF            XOR A
2180: 32 1C 90      LD (0x901C),A
2183: 3C            INC A
2184: 32 25 90      LD (0x9025),A
2187: C9            RET
2188: 7E            LD A,(HL)
2189: 4F            LD C,A
218A: CB 3F         SRL A
218C: A9            XOR C
218D: 4F            LD C,A
218E: 26 8B         LD H,0x8B
2190: 06 00         LD B,0x00
2192: 7E            LD A,(HL)
2193: E6 07         AND 0x07
2195: FE 06         CP 0x06
2197: 20 0E         JR NZ,0x21A7
2199: 0D            DEC C
219A: 0C            INC C
219B: 20 0A         JR NZ,0x21A7
219D: 08            EX AF,AF'
219E: 3A 8D 92      LD A,(0x928D)
21A1: A7            AND A
21A2: 20 02         JR NZ,0x21A6
21A4: 04            INC B
21A5: C9            RET
21A6: 08            EX AF,AF'
21A7: CB 41         BIT 0,C
21A9: 20 07         JR NZ,0x21B2
21AB: FE 06         CP 0x06
21AD: 28 09         JR Z,0x21B8
21AF: 34            INC (HL)
21B0: 18 0E         JR 0x21C0
21B2: A7            AND A
21B3: 28 03         JR Z,0x21B8
21B5: 35            DEC (HL)
21B6: 18 08         JR 0x21C0
21B8: 0D            DEC C
21B9: F2 A7 21      JP P,0x21A7
21BC: 0E 03         LD C,0x03
21BE: 18 E7         JR 0x21A7
21C0: 79            LD A,C
21C1: CB 4F         BIT 1,A
21C3: 28 02         JR Z,0x21C7
21C5: EE 01         XOR 0x01
21C7: 26 9B         LD H,0x9B
21C9: 77            LD (HL),A
21CA: C9            RET
21CB: 21 28 98      LD HL,0x9828
21CE: 5E            LD E,(HL)
21CF: 16 88         LD D,0x88
21D1: 1A            LD A,(DE)
21D2: FE 09         CP 0x09
21D4: 20 44         JR NZ,0x221A
21D6: 2C            INC L
21D7: 7E            LD A,(HL)
21D8: DD            DB 0xDD ; IX/IY prefix, manual analysis required
21D9: 6F            LD L,A
21DA: DD            DB 0xDD ; IX/IY prefix, manual analysis required
21DB: 26 91         LD H,0x91
21DD: DD            DB 0xDD ; IX/IY prefix, manual analysis required
21DE: 7E            LD A,(HL)
21DF: 0A            LD A,(BC)
21E0: A7            AND A
21E1: C0            RET NZ
21E2: 3E 0C         LD A,0x0C
21E4: DD            DB 0xDD ; IX/IY prefix, manual analysis required
21E5: CB 05         RLC L
21E7: 46            LD B,(HL)
21E8: 28 02         JR Z,0x21EC
21EA: ED 44         NEG
21EC: DD            DB 0xDD ; IX/IY prefix, manual analysis required
21ED: 77            LD (HL),A
21EE: 0C            INC C
21EF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
21F0: 7E            LD A,(HL)
21F1: 05            DEC B
21F2: 0F            RRCA
21F3: DD            DB 0xDD ; IX/IY prefix, manual analysis required
21F4: 7E            LD A,(HL)
21F5: 04            INC B
21F6: 1F            RRA
21F7: D6 78         SUB 0x78
21F9: FE 10         CP 0x10
21FB: D0            RET NC
21FC: 3A C6 99      LD A,(0x99C6)
21FF: 32 2A 98      LD (0x982A),A
2202: AF            XOR A
2203: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2204: 77            LD (HL),A
2205: 0C            INC C
2206: 32 19 90      LD (0x9019),A
2209: 32 8B 92      LD (0x928B),A
220C: 32 0D 92      LD (0x920D),A
220F: 3C            INC A
2210: 32 18 90      LD (0x9018),A
2213: 32 8C 92      LD (0x928C),A
2216: 32 8D 92      LD (0x928D),A
2219: C9            RET
221A: AF            XOR A
221B: 32 19 90      LD (0x9019),A
221E: 32 2B 98      LD (0x982B),A
2221: C9            RET
2222: 3A A0 92      LD A,(0x92A0)
2225: 4F            LD C,A
2226: E6 03         AND 0x03
2228: 20 2D         JR NZ,0x2257
222A: 3A 8A 92      LD A,(0x928A)
222D: ED 44         NEG
222F: D6 18         SUB 0x18
2231: 26 21         LD H,0x21
2233: 07            RLCA
2234: CB 14         RL H
2236: 07            RLCA
2237: CB 14         RL H
2239: E6 E0         AND 0xE0
223B: C6 15         ADD A,0x15
223D: 6F            LD L,A
223E: 79            LD A,C
223F: 0F            RRCA
2240: 0F            RRCA
2241: E6 03         AND 0x03
2243: 20 01         JR NZ,0x2246
2245: 3C            INC A
2246: C6 17         ADD A,0x17
2248: 11 16 00      LD DE,0x0016
224B: 0E 06         LD C,0x06
224D: 06 0A         LD B,0x0A
224F: 77            LD (HL),A
2250: 2C            INC L
2251: 10 FC         DJNZ 0x224F
2253: 19            ADD HL,DE
2254: 0D            DEC C
2255: 20 F6         JR NZ,0x224D
2257: 21 8B 92      LD HL,0x928B
225A: CB 7E         BIT 7,(HL)
225C: 20 0C         JR NZ,0x226A
225E: 3A 28 98      LD A,(0x9828)
2261: 5F            LD E,A
2262: 16 88         LD D,0x88
2264: 1A            LD A,(DE)
2265: FE 09         CP 0x09
2267: C2 27 23      JP NZ,0x2327
226A: 21 8C 92      LD HL,0x928C
226D: 35            DEC (HL)
226E: C2 3D 23      JP NZ,0x233D
2271: 3A 2A 98      LD A,(0x982A)
2274: 77            LD (HL),A
2275: 21 8B 92      LD HL,0x928B
2278: CB 7E         BIT 7,(HL)
227A: 20 2F         JR NZ,0x22AB
227C: 32 A5 9A      LD (0x9AA5),A
227F: 3A 29 98      LD A,(0x9829)
2282: C6 0D         ADD A,0x0D
2284: 5F            LD E,A
2285: 16 91         LD D,0x91
2287: 3E FF         LD A,0xFF
2289: 12            LD (DE),A
228A: 34            INC (HL)
228B: 7E            LD A,(HL)
228C: E6 0F         AND 0x0F
228E: FE 0B         CP 0x0B
2290: 28 40         JR Z,0x22D2
2292: CB 76         BIT 6,(HL)
2294: 20 2B         JR NZ,0x22C1
2296: F5            PUSH AF
2297: 4F            LD C,A
2298: 07            RLCA
2299: 81            ADD A,C
229A: 21 9B 23      LD HL,0x239B
229D: CF            RST 0x08
229E: F1            POP AF
229F: CD 8A 23      CALL 0x238A
22A2: 06 06         LD B,0x06
22A4: 7E            LD A,(HL)
22A5: 12            LD (DE),A
22A6: 23            INC HL
22A7: E7            RST 0x20
22A8: 10 FA         DJNZ 0x22A4
22AA: C9            RET
22AB: 34            INC (HL)
22AC: 7E            LD A,(HL)
22AD: E6 0F         AND 0x0F
22AF: FE 0B         CP 0x0B
22B1: 20 12         JR NZ,0x22C5
22B3: AF            XOR A
22B4: 32 18 90      LD (0x9018),A
22B7: 32 A5 9A      LD (0x9AA5),A
22BA: 32 A6 9A      LD (0x9AA6),A
22BD: 32 2B 98      LD (0x982B),A
22C0: C9            RET
22C1: ED 44         NEG
22C3: C6 0B         ADD A,0x0B
22C5: CD 8A 23      CALL 0x238A
22C8: 06 06         LD B,0x06
22CA: 0E 24         LD C,0x24
22CC: 79            LD A,C
22CD: 12            LD (DE),A
22CE: E7            RST 0x20
22CF: 10 FB         DJNZ 0x22CC
22D1: C9            RET
22D2: CB 76         BIT 6,(HL)
22D4: 28 46         JR Z,0x231C
22D6: 3A 0D 92      LD A,(0x920D)
22D9: A7            AND A
22DA: 28 07         JR Z,0x22E3
22DC: CB 6E         BIT 5,(HL)
22DE: 20 03         JR NZ,0x22E3
22E0: 36 68         LD (HL),0x68
22E2: C9            RET
22E3: AF            XOR A
22E4: 32 18 90      LD (0x9018),A
22E7: 32 A5 9A      LD (0x9AA5),A
22EA: 32 A6 9A      LD (0x9AA6),A
22ED: 3A 0D 92      LD A,(0x920D)
22F0: A7            AND A
22F1: 3A 29 98      LD A,(0x9829)
22F4: 20 0F         JR NZ,0x2305
22F6: C6 0D         ADD A,0x0D
22F8: 5F            LD E,A
22F9: 16 91         LD D,0x91
22FB: AF            XOR A
22FC: 32 2B 98      LD (0x982B),A
22FF: 3C            INC A
2300: 32 28 98      LD (0x9828),A
2303: 12            LD (DE),A
2304: C9            RET
2305: C6 08         ADD A,0x08
2307: 6F            LD L,A
2308: 26 91         LD H,0x91
230A: 11 6B 04      LD DE,0x046B
230D: 73            LD (HL),E
230E: 2C            INC L
230F: 72            LD (HL),D
2310: AF            XOR A
2311: 32 BA 99      LD (0x99BA),A
2314: 3C            INC A
2315: 32 11 90      LD (0x9011),A
2318: 32 8E 92      LD (0x928E),A
231B: C9            RET
231C: 3E 40         LD A,0x40
231E: 32 8C 92      LD (0x928C),A
2321: 3E 40         LD A,0x40
2323: 32 8B 92      LD (0x928B),A
2326: C9            RET
2327: 3E 03         LD A,0x03
2329: 32 2A 98      LD (0x982A),A
232C: 36 80         LD (HL),0x80
232E: AF            XOR A
232F: 32 8D 92      LD (0x928D),A
2332: 32 BA 99      LD (0x99BA),A
2335: 3C            INC A
2336: 32 8C 92      LD (0x928C),A
2339: 32 14 90      LD (0x9014),A
233C: C9            RET
233D: 3A 8B 92      LD A,(0x928B)
2340: FE 40         CP 0x40
2342: C0            RET NZ
2343: 3A 15 92      LD A,(0x9215)
2346: 4F            LD C,A
2347: 3A 62 93      LD A,(0x9362)
234A: CB 41         BIT 0,C
234C: 28 04         JR Z,0x2352
234E: C6 0E         ADD A,0x0E
2350: ED 44         NEG
2352: 47            LD B,A
2353: 3A 8A 92      LD A,(0x928A)
2356: 90            SUB B
2357: C6 1B         ADD A,0x1B
2359: FE 36         CP 0x36
235B: D0            RET NC
235C: 3A 01 92      LD A,(0x9201)
235F: 3D            DEC A
2360: 28 0B         JR Z,0x236D
2362: 3A 14 90      LD A,(0x9014)
2365: 4F            LD C,A
2366: 3A 13 92      LD A,(0x9213)
2369: EE 01         XOR 0x01
236B: A1            AND C
236C: C8            RET Z
236D: AF            XOR A
236E: 32 14 90      LD (0x9014),A
2371: 32 A5 9A      LD (0x9AA5),A
2374: 32 25 90      LD (0x9025),A
2377: 32 13 92      LD (0x9213),A
237A: 3C            INC A
237B: 32 1C 90      LD (0x901C),A
237E: 32 A6 9A      LD (0x9AA6),A
2381: 32 BA 99      LD (0x99BA),A
2384: 3E 0A         LD A,0x0A
2386: 32 2A 98      LD (0x982A),A
2389: C9            RET
238A: 4F            LD C,A
238B: 3A 8A 92      LD A,(0x928A)
238E: ED 44         NEG
2390: C6 10         ADD A,0x10
2392: 16 20         LD D,0x20
2394: 07            RLCA
2395: CB 12         RL D
2397: 07            RLCA
2398: CB 12         RL D
239A: E6 E0         AND 0xE0
239C: C6 14         ADD A,0x14
239E: 81            ADD A,C
239F: 5F            LD E,A
23A0: C9            RET
23A1: 24            INC H
23A2: 4E            LD C,(HL)
23A3: 4F            LD C,A
23A4: 50            LD D,B
23A5: 51            LD D,C
23A6: 24            INC H
23A7: 24            INC H
23A8: 52            LD D,D
23A9: 53            LD D,E
23AA: 54            LD D,H
23AB: 55            LD D,L
23AC: 24            INC H
23AD: 24            INC H
23AE: 56            LD D,(HL)
23AF: 57            LD D,A
23B0: 58            LD E,B
23B1: 59            LD E,C
23B2: 24            INC H
23B3: 24            INC H
23B4: 5A            LD E,D
23B5: 5B            LD E,E
23B6: 5C            LD E,H
23B7: 5D            LD E,L
23B8: 24            INC H
23B9: 24            INC H
23BA: 5E            LD E,(HL)
23BB: 5F            LD E,A
23BC: 60            LD H,B
23BD: 61            LD H,C
23BE: 24            INC H
23BF: 62            LD H,D
23C0: 63            LD H,E
23C1: 64            LD H,H
23C2: 65            LD H,L
23C3: 66            LD H,(HL)
23C4: 67            LD H,A
23C5: 68            LD L,B
23C6: 69            LD L,C
23C7: 6A            LD L,D
23C8: 6B            LD L,E
23C9: 6C            LD L,H
23CA: 6D            LD L,L
23CB: 6E            LD L,(HL)
23CC: 6F            LD L,A
23CD: 70            LD (HL),B
23CE: 71            LD (HL),C
23CF: 72            LD (HL),D
23D0: 73            LD (HL),E
23D1: 74            LD (HL),H
23D2: 75            LD (HL),L
23D3: 76            HALT
23D4: 77            LD (HL),A
23D5: 78            LD A,B
23D6: 79            LD A,C
23D7: 7A            LD A,D
23D8: 7B            LD A,E
23D9: 7C            LD A,H
23DA: 7D            LD A,L
23DB: 7E            LD A,(HL)
23DC: 7F            LD A,A
23DD: 3A A0 92      LD A,(0x92A0)
23E0: CB 47         BIT 0,A
23E2: CA 96 25      JP Z,0x2596
23E5: E6 02         AND 0x02
23E7: 5F            LD E,A
23E8: 3A A6 92      LD A,(0x92A6)
23EB: DD            DB 0xDD ; IX/IY prefix, manual analysis required
23EC: 6F            LD L,A
23ED: 06 20         LD B,0x20
23EF: 16 88         LD D,0x88
23F1: 1A            LD A,(DE)
23F2: CB 27         SLA A
23F4: 38 20         JR C,0x2416
23F6: 21 FF 23      LD HL,0x23FF
23F9: D7            RST 0x10
23FA: 7E            LD A,(HL)
23FB: 23            INC HL
23FC: 66            LD H,(HL)
23FD: 6F            LD L,A
23FE: E9            JP (HL)
23FF: 16 24         LD D,0x24
2401: 88            ADC A,B
2402: 24            INC H
2403: 5F            LD E,A
2404: 24            INC H
2405: 4D            LD C,L
2406: 25            DEC H
2407: B2            OR D
2408: 24            INC H
2409: 35            DEC (HL)
240A: 25            DEC H
240B: 4D            LD C,L
240C: 25            DEC H
240D: 90            SUB B
240E: 25            DEC H
240F: 3C            INC A
2410: 24            INC H
2411: 22 24 1D      LD (0x1D24),HL
2414: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2415: 2C            INC L
2416: 3E 04         LD A,0x04
2418: 83            ADD A,E
2419: 5F            LD E,A
241A: 10 D3         DJNZ 0x23EF
241C: DD            DB 0xDD ; IX/IY prefix, manual analysis required
241D: 7D            LD A,L
241E: 32 A6 92      LD (0x92A6),A
2421: C9            RET
2422: 6B            LD L,E
2423: 26 01         LD H,0x01
2425: 4E            LD C,(HL)
2426: 2C            INC L
2427: 6E            LD L,(HL)
2428: 26 99         LD H,0x99
242A: 7E            LD A,(HL)
242B: 08            EX AF,AF'
242C: 69            LD L,C
242D: 4E            LD C,(HL)
242E: 1C            INC E
242F: 1A            LD A,(DE)
2430: C6 11         ADD A,0x11
2432: 6F            LD L,A
2433: 26 91         LD H,0x91
2435: 08            EX AF,AF'
2436: 77            LD (HL),A
2437: 2C            INC L
2438: 71            LD (HL),C
2439: C3 13 24      JP 0x2413
243C: 26 8B         LD H,0x8B
243E: 6B            LD L,E
243F: 1C            INC E
2440: 1A            LD A,(DE)
2441: 3D            DEC A
2442: 28 0D         JR Z,0x2451
2444: 12            LD (DE),A
2445: 1D            DEC E
2446: E6 03         AND 0x03
2448: 20 CC         JR NZ,0x2416
244A: 7E            LD A,(HL)
244B: C6 04         ADD A,0x04
244D: 77            LD (HL),A
244E: C3 16 24      JP 0x2416
2451: 26 93         LD H,0x93
2453: AF            XOR A
2454: 77            LD (HL),A
2455: 26 9B         LD H,0x9B
2457: 77            LD (HL),A
2458: 1D            DEC E
2459: 3E 80         LD A,0x80
245B: 12            LD (DE),A
245C: C3 16 24      JP 0x2416
245F: 26 9B         LD H,0x9B
2461: 6B            LD L,E
2462: 7E            LD A,(HL)
2463: E6 01         AND 0x01
2465: 26 8B         LD H,0x8B
2467: 20 0A         JR NZ,0x2473
2469: 7E            LD A,(HL)
246A: E6 07         AND 0x07
246C: FE 06         CP 0x06
246E: 28 13         JR Z,0x2483
2470: 34            INC (HL)
2471: 18 28         JR 0x249B
2473: 7E            LD A,(HL)
2474: E6 07         AND 0x07
2476: 20 08         JR NZ,0x2480
2478: 26 9B         LD H,0x9B
247A: CB 86         RES 0,(HL)
247C: 26 8B         LD H,0x8B
247E: 18 1B         JR 0x249B
2480: 35            DEC (HL)
2481: 18 18         JR 0x249B
2483: 3E 01         LD A,0x01
2485: 12            LD (DE),A
2486: 18 13         JR 0x249B
2488: 26 8B         LD H,0x8B
248A: 6B            LD L,E
248B: 3A A2 92      LD A,(0x92A2)
248E: CB 0E         RRC (HL)
2490: 0F            RRCA
2491: 0F            RRCA
2492: CB 16         RL (HL)
2494: 3A 0B 92      LD A,(0x920B)
2497: A7            AND A
2498: CA 14 24      JP Z,0x2414
249B: 26 01         LD H,0x01
249D: 4E            LD C,(HL)
249E: 2C            INC L
249F: 6E            LD L,(HL)
24A0: 26 98         LD H,0x98
24A2: 7E            LD A,(HL)
24A3: 16 93         LD D,0x93
24A5: 12            LD (DE),A
24A6: 1C            INC E
24A7: 69            LD L,C
24A8: 7E            LD A,(HL)
24A9: 12            LD (DE),A
24AA: 16 9B         LD D,0x9B
24AC: 2C            INC L
24AD: 7E            LD A,(HL)
24AE: 12            LD (DE),A
24AF: C3 13 24      JP 0x2413
24B2: 6B            LD L,E
24B3: 1C            INC E
24B4: 1A            LD A,(DE)
24B5: FE 45         CP 0x45
24B7: 28 2D         JR Z,0x24E6
24B9: 3C            INC A
24BA: 12            LD (DE),A
24BB: 1D            DEC E
24BC: FE 45         CP 0x45
24BE: 20 02         JR NZ,0x24C2
24C0: C6 03         ADD A,0x03
24C2: FE 44         CP 0x44
24C4: 20 1A         JR NZ,0x24E0
24C6: 26 93         LD H,0x93
24C8: 08            EX AF,AF'
24C9: 7E            LD A,(HL)
24CA: D6 08         SUB 0x08
24CC: 77            LD (HL),A
24CD: 2C            INC L
24CE: 7E            LD A,(HL)
24CF: D6 08         SUB 0x08
24D1: 77            LD (HL),A
24D2: 30 06         JR NC,0x24DA
24D4: 26 9B         LD H,0x9B
24D6: 7E            LD A,(HL)
24D7: EE 01         XOR 0x01
24D9: 77            LD (HL),A
24DA: 2D            DEC L
24DB: 26 9B         LD H,0x9B
24DD: 36 0C         LD (HL),0x0C
24DF: 08            EX AF,AF'
24E0: 26 8B         LD H,0x8B
24E2: 77            LD (HL),A
24E3: C3 16 24      JP 0x2416
24E6: 1D            DEC E
24E7: 26 92         LD H,0x92
24E9: 7E            LD A,(HL)
24EA: FE 01         CP 0x01
24EC: 20 0F         JR NZ,0x24FD
24EE: 26 93         LD H,0x93
24F0: 36 00         LD (HL),0x00
24F2: 26 9B         LD H,0x9B
24F4: 36 00         LD (HL),0x00
24F6: 26 88         LD H,0x88
24F8: 36 80         LD (HL),0x80
24FA: C3 16 24      JP 0x2416
24FD: 26 8B         LD H,0x8B
24FF: 77            LD (HL),A
2500: FE 37         CP 0x37
2502: 38 0A         JR C,0x250E
2504: 0E 0D         LD C,0x0D
2506: 2C            INC L
2507: FE 3A         CP 0x3A
2509: 38 01         JR C,0x250C
250B: 0C            INC C
250C: 71            LD (HL),C
250D: 2D            DEC L
250E: 26 93         LD H,0x93
2510: 0E 08         LD C,0x08
2512: FE 3B         CP 0x3B
2514: 30 06         JR NC,0x251C
2516: 0E 00         LD C,0x00
2518: 7E            LD A,(HL)
2519: C6 08         ADD A,0x08
251B: 77            LD (HL),A
251C: 2C            INC L
251D: 7E            LD A,(HL)
251E: C6 08         ADD A,0x08
2520: 77            LD (HL),A
2521: 26 9B         LD H,0x9B
2523: 30 04         JR NC,0x2529
2525: 7E            LD A,(HL)
2526: EE 01         XOR 0x01
2528: 77            LD (HL),A
2529: 2D            DEC L
252A: 71            LD (HL),C
252B: 26 88         LD H,0x88
252D: 36 05         LD (HL),0x05
252F: 2C            INC L
2530: 36 13         LD (HL),0x13
2532: C3 16 24      JP 0x2416
2535: 6B            LD L,E
2536: 2C            INC L
2537: 62            LD H,D
2538: 35            DEC (HL)
2539: C2 16 24      JP NZ,0x2416
253C: 2D            DEC L
253D: 36 80         LD (HL),0x80
253F: 26 93         LD H,0x93
2541: 36 00         LD (HL),0x00
2543: 26 9B         LD H,0x9B
2545: 36 00         LD (HL),0x00
2547: 3E 80         LD A,0x80
2549: 12            LD (DE),A
254A: C3 16 24      JP 0x2416
254D: 26 93         LD H,0x93
254F: 6B            LD L,E
2550: CB FD         SET 7,L
2552: 7E            LD A,(HL)
2553: FE F4         CP 0xF4
2555: 30 1A         JR NC,0x2571
2557: 2C            INC L
2558: 4E            LD C,(HL)
2559: 26 9B         LD H,0x9B
255B: 7E            LD A,(HL)
255C: 2D            DEC L
255D: 0F            RRCA
255E: 79            LD A,C
255F: 1F            RRA
2560: FE 0B         CP 0x0B
2562: 38 0D         JR C,0x2571
2564: FE A5         CP 0xA5
2566: 30 09         JR NC,0x2571
2568: 1A            LD A,(DE)
2569: FE 06         CP 0x06
256B: C2 14 24      JP NZ,0x2414
256E: C3 16 24      JP 0x2416
2571: CB BD         RES 7,L
2573: 1A            LD A,(DE)
2574: FE 03         CP 0x03
2576: 28 0A         JR Z,0x2582
2578: 3E 80         LD A,0x80
257A: 12            LD (DE),A
257B: 26 93         LD H,0x93
257D: 36 00         LD (HL),0x00
257F: C3 16 24      JP 0x2416
2582: 1C            INC E
2583: 1A            LD A,(DE)
2584: 1D            DEC E
2585: C6 13         ADD A,0x13
2587: 6F            LD L,A
2588: 26 91         LD H,0x91
258A: 36 00         LD (HL),0x00
258C: 6B            LD L,E
258D: C3 78 25      JP 0x2578
2590: 3E 03         LD A,0x03
2592: 12            LD (DE),A
2593: C3 14 24      JP 0x2414
2596: CB 4F         BIT 1,A
2598: C8            RET Z
2599: 21 A6 92      LD HL,0x92A6
259C: 7E            LD A,(HL)
259D: 36 00         LD (HL),0x00
259F: 2C            INC L
25A0: 77            LD (HL),A
25A1: C9            RET
25A2: 21 6E 28      LD HL,0x286E
25A5: 22 E0 92      LD (0x92E0),HL
25A8: 3A 21 98      LD A,(0x9821)
25AB: 4F            LD C,A
25AC: FE 17         CP 0x17
25AE: 38 04         JR C,0x25B4
25B0: D6 04         SUB 0x04
25B2: 18 F8         JR 0x25AC
25B4: 47            LD B,A
25B5: 3C            INC A
25B6: E6 03         AND 0x03
25B8: 28 19         JR Z,0x25D3
25BA: 3A 84 99      LD A,(0x9984)
25BD: 2E 11         LD L,0x11
25BF: CD 4E 10      CALL 0x104E
25C2: 7D            LD A,L
25C3: 21 A8 26      LD HL,0x26A8
25C6: D7            RST 0x10
25C7: 11 F4 26      LD DE,0x26F4
25CA: 78            LD A,B
25CB: CB 38         SRL B
25CD: CB 38         SRL B
25CF: 90            SUB B
25D0: 3D            DEC A
25D1: 18 0D         JR 0x25E0
25D3: 21 EC 26      LD HL,0x26EC
25D6: 79            LD A,C
25D7: CB 3F         SRL A
25D9: CB 3F         SRL A
25DB: E6 07         AND 0x07
25DD: 11 DE 27      LD DE,0x27DE
25E0: D7            RST 0x10
25E1: 7E            LD A,(HL)
25E2: EB            EX DE,HL
25E3: D7            RST 0x10
25E4: 7E            LD A,(HL)
25E5: 23            INC HL
25E6: 32 E2 92      LD (0x92E2),A
25E9: 7E            LD A,(HL)
25EA: 23            INC HL
25EB: 32 E3 92      LD (0x92E3),A
25EE: 11 20 89      LD DE,0x8920
25F1: 3E 7E         LD A,0x7E
25F3: 12            LD (DE),A
25F4: 1C            INC E
25F5: 7E            LD A,(HL)
25F6: 23            INC HL
25F7: FE FF         CP 0xFF
25F9: CA 81 26      JP Z,0x2681
25FC: 4F            LD C,A
25FD: D5            PUSH DE
25FE: E5            PUSH HL
25FF: 21 00 91      LD HL,0x9100
2602: 3E FF         LD A,0xFF
2604: 06 10         LD B,0x10
2606: DF            RST 0x18
2607: 79            LD A,C
2608: E6 0F         AND 0x0F
260A: 28 2A         JR Z,0x2636
260C: 47            LD B,A
260D: CB 3F         SRL A
260F: C6 04         ADD A,0x04
2611: 5F            LD E,A
2612: CD 00 10      CALL 0x1000
2615: 6F            LD L,A
2616: 26 00         LD H,0x00
2618: 7B            LD A,E
2619: CD 61 10      CALL 0x1061
261C: CB 40         BIT 0,B
261E: 28 02         JR Z,0x2622
2620: CB DF         SET 3,A
2622: 26 91         LD H,0x91
2624: 6F            LD L,A
2625: 7E            LD A,(HL)
2626: 3C            INC A
2627: 20 E9         JR NZ,0x2612
2629: 78            LD A,B
262A: 07            RLCA
262B: CB 01         RLC C
262D: 30 02         JR NC,0x2631
262F: F6 40         OR 0x40
2631: F6 38         OR 0x38
2633: 77            LD (HL),A
2634: 10 DC         DJNZ 0x2612
2636: 21 00 91      LD HL,0x9100
2639: ED 5B E0 92   LD DE,(0x92e0)
263D: 06 08         LD B,0x08
263F: 7E            LD A,(HL)
2640: FE FF         CP 0xFF
2642: 28 03         JR Z,0x2647
2644: 23            INC HL
2645: 18 F8         JR 0x263F
2647: 1A            LD A,(DE)
2648: 77            LD (HL),A
2649: 13            INC DE
264A: 23            INC HL
264B: 78            LD A,B
264C: FE 05         CP 0x05
264E: 20 02         JR NZ,0x2652
2650: 2E 08         LD L,0x08
2652: 10 EB         DJNZ 0x263F
2654: ED 53 E0 92   LD (0x92e0),DE
2658: E1            POP HL
2659: D1            POP DE
265A: 46            LD B,(HL)
265B: 23            INC HL
265C: 4E            LD C,(HL)
265D: 23            INC HL
265E: E5            PUSH HL
265F: 21 00 91      LD HL,0x9100
2662: 78            LD A,B
2663: 12            LD (DE),A
2664: 7E            LD A,(HL)
2665: FE FF         CP 0xFF
2667: 28 10         JR Z,0x2679
2669: 1C            INC E
266A: 12            LD (DE),A
266B: 1C            INC E
266C: 79            LD A,C
266D: 12            LD (DE),A
266E: 1C            INC E
266F: CB DD         SET 3,L
2671: 7E            LD A,(HL)
2672: 12            LD (DE),A
2673: 1C            INC E
2674: CB 9D         RES 3,L
2676: 23            INC HL
2677: 18 E9         JR 0x2662
2679: 3E 7E         LD A,0x7E
267B: 12            LD (DE),A
267C: 1C            INC E
267D: E1            POP HL
267E: C3 F5 25      JP 0x25F5
2681: 1D            DEC E
2682: 3A 2B 98      LD A,(0x982B)
2685: 47            LD B,A
2686: 3A 27 98      LD A,(0x9827)
2689: 3D            DEC A
268A: A0            AND B
268B: 28 17         JR Z,0x26A4
268D: 3A 25 98      LD A,(0x9825)
2690: A7            AND A
2691: 28 11         JR Z,0x26A4
2693: 62            LD H,D
2694: 7B            LD A,E
2695: D6 04         SUB 0x04
2697: 6F            LD L,A
2698: 7E            LD A,(HL)
2699: 12            LD (DE),A
269A: 1C            INC E
269B: 3E 04         LD A,0x04
269D: 12            LD (DE),A
269E: 1C            INC E
269F: 3E 87         LD A,0x87
26A1: 32 04 8B      LD (0x8B04),A
26A4: 3E 7F         LD A,0x7F
26A6: 12            LD (DE),A
26A7: C9            RET
26A8: 00            NOP
26A9: 12            LD (DE),A
26AA: 24            INC H
26AB: 36 00         LD (HL),0x00
26AD: 48            LD C,B
26AE: 6C            LD L,H
26AF: 5A            LD E,D
26B0: 48            LD C,B
26B1: 6C            LD L,H
26B2: 00            NOP
26B3: 7E            LD A,(HL)
26B4: A2            AND D
26B5: 90            SUB B
26B6: B4            OR H
26B7: D8            RET C
26B8: C6 00         ADD A,0x00
26BA: 12            LD (DE),A
26BB: 48            LD C,B
26BC: 6C            LD L,H
26BD: 5A            LD E,D
26BE: 7E            LD A,(HL)
26BF: A2            AND D
26C0: 00            NOP
26C1: 7E            LD A,(HL)
26C2: D8            RET C
26C3: C6 B4         ADD A,0xB4
26C5: D8            RET C
26C6: C6 B4         ADD A,0xB4
26C8: D8            RET C
26C9: C6 00         ADD A,0x00
26CB: 12            LD (DE),A
26CC: 7E            LD A,(HL)
26CD: A2            AND D
26CE: 90            SUB B
26CF: 7E            LD A,(HL)
26D0: D8            RET C
26D1: C6 B4         ADD A,0xB4
26D3: D8            RET C
26D4: C6 B4         ADD A,0xB4
26D6: D8            RET C
26D7: C6 B4         ADD A,0xB4
26D9: D8            RET C
26DA: C6 00         ADD A,0x00
26DC: 12            LD (DE),A
26DD: 48            LD C,B
26DE: 36 24         LD (HL),0x24
26E0: 48            LD C,B
26E1: 6C            LD L,H
26E2: 00            NOP
26E3: 7E            LD A,(HL)
26E4: A2            AND D
26E5: 90            SUB B
26E6: B4            OR H
26E7: D8            RET C
26E8: 00            NOP
26E9: B4            OR H
26EA: D8            RET C
26EB: C6 00         ADD A,0x00
26ED: 12            LD (DE),A
26EE: 24            INC H
26EF: 36 48         LD (HL),0x48
26F1: 5A            LD E,D
26F2: 6C            LD L,H
26F3: 7E            LD A,(HL)
26F4: 14            INC D
26F5: 00            NOP
26F6: 00            NOP
26F7: 00            NOP
26F8: C0            RET NZ
26F9: 00            NOP
26FA: 01 01 00      LD BC,0x0001
26FD: 41            LD B,C
26FE: 41            LD B,C
26FF: 00            NOP
2700: 40            LD B,B
2701: 40            LD B,B
2702: 00            NOP
2703: 00            NOP
2704: 00            NOP
2705: FF            RST 0x38
2706: 14            INC D
2707: 01 00 42      LD BC,0x4200
270A: 82            ADD A,D
270B: 00            NOP
270C: 03            INC BC
270D: 85            ADD A,L
270E: 00            NOP
270F: 43            LD B,E
2710: C5            PUSH BC
2711: 00            NOP
2712: 42            LD B,D
2713: C4 00 02      CALL NZ,0x0200
2716: 84            ADD A,H
2717: FF            RST 0x38
2718: 14            INC D
2719: 01 82 00      LD BC,0x0082
271C: C0            RET NZ
271D: 00            NOP
271E: 01 01 00      LD BC,0x0001
2721: 41            LD B,C
2722: 41            LD B,C
2723: 02            LD (BC),A
2724: 40            LD B,B
2725: 40            LD B,B
2726: 02            LD (BC),A
2727: 00            NOP
2728: 00            NOP
2729: FF            RST 0x38
272A: 14            INC D
272B: 01 82 02      LD BC,0x0282
272E: C2 00 03      JP NZ,0x0300
2731: 85            ADD A,L
2732: 00            NOP
2733: 43            LD B,E
2734: C5            PUSH BC
2735: 02            LD (BC),A
2736: 42            LD B,D
2737: C4 02 02      CALL NZ,0x0202
273A: 84            ADD A,H
273B: FF            RST 0x38
273C: 14            INC D
273D: 01 82 00      LD BC,0x0082
2740: C0            RET NZ
2741: 00            NOP
2742: 01 C1 00      LD BC,0x00C1
2745: 41            LD B,C
2746: 81            ADD A,C
2747: 02            LD (BC),A
2748: 40            LD B,B
2749: 80            ADD A,B
274A: 02            LD (BC),A
274B: 40            LD B,B
274C: 80            ADD A,B
274D: FF            RST 0x38
274E: 14            INC D
274F: 01 82 00      LD BC,0x0082
2752: C0            RET NZ
2753: 42            LD B,D
2754: 01 01 F2      LD BC,0xF201
2757: 41            LD B,C
2758: 41            LD B,C
2759: 02            LD (BC),A
275A: 40            LD B,B
275B: 40            LD B,B
275C: 02            LD (BC),A
275D: 00            NOP
275E: 00            NOP
275F: FF            RST 0x38
2760: 14            INC D
2761: 01 A4 02      LD BC,0x02A4
2764: C2 52 03      JP NZ,0x0352
2767: 85            ADD A,L
2768: F2 43 C5      JP P,0xC543
276B: 02            LD (BC),A
276C: 42            LD B,D
276D: C4 02 02      CALL NZ,0x0202
2770: 84            ADD A,H
2771: FF            RST 0x38
2772: 14            INC D
2773: 01 82 00      LD BC,0x0082
2776: C0            RET NZ
2777: 52            LD D,D
2778: 01 C1 F2      LD BC,0xF2C1
277B: 41            LD B,C
277C: 81            ADD A,C
277D: 02            LD (BC),A
277E: 40            LD B,B
277F: 80            ADD A,B
2780: 02            LD (BC),A
2781: 40            LD B,B
2782: 80            ADD A,B
2783: FF            RST 0x38
2784: 14            INC D
2785: 01 A4 00      LD BC,0x00A4
2788: C0            RET NZ
2789: 42            LD B,D
278A: 01 01 F4      LD BC,0xF401
278D: 41            LD B,C
278E: 41            LD B,C
278F: 04            INC B
2790: 40            LD B,B
2791: 40            LD B,B
2792: 04            INC B
2793: 00            NOP
2794: 00            NOP
2795: FF            RST 0x38
2796: 14            INC D
2797: 01 A4 02      LD BC,0x02A4
279A: C2 52 03      JP NZ,0x0352
279D: 85            ADD A,L
279E: F4 43 C5      CALL P,0xC543
27A1: 04            INC B
27A2: 42            LD B,D
27A3: C4 04 02      CALL NZ,0x0204
27A6: 84            ADD A,H
27A7: FF            RST 0x38
27A8: 14            INC D
27A9: 03            INC BC
27AA: A4            AND H
27AB: 00            NOP
27AC: C0            RET NZ
27AD: 54            LD D,H
27AE: 01 C1 F4      LD BC,0xF4C1
27B1: 41            LD B,C
27B2: 81            ADD A,C
27B3: 04            INC B
27B4: 40            LD B,B
27B5: 80            ADD A,B
27B6: 04            INC B
27B7: 40            LD B,B
27B8: 80            ADD A,B
27B9: FF            RST 0x38
27BA: 14            INC D
27BB: 03            INC BC
27BC: A4            AND H
27BD: 00            NOP
27BE: C0            RET NZ
27BF: 54            LD D,H
27C0: 01 01 F4      LD BC,0xF401
27C3: 41            LD B,C
27C4: 41            LD B,C
27C5: 04            INC B
27C6: 40            LD B,B
27C7: 40            LD B,B
27C8: 04            INC B
27C9: 00            NOP
27CA: 00            NOP
27CB: FF            RST 0x38
27CC: 14            INC D
27CD: 03            INC BC
27CE: A4            AND H
27CF: 02            LD (BC),A
27D0: C2 54 03      JP NZ,0x0354
27D3: 85            ADD A,L
27D4: F4 43 C5      CALL P,0xC543
27D7: 04            INC B
27D8: 42            LD B,D
27D9: C4 04 02      CALL NZ,0x0204
27DC: 84            ADD A,H
27DD: FF            RST 0x38
27DE: FF            RST 0x38
27DF: 00            NOP
27E0: 00            NOP
27E1: 06 C6         LD B,0xC6
27E3: 00            NOP
27E4: 07            RLCA
27E5: 07            RLCA
27E6: 00            NOP
27E7: 47            LD B,A
27E8: 47            LD B,A
27E9: 00            NOP
27EA: 46            LD B,(HL)
27EB: 46            LD B,(HL)
27EC: 00            NOP
27ED: 06 06         LD B,0x06
27EF: FF            RST 0x38
27F0: FF            RST 0x38
27F1: 00            NOP
27F2: 00            NOP
27F3: 08            EX AF,AF'
27F4: C8            RET Z
27F5: 00            NOP
27F6: 09            ADD HL,BC
27F7: C9            RET
27F8: 00            NOP
27F9: 09            ADD HL,BC
27FA: C9            RET
27FB: 00            NOP
27FC: 48            LD C,B
27FD: 48            LD C,B
27FE: 00            NOP
27FF: 08            EX AF,AF'
2800: 08            EX AF,AF'
2801: FF            RST 0x38
2802: FF            RST 0x38
2803: 00            NOP
2804: 00            NOP
2805: 0A            LD A,(BC)
2806: 4A            LD C,D
2807: 00            NOP
2808: 0B            DEC BC
2809: CB 00         RLC B
280B: 0B            DEC BC
280C: CB 00         RLC B
280E: 0A            LD A,(BC)
280F: 4A            LD C,D
2810: 00            NOP
2811: 16 56         LD D,0x56
2813: FF            RST 0x38
2814: FF            RST 0x38
2815: 00            NOP
2816: 00            NOP
2817: 0C            INC C
2818: CC 00 0D      CALL Z,0x0D00
281B: 0D            DEC C
281C: 00            NOP
281D: 4D            LD C,L
281E: 4D            LD C,L
281F: 00            NOP
2820: 0C            INC C
2821: CC 00 17      CALL Z,0x1700
2824: D7            RST 0x10
2825: FF            RST 0x38
2826: FF            RST 0x38
2827: 00            NOP
2828: 00            NOP
2829: 0E 0E         LD C,0x0E
282B: 00            NOP
282C: 0F            RRCA
282D: 0F            RRCA
282E: 00            NOP
282F: 4F            LD C,A
2830: 4F            LD C,A
2831: 00            NOP
2832: 0E 0E         LD C,0x0E
2834: 00            NOP
2835: 4E            LD C,(HL)
2836: 4E            LD C,(HL)
2837: FF            RST 0x38
2838: FF            RST 0x38
2839: 00            NOP
283A: 00            NOP
283B: 10 10         DJNZ 0x284D
283D: 00            NOP
283E: 11 D1 00      LD DE,0x00D1
2841: 11 D1 00      LD DE,0x00D1
2844: 50            LD D,B
2845: 50            LD D,B
2846: 00            NOP
2847: 10 10         DJNZ 0x2859
2849: FF            RST 0x38
284A: FF            RST 0x38
284B: 00            NOP
284C: 00            NOP
284D: 12            LD (DE),A
284E: 12            LD (DE),A
284F: 00            NOP
2850: 13            INC DE
2851: 13            INC DE
2852: 00            NOP
2853: 53            LD D,E
2854: 53            LD D,E
2855: 00            NOP
2856: 52            LD D,D
2857: 52            LD D,D
2858: 00            NOP
2859: 12            LD (DE),A
285A: 12            LD (DE),A
285B: FF            RST 0x38
285C: FF            RST 0x38
285D: 00            NOP
285E: 00            NOP
285F: 14            INC D
2860: D4 00 15      CALL NC,0x1500
2863: 15            DEC D
2864: 00            NOP
2865: 55            LD D,L
2866: 55            LD D,L
2867: 00            NOP
2868: 14            INC D
2869: D4 00 14      CALL NC,0x1400
286C: D4 FF 58      CALL NC,0x58FF
286F: 5A            LD E,D
2870: 5C            LD E,H
2871: 5E            LD E,(HL)
2872: 28 2A         JR Z,0x289E
2874: 2C            INC L
2875: 2E 30         LD L,0x30
2877: 34            INC (HL)
2878: 36 32         LD (HL),0x32
287A: 50            LD D,B
287B: 52            LD D,D
287C: 54            LD D,H
287D: 56            LD D,(HL)
287E: 42            LD B,D
287F: 46            LD B,(HL)
2880: 40            LD B,B
2881: 44            LD B,H
2882: 4A            LD C,D
2883: 4E            LD C,(HL)
2884: 48            LD C,B
2885: 4C            LD C,H
2886: 1A            LD A,(DE)
2887: 1E 20         LD E,0x20
2889: 24            INC H
288A: 22 26 18      LD (0x1826),HL
288D: 1C            INC E
288E: 08            EX AF,AF'
288F: 0C            INC C
2890: 12            LD (DE),A
2891: 16 10         LD D,0x10
2893: 14            INC D
2894: 0A            LD A,(BC)
2895: 0E 21         LD C,0x21
2897: 20 89         JR NZ,0x2822
2899: 22 22 98      LD (0x9822),HL
289C: FD            DB 0xFD ; IX/IY prefix, manual analysis required
289D: 21 08 29      LD HL,0x2908
28A0: 3A 25 98      LD A,(0x9825)
28A3: A7            AND A
28A4: 20 27         JR NZ,0x28CD
28A6: 3A 21 98      LD A,(0x9821)
28A9: 0F            RRCA
28AA: 0F            RRCA
28AB: 4F            LD C,A
28AC: 0F            RRCA
28AD: 47            LD B,A
28AE: E6 1C         AND 0x1C
28B0: 78            LD A,B
28B1: 28 02         JR Z,0x28B5
28B3: 3E 03         LD A,0x03
28B5: E6 03         AND 0x03
28B7: 21 00 29      LD HL,0x2900
28BA: CF            RST 0x08
28BB: 11 84 92      LD DE,0x9284
28BE: 79            LD A,C
28BF: ED A0         LDI
28C1: ED A0         LDI
28C3: 21 0E 29      LD HL,0x290E
28C6: E6 07         AND 0x07
28C8: D7            RST 0x10
28C9: 56            LD D,(HL)
28CA: 5A            LD E,D
28CB: 18 03         JR 0x28D0
28CD: 11 24 36      LD DE,0x3624
28D0: 21 08 8B      LD HL,0x8B08
28D3: DD            DB 0xDD ; IX/IY prefix, manual analysis required
28D4: 2E 01         LD L,0x01
28D6: 06 14         LD B,0x14
28D8: DD            DB 0xDD ; IX/IY prefix, manual analysis required
28D9: 62            LD H,D
28DA: CD E9 28      CALL 0x28E9
28DD: 06 08         LD B,0x08
28DF: DD            DB 0xDD ; IX/IY prefix, manual analysis required
28E0: 26 10         LD H,0x10
28E2: CD E9 28      CALL 0x28E9
28E5: 06 10         LD B,0x10
28E7: DD            DB 0xDD ; IX/IY prefix, manual analysis required
28E8: 63            LD H,E
28E9: DD            DB 0xDD ; IX/IY prefix, manual analysis required
28EA: 2D            DEC L
28EB: 20 08         JR NZ,0x28F5
28ED: FD            DB 0xFD ; IX/IY prefix, manual analysis required
28EE: 4E            LD C,(HL)
28EF: 00            NOP
28F0: FD            DB 0xFD ; IX/IY prefix, manual analysis required
28F1: 23            INC HL
28F2: DD            DB 0xDD ; IX/IY prefix, manual analysis required
28F3: 2E 08         LD L,0x08
28F5: CB 01         RLC C
28F7: DD            DB 0xDD ; IX/IY prefix, manual analysis required
28F8: 7C            LD A,H
28F9: 1F            RRA
28FA: 77            LD (HL),A
28FB: 2C            INC L
28FC: 2C            INC L
28FD: 10 EA         DJNZ 0x28E9
28FF: C9            RET
2900: 0A            LD A,(BC)
2901: B8            CP B
2902: 0F            RRCA
2903: B9            CP C
2904: 14            INC D
2905: BC            CP H
2906: 1E BD         LD E,0xBD
2908: A5            AND L
2909: 5A            LD E,D
290A: A9            XOR C
290B: 0F            RRCA
290C: 0A            LD A,(BC)
290D: 50            LD D,B
290E: 36 24         LD (HL),0x24
2910: D4 BA E4      CALL NC,0xE4BA
2913: CC A8 F4      CALL Z,0xF4A8
2916: 2A 22 98      LD HL,(0x9822)
2919: 7E            LD A,(HL)
291A: FE 7F         CP 0x7F
291C: CA 29 2A      JP Z,0x2A29
291F: FE 7E         CP 0x7E
2921: 20 30         JR NZ,0x2953
2923: 3A 42 98      LD A,(0x9842)
2926: A7            AND A
2927: C8            RET Z
2928: 3A 87 92      LD A,(0x9287)
292B: A7            AND A
292C: 20 1F         JR NZ,0x294D
292E: 3A 25 98      LD A,(0x9825)
2931: 47            LD B,A
2932: A7            AND A
2933: 20 0F         JR NZ,0x2944
2935: 3A AC 92      LD A,(0x92AC)
2938: FE 01         CP 0x01
293A: 20 06         JR NZ,0x2942
293C: 3E 08         LD A,0x08
293E: 32 A8 92      LD (0x92A8),A
2941: C9            RET
2942: A7            AND A
2943: C0            RET NZ
2944: 23            INC HL
2945: 22 22 98      LD (0x9822),HL
2948: 21 26 98      LD HL,0x9826
294B: 34            INC (HL)
294C: C9            RET
294D: 3E 02         LD A,0x02
294F: 32 AC 92      LD (0x92AC),A
2952: C9            RET
2953: 4F            LD C,A
2954: CB 7F         BIT 7,A
2956: 20 06         JR NZ,0x295E
2958: 3A A0 92      LD A,(0x92A0)
295B: E6 07         AND 0x07
295D: C0            RET NZ
295E: CB 21         SLA C
2960: 06 0C         LD B,0x0C
2962: 11 14 00      LD DE,0x0014
2965: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2966: 21 00 91      LD HL,0x9100
2969: DD            DB 0xDD ; IX/IY prefix, manual analysis required
296A: CB 13         RL E
296C: 46            LD B,(HL)
296D: 28 05         JR Z,0x2974
296F: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2970: 19            ADD HL,DE
2971: 10 F6         DJNZ 0x2969
2973: C9            RET
2974: 23            INC HL
2975: 7E            LD A,(HL)
2976: 47            LD B,A
2977: E6 78         AND 0x78
2979: FE 78         CP 0x78
297B: 78            LD A,B
297C: 20 02         JR NZ,0x2980
297E: CB B7         RES 6,A
2980: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2981: 77            LD (HL),A
2982: 10 23         DJNZ 0x29A7
2984: 22 22 98      LD (0x9822),HL
2987: 26 88         LD H,0x88
2989: 6F            LD L,A
298A: 36 07         LD (HL),0x07
298C: 2C            INC L
298D: DD            DB 0xDD ; IX/IY prefix, manual analysis required
298E: 5D            LD E,L
298F: 73            LD (HL),E
2990: 26 93         LD H,0x93
2992: E6 38         AND 0x38
2994: FE 38         CP 0x38
2996: 28 1B         JR Z,0x29B3
2998: 2D            DEC L
2999: 26 8B         LD H,0x8B
299B: 7E            LD A,(HL)
299C: 57            LD D,A
299D: E6 78         AND 0x78
299F: 77            LD (HL),A
29A0: 2C            INC L
29A1: 7A            LD A,D
29A2: E6 07         AND 0x07
29A4: CB 7A         BIT 7,D
29A6: 77            LD (HL),A
29A7: 3E 00         LD A,0x00
29A9: 28 03         JR Z,0x29AE
29AB: 3A E3 92      LD A,(0x92E3)
29AE: DD            DB 0xDD ; IX/IY prefix, manual analysis required
29AF: 77            LD (HL),A
29B0: 0F            RRCA
29B1: 18 1E         JR 0x29D1
29B3: 11 10 02      LD DE,0x0210
29B6: CB 70         BIT 6,B
29B8: 20 0D         JR NZ,0x29C7
29BA: 11 18 03      LD DE,0x0318
29BD: 3A 26 98      LD A,(0x9826)
29C0: FE 02         CP 0x02
29C2: 20 03         JR NZ,0x29C7
29C4: 11 08 00      LD DE,0x0008
29C7: 26 8B         LD H,0x8B
29C9: 72            LD (HL),D
29CA: 2D            DEC L
29CB: 73            LD (HL),E
29CC: 2C            INC L
29CD: DD            DB 0xDD ; IX/IY prefix, manual analysis required
29CE: 36 0F         LD (HL),0x0F
29D0: 00            NOP
29D1: 51            LD D,C
29D2: CB B9         RES 7,C
29D4: 06 08         LD B,0x08
29D6: CB 49         BIT 1,C
29D8: 28 02         JR Z,0x29DC
29DA: 06 44         LD B,0x44
29DC: DD            DB 0xDD ; IX/IY prefix, manual analysis required
29DD: 70            LD (HL),B
29DE: 0E 06         LD C,0x06
29E0: 00            NOP
29E1: 21 3C 2A      LD HL,0x2A3C
29E4: 09            ADD HL,BC
29E5: 7E            LD A,(HL)
29E6: 23            INC HL
29E7: DD            DB 0xDD ; IX/IY prefix, manual analysis required
29E8: 77            LD (HL),A
29E9: 08            EX AF,AF'
29EA: AF            XOR A
29EB: ED 6F         DB 0xED,0x6F ; undefined/alias
29ED: 47            LD B,A
29EE: 7E            LD A,(HL)
29EF: E6 1F         AND 0x1F
29F1: DD            DB 0xDD ; IX/IY prefix, manual analysis required
29F2: 77            LD (HL),A
29F3: 09            ADD HL,BC
29F4: 78            LD A,B
29F5: E6 0E         AND 0x0E
29F7: 47            LD B,A
29F8: 07            RLCA
29F9: 80            ADD A,B
29FA: 21 6C 2A      LD HL,0x2A6C
29FD: D7            RST 0x10
29FE: CB 7A         BIT 7,D
2A00: 28 03         JR Z,0x2A05
2A02: 23            INC HL
2A03: 23            INC HL
2A04: 23            INC HL
2A05: 7E            LD A,(HL)
2A06: 23            INC HL
2A07: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2A08: 77            LD (HL),A
2A09: 01 7E 23      LD BC,0x237E
2A0C: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2A0D: 77            LD (HL),A
2A0E: 03            INC BC
2A0F: 7E            LD A,(HL)
2A10: 23            INC HL
2A11: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2A12: 77            LD (HL),A
2A13: 05            DEC B
2A14: AF            XOR A
2A15: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2A16: 77            LD (HL),A
2A17: 00            NOP
2A18: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2A19: 77            LD (HL),A
2A1A: 02            LD (BC),A
2A1B: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2A1C: 77            LD (HL),A
2A1D: 04            INC B
2A1E: 3C            INC A
2A1F: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2A20: 77            LD (HL),A
2A21: 0D            DEC C
2A22: B2            OR D
2A23: E6 81         AND 0x81
2A25: DD            DB 0xDD ; IX/IY prefix, manual analysis required
2A26: 77            LD (HL),A
2A27: 13            INC DE
2A28: C9            RET
2A29: 3A 87 92      LD A,(0x9287)
2A2C: A7            AND A
2A2D: C0            RET NZ
2A2E: 32 08 90      LD (0x9008),A
2A31: 3C            INC A
2A32: 32 04 90      LD (0x9004),A
2A35: 32 10 90      LD (0x9010),A
2A38: 32 24 98      LD (0x9824),A
2A3B: C9            RET
2A3C: 1D            DEC E
2A3D: 00            NOP
2A3E: 67            LD H,A
2A3F: 20 9F         JR NZ,0x29E0
2A41: 40            LD B,B
2A42: D4 20 7B      CALL NC,0x7B20
2A45: 01 B0 61      LD BC,0x61B0
2A48: E8            RET PE
2A49: 01 F5 21      LD BC,0x21F5
2A4C: 0B            DEC BC
2A4D: 02            LD (BC),A
2A4E: 1B            DEC DE
2A4F: 22 2B 82      LD (0x822B),HL
2A52: 41            LD B,C
2A53: 22 5D 82      LD (0x825D),HL
2A56: 79            LD A,C
2A57: 22 9E 02      LD (0x029E),HL
2A5A: BA            CP D
2A5B: 22 D9 02      LD (0x02D9),HL
2A5E: FB            EI
2A5F: 22 1D 03      LD (0x031D),HL
2A62: 33            INC SP
2A63: 23            INC HL
2A64: DA 0F F0      JP C,0xF00F
2A67: 2F            CPL
2A68: 2B            DEC HL
2A69: A2            AND D
2A6A: 5D            LD E,L
2A6B: A2            AND D
2A6C: 9B            SBC A,E
2A6D: 34            INC (HL)
2A6E: 03            INC BC
2A6F: 9B            SBC A,E
2A70: 44            LD B,H
2A71: 03            INC BC
2A72: 23            INC HL
2A73: 00            NOP
2A74: 00            NOP
2A75: 23            INC HL
2A76: 78            LD A,B
2A77: 02            LD (BC),A
2A78: 9B            SBC A,E
2A79: 2C            INC L
2A7A: 03            INC BC
2A7B: 9B            SBC A,E
2A7C: 4C            LD C,H
2A7D: 03            INC BC
2A7E: 2B            DEC HL
2A7F: 00            NOP
2A80: 00            NOP
2A81: 2B            DEC HL
2A82: 78            LD A,B
2A83: 02            LD (BC),A
2A84: 9B            SBC A,E
2A85: 34            INC (HL)
2A86: 03            INC BC
2A87: 9B            SBC A,E
2A88: 34            INC (HL)
2A89: 03            INC BC
2A8A: 9B            SBC A,E
2A8B: 44            LD B,H
2A8C: 03            INC BC
2A8D: 9B            SBC A,E
2A8E: 44            LD B,H
2A8F: 03            INC BC
2A90: 3A A0 92      LD A,(0x92A0)
2A93: 3D            DEC A
2A94: E6 03         AND 0x03
2A96: C0            RET NZ
2A97: 3A A7 92      LD A,(0x92A7)
2A9A: 47            LD B,A
2A9B: 3A 08 90      LD A,(0x9008)
2A9E: B0            OR B
2A9F: 28 48         JR Z,0x2AE9
2AA1: 3A 0F 92      LD A,(0x920F)
2AA4: A7            AND A
2AA5: 0E 01         LD C,0x01
2AA7: 28 02         JR Z,0x2AAB
2AA9: 0D            DEC C
2AAA: 0D            DEC C
2AAB: 2E 00         LD L,0x00
2AAD: 06 0A         LD B,0x0A
2AAF: 26 99         LD H,0x99
2AB1: 7E            LD A,(HL)
2AB2: 81            ADD A,C
2AB3: 77            LD (HL),A
2AB4: 26 98         LD H,0x98
2AB6: 7E            LD A,(HL)
2AB7: 81            ADD A,C
2AB8: 77            LD (HL),A
2AB9: 2C            INC L
2ABA: 2C            INC L
2ABB: 10 F2         DJNZ 0x2AAF
2ABD: 3A 24 98      LD A,(0x9824)
2AC0: A7            AND A
2AC1: 3A 00 99      LD A,(0x9900)
2AC4: 28 03         JR Z,0x2AC9
2AC6: A7            AND A
2AC7: 28 11         JR Z,0x2ADA
2AC9: FE 20         CP 0x20
2ACB: 20 06         JR NZ,0x2AD3
2ACD: 3E 01         LD A,0x01
2ACF: 32 0F 92      LD (0x920F),A
2AD2: C9            RET
2AD3: D6 E0         SUB 0xE0
2AD5: C0            RET NZ
2AD6: 32 0F 92      LD (0x920F),A
2AD9: C9            RET
2ADA: AF            XOR A
2ADB: 32 0F 92      LD (0x920F),A
2ADE: 32 0A 90      LD (0x900A),A
2AE1: 3C            INC A
2AE2: 32 A0 9A      LD (0x9AA0),A
2AE5: 32 09 90      LD (0x9009),A
2AE8: C9            RET
2AE9: 32 0A 90      LD (0x900A),A
2AEC: C9            RET
2AED: FF            RST 0x38
2AEE: FF            RST 0x38
2AEF: FF            RST 0x38
2AF0: FF            RST 0x38
2AF1: FF            RST 0x38
2AF2: FF            RST 0x38
2AF3: FF            RST 0x38
2AF4: FF            RST 0x38
2AF5: FF            RST 0x38
2AF6: FF            RST 0x38
2AF7: FF            RST 0x38
2AF8: FF            RST 0x38
2AF9: FF            RST 0x38
2AFA: FF            RST 0x38
2AFB: FF            RST 0x38
2AFC: FF            RST 0x38
2AFD: FF            RST 0x38
2AFE: FF            RST 0x38
2AFF: FF            RST 0x38
2B00: FF            RST 0x38
2B01: FF            RST 0x38
2B02: FF            RST 0x38
2B03: FF            RST 0x38
2B04: FF            RST 0x38
2B05: FF            RST 0x38
2B06: FF            RST 0x38
2B07: FF            RST 0x38
2B08: FF            RST 0x38
2B09: FF            RST 0x38
2B0A: FF            RST 0x38
2B0B: FF            RST 0x38
2B0C: FF            RST 0x38
2B0D: FF            RST 0x38
2B0E: FF            RST 0x38
2B0F: FF            RST 0x38
2B10: FF            RST 0x38
2B11: FF            RST 0x38
2B12: FF            RST 0x38
2B13: FF            RST 0x38
2B14: FF            RST 0x38
2B15: FF            RST 0x38
2B16: FF            RST 0x38
2B17: FF            RST 0x38
2B18: FF            RST 0x38
2B19: FF            RST 0x38
2B1A: FF            RST 0x38
2B1B: FF            RST 0x38
2B1C: FF            RST 0x38
2B1D: FF            RST 0x38
2B1E: FF            RST 0x38
2B1F: FF            RST 0x38
2B20: FF            RST 0x38
2B21: FF            RST 0x38
2B22: FF            RST 0x38
2B23: FF            RST 0x38
2B24: FF            RST 0x38
2B25: FF            RST 0x38
2B26: FF            RST 0x38
2B27: FF            RST 0x38
2B28: FF            RST 0x38
2B29: FF            RST 0x38
2B2A: FF            RST 0x38
2B2B: FF            RST 0x38
2B2C: FF            RST 0x38
2B2D: FF            RST 0x38
2B2E: FF            RST 0x38
2B2F: FF            RST 0x38
2B30: FF            RST 0x38
2B31: FF            RST 0x38
2B32: FF            RST 0x38
2B33: FF            RST 0x38
2B34: FF            RST 0x38
2B35: FF            RST 0x38
2B36: FF            RST 0x38
2B37: FF            RST 0x38
2B38: FF            RST 0x38
2B39: FF            RST 0x38
2B3A: FF            RST 0x38
2B3B: FF            RST 0x38
2B3C: FF            RST 0x38
2B3D: FF            RST 0x38
2B3E: FF            RST 0x38
2B3F: FF            RST 0x38
2B40: FF            RST 0x38
2B41: FF            RST 0x38
2B42: FF            RST 0x38
2B43: FF            RST 0x38
2B44: FF            RST 0x38
2B45: FF            RST 0x38
2B46: FF            RST 0x38
2B47: FF            RST 0x38
2B48: FF            RST 0x38
2B49: FF            RST 0x38
2B4A: FF            RST 0x38
2B4B: FF            RST 0x38
2B4C: FF            RST 0x38
2B4D: FF            RST 0x38
2B4E: FF            RST 0x38
2B4F: FF            RST 0x38
2B50: FF            RST 0x38
2B51: FF            RST 0x38
2B52: FF            RST 0x38
2B53: FF            RST 0x38
2B54: FF            RST 0x38
2B55: FF            RST 0x38
2B56: FF            RST 0x38
2B57: FF            RST 0x38
2B58: FF            RST 0x38
2B59: FF            RST 0x38
2B5A: FF            RST 0x38
2B5B: FF            RST 0x38
2B5C: FF            RST 0x38
2B5D: FF            RST 0x38
2B5E: FF            RST 0x38
2B5F: FF            RST 0x38
2B60: FF            RST 0x38
2B61: FF            RST 0x38
2B62: FF            RST 0x38
2B63: FF            RST 0x38
2B64: FF            RST 0x38
2B65: FF            RST 0x38
2B66: FF            RST 0x38
2B67: FF            RST 0x38
2B68: FF            RST 0x38
2B69: FF            RST 0x38
2B6A: FF            RST 0x38
2B6B: FF            RST 0x38
2B6C: FF            RST 0x38
2B6D: FF            RST 0x38
2B6E: FF            RST 0x38
2B6F: FF            RST 0x38
2B70: FF            RST 0x38
2B71: FF            RST 0x38
2B72: FF            RST 0x38
2B73: FF            RST 0x38
2B74: FF            RST 0x38
2B75: FF            RST 0x38
2B76: FF            RST 0x38
2B77: FF            RST 0x38
2B78: FF            RST 0x38
2B79: FF            RST 0x38
2B7A: FF            RST 0x38
2B7B: FF            RST 0x38
2B7C: FF            RST 0x38
2B7D: FF            RST 0x38
2B7E: FF            RST 0x38
2B7F: FF            RST 0x38
2B80: FF            RST 0x38
2B81: FF            RST 0x38
2B82: FF            RST 0x38
2B83: FF            RST 0x38
2B84: FF            RST 0x38
2B85: FF            RST 0x38
2B86: FF            RST 0x38
2B87: FF            RST 0x38
2B88: FF            RST 0x38
2B89: FF            RST 0x38
2B8A: FF            RST 0x38
2B8B: FF            RST 0x38
2B8C: FF            RST 0x38
2B8D: FF            RST 0x38
2B8E: FF            RST 0x38
2B8F: FF            RST 0x38
2B90: FF            RST 0x38
2B91: FF            RST 0x38
2B92: FF            RST 0x38
2B93: FF            RST 0x38
2B94: FF            RST 0x38
2B95: FF            RST 0x38
2B96: FF            RST 0x38
2B97: FF            RST 0x38
2B98: FF            RST 0x38
2B99: FF            RST 0x38
2B9A: FF            RST 0x38
2B9B: FF            RST 0x38
2B9C: FF            RST 0x38
2B9D: FF            RST 0x38
2B9E: FF            RST 0x38
2B9F: FF            RST 0x38
2BA0: FF            RST 0x38
2BA1: FF            RST 0x38
2BA2: FF            RST 0x38
2BA3: FF            RST 0x38
2BA4: FF            RST 0x38
2BA5: FF            RST 0x38
2BA6: FF            RST 0x38
2BA7: FF            RST 0x38
2BA8: FF            RST 0x38
2BA9: FF            RST 0x38
2BAA: FF            RST 0x38
2BAB: FF            RST 0x38
2BAC: FF            RST 0x38
2BAD: FF            RST 0x38
2BAE: FF            RST 0x38
2BAF: FF            RST 0x38
2BB0: FF            RST 0x38
2BB1: FF            RST 0x38
2BB2: FF            RST 0x38
2BB3: FF            RST 0x38
2BB4: FF            RST 0x38
2BB5: FF            RST 0x38
2BB6: FF            RST 0x38
2BB7: FF            RST 0x38
2BB8: FF            RST 0x38
2BB9: FF            RST 0x38
2BBA: FF            RST 0x38
2BBB: FF            RST 0x38
2BBC: FF            RST 0x38
2BBD: FF            RST 0x38
2BBE: FF            RST 0x38
2BBF: FF            RST 0x38
2BC0: FF            RST 0x38
2BC1: FF            RST 0x38
2BC2: FF            RST 0x38
2BC3: FF            RST 0x38
2BC4: FF            RST 0x38
2BC5: FF            RST 0x38
2BC6: FF            RST 0x38
2BC7: FF            RST 0x38
2BC8: FF            RST 0x38
2BC9: FF            RST 0x38
2BCA: FF            RST 0x38
2BCB: FF            RST 0x38
2BCC: FF            RST 0x38
2BCD: FF            RST 0x38
2BCE: FF            RST 0x38
2BCF: FF            RST 0x38
2BD0: FF            RST 0x38
2BD1: FF            RST 0x38
2BD2: FF            RST 0x38
2BD3: FF            RST 0x38
2BD4: FF            RST 0x38
2BD5: FF            RST 0x38
2BD6: FF            RST 0x38
2BD7: FF            RST 0x38
2BD8: FF            RST 0x38
2BD9: FF            RST 0x38
2BDA: FF            RST 0x38
2BDB: FF            RST 0x38
2BDC: FF            RST 0x38
2BDD: FF            RST 0x38
2BDE: FF            RST 0x38
2BDF: FF            RST 0x38
2BE0: FF            RST 0x38
2BE1: FF            RST 0x38
2BE2: FF            RST 0x38
2BE3: FF            RST 0x38
2BE4: FF            RST 0x38
2BE5: FF            RST 0x38
2BE6: FF            RST 0x38
2BE7: FF            RST 0x38
2BE8: FF            RST 0x38
2BE9: FF            RST 0x38
2BEA: FF            RST 0x38
2BEB: FF            RST 0x38
2BEC: FF            RST 0x38
2BED: FF            RST 0x38
2BEE: FF            RST 0x38
2BEF: FF            RST 0x38
2BF0: FF            RST 0x38
2BF1: FF            RST 0x38
2BF2: FF            RST 0x38
2BF3: FF            RST 0x38
2BF4: FF            RST 0x38
2BF5: FF            RST 0x38
2BF6: FF            RST 0x38
2BF7: FF            RST 0x38
2BF8: FF            RST 0x38
2BF9: FF            RST 0x38
2BFA: FF            RST 0x38
2BFB: FF            RST 0x38
2BFC: FF            RST 0x38
2BFD: FF            RST 0x38
2BFE: FF            RST 0x38
2BFF: FF            RST 0x38
2C00: 3A 21 98      LD A,(0x9821)
2C03: FE 1B         CP 0x1B
2C05: 38 04         JR C,0x2C0B
2C07: D6 04         SUB 0x04
2C09: 18 F8         JR 0x2C03
2C0B: 3D            DEC A
2C0C: 6F            LD L,A
2C0D: 07            RLCA
2C0E: 07            RLCA
2C0F: 85            ADD A,L
2C10: 5F            LD E,A
2C11: 3A 84 99      LD A,(0x9984)
2C14: 21 65 2C      LD HL,0x2C65
2C17: CF            RST 0x08
2C18: 7E            LD A,(HL)
2C19: 23            INC HL
2C1A: 66            LD H,(HL)
2C1B: 6F            LD L,A
2C1C: 7B            LD A,E
2C1D: D7            RST 0x10
2C1E: 11 C0 99      LD DE,0x99C0
2C21: 06 05         LD B,0x05
2C23: 7E            LD A,(HL)
2C24: 4F            LD C,A
2C25: 07            RLCA
2C26: 07            RLCA
2C27: 07            RLCA
2C28: 07            RLCA
2C29: E6 0F         AND 0x0F
2C2B: 12            LD (DE),A
2C2C: 1C            INC E
2C2D: 79            LD A,C
2C2E: E6 0F         AND 0x0F
2C30: 12            LD (DE),A
2C31: 1C            INC E
2C32: 23            INC HL
2C33: 10 EE         DJNZ 0x2C23
2C35: 3A 21 98      LD A,(0x9821)
2C38: FE 03         CP 0x03
2C3A: 30 03         JR NC,0x2C3F
2C3C: AF            XOR A
2C3D: 18 07         JR 0x2C46
2C3F: F6 FC         OR 0xFC
2C41: 3C            INC A
2C42: 28 02         JR Z,0x2C46
2C44: 3E 0A         LD A,0x0A
2C46: 12            LD (DE),A
2C47: 01 16 02      LD BC,0x0216
2C4A: ED 43 C1 92   LD (0x92c1),BC
2C4E: ED 43 C0 92   LD (0x92c0),BC
2C52: 3A 21 98      LD A,(0x9821)
2C55: FE 10         CP 0x10
2C57: 38 02         JR C,0x2C5B
2C59: 3E 10         LD A,0x10
2C5B: 07            RLCA
2C5C: 07            RLCA
2C5D: E6 70         AND 0x70
2C5F: C6 40         ADD A,0x40
2C61: 32 BB 99      LD (0x99BB),A
2C64: C9            RET
2C65: EF            RST 0x28
2C66: 2C            INC L
2C67: 71            LD (HL),C
2C68: 2D            DEC L
2C69: F3            DI
2C6A: 2D            DEC L
2C6B: 6D            LD L,L
2C6C: 2C            INC L
2C6D: 00            NOP
2C6E: 00            NOP
2C6F: 22 C6 00      LD (0x00C6),HL
2C72: 00            NOP
2C73: 11 23 C7      LD DE,0xC723
2C76: 00            NOP
2C77: 00            NOP
2C78: 00            NOP
2C79: 00            NOP
2C7A: C0            RET NZ
2C7B: 00            NOP
2C7C: 11 12 23      LD DE,0x2312
2C7F: 97            SUB A
2C80: 00            NOP
2C81: 11 23 23      LD DE,0x2323
2C84: 98            SBC A,B
2C85: 00            NOP
2C86: 21 24 33      LD HL,0x3324
2C89: 98            SBC A,B
2C8A: 00            NOP
2C8B: 00            NOP
2C8C: 00            NOP
2C8D: 00            NOP
2C8E: 90            SUB B
2C8F: 00            NOP
2C90: 22 25 33      LD (0x3325),HL
2C93: 99            SBC A,C
2C94: 10 22         DJNZ 0x2CB8
2C96: 36 34         LD (HL),0x34
2C98: 69            LD L,C
2C99: 10 10         DJNZ 0x2CAB
2C9B: 11 23 97      LD DE,0x9723
2C9E: 00            NOP
2C9F: 00            NOP
2CA0: 00            NOP
2CA1: 00            NOP
2CA2: 60            LD H,B
2CA3: 00            NOP
2CA4: 32 46 34      LD (0x3446),A
2CA7: 67            LD H,A
2CA8: 11 32 67      LD DE,0x6732
2CAB: 44            LD B,H
2CAC: 68            LD L,B
2CAD: 11 32 67      LD DE,0x6732
2CB0: 45            LD B,L
2CB1: 68            LD L,B
2CB2: 11 00 00      LD DE,0x0000
2CB5: 00            NOP
2CB6: 60            LD H,B
2CB7: 00            NOP
2CB8: 42            LD B,D
2CB9: 78            LD A,B
2CBA: 45            LD B,L
2CBB: 69            LD L,C
2CBC: 11 42 78      LD DE,0x7842
2CBF: 45            LD B,L
2CC0: 69            LD L,C
2CC1: 11 11 22      LD DE,0x2211
2CC4: 23            INC HL
2CC5: 97            SUB A
2CC6: 11 00 00      LD DE,0x0000
2CC9: 00            NOP
2CCA: 60            LD H,B
2CCB: 00            NOP
2CCC: 52            LD D,D
2CCD: 88            ADC A,B
2CCE: 46            LD B,(HL)
2CCF: 3A 11 52      LD A,(0x5211)
2CD2: 88            ADC A,B
2CD3: 56            LD D,(HL)
2CD4: 3A 11 52      LD A,(0x5211)
2CD7: 88            ADC A,B
2CD8: 56            LD D,(HL)
2CD9: 3C            INC A
2CDA: 11 00 00      LD DE,0x0000
2CDD: 00            NOP
2CDE: 30 00         JR NC,0x2CE0
2CE0: 62            LD H,D
2CE1: 89            ADC A,C
2CE2: 57            LD D,A
2CE3: 3C            INC A
2CE4: 11 62 99      LD DE,0x9962
2CE7: 57            LD D,A
2CE8: 3C            INC A
2CE9: 11 62 99      LD DE,0x9962
2CEC: 57            LD D,A
2CED: 3C            INC A
2CEE: 11 00 00      LD DE,0x0000
2CF1: 12            LD (DE),A
2CF2: C6 00         ADD A,0x00
2CF4: 00            NOP
2CF5: 11 22 C6      LD DE,0xC622
2CF8: 00            NOP
2CF9: 00            NOP
2CFA: 00            NOP
2CFB: 00            NOP
2CFC: C0            RET NZ
2CFD: 00            NOP
2CFE: 11 12 23      LD DE,0x2312
2D01: 97            SUB A
2D02: 00            NOP
2D03: 11 12 23      LD DE,0x2312
2D06: 97            SUB A
2D07: 00            NOP
2D08: 00            NOP
2D09: 11 23 C7      LD DE,0xC723
2D0C: 00            NOP
2D0D: 00            NOP
2D0E: 00            NOP
2D0F: 00            NOP
2D10: 90            SUB B
2D11: 00            NOP
2D12: 21 23 33      LD HL,0x3323
2D15: 98            SBC A,B
2D16: 10 21         DJNZ 0x2D39
2D18: 24            INC H
2D19: 33            INC SP
2D1A: 98            SBC A,B
2D1B: 10 21         DJNZ 0x2D3E
2D1D: 25            DEC H
2D1E: 34            INC (HL)
2D1F: 98            SBC A,B
2D20: 10 00         DJNZ 0x2D22
2D22: 00            NOP
2D23: 00            NOP
2D24: 60            LD H,B
2D25: 00            NOP
2D26: 22 25 34      LD (0x3425),HL
2D29: 68            LD L,B
2D2A: 11 32 36      LD DE,0x3632
2D2D: 44            LD B,H
2D2E: 68            LD L,B
2D2F: 11 11 11      LD DE,0x1111
2D32: 23            INC HL
2D33: 67            LD H,A
2D34: 01 00 00      LD BC,0x0000
2D37: 00            NOP
2D38: 60            LD H,B
2D39: 00            NOP
2D3A: 32 36 45      LD (0x4536),A
2D3D: 68            LD L,B
2D3E: 11 32 46      LD DE,0x4632
2D41: 45            LD B,L
2D42: 69            LD L,C
2D43: 11 32 67      LD DE,0x6732
2D46: 45            LD B,L
2D47: 69            LD L,C
2D48: 11 00 00      LD DE,0x0000
2D4B: 00            NOP
2D4C: 60            LD H,B
2D4D: 00            NOP
2D4E: 42            LD B,D
2D4F: 67            LD H,A
2D50: 46            LD B,(HL)
2D51: 3A 11 42      LD A,(0x4211)
2D54: 78            LD A,B
2D55: 56            LD D,(HL)
2D56: 3A 11 52      LD A,(0x5211)
2D59: 78            LD A,B
2D5A: 56            LD D,(HL)
2D5B: 3A 11 00      LD A,(0x0011)
2D5E: 00            NOP
2D5F: 00            NOP
2D60: 30 00         JR NC,0x2D62
2D62: 52            LD D,D
2D63: 88            ADC A,B
2D64: 56            LD D,(HL)
2D65: 3C            INC A
2D66: 11 62 99      LD DE,0x9962
2D69: 57            LD D,A
2D6A: 3C            INC A
2D6B: 11 62 99      LD DE,0x9962
2D6E: 57            LD D,A
2D6F: 3C            INC A
2D70: 11 00 00      LD DE,0x0000
2D73: 23            INC HL
2D74: C6 00         ADD A,0x00
2D76: 10 11         DJNZ 0x2D89
2D78: 23            INC HL
2D79: 97            SUB A
2D7A: 00            NOP
2D7B: 00            NOP
2D7C: 00            NOP
2D7D: 00            NOP
2D7E: C0            RET NZ
2D7F: 00            NOP
2D80: 11 12 33      LD DE,0x3312
2D83: 98            SBC A,B
2D84: 00            NOP
2D85: 21 23 34      LD HL,0x3423
2D88: 68            LD L,B
2D89: 00            NOP
2D8A: 21 24 34      LD HL,0x3424
2D8D: 68            LD L,B
2D8E: 00            NOP
2D8F: 00            NOP
2D90: 00            NOP
2D91: 00            NOP
2D92: 90            SUB B
2D93: 00            NOP
2D94: 32 36 34      LD (0x3436),A
2D97: 67            LD H,A
2D98: 10 32         DJNZ 0x2DCC
2D9A: 46            LD B,(HL)
2D9B: 44            LD B,H
2D9C: 68            LD L,B
2D9D: 10 11         DJNZ 0x2DB0
2D9F: 11 23 97      LD DE,0x9723
2DA2: 10 00         DJNZ 0x2DA4
2DA4: 00            NOP
2DA5: 00            NOP
2DA6: 60            LD H,B
2DA7: 00            NOP
2DA8: 42            LD B,D
2DA9: 67            LD H,A
2DAA: 45            LD B,L
2DAB: 68            LD L,B
2DAC: 11 42 67      LD DE,0x6742
2DAF: 45            LD B,L
2DB0: 69            LD L,C
2DB1: 11 42 78      LD DE,0x7842
2DB4: 46            LD B,(HL)
2DB5: 69            LD L,C
2DB6: 11 00 00      LD DE,0x0000
2DB9: 00            NOP
2DBA: 60            LD H,B
2DBB: 00            NOP
2DBC: 52            LD D,D
2DBD: 78            LD A,B
2DBE: 46            LD B,(HL)
2DBF: 3A 11 52      LD A,(0x5211)
2DC2: 88            ADC A,B
2DC3: 56            LD D,(HL)
2DC4: 3A 11 52      LD A,(0x5211)
2DC7: 88            ADC A,B
2DC8: 56            LD D,(HL)
2DC9: 3A 11 00      LD A,(0x0011)
2DCC: 00            NOP
2DCD: 00            NOP
2DCE: 60            LD H,B
2DCF: 00            NOP
2DD0: 62            LD H,D
2DD1: 88            ADC A,B
2DD2: 56            LD D,(HL)
2DD3: 3C            INC A
2DD4: 11 62 89      LD DE,0x8962
2DD7: 57            LD D,A
2DD8: 3C            INC A
2DD9: 11 62 89      LD DE,0x8962
2DDC: 57            LD D,A
2DDD: 3E 11         LD A,0x11
2DDF: 00            NOP
2DE0: 00            NOP
2DE1: 00            NOP
2DE2: 30 00         JR NC,0x2DE4
2DE4: 72            LD (HL),D
2DE5: 99            SBC A,C
2DE6: 57            LD D,A
2DE7: 3E 11         LD A,0x11
2DE9: 72            LD (HL),D
2DEA: 99            SBC A,C
2DEB: 68            LD L,B
2DEC: 3E 11         LD A,0x11
2DEE: 72            LD (HL),D
2DEF: 99            SBC A,C
2DF0: 68            LD L,B
2DF1: 3E 11         LD A,0x11
2DF3: 00            NOP
2DF4: 00            NOP
2DF5: 23            INC HL
2DF6: C6 00         ADD A,0x00
2DF8: 10 11         DJNZ 0x2E0B
2DFA: 23            INC HL
2DFB: 97            SUB A
2DFC: 00            NOP
2DFD: 00            NOP
2DFE: 00            NOP
2DFF: 00            NOP
2E00: C0            RET NZ
2E01: 00            NOP
2E02: 11 12 34      LD DE,0x3412
2E05: 98            SBC A,B
2E06: 00            NOP
2E07: 21 23 34      LD HL,0x3423
2E0A: 68            LD L,B
2E0B: 00            NOP
2E0C: 21 24 34      LD HL,0x3424
2E0F: 68            LD L,B
2E10: 00            NOP
2E11: 00            NOP
2E12: 00            NOP
2E13: 00            NOP
2E14: 90            SUB B
2E15: 00            NOP
2E16: 32 36 45      LD (0x4536),A
2E19: 67            LD H,A
2E1A: 11 32 46      LD DE,0x4632
2E1D: 46            LD B,(HL)
2E1E: 68            LD L,B
2E1F: 11 32 56      LD DE,0x5632
2E22: 46            LD B,(HL)
2E23: 69            LD L,C
2E24: 11 00 00      LD DE,0x0000
2E27: 00            NOP
2E28: 60            LD H,B
2E29: 00            NOP
2E2A: 42            LD B,D
2E2B: 67            LD H,A
2E2C: 56            LD D,(HL)
2E2D: 6A            LD L,D
2E2E: 11 42 67      LD DE,0x6742
2E31: 56            LD D,(HL)
2E32: 6A            LD L,D
2E33: 11 42 78      LD DE,0x7842
2E36: 57            LD D,A
2E37: 6A            LD L,D
2E38: 11 00 00      LD DE,0x0000
2E3B: 00            NOP
2E3C: 60            LD H,B
2E3D: 00            NOP
2E3E: 52            LD D,D
2E3F: 78            LD A,B
2E40: 57            LD D,A
2E41: 3A 11 52      LD A,(0x5211)
2E44: 88            ADC A,B
2E45: 57            LD D,A
2E46: 3A 11 52      LD A,(0x5211)
2E49: 88            ADC A,B
2E4A: 68            LD L,B
2E4B: 3C            INC A
2E4C: 11 00 00      LD DE,0x0000
2E4F: 00            NOP
2E50: 60            LD H,B
2E51: 00            NOP
2E52: 62            LD H,D
2E53: 88            ADC A,B
2E54: 68            LD L,B
2E55: 3C            INC A
2E56: 11 62 89      LD DE,0x8962
2E59: 68            LD L,B
2E5A: 3C            INC A
2E5B: 11 62 89      LD DE,0x8962
2E5E: 68            LD L,B
2E5F: 3E 11         LD A,0x11
2E61: 00            NOP
2E62: 00            NOP
2E63: 00            NOP
2E64: 30 00         JR NC,0x2E66
2E66: 72            LD (HL),D
2E67: 99            SBC A,C
2E68: 68            LD L,B
2E69: 3E 11         LD A,0x11
2E6B: 72            LD (HL),D
2E6C: 99            SBC A,C
2E6D: 68            LD L,B
2E6E: 3E 11         LD A,0x11
2E70: 72            LD (HL),D
2E71: 99            SBC A,C
2E72: 68            LD L,B
2E73: 3E 11         LD A,0x11
2E75: FF            RST 0x38
2E76: FF            RST 0x38
2E77: FF            RST 0x38
2E78: FF            RST 0x38
2E79: FF            RST 0x38
2E7A: FF            RST 0x38
2E7B: FF            RST 0x38
2E7C: FF            RST 0x38
2E7D: FF            RST 0x38
2E7E: FF            RST 0x38
2E7F: FF            RST 0x38
2E80: FF            RST 0x38
2E81: FF            RST 0x38
2E82: FF            RST 0x38
2E83: FF            RST 0x38
2E84: FF            RST 0x38
2E85: FF            RST 0x38
2E86: FF            RST 0x38
2E87: FF            RST 0x38
2E88: FF            RST 0x38
2E89: FF            RST 0x38
2E8A: FF            RST 0x38
2E8B: FF            RST 0x38
2E8C: FF            RST 0x38
2E8D: FF            RST 0x38
2E8E: FF            RST 0x38
2E8F: FF            RST 0x38
2E90: FF            RST 0x38
2E91: FF            RST 0x38
2E92: FF            RST 0x38
2E93: FF            RST 0x38
2E94: FF            RST 0x38
2E95: FF            RST 0x38
2E96: FF            RST 0x38
2E97: FF            RST 0x38
2E98: FF            RST 0x38
2E99: FF            RST 0x38
2E9A: FF            RST 0x38
2E9B: FF            RST 0x38
2E9C: FF            RST 0x38
2E9D: FF            RST 0x38
2E9E: FF            RST 0x38
2E9F: FF            RST 0x38
2EA0: FF            RST 0x38
2EA1: FF            RST 0x38
2EA2: FF            RST 0x38
2EA3: FF            RST 0x38
2EA4: FF            RST 0x38
2EA5: FF            RST 0x38
2EA6: FF            RST 0x38
2EA7: FF            RST 0x38
2EA8: FF            RST 0x38
2EA9: FF            RST 0x38
2EAA: FF            RST 0x38
2EAB: FF            RST 0x38
2EAC: FF            RST 0x38
2EAD: FF            RST 0x38
2EAE: FF            RST 0x38
2EAF: FF            RST 0x38
2EB0: FF            RST 0x38
2EB1: FF            RST 0x38
2EB2: FF            RST 0x38
2EB3: FF            RST 0x38
2EB4: FF            RST 0x38
2EB5: FF            RST 0x38
2EB6: FF            RST 0x38
2EB7: FF            RST 0x38
2EB8: FF            RST 0x38
2EB9: FF            RST 0x38
2EBA: FF            RST 0x38
2EBB: FF            RST 0x38
2EBC: FF            RST 0x38
2EBD: FF            RST 0x38
2EBE: FF            RST 0x38
2EBF: FF            RST 0x38
2EC0: FF            RST 0x38
2EC1: FF            RST 0x38
2EC2: FF            RST 0x38
2EC3: FF            RST 0x38
2EC4: FF            RST 0x38
2EC5: FF            RST 0x38
2EC6: FF            RST 0x38
2EC7: FF            RST 0x38
2EC8: FF            RST 0x38
2EC9: FF            RST 0x38
2ECA: FF            RST 0x38
2ECB: FF            RST 0x38
2ECC: FF            RST 0x38
2ECD: FF            RST 0x38
2ECE: FF            RST 0x38
2ECF: FF            RST 0x38
2ED0: FF            RST 0x38
2ED1: FF            RST 0x38
2ED2: FF            RST 0x38
2ED3: FF            RST 0x38
2ED4: FF            RST 0x38
2ED5: FF            RST 0x38
2ED6: FF            RST 0x38
2ED7: FF            RST 0x38
2ED8: FF            RST 0x38
2ED9: FF            RST 0x38
2EDA: FF            RST 0x38
2EDB: FF            RST 0x38
2EDC: FF            RST 0x38
2EDD: FF            RST 0x38
2EDE: FF            RST 0x38
2EDF: FF            RST 0x38
2EE0: FF            RST 0x38
2EE1: FF            RST 0x38
2EE2: FF            RST 0x38
2EE3: FF            RST 0x38
2EE4: FF            RST 0x38
2EE5: FF            RST 0x38
2EE6: FF            RST 0x38
2EE7: FF            RST 0x38
2EE8: FF            RST 0x38
2EE9: FF            RST 0x38
2EEA: FF            RST 0x38
2EEB: FF            RST 0x38
2EEC: FF            RST 0x38
2EED: FF            RST 0x38
2EEE: FF            RST 0x38
2EEF: FF            RST 0x38
2EF0: FF            RST 0x38
2EF1: FF            RST 0x38
2EF2: FF            RST 0x38
2EF3: FF            RST 0x38
2EF4: FF            RST 0x38
2EF5: FF            RST 0x38
2EF6: FF            RST 0x38
2EF7: FF            RST 0x38
2EF8: FF            RST 0x38
2EF9: FF            RST 0x38
2EFA: FF            RST 0x38
2EFB: FF            RST 0x38
2EFC: FF            RST 0x38
2EFD: FF            RST 0x38
2EFE: FF            RST 0x38
2EFF: FF            RST 0x38
2F00: FF            RST 0x38
2F01: FF            RST 0x38
2F02: FF            RST 0x38
2F03: FF            RST 0x38
2F04: FF            RST 0x38
2F05: FF            RST 0x38
2F06: FF            RST 0x38
2F07: FF            RST 0x38
2F08: FF            RST 0x38
2F09: FF            RST 0x38
2F0A: FF            RST 0x38
2F0B: FF            RST 0x38
2F0C: FF            RST 0x38
2F0D: FF            RST 0x38
2F0E: FF            RST 0x38
2F0F: FF            RST 0x38
2F10: FF            RST 0x38
2F11: FF            RST 0x38
2F12: FF            RST 0x38
2F13: FF            RST 0x38
2F14: FF            RST 0x38
2F15: FF            RST 0x38
2F16: FF            RST 0x38
2F17: FF            RST 0x38
2F18: FF            RST 0x38
2F19: FF            RST 0x38
2F1A: FF            RST 0x38
2F1B: FF            RST 0x38
2F1C: FF            RST 0x38
2F1D: FF            RST 0x38
2F1E: FF            RST 0x38
2F1F: FF            RST 0x38
2F20: FF            RST 0x38
2F21: FF            RST 0x38
2F22: FF            RST 0x38
2F23: FF            RST 0x38
2F24: FF            RST 0x38
2F25: FF            RST 0x38
2F26: FF            RST 0x38
2F27: FF            RST 0x38
2F28: FF            RST 0x38
2F29: FF            RST 0x38
2F2A: FF            RST 0x38
2F2B: FF            RST 0x38
2F2C: FF            RST 0x38
2F2D: FF            RST 0x38
2F2E: FF            RST 0x38
2F2F: FF            RST 0x38
2F30: FF            RST 0x38
2F31: FF            RST 0x38
2F32: FF            RST 0x38
2F33: FF            RST 0x38
2F34: FF            RST 0x38
2F35: FF            RST 0x38
2F36: FF            RST 0x38
2F37: FF            RST 0x38
2F38: FF            RST 0x38
2F39: FF            RST 0x38
2F3A: FF            RST 0x38
2F3B: FF            RST 0x38
2F3C: FF            RST 0x38
2F3D: FF            RST 0x38
2F3E: FF            RST 0x38
2F3F: FF            RST 0x38
2F40: FF            RST 0x38
2F41: FF            RST 0x38
2F42: FF            RST 0x38
2F43: FF            RST 0x38
2F44: FF            RST 0x38
2F45: FF            RST 0x38
2F46: FF            RST 0x38
2F47: FF            RST 0x38
2F48: FF            RST 0x38
2F49: FF            RST 0x38
2F4A: FF            RST 0x38
2F4B: FF            RST 0x38
2F4C: FF            RST 0x38
2F4D: FF            RST 0x38
2F4E: FF            RST 0x38
2F4F: FF            RST 0x38
2F50: FF            RST 0x38
2F51: FF            RST 0x38
2F52: FF            RST 0x38
2F53: FF            RST 0x38
2F54: FF            RST 0x38
2F55: FF            RST 0x38
2F56: FF            RST 0x38
2F57: FF            RST 0x38
2F58: FF            RST 0x38
2F59: FF            RST 0x38
2F5A: FF            RST 0x38
2F5B: FF            RST 0x38
2F5C: FF            RST 0x38
2F5D: FF            RST 0x38
2F5E: FF            RST 0x38
2F5F: FF            RST 0x38
2F60: FF            RST 0x38
2F61: FF            RST 0x38
2F62: FF            RST 0x38
2F63: FF            RST 0x38
2F64: FF            RST 0x38
2F65: FF            RST 0x38
2F66: FF            RST 0x38
2F67: FF            RST 0x38
2F68: FF            RST 0x38
2F69: FF            RST 0x38
2F6A: FF            RST 0x38
2F6B: FF            RST 0x38
2F6C: FF            RST 0x38
2F6D: FF            RST 0x38
2F6E: FF            RST 0x38
2F6F: FF            RST 0x38
2F70: FF            RST 0x38
2F71: FF            RST 0x38
2F72: FF            RST 0x38
2F73: FF            RST 0x38
2F74: FF            RST 0x38
2F75: FF            RST 0x38
2F76: FF            RST 0x38
2F77: FF            RST 0x38
2F78: FF            RST 0x38
2F79: FF            RST 0x38
2F7A: FF            RST 0x38
2F7B: FF            RST 0x38
2F7C: FF            RST 0x38
2F7D: FF            RST 0x38
2F7E: FF            RST 0x38
2F7F: FF            RST 0x38
2F80: FF            RST 0x38
2F81: FF            RST 0x38
2F82: FF            RST 0x38
2F83: FF            RST 0x38
2F84: FF            RST 0x38
2F85: FF            RST 0x38
2F86: FF            RST 0x38
2F87: FF            RST 0x38
2F88: FF            RST 0x38
2F89: FF            RST 0x38
2F8A: FF            RST 0x38
2F8B: FF            RST 0x38
2F8C: FF            RST 0x38
2F8D: FF            RST 0x38
2F8E: FF            RST 0x38
2F8F: FF            RST 0x38
2F90: FF            RST 0x38
2F91: FF            RST 0x38
2F92: FF            RST 0x38
2F93: FF            RST 0x38
2F94: FF            RST 0x38
2F95: FF            RST 0x38
2F96: FF            RST 0x38
2F97: FF            RST 0x38
2F98: FF            RST 0x38
2F99: FF            RST 0x38
2F9A: FF            RST 0x38
2F9B: FF            RST 0x38
2F9C: FF            RST 0x38
2F9D: FF            RST 0x38
2F9E: FF            RST 0x38
2F9F: FF            RST 0x38
2FA0: FF            RST 0x38
2FA1: FF            RST 0x38
2FA2: FF            RST 0x38
2FA3: FF            RST 0x38
2FA4: FF            RST 0x38
2FA5: FF            RST 0x38
2FA6: FF            RST 0x38
2FA7: FF            RST 0x38
2FA8: FF            RST 0x38
2FA9: FF            RST 0x38
2FAA: FF            RST 0x38
2FAB: FF            RST 0x38
2FAC: FF            RST 0x38
2FAD: FF            RST 0x38
2FAE: FF            RST 0x38
2FAF: FF            RST 0x38
2FB0: FF            RST 0x38
2FB1: FF            RST 0x38
2FB2: FF            RST 0x38
2FB3: FF            RST 0x38
2FB4: FF            RST 0x38
2FB5: FF            RST 0x38
2FB6: FF            RST 0x38
2FB7: FF            RST 0x38
2FB8: FF            RST 0x38
2FB9: FF            RST 0x38
2FBA: FF            RST 0x38
2FBB: FF            RST 0x38
2FBC: FF            RST 0x38
2FBD: FF            RST 0x38
2FBE: FF            RST 0x38
2FBF: FF            RST 0x38
2FC0: FF            RST 0x38
2FC1: FF            RST 0x38
2FC2: FF            RST 0x38
2FC3: FF            RST 0x38
2FC4: FF            RST 0x38
2FC5: FF            RST 0x38
2FC6: FF            RST 0x38
2FC7: FF            RST 0x38
2FC8: FF            RST 0x38
2FC9: FF            RST 0x38
2FCA: FF            RST 0x38
2FCB: FF            RST 0x38
2FCC: FF            RST 0x38
2FCD: FF            RST 0x38
2FCE: FF            RST 0x38
2FCF: FF            RST 0x38
2FD0: FF            RST 0x38
2FD1: FF            RST 0x38
2FD2: FF            RST 0x38
2FD3: FF            RST 0x38
2FD4: FF            RST 0x38
2FD5: FF            RST 0x38
2FD6: FF            RST 0x38
2FD7: FF            RST 0x38
2FD8: FF            RST 0x38
2FD9: FF            RST 0x38
2FDA: FF            RST 0x38
2FDB: FF            RST 0x38
2FDC: FF            RST 0x38
2FDD: FF            RST 0x38
2FDE: FF            RST 0x38
2FDF: FF            RST 0x38
2FE0: FF            RST 0x38
2FE1: FF            RST 0x38
2FE2: FF            RST 0x38
2FE3: FF            RST 0x38
2FE4: FF            RST 0x38
2FE5: FF            RST 0x38
2FE6: FF            RST 0x38
2FE7: FF            RST 0x38
2FE8: FF            RST 0x38
2FE9: FF            RST 0x38
2FEA: FF            RST 0x38
2FEB: FF            RST 0x38
2FEC: FF            RST 0x38
2FED: FF            RST 0x38
2FEE: FF            RST 0x38
2FEF: FF            RST 0x38
2FF0: FF            RST 0x38
2FF1: FF            RST 0x38
2FF2: FF            RST 0x38
2FF3: FF            RST 0x38
2FF4: FF            RST 0x38
2FF5: FF            RST 0x38
2FF6: FF            RST 0x38
2FF7: FF            RST 0x38
2FF8: FF            RST 0x38
2FF9: FF            RST 0x38
2FFA: FF            RST 0x38
2FFB: FF            RST 0x38
2FFC: FF            RST 0x38
2FFD: FF            RST 0x38
2FFE: FF            RST 0x38
2FFF: 74            LD (HL),H
3000: 21 FD 83      LD HL,0x83FD
3003: 3A 40 98      LD A,(0x9840)
3006: A7            AND A
3007: 28 03         JR Z,0x300C
3009: 21 E8 83      LD HL,0x83E8
300C: 22 00 8A      LD (0x8A00),HL
300F: 11 3D 8A      LD DE,0x8A3D
3012: CD F7 31      CALL 0x31F7
3015: D0            RET NC
3016: 11 37 8A      LD DE,0x8A37
3019: CD F7 31      CALL 0x31F7
301C: 3E 05         LD A,0x05
301E: 30 27         JR NC,0x3047
3020: 11 31 8A      LD DE,0x8A31
3023: CD F7 31      CALL 0x31F7
3026: 3E 04         LD A,0x04
3028: 30 1D         JR NC,0x3047
302A: 11 2B 8A      LD DE,0x8A2B
302D: CD F7 31      CALL 0x31F7
3030: 3E 03         LD A,0x03
3032: 30 13         JR NC,0x3047
3034: 11 25 8A      LD DE,0x8A25
3037: CD F7 31      CALL 0x31F7
303A: 3E 02         LD A,0x02
303C: 30 09         JR NC,0x3047
303E: 3E FF         LD A,0xFF
3040: 32 AC 9A      LD (0x9AAC),A
3043: 3E 01         LD A,0x01
3045: 18 03         JR 0x304A
3047: 32 B0 9A      LD (0x9AB0),A
304A: 32 11 8A      LD (0x8A11),A
304D: 21 A6 31      LD HL,0x31A6
3050: 3D            DEC A
3051: CF            RST 0x08
3052: CD 18 31      CALL 0x3118
3055: 3A 11 8A      LD A,(0x8A11)
3058: 21 A1 31      LD HL,0x31A1
305B: 3D            DEC A
305C: D7            RST 0x10
305D: 7E            LD A,(HL)
305E: 21 49 8A      LD HL,0x8A49
3061: 11 4C 8A      LD DE,0x8A4C
3064: A7            AND A
3065: 28 05         JR Z,0x306C
3067: 4F            LD C,A
3068: 06 00         LD B,0x00
306A: ED B8         LDDR
306C: 06 03         LD B,0x03
306E: 3E 24         LD A,0x24
3070: 22 04 8A      LD (0x8A04),HL
3073: 2C            INC L
3074: 77            LD (HL),A
3075: 10 FC         DJNZ 0x3073
3077: 3E 49         LD A,0x49
3079: 32 10 8A      LD (0x8A10),A
307C: 21 7F 32      LD HL,0x327F
307F: CD 28 33      CALL 0x3328
3082: CD 1B 33      CALL 0x331B
3085: CD 28 33      CALL 0x3328
3088: 11 09 83      LD DE,0x8309
308B: 2A 00 8A      LD HL,(0x8A00)
308E: CD 75 32      CALL 0x3275
3091: 21 49 81      LD HL,0x8149
3094: 11 E0 FF      LD DE,0xFFE0
3097: 36 0A         LD (HL),0x0A
3099: 19            ADD HL,DE
309A: 36 0A         LD (HL),0x0A
309C: 19            ADD HL,DE
309D: 36 0A         LD (HL),0x0A
309F: CD 1D 32      CALL 0x321D
30A2: CD 80 31      CALL 0x3180
30A5: 3E 04         LD A,0x04
30A7: 32 AE 92      LD (0x92AE),A
30AA: 3A AE 92      LD A,(0x92AE)
30AD: A7            AND A
30AE: 20 FA         JR NZ,0x30AA
30B0: 3E 28         LD A,0x28
30B2: 32 AE 92      LD (0x92AE),A
30B5: CD 1D 32      CALL 0x321D
30B8: CD 80 31      CALL 0x3180
30BB: 3A A0 92      LD A,(0x92A0)
30BE: 4F            LD C,A
30BF: CD ED 32      CALL 0x32ED
30C2: 3A A0 92      LD A,(0x92A0)
30C5: B9            CP C
30C6: 28 F7         JR Z,0x30BF
30C8: 4F            LD C,A
30C9: E6 0F         AND 0x0F
30CB: CC 41 31      CALL Z,0x3141
30CE: 21 B6 99      LD HL,0x99B6
30D1: 3A 15 92      LD A,(0x9215)
30D4: A7            AND A
30D5: 28 01         JR Z,0x30D8
30D7: 23            INC HL
30D8: CB 66         BIT 4,(HL)
30DA: CA 4C 31      JP Z,0x314C
30DD: 7E            LD A,(HL)
30DE: E6 0A         AND 0x0A
30E0: 21 02 8A      LD HL,0x8A02
30E3: 11 03 8A      LD DE,0x8A03
30E6: BE            CP (HL)
30E7: 28 04         JR Z,0x30ED
30E9: 77            LD (HL),A
30EA: 3E FD         LD A,0xFD
30EC: 12            LD (DE),A
30ED: 1A            LD A,(DE)
30EE: 3C            INC A
30EF: 12            LD (DE),A
30F0: E6 0F         AND 0x0F
30F2: 20 CB         JR NZ,0x30BF
30F4: 7E            LD A,(HL)
30F5: FE 08         CP 0x08
30F7: 28 24         JR Z,0x311D
30F9: FE 02         CP 0x02
30FB: 20 C2         JR NZ,0x30BF
30FD: 3E 28         LD A,0x28
30FF: 32 AE 92      LD (0x92AE),A
3102: 3A 10 8A      LD A,(0x8A10)
3105: 6F            LD L,A
3106: 26 81         LD H,0x81
3108: 7E            LD A,(HL)
3109: 3D            DEC A
310A: FE 09         CP 0x09
310C: CC 38 31      CALL Z,0x3138
310F: FE 29         CP 0x29
3111: CC 3B 31      CALL Z,0x313B
3114: 77            LD (HL),A
3115: C3 BF 30      JP 0x30BF
3118: 7E            LD A,(HL)
3119: 23            INC HL
311A: 66            LD H,(HL)
311B: 6F            LD L,A
311C: E9            JP (HL)
311D: 3A 10 8A      LD A,(0x8A10)
3120: 6F            LD L,A
3121: 26 81         LD H,0x81
3123: 3E 28         LD A,0x28
3125: 32 AE 92      LD (0x92AE),A
3128: 7E            LD A,(HL)
3129: 3C            INC A
312A: FE 2B         CP 0x2B
312C: CC 3E 31      CALL Z,0x313E
312F: FE 25         CP 0x25
3131: CC 38 31      CALL Z,0x3138
3134: 77            LD (HL),A
3135: C3 BF 30      JP 0x30BF
3138: 3E 2A         LD A,0x2A
313A: C9            RET
313B: 3E 24         LD A,0x24
313D: C9            RET
313E: 3E 0A         LD A,0x0A
3140: C9            RET
3141: 3A 10 8A      LD A,(0x8A10)
3144: 6F            LD L,A
3145: 26 85         LD H,0x85
3147: 7E            LD A,(HL)
3148: EE 05         XOR 0x05
314A: 77            LD (HL),A
314B: C9            RET
314C: 3A 10 8A      LD A,(0x8A10)
314F: 6F            LD L,A
3150: 26 85         LD H,0x85
3152: 36 00         LD (HL),0x00
3154: 26 81         LD H,0x81
3156: 4E            LD C,(HL)
3157: 3E 28         LD A,0x28
3159: 32 AE 92      LD (0x92AE),A
315C: 2A 04 8A      LD HL,(0x8A04)
315F: 23            INC HL
3160: 71            LD (HL),C
3161: 22 04 8A      LD (0x8A04),HL
3164: 21 10 8A      LD HL,0x8A10
3167: 7E            LD A,(HL)
3168: D6 20         SUB 0x20
316A: 77            LD (HL),A
316B: D2 B5 30      JP NC,0x30B5
316E: CD 1D 32      CALL 0x321D
3171: CD 80 31      CALL 0x3180
3174: 3E 4C         LD A,0x4C
3176: 32 A0 92      LD (0x92A0),A
3179: 3A A0 92      LD A,(0x92A0)
317C: A7            AND A
317D: 20 FA         JR NZ,0x3179
317F: C9            RET
3180: 3A 11 8A      LD A,(0x8A11)
3183: 21 97 31      LD HL,0x3197
3186: 3D            DEC A
3187: CF            RST 0x08
3188: 7E            LD A,(HL)
3189: 23            INC HL
318A: 66            LD H,(HL)
318B: 6F            LD L,A
318C: 06 16         LD B,0x16
318E: 11 E0 FF      LD DE,0xFFE0
3191: 36 05         LD (HL),0x05
3193: 19            ADD HL,DE
3194: 10 FB         DJNZ 0x3191
3196: C9            RET
3197: 74            LD (HL),H
3198: 87            ADD A,A
3199: 76            HALT
319A: 87            ADD A,A
319B: 78            LD A,B
319C: 87            ADD A,A
319D: 7A            LD A,D
319E: 87            ADD A,A
319F: 7C            LD A,H
31A0: 87            ADD A,A
31A1: 0C            INC C
31A2: 09            ADD HL,BC
31A3: 06 03         LD B,0x03
31A5: 00            NOP
31A6: B0            OR B
31A7: 31 B4 31      LD SP,0x31B4
31AA: B8            CP B
31AB: 31 CE 31      LD SP,0x31CE
31AE: D9            EXX
31AF: 31 3E 12      LD SP,0x123E
31B2: 18 06         JR 0x31BA
31B4: 3E 0C         LD A,0x0C
31B6: 18 02         JR 0x31BA
31B8: 3E 06         LD A,0x06
31BA: 21 37 8A      LD HL,0x8A37
31BD: 11 3D 8A      LD DE,0x8A3D
31C0: 01 06 00      LD BC,0x0006
31C3: ED B8         LDDR
31C5: 11 37 8A      LD DE,0x8A37
31C8: 4F            LD C,A
31C9: ED B8         LDDR
31CB: C3 D9 31      JP 0x31D9
31CE: 11 3D 8A      LD DE,0x8A3D
31D1: 21 37 8A      LD HL,0x8A37
31D4: 01 06 00      LD BC,0x0006
31D7: ED B8         LDDR
31D9: 3A 11 8A      LD A,(0x8A11)
31DC: 3D            DEC A
31DD: 21 ED 31      LD HL,0x31ED
31E0: CF            RST 0x08
31E1: 5E            LD E,(HL)
31E2: 23            INC HL
31E3: 56            LD D,(HL)
31E4: 2A 00 8A      LD HL,(0x8A00)
31E7: 01 06 00      LD BC,0x0006
31EA: ED B8         LDDR
31EC: C9            RET
31ED: 25            DEC H
31EE: 8A            ADC A,D
31EF: 2B            DEC HL
31F0: 8A            ADC A,D
31F1: 31 8A 37      LD SP,0x378A
31F4: 8A            ADC A,D
31F5: 3D            DEC A
31F6: 8A            ADC A,D
31F7: 2A 00 8A      LD HL,(0x8A00)
31FA: 06 06         LD B,0x06
31FC: 1A            LD A,(DE)
31FD: FE 24         CP 0x24
31FF: 28 0D         JR Z,0x320E
3201: 7E            LD A,(HL)
3202: FE 24         CP 0x24
3204: C8            RET Z
3205: 1A            LD A,(DE)
3206: BE            CP (HL)
3207: C0            RET NZ
3208: 2D            DEC L
3209: 1D            DEC E
320A: 10 F0         DJNZ 0x31FC
320C: AF            XOR A
320D: C9            RET
320E: BE            CP (HL)
320F: 28 F7         JR Z,0x3208
3211: AF            XOR A
3212: 18 F2         JR 0x3206
3214: 21 45 33      LD HL,0x3345
3217: CD 28 33      CALL 0x3328
321A: CD 28 33      CALL 0x3328
321D: 21 B4 32      LD HL,0x32B4
3220: CD 1B 33      CALL 0x331B
3223: 06 01         LD B,0x01
3225: CD 31 32      CALL 0x3231
3228: CD 31 32      CALL 0x3231
322B: CD 31 32      CALL 0x3231
322E: CD 31 32      CALL 0x3231
3231: 78            LD A,B
3232: 3D            DEC A
3233: 87            ADD A,A
3234: 87            ADD A,A
3235: 87            ADD A,A
3236: 21 C5 32      LD HL,0x32C5
3239: D7            RST 0x10
323A: 5E            LD E,(HL)
323B: 23            INC HL
323C: 56            LD D,(HL)
323D: 23            INC HL
323E: 78            LD A,B
323F: 12            LD (DE),A
3240: CD 73 32      CALL 0x3273
3243: CD 70 32      CALL 0x3270
3246: CD 70 32      CALL 0x3270
3249: CD 73 32      CALL 0x3273
324C: CD 73 32      CALL 0x3273
324F: 7E            LD A,(HL)
3250: 23            INC HL
3251: 4E            LD C,(HL)
3252: 23            INC HL
3253: E5            PUSH HL
3254: 61            LD H,C
3255: 6F            LD L,A
3256: CD 75 32      CALL 0x3275
3259: 7B            LD A,E
325A: D6 C0         SUB 0xC0
325C: 5F            LD E,A
325D: 30 01         JR NC,0x3260
325F: 15            DEC D
3260: E1            POP HL
3261: 7E            LD A,(HL)
3262: 23            INC HL
3263: 66            LD H,(HL)
3264: 6F            LD L,A
3265: CD 70 32      CALL 0x3270
3268: CD 70 32      CALL 0x3270
326B: CD 70 32      CALL 0x3270
326E: 04            INC B
326F: C9            RET
3270: 7E            LD A,(HL)
3271: 12            LD (DE),A
3272: 23            INC HL
3273: E7            RST 0x20
3274: C9            RET
3275: 0E 06         LD C,0x06
3277: 7E            LD A,(HL)
3278: 12            LD (DE),A
3279: 2B            DEC HL
327A: E7            RST 0x20
327B: 0D            DEC C
327C: 20 F9         JR NZ,0x3277
327E: C9            RET
327F: 24            INC H
3280: 83            ADD A,E
3281: 15            DEC D
3282: 04            INC B
3283: 0E 17         LD C,0x17
3285: 1D            DEC E
3286: 0E 1B         LD C,0x1B
3288: 24            INC H
3289: 22 18 1E      LD (0x1E18),HL
328C: 1B            DEC DE
328D: 24            INC H
328E: 12            LD (DE),A
328F: 17            RLA
3290: 12            LD (DE),A
3291: 1D            DEC E
3292: 12            LD (DE),A
3293: 0A            LD A,(BC)
3294: 15            DEC D
3295: 1C            INC E
3296: 24            INC H
3297: 2C            INC L
3298: E7            RST 0x20
3299: 82            ADD A,D
329A: 10 1C         DJNZ 0x32B8
329C: 0C            INC C
329D: 18 1B         JR 0x32BA
329F: 0E 24         LD C,0x24
32A1: 24            INC H
32A2: 24            INC H
32A3: 24            INC H
32A4: 24            INC H
32A5: 24            INC H
32A6: 24            INC H
32A7: 17            RLA
32A8: 0A            LD A,(BC)
32A9: 16 0E         LD D,0x0E
32AB: 50            LD D,B
32AC: 82            ADD A,D
32AD: 05            DEC B
32AE: 04            INC B
32AF: 1D            DEC E
32B0: 18 19         JR 0x32CB
32B2: 24            INC H
32B3: 05            DEC B
32B4: 92            SUB D
32B5: 82            ADD A,D
32B6: 0E 1C         LD C,0x1C
32B8: 0C            INC C
32B9: 18 1B         JR 0x32D6
32BB: 0E 24         LD C,0x24
32BD: 24            INC H
32BE: 24            INC H
32BF: 24            INC H
32C0: 24            INC H
32C1: 17            RLA
32C2: 0A            LD A,(BC)
32C3: 16 0E         LD D,0x0E
32C5: 54            LD D,H
32C6: 83            ADD A,E
32C7: 1C            INC E
32C8: 1D            DEC E
32C9: 25            DEC H
32CA: 8A            ADC A,D
32CB: 3E 8A         LD A,0x8A
32CD: 56            LD D,(HL)
32CE: 83            ADD A,E
32CF: 17            RLA
32D0: 0D            DEC C
32D1: 2B            DEC HL
32D2: 8A            ADC A,D
32D3: 41            LD B,C
32D4: 8A            ADC A,D
32D5: 58            LD E,B
32D6: 83            ADD A,E
32D7: 1B            DEC DE
32D8: 0D            DEC C
32D9: 31 8A 44      LD SP,0x448A
32DC: 8A            ADC A,D
32DD: 5A            LD E,D
32DE: 83            ADD A,E
32DF: 1D            DEC E
32E0: 11 37 8A      LD DE,0x8A37
32E3: 47            LD B,A
32E4: 8A            ADC A,D
32E5: 5C            LD E,H
32E6: 83            ADD A,E
32E7: 1D            DEC E
32E8: 11 3D 8A      LD DE,0x8A3D
32EB: 4A            LD C,D
32EC: 8A            ADC A,D
32ED: 3A B5 99      LD A,(0x99B5)
32F0: FE A0         CP 0xA0
32F2: 28 07         JR Z,0x32FB
32F4: 47            LD B,A
32F5: 3A B8 99      LD A,(0x99B8)
32F8: B8            CP B
32F9: 38 05         JR C,0x3300
32FB: 3A AE 92      LD A,(0x92AE)
32FE: A7            AND A
32FF: C0            RET NZ
3300: E1            POP HL
3301: 26 81         LD H,0x81
3303: 3A 10 8A      LD A,(0x8A10)
3306: 6F            LD L,A
3307: ED 5B 04 8A   LD DE,(0x8a04)
330B: 13            INC DE
330C: ED A0         LDI
330E: 3E DF         LD A,0xDF
3310: 25            DEC H
3311: 85            ADD A,L
3312: 30 01         JR NC,0x3315
3314: 24            INC H
3315: 6F            LD L,A
3316: CB 44         BIT 0,H
3318: 20 F2         JR NZ,0x330C
331A: C9            RET
331B: 5E            LD E,(HL)
331C: 23            INC HL
331D: 56            LD D,(HL)
331E: 23            INC HL
331F: 46            LD B,(HL)
3320: 23            INC HL
3321: 7E            LD A,(HL)
3322: 12            LD (DE),A
3323: 23            INC HL
3324: E7            RST 0x20
3325: 10 FA         DJNZ 0x3321
3327: C9            RET
3328: 5E            LD E,(HL)
3329: 23            INC HL
332A: 56            LD D,(HL)
332B: 23            INC HL
332C: 46            LD B,(HL)
332D: 23            INC HL
332E: 4E            LD C,(HL)
332F: 23            INC HL
3330: EB            EX DE,HL
3331: 1A            LD A,(DE)
3332: 77            LD (HL),A
3333: CB D4         SET 2,H
3335: 71            LD (HL),C
3336: CB 94         RES 2,H
3338: 13            INC DE
3339: 3E E0         LD A,0xE0
333B: 25            DEC H
333C: 85            ADD A,L
333D: 30 01         JR NC,0x3340
333F: 24            INC H
3340: 6F            LD L,A
3341: 10 EE         DJNZ 0x3331
3343: EB            EX DE,HL
3344: C9            RET
3345: 25            DEC H
3346: 83            ADD A,E
3347: 13            INC DE
3348: 02            LD (BC),A
3349: 1D            DEC E
334A: 11 0E 24      LD DE,0x240E
334D: 10 0A         DJNZ 0x3359
334F: 15            DEC D
3350: 0A            LD A,(BC)
3351: 0C            INC C
3352: 1D            DEC E
3353: 12            LD (DE),A
3354: 0C            INC C
3355: 24            INC H
3356: 11 0E 1B      LD DE,0x1B0E
3359: 18 0E         JR 0x3369
335B: 1C            INC E
335C: CC 82 0C      CALL Z,0x0C82
335F: 04            INC B
3360: 26 26         LD H,0x26
3362: 24            INC H
3363: 0B            DEC BC
3364: 0E 1C         LD C,0x1C
3366: 1D            DEC E
3367: 24            INC H
3368: 05            DEC B
3369: 24            INC H
336A: 26 26         LD H,0x26
336C: AF            XOR A
336D: 32 23 68      LD (0x6823),A
3370: 3C            INC A
3371: 32 22 68      LD (0x6822),A
3374: 3E 10         LD A,0x10
3376: 32 00 71      LD (0x7100),A
3379: 3E FF         LD A,0xFF
337B: 32 00 70      LD (0x7000),A
337E: F3            DI
337F: 32 30 68      LD (0x6830),A
3382: 06 0A         LD B,0x0A
3384: D9            EXX
3385: 11 00 80      LD DE,0x8000
3388: 21 00 00      LD HL,0x0000
338B: 01 00 04      LD BC,0x0400
338E: 7D            LD A,L
338F: AC            XOR H
3390: 2F            CPL
3391: 87            ADD A,A
3392: 87            ADD A,A
3393: ED 6A         ADC HL,HL
3395: 7D            LD A,L
3396: 32 30 68      LD (0x6830),A
3399: 12            LD (DE),A
339A: 13            INC DE
339B: 0B            DEC BC
339C: 78            LD A,B
339D: B1            OR C
339E: 20 EE         JR NZ,0x338E
33A0: 11 00 80      LD DE,0x8000
33A3: 21 00 00      LD HL,0x0000
33A6: 01 00 04      LD BC,0x0400
33A9: 7D            LD A,L
33AA: AC            XOR H
33AB: 2F            CPL
33AC: 87            ADD A,A
33AD: 87            ADD A,A
33AE: ED 6A         ADC HL,HL
33B0: 1A            LD A,(DE)
33B1: AD            XOR L
33B2: C2 CA 34      JP NZ,0x34CA
33B5: 13            INC DE
33B6: 32 30 68      LD (0x6830),A
33B9: 0B            DEC BC
33BA: 78            LD A,B
33BB: B1            OR C
33BC: 20 EB         JR NZ,0x33A9
33BE: 11 00 80      LD DE,0x8000
33C1: 21 55 55      LD HL,0x5555
33C4: 01 00 04      LD BC,0x0400
33C7: 7D            LD A,L
33C8: AC            XOR H
33C9: 2F            CPL
33CA: 87            ADD A,A
33CB: 87            ADD A,A
33CC: ED 6A         ADC HL,HL
33CE: 7D            LD A,L
33CF: 32 30 68      LD (0x6830),A
33D2: 12            LD (DE),A
33D3: 13            INC DE
33D4: 0B            DEC BC
33D5: 78            LD A,B
33D6: B1            OR C
33D7: 20 EE         JR NZ,0x33C7
33D9: 11 00 80      LD DE,0x8000
33DC: 21 55 55      LD HL,0x5555
33DF: 01 00 04      LD BC,0x0400
33E2: 7D            LD A,L
33E3: AC            XOR H
33E4: 2F            CPL
33E5: 87            ADD A,A
33E6: 87            ADD A,A
33E7: ED 6A         ADC HL,HL
33E9: 1A            LD A,(DE)
33EA: AD            XOR L
33EB: C2 CA 34      JP NZ,0x34CA
33EE: 13            INC DE
33EF: 32 30 68      LD (0x6830),A
33F2: 0B            DEC BC
33F3: 78            LD A,B
33F4: B1            OR C
33F5: 20 EB         JR NZ,0x33E2
33F7: 11 00 80      LD DE,0x8000
33FA: 21 AA AA      LD HL,0xAAAA
33FD: 01 00 04      LD BC,0x0400
3400: 7D            LD A,L
3401: AC            XOR H
3402: 2F            CPL
3403: 87            ADD A,A
3404: 87            ADD A,A
3405: ED 6A         ADC HL,HL
3407: 7D            LD A,L
3408: 32 30 68      LD (0x6830),A
340B: 12            LD (DE),A
340C: 13            INC DE
340D: 0B            DEC BC
340E: 78            LD A,B
340F: B1            OR C
3410: 20 EE         JR NZ,0x3400
3412: 11 00 80      LD DE,0x8000
3415: 21 AA AA      LD HL,0xAAAA
3418: 01 00 04      LD BC,0x0400
341B: 7D            LD A,L
341C: AC            XOR H
341D: 2F            CPL
341E: 87            ADD A,A
341F: 87            ADD A,A
3420: ED 6A         ADC HL,HL
3422: 1A            LD A,(DE)
3423: AD            XOR L
3424: C2 CA 34      JP NZ,0x34CA
3427: 13            INC DE
3428: 32 30 68      LD (0x6830),A
342B: 0B            DEC BC
342C: 78            LD A,B
342D: B1            OR C
342E: 20 EB         JR NZ,0x341B
3430: D9            EXX
3431: 05            DEC B
3432: C2 84 33      JP NZ,0x3384
3435: 31 00 84      LD SP,0x8400
3438: 11 00 84      LD DE,0x8400
343B: CD 89 34      CALL 0x3489
343E: 11 00 88      LD DE,0x8800
3441: CD 89 34      CALL 0x3489
3444: 11 00 90      LD DE,0x9000
3447: CD 89 34      CALL 0x3489
344A: 21 E0 99      LD HL,0x99E0
344D: 11 00 90      LD DE,0x9000
3450: 01 20 00      LD BC,0x0020
3453: ED B0         LDIR
3455: 11 00 98      LD DE,0x9800
3458: CD 89 34      CALL 0x3489
345B: 21 00 90      LD HL,0x9000
345E: 11 E0 99      LD DE,0x99E0
3461: 01 20 00      LD BC,0x0020
3464: ED B0         LDIR
3466: 31 00 8B      LD SP,0x8B00
3469: 11 00 80      LD DE,0x8000
346C: CD 89 34      CALL 0x3489
346F: CD 62 39      CALL 0x3962
3472: 21 8B 3B      LD HL,0x3B8B
3475: CD 1B 33      CALL 0x331B
3478: 32 30 68      LD (0x6830),A
347B: CD 46 3A      CALL 0x3A46
347E: 3E 07         LD A,0x07
3480: 32 20 90      LD (0x9020),A
3483: CD 7C 39      CALL 0x397C
3486: C3 5A 35      JP 0x355A
3489: 06 1E         LD B,0x1E
348B: 21 00 00      LD HL,0x0000
348E: C5            PUSH BC
348F: CD 96 34      CALL 0x3496
3492: C1            POP BC
3493: 10 F9         DJNZ 0x348E
3495: C9            RET
3496: D5            PUSH DE
3497: E5            PUSH HL
3498: 01 00 04      LD BC,0x0400
349B: 7D            LD A,L
349C: AC            XOR H
349D: 2F            CPL
349E: 87            ADD A,A
349F: 87            ADD A,A
34A0: ED 6A         ADC HL,HL
34A2: 7D            LD A,L
34A3: 32 30 68      LD (0x6830),A
34A6: 12            LD (DE),A
34A7: 13            INC DE
34A8: 0B            DEC BC
34A9: 78            LD A,B
34AA: B1            OR C
34AB: 20 EE         JR NZ,0x349B
34AD: E1            POP HL
34AE: D1            POP DE
34AF: D5            PUSH DE
34B0: 01 00 04      LD BC,0x0400
34B3: 7D            LD A,L
34B4: AC            XOR H
34B5: 2F            CPL
34B6: 87            ADD A,A
34B7: 87            ADD A,A
34B8: ED 6A         ADC HL,HL
34BA: 1A            LD A,(DE)
34BB: AD            XOR L
34BC: C2 CA 34      JP NZ,0x34CA
34BF: 13            INC DE
34C0: 32 30 68      LD (0x6830),A
34C3: 0B            DEC BC
34C4: 78            LD A,B
34C5: B1            OR C
34C6: 20 EB         JR NZ,0x34B3
34C8: D1            POP DE
34C9: C9            RET
34CA: 47            LD B,A
34CB: 7A            LD A,D
34CC: 1F            RRA
34CD: 1F            RRA
34CE: E6 07         AND 0x07
34D0: FE 04         CP 0x04
34D2: 38 01         JR C,0x34D5
34D4: 3D            DEC A
34D5: FE 05         CP 0x05
34D7: 38 01         JR C,0x34DA
34D9: 3D            DEC A
34DA: 5F            LD E,A
34DB: 78            LD A,B
34DC: 16 15         LD D,0x15
34DE: E6 0F         AND 0x0F
34E0: 20 02         JR NZ,0x34E4
34E2: 16 11         LD D,0x11
34E4: 32 30 68      LD (0x6830),A
34E7: D9            EXX
34E8: 21 00 80      LD HL,0x8000
34EB: 11 01 80      LD DE,0x8001
34EE: 01 00 04      LD BC,0x0400
34F1: 36 24         LD (HL),0x24
34F3: ED B0         LDIR
34F5: 36 00         LD (HL),0x00
34F7: 01 FF 03      LD BC,0x03FF
34FA: ED B0         LDIR
34FC: 32 30 68      LD (0x6830),A
34FF: D9            EXX
3500: 21 E2 82      LD HL,0x82E2
3503: 36 1B         LD (HL),0x1B
3505: 3E E0         LD A,0xE0
3507: 25            DEC H
3508: D7            RST 0x10
3509: 36 0A         LD (HL),0x0A
350B: 3E E0         LD A,0xE0
350D: 25            DEC H
350E: D7            RST 0x10
350F: 36 16         LD (HL),0x16
3511: 3E A0         LD A,0xA0
3513: 25            DEC H
3514: D7            RST 0x10
3515: 73            LD (HL),E
3516: 3E E0         LD A,0xE0
3518: 25            DEC H
3519: D7            RST 0x10
351A: 72            LD (HL),D
351B: 21 80 93      LD HL,0x9380
351E: 06 80         LD B,0x80
3520: 36 F1         LD (HL),0xF1
3522: 23            INC HL
3523: 10 FB         DJNZ 0x3520
3525: 32 30 68      LD (0x6830),A
3528: C3 25 35      JP 0x3525
352B: E5            PUSH HL
352C: EB            EX DE,HL
352D: 16 10         LD D,0x10
352F: AF            XOR A
3530: 47            LD B,A
3531: 86            ADD A,(HL)
3532: 32 30 68      LD (0x6830),A
3535: 23            INC HL
3536: 10 F9         DJNZ 0x3531
3538: 15            DEC D
3539: 20 F6         JR NZ,0x3531
353B: EB            EX DE,HL
353C: E1            POP HL
353D: B9            CP C
353E: C8            RET Z
353F: 21 95 3B      LD HL,0x3B95
3542: CD 1B 33      CALL 0x331B
3545: 11 44 82      LD DE,0x8244
3548: 21 02 91      LD HL,0x9102
354B: AF            XOR A
354C: ED 6F         DB 0xED,0x6F ; undefined/alias
354E: 12            LD (DE),A
354F: E7            RST 0x20
3550: AF            XOR A
3551: ED 6F         DB 0xED,0x6F ; undefined/alias
3553: 12            LD (DE),A
3554: 32 30 68      LD (0x6830),A
3557: C3 54 35      JP 0x3554
355A: 21 00 91      LD HL,0x9100
355D: 36 00         LD (HL),0x00
355F: 23            INC HL
3560: 36 00         LD (HL),0x00
3562: 23            INC HL
3563: 36 01         LD (HL),0x01
3565: AF            XOR A
3566: 32 70 92      LD (0x9270),A
3569: 3C            INC A
356A: 32 23 68      LD (0x6823),A
356D: 11 00 00      LD DE,0x0000
3570: 0E 00         LD C,0x00
3572: CD 2B 35      CALL 0x352B
3575: 34            INC (HL)
3576: 0E 00         LD C,0x00
3578: CD 2B 35      CALL 0x352B
357B: 34            INC (HL)
357C: 0E 00         LD C,0x00
357E: CD 2B 35      CALL 0x352B
3581: 34            INC (HL)
3582: 0E 00         LD C,0x00
3584: CD 2B 35      CALL 0x352B
3587: 36 FF         LD (HL),0xFF
3589: 3A 00 91      LD A,(0x9100)
358C: 32 30 68      LD (0x6830),A
358F: A7            AND A
3590: 28 F7         JR Z,0x3589
3592: 3C            INC A
3593: 28 07         JR Z,0x359C
3595: 3D            DEC A
3596: 32 02 91      LD (0x9102),A
3599: C3 3F 35      JP 0x353F
359C: 3A 01 91      LD A,(0x9101)
359F: 32 30 68      LD (0x6830),A
35A2: A7            AND A
35A3: 28 F7         JR Z,0x359C
35A5: 3C            INC A
35A6: 28 17         JR Z,0x35BF
35A8: 3D            DEC A
35A9: 32 02 91      LD (0x9102),A
35AC: C3 3F 35      JP 0x353F
35AF: 05            DEC B
35B0: 05            DEC B
35B1: 05            DEC B
35B2: 05            DEC B
35B3: 30 40         JR NC,0x35F5
35B5: 00            NOP
35B6: 02            LD (BC),A
35B7: DF            RST 0x18
35B8: 40            LD B,B
35B9: 30 30         JR NC,0x35EB
35BB: 03            INC BC
35BC: DF            RST 0x18
35BD: 10 20         DJNZ 0x35DF
35BF: 21 95 3B      LD HL,0x3B95
35C2: CD 1B 33      CALL 0x331B
35C5: CD FE 37      CALL 0x37FE
35C8: 21 00 91      LD HL,0x9100
35CB: 06 03         LD B,0x03
35CD: 36 00         LD (HL),0x00
35CF: 23            INC HL
35D0: 10 FB         DJNZ 0x35CD
35D2: 3E 20         LD A,0x20
35D4: 32 00 90      LD (0x9000),A
35D7: 21 AF 35      LD HL,0x35AF
35DA: 11 00 70      LD DE,0x7000
35DD: 01 04 00      LD BC,0x0004
35E0: D9            EXX
35E1: 3E A1         LD A,0xA1
35E3: 32 00 71      LD (0x7100),A
35E6: 32 30 68      LD (0x6830),A
35E9: CD F6 37      CALL 0x37F6
35EC: AF            XOR A
35ED: 32 30 68      LD (0x6830),A
35F0: 32 A0 92      LD (0x92A0),A
35F3: 3A A0 92      LD A,(0x92A0)
35F6: FE 02         CP 0x02
35F8: 20 F9         JR NZ,0x35F3
35FA: 21 B3 35      LD HL,0x35B3
35FD: 11 00 70      LD DE,0x7000
3600: 01 0C 00      LD BC,0x000C
3603: D9            EXX
3604: 3E A8         LD A,0xA8
3606: 32 00 71      LD (0x7100),A
3609: 32 30 68      LD (0x6830),A
360C: CD F6 37      CALL 0x37F6
360F: 32 30 68      LD (0x6830),A
3612: ED 56         DB 0xED,0x56 ; undefined/alias
3614: 21 20 68      LD HL,0x6820
3617: 36 00         LD (HL),0x00
3619: 36 01         LD (HL),0x01
361B: FB            EI
361C: CD FC 39      CALL 0x39FC
361F: AF            XOR A
3620: 32 A0 92      LD (0x92A0),A
3623: 3A A0 92      LD A,(0x92A0)
3626: E6 08         AND 0x08
3628: 28 F9         JR Z,0x3623
362A: 3A A0 92      LD A,(0x92A0)
362D: 4F            LD C,A
362E: 3A A0 92      LD A,(0x92A0)
3631: B9            CP C
3632: 28 FA         JR Z,0x362E
3634: 21 16 91      LD HL,0x9116
3637: 11 17 91      LD DE,0x9117
363A: 01 07 00      LD BC,0x0007
363D: ED B8         LDDR
363F: EB            EX DE,HL
3640: 11 B5 99      LD DE,0x99B5
3643: 1A            LD A,(DE)
3644: CB 7F         BIT 7,A
3646: C2 C4 36      JP NZ,0x36C4
3649: 77            LD (HL),A
364A: 23            INC HL
364B: B6            OR (HL)
364C: 23            INC HL
364D: 2F            CPL
364E: A6            AND (HL)
364F: 23            INC HL
3650: A6            AND (HL)
3651: 77            LD (HL),A
3652: 47            LD B,A
3653: 23            INC HL
3654: 13            INC DE
3655: 1A            LD A,(DE)
3656: 77            LD (HL),A
3657: 23            INC HL
3658: B6            OR (HL)
3659: 23            INC HL
365A: 2F            CPL
365B: A6            AND (HL)
365C: 23            INC HL
365D: A6            AND (HL)
365E: 77            LD (HL),A
365F: 6F            LD L,A
3660: 60            LD H,B
3661: 06 10         LD B,0x10
3663: 29            ADD HL,HL
3664: DC E0 39      CALL C,0x39E0
3667: 10 FA         DJNZ 0x3663
3669: CD FE 37      CALL 0x37FE
366C: 2A 72 92      LD HL,(0x9272)
366F: 7C            LD A,H
3670: B5            OR L
3671: 28 09         JR Z,0x367C
3673: 2B            DEC HL
3674: 22 72 92      LD (0x9272),HL
3677: 7C            LD A,H
3678: B5            OR L
3679: CC C5 39      CALL Z,0x39C5
367C: 3A 10 91      LD A,(0x9110)
367F: 1F            RRA
3680: 30 07         JR NC,0x3689
3682: AF            XOR A
3683: 32 71 92      LD (0x9271),A
3686: C3 2A 36      JP 0x362A
3689: 3A 17 91      LD A,(0x9117)
368C: E6 0F         AND 0x0F
368E: CA 2A 36      JP Z,0x362A
3691: 4F            LD C,A
3692: 21 8C 37      LD HL,0x378C
3695: 11 71 92      LD DE,0x9271
3698: 1A            LD A,(DE)
3699: D7            RST 0x10
369A: 7E            LD A,(HL)
369B: B9            CP C
369C: 28 05         JR Z,0x36A3
369E: AF            XOR A
369F: 12            LD (DE),A
36A0: C3 2A 36      JP 0x362A
36A3: EB            EX DE,HL
36A4: 34            INC (HL)
36A5: 13            INC DE
36A6: 1A            LD A,(DE)
36A7: 3C            INC A
36A8: C2 2A 36      JP NZ,0x362A
36AB: CD 62 39      CALL 0x3962
36AE: CD 7C 39      CALL 0x397C
36B1: 11 A2 37      LD DE,0x37A2
36B4: 21 42 80      LD HL,0x8042
36B7: 06 1C         LD B,0x1C
36B9: CD 70 37      CALL 0x3770
36BC: 10 FB         DJNZ 0x36B9
36BE: 3A B5 99      LD A,(0x99B5)
36C1: 87            ADD A,A
36C2: 30 FA         JR NC,0x36BE
36C4: AF            XOR A
36C5: 32 A0 92      LD (0x92A0),A
36C8: 3A A0 92      LD A,(0x92A0)
36CB: FE 08         CP 0x08
36CD: 38 F9         JR C,0x36C8
36CF: 3A B5 99      LD A,(0x99B5)
36D2: 87            ADD A,A
36D3: D2 2A 36      JP NC,0x362A
36D6: CD 7C 39      CALL 0x397C
36D9: 21 00 80      LD HL,0x8000
36DC: 06 10         LD B,0x10
36DE: 36 28         LD (HL),0x28
36E0: 23            INC HL
36E1: 36 27         LD (HL),0x27
36E3: 23            INC HL
36E4: 10 F8         DJNZ 0x36DE
36E6: 06 10         LD B,0x10
36E8: 36 2D         LD (HL),0x2D
36EA: 23            INC HL
36EB: 36 2B         LD (HL),0x2B
36ED: 23            INC HL
36EE: 10 F8         DJNZ 0x36E8
36F0: 06 10         LD B,0x10
36F2: 36 28         LD (HL),0x28
36F4: 23            INC HL
36F5: 36 2D         LD (HL),0x2D
36F7: 23            INC HL
36F8: 10 F8         DJNZ 0x36F2
36FA: 06 10         LD B,0x10
36FC: 36 27         LD (HL),0x27
36FE: 23            INC HL
36FF: 36 2B         LD (HL),0x2B
3701: 23            INC HL
3702: 10 F8         DJNZ 0x36FC
3704: EB            EX DE,HL
3705: 21 40 80      LD HL,0x8040
3708: 01 40 03      LD BC,0x0340
370B: ED B0         LDIR
370D: 21 00 80      LD HL,0x8000
3710: 01 40 00      LD BC,0x0040
3713: ED B0         LDIR
3715: AF            XOR A
3716: 32 A0 92      LD (0x92A0),A
3719: 3A A0 92      LD A,(0x92A0)
371C: 87            ADD A,A
371D: 30 FA         JR NC,0x3719
371F: 3A B5 99      LD A,(0x99B5)
3722: 87            ADD A,A
3723: 30 FA         JR NC,0x371F
3725: F3            DI
3726: CD F6 37      CALL 0x37F6
3729: 3E FE         LD A,0xFE
372B: 32 A0 92      LD (0x92A0),A
372E: 3A A0 92      LD A,(0x92A0)
3731: A7            AND A
3732: 20 FA         JR NZ,0x372E
3734: 32 30 68      LD (0x6830),A
3737: 21 80 92      LD HL,0x9280
373A: 11 00 70      LD DE,0x7000
373D: 01 08 00      LD BC,0x0008
3740: D9            EXX
3741: 3E E1         LD A,0xE1
3743: 32 00 71      LD (0x7100),A
3746: CD F6 37      CALL 0x37F6
3749: 21 00 70      LD HL,0x7000
374C: 11 88 92      LD DE,0x9288
374F: 01 03 00      LD BC,0x0003
3752: D9            EXX
3753: 3E B1         LD A,0xB1
3755: 32 00 71      LD (0x7100),A
3758: CD F6 37      CALL 0x37F6
375B: 3A 88 92      LD A,(0x9288)
375E: FE A1         CP 0xA1
3760: 30 D5         JR NC,0x3737
3762: E6 0F         AND 0x0F
3764: FE 0A         CP 0x0A
3766: 30 CF         JR NC,0x3737
3768: FB            EI
3769: AF            XOR A
376A: 32 10 82      LD (0x8210),A
376D: C3 D3 02      JP 0x02D3
3770: CD 7E 37      CALL 0x377E
3773: CD 7E 37      CALL 0x377E
3776: CD 7E 37      CALL 0x377E
3779: 3E 05         LD A,0x05
377B: C3 10 00      JP 0x0010
377E: 1A            LD A,(DE)
377F: 0E 08         LD C,0x08
3781: 87            ADD A,A
3782: 30 01         JR NC,0x3785
3784: 34            INC (HL)
3785: 23            INC HL
3786: 0D            DEC C
3787: 20 F8         JR NZ,0x3781
3789: 13            INC DE
378A: 23            INC HL
378B: C9            RET
378C: 02            LD (BC),A
378D: 02            LD (BC),A
378E: 02            LD (BC),A
378F: 02            LD (BC),A
3790: 02            LD (BC),A
3791: 08            EX AF,AF'
3792: 08            EX AF,AF'
3793: 08            EX AF,AF'
3794: 08            EX AF,AF'
3795: 08            EX AF,AF'
3796: 08            EX AF,AF'
3797: 02            LD (BC),A
3798: 02            LD (BC),A
3799: 02            LD (BC),A
379A: 08            EX AF,AF'
379B: 08            EX AF,AF'
379C: 08            EX AF,AF'
379D: 08            EX AF,AF'
379E: 08            EX AF,AF'
379F: 08            EX AF,AF'
37A0: 08            EX AF,AF'
37A1: FF            RST 0x38
37A2: 01 3E 00      LD BC,0x003E
37A5: 7F            LD A,A
37A6: 41            LD B,C
37A7: 00            NOP
37A8: 21 41 00      LD HL,0x0041
37AB: 00            NOP
37AC: 41            LD B,C
37AD: 00            NOP
37AE: 36 3E         LD (HL),0x3E
37B0: 00            NOP
37B1: 49            LD C,C
37B2: 00            NOP
37B3: 03            INC BC
37B4: 49            LD C,C
37B5: 22 03 49      LD (0x4903),HL
37B8: 41            LD B,C
37B9: 00            NOP
37BA: 36 41         LD (HL),0x41
37BC: 3E 00         LD A,0x00
37BE: 3E 41         LD A,0x41
37C0: 3E 00         LD A,0x00
37C2: 41            LD B,C
37C3: 49            LD C,C
37C4: 7F            LD A,A
37C5: 41            LD B,C
37C6: 49            LD C,C
37C7: 20 7F         JR NZ,0x3848
37C9: 49            LD C,C
37CA: 18 00         JR 0x37CC
37CC: 32 20 40      LD (0x4020),A
37CF: 00            NOP
37D0: 7F            LD A,A
37D1: 40            LD B,B
37D2: 01 00 7F      LD BC,0x7F00
37D5: 7F            LD A,A
37D6: 3F            CCF
37D7: 40            LD B,B
37D8: 21 44 40      LD HL,0x4044
37DB: 00            NOP
37DC: 44            LD B,H
37DD: 00            NOP
37DE: 3C            INC A
37DF: 44            LD B,H
37E0: 01 42 3F      LD BC,0x3F42
37E3: 01 81 00      LD BC,0x0081
37E6: 01 A5 7F      LD BC,0x7FA5
37E9: 01 A5 04      LD BC,0x04A5
37EC: 7F            LD A,A
37ED: 99            SBC A,C
37EE: 08            EX AF,AF'
37EF: 00            NOP
37F0: 42            LD B,D
37F1: 10 00         DJNZ 0x37F3
37F3: 3C            INC A
37F4: 7F            LD A,A
37F5: 00            NOP
37F6: 3A 00 71      LD A,(0x7100)
37F9: FE 10         CP 0x10
37FB: C8            RET Z
37FC: 18 F8         JR 0x37F6
37FE: 3A 07 68      LD A,(0x6807)
3801: 1F            RRA
3802: 3C            INC A
3803: E6 01         AND 0x01
3805: 32 83 99      LD (0x9983),A
3808: 21 D6 3A      LD HL,0x3AD6
380B: CF            RST 0x08
380C: CD 6B 3A      CALL 0x3A6B
380F: 3A B5 99      LD A,(0x99B5)
3812: 0E 00         LD C,0x00
3814: E6 0C         AND 0x0C
3816: 20 01         JR NZ,0x3819
3818: 0C            INC C
3819: 79            LD A,C
381A: 32 07 A0      LD (0xA007),A
381D: 21 00 68      LD HL,0x6800
3820: 7E            LD A,(HL)
3821: 1F            RRA
3822: E6 01         AND 0x01
3824: 4F            LD C,A
3825: 23            INC HL
3826: 7E            LD A,(HL)
3827: E6 02         AND 0x02
3829: B1            OR C
382A: 32 84 99      LD (0x9984),A
382D: 21 72 3A      LD HL,0x3A72
3830: D7            RST 0x10
3831: 11 2C 82      LD DE,0x822C
3834: ED A0         LDI
3836: 21 EE 3A      LD HL,0x3AEE
3839: CD 1B 33      CALL 0x331B
383C: 21 06 68      LD HL,0x6806
383F: 7E            LD A,(HL)
3840: 23            INC HL
3841: 4E            LD C,(HL)
3842: CB 19         RR C
3844: 8F            ADC A,A
3845: E6 03         AND 0x03
3847: 3C            INC A
3848: 32 82 99      LD (0x9982),A
384B: 3C            INC A
384C: 32 EA 82      LD (0x82EA),A
384F: 21 F5 3A      LD HL,0x3AF5
3852: CD 1B 33      CALL 0x331B
3855: 21 CE 3A      LD HL,0x3ACE
3858: 11 80 92      LD DE,0x9280
385B: 01 08 00      LD BC,0x0008
385E: ED B0         LDIR
3860: 21 00 68      LD HL,0x6800
3863: 06 03         LD B,0x03
3865: AF            XOR A
3866: 4E            LD C,(HL)
3867: CB 19         RR C
3869: 8F            ADC A,A
386A: 23            INC HL
386B: 10 F9         DJNZ 0x3866
386D: E6 07         AND 0x07
386F: 28 34         JR Z,0x38A5
3871: 3D            DEC A
3872: 87            ADD A,A
3873: 87            ADD A,A
3874: 87            ADD A,A
3875: 21 76 3A      LD HL,0x3A76
3878: D7            RST 0x10
3879: 11 81 92      LD DE,0x9281
387C: 01 04 00      LD BC,0x0004
387F: ED B0         LDIR
3881: 11 E8 82      LD DE,0x82E8
3884: ED A0         LDI
3886: 11 28 82      LD DE,0x8228
3889: ED A0         LDI
388B: 11 E8 81      LD DE,0x81E8
388E: ED A0         LDI
3890: 11 E8 80      LD DE,0x80E8
3893: ED A0         LDI
3895: 3E 24         LD A,0x24
3897: 32 08 82      LD (0x8208),A
389A: 21 00 3B      LD HL,0x3B00
389D: CD 1B 33      CALL 0x331B
38A0: CD 1B 33      CALL 0x331B
38A3: 18 10         JR 0x38B5
38A5: 21 81 92      LD HL,0x9281
38A8: 06 04         LD B,0x04
38AA: 36 00         LD (HL),0x00
38AC: 23            INC HL
38AD: 10 FB         DJNZ 0x38AA
38AF: 21 11 3B      LD HL,0x3B11
38B2: CD 1B 33      CALL 0x331B
38B5: 21 03 68      LD HL,0x6803
38B8: 06 03         LD B,0x03
38BA: AF            XOR A
38BB: 4E            LD C,(HL)
38BC: CB 19         RR C
38BE: 8F            ADC A,A
38BF: 23            INC HL
38C0: 10 F9         DJNZ 0x38BB
38C2: E6 07         AND 0x07
38C4: CA 37 39      JP Z,0x3937
38C7: 4F            LD C,A
38C8: 3A 82 99      LD A,(0x9982)
38CB: E6 04         AND 0x04
38CD: 87            ADD A,A
38CE: 81            ADD A,C
38CF: 87            ADD A,A
38D0: 21 AE 3A      LD HL,0x3AAE
38D3: D7            RST 0x10
38D4: 11 80 99      LD DE,0x9980
38D7: ED A0         LDI
38D9: ED A0         LDI
38DB: 2B            DEC HL
38DC: 0E 01         LD C,0x01
38DE: CD E4 38      CALL 0x38E4
38E1: 2B            DEC HL
38E2: 0E 00         LD C,0x00
38E4: 7E            LD A,(HL)
38E5: 3C            INC A
38E6: CA 45 39      JP Z,0x3945
38E9: 79            LD A,C
38EA: 87            ADD A,A
38EB: E5            PUSH HL
38EC: 21 27 3B      LD HL,0x3B27
38EF: D7            RST 0x10
38F0: 7E            LD A,(HL)
38F1: 23            INC HL
38F2: 66            LD H,(HL)
38F3: 6F            LD L,A
38F4: C5            PUSH BC
38F5: CD 1B 33      CALL 0x331B
38F8: CD 1B 33      CALL 0x331B
38FB: C1            POP BC
38FC: E1            POP HL
38FD: 7E            LD A,(HL)
38FE: E6 7F         AND 0x7F
3900: EB            EX DE,HL
3901: 21 F0 81      LD HL,0x81F0
3904: 41            LD B,C
3905: 10 02         DJNZ 0x3909
3907: 23            INC HL
3908: 23            INC HL
3909: CD 28 39      CALL 0x3928
390C: EB            EX DE,HL
390D: 0D            DEC C
390E: C0            RET NZ
390F: EB            EX DE,HL
3910: 1A            LD A,(DE)
3911: CB 7F         BIT 7,A
3913: C2 53 39      JP NZ,0x3953
3916: 21 F4 81      LD HL,0x81F4
3919: CD 28 39      CALL 0x3928
391C: D5            PUSH DE
391D: 21 5A 3B      LD HL,0x3B5A
3920: CD 1B 33      CALL 0x331B
3923: CD 1B 33      CALL 0x331B
3926: E1            POP HL
3927: C9            RET
3928: FE 0A         CP 0x0A
392A: 06 24         LD B,0x24
392C: 38 04         JR C,0x3932
392E: 06 01         LD B,0x01
3930: D6 0A         SUB 0x0A
3932: 70            LD (HL),B
3933: CB AD         RES 5,L
3935: 77            LD (HL),A
3936: C9            RET
3937: 21 71 3B      LD HL,0x3B71
393A: CD 1B 33      CALL 0x331B
393D: 21 80 99      LD HL,0x9980
3940: 36 FF         LD (HL),0xFF
3942: 23            INC HL
3943: 36 FF         LD (HL),0xFF
3945: EB            EX DE,HL
3946: 21 32 83      LD HL,0x8332
3949: 06 16         LD B,0x16
394B: 36 24         LD (HL),0x24
394D: 3E E0         LD A,0xE0
394F: 25            DEC H
3950: D7            RST 0x10
3951: 10 F8         DJNZ 0x394B
3953: 21 34 83      LD HL,0x8334
3956: 06 16         LD B,0x16
3958: 36 24         LD (HL),0x24
395A: 3E E0         LD A,0xE0
395C: 25            DEC H
395D: D7            RST 0x10
395E: 10 F8         DJNZ 0x3958
3960: EB            EX DE,HL
3961: C9            RET
3962: 21 00 80      LD HL,0x8000
3965: 11 01 80      LD DE,0x8001
3968: 01 00 04      LD BC,0x0400
396B: 36 24         LD (HL),0x24
396D: ED B0         LDIR
396F: 36 03         LD (HL),0x03
3971: 01 FF 03      LD BC,0x03FF
3974: ED B0         LDIR
3976: 3E 07         LD A,0x07
3978: 32 BE 99      LD (0x99BE),A
397B: C9            RET
397C: 21 80 93      LD HL,0x9380
397F: 06 80         LD B,0x80
3981: 36 F1         LD (HL),0xF1
3983: 23            INC HL
3984: 10 FB         DJNZ 0x3981
3986: C9            RET
3987: 21 E0 99      LD HL,0x99E0
398A: 11 5E 83      LD DE,0x835E
398D: 0E 02         LD C,0x02
398F: 06 01         LD B,0x01
3991: CD A1 39      CALL 0x39A1
3994: 06 03         LD B,0x03
3996: CD A1 39      CALL 0x39A1
3999: 06 02         LD B,0x02
399B: CD A1 39      CALL 0x39A1
399E: 23            INC HL
399F: 06 01         LD B,0x01
39A1: CD B4 39      CALL 0x39B4
39A4: CD AA 39      CALL 0x39AA
39A7: 10 FB         DJNZ 0x39A4
39A9: C9            RET
39AA: 3E 99         LD A,0x99
39AC: 96            SUB (HL)
39AD: 1F            RRA
39AE: 1F            RRA
39AF: 1F            RRA
39B0: 1F            RRA
39B1: CD B8 39      CALL 0x39B8
39B4: 3E 99         LD A,0x99
39B6: 96            SUB (HL)
39B7: 23            INC HL
39B8: E6 0F         AND 0x0F
39BA: 12            LD (DE),A
39BB: E7            RST 0x20
39BC: 0D            DEC C
39BD: C0            RET NZ
39BE: 3E 2A         LD A,0x2A
39C0: 0E 04         LD C,0x04
39C2: 12            LD (DE),A
39C3: E7            RST 0x20
39C4: C9            RET
39C5: 21 5E 83      LD HL,0x835E
39C8: 06 17         LD B,0x17
39CA: 11 E0 FF      LD DE,0xFFE0
39CD: 36 24         LD (HL),0x24
39CF: 19            ADD HL,DE
39D0: 10 FB         DJNZ 0x39CD
39D2: C9            RET
39D3: E5            PUSH HL
39D4: CD 87 39      CALL 0x3987
39D7: 21 84 03      LD HL,0x0384
39DA: 22 72 92      LD (0x9272),HL
39DD: E1            POP HL
39DE: C1            POP BC
39DF: C9            RET
39E0: C5            PUSH BC
39E1: 78            LD A,B
39E2: FE 0F         CP 0x0F
39E4: 28 ED         JR Z,0x39D3
39E6: FE 02         CP 0x02
39E8: 28 15         JR Z,0x39FF
39EA: FE 04         CP 0x04
39EC: 20 3D         JR NZ,0x3A2B
39EE: 3A 70 92      LD A,(0x9270)
39F1: D6 01         SUB 0x01
39F3: 30 02         JR NC,0x39F7
39F5: 3E 11         LD A,0x11
39F7: 32 70 92      LD (0x9270),A
39FA: 18 0A         JR 0x3A06
39FC: C5            PUSH BC
39FD: 18 07         JR 0x3A06
39FF: 3A 70 92      LD A,(0x9270)
3A02: 3C            INC A
3A03: 32 70 92      LD (0x9270),A
3A06: 3A 70 92      LD A,(0x9270)
3A09: FE 12         CP 0x12
3A0B: 38 01         JR C,0x3A0E
3A0D: AF            XOR A
3A0E: 32 70 92      LD (0x9270),A
3A11: E5            PUSH HL
3A12: 0E 00         LD C,0x00
3A14: FE 0A         CP 0x0A
3A16: 38 03         JR C,0x3A1B
3A18: 0C            INC C
3A19: D6 0A         SUB 0x0A
3A1B: 21 2E 82      LD HL,0x822E
3A1E: 71            LD (HL),C
3A1F: 2E 0E         LD L,0x0E
3A21: 77            LD (HL),A
3A22: 21 51 3A      LD HL,0x3A51
3A25: CD 1B 33      CALL 0x331B
3A28: E1            POP HL
3A29: C1            POP BC
3A2A: C9            RET
3A2B: 3A 70 92      LD A,(0x9270)
3A2E: FE 12         CP 0x12
3A30: 38 01         JR C,0x3A33
3A32: AF            XOR A
3A33: 32 70 92      LD (0x9270),A
3A36: EB            EX DE,HL
3A37: CD 46 3A      CALL 0x3A46
3A3A: 21 59 3A      LD HL,0x3A59
3A3D: D7            RST 0x10
3A3E: 6E            LD L,(HL)
3A3F: 26 9A         LD H,0x9A
3A41: 36 01         LD (HL),0x01
3A43: EB            EX DE,HL
3A44: C1            POP BC
3A45: C9            RET
3A46: 21 A0 9A      LD HL,0x9AA0
3A49: 06 40         LD B,0x40
3A4B: 36 00         LD (HL),0x00
3A4D: 23            INC HL
3A4E: 10 FB         DJNZ 0x3A4B
3A50: C9            RET
3A51: EE 82         XOR 0x82
3A53: 05            DEC B
3A54: 1C            INC E
3A55: 18 1E         JR 0x3A75
3A57: 17            RLA
3A58: 0D            DEC C
3A59: A1            AND C
3A5A: A2            AND D
3A5B: A3            AND E
3A5C: A4            AND H
3A5D: A7            AND A
3A5E: AA            XOR D
3A5F: AB            XOR E
3A60: AC            XOR H
3A61: AD            XOR L
3A62: AE            XOR (HL)
3A63: AF            XOR A
3A64: B0            OR B
3A65: B2            OR D
3A66: B3            OR E
3A67: B4            OR H
3A68: B5            OR L
3A69: B6            OR (HL)
3A6A: B9            CP C
3A6B: 7E            LD A,(HL)
3A6C: 23            INC HL
3A6D: 66            LD H,(HL)
3A6E: 6F            LD L,A
3A6F: C3 1B 33      JP 0x331B
3A72: 0B            DEC BC
3A73: 0C            INC C
3A74: 0D            DEC C
3A75: 0A            LD A,(BC)
3A76: 04            INC B
3A77: 01 04 01      LD BC,0x0104
3A7A: 04            INC B
3A7B: 1C            INC E
3A7C: 01 24 03      LD BC,0x0324
3A7F: 01 03 01      LD BC,0x0103
3A82: 03            INC BC
3A83: 1C            INC E
3A84: 01 24 02      LD BC,0x0224
3A87: 01 02 01      LD BC,0x0102
3A8A: 02            LD (BC),A
3A8B: 1C            INC E
3A8C: 01 24 02      LD BC,0x0224
3A8F: 03            INC BC
3A90: 02            LD (BC),A
3A91: 03            INC BC
3A92: 02            LD (BC),A
3A93: 1C            INC E
3A94: 03            INC BC
3A95: 1C            INC E
3A96: 01 03 01      LD BC,0x0103
3A99: 03            INC BC
3A9A: 01 24 03      LD BC,0x0324
3A9D: 1C            INC E
3A9E: 01 02 01      LD BC,0x0102
3AA1: 02            LD (BC),A
3AA2: 01 24 02      LD BC,0x0224
3AA5: 1C            INC E
3AA6: 01 01 01      LD BC,0x0101
3AA9: 01 01 24      LD BC,0x2401
3AAC: 01 24 FF      LD BC,0xFF24
3AAF: FF            RST 0x38
3AB0: 02            LD (BC),A
3AB1: 06 02         LD B,0x02
3AB3: 07            RLCA
3AB4: 02            LD (BC),A
3AB5: 08            EX AF,AF'
3AB6: 03            INC BC
3AB7: 0A            LD A,(BC)
3AB8: 03            INC BC
3AB9: 0C            INC C
3ABA: 02            LD (BC),A
3ABB: 86            ADD A,(HL)
3ABC: 03            INC BC
3ABD: 88            ADC A,B
3ABE: FF            RST 0x38
3ABF: FF            RST 0x38
3AC0: 03            INC BC
3AC1: 0A            LD A,(BC)
3AC2: 03            INC BC
3AC3: 0C            INC C
3AC4: 03            INC BC
3AC5: 0F            RRCA
3AC6: 03            INC BC
3AC7: 8A            ADC A,D
3AC8: 03            INC BC
3AC9: 8C            ADC A,H
3ACA: 03            INC BC
3ACB: 8F            ADC A,A
3ACC: 03            INC BC
3ACD: FF            RST 0x38
3ACE: 01 01 01      LD BC,0x0101
3AD1: 01 01 02      LD BC,0x0201
3AD4: 03            INC BC
3AD5: 00            NOP
3AD6: DA 3A E4      JP C,0xE43A
3AD9: 3A E6 82      LD A,(0x82E6)
3ADC: 07            RLCA
3ADD: 1E 19         LD E,0x19
3ADF: 1B            DEC DE
3AE0: 12            LD (DE),A
3AE1: 10 11         DJNZ 0x3AF4
3AE3: 1D            DEC E
3AE4: E6 82         AND 0x82
3AE6: 07            RLCA
3AE7: 1D            DEC E
3AE8: 0A            LD A,(BC)
3AE9: 0B            DEC BC
3AEA: 15            DEC D
3AEB: 0E 24         LD C,0x24
3AED: 24            INC H
3AEE: EC 82 04      CALL PE,0x0482
3AF1: 1B            DEC DE
3AF2: 0A            LD A,(BC)
3AF3: 17            RLA
3AF4: 14            INC D
3AF5: AA            XOR D
3AF6: 82            ADD A,D
3AF7: 08            EX AF,AF'
3AF8: 0F            RRCA
3AF9: 12            LD (DE),A
3AFA: 10 11         DJNZ 0x3B0D
3AFC: 1D            DEC E
3AFD: 0E 1B         LD C,0x1B
3AFF: 1C            INC E
3B00: C8            RET Z
3B01: 82            ADD A,D
3B02: 05            DEC B
3B03: 24            INC H
3B04: 0C            INC C
3B05: 18 12         JR 0x3B19
3B07: 17            RLA
3B08: A8            XOR B
3B09: 81            ADD A,C
3B0A: 06 0C         LD B,0x0C
3B0C: 1B            DEC DE
3B0D: 0E 0D         LD C,0x0D
3B0F: 12            LD (DE),A
3B10: 1D            DEC E
3B11: E8            RET PE
3B12: 82            ADD A,D
3B13: 12            LD (DE),A
3B14: 0F            RRCA
3B15: 1B            DEC DE
3B16: 0E 0E         LD C,0x0E
3B18: 24            INC H
3B19: 19            ADD HL,DE
3B1A: 15            DEC D
3B1B: 0A            LD A,(BC)
3B1C: 22 24 24      LD (0x2424),HL
3B1F: 24            INC H
3B20: 24            INC H
3B21: 24            INC H
3B22: 24            INC H
3B23: 24            INC H
3B24: 24            INC H
3B25: 24            INC H
3B26: 24            INC H
3B27: 2B            DEC HL
3B28: 3B            DEC SP
3B29: 43            LD B,E
3B2A: 3B            DEC SP
3B2B: 30 83         JR NC,0x3AB0
3B2D: 0A            LD A,(BC)
3B2E: 01 1C 1D      LD BC,0x1D1C
3B31: 24            INC H
3B32: 0B            DEC BC
3B33: 18 17         JR 0x3B4C
3B35: 1E 1C         LD E,0x1C
3B37: 24            INC H
3B38: B0            OR B
3B39: 81            ADD A,C
3B3A: 08            EX AF,AF'
3B3B: 00            NOP
3B3C: 00            NOP
3B3D: 00            NOP
3B3E: 00            NOP
3B3F: 24            INC H
3B40: 19            ADD HL,DE
3B41: 1D            DEC E
3B42: 1C            INC E
3B43: 32 83 09      LD (0x0983),A
3B46: 02            LD (BC),A
3B47: 17            RLA
3B48: 0D            DEC C
3B49: 24            INC H
3B4A: 0B            DEC BC
3B4B: 18 17         JR 0x3B64
3B4D: 1E 1C         LD E,0x1C
3B4F: B2            OR D
3B50: 81            ADD A,C
3B51: 08            EX AF,AF'
3B52: 00            NOP
3B53: 00            NOP
3B54: 00            NOP
3B55: 00            NOP
3B56: 24            INC H
3B57: 19            ADD HL,DE
3B58: 1D            DEC E
3B59: 1C            INC E
3B5A: 34            INC (HL)
3B5B: 83            ADD A,E
3B5C: 09            ADD HL,BC
3B5D: 0A            LD A,(BC)
3B5E: 17            RLA
3B5F: 0D            DEC C
3B60: 24            INC H
3B61: 0E 1F         LD C,0x1F
3B63: 0E 1B         LD C,0x1B
3B65: 22 B4 81      LD (0x81B4),HL
3B68: 08            EX AF,AF'
3B69: 00            NOP
3B6A: 00            NOP
3B6B: 00            NOP
3B6C: 00            NOP
3B6D: 24            INC H
3B6E: 19            ADD HL,DE
3B6F: 1D            DEC E
3B70: 1C            INC E
3B71: 30 83         JR NC,0x3AF6
3B73: 16 0B         LD D,0x0B
3B75: 18 17         JR 0x3B8E
3B77: 1E 1C         LD E,0x1C
3B79: 24            INC H
3B7A: 17            RLA
3B7B: 18 1D         JR 0x3B9A
3B7D: 11 12 17      LD DE,0x1712
3B80: 10 24         DJNZ 0x3BA6
3B82: 24            INC H
3B83: 24            INC H
3B84: 24            INC H
3B85: 24            INC H
3B86: 24            INC H
3B87: 24            INC H
3B88: 24            INC H
3B89: 24            INC H
3B8A: 24            INC H
3B8B: E2 82 07      JP PO,0x0782
3B8E: 1B            DEC DE
3B8F: 0A            LD A,(BC)
3B90: 16 24         LD D,0x24
3B92: 24            INC H
3B93: 18 14         JR 0x3BA9
3B95: E4 82 07      CALL PO,0x0782
3B98: 1B            DEC DE
3B99: 18 16         JR 0x3BB1
3B9B: 24            INC H
3B9C: 24            INC H
3B9D: 18 14         JR 0x3BB3
3B9F: FF            RST 0x38
3BA0: FF            RST 0x38
3BA1: FF            RST 0x38
3BA2: FF            RST 0x38
3BA3: FF            RST 0x38
3BA4: FF            RST 0x38
3BA5: FF            RST 0x38
3BA6: FF            RST 0x38
3BA7: FF            RST 0x38
3BA8: FF            RST 0x38
3BA9: FF            RST 0x38
3BAA: FF            RST 0x38
3BAB: FF            RST 0x38
3BAC: FF            RST 0x38
3BAD: FF            RST 0x38
3BAE: FF            RST 0x38
3BAF: FF            RST 0x38
3BB0: FF            RST 0x38
3BB1: FF            RST 0x38
3BB2: FF            RST 0x38
3BB3: FF            RST 0x38
3BB4: FF            RST 0x38
3BB5: FF            RST 0x38
3BB6: FF            RST 0x38
3BB7: FF            RST 0x38
3BB8: FF            RST 0x38
3BB9: FF            RST 0x38
3BBA: FF            RST 0x38
3BBB: FF            RST 0x38
3BBC: FF            RST 0x38
3BBD: FF            RST 0x38
3BBE: FF            RST 0x38
3BBF: FF            RST 0x38
3BC0: FF            RST 0x38
3BC1: FF            RST 0x38
3BC2: FF            RST 0x38
3BC3: FF            RST 0x38
3BC4: FF            RST 0x38
3BC5: FF            RST 0x38
3BC6: FF            RST 0x38
3BC7: FF            RST 0x38
3BC8: FF            RST 0x38
3BC9: FF            RST 0x38
3BCA: FF            RST 0x38
3BCB: FF            RST 0x38
3BCC: FF            RST 0x38
3BCD: FF            RST 0x38
3BCE: FF            RST 0x38
3BCF: FF            RST 0x38
3BD0: FF            RST 0x38
3BD1: FF            RST 0x38
3BD2: FF            RST 0x38
3BD3: FF            RST 0x38
3BD4: FF            RST 0x38
3BD5: FF            RST 0x38
3BD6: FF            RST 0x38
3BD7: FF            RST 0x38
3BD8: FF            RST 0x38
3BD9: FF            RST 0x38
3BDA: FF            RST 0x38
3BDB: FF            RST 0x38
3BDC: FF            RST 0x38
3BDD: FF            RST 0x38
3BDE: FF            RST 0x38
3BDF: FF            RST 0x38
3BE0: FF            RST 0x38
3BE1: FF            RST 0x38
3BE2: FF            RST 0x38
3BE3: FF            RST 0x38
3BE4: FF            RST 0x38
3BE5: FF            RST 0x38
3BE6: FF            RST 0x38
3BE7: FF            RST 0x38
3BE8: FF            RST 0x38
3BE9: FF            RST 0x38
3BEA: FF            RST 0x38
3BEB: FF            RST 0x38
3BEC: FF            RST 0x38
3BED: FF            RST 0x38
3BEE: FF            RST 0x38
3BEF: FF            RST 0x38
3BF0: FF            RST 0x38
3BF1: FF            RST 0x38
3BF2: FF            RST 0x38
3BF3: FF            RST 0x38
3BF4: FF            RST 0x38
3BF5: FF            RST 0x38
3BF6: FF            RST 0x38
3BF7: FF            RST 0x38
3BF8: FF            RST 0x38
3BF9: FF            RST 0x38
3BFA: FF            RST 0x38
3BFB: FF            RST 0x38
3BFC: FF            RST 0x38
3BFD: FF            RST 0x38
3BFE: FF            RST 0x38
3BFF: FF            RST 0x38
3C00: FF            RST 0x38
3C01: FF            RST 0x38
3C02: FF            RST 0x38
3C03: FF            RST 0x38
3C04: FF            RST 0x38
3C05: FF            RST 0x38
3C06: FF            RST 0x38
3C07: FF            RST 0x38
3C08: FF            RST 0x38
3C09: FF            RST 0x38
3C0A: FF            RST 0x38
3C0B: FF            RST 0x38
3C0C: FF            RST 0x38
3C0D: FF            RST 0x38
3C0E: FF            RST 0x38
3C0F: FF            RST 0x38
3C10: FF            RST 0x38
3C11: FF            RST 0x38
3C12: FF            RST 0x38
3C13: FF            RST 0x38
3C14: FF            RST 0x38
3C15: FF            RST 0x38
3C16: FF            RST 0x38
3C17: FF            RST 0x38
3C18: FF            RST 0x38
3C19: FF            RST 0x38
3C1A: FF            RST 0x38
3C1B: FF            RST 0x38
3C1C: FF            RST 0x38
3C1D: FF            RST 0x38
3C1E: FF            RST 0x38
3C1F: FF            RST 0x38
3C20: FF            RST 0x38
3C21: FF            RST 0x38
3C22: FF            RST 0x38
3C23: FF            RST 0x38
3C24: FF            RST 0x38
3C25: FF            RST 0x38
3C26: FF            RST 0x38
3C27: FF            RST 0x38
3C28: FF            RST 0x38
3C29: FF            RST 0x38
3C2A: FF            RST 0x38
3C2B: FF            RST 0x38
3C2C: FF            RST 0x38
3C2D: FF            RST 0x38
3C2E: FF            RST 0x38
3C2F: FF            RST 0x38
3C30: FF            RST 0x38
3C31: FF            RST 0x38
3C32: FF            RST 0x38
3C33: FF            RST 0x38
3C34: FF            RST 0x38
3C35: FF            RST 0x38
3C36: FF            RST 0x38
3C37: FF            RST 0x38
3C38: FF            RST 0x38
3C39: FF            RST 0x38
3C3A: FF            RST 0x38
3C3B: FF            RST 0x38
3C3C: FF            RST 0x38
3C3D: FF            RST 0x38
3C3E: FF            RST 0x38
3C3F: FF            RST 0x38
3C40: FF            RST 0x38
3C41: FF            RST 0x38
3C42: FF            RST 0x38
3C43: FF            RST 0x38
3C44: FF            RST 0x38
3C45: FF            RST 0x38
3C46: FF            RST 0x38
3C47: FF            RST 0x38
3C48: FF            RST 0x38
3C49: FF            RST 0x38
3C4A: FF            RST 0x38
3C4B: FF            RST 0x38
3C4C: FF            RST 0x38
3C4D: FF            RST 0x38
3C4E: FF            RST 0x38
3C4F: FF            RST 0x38
3C50: FF            RST 0x38
3C51: FF            RST 0x38
3C52: FF            RST 0x38
3C53: FF            RST 0x38
3C54: FF            RST 0x38
3C55: FF            RST 0x38
3C56: FF            RST 0x38
3C57: FF            RST 0x38
3C58: FF            RST 0x38
3C59: FF            RST 0x38
3C5A: FF            RST 0x38
3C5B: FF            RST 0x38
3C5C: FF            RST 0x38
3C5D: FF            RST 0x38
3C5E: FF            RST 0x38
3C5F: FF            RST 0x38
3C60: FF            RST 0x38
3C61: FF            RST 0x38
3C62: FF            RST 0x38
3C63: FF            RST 0x38
3C64: FF            RST 0x38
3C65: FF            RST 0x38
3C66: FF            RST 0x38
3C67: FF            RST 0x38
3C68: FF            RST 0x38
3C69: FF            RST 0x38
3C6A: FF            RST 0x38
3C6B: FF            RST 0x38
3C6C: FF            RST 0x38
3C6D: FF            RST 0x38
3C6E: FF            RST 0x38
3C6F: FF            RST 0x38
3C70: FF            RST 0x38
3C71: FF            RST 0x38
3C72: FF            RST 0x38
3C73: FF            RST 0x38
3C74: FF            RST 0x38
3C75: FF            RST 0x38
3C76: FF            RST 0x38
3C77: FF            RST 0x38
3C78: FF            RST 0x38
3C79: FF            RST 0x38
3C7A: FF            RST 0x38
3C7B: FF            RST 0x38
3C7C: FF            RST 0x38
3C7D: FF            RST 0x38
3C7E: FF            RST 0x38
3C7F: FF            RST 0x38
3C80: FF            RST 0x38
3C81: FF            RST 0x38
3C82: FF            RST 0x38
3C83: FF            RST 0x38
3C84: FF            RST 0x38
3C85: FF            RST 0x38
3C86: FF            RST 0x38
3C87: FF            RST 0x38
3C88: FF            RST 0x38
3C89: FF            RST 0x38
3C8A: FF            RST 0x38
3C8B: FF            RST 0x38
3C8C: FF            RST 0x38
3C8D: FF            RST 0x38
3C8E: FF            RST 0x38
3C8F: FF            RST 0x38
3C90: FF            RST 0x38
3C91: FF            RST 0x38
3C92: FF            RST 0x38
3C93: FF            RST 0x38
3C94: FF            RST 0x38
3C95: FF            RST 0x38
3C96: FF            RST 0x38
3C97: FF            RST 0x38
3C98: FF            RST 0x38
3C99: FF            RST 0x38
3C9A: FF            RST 0x38
3C9B: FF            RST 0x38
3C9C: FF            RST 0x38
3C9D: FF            RST 0x38
3C9E: FF            RST 0x38
3C9F: FF            RST 0x38
3CA0: FF            RST 0x38
3CA1: FF            RST 0x38
3CA2: FF            RST 0x38
3CA3: FF            RST 0x38
3CA4: FF            RST 0x38
3CA5: FF            RST 0x38
3CA6: FF            RST 0x38
3CA7: FF            RST 0x38
3CA8: FF            RST 0x38
3CA9: FF            RST 0x38
3CAA: FF            RST 0x38
3CAB: FF            RST 0x38
3CAC: FF            RST 0x38
3CAD: FF            RST 0x38
3CAE: FF            RST 0x38
3CAF: FF            RST 0x38
3CB0: FF            RST 0x38
3CB1: FF            RST 0x38
3CB2: FF            RST 0x38
3CB3: FF            RST 0x38
3CB4: FF            RST 0x38
3CB5: FF            RST 0x38
3CB6: FF            RST 0x38
3CB7: FF            RST 0x38
3CB8: FF            RST 0x38
3CB9: FF            RST 0x38
3CBA: FF            RST 0x38
3CBB: FF            RST 0x38
3CBC: FF            RST 0x38
3CBD: FF            RST 0x38
3CBE: FF            RST 0x38
3CBF: FF            RST 0x38
3CC0: FF            RST 0x38
3CC1: FF            RST 0x38
3CC2: FF            RST 0x38
3CC3: FF            RST 0x38
3CC4: FF            RST 0x38
3CC5: FF            RST 0x38
3CC6: FF            RST 0x38
3CC7: FF            RST 0x38
3CC8: FF            RST 0x38
3CC9: FF            RST 0x38
3CCA: FF            RST 0x38
3CCB: FF            RST 0x38
3CCC: FF            RST 0x38
3CCD: FF            RST 0x38
3CCE: FF            RST 0x38
3CCF: FF            RST 0x38
3CD0: FF            RST 0x38
3CD1: FF            RST 0x38
3CD2: FF            RST 0x38
3CD3: FF            RST 0x38
3CD4: FF            RST 0x38
3CD5: FF            RST 0x38
3CD6: FF            RST 0x38
3CD7: FF            RST 0x38
3CD8: FF            RST 0x38
3CD9: FF            RST 0x38
3CDA: FF            RST 0x38
3CDB: FF            RST 0x38
3CDC: FF            RST 0x38
3CDD: FF            RST 0x38
3CDE: FF            RST 0x38
3CDF: FF            RST 0x38
3CE0: FF            RST 0x38
3CE1: FF            RST 0x38
3CE2: FF            RST 0x38
3CE3: FF            RST 0x38
3CE4: FF            RST 0x38
3CE5: FF            RST 0x38
3CE6: FF            RST 0x38
3CE7: FF            RST 0x38
3CE8: FF            RST 0x38
3CE9: FF            RST 0x38
3CEA: FF            RST 0x38
3CEB: FF            RST 0x38
3CEC: FF            RST 0x38
3CED: FF            RST 0x38
3CEE: FF            RST 0x38
3CEF: FF            RST 0x38
3CF0: FF            RST 0x38
3CF1: FF            RST 0x38
3CF2: FF            RST 0x38
3CF3: FF            RST 0x38
3CF4: FF            RST 0x38
3CF5: FF            RST 0x38
3CF6: FF            RST 0x38
3CF7: FF            RST 0x38
3CF8: FF            RST 0x38
3CF9: FF            RST 0x38
3CFA: FF            RST 0x38
3CFB: FF            RST 0x38
3CFC: FF            RST 0x38
3CFD: FF            RST 0x38
3CFE: FF            RST 0x38
3CFF: FF            RST 0x38
3D00: FF            RST 0x38
3D01: FF            RST 0x38
3D02: FF            RST 0x38
3D03: FF            RST 0x38
3D04: FF            RST 0x38
3D05: FF            RST 0x38
3D06: FF            RST 0x38
3D07: FF            RST 0x38
3D08: FF            RST 0x38
3D09: FF            RST 0x38
3D0A: FF            RST 0x38
3D0B: FF            RST 0x38
3D0C: FF            RST 0x38
3D0D: FF            RST 0x38
3D0E: FF            RST 0x38
3D0F: FF            RST 0x38
3D10: FF            RST 0x38
3D11: FF            RST 0x38
3D12: FF            RST 0x38
3D13: FF            RST 0x38
3D14: FF            RST 0x38
3D15: FF            RST 0x38
3D16: FF            RST 0x38
3D17: FF            RST 0x38
3D18: FF            RST 0x38
3D19: FF            RST 0x38
3D1A: FF            RST 0x38
3D1B: FF            RST 0x38
3D1C: FF            RST 0x38
3D1D: FF            RST 0x38
3D1E: FF            RST 0x38
3D1F: FF            RST 0x38
3D20: FF            RST 0x38
3D21: FF            RST 0x38
3D22: FF            RST 0x38
3D23: FF            RST 0x38
3D24: FF            RST 0x38
3D25: FF            RST 0x38
3D26: FF            RST 0x38
3D27: FF            RST 0x38
3D28: FF            RST 0x38
3D29: FF            RST 0x38
3D2A: FF            RST 0x38
3D2B: FF            RST 0x38
3D2C: FF            RST 0x38
3D2D: FF            RST 0x38
3D2E: FF            RST 0x38
3D2F: FF            RST 0x38
3D30: FF            RST 0x38
3D31: FF            RST 0x38
3D32: FF            RST 0x38
3D33: FF            RST 0x38
3D34: FF            RST 0x38
3D35: FF            RST 0x38
3D36: FF            RST 0x38
3D37: FF            RST 0x38
3D38: FF            RST 0x38
3D39: FF            RST 0x38
3D3A: FF            RST 0x38
3D3B: FF            RST 0x38
3D3C: FF            RST 0x38
3D3D: FF            RST 0x38
3D3E: FF            RST 0x38
3D3F: FF            RST 0x38
3D40: FF            RST 0x38
3D41: FF            RST 0x38
3D42: FF            RST 0x38
3D43: FF            RST 0x38
3D44: FF            RST 0x38
3D45: FF            RST 0x38
3D46: FF            RST 0x38
3D47: FF            RST 0x38
3D48: FF            RST 0x38
3D49: FF            RST 0x38
3D4A: FF            RST 0x38
3D4B: FF            RST 0x38
3D4C: FF            RST 0x38
3D4D: FF            RST 0x38
3D4E: FF            RST 0x38
3D4F: FF            RST 0x38
3D50: FF            RST 0x38
3D51: FF            RST 0x38
3D52: FF            RST 0x38
3D53: FF            RST 0x38
3D54: FF            RST 0x38
3D55: FF            RST 0x38
3D56: FF            RST 0x38
3D57: FF            RST 0x38
3D58: FF            RST 0x38
3D59: FF            RST 0x38
3D5A: FF            RST 0x38
3D5B: FF            RST 0x38
3D5C: FF            RST 0x38
3D5D: FF            RST 0x38
3D5E: FF            RST 0x38
3D5F: FF            RST 0x38
3D60: FF            RST 0x38
3D61: FF            RST 0x38
3D62: FF            RST 0x38
3D63: FF            RST 0x38
3D64: FF            RST 0x38
3D65: FF            RST 0x38
3D66: FF            RST 0x38
3D67: FF            RST 0x38
3D68: FF            RST 0x38
3D69: FF            RST 0x38
3D6A: FF            RST 0x38
3D6B: FF            RST 0x38
3D6C: FF            RST 0x38
3D6D: FF            RST 0x38
3D6E: FF            RST 0x38
3D6F: FF            RST 0x38
3D70: FF            RST 0x38
3D71: FF            RST 0x38
3D72: FF            RST 0x38
3D73: FF            RST 0x38
3D74: FF            RST 0x38
3D75: FF            RST 0x38
3D76: FF            RST 0x38
3D77: FF            RST 0x38
3D78: FF            RST 0x38
3D79: FF            RST 0x38
3D7A: FF            RST 0x38
3D7B: FF            RST 0x38
3D7C: FF            RST 0x38
3D7D: FF            RST 0x38
3D7E: FF            RST 0x38
3D7F: FF            RST 0x38
3D80: FF            RST 0x38
3D81: FF            RST 0x38
3D82: FF            RST 0x38
3D83: FF            RST 0x38
3D84: FF            RST 0x38
3D85: FF            RST 0x38
3D86: FF            RST 0x38
3D87: FF            RST 0x38
3D88: FF            RST 0x38
3D89: FF            RST 0x38
3D8A: FF            RST 0x38
3D8B: FF            RST 0x38
3D8C: FF            RST 0x38
3D8D: FF            RST 0x38
3D8E: FF            RST 0x38
3D8F: FF            RST 0x38
3D90: FF            RST 0x38
3D91: FF            RST 0x38
3D92: FF            RST 0x38
3D93: FF            RST 0x38
3D94: FF            RST 0x38
3D95: FF            RST 0x38
3D96: FF            RST 0x38
3D97: FF            RST 0x38
3D98: FF            RST 0x38
3D99: FF            RST 0x38
3D9A: FF            RST 0x38
3D9B: FF            RST 0x38
3D9C: FF            RST 0x38
3D9D: FF            RST 0x38
3D9E: FF            RST 0x38
3D9F: FF            RST 0x38
3DA0: FF            RST 0x38
3DA1: FF            RST 0x38
3DA2: FF            RST 0x38
3DA3: FF            RST 0x38
3DA4: FF            RST 0x38
3DA5: FF            RST 0x38
3DA6: FF            RST 0x38
3DA7: FF            RST 0x38
3DA8: FF            RST 0x38
3DA9: FF            RST 0x38
3DAA: FF            RST 0x38
3DAB: FF            RST 0x38
3DAC: FF            RST 0x38
3DAD: FF            RST 0x38
3DAE: FF            RST 0x38
3DAF: FF            RST 0x38
3DB0: FF            RST 0x38
3DB1: FF            RST 0x38
3DB2: FF            RST 0x38
3DB3: FF            RST 0x38
3DB4: FF            RST 0x38
3DB5: FF            RST 0x38
3DB6: FF            RST 0x38
3DB7: FF            RST 0x38
3DB8: FF            RST 0x38
3DB9: FF            RST 0x38
3DBA: FF            RST 0x38
3DBB: FF            RST 0x38
3DBC: FF            RST 0x38
3DBD: FF            RST 0x38
3DBE: FF            RST 0x38
3DBF: FF            RST 0x38
3DC0: FF            RST 0x38
3DC1: FF            RST 0x38
3DC2: FF            RST 0x38
3DC3: FF            RST 0x38
3DC4: FF            RST 0x38
3DC5: FF            RST 0x38
3DC6: FF            RST 0x38
3DC7: FF            RST 0x38
3DC8: FF            RST 0x38
3DC9: FF            RST 0x38
3DCA: FF            RST 0x38
3DCB: FF            RST 0x38
3DCC: FF            RST 0x38
3DCD: FF            RST 0x38
3DCE: FF            RST 0x38
3DCF: FF            RST 0x38
3DD0: FF            RST 0x38
3DD1: FF            RST 0x38
3DD2: FF            RST 0x38
3DD3: FF            RST 0x38
3DD4: FF            RST 0x38
3DD5: FF            RST 0x38
3DD6: FF            RST 0x38
3DD7: FF            RST 0x38
3DD8: FF            RST 0x38
3DD9: FF            RST 0x38
3DDA: FF            RST 0x38
3DDB: FF            RST 0x38
3DDC: FF            RST 0x38
3DDD: FF            RST 0x38
3DDE: FF            RST 0x38
3DDF: FF            RST 0x38
3DE0: FF            RST 0x38
3DE1: FF            RST 0x38
3DE2: FF            RST 0x38
3DE3: FF            RST 0x38
3DE4: FF            RST 0x38
3DE5: FF            RST 0x38
3DE6: FF            RST 0x38
3DE7: FF            RST 0x38
3DE8: FF            RST 0x38
3DE9: FF            RST 0x38
3DEA: FF            RST 0x38
3DEB: FF            RST 0x38
3DEC: FF            RST 0x38
3DED: FF            RST 0x38
3DEE: FF            RST 0x38
3DEF: FF            RST 0x38
3DF0: FF            RST 0x38
3DF1: FF            RST 0x38
3DF2: FF            RST 0x38
3DF3: FF            RST 0x38
3DF4: FF            RST 0x38
3DF5: FF            RST 0x38
3DF6: FF            RST 0x38
3DF7: FF            RST 0x38
3DF8: FF            RST 0x38
3DF9: FF            RST 0x38
3DFA: FF            RST 0x38
3DFB: FF            RST 0x38
3DFC: FF            RST 0x38
3DFD: FF            RST 0x38
3DFE: FF            RST 0x38
3DFF: FF            RST 0x38
3E00: FF            RST 0x38
3E01: FF            RST 0x38
3E02: FF            RST 0x38
3E03: FF            RST 0x38
3E04: FF            RST 0x38
3E05: FF            RST 0x38
3E06: FF            RST 0x38
3E07: FF            RST 0x38
3E08: FF            RST 0x38
3E09: FF            RST 0x38
3E0A: FF            RST 0x38
3E0B: FF            RST 0x38
3E0C: FF            RST 0x38
3E0D: FF            RST 0x38
3E0E: FF            RST 0x38
3E0F: FF            RST 0x38
3E10: FF            RST 0x38
3E11: FF            RST 0x38
3E12: FF            RST 0x38
3E13: FF            RST 0x38
3E14: FF            RST 0x38
3E15: FF            RST 0x38
3E16: FF            RST 0x38
3E17: FF            RST 0x38
3E18: FF            RST 0x38
3E19: FF            RST 0x38
3E1A: FF            RST 0x38
3E1B: FF            RST 0x38
3E1C: FF            RST 0x38
3E1D: FF            RST 0x38
3E1E: FF            RST 0x38
3E1F: FF            RST 0x38
3E20: FF            RST 0x38
3E21: FF            RST 0x38
3E22: FF            RST 0x38
3E23: FF            RST 0x38
3E24: FF            RST 0x38
3E25: FF            RST 0x38
3E26: FF            RST 0x38
3E27: FF            RST 0x38
3E28: FF            RST 0x38
3E29: FF            RST 0x38
3E2A: FF            RST 0x38
3E2B: FF            RST 0x38
3E2C: FF            RST 0x38
3E2D: FF            RST 0x38
3E2E: FF            RST 0x38
3E2F: FF            RST 0x38
3E30: FF            RST 0x38
3E31: FF            RST 0x38
3E32: FF            RST 0x38
3E33: FF            RST 0x38
3E34: FF            RST 0x38
3E35: FF            RST 0x38
3E36: FF            RST 0x38
3E37: FF            RST 0x38
3E38: FF            RST 0x38
3E39: FF            RST 0x38
3E3A: FF            RST 0x38
3E3B: FF            RST 0x38
3E3C: FF            RST 0x38
3E3D: FF            RST 0x38
3E3E: FF            RST 0x38
3E3F: FF            RST 0x38
3E40: FF            RST 0x38
3E41: FF            RST 0x38
3E42: FF            RST 0x38
3E43: FF            RST 0x38
3E44: FF            RST 0x38
3E45: FF            RST 0x38
3E46: FF            RST 0x38
3E47: FF            RST 0x38
3E48: FF            RST 0x38
3E49: FF            RST 0x38
3E4A: FF            RST 0x38
3E4B: FF            RST 0x38
3E4C: FF            RST 0x38
3E4D: FF            RST 0x38
3E4E: FF            RST 0x38
3E4F: FF            RST 0x38
3E50: FF            RST 0x38
3E51: FF            RST 0x38
3E52: FF            RST 0x38
3E53: FF            RST 0x38
3E54: FF            RST 0x38
3E55: FF            RST 0x38
3E56: FF            RST 0x38
3E57: FF            RST 0x38
3E58: FF            RST 0x38
3E59: FF            RST 0x38
3E5A: FF            RST 0x38
3E5B: FF            RST 0x38
3E5C: FF            RST 0x38
3E5D: FF            RST 0x38
3E5E: FF            RST 0x38
3E5F: FF            RST 0x38
3E60: FF            RST 0x38
3E61: FF            RST 0x38
3E62: FF            RST 0x38
3E63: FF            RST 0x38
3E64: FF            RST 0x38
3E65: FF            RST 0x38
3E66: FF            RST 0x38
3E67: FF            RST 0x38
3E68: FF            RST 0x38
3E69: FF            RST 0x38
3E6A: FF            RST 0x38
3E6B: FF            RST 0x38
3E6C: FF            RST 0x38
3E6D: FF            RST 0x38
3E6E: FF            RST 0x38
3E6F: FF            RST 0x38
3E70: FF            RST 0x38
3E71: FF            RST 0x38
3E72: FF            RST 0x38
3E73: FF            RST 0x38
3E74: FF            RST 0x38
3E75: FF            RST 0x38
3E76: FF            RST 0x38
3E77: FF            RST 0x38
3E78: FF            RST 0x38
3E79: FF            RST 0x38
3E7A: FF            RST 0x38
3E7B: FF            RST 0x38
3E7C: FF            RST 0x38
3E7D: FF            RST 0x38
3E7E: FF            RST 0x38
3E7F: FF            RST 0x38
3E80: FF            RST 0x38
3E81: FF            RST 0x38
3E82: FF            RST 0x38
3E83: FF            RST 0x38
3E84: FF            RST 0x38
3E85: FF            RST 0x38
3E86: FF            RST 0x38
3E87: FF            RST 0x38
3E88: FF            RST 0x38
3E89: FF            RST 0x38
3E8A: FF            RST 0x38
3E8B: FF            RST 0x38
3E8C: FF            RST 0x38
3E8D: FF            RST 0x38
3E8E: FF            RST 0x38
3E8F: FF            RST 0x38
3E90: FF            RST 0x38
3E91: FF            RST 0x38
3E92: FF            RST 0x38
3E93: FF            RST 0x38
3E94: FF            RST 0x38
3E95: FF            RST 0x38
3E96: FF            RST 0x38
3E97: FF            RST 0x38
3E98: FF            RST 0x38
3E99: FF            RST 0x38
3E9A: FF            RST 0x38
3E9B: FF            RST 0x38
3E9C: FF            RST 0x38
3E9D: FF            RST 0x38
3E9E: FF            RST 0x38
3E9F: FF            RST 0x38
3EA0: FF            RST 0x38
3EA1: FF            RST 0x38
3EA2: FF            RST 0x38
3EA3: FF            RST 0x38
3EA4: FF            RST 0x38
3EA5: FF            RST 0x38
3EA6: FF            RST 0x38
3EA7: FF            RST 0x38
3EA8: FF            RST 0x38
3EA9: FF            RST 0x38
3EAA: FF            RST 0x38
3EAB: FF            RST 0x38
3EAC: FF            RST 0x38
3EAD: FF            RST 0x38
3EAE: FF            RST 0x38
3EAF: FF            RST 0x38
3EB0: FF            RST 0x38
3EB1: FF            RST 0x38
3EB2: FF            RST 0x38
3EB3: FF            RST 0x38
3EB4: FF            RST 0x38
3EB5: FF            RST 0x38
3EB6: FF            RST 0x38
3EB7: FF            RST 0x38
3EB8: FF            RST 0x38
3EB9: FF            RST 0x38
3EBA: FF            RST 0x38
3EBB: FF            RST 0x38
3EBC: FF            RST 0x38
3EBD: FF            RST 0x38
3EBE: FF            RST 0x38
3EBF: FF            RST 0x38
3EC0: FF            RST 0x38
3EC1: FF            RST 0x38
3EC2: FF            RST 0x38
3EC3: FF            RST 0x38
3EC4: FF            RST 0x38
3EC5: FF            RST 0x38
3EC6: FF            RST 0x38
3EC7: FF            RST 0x38
3EC8: FF            RST 0x38
3EC9: FF            RST 0x38
3ECA: FF            RST 0x38
3ECB: FF            RST 0x38
3ECC: FF            RST 0x38
3ECD: FF            RST 0x38
3ECE: FF            RST 0x38
3ECF: FF            RST 0x38
3ED0: FF            RST 0x38
3ED1: FF            RST 0x38
3ED2: FF            RST 0x38
3ED3: FF            RST 0x38
3ED4: FF            RST 0x38
3ED5: FF            RST 0x38
3ED6: FF            RST 0x38
3ED7: FF            RST 0x38
3ED8: FF            RST 0x38
3ED9: FF            RST 0x38
3EDA: FF            RST 0x38
3EDB: FF            RST 0x38
3EDC: FF            RST 0x38
3EDD: FF            RST 0x38
3EDE: FF            RST 0x38
3EDF: FF            RST 0x38
3EE0: FF            RST 0x38
3EE1: FF            RST 0x38
3EE2: FF            RST 0x38
3EE3: FF            RST 0x38
3EE4: FF            RST 0x38
3EE5: FF            RST 0x38
3EE6: FF            RST 0x38
3EE7: FF            RST 0x38
3EE8: FF            RST 0x38
3EE9: FF            RST 0x38
3EEA: FF            RST 0x38
3EEB: FF            RST 0x38
3EEC: FF            RST 0x38
3EED: FF            RST 0x38
3EEE: FF            RST 0x38
3EEF: FF            RST 0x38
3EF0: FF            RST 0x38
3EF1: FF            RST 0x38
3EF2: FF            RST 0x38
3EF3: FF            RST 0x38
3EF4: FF            RST 0x38
3EF5: FF            RST 0x38
3EF6: FF            RST 0x38
3EF7: FF            RST 0x38
3EF8: FF            RST 0x38
3EF9: FF            RST 0x38
3EFA: FF            RST 0x38
3EFB: FF            RST 0x38
3EFC: FF            RST 0x38
3EFD: FF            RST 0x38
3EFE: FF            RST 0x38
3EFF: FF            RST 0x38
3F00: FF            RST 0x38
3F01: FF            RST 0x38
3F02: FF            RST 0x38
3F03: FF            RST 0x38
3F04: FF            RST 0x38
3F05: FF            RST 0x38
3F06: FF            RST 0x38
3F07: FF            RST 0x38
3F08: FF            RST 0x38
3F09: FF            RST 0x38
3F0A: FF            RST 0x38
3F0B: FF            RST 0x38
3F0C: FF            RST 0x38
3F0D: FF            RST 0x38
3F0E: FF            RST 0x38
3F0F: FF            RST 0x38
3F10: FF            RST 0x38
3F11: FF            RST 0x38
3F12: FF            RST 0x38
3F13: FF            RST 0x38
3F14: FF            RST 0x38
3F15: FF            RST 0x38
3F16: FF            RST 0x38
3F17: FF            RST 0x38
3F18: FF            RST 0x38
3F19: FF            RST 0x38
3F1A: FF            RST 0x38
3F1B: FF            RST 0x38
3F1C: FF            RST 0x38
3F1D: FF            RST 0x38
3F1E: FF            RST 0x38
3F1F: FF            RST 0x38
3F20: FF            RST 0x38
3F21: FF            RST 0x38
3F22: FF            RST 0x38
3F23: FF            RST 0x38
3F24: FF            RST 0x38
3F25: FF            RST 0x38
3F26: FF            RST 0x38
3F27: FF            RST 0x38
3F28: FF            RST 0x38
3F29: FF            RST 0x38
3F2A: FF            RST 0x38
3F2B: FF            RST 0x38
3F2C: FF            RST 0x38
3F2D: FF            RST 0x38
3F2E: FF            RST 0x38
3F2F: FF            RST 0x38
3F30: FF            RST 0x38
3F31: FF            RST 0x38
3F32: FF            RST 0x38
3F33: FF            RST 0x38
3F34: FF            RST 0x38
3F35: FF            RST 0x38
3F36: FF            RST 0x38
3F37: FF            RST 0x38
3F38: FF            RST 0x38
3F39: FF            RST 0x38
3F3A: FF            RST 0x38
3F3B: FF            RST 0x38
3F3C: FF            RST 0x38
3F3D: FF            RST 0x38
3F3E: FF            RST 0x38
3F3F: FF            RST 0x38
3F40: FF            RST 0x38
3F41: FF            RST 0x38
3F42: FF            RST 0x38
3F43: FF            RST 0x38
3F44: FF            RST 0x38
3F45: FF            RST 0x38
3F46: FF            RST 0x38
3F47: FF            RST 0x38
3F48: FF            RST 0x38
3F49: FF            RST 0x38
3F4A: FF            RST 0x38
3F4B: FF            RST 0x38
3F4C: FF            RST 0x38
3F4D: FF            RST 0x38
3F4E: FF            RST 0x38
3F4F: FF            RST 0x38
3F50: FF            RST 0x38
3F51: FF            RST 0x38
3F52: FF            RST 0x38
3F53: FF            RST 0x38
3F54: FF            RST 0x38
3F55: FF            RST 0x38
3F56: FF            RST 0x38
3F57: FF            RST 0x38
3F58: FF            RST 0x38
3F59: FF            RST 0x38
3F5A: FF            RST 0x38
3F5B: FF            RST 0x38
3F5C: FF            RST 0x38
3F5D: FF            RST 0x38
3F5E: FF            RST 0x38
3F5F: FF            RST 0x38
3F60: FF            RST 0x38
3F61: FF            RST 0x38
3F62: FF            RST 0x38
3F63: FF            RST 0x38
3F64: FF            RST 0x38
3F65: FF            RST 0x38
3F66: FF            RST 0x38
3F67: FF            RST 0x38
3F68: FF            RST 0x38
3F69: FF            RST 0x38
3F6A: FF            RST 0x38
3F6B: FF            RST 0x38
3F6C: FF            RST 0x38
3F6D: FF            RST 0x38
3F6E: FF            RST 0x38
3F6F: FF            RST 0x38
3F70: FF            RST 0x38
3F71: FF            RST 0x38
3F72: FF            RST 0x38
3F73: FF            RST 0x38
3F74: FF            RST 0x38
3F75: FF            RST 0x38
3F76: FF            RST 0x38
3F77: FF            RST 0x38
3F78: FF            RST 0x38
3F79: FF            RST 0x38
3F7A: FF            RST 0x38
3F7B: FF            RST 0x38
3F7C: FF            RST 0x38
3F7D: FF            RST 0x38
3F7E: FF            RST 0x38
3F7F: FF            RST 0x38
3F80: FF            RST 0x38
3F81: FF            RST 0x38
3F82: FF            RST 0x38
3F83: FF            RST 0x38
3F84: FF            RST 0x38
3F85: FF            RST 0x38
3F86: FF            RST 0x38
3F87: FF            RST 0x38
3F88: FF            RST 0x38
3F89: FF            RST 0x38
3F8A: FF            RST 0x38
3F8B: FF            RST 0x38
3F8C: FF            RST 0x38
3F8D: FF            RST 0x38
3F8E: FF            RST 0x38
3F8F: FF            RST 0x38
3F90: FF            RST 0x38
3F91: FF            RST 0x38
3F92: FF            RST 0x38
3F93: FF            RST 0x38
3F94: FF            RST 0x38
3F95: FF            RST 0x38
3F96: FF            RST 0x38
3F97: FF            RST 0x38
3F98: FF            RST 0x38
3F99: FF            RST 0x38
3F9A: FF            RST 0x38
3F9B: FF            RST 0x38
3F9C: FF            RST 0x38
3F9D: FF            RST 0x38
3F9E: FF            RST 0x38
3F9F: FF            RST 0x38
3FA0: FF            RST 0x38
3FA1: FF            RST 0x38
3FA2: FF            RST 0x38
3FA3: FF            RST 0x38
3FA4: FF            RST 0x38
3FA5: FF            RST 0x38
3FA6: FF            RST 0x38
3FA7: FF            RST 0x38
3FA8: FF            RST 0x38
3FA9: FF            RST 0x38
3FAA: FF            RST 0x38
3FAB: FF            RST 0x38
3FAC: FF            RST 0x38
3FAD: FF            RST 0x38
3FAE: FF            RST 0x38
3FAF: FF            RST 0x38
3FB0: FF            RST 0x38
3FB1: FF            RST 0x38
3FB2: FF            RST 0x38
3FB3: FF            RST 0x38
3FB4: FF            RST 0x38
3FB5: FF            RST 0x38
3FB6: FF            RST 0x38
3FB7: FF            RST 0x38
3FB8: FF            RST 0x38
3FB9: FF            RST 0x38
3FBA: FF            RST 0x38
3FBB: FF            RST 0x38
3FBC: FF            RST 0x38
3FBD: FF            RST 0x38
3FBE: FF            RST 0x38
3FBF: FF            RST 0x38
3FC0: FF            RST 0x38
3FC1: FF            RST 0x38
3FC2: FF            RST 0x38
3FC3: FF            RST 0x38
3FC4: FF            RST 0x38
3FC5: FF            RST 0x38
3FC6: FF            RST 0x38
3FC7: FF            RST 0x38
3FC8: FF            RST 0x38
3FC9: FF            RST 0x38
3FCA: FF            RST 0x38
3FCB: FF            RST 0x38
3FCC: FF            RST 0x38
3FCD: FF            RST 0x38
3FCE: FF            RST 0x38
3FCF: FF            RST 0x38
3FD0: FF            RST 0x38
3FD1: FF            RST 0x38
3FD2: FF            RST 0x38
3FD3: FF            RST 0x38
3FD4: FF            RST 0x38
3FD5: FF            RST 0x38
3FD6: FF            RST 0x38
3FD7: FF            RST 0x38
3FD8: FF            RST 0x38
3FD9: FF            RST 0x38
3FDA: FF            RST 0x38
3FDB: FF            RST 0x38
3FDC: FF            RST 0x38
3FDD: FF            RST 0x38
3FDE: FF            RST 0x38
3FDF: FF            RST 0x38
3FE0: FF            RST 0x38
3FE1: FF            RST 0x38
3FE2: FF            RST 0x38
3FE3: FF            RST 0x38
3FE4: FF            RST 0x38
3FE5: FF            RST 0x38
3FE6: FF            RST 0x38
3FE7: FF            RST 0x38
3FE8: FF            RST 0x38
3FE9: FF            RST 0x38
3FEA: FF            RST 0x38
3FEB: FF            RST 0x38
3FEC: FF            RST 0x38
3FED: FF            RST 0x38
3FEE: FF            RST 0x38
3FEF: FF            RST 0x38
3FF0: FF            RST 0x38
3FF1: FF            RST 0x38
3FF2: FF            RST 0x38
3FF3: FF            RST 0x38
3FF4: FF            RST 0x38
3FF5: FF            RST 0x38
3FF6: FF            RST 0x38
3FF7: FF            RST 0x38
3FF8: FF            RST 0x38
3FF9: FF            RST 0x38
3FFA: FF            RST 0x38
3FFB: FF            RST 0x38
3FFC: FF            RST 0x38
3FFD: FF            RST 0x38
3FFE: C9            RET
3FFF: D9            EXX
