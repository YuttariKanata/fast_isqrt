
bench_baseline:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 e1 4f 00 00 	mov    rax,QWORD PTR [rip+0x4fe1]        # 5ff0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 2a 4f 00 00    	push   QWORD PTR [rip+0x4f2a]        # 5f50 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 2c 4f 00 00    	jmp    QWORD PTR [rip+0x4f2c]        # 5f58 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   ax,ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   ax,ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   ax,ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   ax,ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   ax,ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   ax,ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   ax,ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   ax,ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <_init+0x20>
    10be:	66 90                	xchg   ax,ax
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   0x9
    10c9:	e9 52 ff ff ff       	jmp    1020 <_init+0x20>
    10ce:	66 90                	xchg   ax,ax
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   0xa
    10d9:	e9 42 ff ff ff       	jmp    1020 <_init+0x20>
    10de:	66 90                	xchg   ax,ax
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   0xb
    10e9:	e9 32 ff ff ff       	jmp    1020 <_init+0x20>
    10ee:	66 90                	xchg   ax,ax
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   0xc
    10f9:	e9 22 ff ff ff       	jmp    1020 <_init+0x20>
    10fe:	66 90                	xchg   ax,ax
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   0xd
    1109:	e9 12 ff ff ff       	jmp    1020 <_init+0x20>
    110e:	66 90                	xchg   ax,ax
    1110:	f3 0f 1e fa          	endbr64
    1114:	68 0e 00 00 00       	push   0xe
    1119:	e9 02 ff ff ff       	jmp    1020 <_init+0x20>
    111e:	66 90                	xchg   ax,ax

Disassembly of section .plt.got:

0000000000001120 <__cxa_finalize@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 ae 4e 00 00    	jmp    QWORD PTR [rip+0x4eae]        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    112a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001130 <_ZNSo3putEc@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 26 4e 00 00    	jmp    QWORD PTR [rip+0x4e26]        # 5f60 <_ZNSo3putEc@GLIBCXX_3.4>
    113a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001140 <_ZNSt6chrono3_V212system_clock3nowEv@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 1e 4e 00 00    	jmp    QWORD PTR [rip+0x4e1e]        # 5f68 <_ZNSt6chrono3_V212system_clock3nowEv@GLIBCXX_3.4.19>
    114a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001150 <memset@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 16 4e 00 00    	jmp    QWORD PTR [rip+0x4e16]        # 5f70 <memset@GLIBC_2.2.5>
    115a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001160 <_ZNSo9_M_insertImEERSoT_@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	ff 25 0e 4e 00 00    	jmp    QWORD PTR [rip+0x4e0e]        # 5f78 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
    116a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001170 <_ZNSo5flushEv@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	ff 25 06 4e 00 00    	jmp    QWORD PTR [rip+0x4e06]        # 5f80 <_ZNSo5flushEv@GLIBCXX_3.4>
    117a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001180 <sqrt@plt>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	ff 25 fe 4d 00 00    	jmp    QWORD PTR [rip+0x4dfe]        # 5f88 <sqrt@GLIBC_2.2.5>
    118a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001190 <_Znwm@plt>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	ff 25 f6 4d 00 00    	jmp    QWORD PTR [rip+0x4df6]        # 5f90 <_Znwm@GLIBCXX_3.4>
    119a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011a0 <_ZdlPvm@plt>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	ff 25 ee 4d 00 00    	jmp    QWORD PTR [rip+0x4dee]        # 5f98 <_ZdlPvm@CXXABI_1.3.9>
    11aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011b0 <__stack_chk_fail@plt>:
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	ff 25 e6 4d 00 00    	jmp    QWORD PTR [rip+0x4de6]        # 5fa0 <__stack_chk_fail@GLIBC_2.4>
    11ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	ff 25 de 4d 00 00    	jmp    QWORD PTR [rip+0x4dde]        # 5fa8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
    11ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	ff 25 d6 4d 00 00    	jmp    QWORD PTR [rip+0x4dd6]        # 5fb0 <_ZNKSt5ctypeIcE13_M_widen_initEv@GLIBCXX_3.4.11>
    11da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011e0 <_ZSt16__throw_bad_castv@plt>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	ff 25 ce 4d 00 00    	jmp    QWORD PTR [rip+0x4dce]        # 5fb8 <_ZSt16__throw_bad_castv@GLIBCXX_3.4>
    11ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011f0 <_ZNSo9_M_insertIdEERSoT_@plt>:
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	ff 25 c6 4d 00 00    	jmp    QWORD PTR [rip+0x4dc6]        # 5fc0 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
    11fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001200 <_ZNSolsEi@plt>:
    1200:	f3 0f 1e fa          	endbr64
    1204:	ff 25 be 4d 00 00    	jmp    QWORD PTR [rip+0x4dbe]        # 5fc8 <_ZNSolsEi@GLIBCXX_3.4>
    120a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001210 <_Unwind_Resume@plt>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	ff 25 b6 4d 00 00    	jmp    QWORD PTR [rip+0x4db6]        # 5fd0 <_Unwind_Resume@GCC_3.0>
    121a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001220 <_ZN10fast_isqrtL15correct_isqrt64Em>:
    1220:	48 8d 47 ff          	lea    rax,[rdi-0x1]
    1224:	c3                   	ret

0000000000001225 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>:
    1225:	48 8d 56 01          	lea    rdx,[rsi+0x1]
    1229:	48 8d 47 ff          	lea    rax,[rdi-0x1]
    122d:	48 01 ff             	add    rdi,rdi
    1230:	48 29 fa             	sub    rdx,rdi
    1233:	c3                   	ret

0000000000001234 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>:
    1234:	48 8d 47 ff          	lea    rax,[rdi-0x1]
    1238:	48 01 ff             	add    rdi,rdi
    123b:	48 8d 54 37 ff       	lea    rdx,[rdi+rsi*1-0x1]
    1240:	c3                   	ret

0000000000001241 <main.cold>:
    1241:	e8 df ff ff ff       	call   1225 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>
    1246:	48 89 d6             	mov    rsi,rdx
    1249:	e9 6e 1f 00 00       	jmp    31bc <main+0x1ddc>
    124e:	e8 d2 ff ff ff       	call   1225 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>
    1253:	48 89 d6             	mov    rsi,rdx
    1256:	e9 28 1f 00 00       	jmp    3183 <main+0x1da3>
    125b:	e8 c5 ff ff ff       	call   1225 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>
    1260:	48 89 d6             	mov    rsi,rdx
    1263:	e9 5b 15 00 00       	jmp    27c3 <main+0x13e3>
    1268:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    126d:	c5 f8 77             	vzeroupper
    1270:	e8 4b 24 00 00       	call   36c0 <_ZNSt6vectorImSaImEED1Ev>
    1275:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    127a:	e8 41 24 00 00       	call   36c0 <_ZNSt6vectorImSaImEED1Ev>
    127f:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    1286:	00 
    1287:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    128e:	00 00 
    1290:	75 48                	jne    12da <main.cold+0x99>
    1292:	48 89 df             	mov    rdi,rbx
    1295:	e8 76 ff ff ff       	call   1210 <_Unwind_Resume@plt>
    129a:	48 89 cf             	mov    rdi,rcx
    129d:	48 89 c6             	mov    rsi,rax
    12a0:	e8 8f ff ff ff       	call   1234 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>
    12a5:	48 89 c1             	mov    rcx,rax
    12a8:	48 89 d0             	mov    rax,rdx
    12ab:	e9 3d 0b 00 00       	jmp    1ded <main+0xa0d>
    12b0:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    12b5:	c5 f8 77             	vzeroupper
    12b8:	e8 33 24 00 00       	call   36f0 <_ZNSt6vectorIoSaIoEED1Ev>
    12bd:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    12c2:	e8 29 24 00 00       	call   36f0 <_ZNSt6vectorIoSaIoEED1Ev>
    12c7:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    12ce:	00 
    12cf:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    12d6:	00 00 
    12d8:	74 b8                	je     1292 <main.cold+0x51>
    12da:	e8 d1 fe ff ff       	call   11b0 <__stack_chk_fail@plt>
    12df:	e8 3c ff ff ff       	call   1220 <_ZN10fast_isqrtL15correct_isqrt64Em>
    12e4:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
    12e9:	49 83 c6 08          	add    r14,0x8
    12ed:	48 01 c8             	add    rax,rcx
    12f0:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    12f5:	4c 39 f2             	cmp    rdx,r14
    12f8:	0f 85 22 03 00 00    	jne    1620 <main+0x240>
    12fe:	e9 68 03 00 00       	jmp    166b <main+0x28b>
    1303:	48 89 cf             	mov    rdi,rcx
    1306:	e8 29 ff ff ff       	call   1234 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>
    130b:	48 89 c1             	mov    rcx,rax
    130e:	48 89 d6             	mov    rsi,rdx
    1311:	e9 87 09 00 00       	jmp    1c9d <main+0x8bd>
    1316:	e8 19 ff ff ff       	call   1234 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>
    131b:	48 89 c7             	mov    rdi,rax
    131e:	48 89 d6             	mov    rsi,rdx
    1321:	e9 e0 1b 00 00       	jmp    2f06 <main+0x1b26>
    1326:	e8 09 ff ff ff       	call   1234 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>
    132b:	48 89 c7             	mov    rdi,rax
    132e:	48 89 d6             	mov    rsi,rdx
    1331:	e9 e0 19 00 00       	jmp    2d16 <main+0x1936>
    1336:	e8 ea fe ff ff       	call   1225 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>
    133b:	48 89 d6             	mov    rsi,rdx
    133e:	e9 91 13 00 00       	jmp    26d4 <main+0x12f4>
    1343:	e8 d8 fe ff ff       	call   1220 <_ZN10fast_isqrtL15correct_isqrt64Em>
    1348:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
    134d:	49 83 c7 08          	add    r15,0x8
    1351:	48 01 d0             	add    rax,rdx
    1354:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
    1359:	4d 39 ef             	cmp    r15,r13
    135c:	0f 85 2e 03 00 00    	jne    1690 <main+0x2b0>
    1362:	4c 89 f6             	mov    rsi,r14
    1365:	e9 74 03 00 00       	jmp    16de <main+0x2fe>
    136a:	48 89 c7             	mov    rdi,rax
    136d:	e8 ae fe ff ff       	call   1220 <_ZN10fast_isqrtL15correct_isqrt64Em>
    1372:	e9 2c 0b 00 00       	jmp    1ea3 <main+0xac3>
    1377:	48 89 c7             	mov    rdi,rax
    137a:	e8 a1 fe ff ff       	call   1220 <_ZN10fast_isqrtL15correct_isqrt64Em>
    137f:	e9 5b 09 00 00       	jmp    1cdf <main+0x8ff>
    1384:	48 8d bc 24 d0 00 00 	lea    rdi,[rsp+0xd0]
    138b:	00 
    138c:	c5 f8 77             	vzeroupper
    138f:	e8 5c 23 00 00       	call   36f0 <_ZNSt6vectorIoSaIoEED1Ev>
    1394:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    139b:	00 
    139c:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    13a3:	00 00 
    13a5:	0f 84 e7 fe ff ff    	je     1292 <main.cold+0x51>
    13ab:	e9 2a ff ff ff       	jmp    12da <main.cold+0x99>
    13b0:	48 8d bc 24 d0 00 00 	lea    rdi,[rsp+0xd0]
    13b7:	00 
    13b8:	c5 f8 77             	vzeroupper
    13bb:	e8 00 23 00 00       	call   36c0 <_ZNSt6vectorImSaImEED1Ev>
    13c0:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    13c7:	00 
    13c8:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    13cf:	00 00 
    13d1:	0f 84 bb fe ff ff    	je     1292 <main.cold+0x51>
    13d7:	e9 fe fe ff ff       	jmp    12da <main.cold+0x99>
    13dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000013e0 <main>:
    13e0:	f3 0f 1e fa          	endbr64
    13e4:	41 57                	push   r15
    13e6:	41 56                	push   r14
    13e8:	41 55                	push   r13
    13ea:	ba 3d 00 00 00       	mov    edx,0x3d
    13ef:	41 54                	push   r12
    13f1:	55                   	push   rbp
    13f2:	53                   	push   rbx
    13f3:	48 8d 35 0e 2c 00 00 	lea    rsi,[rip+0x2c0e]        # 4008 <_IO_stdin_used+0x8>
    13fa:	48 81 ec c8 0a 00 00 	sub    rsp,0xac8
    1401:	48 8d 3d 38 4c 00 00 	lea    rdi,[rip+0x4c38]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1408:	48 bd 2d 7f 95 4c 2d 	movabs rbp,0x5851f42d4c957f2d
    140f:	f4 51 58 
    1412:	49 bc 55 55 55 55 55 	movabs r12,0x5555555555555555
    1419:	55 55 55 
    141c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1423:	00 00 
    1425:	48 89 84 24 b8 0a 00 	mov    QWORD PTR [rsp+0xab8],rax
    142c:	00 
    142d:	31 c0                	xor    eax,eax
    142f:	e8 8c fd ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1434:	48 8d 3d 05 4c 00 00 	lea    rdi,[rip+0x4c05]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    143b:	e8 f0 21 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    1440:	ba 0a 00 00 00       	mov    edx,0xa
    1445:	48 8d 35 36 2d 00 00 	lea    rsi,[rip+0x2d36]        # 4182 <_IO_stdin_used+0x182>
    144c:	48 8d 3d ed 4b 00 00 	lea    rdi,[rip+0x4bed]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1453:	e8 68 fd ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1458:	48 8d 3d e1 4b 00 00 	lea    rdi,[rip+0x4be1]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    145f:	e8 cc 21 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    1464:	ba 32 00 00 00       	mov    edx,0x32
    1469:	48 8d 35 e0 2b 00 00 	lea    rsi,[rip+0x2be0]        # 4050 <_IO_stdin_used+0x50>
    1470:	48 8d 3d c9 4b 00 00 	lea    rdi,[rip+0x4bc9]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1477:	e8 44 fd ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    147c:	48 8d 3d bd 4b 00 00 	lea    rdi,[rip+0x4bbd]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1483:	e8 a8 21 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    1488:	48 8d 84 24 f0 00 00 	lea    rax,[rsp+0xf0]
    148f:	00 
    1490:	c7 44 24 28 03 00 00 	mov    DWORD PTR [rsp+0x28],0x3
    1497:	00 
    1498:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    149d:	e8 9e fc ff ff       	call   1140 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    14a2:	41 be 01 00 00 00    	mov    r14d,0x1
    14a8:	48 89 c1             	mov    rcx,rax
    14ab:	48 b8 db 34 b6 d7 82 	movabs rax,0x431bde82d7b634db
    14b2:	de 1b 43 
    14b5:	48 f7 e9             	imul   rcx
    14b8:	48 c1 f9 3f          	sar    rcx,0x3f
    14bc:	48 c1 fa 12          	sar    rdx,0x12
    14c0:	48 29 ca             	sub    rdx,rcx
    14c3:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    14c8:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    14cd:	48 89 94 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdx
    14d4:	00 
    14d5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    14dc:	00 00 00 00 
    14e0:	48 89 d0             	mov    rax,rdx
    14e3:	48 c1 e8 3e          	shr    rax,0x3e
    14e7:	48 31 d0             	xor    rax,rdx
    14ea:	48 0f af c5          	imul   rax,rbp
    14ee:	4a 8d 14 30          	lea    rdx,[rax+r14*1]
    14f2:	4a 89 14 f1          	mov    QWORD PTR [rcx+r14*8],rdx
    14f6:	49 ff c6             	inc    r14
    14f9:	49 81 fe 38 01 00 00 	cmp    r14,0x138
    1500:	75 de                	jne    14e0 <main+0x100>
    1502:	bf 00 08 af 2f       	mov    edi,0x2faf0800
    1507:	48 c7 84 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],0x138
    150e:	00 38 01 00 00 
    1513:	e8 78 fc ff ff       	call   1190 <_Znwm@plt>
    1518:	ba f8 07 af 2f       	mov    edx,0x2faf07f8
    151d:	31 f6                	xor    esi,esi
    151f:	48 89 c3             	mov    rbx,rax
    1522:	4c 8d a8 00 08 af 2f 	lea    r13,[rax+0x2faf0800]
    1529:	48 8d 78 08          	lea    rdi,[rax+0x8]
    152d:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    1532:	49 89 df             	mov    r15,rbx
    1535:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
    153c:	00 
    153d:	4c 89 ac 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],r13
    1544:	00 
    1545:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    154c:	e8 ff fb ff ff       	call   1150 <memset@plt>
    1551:	4c 89 f2             	mov    rdx,r14
    1554:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    1559:	49 b8 00 00 a6 ed ff 	movabs r8,0x71d67fffeda60000
    1560:	7f d6 71 
    1563:	48 be 00 00 00 00 e0 	movabs rsi,0xfff7eee000000000
    156a:	ee f7 ff 
    156d:	4d 89 fe             	mov    r14,r15
    1570:	4c 89 ac 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],r13
    1577:	00 
    1578:	eb 58                	jmp    15d2 <main+0x1f2>
    157a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1580:	48 8d 50 01          	lea    rdx,[rax+0x1]
    1584:	48 8b 84 c4 f0 00 00 	mov    rax,QWORD PTR [rsp+rax*8+0xf0]
    158b:	00 
    158c:	49 83 c6 08          	add    r14,0x8
    1590:	48 89 94 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],rdx
    1597:	00 
    1598:	48 89 c1             	mov    rcx,rax
    159b:	48 c1 e9 1d          	shr    rcx,0x1d
    159f:	4c 21 e1             	and    rcx,r12
    15a2:	48 31 c8             	xor    rax,rcx
    15a5:	48 89 c1             	mov    rcx,rax
    15a8:	48 c1 e1 11          	shl    rcx,0x11
    15ac:	4c 21 c1             	and    rcx,r8
    15af:	48 31 c8             	xor    rax,rcx
    15b2:	48 89 c1             	mov    rcx,rax
    15b5:	48 c1 e1 25          	shl    rcx,0x25
    15b9:	48 21 f1             	and    rcx,rsi
    15bc:	48 31 c8             	xor    rax,rcx
    15bf:	48 89 c1             	mov    rcx,rax
    15c2:	48 c1 e9 2b          	shr    rcx,0x2b
    15c6:	48 31 c8             	xor    rax,rcx
    15c9:	49 89 46 f8          	mov    QWORD PTR [r14-0x8],rax
    15cd:	4d 39 ee             	cmp    r14,r13
    15d0:	74 35                	je     1607 <main+0x227>
    15d2:	48 89 d0             	mov    rax,rdx
    15d5:	48 81 fa 37 01 00 00 	cmp    rdx,0x137
    15dc:	76 a2                	jbe    1580 <main+0x1a0>
    15de:	48 89 df             	mov    rdi,rbx
    15e1:	e8 3a 21 00 00       	call   3720 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    15e6:	48 8b 84 24 b0 0a 00 	mov    rax,QWORD PTR [rsp+0xab0]
    15ed:	00 
    15ee:	48 be 00 00 00 00 e0 	movabs rsi,0xfff7eee000000000
    15f5:	ee f7 ff 
    15f8:	49 b8 00 00 a6 ed ff 	movabs r8,0x71d67fffeda60000
    15ff:	7f d6 71 
    1602:	e9 79 ff ff ff       	jmp    1580 <main+0x1a0>
    1607:	4c 8b 74 24 10       	mov    r14,QWORD PTR [rsp+0x10]
    160c:	48 c7 44 24 60 00 00 	mov    QWORD PTR [rsp+0x60],0x0
    1613:	00 00 
    1615:	49 8d 96 00 35 0c 00 	lea    rdx,[r14+0xc3500]
    161c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1620:	49 8b 1e             	mov    rbx,QWORD PTR [r14]
    1623:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
    1627:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
    162b:	62 f1 f7 08 7b c3    	vcvtusi2sd xmm0,xmm1,rbx
    1631:	c5 f9 2e d0          	vucomisd xmm2,xmm0
    1635:	0f 87 9e 1b 00 00    	ja     31d9 <main+0x1df9>
    163b:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    163f:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    1645:	48 89 f8             	mov    rax,rdi
    1648:	48 0f af c7          	imul   rax,rdi
    164c:	48 39 c3             	cmp    rbx,rax
    164f:	0f 88 8a fc ff ff    	js     12df <main.cold+0x9e>
    1655:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    165a:	49 83 c6 08          	add    r14,0x8
    165e:	48 01 f8             	add    rax,rdi
    1661:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    1666:	49 39 d6             	cmp    r14,rdx
    1669:	75 b5                	jne    1620 <main+0x240>
    166b:	48 c7 44 24 68 00 00 	mov    QWORD PTR [rsp+0x68],0x0
    1672:	00 00 
    1674:	0f 31                	rdtsc
    1676:	48 c1 e2 20          	shl    rdx,0x20
    167a:	48 89 c6             	mov    rsi,rax
    167d:	48 09 d6             	or     rsi,rdx
    1680:	49 89 f6             	mov    r14,rsi
    1683:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    168a:	00 00 00 00 
    168e:	66 90                	xchg   ax,ax
    1690:	49 8b 1f             	mov    rbx,QWORD PTR [r15]
    1693:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
    1697:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
    169b:	62 f1 e7 08 7b c3    	vcvtusi2sd xmm0,xmm3,rbx
    16a1:	c5 f9 2e e0          	vucomisd xmm4,xmm0
    16a5:	0f 87 24 1b 00 00    	ja     31cf <main+0x1def>
    16ab:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    16af:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    16b5:	48 89 f8             	mov    rax,rdi
    16b8:	48 0f af c7          	imul   rax,rdi
    16bc:	48 39 c3             	cmp    rbx,rax
    16bf:	0f 88 7e fc ff ff    	js     1343 <main.cold+0x102>
    16c5:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
    16ca:	49 83 c7 08          	add    r15,0x8
    16ce:	48 01 f8             	add    rax,rdi
    16d1:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
    16d6:	4d 39 ef             	cmp    r15,r13
    16d9:	75 b5                	jne    1690 <main+0x2b0>
    16db:	4c 89 f6             	mov    rsi,r14
    16de:	0f 31                	rdtsc
    16e0:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    16e4:	48 c1 e2 20          	shl    rdx,0x20
    16e8:	48 09 d0             	or     rax,rdx
    16eb:	48 8d 3d 4e 49 00 00 	lea    rdi,[rip+0x494e]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    16f2:	ba 1d 00 00 00       	mov    edx,0x1d
    16f7:	48 29 f0             	sub    rax,rsi
    16fa:	48 8d 35 8c 2a 00 00 	lea    rsi,[rip+0x2a8c]        # 418d <_IO_stdin_used+0x18d>
    1701:	62 f1 c7 08 7b c0    	vcvtusi2sd xmm0,xmm7,rax
    1707:	49 89 c6             	mov    r14,rax
    170a:	c5 fb 5e 3d 8e 2b 00 	vdivsd xmm7,xmm0,QWORD PTR [rip+0x2b8e]        # 42a0 <_IO_stdin_used+0x2a0>
    1711:	00 
    1712:	c5 fb 11 7c 24 20    	vmovsd QWORD PTR [rsp+0x20],xmm7
    1718:	e8 a3 fa ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    171d:	48 8d 1d 1c 49 00 00 	lea    rbx,[rip+0x491c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1724:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    1727:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    172b:	4c 8b bc 03 f0 00 00 	mov    r15,QWORD PTR [rbx+rax*1+0xf0]
    1732:	00 
    1733:	4d 85 ff             	test   r15,r15
    1736:	0f 84 68 1b 00 00    	je     32a4 <main+0x1ec4>
    173c:	41 80 7f 38 00       	cmp    BYTE PTR [r15+0x38],0x0
    1741:	0f 84 46 0d 00 00    	je     248d <main+0x10ad>
    1747:	41 0f be 77 43       	movsx  esi,BYTE PTR [r15+0x43]
    174c:	48 8d 3d ed 48 00 00 	lea    rdi,[rip+0x48ed]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1753:	e8 d8 f9 ff ff       	call   1130 <_ZNSo3putEc@plt>
    1758:	48 89 c7             	mov    rdi,rax
    175b:	e8 10 fa ff ff       	call   1170 <_ZNSo5flushEv@plt>
    1760:	ba 14 00 00 00       	mov    edx,0x14
    1765:	48 8d 35 3f 2a 00 00 	lea    rsi,[rip+0x2a3f]        # 41ab <_IO_stdin_used+0x1ab>
    176c:	48 8d 3d cd 48 00 00 	lea    rdi,[rip+0x48cd]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1773:	e8 48 fa ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1778:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
    177d:	48 8d 3d bc 48 00 00 	lea    rdi,[rip+0x48bc]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1784:	e8 d7 f9 ff ff       	call   1160 <_ZNSo9_M_insertImEERSoT_@plt>
    1789:	49 89 c5             	mov    r13,rax
    178c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    178f:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1793:	4d 8b bc 05 f0 00 00 	mov    r15,QWORD PTR [r13+rax*1+0xf0]
    179a:	00 
    179b:	4d 85 ff             	test   r15,r15
    179e:	0f 84 e3 1a 00 00    	je     3287 <main+0x1ea7>
    17a4:	41 80 7f 38 00       	cmp    BYTE PTR [r15+0x38],0x0
    17a9:	0f 84 ad 0c 00 00    	je     245c <main+0x107c>
    17af:	41 0f be 77 43       	movsx  esi,BYTE PTR [r15+0x43]
    17b4:	4c 89 ef             	mov    rdi,r13
    17b7:	e8 74 f9 ff ff       	call   1130 <_ZNSo3putEc@plt>
    17bc:	48 89 c7             	mov    rdi,rax
    17bf:	e8 ac f9 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    17c4:	ba 14 00 00 00       	mov    edx,0x14
    17c9:	48 8d 35 f0 29 00 00 	lea    rsi,[rip+0x29f0]        # 41c0 <_IO_stdin_used+0x1c0>
    17d0:	48 8d 3d 69 48 00 00 	lea    rdi,[rip+0x4869]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    17d7:	e8 e4 f9 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    17dc:	be 00 e1 f5 05       	mov    esi,0x5f5e100
    17e1:	48 8d 3d 58 48 00 00 	lea    rdi,[rip+0x4858]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    17e8:	e8 13 fa ff ff       	call   1200 <_ZNSolsEi@plt>
    17ed:	ba 19 00 00 00       	mov    edx,0x19
    17f2:	48 8d 35 dc 29 00 00 	lea    rsi,[rip+0x29dc]        # 41d5 <_IO_stdin_used+0x1d5>
    17f9:	48 89 c7             	mov    rdi,rax
    17fc:	49 89 c5             	mov    r13,rax
    17ff:	e8 bc f9 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1804:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    1808:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    180c:	4d 8b bc 05 f0 00 00 	mov    r15,QWORD PTR [r13+rax*1+0xf0]
    1813:	00 
    1814:	4d 85 ff             	test   r15,r15
    1817:	0f 84 e0 1b 00 00    	je     33fd <main+0x201d>
    181d:	41 80 7f 38 00       	cmp    BYTE PTR [r15+0x38],0x0
    1822:	0f 84 03 0c 00 00    	je     242b <main+0x104b>
    1828:	41 0f be 77 43       	movsx  esi,BYTE PTR [r15+0x43]
    182d:	4c 89 ef             	mov    rdi,r13
    1830:	e8 fb f8 ff ff       	call   1130 <_ZNSo3putEc@plt>
    1835:	48 89 c7             	mov    rdi,rax
    1838:	e8 33 f9 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    183d:	ba 14 00 00 00       	mov    edx,0x14
    1842:	48 8d 35 a6 29 00 00 	lea    rsi,[rip+0x29a6]        # 41ef <_IO_stdin_used+0x1ef>
    1849:	48 8d 3d f0 47 00 00 	lea    rdi,[rip+0x47f0]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1850:	e8 6b f9 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1855:	4c 89 f6             	mov    rsi,r14
    1858:	48 8d 3d e1 47 00 00 	lea    rdi,[rip+0x47e1]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    185f:	e8 fc f8 ff ff       	call   1160 <_ZNSo9_M_insertImEERSoT_@plt>
    1864:	ba 07 00 00 00       	mov    edx,0x7
    1869:	48 8d 35 94 29 00 00 	lea    rsi,[rip+0x2994]        # 4204 <_IO_stdin_used+0x204>
    1870:	48 89 c7             	mov    rdi,rax
    1873:	49 89 c5             	mov    r13,rax
    1876:	e8 45 f9 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    187b:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    187f:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1883:	4d 8b b4 05 f0 00 00 	mov    r14,QWORD PTR [r13+rax*1+0xf0]
    188a:	00 
    188b:	4d 85 f6             	test   r14,r14
    188e:	0f 84 4d 1b 00 00    	je     33e1 <main+0x2001>
    1894:	41 80 7e 38 00       	cmp    BYTE PTR [r14+0x38],0x0
    1899:	0f 84 5b 0b 00 00    	je     23fa <main+0x101a>
    189f:	41 0f be 76 43       	movsx  esi,BYTE PTR [r14+0x43]
    18a4:	4c 89 ef             	mov    rdi,r13
    18a7:	e8 84 f8 ff ff       	call   1130 <_ZNSo3putEc@plt>
    18ac:	48 89 c7             	mov    rdi,rax
    18af:	e8 bc f8 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    18b4:	ba 14 00 00 00       	mov    edx,0x14
    18b9:	48 8d 35 4c 29 00 00 	lea    rsi,[rip+0x294c]        # 420c <_IO_stdin_used+0x20c>
    18c0:	48 8d 3d 79 47 00 00 	lea    rdi,[rip+0x4779]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    18c7:	e8 f4 f8 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    18cc:	48 8d 3d 6d 47 00 00 	lea    rdi,[rip+0x476d]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    18d3:	c5 fb 10 44 24 20    	vmovsd xmm0,QWORD PTR [rsp+0x20]
    18d9:	e8 12 f9 ff ff       	call   11f0 <_ZNSo9_M_insertIdEERSoT_@plt>
    18de:	ba 0e 00 00 00       	mov    edx,0xe
    18e3:	48 8d 35 37 29 00 00 	lea    rsi,[rip+0x2937]        # 4221 <_IO_stdin_used+0x221>
    18ea:	48 89 c7             	mov    rdi,rax
    18ed:	49 89 c5             	mov    r13,rax
    18f0:	e8 cb f8 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    18f5:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    18f9:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    18fd:	4d 8b b4 05 f0 00 00 	mov    r14,QWORD PTR [r13+rax*1+0xf0]
    1904:	00 
    1905:	4d 85 f6             	test   r14,r14
    1908:	0f 84 61 19 00 00    	je     326f <main+0x1e8f>
    190e:	41 80 7e 38 00       	cmp    BYTE PTR [r14+0x38],0x0
    1913:	0f 84 b0 0a 00 00    	je     23c9 <main+0xfe9>
    1919:	41 0f be 76 43       	movsx  esi,BYTE PTR [r14+0x43]
    191e:	4c 89 ef             	mov    rdi,r13
    1921:	e8 0a f8 ff ff       	call   1130 <_ZNSo3putEc@plt>
    1926:	48 89 c7             	mov    rdi,rax
    1929:	e8 42 f8 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    192e:	ba 32 00 00 00       	mov    edx,0x32
    1933:	48 8d 35 16 27 00 00 	lea    rsi,[rip+0x2716]        # 4050 <_IO_stdin_used+0x50>
    193a:	48 8d 3d ff 46 00 00 	lea    rdi,[rip+0x46ff]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1941:	e8 7a f8 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1946:	48 8d 1d f3 46 00 00 	lea    rbx,[rip+0x46f3]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    194d:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    1950:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1954:	4c 8b ac 03 f0 00 00 	mov    r13,QWORD PTR [rbx+rax*1+0xf0]
    195b:	00 
    195c:	4d 85 ed             	test   r13,r13
    195f:	0f 84 89 19 00 00    	je     32ee <main+0x1f0e>
    1965:	41 80 7d 38 00       	cmp    BYTE PTR [r13+0x38],0x0
    196a:	0f 84 27 0a 00 00    	je     2397 <main+0xfb7>
    1970:	41 0f be 75 43       	movsx  esi,BYTE PTR [r13+0x43]
    1975:	48 8d 3d c4 46 00 00 	lea    rdi,[rip+0x46c4]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    197c:	e8 af f7 ff ff       	call   1130 <_ZNSo3putEc@plt>
    1981:	48 89 c7             	mov    rdi,rax
    1984:	e8 e7 f7 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    1989:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    198e:	be 00 08 af 2f       	mov    esi,0x2faf0800
    1993:	e8 08 f8 ff ff       	call   11a0 <_ZdlPvm@plt>
    1998:	ff 4c 24 28          	dec    DWORD PTR [rsp+0x28]
    199c:	0f 85 fb fa ff ff    	jne    149d <main+0xbd>
    19a2:	ba 0b 00 00 00       	mov    edx,0xb
    19a7:	48 8d 35 82 28 00 00 	lea    rsi,[rip+0x2882]        # 4230 <_IO_stdin_used+0x230>
    19ae:	48 8d 3d 8b 46 00 00 	lea    rdi,[rip+0x468b]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    19b5:	e8 06 f8 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    19ba:	48 8d 3d 7f 46 00 00 	lea    rdi,[rip+0x467f]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    19c1:	e8 6a 1c 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    19c6:	ba 32 00 00 00       	mov    edx,0x32
    19cb:	48 8d 35 7e 26 00 00 	lea    rsi,[rip+0x267e]        # 4050 <_IO_stdin_used+0x50>
    19d2:	48 8d 3d 67 46 00 00 	lea    rdi,[rip+0x4667]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    19d9:	e8 e2 f7 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    19de:	48 8d 3d 5b 46 00 00 	lea    rdi,[rip+0x465b]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    19e5:	e8 46 1c 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    19ea:	c7 44 24 28 03 00 00 	mov    DWORD PTR [rsp+0x28],0x3
    19f1:	00 
    19f2:	e8 49 f7 ff ff       	call   1140 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    19f7:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    19fc:	48 be 2d 7f 95 4c 2d 	movabs rsi,0x5851f42d4c957f2d
    1a03:	f4 51 58 
    1a06:	48 89 c1             	mov    rcx,rax
    1a09:	48 b8 db 34 b6 d7 82 	movabs rax,0x431bde82d7b634db
    1a10:	de 1b 43 
    1a13:	48 f7 e9             	imul   rcx
    1a16:	48 c1 f9 3f          	sar    rcx,0x3f
    1a1a:	48 c1 fa 12          	sar    rdx,0x12
    1a1e:	48 29 ca             	sub    rdx,rcx
    1a21:	b9 01 00 00 00       	mov    ecx,0x1
    1a26:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    1a2b:	48 89 94 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdx
    1a32:	00 
    1a33:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1a3a:	00 00 00 00 
    1a3e:	66 90                	xchg   ax,ax
    1a40:	48 89 d0             	mov    rax,rdx
    1a43:	48 c1 e8 3e          	shr    rax,0x3e
    1a47:	48 31 d0             	xor    rax,rdx
    1a4a:	48 0f af c6          	imul   rax,rsi
    1a4e:	48 8d 14 08          	lea    rdx,[rax+rcx*1]
    1a52:	48 89 14 cf          	mov    QWORD PTR [rdi+rcx*8],rdx
    1a56:	48 ff c1             	inc    rcx
    1a59:	48 81 f9 38 01 00 00 	cmp    rcx,0x138
    1a60:	75 de                	jne    1a40 <main+0x660>
    1a62:	bf 00 10 5e 5f       	mov    edi,0x5f5e1000
    1a67:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    1a6c:	48 c7 84 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],0x138
    1a73:	00 38 01 00 00 
    1a78:	e8 13 f7 ff ff       	call   1190 <_Znwm@plt>
    1a7d:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    1a82:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    1a86:	4c 8d 80 00 10 5e 5f 	lea    r8,[rax+0x5f5e1000]
    1a8d:	49 89 c7             	mov    r15,rax
    1a90:	c5 f9 7f 00          	vmovdqa XMMWORD PTR [rax],xmm0
    1a94:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
    1a9b:	00 
    1a9c:	c5 f9 7f 40 10       	vmovdqa XMMWORD PTR [rax+0x10],xmm0
    1aa1:	48 8d 40 20          	lea    rax,[rax+0x20]
    1aa5:	4c 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],r8
    1aac:	00 
    1aad:	c4 c1 79 6f 37       	vmovdqa xmm6,XMMWORD PTR [r15]
    1ab2:	48 83 c0 10          	add    rax,0x10
    1ab6:	c5 f9 7f 70 f0       	vmovdqa XMMWORD PTR [rax-0x10],xmm6
    1abb:	49 39 c0             	cmp    r8,rax
    1abe:	75 ed                	jne    1aad <main+0x6cd>
    1ac0:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
    1ac5:	4c 89 fd             	mov    rbp,r15
    1ac8:	49 be 00 00 a6 ed ff 	movabs r14,0x71d67fffeda60000
    1acf:	7f d6 71 
    1ad2:	49 bd 00 00 00 00 e0 	movabs r13,0xfff7eee000000000
    1ad9:	ee f7 ff 
    1adc:	4c 89 c3             	mov    rbx,r8
    1adf:	4c 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],r8
    1ae6:	00 
    1ae7:	4c 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],r15
    1aec:	4c 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],r15
    1af1:	e9 c9 00 00 00       	jmp    1bbf <main+0x7df>
    1af6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1afd:	00 00 00 
    1b00:	48 8b 84 cc f0 00 00 	mov    rax,QWORD PTR [rsp+rcx*8+0xf0]
    1b07:	00 
    1b08:	48 8d 79 01          	lea    rdi,[rcx+0x1]
    1b0c:	48 be 55 55 55 55 55 	movabs rsi,0x5555555555555555
    1b13:	55 55 55 
    1b16:	48 89 bc 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],rdi
    1b1d:	00 
    1b1e:	48 89 c1             	mov    rcx,rax
    1b21:	48 c1 e9 1d          	shr    rcx,0x1d
    1b25:	48 21 f1             	and    rcx,rsi
    1b28:	48 31 c8             	xor    rax,rcx
    1b2b:	48 89 c1             	mov    rcx,rax
    1b2e:	48 c1 e1 11          	shl    rcx,0x11
    1b32:	4c 21 f1             	and    rcx,r14
    1b35:	48 31 c8             	xor    rax,rcx
    1b38:	48 89 c1             	mov    rcx,rax
    1b3b:	48 c1 e1 25          	shl    rcx,0x25
    1b3f:	4c 21 e9             	and    rcx,r13
    1b42:	48 31 c8             	xor    rax,rcx
    1b45:	48 89 c1             	mov    rcx,rax
    1b48:	48 c1 e9 2b          	shr    rcx,0x2b
    1b4c:	48 31 c8             	xor    rax,rcx
    1b4f:	49 89 c7             	mov    r15,rax
    1b52:	48 81 ff 37 01 00 00 	cmp    rdi,0x137
    1b59:	0f 87 91 00 00 00    	ja     1bf0 <main+0x810>
    1b5f:	48 8b 84 fc f0 00 00 	mov    rax,QWORD PTR [rsp+rdi*8+0xf0]
    1b66:	00 
    1b67:	48 8d 4f 01          	lea    rcx,[rdi+0x1]
    1b6b:	48 be 55 55 55 55 55 	movabs rsi,0x5555555555555555
    1b72:	55 55 55 
    1b75:	4c 89 7d 08          	mov    QWORD PTR [rbp+0x8],r15
    1b79:	48 83 c5 10          	add    rbp,0x10
    1b7d:	48 89 8c 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],rcx
    1b84:	00 
    1b85:	48 89 c7             	mov    rdi,rax
    1b88:	48 c1 ef 1d          	shr    rdi,0x1d
    1b8c:	48 21 f7             	and    rdi,rsi
    1b8f:	48 31 f8             	xor    rax,rdi
    1b92:	48 89 c7             	mov    rdi,rax
    1b95:	48 c1 e7 11          	shl    rdi,0x11
    1b99:	4c 21 f7             	and    rdi,r14
    1b9c:	48 31 f8             	xor    rax,rdi
    1b9f:	48 89 c7             	mov    rdi,rax
    1ba2:	48 c1 e7 25          	shl    rdi,0x25
    1ba6:	4c 21 ef             	and    rdi,r13
    1ba9:	48 31 f8             	xor    rax,rdi
    1bac:	48 89 c7             	mov    rdi,rax
    1baf:	48 c1 ef 2b          	shr    rdi,0x2b
    1bb3:	48 31 f8             	xor    rax,rdi
    1bb6:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    1bba:	48 39 dd             	cmp    rbp,rbx
    1bbd:	74 46                	je     1c05 <main+0x825>
    1bbf:	48 81 f9 37 01 00 00 	cmp    rcx,0x137
    1bc6:	0f 86 34 ff ff ff    	jbe    1b00 <main+0x720>
    1bcc:	4c 89 e7             	mov    rdi,r12
    1bcf:	e8 4c 1b 00 00       	call   3720 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    1bd4:	48 8b 8c 24 b0 0a 00 	mov    rcx,QWORD PTR [rsp+0xab0]
    1bdb:	00 
    1bdc:	e9 1f ff ff ff       	jmp    1b00 <main+0x720>
    1be1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1be8:	00 00 00 00 
    1bec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1bf0:	4c 89 e7             	mov    rdi,r12
    1bf3:	e8 28 1b 00 00       	call   3720 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    1bf8:	48 8b bc 24 b0 0a 00 	mov    rdi,QWORD PTR [rsp+0xab0]
    1bff:	00 
    1c00:	e9 5a ff ff ff       	jmp    1b5f <main+0x77f>
    1c05:	4c 8b 7c 24 10       	mov    r15,QWORD PTR [rsp+0x10]
    1c0a:	48 8b 6c 24 20       	mov    rbp,QWORD PTR [rsp+0x20]
    1c0f:	49 89 d8             	mov    r8,rbx
    1c12:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    1c16:	c5 f9 7f 84 24 90 00 	vmovdqa XMMWORD PTR [rsp+0x90],xmm0
    1c1d:	00 00 
    1c1f:	4d 8d 9f 00 6a 18 00 	lea    r11,[r15+0x186a00]
    1c26:	4d 89 f9             	mov    r9,r15
    1c29:	49 89 ea             	mov    r10,rbp
    1c2c:	4c 89 fb             	mov    rbx,r15
    1c2f:	e9 dc 00 00 00       	jmp    1d10 <main+0x930>
    1c34:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1c3b:	00 00 00 00 
    1c3f:	90                   	nop
    1c40:	f3 49 0f bd cf       	lzcnt  rcx,r15
    1c45:	4d 89 fd             	mov    r13,r15
    1c48:	89 cd                	mov    ebp,ecx
    1c4a:	83 e1 fe             	and    ecx,0xfffffffe
    1c4d:	4d 0f a5 f5          	shld   r13,r14,cl
    1c51:	c5 d1 57 ed          	vxorpd xmm5,xmm5,xmm5
    1c55:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    1c59:	31 c0                	xor    eax,eax
    1c5b:	4d 89 f4             	mov    r12,r14
    1c5e:	d1 fd                	sar    ebp,1
    1c60:	c4 42 f1 f7 e4       	shlx   r12,r12,rcx
    1c65:	f6 c1 40             	test   cl,0x40
    1c68:	4d 0f 45 ec          	cmovne r13,r12
    1c6c:	4c 0f 45 e0          	cmovne r12,rax
    1c70:	62 d1 d7 08 7b c5    	vcvtusi2sd xmm0,xmm5,r13
    1c76:	4c 89 ee             	mov    rsi,r13
    1c79:	c5 f9 2e f0          	vucomisd xmm6,xmm0
    1c7d:	0f 87 7e 15 00 00    	ja     3201 <main+0x1e21>
    1c83:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1c87:	62 f1 ff 08 78 c8    	vcvttsd2usi rcx,xmm0
    1c8d:	48 89 c8             	mov    rax,rcx
    1c90:	48 0f af c1          	imul   rax,rcx
    1c94:	48 29 c6             	sub    rsi,rax
    1c97:	0f 88 66 f6 ff ff    	js     1303 <main.cold+0xc2>
    1c9d:	49 0f ac f4 21       	shrd   r12,rsi,0x21
    1ca2:	31 d2                	xor    edx,edx
    1ca4:	4c 89 e0             	mov    rax,r12
    1ca7:	bf 20 00 00 00       	mov    edi,0x20
    1cac:	48 f7 f1             	div    rcx
    1caf:	29 ef                	sub    edi,ebp
    1cb1:	c4 e2 c1 f7 f9       	shlx   rdi,rcx,rdi
    1cb6:	c4 62 d3 f7 e0       	shrx   r12,rax,rbp
    1cbb:	48 89 f8             	mov    rax,rdi
    1cbe:	4c 01 e0             	add    rax,r12
    1cc1:	0f 82 26 15 00 00    	jb     31ed <main+0x1e0d>
    1cc7:	48 89 c2             	mov    rdx,rax
    1cca:	c4 e2 cb f6 f8       	mulx   rdi,rsi,rax
    1ccf:	49 39 f6             	cmp    r14,rsi
    1cd2:	49 19 ff             	sbb    r15,rdi
    1cd5:	4c 89 fa             	mov    rdx,r15
    1cd8:	48 c1 ea 3f          	shr    rdx,0x3f
    1cdc:	48 29 d0             	sub    rax,rdx
    1cdf:	48 8b b4 24 90 00 00 	mov    rsi,QWORD PTR [rsp+0x90]
    1ce6:	00 
    1ce7:	48 8b bc 24 98 00 00 	mov    rdi,QWORD PTR [rsp+0x98]
    1cee:	00 
    1cef:	31 d2                	xor    edx,edx
    1cf1:	48 01 f0             	add    rax,rsi
    1cf4:	48 11 fa             	adc    rdx,rdi
    1cf7:	48 83 c3 10          	add    rbx,0x10
    1cfb:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
    1d02:	00 
    1d03:	48 89 94 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rdx
    1d0a:	00 
    1d0b:	4c 39 db             	cmp    rbx,r11
    1d0e:	74 50                	je     1d60 <main+0x980>
    1d10:	4c 8b 7b 08          	mov    r15,QWORD PTR [rbx+0x8]
    1d14:	4c 8b 33             	mov    r14,QWORD PTR [rbx]
    1d17:	4d 85 ff             	test   r15,r15
    1d1a:	0f 85 20 ff ff ff    	jne    1c40 <main+0x860>
    1d20:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    1d24:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    1d28:	62 d1 cf 08 7b c6    	vcvtusi2sd xmm0,xmm6,r14
    1d2e:	c5 f9 2e f8          	vucomisd xmm7,xmm0
    1d32:	0f 87 84 15 00 00    	ja     32bc <main+0x1edc>
    1d38:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1d3c:	62 f1 ff 08 78 c0    	vcvttsd2usi rax,xmm0
    1d42:	48 89 c2             	mov    rdx,rax
    1d45:	48 0f af d0          	imul   rdx,rax
    1d49:	49 39 d6             	cmp    r14,rdx
    1d4c:	79 91                	jns    1cdf <main+0x8ff>
    1d4e:	e9 24 f6 ff ff       	jmp    1377 <main.cold+0x136>
    1d53:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1d5a:	00 00 00 00 
    1d5e:	66 90                	xchg   ax,ax
    1d60:	4c 89 d5             	mov    rbp,r10
    1d63:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    1d67:	c5 f9 7f 84 24 a0 00 	vmovdqa XMMWORD PTR [rsp+0xa0],xmm0
    1d6e:	00 00 
    1d70:	0f 31                	rdtsc
    1d72:	48 c1 e2 20          	shl    rdx,0x20
    1d76:	49 89 c4             	mov    r12,rax
    1d79:	49 09 d4             	or     r12,rdx
    1d7c:	4d 89 e2             	mov    r10,r12
    1d7f:	e9 dc 00 00 00       	jmp    1e60 <main+0xa80>
    1d84:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1d8b:	00 00 00 00 
    1d8f:	90                   	nop
    1d90:	f3 49 0f bd cd       	lzcnt  rcx,r13
    1d95:	4d 89 ef             	mov    r15,r13
    1d98:	89 cb                	mov    ebx,ecx
    1d9a:	83 e1 fe             	and    ecx,0xfffffffe
    1d9d:	4d 0f a5 e7          	shld   r15,r12,cl
    1da1:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    1da5:	c5 d1 57 ed          	vxorpd xmm5,xmm5,xmm5
    1da9:	31 c0                	xor    eax,eax
    1dab:	4d 89 e6             	mov    r14,r12
    1dae:	d1 fb                	sar    ebx,1
    1db0:	c4 42 f1 f7 f6       	shlx   r14,r14,rcx
    1db5:	f6 c1 40             	test   cl,0x40
    1db8:	4d 0f 45 fe          	cmovne r15,r14
    1dbc:	4c 0f 45 f0          	cmovne r14,rax
    1dc0:	62 d1 c7 08 7b c7    	vcvtusi2sd xmm0,xmm7,r15
    1dc6:	4c 89 f8             	mov    rax,r15
    1dc9:	c5 f9 2e e8          	vucomisd xmm5,xmm0
    1dcd:	0f 87 6a 14 00 00    	ja     323d <main+0x1e5d>
    1dd3:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1dd7:	62 f1 ff 08 78 c8    	vcvttsd2usi rcx,xmm0
    1ddd:	48 89 ca             	mov    rdx,rcx
    1de0:	48 0f af d1          	imul   rdx,rcx
    1de4:	48 29 d0             	sub    rax,rdx
    1de7:	0f 88 ad f4 ff ff    	js     129a <main.cold+0x59>
    1ded:	49 0f ac c6 21       	shrd   r14,rax,0x21
    1df2:	31 d2                	xor    edx,edx
    1df4:	4c 89 f0             	mov    rax,r14
    1df7:	bf 20 00 00 00       	mov    edi,0x20
    1dfc:	48 f7 f1             	div    rcx
    1dff:	29 df                	sub    edi,ebx
    1e01:	c4 e2 c1 f7 f9       	shlx   rdi,rcx,rdi
    1e06:	c4 62 e3 f7 f0       	shrx   r14,rax,rbx
    1e0b:	4c 01 f7             	add    rdi,r14
    1e0e:	0f 82 e2 13 00 00    	jb     31f6 <main+0x1e16>
    1e14:	48 89 fa             	mov    rdx,rdi
    1e17:	c4 e2 fb f6 d7       	mulx   rdx,rax,rdi
    1e1c:	49 39 c4             	cmp    r12,rax
    1e1f:	49 19 d5             	sbb    r13,rdx
    1e22:	31 d2                	xor    edx,edx
    1e24:	4c 89 e8             	mov    rax,r13
    1e27:	48 c1 e8 3f          	shr    rax,0x3f
    1e2b:	48 29 c7             	sub    rdi,rax
    1e2e:	48 89 f8             	mov    rax,rdi
    1e31:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
    1e38:	00 
    1e39:	48 8b 9c 24 a8 00 00 	mov    rbx,QWORD PTR [rsp+0xa8]
    1e40:	00 
    1e41:	48 01 c8             	add    rax,rcx
    1e44:	48 11 da             	adc    rdx,rbx
    1e47:	48 83 c5 10          	add    rbp,0x10
    1e4b:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
    1e52:	00 
    1e53:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
    1e5a:	00 
    1e5b:	4c 39 c5             	cmp    rbp,r8
    1e5e:	74 47                	je     1ea7 <main+0xac7>
    1e60:	4c 8b 6d 08          	mov    r13,QWORD PTR [rbp+0x8]
    1e64:	4c 8b 65 00          	mov    r12,QWORD PTR [rbp+0x0]
    1e68:	4d 85 ed             	test   r13,r13
    1e6b:	0f 85 1f ff ff ff    	jne    1d90 <main+0x9b0>
    1e71:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    1e75:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    1e79:	62 d1 cf 08 7b c4    	vcvtusi2sd xmm0,xmm6,r12
    1e7f:	c5 f9 2e f8          	vucomisd xmm7,xmm0
    1e83:	0f 87 7d 14 00 00    	ja     3306 <main+0x1f26>
    1e89:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1e8d:	62 f1 ff 08 78 c0    	vcvttsd2usi rax,xmm0
    1e93:	48 89 c2             	mov    rdx,rax
    1e96:	48 0f af d0          	imul   rdx,rax
    1e9a:	49 39 d4             	cmp    r12,rdx
    1e9d:	0f 88 c7 f4 ff ff    	js     136a <main.cold+0x129>
    1ea3:	31 d2                	xor    edx,edx
    1ea5:	eb 8a                	jmp    1e31 <main+0xa51>
    1ea7:	4d 89 cf             	mov    r15,r9
    1eaa:	0f 31                	rdtsc
    1eac:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    1eb0:	48 c1 e2 20          	shl    rdx,0x20
    1eb4:	48 09 d0             	or     rax,rdx
    1eb7:	48 8d 35 ca 21 00 00 	lea    rsi,[rip+0x21ca]        # 4088 <_IO_stdin_used+0x88>
    1ebe:	ba 1e 00 00 00       	mov    edx,0x1e
    1ec3:	48 8d 3d 76 41 00 00 	lea    rdi,[rip+0x4176]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1eca:	4c 29 d0             	sub    rax,r10
    1ecd:	62 f1 c7 08 7b c0    	vcvtusi2sd xmm0,xmm7,rax
    1ed3:	49 89 c5             	mov    r13,rax
    1ed6:	c5 fb 5e 3d c2 23 00 	vdivsd xmm7,xmm0,QWORD PTR [rip+0x23c2]        # 42a0 <_IO_stdin_used+0x2a0>
    1edd:	00 
    1ede:	c4 c1 f9 7e fe       	vmovq  r14,xmm7
    1ee3:	e8 d8 f2 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1ee8:	48 8d 1d 51 41 00 00 	lea    rbx,[rip+0x4151]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1eef:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    1ef2:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1ef6:	48 8b ac 03 f0 00 00 	mov    rbp,QWORD PTR [rbx+rax*1+0xf0]
    1efd:	00 
    1efe:	48 85 ed             	test   rbp,rbp
    1f01:	0f 84 b3 14 00 00    	je     33ba <main+0x1fda>
    1f07:	80 7d 38 00          	cmp    BYTE PTR [rbp+0x38],0x0
    1f0b:	0f 84 e1 05 00 00    	je     24f2 <main+0x1112>
    1f11:	0f b6 45 43          	movzx  eax,BYTE PTR [rbp+0x43]
    1f15:	0f be f0             	movsx  esi,al
    1f18:	48 8d 3d 21 41 00 00 	lea    rdi,[rip+0x4121]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1f1f:	e8 0c f2 ff ff       	call   1130 <_ZNSo3putEc@plt>
    1f24:	48 89 c7             	mov    rdi,rax
    1f27:	e8 44 f2 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    1f2c:	ba 14 00 00 00       	mov    edx,0x14
    1f31:	48 8d 35 73 22 00 00 	lea    rsi,[rip+0x2273]        # 41ab <_IO_stdin_used+0x1ab>
    1f38:	48 8d 3d 01 41 00 00 	lea    rdi,[rip+0x4101]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1f3f:	e8 7c f2 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1f44:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
    1f49:	48 8d 3d f0 40 00 00 	lea    rdi,[rip+0x40f0]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1f50:	e8 0b f2 ff ff       	call   1160 <_ZNSo9_M_insertImEERSoT_@plt>
    1f55:	48 89 c5             	mov    rbp,rax
    1f58:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1f5b:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1f5f:	4c 8b a4 05 f0 00 00 	mov    r12,QWORD PTR [rbp+rax*1+0xf0]
    1f66:	00 
    1f67:	4d 85 e4             	test   r12,r12
    1f6a:	0f 84 2e 14 00 00    	je     339e <main+0x1fbe>
    1f70:	41 80 7c 24 38 00    	cmp    BYTE PTR [r12+0x38],0x0
    1f76:	0f 84 42 05 00 00    	je     24be <main+0x10de>
    1f7c:	41 0f b6 44 24 43    	movzx  eax,BYTE PTR [r12+0x43]
    1f82:	0f be f0             	movsx  esi,al
    1f85:	48 89 ef             	mov    rdi,rbp
    1f88:	e8 a3 f1 ff ff       	call   1130 <_ZNSo3putEc@plt>
    1f8d:	48 89 c7             	mov    rdi,rax
    1f90:	e8 db f1 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    1f95:	ba 14 00 00 00       	mov    edx,0x14
    1f9a:	48 8d 35 1f 22 00 00 	lea    rsi,[rip+0x221f]        # 41c0 <_IO_stdin_used+0x1c0>
    1fa1:	48 8d 3d 98 40 00 00 	lea    rdi,[rip+0x4098]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1fa8:	e8 13 f2 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1fad:	be 00 e1 f5 05       	mov    esi,0x5f5e100
    1fb2:	48 8d 3d 87 40 00 00 	lea    rdi,[rip+0x4087]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1fb9:	e8 42 f2 ff ff       	call   1200 <_ZNSolsEi@plt>
    1fbe:	ba 1a 00 00 00       	mov    edx,0x1a
    1fc3:	48 8d 35 72 22 00 00 	lea    rsi,[rip+0x2272]        # 423c <_IO_stdin_used+0x23c>
    1fca:	48 89 c7             	mov    rdi,rax
    1fcd:	48 89 c5             	mov    rbp,rax
    1fd0:	e8 eb f1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1fd5:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
    1fd9:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1fdd:	4c 8b a4 05 f0 00 00 	mov    r12,QWORD PTR [rbp+rax*1+0xf0]
    1fe4:	00 
    1fe5:	4d 85 e4             	test   r12,r12
    1fe8:	0f 84 94 13 00 00    	je     3382 <main+0x1fa2>
    1fee:	41 80 7c 24 38 00    	cmp    BYTE PTR [r12+0x38],0x0
    1ff4:	0f 84 c8 05 00 00    	je     25c2 <main+0x11e2>
    1ffa:	41 0f b6 44 24 43    	movzx  eax,BYTE PTR [r12+0x43]
    2000:	0f be f0             	movsx  esi,al
    2003:	48 89 ef             	mov    rdi,rbp
    2006:	e8 25 f1 ff ff       	call   1130 <_ZNSo3putEc@plt>
    200b:	48 89 c7             	mov    rdi,rax
    200e:	e8 5d f1 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    2013:	ba 14 00 00 00       	mov    edx,0x14
    2018:	48 8d 35 d0 21 00 00 	lea    rsi,[rip+0x21d0]        # 41ef <_IO_stdin_used+0x1ef>
    201f:	48 8d 3d 1a 40 00 00 	lea    rdi,[rip+0x401a]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2026:	e8 95 f1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    202b:	4c 89 ee             	mov    rsi,r13
    202e:	48 8d 3d 0b 40 00 00 	lea    rdi,[rip+0x400b]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2035:	e8 26 f1 ff ff       	call   1160 <_ZNSo9_M_insertImEERSoT_@plt>
    203a:	ba 07 00 00 00       	mov    edx,0x7
    203f:	48 8d 35 be 21 00 00 	lea    rsi,[rip+0x21be]        # 4204 <_IO_stdin_used+0x204>
    2046:	48 89 c7             	mov    rdi,rax
    2049:	48 89 c5             	mov    rbp,rax
    204c:	e8 6f f1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2051:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
    2055:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    2059:	4c 8b a4 05 f0 00 00 	mov    r12,QWORD PTR [rbp+rax*1+0xf0]
    2060:	00 
    2061:	4d 85 e4             	test   r12,r12
    2064:	0f 84 fc 12 00 00    	je     3366 <main+0x1f86>
    206a:	41 80 7c 24 38 00    	cmp    BYTE PTR [r12+0x38],0x0
    2070:	0f 84 18 05 00 00    	je     258e <main+0x11ae>
    2076:	41 0f b6 44 24 43    	movzx  eax,BYTE PTR [r12+0x43]
    207c:	0f be f0             	movsx  esi,al
    207f:	48 89 ef             	mov    rdi,rbp
    2082:	e8 a9 f0 ff ff       	call   1130 <_ZNSo3putEc@plt>
    2087:	48 89 c7             	mov    rdi,rax
    208a:	e8 e1 f0 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    208f:	ba 14 00 00 00       	mov    edx,0x14
    2094:	48 8d 35 71 21 00 00 	lea    rsi,[rip+0x2171]        # 420c <_IO_stdin_used+0x20c>
    209b:	48 8d 3d 9e 3f 00 00 	lea    rdi,[rip+0x3f9e]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    20a2:	e8 19 f1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    20a7:	c4 c1 f9 6e c6       	vmovq  xmm0,r14
    20ac:	48 8d 3d 8d 3f 00 00 	lea    rdi,[rip+0x3f8d]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    20b3:	e8 38 f1 ff ff       	call   11f0 <_ZNSo9_M_insertIdEERSoT_@plt>
    20b8:	ba 0e 00 00 00       	mov    edx,0xe
    20bd:	48 8d 35 5d 21 00 00 	lea    rsi,[rip+0x215d]        # 4221 <_IO_stdin_used+0x221>
    20c4:	48 89 c7             	mov    rdi,rax
    20c7:	48 89 c5             	mov    rbp,rax
    20ca:	e8 f1 f0 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    20cf:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
    20d3:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    20d7:	4c 8b a4 05 f0 00 00 	mov    r12,QWORD PTR [rbp+rax*1+0xf0]
    20de:	00 
    20df:	4d 85 e4             	test   r12,r12
    20e2:	0f 84 62 12 00 00    	je     334a <main+0x1f6a>
    20e8:	41 80 7c 24 38 00    	cmp    BYTE PTR [r12+0x38],0x0
    20ee:	0f 84 66 04 00 00    	je     255a <main+0x117a>
    20f4:	41 0f b6 44 24 43    	movzx  eax,BYTE PTR [r12+0x43]
    20fa:	0f be f0             	movsx  esi,al
    20fd:	48 89 ef             	mov    rdi,rbp
    2100:	e8 2b f0 ff ff       	call   1130 <_ZNSo3putEc@plt>
    2105:	48 89 c7             	mov    rdi,rax
    2108:	e8 63 f0 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    210d:	ba 32 00 00 00       	mov    edx,0x32
    2112:	48 8d 35 37 1f 00 00 	lea    rsi,[rip+0x1f37]        # 4050 <_IO_stdin_used+0x50>
    2119:	48 8d 3d 20 3f 00 00 	lea    rdi,[rip+0x3f20]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2120:	e8 9b f0 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2125:	48 8d 1d 14 3f 00 00 	lea    rbx,[rip+0x3f14]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    212c:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    212f:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    2133:	48 8b ac 03 f0 00 00 	mov    rbp,QWORD PTR [rbx+rax*1+0xf0]
    213a:	00 
    213b:	48 85 ed             	test   rbp,rbp
    213e:	0f 84 ea 11 00 00    	je     332e <main+0x1f4e>
    2144:	80 7d 38 00          	cmp    BYTE PTR [rbp+0x38],0x0
    2148:	0f 84 d8 03 00 00    	je     2526 <main+0x1146>
    214e:	0f b6 45 43          	movzx  eax,BYTE PTR [rbp+0x43]
    2152:	0f be f0             	movsx  esi,al
    2155:	48 8d 3d e4 3e 00 00 	lea    rdi,[rip+0x3ee4]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    215c:	e8 cf ef ff ff       	call   1130 <_ZNSo3putEc@plt>
    2161:	48 89 c7             	mov    rdi,rax
    2164:	e8 07 f0 ff ff       	call   1170 <_ZNSo5flushEv@plt>
    2169:	be 00 10 5e 5f       	mov    esi,0x5f5e1000
    216e:	4c 89 ff             	mov    rdi,r15
    2171:	e8 2a f0 ff ff       	call   11a0 <_ZdlPvm@plt>
    2176:	ff 4c 24 28          	dec    DWORD PTR [rsp+0x28]
    217a:	0f 85 72 f8 ff ff    	jne    19f2 <main+0x612>
    2180:	ba 17 00 00 00       	mov    edx,0x17
    2185:	48 8d 35 cb 20 00 00 	lea    rsi,[rip+0x20cb]        # 4257 <_IO_stdin_used+0x257>
    218c:	48 8d 3d ad 3e 00 00 	lea    rdi,[rip+0x3ead]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2193:	bd 01 00 00 00       	mov    ebp,0x1
    2198:	e8 23 f0 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    219d:	48 8d 3d 9c 3e 00 00 	lea    rdi,[rip+0x3e9c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    21a4:	e8 87 14 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    21a9:	ba 32 00 00 00       	mov    edx,0x32
    21ae:	48 8d 35 9b 1e 00 00 	lea    rsi,[rip+0x1e9b]        # 4050 <_IO_stdin_used+0x50>
    21b5:	48 8d 3d 84 3e 00 00 	lea    rdi,[rip+0x3e84]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    21bc:	e8 ff ef ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    21c1:	48 8d 3d 78 3e 00 00 	lea    rdi,[rip+0x3e78]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    21c8:	e8 63 14 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    21cd:	e8 6e ef ff ff       	call   1140 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    21d2:	be 40 42 0f 00       	mov    esi,0xf4240
    21d7:	48 99                	cqo
    21d9:	48 f7 fe             	idiv   rsi
    21dc:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    21e1:	48 ba 2d 7f 95 4c 2d 	movabs rdx,0x5851f42d4c957f2d
    21e8:	f4 51 58 
    21eb:	48 89 c1             	mov    rcx,rax
    21ee:	48 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rax
    21f5:	00 
    21f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    21fd:	00 00 00 
    2200:	48 89 c8             	mov    rax,rcx
    2203:	48 c1 e8 3e          	shr    rax,0x3e
    2207:	48 31 c8             	xor    rax,rcx
    220a:	48 0f af c2          	imul   rax,rdx
    220e:	48 8d 0c 28          	lea    rcx,[rax+rbp*1]
    2212:	48 89 0c ee          	mov    QWORD PTR [rsi+rbp*8],rcx
    2216:	48 ff c5             	inc    rbp
    2219:	48 81 fd 38 01 00 00 	cmp    rbp,0x138
    2220:	75 de                	jne    2200 <main+0xe20>
    2222:	48 8d 84 24 b0 00 00 	lea    rax,[rsp+0xb0]
    2229:	00 
    222a:	48 c7 84 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],0x138
    2231:	00 38 01 00 00 
    2236:	48 89 c7             	mov    rdi,rax
    2239:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    223e:	e8 8d 13 00 00       	call   35d0 <_ZNSt6vectorImSaImEEC1EmRKS0_.constprop.0>
    2243:	48 8d 84 24 d0 00 00 	lea    rax,[rsp+0xd0]
    224a:	00 
    224b:	48 89 c7             	mov    rdi,rax
    224e:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    2253:	e8 78 13 00 00       	call   35d0 <_ZNSt6vectorImSaImEEC1EmRKS0_.constprop.0>
    2258:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
    225f:	00 
    2260:	48 89 e9             	mov    rcx,rbp
    2263:	48 8b 9c 24 d0 00 00 	mov    rbx,QWORD PTR [rsp+0xd0]
    226a:	00 
    226b:	45 31 f6             	xor    r14d,r14d
    226e:	49 bd 55 55 55 55 55 	movabs r13,0x5555555555555555
    2275:	55 55 55 
    2278:	49 bc 00 00 a6 ed ff 	movabs r12,0x71d67fffeda60000
    227f:	7f d6 71 
    2282:	49 bf 00 00 00 00 e0 	movabs r15,0xfff7eee000000000
    2289:	ee f7 ff 
    228c:	48 89 c5             	mov    rbp,rax
    228f:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    2294:	e9 be 00 00 00       	jmp    2357 <main+0xf77>
    2299:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    22a0:	48 8b 84 cc f0 00 00 	mov    rax,QWORD PTR [rsp+rcx*8+0xf0]
    22a7:	00 
    22a8:	48 8d 71 01          	lea    rsi,[rcx+0x1]
    22ac:	48 89 b4 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],rsi
    22b3:	00 
    22b4:	48 89 c1             	mov    rcx,rax
    22b7:	48 c1 e9 1d          	shr    rcx,0x1d
    22bb:	4c 21 e9             	and    rcx,r13
    22be:	48 31 c8             	xor    rax,rcx
    22c1:	48 89 c1             	mov    rcx,rax
    22c4:	48 c1 e1 11          	shl    rcx,0x11
    22c8:	4c 21 e1             	and    rcx,r12
    22cb:	48 31 c8             	xor    rax,rcx
    22ce:	48 89 c1             	mov    rcx,rax
    22d1:	48 c1 e1 25          	shl    rcx,0x25
    22d5:	4c 21 f9             	and    rcx,r15
    22d8:	48 31 c8             	xor    rax,rcx
    22db:	48 89 c1             	mov    rcx,rax
    22de:	48 c1 e9 2b          	shr    rcx,0x2b
    22e2:	48 31 c8             	xor    rax,rcx
    22e5:	4a 89 44 35 00       	mov    QWORD PTR [rbp+r14*1+0x0],rax
    22ea:	48 81 fe 37 01 00 00 	cmp    rsi,0x137
    22f1:	0f 87 89 00 00 00    	ja     2380 <main+0xfa0>
    22f7:	48 8b 84 f4 f0 00 00 	mov    rax,QWORD PTR [rsp+rsi*8+0xf0]
    22fe:	00 
    22ff:	48 8d 4e 01          	lea    rcx,[rsi+0x1]
    2303:	48 89 8c 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],rcx
    230a:	00 
    230b:	48 89 c6             	mov    rsi,rax
    230e:	48 c1 ee 1d          	shr    rsi,0x1d
    2312:	4c 21 ee             	and    rsi,r13
    2315:	48 31 f0             	xor    rax,rsi
    2318:	48 89 c6             	mov    rsi,rax
    231b:	48 c1 e6 11          	shl    rsi,0x11
    231f:	4c 21 e6             	and    rsi,r12
    2322:	48 31 f0             	xor    rax,rsi
    2325:	48 89 c6             	mov    rsi,rax
    2328:	48 c1 e6 25          	shl    rsi,0x25
    232c:	4c 21 fe             	and    rsi,r15
    232f:	48 31 f0             	xor    rax,rsi
    2332:	48 89 c6             	mov    rsi,rax
    2335:	48 c1 ee 2b          	shr    rsi,0x2b
    2339:	48 31 f0             	xor    rax,rsi
    233c:	89 c0                	mov    eax,eax
    233e:	48 0f af c0          	imul   rax,rax
    2342:	4a 89 04 33          	mov    QWORD PTR [rbx+r14*1],rax
    2346:	49 83 c6 08          	add    r14,0x8
    234a:	49 81 fe 00 08 af 2f 	cmp    r14,0x2faf0800
    2351:	0f 84 9f 02 00 00    	je     25f6 <main+0x1216>
    2357:	48 81 f9 37 01 00 00 	cmp    rcx,0x137
    235e:	0f 86 3c ff ff ff    	jbe    22a0 <main+0xec0>
    2364:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    2369:	e8 b2 13 00 00       	call   3720 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    236e:	48 8b 8c 24 b0 0a 00 	mov    rcx,QWORD PTR [rsp+0xab0]
    2375:	00 
    2376:	e9 25 ff ff ff       	jmp    22a0 <main+0xec0>
    237b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2380:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    2385:	e8 96 13 00 00       	call   3720 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    238a:	48 8b b4 24 b0 0a 00 	mov    rsi,QWORD PTR [rsp+0xab0]
    2391:	00 
    2392:	e9 60 ff ff ff       	jmp    22f7 <main+0xf17>
    2397:	4c 89 ef             	mov    rdi,r13
    239a:	e8 31 ee ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    239f:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    23a3:	48 8d 15 06 13 00 00 	lea    rdx,[rip+0x1306]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    23aa:	be 0a 00 00 00       	mov    esi,0xa
    23af:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    23b3:	48 39 d0             	cmp    rax,rdx
    23b6:	0f 84 b9 f5 ff ff    	je     1975 <main+0x595>
    23bc:	4c 89 ef             	mov    rdi,r13
    23bf:	ff d0                	call   rax
    23c1:	0f be f0             	movsx  esi,al
    23c4:	e9 ac f5 ff ff       	jmp    1975 <main+0x595>
    23c9:	4c 89 f7             	mov    rdi,r14
    23cc:	e8 ff ed ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    23d1:	49 8b 06             	mov    rax,QWORD PTR [r14]
    23d4:	48 8d 15 d5 12 00 00 	lea    rdx,[rip+0x12d5]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    23db:	be 0a 00 00 00       	mov    esi,0xa
    23e0:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    23e4:	48 39 d0             	cmp    rax,rdx
    23e7:	0f 84 31 f5 ff ff    	je     191e <main+0x53e>
    23ed:	4c 89 f7             	mov    rdi,r14
    23f0:	ff d0                	call   rax
    23f2:	0f be f0             	movsx  esi,al
    23f5:	e9 24 f5 ff ff       	jmp    191e <main+0x53e>
    23fa:	4c 89 f7             	mov    rdi,r14
    23fd:	e8 ce ed ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2402:	49 8b 06             	mov    rax,QWORD PTR [r14]
    2405:	48 8d 15 a4 12 00 00 	lea    rdx,[rip+0x12a4]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    240c:	be 0a 00 00 00       	mov    esi,0xa
    2411:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    2415:	48 39 d0             	cmp    rax,rdx
    2418:	0f 84 86 f4 ff ff    	je     18a4 <main+0x4c4>
    241e:	4c 89 f7             	mov    rdi,r14
    2421:	ff d0                	call   rax
    2423:	0f be f0             	movsx  esi,al
    2426:	e9 79 f4 ff ff       	jmp    18a4 <main+0x4c4>
    242b:	4c 89 ff             	mov    rdi,r15
    242e:	e8 9d ed ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2433:	49 8b 07             	mov    rax,QWORD PTR [r15]
    2436:	48 8d 15 73 12 00 00 	lea    rdx,[rip+0x1273]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    243d:	be 0a 00 00 00       	mov    esi,0xa
    2442:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    2446:	48 39 d0             	cmp    rax,rdx
    2449:	0f 84 de f3 ff ff    	je     182d <main+0x44d>
    244f:	4c 89 ff             	mov    rdi,r15
    2452:	ff d0                	call   rax
    2454:	0f be f0             	movsx  esi,al
    2457:	e9 d1 f3 ff ff       	jmp    182d <main+0x44d>
    245c:	4c 89 ff             	mov    rdi,r15
    245f:	e8 6c ed ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2464:	49 8b 07             	mov    rax,QWORD PTR [r15]
    2467:	48 8d 15 42 12 00 00 	lea    rdx,[rip+0x1242]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    246e:	be 0a 00 00 00       	mov    esi,0xa
    2473:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    2477:	48 39 d0             	cmp    rax,rdx
    247a:	0f 84 34 f3 ff ff    	je     17b4 <main+0x3d4>
    2480:	4c 89 ff             	mov    rdi,r15
    2483:	ff d0                	call   rax
    2485:	0f be f0             	movsx  esi,al
    2488:	e9 27 f3 ff ff       	jmp    17b4 <main+0x3d4>
    248d:	4c 89 ff             	mov    rdi,r15
    2490:	e8 3b ed ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2495:	49 8b 07             	mov    rax,QWORD PTR [r15]
    2498:	48 8d 15 11 12 00 00 	lea    rdx,[rip+0x1211]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    249f:	be 0a 00 00 00       	mov    esi,0xa
    24a4:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    24a8:	48 39 d0             	cmp    rax,rdx
    24ab:	0f 84 9b f2 ff ff    	je     174c <main+0x36c>
    24b1:	4c 89 ff             	mov    rdi,r15
    24b4:	ff d0                	call   rax
    24b6:	0f be f0             	movsx  esi,al
    24b9:	e9 8e f2 ff ff       	jmp    174c <main+0x36c>
    24be:	4c 89 e7             	mov    rdi,r12
    24c1:	e8 0a ed ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    24c6:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    24ca:	48 8d 0d df 11 00 00 	lea    rcx,[rip+0x11df]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    24d1:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    24d5:	b8 0a 00 00 00       	mov    eax,0xa
    24da:	48 39 ca             	cmp    rdx,rcx
    24dd:	0f 84 9f fa ff ff    	je     1f82 <main+0xba2>
    24e3:	be 0a 00 00 00       	mov    esi,0xa
    24e8:	4c 89 e7             	mov    rdi,r12
    24eb:	ff d2                	call   rdx
    24ed:	e9 90 fa ff ff       	jmp    1f82 <main+0xba2>
    24f2:	48 89 ef             	mov    rdi,rbp
    24f5:	e8 d6 ec ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    24fa:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
    24fe:	48 8d 0d ab 11 00 00 	lea    rcx,[rip+0x11ab]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    2505:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    2509:	b8 0a 00 00 00       	mov    eax,0xa
    250e:	48 39 ca             	cmp    rdx,rcx
    2511:	0f 84 fe f9 ff ff    	je     1f15 <main+0xb35>
    2517:	be 0a 00 00 00       	mov    esi,0xa
    251c:	48 89 ef             	mov    rdi,rbp
    251f:	ff d2                	call   rdx
    2521:	e9 ef f9 ff ff       	jmp    1f15 <main+0xb35>
    2526:	48 89 ef             	mov    rdi,rbp
    2529:	e8 a2 ec ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    252e:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
    2532:	48 8d 0d 77 11 00 00 	lea    rcx,[rip+0x1177]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    2539:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    253d:	b8 0a 00 00 00       	mov    eax,0xa
    2542:	48 39 ca             	cmp    rdx,rcx
    2545:	0f 84 07 fc ff ff    	je     2152 <main+0xd72>
    254b:	be 0a 00 00 00       	mov    esi,0xa
    2550:	48 89 ef             	mov    rdi,rbp
    2553:	ff d2                	call   rdx
    2555:	e9 f8 fb ff ff       	jmp    2152 <main+0xd72>
    255a:	4c 89 e7             	mov    rdi,r12
    255d:	e8 6e ec ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2562:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    2566:	48 8d 0d 43 11 00 00 	lea    rcx,[rip+0x1143]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    256d:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    2571:	b8 0a 00 00 00       	mov    eax,0xa
    2576:	48 39 ca             	cmp    rdx,rcx
    2579:	0f 84 7b fb ff ff    	je     20fa <main+0xd1a>
    257f:	be 0a 00 00 00       	mov    esi,0xa
    2584:	4c 89 e7             	mov    rdi,r12
    2587:	ff d2                	call   rdx
    2589:	e9 6c fb ff ff       	jmp    20fa <main+0xd1a>
    258e:	4c 89 e7             	mov    rdi,r12
    2591:	e8 3a ec ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2596:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    259a:	48 8d 0d 0f 11 00 00 	lea    rcx,[rip+0x110f]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    25a1:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    25a5:	b8 0a 00 00 00       	mov    eax,0xa
    25aa:	48 39 ca             	cmp    rdx,rcx
    25ad:	0f 84 c9 fa ff ff    	je     207c <main+0xc9c>
    25b3:	be 0a 00 00 00       	mov    esi,0xa
    25b8:	4c 89 e7             	mov    rdi,r12
    25bb:	ff d2                	call   rdx
    25bd:	e9 ba fa ff ff       	jmp    207c <main+0xc9c>
    25c2:	4c 89 e7             	mov    rdi,r12
    25c5:	e8 06 ec ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    25ca:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    25ce:	48 8d 0d db 10 00 00 	lea    rcx,[rip+0x10db]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    25d5:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    25d9:	b8 0a 00 00 00       	mov    eax,0xa
    25de:	48 39 ca             	cmp    rdx,rcx
    25e1:	0f 84 19 fa ff ff    	je     2000 <main+0xc20>
    25e7:	be 0a 00 00 00       	mov    esi,0xa
    25ec:	4c 89 e7             	mov    rdi,r12
    25ef:	ff d2                	call   rdx
    25f1:	e9 0a fa ff ff       	jmp    2000 <main+0xc20>
    25f6:	45 31 ed             	xor    r13d,r13d
    25f9:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    25fe:	0f 31                	rdtsc
    2600:	4c 8b 6c 24 10       	mov    r13,QWORD PTR [rsp+0x10]
    2605:	48 89 c5             	mov    rbp,rax
    2608:	49 bf 13 02 03 02 12 	movabs r15,0x202021202030213
    260f:	02 02 02 
    2612:	49 b9 11 04 41 10 04 	movabs r9,0x410410410410411
    2619:	41 10 04 
    261c:	49 b8 93 02 45 12 30 	movabs r8,0x402483012450293
    2623:	48 02 04 
    2626:	48 c1 e2 20          	shl    rdx,0x20
    262a:	48 09 d5             	or     rbp,rdx
    262d:	49 8d 8d 00 08 af 2f 	lea    rcx,[r13+0x2faf0800]
    2634:	49 89 ce             	mov    r14,rcx
    2637:	eb 21                	jmp    265a <main+0x127a>
    2639:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2640:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    2645:	49 83 c5 08          	add    r13,0x8
    2649:	48 01 d0             	add    rax,rdx
    264c:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    2651:	4d 39 f5             	cmp    r13,r14
    2654:	0f 84 87 00 00 00    	je     26e1 <main+0x1301>
    265a:	4d 8b 65 00          	mov    r12,QWORD PTR [r13+0x0]
    265e:	44 89 e0             	mov    eax,r12d
    2661:	c4 c2 fb f7 c7       	shrx   rax,r15,rax
    2666:	83 e0 01             	and    eax,0x1
    2669:	74 d5                	je     2640 <main+0x1260>
    266b:	4c 89 e0             	mov    rax,r12
    266e:	49 f7 e1             	mul    r9
    2671:	4c 89 e0             	mov    rax,r12
    2674:	48 29 d0             	sub    rax,rdx
    2677:	48 d1 e8             	shr    rax,1
    267a:	48 01 c2             	add    rdx,rax
    267d:	4c 89 e0             	mov    rax,r12
    2680:	48 c1 ea 05          	shr    rdx,0x5
    2684:	48 89 d6             	mov    rsi,rdx
    2687:	48 c1 e6 06          	shl    rsi,0x6
    268b:	48 29 d6             	sub    rsi,rdx
    268e:	48 29 f0             	sub    rax,rsi
    2691:	c4 c2 fb f7 c0       	shrx   rax,r8,rax
    2696:	83 e0 01             	and    eax,0x1
    2699:	74 a5                	je     2640 <main+0x1260>
    269b:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    269f:	62 d1 c7 08 7b c4    	vcvtusi2sd xmm0,xmm7,r12
    26a5:	e8 d6 ea ff ff       	call   1180 <sqrt@plt>
    26aa:	49 b9 11 04 41 10 04 	movabs r9,0x410410410410411
    26b1:	41 10 04 
    26b4:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    26ba:	48 89 fe             	mov    rsi,rdi
    26bd:	49 b8 93 02 45 12 30 	movabs r8,0x402483012450293
    26c4:	48 02 04 
    26c7:	48 0f af f7          	imul   rsi,rdi
    26cb:	49 39 f4             	cmp    r12,rsi
    26ce:	0f 88 62 ec ff ff    	js     1336 <main.cold+0xf5>
    26d4:	31 c0                	xor    eax,eax
    26d6:	49 39 f4             	cmp    r12,rsi
    26d9:	0f 94 c0             	sete   al
    26dc:	e9 5f ff ff ff       	jmp    2640 <main+0x1260>
    26e1:	0f 31                	rdtsc
    26e3:	48 c1 e2 20          	shl    rdx,0x20
    26e7:	48 89 c6             	mov    rsi,rax
    26ea:	45 31 e4             	xor    r12d,r12d
    26ed:	48 09 d6             	or     rsi,rdx
    26f0:	4c 89 64 24 78       	mov    QWORD PTR [rsp+0x78],r12
    26f5:	0f 31                	rdtsc
    26f7:	48 c1 e2 20          	shl    rdx,0x20
    26fb:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    2700:	49 89 c5             	mov    r13,rax
    2703:	49 89 dc             	mov    r12,rbx
    2706:	4c 8d bb 00 08 af 2f 	lea    r15,[rbx+0x2faf0800]
    270d:	49 be 13 02 03 02 12 	movabs r14,0x202021202030213
    2714:	02 02 02 
    2717:	49 09 d5             	or     r13,rdx
    271a:	49 b8 11 04 41 10 04 	movabs r8,0x410410410410411
    2721:	41 10 04 
    2724:	48 b9 93 02 45 12 30 	movabs rcx,0x402483012450293
    272b:	48 02 04 
    272e:	eb 1a                	jmp    274a <main+0x136a>
    2730:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
    2735:	49 83 c4 08          	add    r12,0x8
    2739:	48 01 d0             	add    rax,rdx
    273c:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    2741:	4d 39 fc             	cmp    r12,r15
    2744:	0f 84 86 00 00 00    	je     27d0 <main+0x13f0>
    274a:	49 8b 1c 24          	mov    rbx,QWORD PTR [r12]
    274e:	89 d8                	mov    eax,ebx
    2750:	c4 c2 fb f7 c6       	shrx   rax,r14,rax
    2755:	83 e0 01             	and    eax,0x1
    2758:	74 d6                	je     2730 <main+0x1350>
    275a:	48 89 d8             	mov    rax,rbx
    275d:	49 f7 e0             	mul    r8
    2760:	48 89 d8             	mov    rax,rbx
    2763:	48 29 d0             	sub    rax,rdx
    2766:	48 d1 e8             	shr    rax,1
    2769:	48 01 c2             	add    rdx,rax
    276c:	48 89 d8             	mov    rax,rbx
    276f:	48 c1 ea 05          	shr    rdx,0x5
    2773:	48 89 d6             	mov    rsi,rdx
    2776:	48 c1 e6 06          	shl    rsi,0x6
    277a:	48 29 d6             	sub    rsi,rdx
    277d:	48 29 f0             	sub    rax,rsi
    2780:	c4 e2 fb f7 c1       	shrx   rax,rcx,rax
    2785:	83 e0 01             	and    eax,0x1
    2788:	74 a6                	je     2730 <main+0x1350>
    278a:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    278e:	62 f1 cf 08 7b c3    	vcvtusi2sd xmm0,xmm6,rbx
    2794:	e8 e7 e9 ff ff       	call   1180 <sqrt@plt>
    2799:	49 b8 11 04 41 10 04 	movabs r8,0x410410410410411
    27a0:	41 10 04 
    27a3:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    27a9:	48 89 fe             	mov    rsi,rdi
    27ac:	48 b9 93 02 45 12 30 	movabs rcx,0x402483012450293
    27b3:	48 02 04 
    27b6:	48 0f af f7          	imul   rsi,rdi
    27ba:	48 39 f3             	cmp    rbx,rsi
    27bd:	0f 88 98 ea ff ff    	js     125b <main.cold+0x1a>
    27c3:	31 c0                	xor    eax,eax
    27c5:	48 39 f3             	cmp    rbx,rsi
    27c8:	0f 94 c0             	sete   al
    27cb:	e9 60 ff ff ff       	jmp    2730 <main+0x1350>
    27d0:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
    27d5:	0f 31                	rdtsc
    27d7:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    27db:	48 c1 e2 20          	shl    rdx,0x20
    27df:	48 29 ee             	sub    rsi,rbp
    27e2:	48 09 d0             	or     rax,rdx
    27e5:	48 8d 3d 54 38 00 00 	lea    rdi,[rip+0x3854]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    27ec:	ba 29 00 00 00       	mov    edx,0x29
    27f1:	62 f1 c7 08 7b c6    	vcvtusi2sd xmm0,xmm7,rsi
    27f7:	4c 29 e8             	sub    rax,r13
    27fa:	48 8d 35 a7 18 00 00 	lea    rsi,[rip+0x18a7]        # 40a8 <_IO_stdin_used+0xa8>
    2801:	c5 fb 5e 35 97 1a 00 	vdivsd xmm6,xmm0,QWORD PTR [rip+0x1a97]        # 42a0 <_IO_stdin_used+0x2a0>
    2808:	00 
    2809:	62 f1 c7 08 7b c0    	vcvtusi2sd xmm0,xmm7,rax
    280f:	c4 e1 f9 7e f5       	vmovq  rbp,xmm6
    2814:	c5 fb 5e 3d 84 1a 00 	vdivsd xmm7,xmm0,QWORD PTR [rip+0x1a84]        # 42a0 <_IO_stdin_used+0x2a0>
    281b:	00 
    281c:	c4 c1 f9 7e fc       	vmovq  r12,xmm7
    2821:	e8 9a e9 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2826:	48 8d 3d 13 38 00 00 	lea    rdi,[rip+0x3813]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    282d:	e8 fe 0d 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2832:	ba 24 00 00 00       	mov    edx,0x24
    2837:	48 8d 35 9a 18 00 00 	lea    rsi,[rip+0x189a]        # 40d8 <_IO_stdin_used+0xd8>
    283e:	48 8d 3d fb 37 00 00 	lea    rdi,[rip+0x37fb]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2845:	e8 76 e9 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    284a:	c4 e1 f9 6e c5       	vmovq  xmm0,rbp
    284f:	48 8d 3d ea 37 00 00 	lea    rdi,[rip+0x37ea]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2856:	e8 95 e9 ff ff       	call   11f0 <_ZNSo9_M_insertIdEERSoT_@plt>
    285b:	ba 16 00 00 00       	mov    edx,0x16
    2860:	48 8d 35 08 1a 00 00 	lea    rsi,[rip+0x1a08]        # 426f <_IO_stdin_used+0x26f>
    2867:	48 89 c7             	mov    rdi,rax
    286a:	48 89 c5             	mov    rbp,rax
    286d:	e8 4e e9 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2872:	48 8b 74 24 70       	mov    rsi,QWORD PTR [rsp+0x70]
    2877:	48 89 ef             	mov    rdi,rbp
    287a:	e8 e1 e8 ff ff       	call   1160 <_ZNSo9_M_insertImEERSoT_@plt>
    287f:	ba 01 00 00 00       	mov    edx,0x1
    2884:	48 8d 35 62 19 00 00 	lea    rsi,[rip+0x1962]        # 41ed <_IO_stdin_used+0x1ed>
    288b:	48 89 c7             	mov    rdi,rax
    288e:	48 89 c5             	mov    rbp,rax
    2891:	e8 2a e9 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2896:	48 89 ef             	mov    rdi,rbp
    2899:	e8 92 0d 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    289e:	ba 24 00 00 00       	mov    edx,0x24
    28a3:	48 8d 35 56 18 00 00 	lea    rsi,[rip+0x1856]        # 4100 <_IO_stdin_used+0x100>
    28aa:	48 8d 3d 8f 37 00 00 	lea    rdi,[rip+0x378f]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    28b1:	e8 0a e9 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    28b6:	c4 c1 f9 6e c4       	vmovq  xmm0,r12
    28bb:	48 8d 3d 7e 37 00 00 	lea    rdi,[rip+0x377e]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    28c2:	e8 29 e9 ff ff       	call   11f0 <_ZNSo9_M_insertIdEERSoT_@plt>
    28c7:	ba 16 00 00 00       	mov    edx,0x16
    28cc:	48 8d 35 9c 19 00 00 	lea    rsi,[rip+0x199c]        # 426f <_IO_stdin_used+0x26f>
    28d3:	48 89 c7             	mov    rdi,rax
    28d6:	48 89 c5             	mov    rbp,rax
    28d9:	e8 e2 e8 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    28de:	48 8b 74 24 78       	mov    rsi,QWORD PTR [rsp+0x78]
    28e3:	48 89 ef             	mov    rdi,rbp
    28e6:	e8 75 e8 ff ff       	call   1160 <_ZNSo9_M_insertImEERSoT_@plt>
    28eb:	ba 01 00 00 00       	mov    edx,0x1
    28f0:	48 8d 35 f6 18 00 00 	lea    rsi,[rip+0x18f6]        # 41ed <_IO_stdin_used+0x1ed>
    28f7:	48 89 c7             	mov    rdi,rax
    28fa:	48 89 c5             	mov    rbp,rax
    28fd:	e8 be e8 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2902:	48 89 ef             	mov    rdi,rbp
    2905:	e8 26 0d 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    290a:	ba 32 00 00 00       	mov    edx,0x32
    290f:	48 8d 35 3a 17 00 00 	lea    rsi,[rip+0x173a]        # 4050 <_IO_stdin_used+0x50>
    2916:	48 8d 3d 23 37 00 00 	lea    rdi,[rip+0x3723]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    291d:	e8 9e e8 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2922:	48 8d 3d 17 37 00 00 	lea    rdi,[rip+0x3717]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2929:	e8 02 0d 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    292e:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    2933:	41 bc 01 00 00 00    	mov    r12d,0x1
    2939:	e8 82 0d 00 00       	call   36c0 <_ZNSt6vectorImSaImEED1Ev>
    293e:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    2943:	e8 78 0d 00 00       	call   36c0 <_ZNSt6vectorImSaImEED1Ev>
    2948:	ba 18 00 00 00       	mov    edx,0x18
    294d:	48 8d 35 32 19 00 00 	lea    rsi,[rip+0x1932]        # 4286 <_IO_stdin_used+0x286>
    2954:	48 8d 3d e5 36 00 00 	lea    rdi,[rip+0x36e5]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    295b:	e8 60 e8 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2960:	48 8d 3d d9 36 00 00 	lea    rdi,[rip+0x36d9]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2967:	e8 c4 0c 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    296c:	ba 32 00 00 00       	mov    edx,0x32
    2971:	48 8d 35 d8 16 00 00 	lea    rsi,[rip+0x16d8]        # 4050 <_IO_stdin_used+0x50>
    2978:	48 8d 3d c1 36 00 00 	lea    rdi,[rip+0x36c1]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    297f:	e8 3c e8 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2984:	48 8d 3d b5 36 00 00 	lea    rdi,[rip+0x36b5]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    298b:	e8 a0 0c 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2990:	e8 ab e7 ff ff       	call   1140 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    2995:	be 40 42 0f 00       	mov    esi,0xf4240
    299a:	48 99                	cqo
    299c:	48 f7 fe             	idiv   rsi
    299f:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    29a4:	48 ba 2d 7f 95 4c 2d 	movabs rdx,0x5851f42d4c957f2d
    29ab:	f4 51 58 
    29ae:	48 89 c1             	mov    rcx,rax
    29b1:	48 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rax
    29b8:	00 
    29b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    29c0:	48 89 c8             	mov    rax,rcx
    29c3:	48 c1 e8 3e          	shr    rax,0x3e
    29c7:	48 31 c8             	xor    rax,rcx
    29ca:	48 0f af c2          	imul   rax,rdx
    29ce:	49 8d 0c 04          	lea    rcx,[r12+rax*1]
    29d2:	4a 89 0c e6          	mov    QWORD PTR [rsi+r12*8],rcx
    29d6:	49 ff c4             	inc    r12
    29d9:	49 81 fc 38 01 00 00 	cmp    r12,0x138
    29e0:	75 de                	jne    29c0 <main+0x15e0>
    29e2:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    29e7:	48 c7 84 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],0x138
    29ee:	00 38 01 00 00 
    29f3:	e8 78 0b 00 00       	call   3570 <_ZNSt6vectorIoSaIoEEC1EmRKS0_.constprop.0>
    29f8:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    29fd:	e8 6e 0b 00 00       	call   3570 <_ZNSt6vectorIoSaIoEEC1EmRKS0_.constprop.0>
    2a02:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
    2a09:	00 
    2a0a:	4c 89 e6             	mov    rsi,r12
    2a0d:	48 8b 9c 24 b0 00 00 	mov    rbx,QWORD PTR [rsp+0xb0]
    2a14:	00 
    2a15:	45 31 f6             	xor    r14d,r14d
    2a18:	48 bd 55 55 55 55 55 	movabs rbp,0x5555555555555555
    2a1f:	55 55 55 
    2a22:	49 bd 00 00 a6 ed ff 	movabs r13,0x71d67fffeda60000
    2a29:	7f d6 71 
    2a2c:	49 bf 00 00 00 00 e0 	movabs r15,0xfff7eee000000000
    2a33:	ee f7 ff 
    2a36:	49 89 c4             	mov    r12,rax
    2a39:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    2a3e:	e9 18 01 00 00       	jmp    2b5b <main+0x177b>
    2a43:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2a4a:	00 00 00 00 
    2a4e:	66 90                	xchg   ax,ax
    2a50:	48 8b 84 f4 f0 00 00 	mov    rax,QWORD PTR [rsp+rsi*8+0xf0]
    2a57:	00 
    2a58:	4c 8d 46 01          	lea    r8,[rsi+0x1]
    2a5c:	4c 89 84 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],r8
    2a63:	00 
    2a64:	48 89 c2             	mov    rdx,rax
    2a67:	48 c1 ea 1d          	shr    rdx,0x1d
    2a6b:	48 21 ea             	and    rdx,rbp
    2a6e:	48 31 d0             	xor    rax,rdx
    2a71:	48 89 c2             	mov    rdx,rax
    2a74:	48 c1 e2 11          	shl    rdx,0x11
    2a78:	4c 21 ea             	and    rdx,r13
    2a7b:	48 31 d0             	xor    rax,rdx
    2a7e:	48 89 c2             	mov    rdx,rax
    2a81:	48 c1 e2 25          	shl    rdx,0x25
    2a85:	4c 21 fa             	and    rdx,r15
    2a88:	48 31 d0             	xor    rax,rdx
    2a8b:	48 89 c2             	mov    rdx,rax
    2a8e:	48 c1 ea 2b          	shr    rdx,0x2b
    2a92:	48 31 c2             	xor    rdx,rax
    2a95:	49 81 f8 37 01 00 00 	cmp    r8,0x137
    2a9c:	0f 87 fe 00 00 00    	ja     2ba0 <main+0x17c0>
    2aa2:	4a 8b 84 c4 f0 00 00 	mov    rax,QWORD PTR [rsp+r8*8+0xf0]
    2aa9:	00 
    2aaa:	49 8d 78 01          	lea    rdi,[r8+0x1]
    2aae:	4a 89 54 33 08       	mov    QWORD PTR [rbx+r14*1+0x8],rdx
    2ab3:	48 89 bc 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],rdi
    2aba:	00 
    2abb:	48 89 c6             	mov    rsi,rax
    2abe:	48 c1 ee 1d          	shr    rsi,0x1d
    2ac2:	48 21 ee             	and    rsi,rbp
    2ac5:	48 31 f0             	xor    rax,rsi
    2ac8:	48 89 c6             	mov    rsi,rax
    2acb:	48 c1 e6 11          	shl    rsi,0x11
    2acf:	4c 21 ee             	and    rsi,r13
    2ad2:	48 31 f0             	xor    rax,rsi
    2ad5:	48 89 c6             	mov    rsi,rax
    2ad8:	48 c1 e6 25          	shl    rsi,0x25
    2adc:	4c 21 fe             	and    rsi,r15
    2adf:	48 31 f0             	xor    rax,rsi
    2ae2:	48 89 c6             	mov    rsi,rax
    2ae5:	48 c1 ee 2b          	shr    rsi,0x2b
    2ae9:	48 31 f0             	xor    rax,rsi
    2aec:	4a 89 04 33          	mov    QWORD PTR [rbx+r14*1],rax
    2af0:	48 81 ff 37 01 00 00 	cmp    rdi,0x137
    2af7:	0f 87 83 00 00 00    	ja     2b80 <main+0x17a0>
    2afd:	48 8b 84 fc f0 00 00 	mov    rax,QWORD PTR [rsp+rdi*8+0xf0]
    2b04:	00 
    2b05:	48 8d 77 01          	lea    rsi,[rdi+0x1]
    2b09:	48 89 b4 24 b0 0a 00 	mov    QWORD PTR [rsp+0xab0],rsi
    2b10:	00 
    2b11:	48 89 c2             	mov    rdx,rax
    2b14:	48 c1 ea 1d          	shr    rdx,0x1d
    2b18:	48 21 ea             	and    rdx,rbp
    2b1b:	48 31 d0             	xor    rax,rdx
    2b1e:	48 89 c2             	mov    rdx,rax
    2b21:	48 c1 e2 11          	shl    rdx,0x11
    2b25:	4c 21 ea             	and    rdx,r13
    2b28:	48 31 d0             	xor    rax,rdx
    2b2b:	48 89 c2             	mov    rdx,rax
    2b2e:	48 c1 e2 25          	shl    rdx,0x25
    2b32:	4c 21 fa             	and    rdx,r15
    2b35:	48 31 d0             	xor    rax,rdx
    2b38:	48 89 c2             	mov    rdx,rax
    2b3b:	48 c1 ea 2b          	shr    rdx,0x2b
    2b3f:	48 31 d0             	xor    rax,rdx
    2b42:	48 f7 e0             	mul    rax
    2b45:	4b 89 04 34          	mov    QWORD PTR [r12+r14*1],rax
    2b49:	4b 89 54 34 08       	mov    QWORD PTR [r12+r14*1+0x8],rdx
    2b4e:	49 83 c6 10          	add    r14,0x10
    2b52:	49 81 fe 00 10 5e 5f 	cmp    r14,0x5f5e1000
    2b59:	74 66                	je     2bc1 <main+0x17e1>
    2b5b:	48 81 fe 37 01 00 00 	cmp    rsi,0x137
    2b62:	0f 86 e8 fe ff ff    	jbe    2a50 <main+0x1670>
    2b68:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    2b6d:	e8 ae 0b 00 00       	call   3720 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    2b72:	48 8b b4 24 b0 0a 00 	mov    rsi,QWORD PTR [rsp+0xab0]
    2b79:	00 
    2b7a:	e9 d1 fe ff ff       	jmp    2a50 <main+0x1670>
    2b7f:	90                   	nop
    2b80:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    2b85:	e8 96 0b 00 00       	call   3720 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    2b8a:	48 8b bc 24 b0 0a 00 	mov    rdi,QWORD PTR [rsp+0xab0]
    2b91:	00 
    2b92:	e9 66 ff ff ff       	jmp    2afd <main+0x171d>
    2b97:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    2b9e:	00 00 
    2ba0:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    2ba5:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
    2baa:	e8 71 0b 00 00       	call   3720 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    2baf:	4c 8b 84 24 b0 0a 00 	mov    r8,QWORD PTR [rsp+0xab0]
    2bb6:	00 
    2bb7:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    2bbc:	e9 e1 fe ff ff       	jmp    2aa2 <main+0x16c2>
    2bc1:	45 31 db             	xor    r11d,r11d
    2bc4:	4c 89 9c 24 80 00 00 	mov    QWORD PTR [rsp+0x80],r11
    2bcb:	00 
    2bcc:	0f 31                	rdtsc
    2bce:	48 c1 e2 20          	shl    rdx,0x20
    2bd2:	4c 8d 93 00 10 5e 5f 	lea    r10,[rbx+0x5f5e1000]
    2bd9:	48 09 d0             	or     rax,rdx
    2bdc:	49 bf 13 02 03 02 12 	movabs r15,0x202021202030213
    2be3:	02 02 02 
    2be6:	49 bc ff ff ff ff ff 	movabs r12,0xfffffffffffffff
    2bed:	ff ff 0f 
    2bf0:	49 bd 11 04 41 10 04 	movabs r13,0x410410410410411
    2bf7:	41 10 04 
    2bfa:	49 be 93 02 45 12 30 	movabs r14,0x402483012450293
    2c01:	48 02 04 
    2c04:	4c 89 d5             	mov    rbp,r10
    2c07:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    2c0c:	eb 22                	jmp    2c30 <main+0x1850>
    2c0e:	66 90                	xchg   ax,ax
    2c10:	48 8b 94 24 80 00 00 	mov    rdx,QWORD PTR [rsp+0x80]
    2c17:	00 
    2c18:	48 83 c3 10          	add    rbx,0x10
    2c1c:	48 01 d0             	add    rax,rdx
    2c1f:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
    2c26:	00 
    2c27:	48 39 eb             	cmp    rbx,rbp
    2c2a:	0f 84 68 01 00 00    	je     2d98 <main+0x19b8>
    2c30:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    2c33:	4c 8b 4b 08          	mov    r9,QWORD PTR [rbx+0x8]
    2c37:	44 89 c0             	mov    eax,r8d
    2c3a:	c4 c2 fb f7 c7       	shrx   rax,r15,rax
    2c3f:	83 e0 01             	and    eax,0x1
    2c42:	74 cc                	je     2c10 <main+0x1830>
    2c44:	4c 89 c0             	mov    rax,r8
    2c47:	4c 89 c1             	mov    rcx,r8
    2c4a:	4c 0f ac c8 3c       	shrd   rax,r9,0x3c
    2c4f:	4c 21 e1             	and    rcx,r12
    2c52:	4c 21 e0             	and    rax,r12
    2c55:	48 01 c1             	add    rcx,rax
    2c58:	4c 89 c8             	mov    rax,r9
    2c5b:	48 c1 e8 38          	shr    rax,0x38
    2c5f:	48 01 c1             	add    rcx,rax
    2c62:	48 89 c8             	mov    rax,rcx
    2c65:	49 f7 e5             	mul    r13
    2c68:	48 89 c8             	mov    rax,rcx
    2c6b:	48 29 d0             	sub    rax,rdx
    2c6e:	48 d1 e8             	shr    rax,1
    2c71:	48 01 c2             	add    rdx,rax
    2c74:	48 c1 ea 05          	shr    rdx,0x5
    2c78:	48 89 d0             	mov    rax,rdx
    2c7b:	48 c1 e0 06          	shl    rax,0x6
    2c7f:	48 29 d0             	sub    rax,rdx
    2c82:	29 c1                	sub    ecx,eax
    2c84:	c4 c2 f3 f7 c6       	shrx   rax,r14,rcx
    2c89:	83 e0 01             	and    eax,0x1
    2c8c:	74 82                	je     2c10 <main+0x1830>
    2c8e:	4c 89 c8             	mov    rax,r9
    2c91:	48 83 e8 00          	sub    rax,0x0
    2c95:	0f 84 f5 04 00 00    	je     3190 <main+0x1db0>
    2c9b:	f3 49 0f bd c1       	lzcnt  rax,r9
    2ca0:	89 c6                	mov    esi,eax
    2ca2:	83 e0 fe             	and    eax,0xfffffffe
    2ca5:	4c 89 cf             	mov    rdi,r9
    2ca8:	89 c1                	mov    ecx,eax
    2caa:	4c 89 44 24 50       	mov    QWORD PTR [rsp+0x50],r8
    2caf:	4c 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],r9
    2cb4:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    2cb8:	d1 fe                	sar    esi,1
    2cba:	4c 0f a5 c7          	shld   rdi,r8,cl
    2cbe:	89 74 24 10          	mov    DWORD PTR [rsp+0x10],esi
    2cc2:	4c 89 c6             	mov    rsi,r8
    2cc5:	45 31 c0             	xor    r8d,r8d
    2cc8:	a8 40                	test   al,0x40
    2cca:	c4 e2 f1 f7 f6       	shlx   rsi,rsi,rcx
    2ccf:	48 0f 45 fe          	cmovne rdi,rsi
    2cd3:	49 0f 45 f0          	cmovne rsi,r8
    2cd7:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
    2cdc:	48 89 7c 24 38       	mov    QWORD PTR [rsp+0x38],rdi
    2ce1:	62 f1 c7 08 7b c7    	vcvtusi2sd xmm0,xmm7,rdi
    2ce7:	48 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],rdi
    2cec:	e8 8f e4 ff ff       	call   1180 <sqrt@plt>
    2cf1:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
    2cf6:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    2cfb:	4c 8b 4c 24 58       	mov    r9,QWORD PTR [rsp+0x58]
    2d00:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    2d06:	48 89 f8             	mov    rax,rdi
    2d09:	48 0f af c7          	imul   rax,rdi
    2d0d:	48 29 c6             	sub    rsi,rax
    2d10:	0f 88 10 e6 ff ff    	js     1326 <main.cold+0xe5>
    2d16:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    2d1b:	31 d2                	xor    edx,edx
    2d1d:	44 8b 54 24 10       	mov    r10d,DWORD PTR [rsp+0x10]
    2d22:	b9 20 00 00 00       	mov    ecx,0x20
    2d27:	48 0f ac f0 21       	shrd   rax,rsi,0x21
    2d2c:	48 f7 f7             	div    rdi
    2d2f:	44 29 d1             	sub    ecx,r10d
    2d32:	44 89 d6             	mov    esi,r10d
    2d35:	c4 e2 f1 f7 cf       	shlx   rcx,rdi,rcx
    2d3a:	c4 e2 cb f7 c0       	shrx   rax,rax,rsi
    2d3f:	48 01 c1             	add    rcx,rax
    2d42:	0f 82 d1 06 00 00    	jb     3419 <main+0x2039>
    2d48:	48 89 ca             	mov    rdx,rcx
    2d4b:	c4 e2 cb f6 f9       	mulx   rdi,rsi,rcx
    2d50:	4c 89 ca             	mov    rdx,r9
    2d53:	49 39 f0             	cmp    r8,rsi
    2d56:	48 19 fa             	sbb    rdx,rdi
    2d59:	31 ff                	xor    edi,edi
    2d5b:	48 89 d0             	mov    rax,rdx
    2d5e:	48 c1 e8 3f          	shr    rax,0x3f
    2d62:	48 29 c1             	sub    rcx,rax
    2d65:	48 89 ce             	mov    rsi,rcx
    2d68:	48 89 fa             	mov    rdx,rdi
    2d6b:	48 0f af d6          	imul   rdx,rsi
    2d6f:	48 8d 0c 12          	lea    rcx,[rdx+rdx*1]
    2d73:	48 89 f2             	mov    rdx,rsi
    2d76:	c4 62 ab f6 de       	mulx   r11,r10,rsi
    2d7b:	49 01 cb             	add    r11,rcx
    2d7e:	4c 89 d0             	mov    rax,r10
    2d81:	4c 89 da             	mov    rdx,r11
    2d84:	4c 31 c0             	xor    rax,r8
    2d87:	4c 31 ca             	xor    rdx,r9
    2d8a:	48 09 d0             	or     rax,rdx
    2d8d:	0f 94 c0             	sete   al
    2d90:	0f b6 c0             	movzx  eax,al
    2d93:	e9 78 fe ff ff       	jmp    2c10 <main+0x1830>
    2d98:	0f 31                	rdtsc
    2d9a:	48 c1 e2 20          	shl    rdx,0x20
    2d9e:	49 89 c6             	mov    r14,rax
    2da1:	31 ff                	xor    edi,edi
    2da3:	49 09 d6             	or     r14,rdx
    2da6:	48 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdi
    2dad:	00 
    2dae:	0f 31                	rdtsc
    2db0:	48 8b 6c 24 28       	mov    rbp,QWORD PTR [rsp+0x28]
    2db5:	48 89 c3             	mov    rbx,rax
    2db8:	49 b8 13 02 03 02 12 	movabs r8,0x202021202030213
    2dbf:	02 02 02 
    2dc2:	49 ba ff ff ff ff ff 	movabs r10,0xfffffffffffffff
    2dc9:	ff ff 0f 
    2dcc:	49 bd 11 04 41 10 04 	movabs r13,0x410410410410411
    2dd3:	41 10 04 
    2dd6:	49 bc 93 02 45 12 30 	movabs r12,0x402483012450293
    2ddd:	48 02 04 
    2de0:	4c 89 74 24 10       	mov    QWORD PTR [rsp+0x10],r14
    2de5:	48 c1 e2 20          	shl    rdx,0x20
    2de9:	48 09 d3             	or     rbx,rdx
    2dec:	4c 8d 8d 00 10 5e 5f 	lea    r9,[rbp+0x5f5e1000]
    2df3:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
    2df8:	48 89 eb             	mov    rbx,rbp
    2dfb:	4c 89 cd             	mov    rbp,r9
    2dfe:	eb 20                	jmp    2e20 <main+0x1a40>
    2e00:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
    2e07:	00 
    2e08:	48 83 c3 10          	add    rbx,0x10
    2e0c:	48 01 d0             	add    rax,rdx
    2e0f:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
    2e16:	00 
    2e17:	48 39 eb             	cmp    rbx,rbp
    2e1a:	0f 84 65 01 00 00    	je     2f85 <main+0x1ba5>
    2e20:	4c 8b 33             	mov    r14,QWORD PTR [rbx]
    2e23:	4c 8b 7b 08          	mov    r15,QWORD PTR [rbx+0x8]
    2e27:	44 89 f0             	mov    eax,r14d
    2e2a:	c4 c2 fb f7 c0       	shrx   rax,r8,rax
    2e2f:	83 e0 01             	and    eax,0x1
    2e32:	74 cc                	je     2e00 <main+0x1a20>
    2e34:	4c 89 f0             	mov    rax,r14
    2e37:	4c 89 f1             	mov    rcx,r14
    2e3a:	4c 0f ac f8 3c       	shrd   rax,r15,0x3c
    2e3f:	4c 21 d1             	and    rcx,r10
    2e42:	4c 21 d0             	and    rax,r10
    2e45:	48 01 c1             	add    rcx,rax
    2e48:	4c 89 f8             	mov    rax,r15
    2e4b:	48 c1 e8 38          	shr    rax,0x38
    2e4f:	48 01 c1             	add    rcx,rax
    2e52:	48 89 c8             	mov    rax,rcx
    2e55:	49 f7 e5             	mul    r13
    2e58:	48 89 c8             	mov    rax,rcx
    2e5b:	48 29 d0             	sub    rax,rdx
    2e5e:	48 d1 e8             	shr    rax,1
    2e61:	48 01 c2             	add    rdx,rax
    2e64:	48 c1 ea 05          	shr    rdx,0x5
    2e68:	48 89 d0             	mov    rax,rdx
    2e6b:	48 c1 e0 06          	shl    rax,0x6
    2e6f:	48 29 d0             	sub    rax,rdx
    2e72:	29 c1                	sub    ecx,eax
    2e74:	c4 c2 f3 f7 c4       	shrx   rax,r12,rcx
    2e79:	83 e0 01             	and    eax,0x1
    2e7c:	74 82                	je     2e00 <main+0x1a20>
    2e7e:	4c 89 f8             	mov    rax,r15
    2e81:	48 83 e8 00          	sub    rax,0x0
    2e85:	0f 84 bf 02 00 00    	je     314a <main+0x1d6a>
    2e8b:	f3 49 0f bd c7       	lzcnt  rax,r15
    2e90:	89 c6                	mov    esi,eax
    2e92:	83 e0 fe             	and    eax,0xfffffffe
    2e95:	4c 89 ff             	mov    rdi,r15
    2e98:	89 c1                	mov    ecx,eax
    2e9a:	31 c0                	xor    eax,eax
    2e9c:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    2ea0:	d1 fe                	sar    esi,1
    2ea2:	4c 0f a5 f7          	shld   rdi,r14,cl
    2ea6:	89 74 24 30          	mov    DWORD PTR [rsp+0x30],esi
    2eaa:	f6 c1 40             	test   cl,0x40
    2ead:	4c 89 f6             	mov    rsi,r14
    2eb0:	c4 e2 f1 f7 f6       	shlx   rsi,rsi,rcx
    2eb5:	48 0f 45 fe          	cmovne rdi,rsi
    2eb9:	48 0f 45 f0          	cmovne rsi,rax
    2ebd:	48 89 74 24 40       	mov    QWORD PTR [rsp+0x40],rsi
    2ec2:	48 89 7c 24 48       	mov    QWORD PTR [rsp+0x48],rdi
    2ec7:	62 f1 c7 08 7b c7    	vcvtusi2sd xmm0,xmm7,rdi
    2ecd:	48 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],rdi
    2ed2:	e8 a9 e2 ff ff       	call   1180 <sqrt@plt>
    2ed7:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
    2edc:	49 b8 13 02 03 02 12 	movabs r8,0x202021202030213
    2ee3:	02 02 02 
    2ee6:	49 ba ff ff ff ff ff 	movabs r10,0xfffffffffffffff
    2eed:	ff ff 0f 
    2ef0:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    2ef6:	48 89 f8             	mov    rax,rdi
    2ef9:	48 0f af c7          	imul   rax,rdi
    2efd:	48 29 c6             	sub    rsi,rax
    2f00:	0f 88 10 e4 ff ff    	js     1316 <main.cold+0xd5>
    2f06:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
    2f0b:	31 d2                	xor    edx,edx
    2f0d:	44 8b 4c 24 30       	mov    r9d,DWORD PTR [rsp+0x30]
    2f12:	b9 20 00 00 00       	mov    ecx,0x20
    2f17:	48 0f ac f0 21       	shrd   rax,rsi,0x21
    2f1c:	48 f7 f7             	div    rdi
    2f1f:	44 29 c9             	sub    ecx,r9d
    2f22:	44 89 ce             	mov    esi,r9d
    2f25:	c4 e2 f1 f7 cf       	shlx   rcx,rdi,rcx
    2f2a:	c4 e2 cb f7 c0       	shrx   rax,rax,rsi
    2f2f:	48 01 c1             	add    rcx,rax
    2f32:	0f 82 9e 04 00 00    	jb     33d6 <main+0x1ff6>
    2f38:	48 89 ca             	mov    rdx,rcx
    2f3b:	4c 89 ff             	mov    rdi,r15
    2f3e:	c4 e2 fb f6 d1       	mulx   rdx,rax,rcx
    2f43:	49 39 c6             	cmp    r14,rax
    2f46:	48 89 c8             	mov    rax,rcx
    2f49:	48 19 d7             	sbb    rdi,rdx
    2f4c:	48 89 fa             	mov    rdx,rdi
    2f4f:	31 ff                	xor    edi,edi
    2f51:	48 c1 ea 3f          	shr    rdx,0x3f
    2f55:	48 29 d0             	sub    rax,rdx
    2f58:	48 89 c6             	mov    rsi,rax
    2f5b:	48 89 fa             	mov    rdx,rdi
    2f5e:	48 0f af d6          	imul   rdx,rsi
    2f62:	48 8d 0c 12          	lea    rcx,[rdx+rdx*1]
    2f66:	48 89 f2             	mov    rdx,rsi
    2f69:	c4 e2 fb f6 d6       	mulx   rdx,rax,rsi
    2f6e:	48 01 ca             	add    rdx,rcx
    2f71:	4c 31 f0             	xor    rax,r14
    2f74:	4c 31 fa             	xor    rdx,r15
    2f77:	48 09 d0             	or     rax,rdx
    2f7a:	0f 94 c0             	sete   al
    2f7d:	0f b6 c0             	movzx  eax,al
    2f80:	e9 7b fe ff ff       	jmp    2e00 <main+0x1a20>
    2f85:	4c 8b 74 24 10       	mov    r14,QWORD PTR [rsp+0x10]
    2f8a:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
    2f8f:	0f 31                	rdtsc
    2f91:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    2f95:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    2f9a:	48 8d 3d 9f 30 00 00 	lea    rdi,[rip+0x309f]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2fa1:	48 c1 e2 20          	shl    rdx,0x20
    2fa5:	48 09 d0             	or     rax,rdx
    2fa8:	ba 2a 00 00 00       	mov    edx,0x2a
    2fad:	49 29 f6             	sub    r14,rsi
    2fb0:	48 29 d8             	sub    rax,rbx
    2fb3:	48 8d 35 6e 11 00 00 	lea    rsi,[rip+0x116e]        # 4128 <_IO_stdin_used+0x128>
    2fba:	62 d1 cf 08 7b c6    	vcvtusi2sd xmm0,xmm6,r14
    2fc0:	c5 fb 5e 3d d8 12 00 	vdivsd xmm7,xmm0,QWORD PTR [rip+0x12d8]        # 42a0 <_IO_stdin_used+0x2a0>
    2fc7:	00 
    2fc8:	62 f1 cf 08 7b c0    	vcvtusi2sd xmm0,xmm6,rax
    2fce:	c4 e1 f9 7e fd       	vmovq  rbp,xmm7
    2fd3:	c5 fb 5e 35 c5 12 00 	vdivsd xmm6,xmm0,QWORD PTR [rip+0x12c5]        # 42a0 <_IO_stdin_used+0x2a0>
    2fda:	00 
    2fdb:	c4 c1 f9 7e f4       	vmovq  r12,xmm6
    2fe0:	e8 db e1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2fe5:	48 8d 3d 54 30 00 00 	lea    rdi,[rip+0x3054]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2fec:	e8 3f 06 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2ff1:	ba 24 00 00 00       	mov    edx,0x24
    2ff6:	48 8d 35 db 10 00 00 	lea    rsi,[rip+0x10db]        # 40d8 <_IO_stdin_used+0xd8>
    2ffd:	48 8d 3d 3c 30 00 00 	lea    rdi,[rip+0x303c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    3004:	e8 b7 e1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    3009:	c4 e1 f9 6e c5       	vmovq  xmm0,rbp
    300e:	48 8d 3d 2b 30 00 00 	lea    rdi,[rip+0x302b]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    3015:	e8 d6 e1 ff ff       	call   11f0 <_ZNSo9_M_insertIdEERSoT_@plt>
    301a:	ba 16 00 00 00       	mov    edx,0x16
    301f:	48 8d 35 49 12 00 00 	lea    rsi,[rip+0x1249]        # 426f <_IO_stdin_used+0x26f>
    3026:	48 89 c7             	mov    rdi,rax
    3029:	48 89 c3             	mov    rbx,rax
    302c:	e8 8f e1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    3031:	48 8b b4 24 80 00 00 	mov    rsi,QWORD PTR [rsp+0x80]
    3038:	00 
    3039:	48 89 df             	mov    rdi,rbx
    303c:	e8 1f e1 ff ff       	call   1160 <_ZNSo9_M_insertImEERSoT_@plt>
    3041:	ba 01 00 00 00       	mov    edx,0x1
    3046:	48 8d 35 a0 11 00 00 	lea    rsi,[rip+0x11a0]        # 41ed <_IO_stdin_used+0x1ed>
    304d:	48 89 c7             	mov    rdi,rax
    3050:	48 89 c3             	mov    rbx,rax
    3053:	e8 68 e1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    3058:	48 89 df             	mov    rdi,rbx
    305b:	e8 d0 05 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    3060:	ba 24 00 00 00       	mov    edx,0x24
    3065:	48 8d 35 94 10 00 00 	lea    rsi,[rip+0x1094]        # 4100 <_IO_stdin_used+0x100>
    306c:	48 8d 3d cd 2f 00 00 	lea    rdi,[rip+0x2fcd]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    3073:	e8 48 e1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    3078:	c4 c1 f9 6e c4       	vmovq  xmm0,r12
    307d:	48 8d 3d bc 2f 00 00 	lea    rdi,[rip+0x2fbc]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    3084:	e8 67 e1 ff ff       	call   11f0 <_ZNSo9_M_insertIdEERSoT_@plt>
    3089:	ba 16 00 00 00       	mov    edx,0x16
    308e:	48 8d 35 da 11 00 00 	lea    rsi,[rip+0x11da]        # 426f <_IO_stdin_used+0x26f>
    3095:	48 89 c7             	mov    rdi,rax
    3098:	48 89 c3             	mov    rbx,rax
    309b:	e8 20 e1 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    30a0:	48 8b b4 24 88 00 00 	mov    rsi,QWORD PTR [rsp+0x88]
    30a7:	00 
    30a8:	48 89 df             	mov    rdi,rbx
    30ab:	e8 b0 e0 ff ff       	call   1160 <_ZNSo9_M_insertImEERSoT_@plt>
    30b0:	ba 01 00 00 00       	mov    edx,0x1
    30b5:	48 8d 35 31 11 00 00 	lea    rsi,[rip+0x1131]        # 41ed <_IO_stdin_used+0x1ed>
    30bc:	48 89 c7             	mov    rdi,rax
    30bf:	48 89 c3             	mov    rbx,rax
    30c2:	e8 f9 e0 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    30c7:	48 89 df             	mov    rdi,rbx
    30ca:	e8 61 05 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    30cf:	ba 32 00 00 00       	mov    edx,0x32
    30d4:	48 8d 35 75 0f 00 00 	lea    rsi,[rip+0xf75]        # 4050 <_IO_stdin_used+0x50>
    30db:	48 8d 3d 5e 2f 00 00 	lea    rdi,[rip+0x2f5e]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    30e2:	e8 d9 e0 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    30e7:	48 8d 3d 52 2f 00 00 	lea    rdi,[rip+0x2f52]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    30ee:	e8 3d 05 00 00       	call   3630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    30f3:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    30f8:	e8 f3 05 00 00       	call   36f0 <_ZNSt6vectorIoSaIoEED1Ev>
    30fd:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    3102:	e8 e9 05 00 00       	call   36f0 <_ZNSt6vectorIoSaIoEED1Ev>
    3107:	ba 29 00 00 00       	mov    edx,0x29
    310c:	48 8d 35 45 10 00 00 	lea    rsi,[rip+0x1045]        # 4158 <_IO_stdin_used+0x158>
    3113:	48 8d 3d 26 2f 00 00 	lea    rdi,[rip+0x2f26]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    311a:	e8 a1 e0 ff ff       	call   11c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    311f:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    3126:	00 
    3127:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    312e:	00 00 
    3130:	0f 85 69 01 00 00    	jne    329f <main+0x1ebf>
    3136:	48 81 c4 c8 0a 00 00 	add    rsp,0xac8
    313d:	31 c0                	xor    eax,eax
    313f:	5b                   	pop    rbx
    3140:	5d                   	pop    rbp
    3141:	41 5c                	pop    r12
    3143:	41 5d                	pop    r13
    3145:	41 5e                	pop    r14
    3147:	41 5f                	pop    r15
    3149:	c3                   	ret
    314a:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    314e:	62 d1 cf 08 7b c6    	vcvtusi2sd xmm0,xmm6,r14
    3154:	e8 27 e0 ff ff       	call   1180 <sqrt@plt>
    3159:	49 b8 13 02 03 02 12 	movabs r8,0x202021202030213
    3160:	02 02 02 
    3163:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    3169:	48 89 fe             	mov    rsi,rdi
    316c:	49 ba ff ff ff ff ff 	movabs r10,0xfffffffffffffff
    3173:	ff ff 0f 
    3176:	48 0f af f7          	imul   rsi,rdi
    317a:	49 39 f6             	cmp    r14,rsi
    317d:	0f 88 cb e0 ff ff    	js     124e <main.cold+0xd>
    3183:	31 c0                	xor    eax,eax
    3185:	4c 39 f6             	cmp    rsi,r14
    3188:	0f 94 c0             	sete   al
    318b:	e9 70 fc ff ff       	jmp    2e00 <main+0x1a20>
    3190:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    3194:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3199:	62 d1 c7 08 7b c0    	vcvtusi2sd xmm0,xmm7,r8
    319f:	e8 dc df ff ff       	call   1180 <sqrt@plt>
    31a4:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    31aa:	48 89 fe             	mov    rsi,rdi
    31ad:	48 0f af f7          	imul   rsi,rdi
    31b1:	48 39 74 24 10       	cmp    QWORD PTR [rsp+0x10],rsi
    31b6:	0f 88 85 e0 ff ff    	js     1241 <main.cold>
    31bc:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    31c1:	48 39 c6             	cmp    rsi,rax
    31c4:	0f 94 c0             	sete   al
    31c7:	0f b6 c0             	movzx  eax,al
    31ca:	e9 41 fa ff ff       	jmp    2c10 <main+0x1830>
    31cf:	e8 ac df ff ff       	call   1180 <sqrt@plt>
    31d4:	e9 d6 e4 ff ff       	jmp    16af <main+0x2cf>
    31d9:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    31de:	e8 9d df ff ff       	call   1180 <sqrt@plt>
    31e3:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    31e8:	e9 52 e4 ff ff       	jmp    163f <main+0x25f>
    31ed:	48 83 c8 ff          	or     rax,0xffffffffffffffff
    31f1:	e9 e9 ea ff ff       	jmp    1cdf <main+0x8ff>
    31f6:	48 83 c8 ff          	or     rax,0xffffffffffffffff
    31fa:	31 d2                	xor    edx,edx
    31fc:	e9 30 ec ff ff       	jmp    1e31 <main+0xa51>
    3201:	4c 89 44 24 50       	mov    QWORD PTR [rsp+0x50],r8
    3206:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
    320b:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
    3210:	4c 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],r9
    3215:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
    321a:	e8 61 df ff ff       	call   1180 <sqrt@plt>
    321f:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    3224:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
    3229:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
    322e:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
    3233:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
    3238:	e9 4a ea ff ff       	jmp    1c87 <main+0x8a7>
    323d:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
    3242:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
    3247:	4c 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],r9
    324c:	4c 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],r15
    3251:	e8 2a df ff ff       	call   1180 <sqrt@plt>
    3256:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
    325b:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
    3260:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
    3265:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    326a:	e9 68 eb ff ff       	jmp    1dd7 <main+0x9f7>
    326f:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    3276:	00 
    3277:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    327e:	00 00 
    3280:	75 1d                	jne    329f <main+0x1ebf>
    3282:	e8 59 df ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    3287:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    328e:	00 
    328f:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    3296:	00 00 
    3298:	75 05                	jne    329f <main+0x1ebf>
    329a:	e8 41 df ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    329f:	e8 0c df ff ff       	call   11b0 <__stack_chk_fail@plt>
    32a4:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    32ab:	00 
    32ac:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    32b3:	00 00 
    32b5:	75 e8                	jne    329f <main+0x1ebf>
    32b7:	e8 24 df ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    32bc:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
    32c1:	4c 89 5c 24 30       	mov    QWORD PTR [rsp+0x30],r11
    32c6:	4c 89 54 24 20       	mov    QWORD PTR [rsp+0x20],r10
    32cb:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    32d0:	e8 ab de ff ff       	call   1180 <sqrt@plt>
    32d5:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
    32da:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
    32df:	4c 8b 54 24 20       	mov    r10,QWORD PTR [rsp+0x20]
    32e4:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    32e9:	e9 4e ea ff ff       	jmp    1d3c <main+0x95c>
    32ee:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    32f5:	00 
    32f6:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    32fd:	00 00 
    32ff:	75 9e                	jne    329f <main+0x1ebf>
    3301:	e8 da de ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    3306:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
    330b:	4c 89 54 24 20       	mov    QWORD PTR [rsp+0x20],r10
    3310:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    3315:	e8 66 de ff ff       	call   1180 <sqrt@plt>
    331a:	4c 8b 44 24 30       	mov    r8,QWORD PTR [rsp+0x30]
    331f:	4c 8b 54 24 20       	mov    r10,QWORD PTR [rsp+0x20]
    3324:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    3329:	e9 5f eb ff ff       	jmp    1e8d <main+0xaad>
    332e:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    3335:	00 
    3336:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    333d:	00 00 
    333f:	0f 85 5a ff ff ff    	jne    329f <main+0x1ebf>
    3345:	e8 96 de ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    334a:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    3351:	00 
    3352:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    3359:	00 00 
    335b:	0f 85 3e ff ff ff    	jne    329f <main+0x1ebf>
    3361:	e8 7a de ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    3366:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    336d:	00 
    336e:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    3375:	00 00 
    3377:	0f 85 22 ff ff ff    	jne    329f <main+0x1ebf>
    337d:	e8 5e de ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    3382:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    3389:	00 
    338a:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    3391:	00 00 
    3393:	0f 85 06 ff ff ff    	jne    329f <main+0x1ebf>
    3399:	e8 42 de ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    339e:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    33a5:	00 
    33a6:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    33ad:	00 00 
    33af:	0f 85 ea fe ff ff    	jne    329f <main+0x1ebf>
    33b5:	e8 26 de ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    33ba:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    33c1:	00 
    33c2:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    33c9:	00 00 
    33cb:	0f 85 ce fe ff ff    	jne    329f <main+0x1ebf>
    33d1:	e8 0a de ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    33d6:	48 83 ce ff          	or     rsi,0xffffffffffffffff
    33da:	31 ff                	xor    edi,edi
    33dc:	e9 7a fb ff ff       	jmp    2f5b <main+0x1b7b>
    33e1:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    33e8:	00 
    33e9:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    33f0:	00 00 
    33f2:	0f 85 a7 fe ff ff    	jne    329f <main+0x1ebf>
    33f8:	e8 e3 dd ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    33fd:	48 8b 84 24 b8 0a 00 	mov    rax,QWORD PTR [rsp+0xab8]
    3404:	00 
    3405:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    340c:	00 00 
    340e:	0f 85 8b fe ff ff    	jne    329f <main+0x1ebf>
    3414:	e8 c7 dd ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    3419:	48 83 ce ff          	or     rsi,0xffffffffffffffff
    341d:	31 ff                	xor    edi,edi
    341f:	e9 44 f9 ff ff       	jmp    2d68 <main+0x1988>
    3424:	f3 0f 1e fa          	endbr64
    3428:	48 89 c3             	mov    rbx,rax
    342b:	e9 38 de ff ff       	jmp    1268 <main.cold+0x27>
    3430:	f3 0f 1e fa          	endbr64
    3434:	48 89 c3             	mov    rbx,rax
    3437:	e9 74 de ff ff       	jmp    12b0 <main.cold+0x6f>
    343c:	f3 0f 1e fa          	endbr64
    3440:	48 89 c3             	mov    rbx,rax
    3443:	c5 f8 77             	vzeroupper
    3446:	e9 2a de ff ff       	jmp    1275 <main.cold+0x34>
    344b:	f3 0f 1e fa          	endbr64
    344f:	48 89 c3             	mov    rbx,rax
    3452:	c5 f8 77             	vzeroupper
    3455:	e9 63 de ff ff       	jmp    12bd <main.cold+0x7c>
    345a:	f3 0f 1e fa          	endbr64
    345e:	48 89 c3             	mov    rbx,rax
    3461:	e9 1e df ff ff       	jmp    1384 <main.cold+0x143>
    3466:	f3 0f 1e fa          	endbr64
    346a:	48 89 c3             	mov    rbx,rax
    346d:	e9 3e df ff ff       	jmp    13b0 <main.cold+0x16f>
    3472:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    3479:	00 00 00 
    347c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000003480 <_start>:
    3480:	f3 0f 1e fa          	endbr64
    3484:	31 ed                	xor    ebp,ebp
    3486:	49 89 d1             	mov    r9,rdx
    3489:	5e                   	pop    rsi
    348a:	48 89 e2             	mov    rdx,rsp
    348d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    3491:	50                   	push   rax
    3492:	54                   	push   rsp
    3493:	45 31 c0             	xor    r8d,r8d
    3496:	31 c9                	xor    ecx,ecx
    3498:	48 8d 3d 41 df ff ff 	lea    rdi,[rip+0xffffffffffffdf41]        # 13e0 <main>
    349f:	ff 15 3b 2b 00 00    	call   QWORD PTR [rip+0x2b3b]        # 5fe0 <__libc_start_main@GLIBC_2.34>
    34a5:	f4                   	hlt
    34a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    34ad:	00 00 00 

00000000000034b0 <deregister_tm_clones>:
    34b0:	48 8d 3d 61 2b 00 00 	lea    rdi,[rip+0x2b61]        # 6018 <__TMC_END__>
    34b7:	48 8d 05 5a 2b 00 00 	lea    rax,[rip+0x2b5a]        # 6018 <__TMC_END__>
    34be:	48 39 f8             	cmp    rax,rdi
    34c1:	74 15                	je     34d8 <deregister_tm_clones+0x28>
    34c3:	48 8b 05 1e 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b1e]        # 5fe8 <_ITM_deregisterTMCloneTable@Base>
    34ca:	48 85 c0             	test   rax,rax
    34cd:	74 09                	je     34d8 <deregister_tm_clones+0x28>
    34cf:	ff e0                	jmp    rax
    34d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    34d8:	c3                   	ret
    34d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000034e0 <register_tm_clones>:
    34e0:	48 8d 3d 31 2b 00 00 	lea    rdi,[rip+0x2b31]        # 6018 <__TMC_END__>
    34e7:	48 8d 35 2a 2b 00 00 	lea    rsi,[rip+0x2b2a]        # 6018 <__TMC_END__>
    34ee:	48 29 fe             	sub    rsi,rdi
    34f1:	48 89 f0             	mov    rax,rsi
    34f4:	48 c1 ee 3f          	shr    rsi,0x3f
    34f8:	48 c1 f8 03          	sar    rax,0x3
    34fc:	48 01 c6             	add    rsi,rax
    34ff:	48 d1 fe             	sar    rsi,1
    3502:	74 14                	je     3518 <register_tm_clones+0x38>
    3504:	48 8b 05 ed 2a 00 00 	mov    rax,QWORD PTR [rip+0x2aed]        # 5ff8 <_ITM_registerTMCloneTable@Base>
    350b:	48 85 c0             	test   rax,rax
    350e:	74 08                	je     3518 <register_tm_clones+0x38>
    3510:	ff e0                	jmp    rax
    3512:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3518:	c3                   	ret
    3519:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000003520 <__do_global_dtors_aux>:
    3520:	f3 0f 1e fa          	endbr64
    3524:	80 3d 25 2c 00 00 00 	cmp    BYTE PTR [rip+0x2c25],0x0        # 6150 <completed.0>
    352b:	75 2b                	jne    3558 <__do_global_dtors_aux+0x38>
    352d:	55                   	push   rbp
    352e:	48 83 3d a2 2a 00 00 	cmp    QWORD PTR [rip+0x2aa2],0x0        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    3535:	00 
    3536:	48 89 e5             	mov    rbp,rsp
    3539:	74 0c                	je     3547 <__do_global_dtors_aux+0x27>
    353b:	48 8b 3d c6 2a 00 00 	mov    rdi,QWORD PTR [rip+0x2ac6]        # 6008 <__dso_handle>
    3542:	e8 d9 db ff ff       	call   1120 <__cxa_finalize@plt>
    3547:	e8 64 ff ff ff       	call   34b0 <deregister_tm_clones>
    354c:	c6 05 fd 2b 00 00 01 	mov    BYTE PTR [rip+0x2bfd],0x1        # 6150 <completed.0>
    3553:	5d                   	pop    rbp
    3554:	c3                   	ret
    3555:	0f 1f 00             	nop    DWORD PTR [rax]
    3558:	c3                   	ret
    3559:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000003560 <frame_dummy>:
    3560:	f3 0f 1e fa          	endbr64
    3564:	e9 77 ff ff ff       	jmp    34e0 <register_tm_clones>
    3569:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000003570 <_ZNSt6vectorIoSaIoEEC1EmRKS0_.constprop.0>:
    3570:	53                   	push   rbx
    3571:	48 89 fb             	mov    rbx,rdi
    3574:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    357b:	48 c7 47 08 00 00 00 	mov    QWORD PTR [rdi+0x8],0x0
    3582:	00 
    3583:	48 c7 47 10 00 00 00 	mov    QWORD PTR [rdi+0x10],0x0
    358a:	00 
    358b:	bf 00 10 5e 5f       	mov    edi,0x5f5e1000
    3590:	e8 fb db ff ff       	call   1190 <_Znwm@plt>
    3595:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    3599:	48 8d 88 00 10 5e 5f 	lea    rcx,[rax+0x5f5e1000]
    35a0:	c5 f9 7f 00          	vmovdqa XMMWORD PTR [rax],xmm0
    35a4:	48 8d 50 20          	lea    rdx,[rax+0x20]
    35a8:	48 89 03             	mov    QWORD PTR [rbx],rax
    35ab:	c5 f9 7f 40 10       	vmovdqa XMMWORD PTR [rax+0x10],xmm0
    35b0:	48 89 4b 10          	mov    QWORD PTR [rbx+0x10],rcx
    35b4:	c5 f9 6f 08          	vmovdqa xmm1,XMMWORD PTR [rax]
    35b8:	48 83 c2 10          	add    rdx,0x10
    35bc:	c5 f9 7f 4a f0       	vmovdqa XMMWORD PTR [rdx-0x10],xmm1
    35c1:	48 39 d1             	cmp    rcx,rdx
    35c4:	75 ee                	jne    35b4 <_ZNSt6vectorIoSaIoEEC1EmRKS0_.constprop.0+0x44>
    35c6:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
    35ca:	5b                   	pop    rbx
    35cb:	c3                   	ret
    35cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000035d0 <_ZNSt6vectorImSaImEEC1EmRKS0_.constprop.0>:
    35d0:	55                   	push   rbp
    35d1:	53                   	push   rbx
    35d2:	48 89 fb             	mov    rbx,rdi
    35d5:	48 83 ec 08          	sub    rsp,0x8
    35d9:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    35e0:	48 c7 47 08 00 00 00 	mov    QWORD PTR [rdi+0x8],0x0
    35e7:	00 
    35e8:	48 c7 47 10 00 00 00 	mov    QWORD PTR [rdi+0x10],0x0
    35ef:	00 
    35f0:	bf 00 08 af 2f       	mov    edi,0x2faf0800
    35f5:	e8 96 db ff ff       	call   1190 <_Znwm@plt>
    35fa:	ba f8 07 af 2f       	mov    edx,0x2faf07f8
    35ff:	31 f6                	xor    esi,esi
    3601:	48 8d a8 00 08 af 2f 	lea    rbp,[rax+0x2faf0800]
    3608:	48 8d 78 08          	lea    rdi,[rax+0x8]
    360c:	48 89 03             	mov    QWORD PTR [rbx],rax
    360f:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    3616:	48 89 6b 10          	mov    QWORD PTR [rbx+0x10],rbp
    361a:	e8 31 db ff ff       	call   1150 <memset@plt>
    361f:	48 89 6b 08          	mov    QWORD PTR [rbx+0x8],rbp
    3623:	48 83 c4 08          	add    rsp,0x8
    3627:	5b                   	pop    rbx
    3628:	5d                   	pop    rbp
    3629:	c3                   	ret
    362a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000003630 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>:
    3630:	55                   	push   rbp
    3631:	53                   	push   rbx
    3632:	48 83 ec 08          	sub    rsp,0x8
    3636:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    3639:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    363d:	48 8b ac 07 f0 00 00 	mov    rbp,QWORD PTR [rdi+rax*1+0xf0]
    3644:	00 
    3645:	48 85 ed             	test   rbp,rbp
    3648:	74 53                	je     369d <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x6d>
    364a:	80 7d 38 00          	cmp    BYTE PTR [rbp+0x38],0x0
    364e:	48 89 fb             	mov    rbx,rdi
    3651:	74 1d                	je     3670 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x40>
    3653:	0f b6 45 43          	movzx  eax,BYTE PTR [rbp+0x43]
    3657:	48 89 df             	mov    rdi,rbx
    365a:	0f be f0             	movsx  esi,al
    365d:	e8 ce da ff ff       	call   1130 <_ZNSo3putEc@plt>
    3662:	48 83 c4 08          	add    rsp,0x8
    3666:	5b                   	pop    rbx
    3667:	5d                   	pop    rbp
    3668:	48 89 c7             	mov    rdi,rax
    366b:	e9 00 db ff ff       	jmp    1170 <_ZNSo5flushEv@plt>
    3670:	48 89 ef             	mov    rdi,rbp
    3673:	e8 58 db ff ff       	call   11d0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    3678:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
    367c:	48 8d 0d 2d 00 00 00 	lea    rcx,[rip+0x2d]        # 36b0 <_ZNKSt5ctypeIcE8do_widenEc>
    3683:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    3687:	b8 0a 00 00 00       	mov    eax,0xa
    368c:	48 39 ca             	cmp    rdx,rcx
    368f:	74 c6                	je     3657 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x27>
    3691:	be 0a 00 00 00       	mov    esi,0xa
    3696:	48 89 ef             	mov    rdi,rbp
    3699:	ff d2                	call   rdx
    369b:	eb ba                	jmp    3657 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x27>
    369d:	e8 3e db ff ff       	call   11e0 <_ZSt16__throw_bad_castv@plt>
    36a2:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    36a9:	00 00 00 
    36ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000036b0 <_ZNKSt5ctypeIcE8do_widenEc>:
    36b0:	f3 0f 1e fa          	endbr64
    36b4:	89 f0                	mov    eax,esi
    36b6:	c3                   	ret
    36b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    36be:	00 00 

00000000000036c0 <_ZNSt6vectorImSaImEED1Ev>:
    36c0:	f3 0f 1e fa          	endbr64
    36c4:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    36c7:	48 85 c0             	test   rax,rax
    36ca:	74 14                	je     36e0 <_ZNSt6vectorImSaImEED1Ev+0x20>
    36cc:	48 8b 77 10          	mov    rsi,QWORD PTR [rdi+0x10]
    36d0:	48 89 c7             	mov    rdi,rax
    36d3:	48 29 c6             	sub    rsi,rax
    36d6:	e9 c5 da ff ff       	jmp    11a0 <_ZdlPvm@plt>
    36db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    36e0:	c3                   	ret
    36e1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    36e8:	00 00 00 
    36eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000036f0 <_ZNSt6vectorIoSaIoEED1Ev>:
    36f0:	f3 0f 1e fa          	endbr64
    36f4:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    36f7:	48 85 c0             	test   rax,rax
    36fa:	74 14                	je     3710 <_ZNSt6vectorIoSaIoEED1Ev+0x20>
    36fc:	48 8b 77 10          	mov    rsi,QWORD PTR [rdi+0x10]
    3700:	48 89 c7             	mov    rdi,rax
    3703:	48 29 c6             	sub    rsi,rax
    3706:	e9 95 da ff ff       	jmp    11a0 <_ZdlPvm@plt>
    370b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3710:	c3                   	ret
    3711:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    3718:	00 00 00 
    371b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000003720 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>:
    3720:	f3 0f 1e fa          	endbr64
    3724:	49 c7 c2 00 00 00 80 	mov    r10,0xffffffff80000000
    372b:	be ff ff ff 7f       	mov    esi,0x7fffffff
    3730:	41 b9 01 00 00 00    	mov    r9d,0x1
    3736:	49 b8 e9 19 66 a9 5a 	movabs r8,0xb5026f5aa96619e9
    373d:	6f 02 b5 
    3740:	62 d2 fd 48 7c f2    	vpbroadcastq zmm6,r10
    3746:	62 f2 fd 48 7c ee    	vpbroadcastq zmm5,rsi
    374c:	48 89 f9             	mov    rcx,rdi
    374f:	48 8d 87 e0 04 00 00 	lea    rax,[rdi+0x4e0]
    3756:	48 89 ca             	mov    rdx,rcx
    3759:	48 8d bf c0 04 00 00 	lea    rdi,[rdi+0x4c0]
    3760:	62 d2 fd 48 7c e1    	vpbroadcastq zmm4,r9
    3766:	62 d2 fd 48 7c d0    	vpbroadcastq zmm2,r8
    376c:	c5 e1 ef db          	vpxor  xmm3,xmm3,xmm3
    3770:	62 f1 d5 48 db 82 08 	vpandq zmm0,zmm5,ZMMWORD PTR [rdx+0x8]
    3777:	00 00 00 
    377a:	48 83 c2 40          	add    rdx,0x40
    377e:	62 f3 cd 48 25 42 ff 	vpternlogq zmm0,zmm6,ZMMWORD PTR [rdx-0x40],0xf8
    3785:	f8 
    3786:	62 f1 f5 48 73 d0 01 	vpsrlq zmm1,zmm0,0x1
    378d:	62 f1 fd 48 db c4    	vpandq zmm0,zmm0,zmm4
    3793:	62 f1 e5 48 fb c0    	vpsubq zmm0,zmm3,zmm0
    3799:	62 f1 fd 48 db c2    	vpandq zmm0,zmm0,zmm2
    379f:	62 f3 f5 48 25 82 a0 	vpternlogq zmm0,zmm1,ZMMWORD PTR [rdx+0x4a0],0x96
    37a6:	04 00 00 96 
    37aa:	62 f1 fe 48 7f 42 ff 	vmovdqu64 ZMMWORD PTR [rdx-0x40],zmm0
    37b1:	48 39 d7             	cmp    rdi,rdx
    37b4:	75 ba                	jne    3770 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x50>
    37b6:	62 f2 fd 28 7c c6    	vpbroadcastq ymm0,rsi
    37bc:	c5 fd db 81 c8 04 00 	vpand  ymm0,ymm0,YMMWORD PTR [rcx+0x4c8]
    37c3:	00 
    37c4:	62 d2 fd 28 7c ca    	vpbroadcastq ymm1,r10
    37ca:	48 c7 c2 00 00 00 80 	mov    rdx,0xffffffff80000000
    37d1:	62 f2 fd 48 7c e2    	vpbroadcastq zmm4,rdx
    37d7:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    37dc:	48 8d b1 a0 09 00 00 	lea    rsi,[rcx+0x9a0]
    37e3:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    37e7:	62 f2 fd 48 7c da    	vpbroadcastq zmm3,rdx
    37ed:	ba 01 00 00 00       	mov    edx,0x1
    37f2:	62 f3 f5 28 25 41 26 	vpternlogq ymm0,ymm1,YMMWORD PTR [rcx+0x4c0],0xf8
    37f9:	f8 
    37fa:	62 d2 fd 28 7c c9    	vpbroadcastq ymm1,r9
    3800:	c5 ed 73 d0 01       	vpsrlq ymm2,ymm0,0x1
    3805:	c5 fd db c1          	vpand  ymm0,ymm0,ymm1
    3809:	c5 f1 ef c9          	vpxor  xmm1,xmm1,xmm1
    380d:	c5 f5 fb c0          	vpsubq ymm0,ymm1,ymm0
    3811:	62 d2 fd 28 7c c8    	vpbroadcastq ymm1,r8
    3817:	c5 fd db c1          	vpand  ymm0,ymm0,ymm1
    381b:	62 f3 ed 28 25 41 4d 	vpternlogq ymm0,ymm2,YMMWORD PTR [rcx+0x9a0],0x96
    3822:	96 
    3823:	62 f2 fd 48 7c d2    	vpbroadcastq zmm2,rdx
    3829:	48 ba e9 19 66 a9 5a 	movabs rdx,0xb5026f5aa96619e9
    3830:	6f 02 b5 
    3833:	62 f2 fd 48 7c ea    	vpbroadcastq zmm5,rdx
    3839:	c5 fe 7f 81 c0 04 00 	vmovdqu YMMWORD PTR [rcx+0x4c0],ymm0
    3840:	00 
    3841:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    3848:	00 00 00 00 
    384c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    3850:	62 f1 e5 48 db 80 08 	vpandq zmm0,zmm3,ZMMWORD PTR [rax+0x8]
    3857:	00 00 00 
    385a:	48 83 c0 40          	add    rax,0x40
    385e:	62 f3 dd 48 25 40 ff 	vpternlogq zmm0,zmm4,ZMMWORD PTR [rax-0x40],0xf8
    3865:	f8 
    3866:	62 f1 f5 48 73 d0 01 	vpsrlq zmm1,zmm0,0x1
    386d:	62 f1 fd 48 db c2    	vpandq zmm0,zmm0,zmm2
    3873:	62 f1 cd 48 fb c0    	vpsubq zmm0,zmm6,zmm0
    3879:	62 f1 fd 48 db c5    	vpandq zmm0,zmm0,zmm5
    387f:	62 f3 f5 48 25 80 e0 	vpternlogq zmm0,zmm1,ZMMWORD PTR [rax-0x520],0x96
    3886:	fa ff ff 96 
    388a:	62 f1 fe 48 7f 40 ff 	vmovdqu64 ZMMWORD PTR [rax-0x40],zmm0
    3891:	48 39 c6             	cmp    rsi,rax
    3894:	75 ba                	jne    3850 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x130>
    3896:	48 8b 81 a8 09 00 00 	mov    rax,QWORD PTR [rcx+0x9a8]
    389d:	48 8b b9 a0 09 00 00 	mov    rdi,QWORD PTR [rcx+0x9a0]
    38a4:	48 c7 81 c0 09 00 00 	mov    QWORD PTR [rcx+0x9c0],0x0
    38ab:	00 00 00 00 
    38af:	48 89 c6             	mov    rsi,rax
    38b2:	48 81 e7 00 00 00 80 	and    rdi,0xffffffff80000000
    38b9:	48 25 00 00 00 80    	and    rax,0xffffffff80000000
    38bf:	81 e6 ff ff ff 7f    	and    esi,0x7fffffff
    38c5:	48 09 f7             	or     rdi,rsi
    38c8:	83 e6 01             	and    esi,0x1
    38cb:	48 d1 ef             	shr    rdi,1
    38ce:	48 33 b9 c0 04 00 00 	xor    rdi,QWORD PTR [rcx+0x4c0]
    38d5:	48 f7 de             	neg    rsi
    38d8:	48 21 d6             	and    rsi,rdx
    38db:	48 31 fe             	xor    rsi,rdi
    38de:	48 89 b1 a0 09 00 00 	mov    QWORD PTR [rcx+0x9a0],rsi
    38e5:	48 8b b1 b0 09 00 00 	mov    rsi,QWORD PTR [rcx+0x9b0]
    38ec:	48 89 f7             	mov    rdi,rsi
    38ef:	48 81 e6 00 00 00 80 	and    rsi,0xffffffff80000000
    38f6:	81 e7 ff ff ff 7f    	and    edi,0x7fffffff
    38fc:	48 09 f8             	or     rax,rdi
    38ff:	48 89 c7             	mov    rdi,rax
    3902:	83 e0 01             	and    eax,0x1
    3905:	48 d1 ef             	shr    rdi,1
    3908:	48 33 b9 c8 04 00 00 	xor    rdi,QWORD PTR [rcx+0x4c8]
    390f:	48 f7 d8             	neg    rax
    3912:	48 21 d0             	and    rax,rdx
    3915:	48 31 f8             	xor    rax,rdi
    3918:	48 8b b9 b8 09 00 00 	mov    rdi,QWORD PTR [rcx+0x9b8]
    391f:	48 89 81 a8 09 00 00 	mov    QWORD PTR [rcx+0x9a8],rax
    3926:	48 89 f8             	mov    rax,rdi
    3929:	48 81 e7 00 00 00 80 	and    rdi,0xffffffff80000000
    3930:	25 ff ff ff 7f       	and    eax,0x7fffffff
    3935:	48 09 c6             	or     rsi,rax
    3938:	83 e0 01             	and    eax,0x1
    393b:	48 d1 ee             	shr    rsi,1
    393e:	48 33 b1 d0 04 00 00 	xor    rsi,QWORD PTR [rcx+0x4d0]
    3945:	48 f7 d8             	neg    rax
    3948:	48 21 d0             	and    rax,rdx
    394b:	48 31 f0             	xor    rax,rsi
    394e:	48 89 81 b0 09 00 00 	mov    QWORD PTR [rcx+0x9b0],rax
    3955:	48 8b 01             	mov    rax,QWORD PTR [rcx]
    3958:	25 ff ff ff 7f       	and    eax,0x7fffffff
    395d:	48 09 f8             	or     rax,rdi
    3960:	48 89 c6             	mov    rsi,rax
    3963:	48 d1 ee             	shr    rsi,1
    3966:	48 33 b1 d8 04 00 00 	xor    rsi,QWORD PTR [rcx+0x4d8]
    396d:	83 e0 01             	and    eax,0x1
    3970:	48 f7 d8             	neg    rax
    3973:	48 21 d0             	and    rax,rdx
    3976:	48 31 f0             	xor    rax,rsi
    3979:	48 89 81 b8 09 00 00 	mov    QWORD PTR [rcx+0x9b8],rax
    3980:	c5 f8 77             	vzeroupper
    3983:	c3                   	ret

Disassembly of section .fini:

0000000000003984 <_fini>:
    3984:	f3 0f 1e fa          	endbr64
    3988:	48 83 ec 08          	sub    rsp,0x8
    398c:	48 83 c4 08          	add    rsp,0x8
    3990:	c3                   	ret
