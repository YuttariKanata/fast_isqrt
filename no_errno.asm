
bench_no_errno:     file format elf64-x86-64


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
    1020:	ff 35 32 4f 00 00    	push   QWORD PTR [rip+0x4f32]        # 5f58 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 34 4f 00 00    	jmp    QWORD PTR [rip+0x4f34]        # 5f60 <_GLOBAL_OFFSET_TABLE_+0x10>
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

Disassembly of section .plt.got:

0000000000001110 <__cxa_finalize@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 be 4e 00 00    	jmp    QWORD PTR [rip+0x4ebe]        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    111a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001120 <_ZNSo3putEc@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 3e 4e 00 00    	jmp    QWORD PTR [rip+0x4e3e]        # 5f68 <_ZNSo3putEc@GLIBCXX_3.4>
    112a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001130 <_ZNSt6chrono3_V212system_clock3nowEv@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 36 4e 00 00    	jmp    QWORD PTR [rip+0x4e36]        # 5f70 <_ZNSt6chrono3_V212system_clock3nowEv@GLIBCXX_3.4.19>
    113a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001140 <memset@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 2e 4e 00 00    	jmp    QWORD PTR [rip+0x4e2e]        # 5f78 <memset@GLIBC_2.2.5>
    114a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001150 <_ZNSo9_M_insertImEERSoT_@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 26 4e 00 00    	jmp    QWORD PTR [rip+0x4e26]        # 5f80 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
    115a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001160 <_ZNSo5flushEv@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	ff 25 1e 4e 00 00    	jmp    QWORD PTR [rip+0x4e1e]        # 5f88 <_ZNSo5flushEv@GLIBCXX_3.4>
    116a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001170 <_Znwm@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	ff 25 16 4e 00 00    	jmp    QWORD PTR [rip+0x4e16]        # 5f90 <_Znwm@GLIBCXX_3.4>
    117a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001180 <_ZdlPvm@plt>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	ff 25 0e 4e 00 00    	jmp    QWORD PTR [rip+0x4e0e]        # 5f98 <_ZdlPvm@CXXABI_1.3.9>
    118a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001190 <__stack_chk_fail@plt>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	ff 25 06 4e 00 00    	jmp    QWORD PTR [rip+0x4e06]        # 5fa0 <__stack_chk_fail@GLIBC_2.4>
    119a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	ff 25 fe 4d 00 00    	jmp    QWORD PTR [rip+0x4dfe]        # 5fa8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
    11aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	ff 25 f6 4d 00 00    	jmp    QWORD PTR [rip+0x4df6]        # 5fb0 <_ZNKSt5ctypeIcE13_M_widen_initEv@GLIBCXX_3.4.11>
    11ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011c0 <_ZSt16__throw_bad_castv@plt>:
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	ff 25 ee 4d 00 00    	jmp    QWORD PTR [rip+0x4dee]        # 5fb8 <_ZSt16__throw_bad_castv@GLIBCXX_3.4>
    11ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011d0 <_ZNSo9_M_insertIdEERSoT_@plt>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	ff 25 e6 4d 00 00    	jmp    QWORD PTR [rip+0x4de6]        # 5fc0 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
    11da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011e0 <_ZNSolsEi@plt>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	ff 25 de 4d 00 00    	jmp    QWORD PTR [rip+0x4dde]        # 5fc8 <_ZNSolsEi@GLIBCXX_3.4>
    11ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000011f0 <_Unwind_Resume@plt>:
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	ff 25 d6 4d 00 00    	jmp    QWORD PTR [rip+0x4dd6]        # 5fd0 <_Unwind_Resume@GCC_3.0>
    11fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001200 <_ZN10fast_isqrtL15correct_isqrt64Em>:
    1200:	48 8d 47 ff          	lea    rax,[rdi-0x1]
    1204:	c3                   	ret

0000000000001205 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>:
    1205:	48 8d 56 01          	lea    rdx,[rsi+0x1]
    1209:	48 8d 47 ff          	lea    rax,[rdi-0x1]
    120d:	48 01 ff             	add    rdi,rdi
    1210:	48 29 fa             	sub    rdx,rdi
    1213:	c3                   	ret

0000000000001214 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>:
    1214:	48 8d 47 ff          	lea    rax,[rdi-0x1]
    1218:	48 01 ff             	add    rdi,rdi
    121b:	48 8d 54 37 ff       	lea    rdx,[rdi+rsi*1-0x1]
    1220:	c3                   	ret

0000000000001221 <main.cold>:
    1221:	e8 df ff ff ff       	call   1205 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>
    1226:	48 89 d6             	mov    rsi,rdx
    1229:	e9 cc 14 00 00       	jmp    26fa <main+0x133a>
    122e:	48 8b 7c 24 30       	mov    rdi,QWORD PTR [rsp+0x30]
    1233:	c5 f8 77             	vzeroupper
    1236:	e8 45 22 00 00       	call   3480 <_ZNSt6vectorImSaImEED1Ev>
    123b:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    1240:	e8 3b 22 00 00       	call   3480 <_ZNSt6vectorImSaImEED1Ev>
    1245:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    124c:	00 
    124d:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1254:	00 00 
    1256:	75 52                	jne    12aa <main.cold+0x89>
    1258:	48 89 df             	mov    rdi,rbx
    125b:	e8 90 ff ff ff       	call   11f0 <_Unwind_Resume@plt>
    1260:	e8 a0 ff ff ff       	call   1205 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>
    1265:	48 89 d6             	mov    rsi,rdx
    1268:	e9 14 1e 00 00       	jmp    3081 <main+0x1cc1>
    126d:	e8 93 ff ff ff       	call   1205 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>
    1272:	48 89 d6             	mov    rsi,rdx
    1275:	e9 d6 1d 00 00       	jmp    3050 <main+0x1c90>
    127a:	48 89 c7             	mov    rdi,rax
    127d:	e8 7e ff ff ff       	call   1200 <_ZN10fast_isqrtL15correct_isqrt64Em>
    1282:	e9 74 0b 00 00       	jmp    1dfb <main+0xa3b>
    1287:	48 8d bc 24 b0 00 00 	lea    rdi,[rsp+0xb0]
    128e:	00 
    128f:	c5 f8 77             	vzeroupper
    1292:	e8 19 22 00 00       	call   34b0 <_ZNSt6vectorIoSaIoEED1Ev>
    1297:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    129e:	00 
    129f:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    12a6:	00 00 
    12a8:	74 ae                	je     1258 <main.cold+0x37>
    12aa:	e8 e1 fe ff ff       	call   1190 <__stack_chk_fail@plt>
    12af:	48 89 c7             	mov    rdi,rax
    12b2:	e8 49 ff ff ff       	call   1200 <_ZN10fast_isqrtL15correct_isqrt64Em>
    12b7:	e9 12 0a 00 00       	jmp    1cce <main+0x90e>
    12bc:	48 89 c6             	mov    rsi,rax
    12bf:	e8 50 ff ff ff       	call   1214 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>
    12c4:	48 89 c7             	mov    rdi,rax
    12c7:	48 89 d0             	mov    rax,rdx
    12ca:	e9 62 09 00 00       	jmp    1c31 <main+0x871>
    12cf:	48 89 c6             	mov    rsi,rax
    12d2:	e8 3d ff ff ff       	call   1214 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>
    12d7:	48 89 c7             	mov    rdi,rax
    12da:	48 89 d0             	mov    rax,rdx
    12dd:	e9 13 1b 00 00       	jmp    2df5 <main+0x1a35>
    12e2:	48 89 c6             	mov    rsi,rax
    12e5:	e8 2a ff ff ff       	call   1214 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>
    12ea:	48 89 c7             	mov    rdi,rax
    12ed:	48 89 d0             	mov    rax,rdx
    12f0:	e9 38 19 00 00       	jmp    2c2d <main+0x186d>
    12f5:	e8 06 ff ff ff       	call   1200 <_ZN10fast_isqrtL15correct_isqrt64Em>
    12fa:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
    12ff:	48 83 c6 08          	add    rsi,0x8
    1303:	48 01 d0             	add    rax,rdx
    1306:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    130b:	4c 39 fe             	cmp    rsi,r15
    130e:	0f 85 4c 03 00 00    	jne    1660 <main+0x2a0>
    1314:	e9 84 03 00 00       	jmp    169d <main+0x2dd>
    1319:	e8 e7 fe ff ff       	call   1205 <_ZN10fast_isqrtL23correct_isqrt64_with_sqEmm>
    131e:	48 89 d6             	mov    rsi,rdx
    1321:	e9 f4 12 00 00       	jmp    261a <main+0x125a>
    1326:	48 8b 7c 24 30       	mov    rdi,QWORD PTR [rsp+0x30]
    132b:	c5 f8 77             	vzeroupper
    132e:	e8 7d 21 00 00       	call   34b0 <_ZNSt6vectorIoSaIoEED1Ev>
    1333:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    1338:	e8 73 21 00 00       	call   34b0 <_ZNSt6vectorIoSaIoEED1Ev>
    133d:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    1344:	00 
    1345:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    134c:	00 00 
    134e:	0f 84 04 ff ff ff    	je     1258 <main.cold+0x37>
    1354:	e9 51 ff ff ff       	jmp    12aa <main.cold+0x89>
    1359:	e8 a2 fe ff ff       	call   1200 <_ZN10fast_isqrtL15correct_isqrt64Em>
    135e:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
    1363:	48 83 c2 08          	add    rdx,0x8
    1367:	48 01 c8             	add    rax,rcx
    136a:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
    136f:	49 39 d0             	cmp    r8,rdx
    1372:	0f 85 88 02 00 00    	jne    1600 <main+0x240>
    1378:	e9 c0 02 00 00       	jmp    163d <main+0x27d>
    137d:	48 89 cf             	mov    rdi,rcx
    1380:	48 89 c6             	mov    rsi,rax
    1383:	e8 8c fe ff ff       	call   1214 <_ZN10fast_isqrtL30correct_isqrt64_with_remainderEmm>
    1388:	48 89 c1             	mov    rcx,rax
    138b:	48 89 d0             	mov    rax,rdx
    138e:	e9 be 09 00 00       	jmp    1d51 <main+0x991>
    1393:	48 8d bc 24 b0 00 00 	lea    rdi,[rsp+0xb0]
    139a:	00 
    139b:	c5 f8 77             	vzeroupper
    139e:	e8 dd 20 00 00       	call   3480 <_ZNSt6vectorImSaImEED1Ev>
    13a3:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    13aa:	00 
    13ab:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    13b2:	00 00 
    13b4:	0f 84 9e fe ff ff    	je     1258 <main.cold+0x37>
    13ba:	e9 eb fe ff ff       	jmp    12aa <main.cold+0x89>
    13bf:	90                   	nop

00000000000013c0 <main>:
    13c0:	f3 0f 1e fa          	endbr64
    13c4:	41 57                	push   r15
    13c6:	41 56                	push   r14
    13c8:	41 55                	push   r13
    13ca:	ba 3d 00 00 00       	mov    edx,0x3d
    13cf:	41 54                	push   r12
    13d1:	55                   	push   rbp
    13d2:	53                   	push   rbx
    13d3:	48 8d 35 2e 2c 00 00 	lea    rsi,[rip+0x2c2e]        # 4008 <_IO_stdin_used+0x8>
    13da:	48 81 ec a8 0a 00 00 	sub    rsp,0xaa8
    13e1:	48 8d 3d 58 4c 00 00 	lea    rdi,[rip+0x4c58]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    13e8:	48 bd 2d 7f 95 4c 2d 	movabs rbp,0x5851f42d4c957f2d
    13ef:	f4 51 58 
    13f2:	49 bc 55 55 55 55 55 	movabs r12,0x5555555555555555
    13f9:	55 55 55 
    13fc:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1403:	00 00 
    1405:	48 89 84 24 98 0a 00 	mov    QWORD PTR [rsp+0xa98],rax
    140c:	00 
    140d:	31 c0                	xor    eax,eax
    140f:	e8 8c fd ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1414:	48 8d 3d 25 4c 00 00 	lea    rdi,[rip+0x4c25]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    141b:	48 8d 9c 24 d0 00 00 	lea    rbx,[rsp+0xd0]
    1422:	00 
    1423:	49 bd 00 00 a6 ed ff 	movabs r13,0x71d67fffeda60000
    142a:	7f d6 71 
    142d:	e8 be 1f 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    1432:	ba 0a 00 00 00       	mov    edx,0xa
    1437:	48 8d 35 44 2d 00 00 	lea    rsi,[rip+0x2d44]        # 4182 <_IO_stdin_used+0x182>
    143e:	48 8d 3d fb 4b 00 00 	lea    rdi,[rip+0x4bfb]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1445:	e8 56 fd ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    144a:	48 8d 3d ef 4b 00 00 	lea    rdi,[rip+0x4bef]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1451:	e8 9a 1f 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    1456:	ba 32 00 00 00       	mov    edx,0x32
    145b:	48 8d 35 ee 2b 00 00 	lea    rsi,[rip+0x2bee]        # 4050 <_IO_stdin_used+0x50>
    1462:	48 8d 3d d7 4b 00 00 	lea    rdi,[rip+0x4bd7]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1469:	e8 32 fd ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    146e:	48 8d 3d cb 4b 00 00 	lea    rdi,[rip+0x4bcb]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1475:	e8 76 1f 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    147a:	c7 44 24 20 03 00 00 	mov    DWORD PTR [rsp+0x20],0x3
    1481:	00 
    1482:	e8 a9 fc ff ff       	call   1130 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    1487:	41 be 01 00 00 00    	mov    r14d,0x1
    148d:	48 89 c1             	mov    rcx,rax
    1490:	48 b8 db 34 b6 d7 82 	movabs rax,0x431bde82d7b634db
    1497:	de 1b 43 
    149a:	48 f7 e9             	imul   rcx
    149d:	48 c1 f9 3f          	sar    rcx,0x3f
    14a1:	48 c1 fa 12          	sar    rdx,0x12
    14a5:	48 29 ca             	sub    rdx,rcx
    14a8:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
    14ad:	48 89 94 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rdx
    14b4:	00 
    14b5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    14bc:	00 00 00 00 
    14c0:	48 89 d0             	mov    rax,rdx
    14c3:	48 c1 e8 3e          	shr    rax,0x3e
    14c7:	48 31 d0             	xor    rax,rdx
    14ca:	48 0f af c5          	imul   rax,rbp
    14ce:	4a 8d 14 30          	lea    rdx,[rax+r14*1]
    14d2:	4a 89 14 f3          	mov    QWORD PTR [rbx+r14*8],rdx
    14d6:	49 ff c6             	inc    r14
    14d9:	49 81 fe 38 01 00 00 	cmp    r14,0x138
    14e0:	75 de                	jne    14c0 <main+0x100>
    14e2:	bf 00 08 af 2f       	mov    edi,0x2faf0800
    14e7:	48 c7 84 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],0x138
    14ee:	00 38 01 00 00 
    14f3:	e8 78 fc ff ff       	call   1170 <_Znwm@plt>
    14f8:	ba f8 07 af 2f       	mov    edx,0x2faf07f8
    14fd:	31 f6                	xor    esi,esi
    14ff:	4c 8d b8 00 08 af 2f 	lea    r15,[rax+0x2faf0800]
    1506:	48 8d 78 08          	lea    rdi,[rax+0x8]
    150a:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
    1511:	00 
    1512:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    1519:	4c 89 bc 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],r15
    1520:	00 
    1521:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    1526:	e8 15 fc ff ff       	call   1140 <memset@plt>
    152b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    1530:	4c 89 f1             	mov    rcx,r14
    1533:	4c 89 bc 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r15
    153a:	00 
    153b:	4d 89 fe             	mov    r14,r15
    153e:	49 b8 00 00 00 00 e0 	movabs r8,0xfff7eee000000000
    1545:	ee f7 ff 
    1548:	49 89 d7             	mov    r15,rdx
    154b:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    1550:	eb 60                	jmp    15b2 <main+0x1f2>
    1552:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1559:	00 00 00 00 
    155d:	0f 1f 00             	nop    DWORD PTR [rax]
    1560:	48 8d 48 01          	lea    rcx,[rax+0x1]
    1564:	48 8b 84 c4 d0 00 00 	mov    rax,QWORD PTR [rsp+rax*8+0xd0]
    156b:	00 
    156c:	49 83 c7 08          	add    r15,0x8
    1570:	48 89 8c 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],rcx
    1577:	00 
    1578:	48 89 c6             	mov    rsi,rax
    157b:	48 c1 ee 1d          	shr    rsi,0x1d
    157f:	4c 21 e6             	and    rsi,r12
    1582:	48 31 f0             	xor    rax,rsi
    1585:	48 89 c6             	mov    rsi,rax
    1588:	48 c1 e6 11          	shl    rsi,0x11
    158c:	4c 21 ee             	and    rsi,r13
    158f:	48 31 f0             	xor    rax,rsi
    1592:	48 89 c6             	mov    rsi,rax
    1595:	48 c1 e6 25          	shl    rsi,0x25
    1599:	4c 21 c6             	and    rsi,r8
    159c:	48 31 f0             	xor    rax,rsi
    159f:	48 89 c6             	mov    rsi,rax
    15a2:	48 c1 ee 2b          	shr    rsi,0x2b
    15a6:	48 31 f0             	xor    rax,rsi
    15a9:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
    15ad:	4d 39 f7             	cmp    r15,r14
    15b0:	74 28                	je     15da <main+0x21a>
    15b2:	48 89 c8             	mov    rax,rcx
    15b5:	48 81 f9 37 01 00 00 	cmp    rcx,0x137
    15bc:	76 a2                	jbe    1560 <main+0x1a0>
    15be:	48 89 df             	mov    rdi,rbx
    15c1:	e8 1a 1f 00 00       	call   34e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    15c6:	48 8b 84 24 90 0a 00 	mov    rax,QWORD PTR [rsp+0xa90]
    15cd:	00 
    15ce:	49 b8 00 00 00 00 e0 	movabs r8,0xfff7eee000000000
    15d5:	ee f7 ff 
    15d8:	eb 86                	jmp    1560 <main+0x1a0>
    15da:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    15df:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
    15e4:	4d 89 f7             	mov    r15,r14
    15e7:	48 c7 44 24 40 00 00 	mov    QWORD PTR [rsp+0x40],0x0
    15ee:	00 00 
    15f0:	4c 8d 82 00 35 0c 00 	lea    r8,[rdx+0xc3500]
    15f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    15fe:	00 00 
    1600:	48 8b 02             	mov    rax,QWORD PTR [rdx]
    1603:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
    1607:	62 f1 ef 08 7b c0    	vcvtusi2sd xmm0,xmm2,rax
    160d:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1611:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    1617:	48 89 f9             	mov    rcx,rdi
    161a:	48 0f af cf          	imul   rcx,rdi
    161e:	48 39 c8             	cmp    rax,rcx
    1621:	0f 88 32 fd ff ff    	js     1359 <main.cold+0x138>
    1627:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
    162c:	48 83 c2 08          	add    rdx,0x8
    1630:	48 01 f8             	add    rax,rdi
    1633:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
    1638:	4c 39 c2             	cmp    rdx,r8
    163b:	75 c3                	jne    1600 <main+0x240>
    163d:	48 c7 44 24 48 00 00 	mov    QWORD PTR [rsp+0x48],0x0
    1644:	00 00 
    1646:	0f 31                	rdtsc
    1648:	48 c1 e2 20          	shl    rdx,0x20
    164c:	49 89 c0             	mov    r8,rax
    164f:	49 09 d0             	or     r8,rdx
    1652:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1659:	00 00 00 00 
    165d:	0f 1f 00             	nop    DWORD PTR [rax]
    1660:	48 8b 06             	mov    rax,QWORD PTR [rsi]
    1663:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
    1667:	62 f1 e7 08 7b c0    	vcvtusi2sd xmm0,xmm3,rax
    166d:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1671:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    1677:	48 89 fa             	mov    rdx,rdi
    167a:	48 0f af d7          	imul   rdx,rdi
    167e:	48 39 d0             	cmp    rax,rdx
    1681:	0f 88 6e fc ff ff    	js     12f5 <main.cold+0xd4>
    1687:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
    168c:	48 83 c6 08          	add    rsi,0x8
    1690:	48 01 f8             	add    rax,rdi
    1693:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    1698:	4c 39 fe             	cmp    rsi,r15
    169b:	75 c3                	jne    1660 <main+0x2a0>
    169d:	0f 31                	rdtsc
    169f:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
    16a3:	48 c1 e2 20          	shl    rdx,0x20
    16a7:	48 09 d0             	or     rax,rdx
    16aa:	48 8d 35 dc 2a 00 00 	lea    rsi,[rip+0x2adc]        # 418d <_IO_stdin_used+0x18d>
    16b1:	ba 1d 00 00 00       	mov    edx,0x1d
    16b6:	48 8d 3d 83 49 00 00 	lea    rdi,[rip+0x4983]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    16bd:	4c 29 c0             	sub    rax,r8
    16c0:	62 f1 f7 08 7b c0    	vcvtusi2sd xmm0,xmm1,rax
    16c6:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    16cb:	c5 fb 5e 0d cd 2b 00 	vdivsd xmm1,xmm0,QWORD PTR [rip+0x2bcd]        # 42a0 <_IO_stdin_used+0x2a0>
    16d2:	00 
    16d3:	c5 fb 11 4c 24 30    	vmovsd QWORD PTR [rsp+0x30],xmm1
    16d9:	e8 c2 fa ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    16de:	48 8d 3d 5b 49 00 00 	lea    rdi,[rip+0x495b]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    16e5:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    16e8:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    16ec:	4c 8b b4 07 f0 00 00 	mov    r14,QWORD PTR [rdi+rax*1+0xf0]
    16f3:	00 
    16f4:	4d 85 f6             	test   r14,r14
    16f7:	0f 84 1f 1a 00 00    	je     311c <main+0x1d5c>
    16fd:	41 80 7e 38 00       	cmp    BYTE PTR [r14+0x38],0x0
    1702:	0f 84 e4 0c 00 00    	je     23ec <main+0x102c>
    1708:	41 0f be 76 43       	movsx  esi,BYTE PTR [r14+0x43]
    170d:	48 8d 3d 2c 49 00 00 	lea    rdi,[rip+0x492c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1714:	e8 07 fa ff ff       	call   1120 <_ZNSo3putEc@plt>
    1719:	48 89 c7             	mov    rdi,rax
    171c:	e8 3f fa ff ff       	call   1160 <_ZNSo5flushEv@plt>
    1721:	ba 14 00 00 00       	mov    edx,0x14
    1726:	48 8d 35 7e 2a 00 00 	lea    rsi,[rip+0x2a7e]        # 41ab <_IO_stdin_used+0x1ab>
    172d:	48 8d 3d 0c 49 00 00 	lea    rdi,[rip+0x490c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1734:	e8 67 fa ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1739:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
    173e:	48 8d 3d fb 48 00 00 	lea    rdi,[rip+0x48fb]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1745:	e8 06 fa ff ff       	call   1150 <_ZNSo9_M_insertImEERSoT_@plt>
    174a:	49 89 c6             	mov    r14,rax
    174d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1750:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1754:	4d 8b bc 06 f0 00 00 	mov    r15,QWORD PTR [r14+rax*1+0xf0]
    175b:	00 
    175c:	4d 85 ff             	test   r15,r15
    175f:	0f 84 9f 19 00 00    	je     3104 <main+0x1d44>
    1765:	41 80 7f 38 00       	cmp    BYTE PTR [r15+0x38],0x0
    176a:	0f 84 4b 0c 00 00    	je     23bb <main+0xffb>
    1770:	41 0f be 77 43       	movsx  esi,BYTE PTR [r15+0x43]
    1775:	4c 89 f7             	mov    rdi,r14
    1778:	e8 a3 f9 ff ff       	call   1120 <_ZNSo3putEc@plt>
    177d:	48 89 c7             	mov    rdi,rax
    1780:	e8 db f9 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    1785:	ba 14 00 00 00       	mov    edx,0x14
    178a:	48 8d 35 2f 2a 00 00 	lea    rsi,[rip+0x2a2f]        # 41c0 <_IO_stdin_used+0x1c0>
    1791:	48 8d 3d a8 48 00 00 	lea    rdi,[rip+0x48a8]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1798:	e8 03 fa ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    179d:	be 00 e1 f5 05       	mov    esi,0x5f5e100
    17a2:	48 8d 3d 97 48 00 00 	lea    rdi,[rip+0x4897]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    17a9:	e8 32 fa ff ff       	call   11e0 <_ZNSolsEi@plt>
    17ae:	ba 19 00 00 00       	mov    edx,0x19
    17b3:	48 8d 35 1b 2a 00 00 	lea    rsi,[rip+0x2a1b]        # 41d5 <_IO_stdin_used+0x1d5>
    17ba:	48 89 c7             	mov    rdi,rax
    17bd:	49 89 c6             	mov    r14,rax
    17c0:	e8 db f9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    17c5:	49 8b 06             	mov    rax,QWORD PTR [r14]
    17c8:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    17cc:	4d 8b bc 06 f0 00 00 	mov    r15,QWORD PTR [r14+rax*1+0xf0]
    17d3:	00 
    17d4:	4d 85 ff             	test   r15,r15
    17d7:	0f 84 0f 19 00 00    	je     30ec <main+0x1d2c>
    17dd:	41 80 7f 38 00       	cmp    BYTE PTR [r15+0x38],0x0
    17e2:	0f 84 a2 0b 00 00    	je     238a <main+0xfca>
    17e8:	41 0f be 77 43       	movsx  esi,BYTE PTR [r15+0x43]
    17ed:	4c 89 f7             	mov    rdi,r14
    17f0:	e8 2b f9 ff ff       	call   1120 <_ZNSo3putEc@plt>
    17f5:	48 89 c7             	mov    rdi,rax
    17f8:	e8 63 f9 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    17fd:	ba 14 00 00 00       	mov    edx,0x14
    1802:	48 8d 35 e6 29 00 00 	lea    rsi,[rip+0x29e6]        # 41ef <_IO_stdin_used+0x1ef>
    1809:	48 8d 3d 30 48 00 00 	lea    rdi,[rip+0x4830]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1810:	e8 8b f9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1815:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
    181a:	48 8d 3d 1f 48 00 00 	lea    rdi,[rip+0x481f]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1821:	e8 2a f9 ff ff       	call   1150 <_ZNSo9_M_insertImEERSoT_@plt>
    1826:	ba 07 00 00 00       	mov    edx,0x7
    182b:	48 8d 35 d2 29 00 00 	lea    rsi,[rip+0x29d2]        # 4204 <_IO_stdin_used+0x204>
    1832:	48 89 c7             	mov    rdi,rax
    1835:	49 89 c6             	mov    r14,rax
    1838:	e8 63 f9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    183d:	49 8b 06             	mov    rax,QWORD PTR [r14]
    1840:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1844:	4d 8b bc 06 f0 00 00 	mov    r15,QWORD PTR [r14+rax*1+0xf0]
    184b:	00 
    184c:	4d 85 ff             	test   r15,r15
    184f:	0f 84 7f 18 00 00    	je     30d4 <main+0x1d14>
    1855:	41 80 7f 38 00       	cmp    BYTE PTR [r15+0x38],0x0
    185a:	0f 84 f9 0a 00 00    	je     2359 <main+0xf99>
    1860:	41 0f be 77 43       	movsx  esi,BYTE PTR [r15+0x43]
    1865:	4c 89 f7             	mov    rdi,r14
    1868:	e8 b3 f8 ff ff       	call   1120 <_ZNSo3putEc@plt>
    186d:	48 89 c7             	mov    rdi,rax
    1870:	e8 eb f8 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    1875:	ba 14 00 00 00       	mov    edx,0x14
    187a:	48 8d 35 8b 29 00 00 	lea    rsi,[rip+0x298b]        # 420c <_IO_stdin_used+0x20c>
    1881:	48 8d 3d b8 47 00 00 	lea    rdi,[rip+0x47b8]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1888:	e8 13 f9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    188d:	48 8d 3d ac 47 00 00 	lea    rdi,[rip+0x47ac]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1894:	c5 fb 10 44 24 30    	vmovsd xmm0,QWORD PTR [rsp+0x30]
    189a:	e8 31 f9 ff ff       	call   11d0 <_ZNSo9_M_insertIdEERSoT_@plt>
    189f:	ba 0e 00 00 00       	mov    edx,0xe
    18a4:	48 8d 35 76 29 00 00 	lea    rsi,[rip+0x2976]        # 4221 <_IO_stdin_used+0x221>
    18ab:	48 89 c7             	mov    rdi,rax
    18ae:	49 89 c6             	mov    r14,rax
    18b1:	e8 ea f8 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    18b6:	49 8b 06             	mov    rax,QWORD PTR [r14]
    18b9:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    18bd:	4d 8b bc 06 f0 00 00 	mov    r15,QWORD PTR [r14+rax*1+0xf0]
    18c4:	00 
    18c5:	4d 85 ff             	test   r15,r15
    18c8:	0f 84 ee 17 00 00    	je     30bc <main+0x1cfc>
    18ce:	41 80 7f 38 00       	cmp    BYTE PTR [r15+0x38],0x0
    18d3:	0f 84 4f 0a 00 00    	je     2328 <main+0xf68>
    18d9:	41 0f be 77 43       	movsx  esi,BYTE PTR [r15+0x43]
    18de:	4c 89 f7             	mov    rdi,r14
    18e1:	e8 3a f8 ff ff       	call   1120 <_ZNSo3putEc@plt>
    18e6:	48 89 c7             	mov    rdi,rax
    18e9:	e8 72 f8 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    18ee:	ba 32 00 00 00       	mov    edx,0x32
    18f3:	48 8d 35 56 27 00 00 	lea    rsi,[rip+0x2756]        # 4050 <_IO_stdin_used+0x50>
    18fa:	48 8d 3d 3f 47 00 00 	lea    rdi,[rip+0x473f]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1901:	e8 9a f8 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1906:	48 8d 3d 33 47 00 00 	lea    rdi,[rip+0x4733]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    190d:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    1910:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1914:	4c 8b b4 07 f0 00 00 	mov    r14,QWORD PTR [rdi+rax*1+0xf0]
    191b:	00 
    191c:	4d 85 f6             	test   r14,r14
    191f:	0f 84 72 18 00 00    	je     3197 <main+0x1dd7>
    1925:	41 80 7e 38 00       	cmp    BYTE PTR [r14+0x38],0x0
    192a:	0f 84 c7 09 00 00    	je     22f7 <main+0xf37>
    1930:	41 0f be 76 43       	movsx  esi,BYTE PTR [r14+0x43]
    1935:	48 8d 3d 04 47 00 00 	lea    rdi,[rip+0x4704]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    193c:	e8 df f7 ff ff       	call   1120 <_ZNSo3putEc@plt>
    1941:	48 89 c7             	mov    rdi,rax
    1944:	e8 17 f8 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    1949:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    194e:	be 00 08 af 2f       	mov    esi,0x2faf0800
    1953:	e8 28 f8 ff ff       	call   1180 <_ZdlPvm@plt>
    1958:	ff 4c 24 20          	dec    DWORD PTR [rsp+0x20]
    195c:	0f 85 20 fb ff ff    	jne    1482 <main+0xc2>
    1962:	ba 0b 00 00 00       	mov    edx,0xb
    1967:	48 8d 35 c2 28 00 00 	lea    rsi,[rip+0x28c2]        # 4230 <_IO_stdin_used+0x230>
    196e:	48 8d 3d cb 46 00 00 	lea    rdi,[rip+0x46cb]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1975:	48 bd 55 55 55 55 55 	movabs rbp,0x5555555555555555
    197c:	55 55 55 
    197f:	e8 1c f8 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1984:	48 8d 3d b5 46 00 00 	lea    rdi,[rip+0x46b5]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    198b:	e8 60 1a 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    1990:	ba 32 00 00 00       	mov    edx,0x32
    1995:	48 8d 35 b4 26 00 00 	lea    rsi,[rip+0x26b4]        # 4050 <_IO_stdin_used+0x50>
    199c:	48 8d 3d 9d 46 00 00 	lea    rdi,[rip+0x469d]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    19a3:	e8 f8 f7 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    19a8:	48 8d 3d 91 46 00 00 	lea    rdi,[rip+0x4691]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    19af:	e8 3c 1a 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    19b4:	c7 44 24 30 03 00 00 	mov    DWORD PTR [rsp+0x30],0x3
    19bb:	00 
    19bc:	e8 6f f7 ff ff       	call   1130 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    19c1:	41 b8 01 00 00 00    	mov    r8d,0x1
    19c7:	48 89 c1             	mov    rcx,rax
    19ca:	48 b8 db 34 b6 d7 82 	movabs rax,0x431bde82d7b634db
    19d1:	de 1b 43 
    19d4:	48 f7 e9             	imul   rcx
    19d7:	48 c1 f9 3f          	sar    rcx,0x3f
    19db:	48 c1 fa 12          	sar    rdx,0x12
    19df:	48 29 ca             	sub    rdx,rcx
    19e2:	48 b9 2d 7f 95 4c 2d 	movabs rcx,0x5851f42d4c957f2d
    19e9:	f4 51 58 
    19ec:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    19f1:	48 89 94 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rdx
    19f8:	00 
    19f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1a00:	48 89 d0             	mov    rax,rdx
    1a03:	48 c1 e8 3e          	shr    rax,0x3e
    1a07:	48 31 d0             	xor    rax,rdx
    1a0a:	48 0f af c1          	imul   rax,rcx
    1a0e:	4a 8d 14 00          	lea    rdx,[rax+r8*1]
    1a12:	4a 89 14 c3          	mov    QWORD PTR [rbx+r8*8],rdx
    1a16:	49 ff c0             	inc    r8
    1a19:	49 81 f8 38 01 00 00 	cmp    r8,0x138
    1a20:	75 de                	jne    1a00 <main+0x640>
    1a22:	bf 00 10 5e 5f       	mov    edi,0x5f5e1000
    1a27:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    1a2c:	48 c7 84 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],0x138
    1a33:	00 38 01 00 00 
    1a38:	e8 33 f7 ff ff       	call   1170 <_Znwm@plt>
    1a3d:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    1a42:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    1a46:	4c 8d b0 00 10 5e 5f 	lea    r14,[rax+0x5f5e1000]
    1a4d:	48 89 c2             	mov    rdx,rax
    1a50:	c5 f9 7f 00          	vmovdqa XMMWORD PTR [rax],xmm0
    1a54:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    1a59:	c5 f9 7f 40 10       	vmovdqa XMMWORD PTR [rax+0x10],xmm0
    1a5e:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
    1a65:	00 
    1a66:	48 8d 40 20          	lea    rax,[rax+0x20]
    1a6a:	4c 89 b4 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],r14
    1a71:	00 
    1a72:	c5 f9 6f 0a          	vmovdqa xmm1,XMMWORD PTR [rdx]
    1a76:	48 83 c0 10          	add    rax,0x10
    1a7a:	c5 f9 7f 48 f0       	vmovdqa XMMWORD PTR [rax-0x10],xmm1
    1a7f:	49 39 c6             	cmp    r14,rax
    1a82:	75 ee                	jne    1a72 <main+0x6b2>
    1a84:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
    1a89:	48 b9 00 00 a6 ed ff 	movabs rcx,0x71d67fffeda60000
    1a90:	7f d6 71 
    1a93:	49 bf 00 00 00 00 e0 	movabs r15,0xfff7eee000000000
    1a9a:	ee f7 ff 
    1a9d:	4c 89 b4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r14
    1aa4:	00 
    1aa5:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
    1aaa:	e9 ac 00 00 00       	jmp    1b5b <main+0x79b>
    1aaf:	90                   	nop
    1ab0:	4a 8b 84 c4 d0 00 00 	mov    rax,QWORD PTR [rsp+r8*8+0xd0]
    1ab7:	00 
    1ab8:	49 8d 70 01          	lea    rsi,[r8+0x1]
    1abc:	48 89 b4 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],rsi
    1ac3:	00 
    1ac4:	48 89 c2             	mov    rdx,rax
    1ac7:	48 c1 ea 1d          	shr    rdx,0x1d
    1acb:	48 21 ea             	and    rdx,rbp
    1ace:	48 31 d0             	xor    rax,rdx
    1ad1:	48 89 c2             	mov    rdx,rax
    1ad4:	48 c1 e2 11          	shl    rdx,0x11
    1ad8:	48 21 ca             	and    rdx,rcx
    1adb:	48 31 d0             	xor    rax,rdx
    1ade:	48 89 c2             	mov    rdx,rax
    1ae1:	48 c1 e2 25          	shl    rdx,0x25
    1ae5:	4c 21 fa             	and    rdx,r15
    1ae8:	48 31 d0             	xor    rax,rdx
    1aeb:	48 89 c2             	mov    rdx,rax
    1aee:	48 c1 ea 2b          	shr    rdx,0x2b
    1af2:	48 31 d0             	xor    rax,rdx
    1af5:	49 89 c4             	mov    r12,rax
    1af8:	48 81 fe 37 01 00 00 	cmp    rsi,0x137
    1aff:	0f 87 8b 00 00 00    	ja     1b90 <main+0x7d0>
    1b05:	48 8b 84 f4 d0 00 00 	mov    rax,QWORD PTR [rsp+rsi*8+0xd0]
    1b0c:	00 
    1b0d:	4c 8d 46 01          	lea    r8,[rsi+0x1]
    1b11:	4d 89 65 08          	mov    QWORD PTR [r13+0x8],r12
    1b15:	49 83 c5 10          	add    r13,0x10
    1b19:	4c 89 84 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],r8
    1b20:	00 
    1b21:	48 89 c6             	mov    rsi,rax
    1b24:	48 c1 ee 1d          	shr    rsi,0x1d
    1b28:	48 21 ee             	and    rsi,rbp
    1b2b:	48 31 f0             	xor    rax,rsi
    1b2e:	48 89 c6             	mov    rsi,rax
    1b31:	48 c1 e6 11          	shl    rsi,0x11
    1b35:	48 21 ce             	and    rsi,rcx
    1b38:	48 31 f0             	xor    rax,rsi
    1b3b:	48 89 c6             	mov    rsi,rax
    1b3e:	48 c1 e6 25          	shl    rsi,0x25
    1b42:	4c 21 fe             	and    rsi,r15
    1b45:	48 31 f0             	xor    rax,rsi
    1b48:	48 89 c6             	mov    rsi,rax
    1b4b:	48 c1 ee 2b          	shr    rsi,0x2b
    1b4f:	48 31 f0             	xor    rax,rsi
    1b52:	49 89 45 f0          	mov    QWORD PTR [r13-0x10],rax
    1b56:	4d 39 f5             	cmp    r13,r14
    1b59:	74 54                	je     1baf <main+0x7ef>
    1b5b:	49 81 f8 37 01 00 00 	cmp    r8,0x137
    1b62:	0f 86 48 ff ff ff    	jbe    1ab0 <main+0x6f0>
    1b68:	48 89 df             	mov    rdi,rbx
    1b6b:	e8 70 19 00 00       	call   34e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    1b70:	4c 8b 84 24 90 0a 00 	mov    r8,QWORD PTR [rsp+0xa90]
    1b77:	00 
    1b78:	48 b9 00 00 a6 ed ff 	movabs rcx,0x71d67fffeda60000
    1b7f:	7f d6 71 
    1b82:	e9 29 ff ff ff       	jmp    1ab0 <main+0x6f0>
    1b87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    1b8e:	00 00 
    1b90:	48 89 df             	mov    rdi,rbx
    1b93:	e8 48 19 00 00       	call   34e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    1b98:	48 8b b4 24 90 0a 00 	mov    rsi,QWORD PTR [rsp+0xa90]
    1b9f:	00 
    1ba0:	48 b9 00 00 a6 ed ff 	movabs rcx,0x71d67fffeda60000
    1ba7:	7f d6 71 
    1baa:	e9 56 ff ff ff       	jmp    1b05 <main+0x745>
    1baf:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
    1bb4:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    1bb8:	c4 e1 f9 6e fb       	vmovq  xmm7,rbx
    1bbd:	c5 f9 7f 44 24 70    	vmovdqa XMMWORD PTR [rsp+0x70],xmm0
    1bc3:	49 8d 85 00 6a 18 00 	lea    rax,[r13+0x186a00]
    1bca:	49 89 c4             	mov    r12,rax
    1bcd:	e9 c7 00 00 00       	jmp    1c99 <main+0x8d9>
    1bd2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1bd9:	00 00 00 00 
    1bdd:	0f 1f 00             	nop    DWORD PTR [rax]
    1be0:	f3 49 0f bd cb       	lzcnt  rcx,r11
    1be5:	4d 89 d9             	mov    r9,r11
    1be8:	41 89 cf             	mov    r15d,ecx
    1beb:	83 e1 fe             	and    ecx,0xfffffffe
    1bee:	4d 0f a5 d1          	shld   r9,r10,cl
    1bf2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
    1bf6:	31 c0                	xor    eax,eax
    1bf8:	4d 89 d0             	mov    r8,r10
    1bfb:	41 d1 ff             	sar    r15d,1
    1bfe:	c4 42 f1 f7 c0       	shlx   r8,r8,rcx
    1c03:	f6 c1 40             	test   cl,0x40
    1c06:	4d 0f 45 c8          	cmovne r9,r8
    1c0a:	4c 0f 45 c0          	cmovne r8,rax
    1c0e:	62 d1 df 08 7b c1    	vcvtusi2sd xmm0,xmm4,r9
    1c14:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1c18:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    1c1e:	48 89 fa             	mov    rdx,rdi
    1c21:	48 0f af d7          	imul   rdx,rdi
    1c25:	4c 89 c8             	mov    rax,r9
    1c28:	48 29 d0             	sub    rax,rdx
    1c2b:	0f 88 8b f6 ff ff    	js     12bc <main.cold+0x9b>
    1c31:	49 0f ac c0 21       	shrd   r8,rax,0x21
    1c36:	31 d2                	xor    edx,edx
    1c38:	4c 89 c0             	mov    rax,r8
    1c3b:	b9 20 00 00 00       	mov    ecx,0x20
    1c40:	48 f7 f7             	div    rdi
    1c43:	44 29 f9             	sub    ecx,r15d
    1c46:	c4 e2 f1 f7 cf       	shlx   rcx,rdi,rcx
    1c4b:	c4 62 83 f7 c0       	shrx   r8,rax,r15
    1c50:	4c 01 c1             	add    rcx,r8
    1c53:	0f 82 40 14 00 00    	jb     3099 <main+0x1cd9>
    1c59:	48 89 ca             	mov    rdx,rcx
    1c5c:	c4 e2 fb f6 d1       	mulx   rdx,rax,rcx
    1c61:	49 39 c2             	cmp    r10,rax
    1c64:	49 19 d3             	sbb    r11,rdx
    1c67:	31 d2                	xor    edx,edx
    1c69:	4c 89 d8             	mov    rax,r11
    1c6c:	48 c1 e8 3f          	shr    rax,0x3f
    1c70:	48 29 c1             	sub    rcx,rax
    1c73:	48 89 c8             	mov    rax,rcx
    1c76:	48 8b 4c 24 70       	mov    rcx,QWORD PTR [rsp+0x70]
    1c7b:	48 8b 5c 24 78       	mov    rbx,QWORD PTR [rsp+0x78]
    1c80:	48 01 c8             	add    rax,rcx
    1c83:	48 11 da             	adc    rdx,rbx
    1c86:	49 83 c5 10          	add    r13,0x10
    1c8a:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    1c8f:	48 89 54 24 78       	mov    QWORD PTR [rsp+0x78],rdx
    1c94:	4d 39 e5             	cmp    r13,r12
    1c97:	74 39                	je     1cd2 <main+0x912>
    1c99:	4d 8b 5d 08          	mov    r11,QWORD PTR [r13+0x8]
    1c9d:	4d 8b 55 00          	mov    r10,QWORD PTR [r13+0x0]
    1ca1:	4d 85 db             	test   r11,r11
    1ca4:	0f 85 36 ff ff ff    	jne    1be0 <main+0x820>
    1caa:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    1cae:	62 d1 cf 08 7b c2    	vcvtusi2sd xmm0,xmm6,r10
    1cb4:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1cb8:	62 f1 ff 08 78 c0    	vcvttsd2usi rax,xmm0
    1cbe:	48 89 c2             	mov    rdx,rax
    1cc1:	48 0f af d0          	imul   rdx,rax
    1cc5:	49 39 d2             	cmp    r10,rdx
    1cc8:	0f 88 e1 f5 ff ff    	js     12af <main.cold+0x8e>
    1cce:	31 d2                	xor    edx,edx
    1cd0:	eb a4                	jmp    1c76 <main+0x8b6>
    1cd2:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
    1cd7:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    1cdb:	c5 f9 7f 84 24 80 00 	vmovdqa XMMWORD PTR [rsp+0x80],xmm0
    1ce2:	00 00 
    1ce4:	0f 31                	rdtsc
    1ce6:	48 c1 e2 20          	shl    rdx,0x20
    1cea:	c5 f9 6f cf          	vmovdqa xmm1,xmm7
    1cee:	49 89 c5             	mov    r13,rax
    1cf1:	49 09 d5             	or     r13,rdx
    1cf4:	e9 cc 00 00 00       	jmp    1dc5 <main+0xa05>
    1cf9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1d00:	f3 49 0f bd cb       	lzcnt  rcx,r11
    1d05:	4d 89 d9             	mov    r9,r11
    1d08:	41 89 cf             	mov    r15d,ecx
    1d0b:	83 e1 fe             	and    ecx,0xfffffffe
    1d0e:	4d 0f a5 d1          	shld   r9,r10,cl
    1d12:	c5 d1 57 ed          	vxorpd xmm5,xmm5,xmm5
    1d16:	31 db                	xor    ebx,ebx
    1d18:	4d 89 d0             	mov    r8,r10
    1d1b:	41 d1 ff             	sar    r15d,1
    1d1e:	c4 42 f1 f7 c0       	shlx   r8,r8,rcx
    1d23:	f6 c1 40             	test   cl,0x40
    1d26:	4d 0f 45 c8          	cmovne r9,r8
    1d2a:	4c 0f 45 c3          	cmovne r8,rbx
    1d2e:	62 d1 d7 08 7b c1    	vcvtusi2sd xmm0,xmm5,r9
    1d34:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1d38:	62 f1 ff 08 78 c8    	vcvttsd2usi rcx,xmm0
    1d3e:	48 89 ca             	mov    rdx,rcx
    1d41:	48 0f af d1          	imul   rdx,rcx
    1d45:	4c 89 c8             	mov    rax,r9
    1d48:	48 29 d0             	sub    rax,rdx
    1d4b:	0f 88 2c f6 ff ff    	js     137d <main.cold+0x15c>
    1d51:	49 0f ac c0 21       	shrd   r8,rax,0x21
    1d56:	31 d2                	xor    edx,edx
    1d58:	4c 89 c0             	mov    rax,r8
    1d5b:	bf 20 00 00 00       	mov    edi,0x20
    1d60:	48 f7 f1             	div    rcx
    1d63:	44 29 ff             	sub    edi,r15d
    1d66:	c4 e2 c1 f7 f9       	shlx   rdi,rcx,rdi
    1d6b:	c4 62 83 f7 c0       	shrx   r8,rax,r15
    1d70:	4c 01 c7             	add    rdi,r8
    1d73:	0f 82 15 13 00 00    	jb     308e <main+0x1cce>
    1d79:	48 89 fa             	mov    rdx,rdi
    1d7c:	c4 e2 fb f6 d7       	mulx   rdx,rax,rdi
    1d81:	49 39 c2             	cmp    r10,rax
    1d84:	49 19 d3             	sbb    r11,rdx
    1d87:	31 d2                	xor    edx,edx
    1d89:	4c 89 d8             	mov    rax,r11
    1d8c:	48 c1 e8 3f          	shr    rax,0x3f
    1d90:	48 29 c7             	sub    rdi,rax
    1d93:	48 89 f8             	mov    rax,rdi
    1d96:	48 8b 8c 24 80 00 00 	mov    rcx,QWORD PTR [rsp+0x80]
    1d9d:	00 
    1d9e:	48 8b 9c 24 88 00 00 	mov    rbx,QWORD PTR [rsp+0x88]
    1da5:	00 
    1da6:	48 01 c8             	add    rax,rcx
    1da9:	48 11 da             	adc    rdx,rbx
    1dac:	49 83 c4 10          	add    r12,0x10
    1db0:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
    1db7:	00 
    1db8:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
    1dbf:	00 
    1dc0:	4d 39 f4             	cmp    r12,r14
    1dc3:	74 3a                	je     1dff <main+0xa3f>
    1dc5:	4d 8b 5c 24 08       	mov    r11,QWORD PTR [r12+0x8]
    1dca:	4d 8b 14 24          	mov    r10,QWORD PTR [r12]
    1dce:	4d 85 db             	test   r11,r11
    1dd1:	0f 85 29 ff ff ff    	jne    1d00 <main+0x940>
    1dd7:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    1ddb:	62 d1 c7 08 7b c2    	vcvtusi2sd xmm0,xmm7,r10
    1de1:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    1de5:	62 f1 ff 08 78 c0    	vcvttsd2usi rax,xmm0
    1deb:	48 89 c2             	mov    rdx,rax
    1dee:	48 0f af d0          	imul   rdx,rax
    1df2:	49 39 d2             	cmp    r10,rdx
    1df5:	0f 88 7f f4 ff ff    	js     127a <main.cold+0x59>
    1dfb:	31 d2                	xor    edx,edx
    1dfd:	eb 97                	jmp    1d96 <main+0x9d6>
    1dff:	c4 e1 f9 7e cb       	vmovq  rbx,xmm1
    1e04:	0f 31                	rdtsc
    1e06:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
    1e0a:	48 c1 e2 20          	shl    rdx,0x20
    1e0e:	48 09 d0             	or     rax,rdx
    1e11:	48 8d 35 70 22 00 00 	lea    rsi,[rip+0x2270]        # 4088 <_IO_stdin_used+0x88>
    1e18:	ba 1e 00 00 00       	mov    edx,0x1e
    1e1d:	48 8d 3d 1c 42 00 00 	lea    rdi,[rip+0x421c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1e24:	4c 29 e8             	sub    rax,r13
    1e27:	62 f1 f7 08 7b c0    	vcvtusi2sd xmm0,xmm1,rax
    1e2d:	49 89 c6             	mov    r14,rax
    1e30:	c5 fb 5e 35 68 24 00 	vdivsd xmm6,xmm0,QWORD PTR [rip+0x2468]        # 42a0 <_IO_stdin_used+0x2a0>
    1e37:	00 
    1e38:	c4 c1 f9 7e f7       	vmovq  r15,xmm6
    1e3d:	e8 5e f3 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1e42:	48 8d 3d f7 41 00 00 	lea    rdi,[rip+0x41f7]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1e49:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    1e4c:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1e50:	4c 8b a4 07 f0 00 00 	mov    r12,QWORD PTR [rdi+rax*1+0xf0]
    1e57:	00 
    1e58:	4d 85 e4             	test   r12,r12
    1e5b:	0f 84 1e 13 00 00    	je     317f <main+0x1dbf>
    1e61:	41 80 7c 24 38 00    	cmp    BYTE PTR [r12+0x38],0x0
    1e67:	0f 84 e4 05 00 00    	je     2451 <main+0x1091>
    1e6d:	41 0f b6 44 24 43    	movzx  eax,BYTE PTR [r12+0x43]
    1e73:	0f be f0             	movsx  esi,al
    1e76:	48 8d 3d c3 41 00 00 	lea    rdi,[rip+0x41c3]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1e7d:	e8 9e f2 ff ff       	call   1120 <_ZNSo3putEc@plt>
    1e82:	48 89 c7             	mov    rdi,rax
    1e85:	e8 d6 f2 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    1e8a:	ba 14 00 00 00       	mov    edx,0x14
    1e8f:	48 8d 35 15 23 00 00 	lea    rsi,[rip+0x2315]        # 41ab <_IO_stdin_used+0x1ab>
    1e96:	48 8d 3d a3 41 00 00 	lea    rdi,[rip+0x41a3]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1e9d:	e8 fe f2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1ea2:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
    1ea7:	48 8d 3d 92 41 00 00 	lea    rdi,[rip+0x4192]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1eae:	e8 9d f2 ff ff       	call   1150 <_ZNSo9_M_insertImEERSoT_@plt>
    1eb3:	49 89 c4             	mov    r12,rax
    1eb6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1eb9:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1ebd:	4d 8b ac 04 f0 00 00 	mov    r13,QWORD PTR [r12+rax*1+0xf0]
    1ec4:	00 
    1ec5:	4d 85 ed             	test   r13,r13
    1ec8:	0f 84 99 12 00 00    	je     3167 <main+0x1da7>
    1ece:	41 80 7d 38 00       	cmp    BYTE PTR [r13+0x38],0x0
    1ed3:	0f 84 44 05 00 00    	je     241d <main+0x105d>
    1ed9:	41 0f b6 45 43       	movzx  eax,BYTE PTR [r13+0x43]
    1ede:	0f be f0             	movsx  esi,al
    1ee1:	4c 89 e7             	mov    rdi,r12
    1ee4:	e8 37 f2 ff ff       	call   1120 <_ZNSo3putEc@plt>
    1ee9:	48 89 c7             	mov    rdi,rax
    1eec:	e8 6f f2 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    1ef1:	ba 14 00 00 00       	mov    edx,0x14
    1ef6:	48 8d 35 c3 22 00 00 	lea    rsi,[rip+0x22c3]        # 41c0 <_IO_stdin_used+0x1c0>
    1efd:	48 8d 3d 3c 41 00 00 	lea    rdi,[rip+0x413c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1f04:	e8 97 f2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1f09:	be 00 e1 f5 05       	mov    esi,0x5f5e100
    1f0e:	48 8d 3d 2b 41 00 00 	lea    rdi,[rip+0x412b]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1f15:	e8 c6 f2 ff ff       	call   11e0 <_ZNSolsEi@plt>
    1f1a:	ba 1a 00 00 00       	mov    edx,0x1a
    1f1f:	48 8d 35 16 23 00 00 	lea    rsi,[rip+0x2316]        # 423c <_IO_stdin_used+0x23c>
    1f26:	48 89 c7             	mov    rdi,rax
    1f29:	49 89 c4             	mov    r12,rax
    1f2c:	e8 6f f2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1f31:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    1f35:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1f39:	4d 8b ac 04 f0 00 00 	mov    r13,QWORD PTR [r12+rax*1+0xf0]
    1f40:	00 
    1f41:	4d 85 ed             	test   r13,r13
    1f44:	0f 84 05 12 00 00    	je     314f <main+0x1d8f>
    1f4a:	41 80 7d 38 00       	cmp    BYTE PTR [r13+0x38],0x0
    1f4f:	0f 84 cc 05 00 00    	je     2521 <main+0x1161>
    1f55:	41 0f b6 45 43       	movzx  eax,BYTE PTR [r13+0x43]
    1f5a:	0f be f0             	movsx  esi,al
    1f5d:	4c 89 e7             	mov    rdi,r12
    1f60:	e8 bb f1 ff ff       	call   1120 <_ZNSo3putEc@plt>
    1f65:	48 89 c7             	mov    rdi,rax
    1f68:	e8 f3 f1 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    1f6d:	ba 14 00 00 00       	mov    edx,0x14
    1f72:	48 8d 35 76 22 00 00 	lea    rsi,[rip+0x2276]        # 41ef <_IO_stdin_used+0x1ef>
    1f79:	48 8d 3d c0 40 00 00 	lea    rdi,[rip+0x40c0]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1f80:	e8 1b f2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1f85:	4c 89 f6             	mov    rsi,r14
    1f88:	48 8d 3d b1 40 00 00 	lea    rdi,[rip+0x40b1]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1f8f:	e8 bc f1 ff ff       	call   1150 <_ZNSo9_M_insertImEERSoT_@plt>
    1f94:	ba 07 00 00 00       	mov    edx,0x7
    1f99:	48 8d 35 64 22 00 00 	lea    rsi,[rip+0x2264]        # 4204 <_IO_stdin_used+0x204>
    1fa0:	48 89 c7             	mov    rdi,rax
    1fa3:	49 89 c4             	mov    r12,rax
    1fa6:	e8 f5 f1 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1fab:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    1faf:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    1fb3:	4d 8b ac 04 f0 00 00 	mov    r13,QWORD PTR [r12+rax*1+0xf0]
    1fba:	00 
    1fbb:	4d 85 ed             	test   r13,r13
    1fbe:	0f 84 07 12 00 00    	je     31cb <main+0x1e0b>
    1fc4:	41 80 7d 38 00       	cmp    BYTE PTR [r13+0x38],0x0
    1fc9:	0f 84 1e 05 00 00    	je     24ed <main+0x112d>
    1fcf:	41 0f b6 45 43       	movzx  eax,BYTE PTR [r13+0x43]
    1fd4:	0f be f0             	movsx  esi,al
    1fd7:	4c 89 e7             	mov    rdi,r12
    1fda:	e8 41 f1 ff ff       	call   1120 <_ZNSo3putEc@plt>
    1fdf:	48 89 c7             	mov    rdi,rax
    1fe2:	e8 79 f1 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    1fe7:	ba 14 00 00 00       	mov    edx,0x14
    1fec:	48 8d 35 19 22 00 00 	lea    rsi,[rip+0x2219]        # 420c <_IO_stdin_used+0x20c>
    1ff3:	48 8d 3d 46 40 00 00 	lea    rdi,[rip+0x4046]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    1ffa:	e8 a1 f1 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1fff:	c4 c1 f9 6e c7       	vmovq  xmm0,r15
    2004:	48 8d 3d 35 40 00 00 	lea    rdi,[rip+0x4035]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    200b:	e8 c0 f1 ff ff       	call   11d0 <_ZNSo9_M_insertIdEERSoT_@plt>
    2010:	ba 0e 00 00 00       	mov    edx,0xe
    2015:	48 8d 35 05 22 00 00 	lea    rsi,[rip+0x2205]        # 4221 <_IO_stdin_used+0x221>
    201c:	48 89 c7             	mov    rdi,rax
    201f:	49 89 c4             	mov    r12,rax
    2022:	e8 79 f1 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2027:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    202b:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    202f:	4d 8b ac 04 f0 00 00 	mov    r13,QWORD PTR [r12+rax*1+0xf0]
    2036:	00 
    2037:	4d 85 ed             	test   r13,r13
    203a:	0f 84 6f 11 00 00    	je     31af <main+0x1def>
    2040:	41 80 7d 38 00       	cmp    BYTE PTR [r13+0x38],0x0
    2045:	0f 84 6e 04 00 00    	je     24b9 <main+0x10f9>
    204b:	41 0f b6 45 43       	movzx  eax,BYTE PTR [r13+0x43]
    2050:	0f be f0             	movsx  esi,al
    2053:	4c 89 e7             	mov    rdi,r12
    2056:	e8 c5 f0 ff ff       	call   1120 <_ZNSo3putEc@plt>
    205b:	48 89 c7             	mov    rdi,rax
    205e:	e8 fd f0 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    2063:	ba 32 00 00 00       	mov    edx,0x32
    2068:	48 8d 35 e1 1f 00 00 	lea    rsi,[rip+0x1fe1]        # 4050 <_IO_stdin_used+0x50>
    206f:	48 8d 3d ca 3f 00 00 	lea    rdi,[rip+0x3fca]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2076:	e8 25 f1 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    207b:	48 8d 3d be 3f 00 00 	lea    rdi,[rip+0x3fbe]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2082:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    2085:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    2089:	4c 8b a4 07 f0 00 00 	mov    r12,QWORD PTR [rdi+rax*1+0xf0]
    2090:	00 
    2091:	4d 85 e4             	test   r12,r12
    2094:	0f 84 0a 10 00 00    	je     30a4 <main+0x1ce4>
    209a:	41 80 7c 24 38 00    	cmp    BYTE PTR [r12+0x38],0x0
    20a0:	0f 84 df 03 00 00    	je     2485 <main+0x10c5>
    20a6:	41 0f b6 44 24 43    	movzx  eax,BYTE PTR [r12+0x43]
    20ac:	0f be f0             	movsx  esi,al
    20af:	48 8d 3d 8a 3f 00 00 	lea    rdi,[rip+0x3f8a]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    20b6:	e8 65 f0 ff ff       	call   1120 <_ZNSo3putEc@plt>
    20bb:	48 89 c7             	mov    rdi,rax
    20be:	e8 9d f0 ff ff       	call   1160 <_ZNSo5flushEv@plt>
    20c3:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    20c8:	be 00 10 5e 5f       	mov    esi,0x5f5e1000
    20cd:	e8 ae f0 ff ff       	call   1180 <_ZdlPvm@plt>
    20d2:	ff 4c 24 30          	dec    DWORD PTR [rsp+0x30]
    20d6:	0f 85 e0 f8 ff ff    	jne    19bc <main+0x5fc>
    20dc:	ba 17 00 00 00       	mov    edx,0x17
    20e1:	48 8d 35 6f 21 00 00 	lea    rsi,[rip+0x216f]        # 4257 <_IO_stdin_used+0x257>
    20e8:	48 8d 3d 51 3f 00 00 	lea    rdi,[rip+0x3f51]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    20ef:	bd 01 00 00 00       	mov    ebp,0x1
    20f4:	e8 a7 f0 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    20f9:	48 8d 3d 40 3f 00 00 	lea    rdi,[rip+0x3f40]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2100:	e8 eb 12 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2105:	ba 32 00 00 00       	mov    edx,0x32
    210a:	48 8d 35 3f 1f 00 00 	lea    rsi,[rip+0x1f3f]        # 4050 <_IO_stdin_used+0x50>
    2111:	48 8d 3d 28 3f 00 00 	lea    rdi,[rip+0x3f28]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2118:	e8 83 f0 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    211d:	48 8d 3d 1c 3f 00 00 	lea    rdi,[rip+0x3f1c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2124:	e8 c7 12 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2129:	e8 02 f0 ff ff       	call   1130 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    212e:	be 40 42 0f 00       	mov    esi,0xf4240
    2133:	48 99                	cqo
    2135:	48 f7 fe             	idiv   rsi
    2138:	48 ba 2d 7f 95 4c 2d 	movabs rdx,0x5851f42d4c957f2d
    213f:	f4 51 58 
    2142:	48 89 c1             	mov    rcx,rax
    2145:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
    214c:	00 
    214d:	0f 1f 00             	nop    DWORD PTR [rax]
    2150:	48 89 c8             	mov    rax,rcx
    2153:	48 c1 e8 3e          	shr    rax,0x3e
    2157:	48 31 c8             	xor    rax,rcx
    215a:	48 0f af c2          	imul   rax,rdx
    215e:	48 8d 0c 28          	lea    rcx,[rax+rbp*1]
    2162:	48 89 0c eb          	mov    QWORD PTR [rbx+rbp*8],rcx
    2166:	48 ff c5             	inc    rbp
    2169:	48 81 fd 38 01 00 00 	cmp    rbp,0x138
    2170:	75 de                	jne    2150 <main+0xd90>
    2172:	48 8d 84 24 90 00 00 	lea    rax,[rsp+0x90]
    2179:	00 
    217a:	48 c7 84 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],0x138
    2181:	00 38 01 00 00 
    2186:	48 89 c7             	mov    rdi,rax
    2189:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    218e:	e8 fd 11 00 00       	call   3390 <_ZNSt6vectorImSaImEEC1EmRKS0_.constprop.0>
    2193:	48 8d 84 24 b0 00 00 	lea    rax,[rsp+0xb0]
    219a:	00 
    219b:	48 89 c7             	mov    rdi,rax
    219e:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
    21a3:	e8 e8 11 00 00       	call   3390 <_ZNSt6vectorImSaImEEC1EmRKS0_.constprop.0>
    21a8:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
    21af:	00 
    21b0:	48 8b bc 24 90 00 00 	mov    rdi,QWORD PTR [rsp+0x90]
    21b7:	00 
    21b8:	45 31 f6             	xor    r14d,r14d
    21bb:	48 89 e9             	mov    rcx,rbp
    21be:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
    21c3:	49 bd 55 55 55 55 55 	movabs r13,0x5555555555555555
    21ca:	55 55 55 
    21cd:	4c 89 f3             	mov    rbx,r14
    21d0:	49 bc 00 00 a6 ed ff 	movabs r12,0x71d67fffeda60000
    21d7:	7f d6 71 
    21da:	49 bf 00 00 00 00 e0 	movabs r15,0xfff7eee000000000
    21e1:	ee f7 ff 
    21e4:	48 89 c5             	mov    rbp,rax
    21e7:	49 89 fe             	mov    r14,rdi
    21ea:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    21ef:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
    21f4:	e9 be 00 00 00       	jmp    22b7 <main+0xef7>
    21f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2200:	48 8b 84 cc d0 00 00 	mov    rax,QWORD PTR [rsp+rcx*8+0xd0]
    2207:	00 
    2208:	48 8d 71 01          	lea    rsi,[rcx+0x1]
    220c:	48 89 b4 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],rsi
    2213:	00 
    2214:	48 89 c1             	mov    rcx,rax
    2217:	48 c1 e9 1d          	shr    rcx,0x1d
    221b:	4c 21 e9             	and    rcx,r13
    221e:	48 31 c8             	xor    rax,rcx
    2221:	48 89 c1             	mov    rcx,rax
    2224:	48 c1 e1 11          	shl    rcx,0x11
    2228:	4c 21 e1             	and    rcx,r12
    222b:	48 31 c8             	xor    rax,rcx
    222e:	48 89 c1             	mov    rcx,rax
    2231:	48 c1 e1 25          	shl    rcx,0x25
    2235:	4c 21 f9             	and    rcx,r15
    2238:	48 31 c8             	xor    rax,rcx
    223b:	48 89 c1             	mov    rcx,rax
    223e:	48 c1 e9 2b          	shr    rcx,0x2b
    2242:	48 31 c8             	xor    rax,rcx
    2245:	49 89 04 1e          	mov    QWORD PTR [r14+rbx*1],rax
    2249:	48 81 fe 37 01 00 00 	cmp    rsi,0x137
    2250:	0f 87 8a 00 00 00    	ja     22e0 <main+0xf20>
    2256:	48 8b 84 f4 d0 00 00 	mov    rax,QWORD PTR [rsp+rsi*8+0xd0]
    225d:	00 
    225e:	48 8d 4e 01          	lea    rcx,[rsi+0x1]
    2262:	48 89 8c 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],rcx
    2269:	00 
    226a:	48 89 c6             	mov    rsi,rax
    226d:	48 c1 ee 1d          	shr    rsi,0x1d
    2271:	4c 21 ee             	and    rsi,r13
    2274:	48 31 f0             	xor    rax,rsi
    2277:	48 89 c6             	mov    rsi,rax
    227a:	48 c1 e6 11          	shl    rsi,0x11
    227e:	4c 21 e6             	and    rsi,r12
    2281:	48 31 f0             	xor    rax,rsi
    2284:	48 89 c6             	mov    rsi,rax
    2287:	48 c1 e6 25          	shl    rsi,0x25
    228b:	4c 21 fe             	and    rsi,r15
    228e:	48 31 f0             	xor    rax,rsi
    2291:	48 89 c6             	mov    rsi,rax
    2294:	48 c1 ee 2b          	shr    rsi,0x2b
    2298:	48 31 f0             	xor    rax,rsi
    229b:	89 c0                	mov    eax,eax
    229d:	48 0f af c0          	imul   rax,rax
    22a1:	48 89 44 1d 00       	mov    QWORD PTR [rbp+rbx*1+0x0],rax
    22a6:	48 83 c3 08          	add    rbx,0x8
    22aa:	48 81 fb 00 08 af 2f 	cmp    rbx,0x2faf0800
    22b1:	0f 84 9e 02 00 00    	je     2555 <main+0x1195>
    22b7:	48 81 f9 37 01 00 00 	cmp    rcx,0x137
    22be:	0f 86 3c ff ff ff    	jbe    2200 <main+0xe40>
    22c4:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    22c9:	e8 12 12 00 00       	call   34e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    22ce:	48 8b 8c 24 90 0a 00 	mov    rcx,QWORD PTR [rsp+0xa90]
    22d5:	00 
    22d6:	e9 25 ff ff ff       	jmp    2200 <main+0xe40>
    22db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    22e0:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    22e5:	e8 f6 11 00 00       	call   34e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    22ea:	48 8b b4 24 90 0a 00 	mov    rsi,QWORD PTR [rsp+0xa90]
    22f1:	00 
    22f2:	e9 5f ff ff ff       	jmp    2256 <main+0xe96>
    22f7:	4c 89 f7             	mov    rdi,r14
    22fa:	e8 b1 ee ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    22ff:	49 8b 06             	mov    rax,QWORD PTR [r14]
    2302:	48 8d 15 67 11 00 00 	lea    rdx,[rip+0x1167]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    2309:	be 0a 00 00 00       	mov    esi,0xa
    230e:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    2312:	48 39 d0             	cmp    rax,rdx
    2315:	0f 84 1a f6 ff ff    	je     1935 <main+0x575>
    231b:	4c 89 f7             	mov    rdi,r14
    231e:	ff d0                	call   rax
    2320:	0f be f0             	movsx  esi,al
    2323:	e9 0d f6 ff ff       	jmp    1935 <main+0x575>
    2328:	4c 89 ff             	mov    rdi,r15
    232b:	e8 80 ee ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2330:	49 8b 07             	mov    rax,QWORD PTR [r15]
    2333:	48 8d 15 36 11 00 00 	lea    rdx,[rip+0x1136]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    233a:	be 0a 00 00 00       	mov    esi,0xa
    233f:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    2343:	48 39 d0             	cmp    rax,rdx
    2346:	0f 84 92 f5 ff ff    	je     18de <main+0x51e>
    234c:	4c 89 ff             	mov    rdi,r15
    234f:	ff d0                	call   rax
    2351:	0f be f0             	movsx  esi,al
    2354:	e9 85 f5 ff ff       	jmp    18de <main+0x51e>
    2359:	4c 89 ff             	mov    rdi,r15
    235c:	e8 4f ee ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2361:	49 8b 07             	mov    rax,QWORD PTR [r15]
    2364:	48 8d 15 05 11 00 00 	lea    rdx,[rip+0x1105]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    236b:	be 0a 00 00 00       	mov    esi,0xa
    2370:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    2374:	48 39 d0             	cmp    rax,rdx
    2377:	0f 84 e8 f4 ff ff    	je     1865 <main+0x4a5>
    237d:	4c 89 ff             	mov    rdi,r15
    2380:	ff d0                	call   rax
    2382:	0f be f0             	movsx  esi,al
    2385:	e9 db f4 ff ff       	jmp    1865 <main+0x4a5>
    238a:	4c 89 ff             	mov    rdi,r15
    238d:	e8 1e ee ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2392:	49 8b 07             	mov    rax,QWORD PTR [r15]
    2395:	48 8d 15 d4 10 00 00 	lea    rdx,[rip+0x10d4]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    239c:	be 0a 00 00 00       	mov    esi,0xa
    23a1:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    23a5:	48 39 d0             	cmp    rax,rdx
    23a8:	0f 84 3f f4 ff ff    	je     17ed <main+0x42d>
    23ae:	4c 89 ff             	mov    rdi,r15
    23b1:	ff d0                	call   rax
    23b3:	0f be f0             	movsx  esi,al
    23b6:	e9 32 f4 ff ff       	jmp    17ed <main+0x42d>
    23bb:	4c 89 ff             	mov    rdi,r15
    23be:	e8 ed ed ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    23c3:	49 8b 07             	mov    rax,QWORD PTR [r15]
    23c6:	48 8d 15 a3 10 00 00 	lea    rdx,[rip+0x10a3]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    23cd:	be 0a 00 00 00       	mov    esi,0xa
    23d2:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    23d6:	48 39 d0             	cmp    rax,rdx
    23d9:	0f 84 96 f3 ff ff    	je     1775 <main+0x3b5>
    23df:	4c 89 ff             	mov    rdi,r15
    23e2:	ff d0                	call   rax
    23e4:	0f be f0             	movsx  esi,al
    23e7:	e9 89 f3 ff ff       	jmp    1775 <main+0x3b5>
    23ec:	4c 89 f7             	mov    rdi,r14
    23ef:	e8 bc ed ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    23f4:	49 8b 06             	mov    rax,QWORD PTR [r14]
    23f7:	48 8d 15 72 10 00 00 	lea    rdx,[rip+0x1072]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    23fe:	be 0a 00 00 00       	mov    esi,0xa
    2403:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
    2407:	48 39 d0             	cmp    rax,rdx
    240a:	0f 84 fd f2 ff ff    	je     170d <main+0x34d>
    2410:	4c 89 f7             	mov    rdi,r14
    2413:	ff d0                	call   rax
    2415:	0f be f0             	movsx  esi,al
    2418:	e9 f0 f2 ff ff       	jmp    170d <main+0x34d>
    241d:	4c 89 ef             	mov    rdi,r13
    2420:	e8 8b ed ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2425:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    2429:	48 8d 0d 40 10 00 00 	lea    rcx,[rip+0x1040]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    2430:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    2434:	b8 0a 00 00 00       	mov    eax,0xa
    2439:	48 39 ca             	cmp    rdx,rcx
    243c:	0f 84 9c fa ff ff    	je     1ede <main+0xb1e>
    2442:	be 0a 00 00 00       	mov    esi,0xa
    2447:	4c 89 ef             	mov    rdi,r13
    244a:	ff d2                	call   rdx
    244c:	e9 8d fa ff ff       	jmp    1ede <main+0xb1e>
    2451:	4c 89 e7             	mov    rdi,r12
    2454:	e8 57 ed ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2459:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    245d:	48 8d 0d 0c 10 00 00 	lea    rcx,[rip+0x100c]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    2464:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    2468:	b8 0a 00 00 00       	mov    eax,0xa
    246d:	48 39 ca             	cmp    rdx,rcx
    2470:	0f 84 fd f9 ff ff    	je     1e73 <main+0xab3>
    2476:	be 0a 00 00 00       	mov    esi,0xa
    247b:	4c 89 e7             	mov    rdi,r12
    247e:	ff d2                	call   rdx
    2480:	e9 ee f9 ff ff       	jmp    1e73 <main+0xab3>
    2485:	4c 89 e7             	mov    rdi,r12
    2488:	e8 23 ed ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    248d:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    2491:	48 8d 0d d8 0f 00 00 	lea    rcx,[rip+0xfd8]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    2498:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    249c:	b8 0a 00 00 00       	mov    eax,0xa
    24a1:	48 39 ca             	cmp    rdx,rcx
    24a4:	0f 84 02 fc ff ff    	je     20ac <main+0xcec>
    24aa:	be 0a 00 00 00       	mov    esi,0xa
    24af:	4c 89 e7             	mov    rdi,r12
    24b2:	ff d2                	call   rdx
    24b4:	e9 f3 fb ff ff       	jmp    20ac <main+0xcec>
    24b9:	4c 89 ef             	mov    rdi,r13
    24bc:	e8 ef ec ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    24c1:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    24c5:	48 8d 0d a4 0f 00 00 	lea    rcx,[rip+0xfa4]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    24cc:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    24d0:	b8 0a 00 00 00       	mov    eax,0xa
    24d5:	48 39 ca             	cmp    rdx,rcx
    24d8:	0f 84 72 fb ff ff    	je     2050 <main+0xc90>
    24de:	be 0a 00 00 00       	mov    esi,0xa
    24e3:	4c 89 ef             	mov    rdi,r13
    24e6:	ff d2                	call   rdx
    24e8:	e9 63 fb ff ff       	jmp    2050 <main+0xc90>
    24ed:	4c 89 ef             	mov    rdi,r13
    24f0:	e8 bb ec ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    24f5:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    24f9:	48 8d 0d 70 0f 00 00 	lea    rcx,[rip+0xf70]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    2500:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    2504:	b8 0a 00 00 00       	mov    eax,0xa
    2509:	48 39 ca             	cmp    rdx,rcx
    250c:	0f 84 c2 fa ff ff    	je     1fd4 <main+0xc14>
    2512:	be 0a 00 00 00       	mov    esi,0xa
    2517:	4c 89 ef             	mov    rdi,r13
    251a:	ff d2                	call   rdx
    251c:	e9 b3 fa ff ff       	jmp    1fd4 <main+0xc14>
    2521:	4c 89 ef             	mov    rdi,r13
    2524:	e8 87 ec ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2529:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    252d:	48 8d 0d 3c 0f 00 00 	lea    rcx,[rip+0xf3c]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    2534:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    2538:	b8 0a 00 00 00       	mov    eax,0xa
    253d:	48 39 ca             	cmp    rdx,rcx
    2540:	0f 84 14 fa ff ff    	je     1f5a <main+0xb9a>
    2546:	be 0a 00 00 00       	mov    esi,0xa
    254b:	4c 89 ef             	mov    rdi,r13
    254e:	ff d2                	call   rdx
    2550:	e9 05 fa ff ff       	jmp    1f5a <main+0xb9a>
    2555:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    255a:	45 31 c9             	xor    r9d,r9d
    255d:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
    2562:	0f 31                	rdtsc
    2564:	4c 8b 6c 24 20       	mov    r13,QWORD PTR [rsp+0x20]
    2569:	49 89 c2             	mov    r10,rax
    256c:	49 b8 13 02 03 02 12 	movabs r8,0x202021202030213
    2573:	02 02 02 
    2576:	49 bb 11 04 41 10 04 	movabs r11,0x410410410410411
    257d:	41 10 04 
    2580:	49 b9 93 02 45 12 30 	movabs r9,0x402483012450293
    2587:	48 02 04 
    258a:	48 c1 e2 20          	shl    rdx,0x20
    258e:	49 09 d2             	or     r10,rdx
    2591:	49 8d ad 00 08 af 2f 	lea    rbp,[r13+0x2faf0800]
    2598:	eb 1c                	jmp    25b6 <main+0x11f6>
    259a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    25a0:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
    25a5:	49 83 c5 08          	add    r13,0x8
    25a9:	48 01 d0             	add    rax,rdx
    25ac:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
    25b1:	49 39 ed             	cmp    r13,rbp
    25b4:	74 71                	je     2627 <main+0x1267>
    25b6:	49 8b 4d 00          	mov    rcx,QWORD PTR [r13+0x0]
    25ba:	89 c8                	mov    eax,ecx
    25bc:	c4 c2 fb f7 c0       	shrx   rax,r8,rax
    25c1:	83 e0 01             	and    eax,0x1
    25c4:	74 da                	je     25a0 <main+0x11e0>
    25c6:	48 89 c8             	mov    rax,rcx
    25c9:	49 f7 e3             	mul    r11
    25cc:	48 89 c8             	mov    rax,rcx
    25cf:	48 29 d0             	sub    rax,rdx
    25d2:	48 d1 e8             	shr    rax,1
    25d5:	48 01 c2             	add    rdx,rax
    25d8:	48 89 c8             	mov    rax,rcx
    25db:	48 c1 ea 05          	shr    rdx,0x5
    25df:	48 89 d6             	mov    rsi,rdx
    25e2:	48 c1 e6 06          	shl    rsi,0x6
    25e6:	48 29 d6             	sub    rsi,rdx
    25e9:	48 29 f0             	sub    rax,rsi
    25ec:	c4 c2 fb f7 c1       	shrx   rax,r9,rax
    25f1:	83 e0 01             	and    eax,0x1
    25f4:	74 aa                	je     25a0 <main+0x11e0>
    25f6:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    25fa:	62 f1 cf 08 7b c1    	vcvtusi2sd xmm0,xmm6,rcx
    2600:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    2604:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    260a:	48 89 fe             	mov    rsi,rdi
    260d:	48 0f af f7          	imul   rsi,rdi
    2611:	48 39 f1             	cmp    rcx,rsi
    2614:	0f 88 ff ec ff ff    	js     1319 <main.cold+0xf8>
    261a:	31 c0                	xor    eax,eax
    261c:	48 39 f1             	cmp    rcx,rsi
    261f:	0f 94 c0             	sete   al
    2622:	e9 79 ff ff ff       	jmp    25a0 <main+0x11e0>
    2627:	0f 31                	rdtsc
    2629:	48 c1 e2 20          	shl    rdx,0x20
    262d:	48 89 c5             	mov    rbp,rax
    2630:	45 31 c0             	xor    r8d,r8d
    2633:	48 09 d5             	or     rbp,rdx
    2636:	4c 89 44 24 58       	mov    QWORD PTR [rsp+0x58],r8
    263b:	0f 31                	rdtsc
    263d:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
    2642:	49 89 c5             	mov    r13,rax
    2645:	49 b8 13 02 03 02 12 	movabs r8,0x202021202030213
    264c:	02 02 02 
    264f:	49 bb 11 04 41 10 04 	movabs r11,0x410410410410411
    2656:	41 10 04 
    2659:	49 b9 93 02 45 12 30 	movabs r9,0x402483012450293
    2660:	48 02 04 
    2663:	48 c1 e2 20          	shl    rdx,0x20
    2667:	49 09 d5             	or     r13,rdx
    266a:	4d 8d b4 24 00 08 af 	lea    r14,[r12+0x2faf0800]
    2671:	2f 
    2672:	eb 22                	jmp    2696 <main+0x12d6>
    2674:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    267b:	00 00 00 00 
    267f:	90                   	nop
    2680:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    2685:	49 83 c4 08          	add    r12,0x8
    2689:	48 01 d0             	add    rax,rdx
    268c:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
    2691:	4d 39 f4             	cmp    r12,r14
    2694:	74 71                	je     2707 <main+0x1347>
    2696:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
    269a:	89 c8                	mov    eax,ecx
    269c:	c4 c2 fb f7 c0       	shrx   rax,r8,rax
    26a1:	83 e0 01             	and    eax,0x1
    26a4:	74 da                	je     2680 <main+0x12c0>
    26a6:	48 89 c8             	mov    rax,rcx
    26a9:	49 f7 e3             	mul    r11
    26ac:	48 89 c8             	mov    rax,rcx
    26af:	48 29 d0             	sub    rax,rdx
    26b2:	48 d1 e8             	shr    rax,1
    26b5:	48 01 c2             	add    rdx,rax
    26b8:	48 89 c8             	mov    rax,rcx
    26bb:	48 c1 ea 05          	shr    rdx,0x5
    26bf:	48 89 d6             	mov    rsi,rdx
    26c2:	48 c1 e6 06          	shl    rsi,0x6
    26c6:	48 29 d6             	sub    rsi,rdx
    26c9:	48 29 f0             	sub    rax,rsi
    26cc:	c4 c2 fb f7 c1       	shrx   rax,r9,rax
    26d1:	83 e0 01             	and    eax,0x1
    26d4:	74 aa                	je     2680 <main+0x12c0>
    26d6:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    26da:	62 f1 c7 08 7b c1    	vcvtusi2sd xmm0,xmm7,rcx
    26e0:	c5 fb 51 c0          	vsqrtsd xmm0,xmm0,xmm0
    26e4:	62 f1 ff 08 78 f8    	vcvttsd2usi rdi,xmm0
    26ea:	48 89 fe             	mov    rsi,rdi
    26ed:	48 0f af f7          	imul   rsi,rdi
    26f1:	48 39 f1             	cmp    rcx,rsi
    26f4:	0f 88 27 eb ff ff    	js     1221 <main.cold>
    26fa:	31 c0                	xor    eax,eax
    26fc:	48 39 f1             	cmp    rcx,rsi
    26ff:	0f 94 c0             	sete   al
    2702:	e9 79 ff ff ff       	jmp    2680 <main+0x12c0>
    2707:	0f 31                	rdtsc
    2709:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    270d:	48 c1 e2 20          	shl    rdx,0x20
    2711:	48 09 d0             	or     rax,rdx
    2714:	4c 29 d5             	sub    rbp,r10
    2717:	ba 29 00 00 00       	mov    edx,0x29
    271c:	48 8d 35 85 19 00 00 	lea    rsi,[rip+0x1985]        # 40a8 <_IO_stdin_used+0xa8>
    2723:	4c 29 e8             	sub    rax,r13
    2726:	48 8d 3d 13 39 00 00 	lea    rdi,[rip+0x3913]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    272d:	62 f1 c7 08 7b c5    	vcvtusi2sd xmm0,xmm7,rbp
    2733:	c5 fb 5e 35 65 1b 00 	vdivsd xmm6,xmm0,QWORD PTR [rip+0x1b65]        # 42a0 <_IO_stdin_used+0x2a0>
    273a:	00 
    273b:	62 f1 c7 08 7b c0    	vcvtusi2sd xmm0,xmm7,rax
    2741:	c4 e1 f9 7e f5       	vmovq  rbp,xmm6
    2746:	c5 fb 5e 3d 52 1b 00 	vdivsd xmm7,xmm0,QWORD PTR [rip+0x1b52]        # 42a0 <_IO_stdin_used+0x2a0>
    274d:	00 
    274e:	c4 c1 f9 7e fc       	vmovq  r12,xmm7
    2753:	e8 48 ea ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2758:	48 8d 3d e1 38 00 00 	lea    rdi,[rip+0x38e1]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    275f:	e8 8c 0c 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2764:	ba 24 00 00 00       	mov    edx,0x24
    2769:	48 8d 35 68 19 00 00 	lea    rsi,[rip+0x1968]        # 40d8 <_IO_stdin_used+0xd8>
    2770:	48 8d 3d c9 38 00 00 	lea    rdi,[rip+0x38c9]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2777:	e8 24 ea ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    277c:	c4 e1 f9 6e c5       	vmovq  xmm0,rbp
    2781:	48 8d 3d b8 38 00 00 	lea    rdi,[rip+0x38b8]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2788:	e8 43 ea ff ff       	call   11d0 <_ZNSo9_M_insertIdEERSoT_@plt>
    278d:	ba 16 00 00 00       	mov    edx,0x16
    2792:	48 8d 35 d6 1a 00 00 	lea    rsi,[rip+0x1ad6]        # 426f <_IO_stdin_used+0x26f>
    2799:	48 89 c7             	mov    rdi,rax
    279c:	48 89 c5             	mov    rbp,rax
    279f:	e8 fc e9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    27a4:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
    27a9:	48 89 ef             	mov    rdi,rbp
    27ac:	e8 9f e9 ff ff       	call   1150 <_ZNSo9_M_insertImEERSoT_@plt>
    27b1:	ba 01 00 00 00       	mov    edx,0x1
    27b6:	48 8d 35 30 1a 00 00 	lea    rsi,[rip+0x1a30]        # 41ed <_IO_stdin_used+0x1ed>
    27bd:	48 89 c7             	mov    rdi,rax
    27c0:	48 89 c5             	mov    rbp,rax
    27c3:	e8 d8 e9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    27c8:	48 89 ef             	mov    rdi,rbp
    27cb:	e8 20 0c 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    27d0:	ba 24 00 00 00       	mov    edx,0x24
    27d5:	48 8d 35 24 19 00 00 	lea    rsi,[rip+0x1924]        # 4100 <_IO_stdin_used+0x100>
    27dc:	48 8d 3d 5d 38 00 00 	lea    rdi,[rip+0x385d]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    27e3:	e8 b8 e9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    27e8:	c4 c1 f9 6e c4       	vmovq  xmm0,r12
    27ed:	48 8d 3d 4c 38 00 00 	lea    rdi,[rip+0x384c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    27f4:	e8 d7 e9 ff ff       	call   11d0 <_ZNSo9_M_insertIdEERSoT_@plt>
    27f9:	ba 16 00 00 00       	mov    edx,0x16
    27fe:	48 8d 35 6a 1a 00 00 	lea    rsi,[rip+0x1a6a]        # 426f <_IO_stdin_used+0x26f>
    2805:	48 89 c7             	mov    rdi,rax
    2808:	48 89 c5             	mov    rbp,rax
    280b:	e8 90 e9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2810:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
    2815:	48 89 ef             	mov    rdi,rbp
    2818:	e8 33 e9 ff ff       	call   1150 <_ZNSo9_M_insertImEERSoT_@plt>
    281d:	ba 01 00 00 00       	mov    edx,0x1
    2822:	48 8d 35 c4 19 00 00 	lea    rsi,[rip+0x19c4]        # 41ed <_IO_stdin_used+0x1ed>
    2829:	48 89 c7             	mov    rdi,rax
    282c:	48 89 c5             	mov    rbp,rax
    282f:	e8 6c e9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2834:	48 89 ef             	mov    rdi,rbp
    2837:	e8 b4 0b 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    283c:	ba 32 00 00 00       	mov    edx,0x32
    2841:	48 8d 35 08 18 00 00 	lea    rsi,[rip+0x1808]        # 4050 <_IO_stdin_used+0x50>
    2848:	48 8d 3d f1 37 00 00 	lea    rdi,[rip+0x37f1]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    284f:	e8 4c e9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2854:	48 8d 3d e5 37 00 00 	lea    rdi,[rip+0x37e5]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    285b:	e8 90 0b 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2860:	48 8b 7c 24 30       	mov    rdi,QWORD PTR [rsp+0x30]
    2865:	41 bc 01 00 00 00    	mov    r12d,0x1
    286b:	e8 10 0c 00 00       	call   3480 <_ZNSt6vectorImSaImEED1Ev>
    2870:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    2875:	e8 06 0c 00 00       	call   3480 <_ZNSt6vectorImSaImEED1Ev>
    287a:	ba 18 00 00 00       	mov    edx,0x18
    287f:	48 8d 35 00 1a 00 00 	lea    rsi,[rip+0x1a00]        # 4286 <_IO_stdin_used+0x286>
    2886:	48 8d 3d b3 37 00 00 	lea    rdi,[rip+0x37b3]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    288d:	e8 0e e9 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2892:	48 8d 3d a7 37 00 00 	lea    rdi,[rip+0x37a7]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2899:	e8 52 0b 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    289e:	ba 32 00 00 00       	mov    edx,0x32
    28a3:	48 8d 35 a6 17 00 00 	lea    rsi,[rip+0x17a6]        # 4050 <_IO_stdin_used+0x50>
    28aa:	48 8d 3d 8f 37 00 00 	lea    rdi,[rip+0x378f]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    28b1:	e8 ea e8 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    28b6:	48 8d 3d 83 37 00 00 	lea    rdi,[rip+0x3783]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    28bd:	e8 2e 0b 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    28c2:	e8 69 e8 ff ff       	call   1130 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    28c7:	be 40 42 0f 00       	mov    esi,0xf4240
    28cc:	48 99                	cqo
    28ce:	48 f7 fe             	idiv   rsi
    28d1:	48 ba 2d 7f 95 4c 2d 	movabs rdx,0x5851f42d4c957f2d
    28d8:	f4 51 58 
    28db:	48 89 c1             	mov    rcx,rax
    28de:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
    28e5:	00 
    28e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    28ed:	00 00 00 
    28f0:	48 89 c8             	mov    rax,rcx
    28f3:	48 c1 e8 3e          	shr    rax,0x3e
    28f7:	48 31 c8             	xor    rax,rcx
    28fa:	48 0f af c2          	imul   rax,rdx
    28fe:	4a 8d 0c 20          	lea    rcx,[rax+r12*1]
    2902:	4a 89 0c e3          	mov    QWORD PTR [rbx+r12*8],rcx
    2906:	49 ff c4             	inc    r12
    2909:	49 81 fc 38 01 00 00 	cmp    r12,0x138
    2910:	75 de                	jne    28f0 <main+0x1530>
    2912:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    2917:	48 c7 84 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],0x138
    291e:	00 38 01 00 00 
    2923:	e8 08 0a 00 00       	call   3330 <_ZNSt6vectorIoSaIoEEC1EmRKS0_.constprop.0>
    2928:	48 8b 7c 24 30       	mov    rdi,QWORD PTR [rsp+0x30]
    292d:	e8 fe 09 00 00       	call   3330 <_ZNSt6vectorIoSaIoEEC1EmRKS0_.constprop.0>
    2932:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
    2939:	00 
    293a:	48 8b bc 24 90 00 00 	mov    rdi,QWORD PTR [rsp+0x90]
    2941:	00 
    2942:	45 31 ed             	xor    r13d,r13d
    2945:	4c 89 e6             	mov    rsi,r12
    2948:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
    294d:	49 be 55 55 55 55 55 	movabs r14,0x5555555555555555
    2954:	55 55 55 
    2957:	4c 89 eb             	mov    rbx,r13
    295a:	48 bd 00 00 a6 ed ff 	movabs rbp,0x71d67fffeda60000
    2961:	7f d6 71 
    2964:	49 bf 00 00 00 00 e0 	movabs r15,0xfff7eee000000000
    296b:	ee f7 ff 
    296e:	49 89 c4             	mov    r12,rax
    2971:	49 89 fd             	mov    r13,rdi
    2974:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    2979:	48 89 7c 24 38       	mov    QWORD PTR [rsp+0x38],rdi
    297e:	e9 19 01 00 00       	jmp    2a9c <main+0x16dc>
    2983:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    298a:	00 00 00 00 
    298e:	66 90                	xchg   ax,ax
    2990:	48 8b 84 f4 d0 00 00 	mov    rax,QWORD PTR [rsp+rsi*8+0xd0]
    2997:	00 
    2998:	4c 8d 46 01          	lea    r8,[rsi+0x1]
    299c:	4c 89 84 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],r8
    29a3:	00 
    29a4:	48 89 c2             	mov    rdx,rax
    29a7:	48 c1 ea 1d          	shr    rdx,0x1d
    29ab:	4c 21 f2             	and    rdx,r14
    29ae:	48 31 d0             	xor    rax,rdx
    29b1:	48 89 c2             	mov    rdx,rax
    29b4:	48 c1 e2 11          	shl    rdx,0x11
    29b8:	48 21 ea             	and    rdx,rbp
    29bb:	48 31 d0             	xor    rax,rdx
    29be:	48 89 c2             	mov    rdx,rax
    29c1:	48 c1 e2 25          	shl    rdx,0x25
    29c5:	4c 21 fa             	and    rdx,r15
    29c8:	48 31 d0             	xor    rax,rdx
    29cb:	48 89 c2             	mov    rdx,rax
    29ce:	48 c1 ea 2b          	shr    rdx,0x2b
    29d2:	48 31 c2             	xor    rdx,rax
    29d5:	49 81 f8 37 01 00 00 	cmp    r8,0x137
    29dc:	0f 87 fe 00 00 00    	ja     2ae0 <main+0x1720>
    29e2:	4a 8b 84 c4 d0 00 00 	mov    rax,QWORD PTR [rsp+r8*8+0xd0]
    29e9:	00 
    29ea:	49 8d 78 01          	lea    rdi,[r8+0x1]
    29ee:	49 89 54 1d 08       	mov    QWORD PTR [r13+rbx*1+0x8],rdx
    29f3:	48 89 bc 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],rdi
    29fa:	00 
    29fb:	48 89 c6             	mov    rsi,rax
    29fe:	48 c1 ee 1d          	shr    rsi,0x1d
    2a02:	4c 21 f6             	and    rsi,r14
    2a05:	48 31 f0             	xor    rax,rsi
    2a08:	48 89 c6             	mov    rsi,rax
    2a0b:	48 c1 e6 11          	shl    rsi,0x11
    2a0f:	48 21 ee             	and    rsi,rbp
    2a12:	48 31 f0             	xor    rax,rsi
    2a15:	48 89 c6             	mov    rsi,rax
    2a18:	48 c1 e6 25          	shl    rsi,0x25
    2a1c:	4c 21 fe             	and    rsi,r15
    2a1f:	48 31 f0             	xor    rax,rsi
    2a22:	48 89 c6             	mov    rsi,rax
    2a25:	48 c1 ee 2b          	shr    rsi,0x2b
    2a29:	48 31 f0             	xor    rax,rsi
    2a2c:	49 89 44 1d 00       	mov    QWORD PTR [r13+rbx*1+0x0],rax
    2a31:	48 81 ff 37 01 00 00 	cmp    rdi,0x137
    2a38:	0f 87 82 00 00 00    	ja     2ac0 <main+0x1700>
    2a3e:	48 8b 84 fc d0 00 00 	mov    rax,QWORD PTR [rsp+rdi*8+0xd0]
    2a45:	00 
    2a46:	48 8d 77 01          	lea    rsi,[rdi+0x1]
    2a4a:	48 89 b4 24 90 0a 00 	mov    QWORD PTR [rsp+0xa90],rsi
    2a51:	00 
    2a52:	48 89 c2             	mov    rdx,rax
    2a55:	48 c1 ea 1d          	shr    rdx,0x1d
    2a59:	4c 21 f2             	and    rdx,r14
    2a5c:	48 31 d0             	xor    rax,rdx
    2a5f:	48 89 c2             	mov    rdx,rax
    2a62:	48 c1 e2 11          	shl    rdx,0x11
    2a66:	48 21 ea             	and    rdx,rbp
    2a69:	48 31 d0             	xor    rax,rdx
    2a6c:	48 89 c2             	mov    rdx,rax
    2a6f:	48 c1 e2 25          	shl    rdx,0x25
    2a73:	4c 21 fa             	and    rdx,r15
    2a76:	48 31 d0             	xor    rax,rdx
    2a79:	48 89 c2             	mov    rdx,rax
    2a7c:	48 c1 ea 2b          	shr    rdx,0x2b
    2a80:	48 31 d0             	xor    rax,rdx
    2a83:	48 f7 e0             	mul    rax
    2a86:	49 89 04 1c          	mov    QWORD PTR [r12+rbx*1],rax
    2a8a:	49 89 54 1c 08       	mov    QWORD PTR [r12+rbx*1+0x8],rdx
    2a8f:	48 83 c3 10          	add    rbx,0x10
    2a93:	48 81 fb 00 10 5e 5f 	cmp    rbx,0x5f5e1000
    2a9a:	74 65                	je     2b01 <main+0x1741>
    2a9c:	48 81 fe 37 01 00 00 	cmp    rsi,0x137
    2aa3:	0f 86 e7 fe ff ff    	jbe    2990 <main+0x15d0>
    2aa9:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    2aae:	e8 2d 0a 00 00       	call   34e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    2ab3:	48 8b b4 24 90 0a 00 	mov    rsi,QWORD PTR [rsp+0xa90]
    2aba:	00 
    2abb:	e9 d0 fe ff ff       	jmp    2990 <main+0x15d0>
    2ac0:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    2ac5:	e8 16 0a 00 00       	call   34e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    2aca:	48 8b bc 24 90 0a 00 	mov    rdi,QWORD PTR [rsp+0xa90]
    2ad1:	00 
    2ad2:	e9 67 ff ff ff       	jmp    2a3e <main+0x167e>
    2ad7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    2ade:	00 00 
    2ae0:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    2ae5:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
    2aea:	e8 f1 09 00 00       	call   34e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
    2aef:	4c 8b 84 24 90 0a 00 	mov    r8,QWORD PTR [rsp+0xa90]
    2af6:	00 
    2af7:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    2afc:	e9 e1 fe ff ff       	jmp    29e2 <main+0x1622>
    2b01:	31 ff                	xor    edi,edi
    2b03:	48 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],rdi
    2b08:	0f 31                	rdtsc
    2b0a:	4c 8b 74 24 38       	mov    r14,QWORD PTR [rsp+0x38]
    2b0f:	48 89 c3             	mov    rbx,rax
    2b12:	49 ba 13 02 03 02 12 	movabs r10,0x202021202030213
    2b19:	02 02 02 
    2b1c:	49 bb ff ff ff ff ff 	movabs r11,0xfffffffffffffff
    2b23:	ff ff 0f 
    2b26:	49 bf 11 04 41 10 04 	movabs r15,0x410410410410411
    2b2d:	41 10 04 
    2b30:	49 bd 93 02 45 12 30 	movabs r13,0x402483012450293
    2b37:	48 02 04 
    2b3a:	48 c1 e2 20          	shl    rdx,0x20
    2b3e:	48 09 d3             	or     rbx,rdx
    2b41:	4d 8d a6 00 10 5e 5f 	lea    r12,[r14+0x5f5e1000]
    2b48:	48 89 dd             	mov    rbp,rbx
    2b4b:	eb 1d                	jmp    2b6a <main+0x17aa>
    2b4d:	0f 1f 00             	nop    DWORD PTR [rax]
    2b50:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
    2b55:	49 83 c6 10          	add    r14,0x10
    2b59:	48 01 d0             	add    rax,rdx
    2b5c:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    2b61:	4d 39 e6             	cmp    r14,r12
    2b64:	0f 84 46 01 00 00    	je     2cb0 <main+0x18f0>
    2b6a:	4d 8b 06             	mov    r8,QWORD PTR [r14]
    2b6d:	4d 8b 4e 08          	mov    r9,QWORD PTR [r14+0x8]
    2b71:	44 89 c0             	mov    eax,r8d
    2b74:	c4 c2 fb f7 c2       	shrx   rax,r10,rax
    2b79:	83 e0 01             	and    eax,0x1
    2b7c:	74 d2                	je     2b50 <main+0x1790>
    2b7e:	4c 89 c0             	mov    rax,r8
    2b81:	4c 89 c1             	mov    rcx,r8
    2b84:	4c 0f ac c8 3c       	shrd   rax,r9,0x3c
    2b89:	4c 21 d9             	and    rcx,r11
    2b8c:	4c 21 d8             	and    rax,r11
    2b8f:	48 01 c1             	add    rcx,rax
    2b92:	4c 89 c8             	mov    rax,r9
    2b95:	48 c1 e8 38          	shr    rax,0x38
    2b99:	48 01 c1             	add    rcx,rax
    2b9c:	48 89 c8             	mov    rax,rcx
    2b9f:	49 f7 e7             	mul    r15
    2ba2:	48 89 c8             	mov    rax,rcx
    2ba5:	48 29 d0             	sub    rax,rdx
    2ba8:	48 d1 e8             	shr    rax,1
    2bab:	48 01 c2             	add    rdx,rax
    2bae:	48 c1 ea 05          	shr    rdx,0x5
    2bb2:	48 89 d0             	mov    rax,rdx
    2bb5:	48 c1 e0 06          	shl    rax,0x6
    2bb9:	48 29 d0             	sub    rax,rdx
    2bbc:	29 c1                	sub    ecx,eax
    2bbe:	c4 c2 f3 f7 c5       	shrx   rax,r13,rcx
    2bc3:	83 e0 01             	and    eax,0x1
    2bc6:	74 88                	je     2b50 <main+0x1790>
    2bc8:	4c 89 c8             	mov    rax,r9
    2bcb:	48 83 e8 00          	sub    rax,0x0
    2bcf:	0f 84 88 04 00 00    	je     305d <main+0x1c9d>
    2bd5:	f3 49 0f bd c1       	lzcnt  rax,r9
    2bda:	89 c3                	mov    ebx,eax
    2bdc:	83 e0 fe             	and    eax,0xfffffffe
    2bdf:	4c 89 ce             	mov    rsi,r9
    2be2:	89 c1                	mov    ecx,eax
    2be4:	31 c0                	xor    eax,eax
    2be6:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
    2bea:	d1 fb                	sar    ebx,1
    2bec:	4c 0f a5 c6          	shld   rsi,r8,cl
    2bf0:	89 5c 24 08          	mov    DWORD PTR [rsp+0x8],ebx
    2bf4:	f6 c1 40             	test   cl,0x40
    2bf7:	4c 89 c3             	mov    rbx,r8
    2bfa:	c4 e2 f1 f7 db       	shlx   rbx,rbx,rcx
    2bff:	48 0f 45 f3          	cmovne rsi,rbx
    2c03:	48 0f 45 d8          	cmovne rbx,rax
    2c07:	62 f1 f7 08 7b ce    	vcvtusi2sd xmm1,xmm1,rsi
    2c0d:	c5 f3 51 c9          	vsqrtsd xmm1,xmm1,xmm1
    2c11:	62 f1 ff 08 78 f9    	vcvttsd2usi rdi,xmm1
    2c17:	48 89 fa             	mov    rdx,rdi
    2c1a:	48 0f af d7          	imul   rdx,rdi
    2c1e:	48 89 f0             	mov    rax,rsi
    2c21:	48 89 d9             	mov    rcx,rbx
    2c24:	48 29 d0             	sub    rax,rdx
    2c27:	0f 88 b5 e6 ff ff    	js     12e2 <main.cold+0xc1>
    2c2d:	8b 54 24 08          	mov    edx,DWORD PTR [rsp+0x8]
    2c31:	be 20 00 00 00       	mov    esi,0x20
    2c36:	0f b6 5c 24 08       	movzx  ebx,BYTE PTR [rsp+0x8]
    2c3b:	48 0f ac c1 21       	shrd   rcx,rax,0x21
    2c40:	48 89 c8             	mov    rax,rcx
    2c43:	29 d6                	sub    esi,edx
    2c45:	31 d2                	xor    edx,edx
    2c47:	48 f7 f7             	div    rdi
    2c4a:	c4 e2 c9 f7 f7       	shlx   rsi,rdi,rsi
    2c4f:	c4 e2 e3 f7 c0       	shrx   rax,rax,rbx
    2c54:	48 01 c6             	add    rsi,rax
    2c57:	0f 82 e7 04 00 00    	jb     3144 <main+0x1d84>
    2c5d:	48 89 f2             	mov    rdx,rsi
    2c60:	c4 e2 f3 f6 de       	mulx   rbx,rcx,rsi
    2c65:	4c 89 ca             	mov    rdx,r9
    2c68:	49 39 c8             	cmp    r8,rcx
    2c6b:	48 19 da             	sbb    rdx,rbx
    2c6e:	31 db                	xor    ebx,ebx
    2c70:	48 89 d0             	mov    rax,rdx
    2c73:	48 c1 e8 3f          	shr    rax,0x3f
    2c77:	48 29 c6             	sub    rsi,rax
    2c7a:	48 89 f1             	mov    rcx,rsi
    2c7d:	48 89 da             	mov    rdx,rbx
    2c80:	48 0f af d1          	imul   rdx,rcx
    2c84:	48 8d 04 12          	lea    rax,[rdx+rdx*1]
    2c88:	48 89 ca             	mov    rdx,rcx
    2c8b:	c4 e2 f3 f6 d9       	mulx   rbx,rcx,rcx
    2c90:	48 01 c3             	add    rbx,rax
    2c93:	48 89 ca             	mov    rdx,rcx
    2c96:	4c 89 c0             	mov    rax,r8
    2c99:	48 89 d9             	mov    rcx,rbx
    2c9c:	48 31 d0             	xor    rax,rdx
    2c9f:	4c 31 c9             	xor    rcx,r9
    2ca2:	48 09 c8             	or     rax,rcx
    2ca5:	0f 94 c0             	sete   al
    2ca8:	0f b6 c0             	movzx  eax,al
    2cab:	e9 a0 fe ff ff       	jmp    2b50 <main+0x1790>
    2cb0:	48 89 eb             	mov    rbx,rbp
    2cb3:	0f 31                	rdtsc
    2cb5:	48 c1 e2 20          	shl    rdx,0x20
    2cb9:	49 89 c4             	mov    r12,rax
    2cbc:	31 ff                	xor    edi,edi
    2cbe:	49 09 d4             	or     r12,rdx
    2cc1:	48 89 7c 24 68       	mov    QWORD PTR [rsp+0x68],rdi
    2cc6:	0f 31                	rdtsc
    2cc8:	48 8b 6c 24 20       	mov    rbp,QWORD PTR [rsp+0x20]
    2ccd:	49 89 c0             	mov    r8,rax
    2cd0:	49 ba 13 02 03 02 12 	movabs r10,0x202021202030213
    2cd7:	02 02 02 
    2cda:	49 bb ff ff ff ff ff 	movabs r11,0xfffffffffffffff
    2ce1:	ff ff 0f 
    2ce4:	49 be 11 04 41 10 04 	movabs r14,0x410410410410411
    2ceb:	41 10 04 
    2cee:	49 bf 93 02 45 12 30 	movabs r15,0x402483012450293
    2cf5:	48 02 04 
    2cf8:	48 c1 e2 20          	shl    rdx,0x20
    2cfc:	49 09 d0             	or     r8,rdx
    2cff:	4c 8d ad 00 10 5e 5f 	lea    r13,[rbp+0x5f5e1000]
    2d06:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    2d0b:	eb 1d                	jmp    2d2a <main+0x196a>
    2d0d:	0f 1f 00             	nop    DWORD PTR [rax]
    2d10:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
    2d15:	48 83 c5 10          	add    rbp,0x10
    2d19:	48 01 d0             	add    rax,rdx
    2d1c:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
    2d21:	4c 39 ed             	cmp    rbp,r13
    2d24:	0f 84 4d 01 00 00    	je     2e77 <main+0x1ab7>
    2d2a:	4c 8b 45 00          	mov    r8,QWORD PTR [rbp+0x0]
    2d2e:	4c 8b 4d 08          	mov    r9,QWORD PTR [rbp+0x8]
    2d32:	44 89 c0             	mov    eax,r8d
    2d35:	c4 c2 fb f7 c2       	shrx   rax,r10,rax
    2d3a:	83 e0 01             	and    eax,0x1
    2d3d:	74 d1                	je     2d10 <main+0x1950>
    2d3f:	4c 89 c0             	mov    rax,r8
    2d42:	4c 89 c1             	mov    rcx,r8
    2d45:	4c 0f ac c8 3c       	shrd   rax,r9,0x3c
    2d4a:	4c 21 d9             	and    rcx,r11
    2d4d:	4c 21 d8             	and    rax,r11
    2d50:	48 01 c1             	add    rcx,rax
    2d53:	4c 89 c8             	mov    rax,r9
    2d56:	48 c1 e8 38          	shr    rax,0x38
    2d5a:	48 01 c1             	add    rcx,rax
    2d5d:	48 89 c8             	mov    rax,rcx
    2d60:	49 f7 e6             	mul    r14
    2d63:	48 89 c8             	mov    rax,rcx
    2d66:	48 29 d0             	sub    rax,rdx
    2d69:	48 d1 e8             	shr    rax,1
    2d6c:	48 01 c2             	add    rdx,rax
    2d6f:	48 c1 ea 05          	shr    rdx,0x5
    2d73:	48 89 d0             	mov    rax,rdx
    2d76:	48 c1 e0 06          	shl    rax,0x6
    2d7a:	48 29 d0             	sub    rax,rdx
    2d7d:	29 c1                	sub    ecx,eax
    2d7f:	c4 c2 f3 f7 c7       	shrx   rax,r15,rcx
    2d84:	83 e0 01             	and    eax,0x1
    2d87:	74 87                	je     2d10 <main+0x1950>
    2d89:	4c 89 c8             	mov    rax,r9
    2d8c:	48 83 e8 00          	sub    rax,0x0
    2d90:	0f 84 96 02 00 00    	je     302c <main+0x1c6c>
    2d96:	f3 49 0f bd c1       	lzcnt  rax,r9
    2d9b:	89 c7                	mov    edi,eax
    2d9d:	83 e0 fe             	and    eax,0xfffffffe
    2da0:	4c 89 c6             	mov    rsi,r8
    2da3:	d1 ff                	sar    edi,1
    2da5:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
    2da9:	89 c1                	mov    ecx,eax
    2dab:	89 7c 24 10          	mov    DWORD PTR [rsp+0x10],edi
    2daf:	4c 89 cf             	mov    rdi,r9
    2db2:	31 c0                	xor    eax,eax
    2db4:	4c 0f a5 c7          	shld   rdi,r8,cl
    2db8:	c4 e2 f1 f7 f6       	shlx   rsi,rsi,rcx
    2dbd:	f6 c1 40             	test   cl,0x40
    2dc0:	48 0f 45 fe          	cmovne rdi,rsi
    2dc4:	48 0f 45 f0          	cmovne rsi,rax
    2dc8:	62 f1 c7 08 7b cf    	vcvtusi2sd xmm1,xmm7,rdi
    2dce:	48 89 f8             	mov    rax,rdi
    2dd1:	48 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],rdi
    2dd6:	c5 f3 51 c9          	vsqrtsd xmm1,xmm1,xmm1
    2dda:	62 f1 ff 08 78 f9    	vcvttsd2usi rdi,xmm1
    2de0:	48 89 fa             	mov    rdx,rdi
    2de3:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
    2de8:	48 0f af d7          	imul   rdx,rdi
    2dec:	48 29 d0             	sub    rax,rdx
    2def:	0f 88 da e4 ff ff    	js     12cf <main.cold+0xae>
    2df5:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    2dfa:	8b 4c 24 10          	mov    ecx,DWORD PTR [rsp+0x10]
    2dfe:	be 20 00 00 00       	mov    esi,0x20
    2e03:	48 0f ac c2 21       	shrd   rdx,rax,0x21
    2e08:	48 89 d0             	mov    rax,rdx
    2e0b:	31 d2                	xor    edx,edx
    2e0d:	29 ce                	sub    esi,ecx
    2e0f:	48 f7 f7             	div    rdi
    2e12:	c4 e2 c9 f7 f7       	shlx   rsi,rdi,rsi
    2e17:	89 cf                	mov    edi,ecx
    2e19:	c4 e2 c3 f7 c8       	shrx   rcx,rax,rdi
    2e1e:	48 01 f1             	add    rcx,rsi
    2e21:	0f 82 12 03 00 00    	jb     3139 <main+0x1d79>
    2e27:	48 89 ca             	mov    rdx,rcx
    2e2a:	48 89 c8             	mov    rax,rcx
    2e2d:	c4 e2 cb f6 f9       	mulx   rdi,rsi,rcx
    2e32:	4c 89 ca             	mov    rdx,r9
    2e35:	49 39 f0             	cmp    r8,rsi
    2e38:	48 19 fa             	sbb    rdx,rdi
    2e3b:	31 ff                	xor    edi,edi
    2e3d:	48 c1 ea 3f          	shr    rdx,0x3f
    2e41:	48 29 d0             	sub    rax,rdx
    2e44:	48 89 c6             	mov    rsi,rax
    2e47:	48 89 fa             	mov    rdx,rdi
    2e4a:	48 0f af d6          	imul   rdx,rsi
    2e4e:	48 8d 04 12          	lea    rax,[rdx+rdx*1]
    2e52:	48 89 f2             	mov    rdx,rsi
    2e55:	c4 e2 cb f6 fe       	mulx   rdi,rsi,rsi
    2e5a:	48 01 c7             	add    rdi,rax
    2e5d:	4c 89 c0             	mov    rax,r8
    2e60:	48 89 f9             	mov    rcx,rdi
    2e63:	48 31 f0             	xor    rax,rsi
    2e66:	4c 31 c9             	xor    rcx,r9
    2e69:	48 09 c8             	or     rax,rcx
    2e6c:	0f 94 c0             	sete   al
    2e6f:	0f b6 c0             	movzx  eax,al
    2e72:	e9 99 fe ff ff       	jmp    2d10 <main+0x1950>
    2e77:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    2e7c:	0f 31                	rdtsc
    2e7e:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
    2e82:	48 c1 e2 20          	shl    rdx,0x20
    2e86:	48 09 d0             	or     rax,rdx
    2e89:	49 29 dc             	sub    r12,rbx
    2e8c:	ba 2a 00 00 00       	mov    edx,0x2a
    2e91:	48 8d 35 90 12 00 00 	lea    rsi,[rip+0x1290]        # 4128 <_IO_stdin_used+0x128>
    2e98:	4c 29 c0             	sub    rax,r8
    2e9b:	48 8d 3d 9e 31 00 00 	lea    rdi,[rip+0x319e]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2ea2:	62 d1 f7 08 7b c4    	vcvtusi2sd xmm0,xmm1,r12
    2ea8:	c5 fb 5e 35 f0 13 00 	vdivsd xmm6,xmm0,QWORD PTR [rip+0x13f0]        # 42a0 <_IO_stdin_used+0x2a0>
    2eaf:	00 
    2eb0:	62 f1 f7 08 7b c0    	vcvtusi2sd xmm0,xmm1,rax
    2eb6:	c4 e1 f9 7e f3       	vmovq  rbx,xmm6
    2ebb:	c5 fb 5e 3d dd 13 00 	vdivsd xmm7,xmm0,QWORD PTR [rip+0x13dd]        # 42a0 <_IO_stdin_used+0x2a0>
    2ec2:	00 
    2ec3:	c4 e1 f9 7e fd       	vmovq  rbp,xmm7
    2ec8:	e8 d3 e2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2ecd:	48 8d 3d 6c 31 00 00 	lea    rdi,[rip+0x316c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2ed4:	e8 17 05 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2ed9:	ba 24 00 00 00       	mov    edx,0x24
    2ede:	48 8d 35 f3 11 00 00 	lea    rsi,[rip+0x11f3]        # 40d8 <_IO_stdin_used+0xd8>
    2ee5:	48 8d 3d 54 31 00 00 	lea    rdi,[rip+0x3154]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2eec:	e8 af e2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2ef1:	c4 e1 f9 6e c3       	vmovq  xmm0,rbx
    2ef6:	48 8d 3d 43 31 00 00 	lea    rdi,[rip+0x3143]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2efd:	e8 ce e2 ff ff       	call   11d0 <_ZNSo9_M_insertIdEERSoT_@plt>
    2f02:	ba 16 00 00 00       	mov    edx,0x16
    2f07:	48 8d 35 61 13 00 00 	lea    rsi,[rip+0x1361]        # 426f <_IO_stdin_used+0x26f>
    2f0e:	48 89 c7             	mov    rdi,rax
    2f11:	48 89 c3             	mov    rbx,rax
    2f14:	e8 87 e2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2f19:	48 8b 74 24 60       	mov    rsi,QWORD PTR [rsp+0x60]
    2f1e:	48 89 df             	mov    rdi,rbx
    2f21:	e8 2a e2 ff ff       	call   1150 <_ZNSo9_M_insertImEERSoT_@plt>
    2f26:	ba 01 00 00 00       	mov    edx,0x1
    2f2b:	48 8d 35 bb 12 00 00 	lea    rsi,[rip+0x12bb]        # 41ed <_IO_stdin_used+0x1ed>
    2f32:	48 89 c7             	mov    rdi,rax
    2f35:	48 89 c3             	mov    rbx,rax
    2f38:	e8 63 e2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2f3d:	48 89 df             	mov    rdi,rbx
    2f40:	e8 ab 04 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2f45:	ba 24 00 00 00       	mov    edx,0x24
    2f4a:	48 8d 35 af 11 00 00 	lea    rsi,[rip+0x11af]        # 4100 <_IO_stdin_used+0x100>
    2f51:	48 8d 3d e8 30 00 00 	lea    rdi,[rip+0x30e8]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2f58:	e8 43 e2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2f5d:	c4 e1 f9 6e c5       	vmovq  xmm0,rbp
    2f62:	48 8d 3d d7 30 00 00 	lea    rdi,[rip+0x30d7]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2f69:	e8 62 e2 ff ff       	call   11d0 <_ZNSo9_M_insertIdEERSoT_@plt>
    2f6e:	ba 16 00 00 00       	mov    edx,0x16
    2f73:	48 8d 35 f5 12 00 00 	lea    rsi,[rip+0x12f5]        # 426f <_IO_stdin_used+0x26f>
    2f7a:	48 89 c7             	mov    rdi,rax
    2f7d:	48 89 c3             	mov    rbx,rax
    2f80:	e8 1b e2 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2f85:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
    2f8a:	48 89 df             	mov    rdi,rbx
    2f8d:	e8 be e1 ff ff       	call   1150 <_ZNSo9_M_insertImEERSoT_@plt>
    2f92:	ba 01 00 00 00       	mov    edx,0x1
    2f97:	48 8d 35 4f 12 00 00 	lea    rsi,[rip+0x124f]        # 41ed <_IO_stdin_used+0x1ed>
    2f9e:	48 89 c7             	mov    rdi,rax
    2fa1:	48 89 c3             	mov    rbx,rax
    2fa4:	e8 f7 e1 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2fa9:	48 89 df             	mov    rdi,rbx
    2fac:	e8 3f 04 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2fb1:	ba 32 00 00 00       	mov    edx,0x32
    2fb6:	48 8d 35 93 10 00 00 	lea    rsi,[rip+0x1093]        # 4050 <_IO_stdin_used+0x50>
    2fbd:	48 8d 3d 7c 30 00 00 	lea    rdi,[rip+0x307c]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2fc4:	e8 d7 e1 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2fc9:	48 8d 3d 70 30 00 00 	lea    rdi,[rip+0x3070]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2fd0:	e8 1b 04 00 00       	call   33f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
    2fd5:	48 8b 7c 24 30       	mov    rdi,QWORD PTR [rsp+0x30]
    2fda:	e8 d1 04 00 00       	call   34b0 <_ZNSt6vectorIoSaIoEED1Ev>
    2fdf:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    2fe4:	e8 c7 04 00 00       	call   34b0 <_ZNSt6vectorIoSaIoEED1Ev>
    2fe9:	ba 29 00 00 00       	mov    edx,0x29
    2fee:	48 8d 35 63 11 00 00 	lea    rsi,[rip+0x1163]        # 4158 <_IO_stdin_used+0x158>
    2ff5:	48 8d 3d 44 30 00 00 	lea    rdi,[rip+0x3044]        # 6040 <_ZSt4cout@GLIBCXX_3.4>
    2ffc:	e8 9f e1 ff ff       	call   11a0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    3001:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    3008:	00 
    3009:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    3010:	00 00 
    3012:	0f 85 1c 01 00 00    	jne    3134 <main+0x1d74>
    3018:	48 81 c4 a8 0a 00 00 	add    rsp,0xaa8
    301f:	31 c0                	xor    eax,eax
    3021:	5b                   	pop    rbx
    3022:	5d                   	pop    rbp
    3023:	41 5c                	pop    r12
    3025:	41 5d                	pop    r13
    3027:	41 5e                	pop    r14
    3029:	41 5f                	pop    r15
    302b:	c3                   	ret
    302c:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    3030:	62 d1 cf 08 7b c8    	vcvtusi2sd xmm1,xmm6,r8
    3036:	c5 f3 51 c9          	vsqrtsd xmm1,xmm1,xmm1
    303a:	62 f1 ff 08 78 f9    	vcvttsd2usi rdi,xmm1
    3040:	48 89 fe             	mov    rsi,rdi
    3043:	48 0f af f7          	imul   rsi,rdi
    3047:	49 39 f0             	cmp    r8,rsi
    304a:	0f 88 1d e2 ff ff    	js     126d <main.cold+0x4c>
    3050:	31 c0                	xor    eax,eax
    3052:	4c 39 c6             	cmp    rsi,r8
    3055:	0f 94 c0             	sete   al
    3058:	e9 b3 fc ff ff       	jmp    2d10 <main+0x1950>
    305d:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
    3061:	62 d1 cf 08 7b c8    	vcvtusi2sd xmm1,xmm6,r8
    3067:	c5 f3 51 c9          	vsqrtsd xmm1,xmm1,xmm1
    306b:	62 f1 ff 08 78 f9    	vcvttsd2usi rdi,xmm1
    3071:	48 89 fe             	mov    rsi,rdi
    3074:	48 0f af f7          	imul   rsi,rdi
    3078:	49 39 f0             	cmp    r8,rsi
    307b:	0f 88 df e1 ff ff    	js     1260 <main.cold+0x3f>
    3081:	31 c0                	xor    eax,eax
    3083:	4c 39 c6             	cmp    rsi,r8
    3086:	0f 94 c0             	sete   al
    3089:	e9 c2 fa ff ff       	jmp    2b50 <main+0x1790>
    308e:	48 83 c8 ff          	or     rax,0xffffffffffffffff
    3092:	31 d2                	xor    edx,edx
    3094:	e9 fd ec ff ff       	jmp    1d96 <main+0x9d6>
    3099:	48 83 c8 ff          	or     rax,0xffffffffffffffff
    309d:	31 d2                	xor    edx,edx
    309f:	e9 d2 eb ff ff       	jmp    1c76 <main+0x8b6>
    30a4:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    30ab:	00 
    30ac:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    30b3:	00 00 
    30b5:	75 7d                	jne    3134 <main+0x1d74>
    30b7:	e8 04 e1 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    30bc:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    30c3:	00 
    30c4:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    30cb:	00 00 
    30cd:	75 65                	jne    3134 <main+0x1d74>
    30cf:	e8 ec e0 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    30d4:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    30db:	00 
    30dc:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    30e3:	00 00 
    30e5:	75 4d                	jne    3134 <main+0x1d74>
    30e7:	e8 d4 e0 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    30ec:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    30f3:	00 
    30f4:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    30fb:	00 00 
    30fd:	75 35                	jne    3134 <main+0x1d74>
    30ff:	e8 bc e0 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    3104:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    310b:	00 
    310c:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    3113:	00 00 
    3115:	75 1d                	jne    3134 <main+0x1d74>
    3117:	e8 a4 e0 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    311c:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    3123:	00 
    3124:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    312b:	00 00 
    312d:	75 05                	jne    3134 <main+0x1d74>
    312f:	e8 8c e0 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    3134:	e8 57 e0 ff ff       	call   1190 <__stack_chk_fail@plt>
    3139:	48 83 ce ff          	or     rsi,0xffffffffffffffff
    313d:	31 ff                	xor    edi,edi
    313f:	e9 03 fd ff ff       	jmp    2e47 <main+0x1a87>
    3144:	48 83 c9 ff          	or     rcx,0xffffffffffffffff
    3148:	31 db                	xor    ebx,ebx
    314a:	e9 2e fb ff ff       	jmp    2c7d <main+0x18bd>
    314f:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    3156:	00 
    3157:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    315e:	00 00 
    3160:	75 d2                	jne    3134 <main+0x1d74>
    3162:	e8 59 e0 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    3167:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    316e:	00 
    316f:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    3176:	00 00 
    3178:	75 ba                	jne    3134 <main+0x1d74>
    317a:	e8 41 e0 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    317f:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    3186:	00 
    3187:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    318e:	00 00 
    3190:	75 a2                	jne    3134 <main+0x1d74>
    3192:	e8 29 e0 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    3197:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    319e:	00 
    319f:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    31a6:	00 00 
    31a8:	75 8a                	jne    3134 <main+0x1d74>
    31aa:	e8 11 e0 ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    31af:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    31b6:	00 
    31b7:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    31be:	00 00 
    31c0:	0f 85 6e ff ff ff    	jne    3134 <main+0x1d74>
    31c6:	e8 f5 df ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    31cb:	48 8b 84 24 98 0a 00 	mov    rax,QWORD PTR [rsp+0xa98]
    31d2:	00 
    31d3:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    31da:	00 00 
    31dc:	0f 85 52 ff ff ff    	jne    3134 <main+0x1d74>
    31e2:	e8 d9 df ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    31e7:	f3 0f 1e fa          	endbr64
    31eb:	48 89 c3             	mov    rbx,rax
    31ee:	e9 3b e0 ff ff       	jmp    122e <main.cold+0xd>
    31f3:	f3 0f 1e fa          	endbr64
    31f7:	48 89 c3             	mov    rbx,rax
    31fa:	e9 88 e0 ff ff       	jmp    1287 <main.cold+0x66>
    31ff:	f3 0f 1e fa          	endbr64
    3203:	48 89 c3             	mov    rbx,rax
    3206:	c5 f8 77             	vzeroupper
    3209:	e9 2d e0 ff ff       	jmp    123b <main.cold+0x1a>
    320e:	f3 0f 1e fa          	endbr64
    3212:	48 89 c3             	mov    rbx,rax
    3215:	c5 f8 77             	vzeroupper
    3218:	e9 16 e1 ff ff       	jmp    1333 <main.cold+0x112>
    321d:	f3 0f 1e fa          	endbr64
    3221:	48 89 c3             	mov    rbx,rax
    3224:	e9 6a e1 ff ff       	jmp    1393 <main.cold+0x172>
    3229:	f3 0f 1e fa          	endbr64
    322d:	48 89 c3             	mov    rbx,rax
    3230:	e9 f1 e0 ff ff       	jmp    1326 <main.cold+0x105>
    3235:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    323c:	00 00 00 
    323f:	90                   	nop

0000000000003240 <_start>:
    3240:	f3 0f 1e fa          	endbr64
    3244:	31 ed                	xor    ebp,ebp
    3246:	49 89 d1             	mov    r9,rdx
    3249:	5e                   	pop    rsi
    324a:	48 89 e2             	mov    rdx,rsp
    324d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    3251:	50                   	push   rax
    3252:	54                   	push   rsp
    3253:	45 31 c0             	xor    r8d,r8d
    3256:	31 c9                	xor    ecx,ecx
    3258:	48 8d 3d 61 e1 ff ff 	lea    rdi,[rip+0xffffffffffffe161]        # 13c0 <main>
    325f:	ff 15 7b 2d 00 00    	call   QWORD PTR [rip+0x2d7b]        # 5fe0 <__libc_start_main@GLIBC_2.34>
    3265:	f4                   	hlt
    3266:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    326d:	00 00 00 

0000000000003270 <deregister_tm_clones>:
    3270:	48 8d 3d a1 2d 00 00 	lea    rdi,[rip+0x2da1]        # 6018 <__TMC_END__>
    3277:	48 8d 05 9a 2d 00 00 	lea    rax,[rip+0x2d9a]        # 6018 <__TMC_END__>
    327e:	48 39 f8             	cmp    rax,rdi
    3281:	74 15                	je     3298 <deregister_tm_clones+0x28>
    3283:	48 8b 05 5e 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d5e]        # 5fe8 <_ITM_deregisterTMCloneTable@Base>
    328a:	48 85 c0             	test   rax,rax
    328d:	74 09                	je     3298 <deregister_tm_clones+0x28>
    328f:	ff e0                	jmp    rax
    3291:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3298:	c3                   	ret
    3299:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000032a0 <register_tm_clones>:
    32a0:	48 8d 3d 71 2d 00 00 	lea    rdi,[rip+0x2d71]        # 6018 <__TMC_END__>
    32a7:	48 8d 35 6a 2d 00 00 	lea    rsi,[rip+0x2d6a]        # 6018 <__TMC_END__>
    32ae:	48 29 fe             	sub    rsi,rdi
    32b1:	48 89 f0             	mov    rax,rsi
    32b4:	48 c1 ee 3f          	shr    rsi,0x3f
    32b8:	48 c1 f8 03          	sar    rax,0x3
    32bc:	48 01 c6             	add    rsi,rax
    32bf:	48 d1 fe             	sar    rsi,1
    32c2:	74 14                	je     32d8 <register_tm_clones+0x38>
    32c4:	48 8b 05 2d 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d2d]        # 5ff8 <_ITM_registerTMCloneTable@Base>
    32cb:	48 85 c0             	test   rax,rax
    32ce:	74 08                	je     32d8 <register_tm_clones+0x38>
    32d0:	ff e0                	jmp    rax
    32d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    32d8:	c3                   	ret
    32d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000032e0 <__do_global_dtors_aux>:
    32e0:	f3 0f 1e fa          	endbr64
    32e4:	80 3d 65 2e 00 00 00 	cmp    BYTE PTR [rip+0x2e65],0x0        # 6150 <completed.0>
    32eb:	75 2b                	jne    3318 <__do_global_dtors_aux+0x38>
    32ed:	55                   	push   rbp
    32ee:	48 83 3d e2 2c 00 00 	cmp    QWORD PTR [rip+0x2ce2],0x0        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    32f5:	00 
    32f6:	48 89 e5             	mov    rbp,rsp
    32f9:	74 0c                	je     3307 <__do_global_dtors_aux+0x27>
    32fb:	48 8b 3d 06 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d06]        # 6008 <__dso_handle>
    3302:	e8 09 de ff ff       	call   1110 <__cxa_finalize@plt>
    3307:	e8 64 ff ff ff       	call   3270 <deregister_tm_clones>
    330c:	c6 05 3d 2e 00 00 01 	mov    BYTE PTR [rip+0x2e3d],0x1        # 6150 <completed.0>
    3313:	5d                   	pop    rbp
    3314:	c3                   	ret
    3315:	0f 1f 00             	nop    DWORD PTR [rax]
    3318:	c3                   	ret
    3319:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000003320 <frame_dummy>:
    3320:	f3 0f 1e fa          	endbr64
    3324:	e9 77 ff ff ff       	jmp    32a0 <register_tm_clones>
    3329:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000003330 <_ZNSt6vectorIoSaIoEEC1EmRKS0_.constprop.0>:
    3330:	53                   	push   rbx
    3331:	48 89 fb             	mov    rbx,rdi
    3334:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    333b:	48 c7 47 08 00 00 00 	mov    QWORD PTR [rdi+0x8],0x0
    3342:	00 
    3343:	48 c7 47 10 00 00 00 	mov    QWORD PTR [rdi+0x10],0x0
    334a:	00 
    334b:	bf 00 10 5e 5f       	mov    edi,0x5f5e1000
    3350:	e8 1b de ff ff       	call   1170 <_Znwm@plt>
    3355:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    3359:	48 8d 88 00 10 5e 5f 	lea    rcx,[rax+0x5f5e1000]
    3360:	c5 f9 7f 00          	vmovdqa XMMWORD PTR [rax],xmm0
    3364:	48 8d 50 20          	lea    rdx,[rax+0x20]
    3368:	48 89 03             	mov    QWORD PTR [rbx],rax
    336b:	c5 f9 7f 40 10       	vmovdqa XMMWORD PTR [rax+0x10],xmm0
    3370:	48 89 4b 10          	mov    QWORD PTR [rbx+0x10],rcx
    3374:	c5 f9 6f 08          	vmovdqa xmm1,XMMWORD PTR [rax]
    3378:	48 83 c2 10          	add    rdx,0x10
    337c:	c5 f9 7f 4a f0       	vmovdqa XMMWORD PTR [rdx-0x10],xmm1
    3381:	48 39 d1             	cmp    rcx,rdx
    3384:	75 ee                	jne    3374 <_ZNSt6vectorIoSaIoEEC1EmRKS0_.constprop.0+0x44>
    3386:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
    338a:	5b                   	pop    rbx
    338b:	c3                   	ret
    338c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000003390 <_ZNSt6vectorImSaImEEC1EmRKS0_.constprop.0>:
    3390:	55                   	push   rbp
    3391:	53                   	push   rbx
    3392:	48 89 fb             	mov    rbx,rdi
    3395:	48 83 ec 08          	sub    rsp,0x8
    3399:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    33a0:	48 c7 47 08 00 00 00 	mov    QWORD PTR [rdi+0x8],0x0
    33a7:	00 
    33a8:	48 c7 47 10 00 00 00 	mov    QWORD PTR [rdi+0x10],0x0
    33af:	00 
    33b0:	bf 00 08 af 2f       	mov    edi,0x2faf0800
    33b5:	e8 b6 dd ff ff       	call   1170 <_Znwm@plt>
    33ba:	ba f8 07 af 2f       	mov    edx,0x2faf07f8
    33bf:	31 f6                	xor    esi,esi
    33c1:	48 8d a8 00 08 af 2f 	lea    rbp,[rax+0x2faf0800]
    33c8:	48 8d 78 08          	lea    rdi,[rax+0x8]
    33cc:	48 89 03             	mov    QWORD PTR [rbx],rax
    33cf:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    33d6:	48 89 6b 10          	mov    QWORD PTR [rbx+0x10],rbp
    33da:	e8 61 dd ff ff       	call   1140 <memset@plt>
    33df:	48 89 6b 08          	mov    QWORD PTR [rbx+0x8],rbp
    33e3:	48 83 c4 08          	add    rsp,0x8
    33e7:	5b                   	pop    rbx
    33e8:	5d                   	pop    rbp
    33e9:	c3                   	ret
    33ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000033f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>:
    33f0:	55                   	push   rbp
    33f1:	53                   	push   rbx
    33f2:	48 83 ec 08          	sub    rsp,0x8
    33f6:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    33f9:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
    33fd:	48 8b ac 07 f0 00 00 	mov    rbp,QWORD PTR [rdi+rax*1+0xf0]
    3404:	00 
    3405:	48 85 ed             	test   rbp,rbp
    3408:	74 53                	je     345d <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x6d>
    340a:	80 7d 38 00          	cmp    BYTE PTR [rbp+0x38],0x0
    340e:	48 89 fb             	mov    rbx,rdi
    3411:	74 1d                	je     3430 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x40>
    3413:	0f b6 45 43          	movzx  eax,BYTE PTR [rbp+0x43]
    3417:	48 89 df             	mov    rdi,rbx
    341a:	0f be f0             	movsx  esi,al
    341d:	e8 fe dc ff ff       	call   1120 <_ZNSo3putEc@plt>
    3422:	48 83 c4 08          	add    rsp,0x8
    3426:	5b                   	pop    rbx
    3427:	5d                   	pop    rbp
    3428:	48 89 c7             	mov    rdi,rax
    342b:	e9 30 dd ff ff       	jmp    1160 <_ZNSo5flushEv@plt>
    3430:	48 89 ef             	mov    rdi,rbp
    3433:	e8 78 dd ff ff       	call   11b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    3438:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
    343c:	48 8d 0d 2d 00 00 00 	lea    rcx,[rip+0x2d]        # 3470 <_ZNKSt5ctypeIcE8do_widenEc>
    3443:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
    3447:	b8 0a 00 00 00       	mov    eax,0xa
    344c:	48 39 ca             	cmp    rdx,rcx
    344f:	74 c6                	je     3417 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x27>
    3451:	be 0a 00 00 00       	mov    esi,0xa
    3456:	48 89 ef             	mov    rdi,rbp
    3459:	ff d2                	call   rdx
    345b:	eb ba                	jmp    3417 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x27>
    345d:	e8 5e dd ff ff       	call   11c0 <_ZSt16__throw_bad_castv@plt>
    3462:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    3469:	00 00 00 
    346c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000003470 <_ZNKSt5ctypeIcE8do_widenEc>:
    3470:	f3 0f 1e fa          	endbr64
    3474:	89 f0                	mov    eax,esi
    3476:	c3                   	ret
    3477:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    347e:	00 00 

0000000000003480 <_ZNSt6vectorImSaImEED1Ev>:
    3480:	f3 0f 1e fa          	endbr64
    3484:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    3487:	48 85 c0             	test   rax,rax
    348a:	74 14                	je     34a0 <_ZNSt6vectorImSaImEED1Ev+0x20>
    348c:	48 8b 77 10          	mov    rsi,QWORD PTR [rdi+0x10]
    3490:	48 89 c7             	mov    rdi,rax
    3493:	48 29 c6             	sub    rsi,rax
    3496:	e9 e5 dc ff ff       	jmp    1180 <_ZdlPvm@plt>
    349b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    34a0:	c3                   	ret
    34a1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    34a8:	00 00 00 
    34ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000034b0 <_ZNSt6vectorIoSaIoEED1Ev>:
    34b0:	f3 0f 1e fa          	endbr64
    34b4:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    34b7:	48 85 c0             	test   rax,rax
    34ba:	74 14                	je     34d0 <_ZNSt6vectorIoSaIoEED1Ev+0x20>
    34bc:	48 8b 77 10          	mov    rsi,QWORD PTR [rdi+0x10]
    34c0:	48 89 c7             	mov    rdi,rax
    34c3:	48 29 c6             	sub    rsi,rax
    34c6:	e9 b5 dc ff ff       	jmp    1180 <_ZdlPvm@plt>
    34cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    34d0:	c3                   	ret
    34d1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    34d8:	00 00 00 
    34db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000034e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>:
    34e0:	f3 0f 1e fa          	endbr64
    34e4:	49 c7 c2 00 00 00 80 	mov    r10,0xffffffff80000000
    34eb:	be ff ff ff 7f       	mov    esi,0x7fffffff
    34f0:	41 b9 01 00 00 00    	mov    r9d,0x1
    34f6:	49 b8 e9 19 66 a9 5a 	movabs r8,0xb5026f5aa96619e9
    34fd:	6f 02 b5 
    3500:	62 d2 fd 48 7c f2    	vpbroadcastq zmm6,r10
    3506:	62 f2 fd 48 7c ee    	vpbroadcastq zmm5,rsi
    350c:	48 89 f9             	mov    rcx,rdi
    350f:	48 8d 87 e0 04 00 00 	lea    rax,[rdi+0x4e0]
    3516:	48 89 ca             	mov    rdx,rcx
    3519:	48 8d bf c0 04 00 00 	lea    rdi,[rdi+0x4c0]
    3520:	62 d2 fd 48 7c e1    	vpbroadcastq zmm4,r9
    3526:	62 d2 fd 48 7c d0    	vpbroadcastq zmm2,r8
    352c:	c5 e1 ef db          	vpxor  xmm3,xmm3,xmm3
    3530:	62 f1 d5 48 db 82 08 	vpandq zmm0,zmm5,ZMMWORD PTR [rdx+0x8]
    3537:	00 00 00 
    353a:	48 83 c2 40          	add    rdx,0x40
    353e:	62 f3 cd 48 25 42 ff 	vpternlogq zmm0,zmm6,ZMMWORD PTR [rdx-0x40],0xf8
    3545:	f8 
    3546:	62 f1 f5 48 73 d0 01 	vpsrlq zmm1,zmm0,0x1
    354d:	62 f1 fd 48 db c4    	vpandq zmm0,zmm0,zmm4
    3553:	62 f1 e5 48 fb c0    	vpsubq zmm0,zmm3,zmm0
    3559:	62 f1 fd 48 db c2    	vpandq zmm0,zmm0,zmm2
    355f:	62 f3 f5 48 25 82 a0 	vpternlogq zmm0,zmm1,ZMMWORD PTR [rdx+0x4a0],0x96
    3566:	04 00 00 96 
    356a:	62 f1 fe 48 7f 42 ff 	vmovdqu64 ZMMWORD PTR [rdx-0x40],zmm0
    3571:	48 39 d7             	cmp    rdi,rdx
    3574:	75 ba                	jne    3530 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x50>
    3576:	62 f2 fd 28 7c c6    	vpbroadcastq ymm0,rsi
    357c:	c5 fd db 81 c8 04 00 	vpand  ymm0,ymm0,YMMWORD PTR [rcx+0x4c8]
    3583:	00 
    3584:	62 d2 fd 28 7c ca    	vpbroadcastq ymm1,r10
    358a:	48 c7 c2 00 00 00 80 	mov    rdx,0xffffffff80000000
    3591:	62 f2 fd 48 7c e2    	vpbroadcastq zmm4,rdx
    3597:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    359c:	48 8d b1 a0 09 00 00 	lea    rsi,[rcx+0x9a0]
    35a3:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    35a7:	62 f2 fd 48 7c da    	vpbroadcastq zmm3,rdx
    35ad:	ba 01 00 00 00       	mov    edx,0x1
    35b2:	62 f3 f5 28 25 41 26 	vpternlogq ymm0,ymm1,YMMWORD PTR [rcx+0x4c0],0xf8
    35b9:	f8 
    35ba:	62 d2 fd 28 7c c9    	vpbroadcastq ymm1,r9
    35c0:	c5 ed 73 d0 01       	vpsrlq ymm2,ymm0,0x1
    35c5:	c5 fd db c1          	vpand  ymm0,ymm0,ymm1
    35c9:	c5 f1 ef c9          	vpxor  xmm1,xmm1,xmm1
    35cd:	c5 f5 fb c0          	vpsubq ymm0,ymm1,ymm0
    35d1:	62 d2 fd 28 7c c8    	vpbroadcastq ymm1,r8
    35d7:	c5 fd db c1          	vpand  ymm0,ymm0,ymm1
    35db:	62 f3 ed 28 25 41 4d 	vpternlogq ymm0,ymm2,YMMWORD PTR [rcx+0x9a0],0x96
    35e2:	96 
    35e3:	62 f2 fd 48 7c d2    	vpbroadcastq zmm2,rdx
    35e9:	48 ba e9 19 66 a9 5a 	movabs rdx,0xb5026f5aa96619e9
    35f0:	6f 02 b5 
    35f3:	62 f2 fd 48 7c ea    	vpbroadcastq zmm5,rdx
    35f9:	c5 fe 7f 81 c0 04 00 	vmovdqu YMMWORD PTR [rcx+0x4c0],ymm0
    3600:	00 
    3601:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    3608:	00 00 00 00 
    360c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    3610:	62 f1 e5 48 db 80 08 	vpandq zmm0,zmm3,ZMMWORD PTR [rax+0x8]
    3617:	00 00 00 
    361a:	48 83 c0 40          	add    rax,0x40
    361e:	62 f3 dd 48 25 40 ff 	vpternlogq zmm0,zmm4,ZMMWORD PTR [rax-0x40],0xf8
    3625:	f8 
    3626:	62 f1 f5 48 73 d0 01 	vpsrlq zmm1,zmm0,0x1
    362d:	62 f1 fd 48 db c2    	vpandq zmm0,zmm0,zmm2
    3633:	62 f1 cd 48 fb c0    	vpsubq zmm0,zmm6,zmm0
    3639:	62 f1 fd 48 db c5    	vpandq zmm0,zmm0,zmm5
    363f:	62 f3 f5 48 25 80 e0 	vpternlogq zmm0,zmm1,ZMMWORD PTR [rax-0x520],0x96
    3646:	fa ff ff 96 
    364a:	62 f1 fe 48 7f 40 ff 	vmovdqu64 ZMMWORD PTR [rax-0x40],zmm0
    3651:	48 39 c6             	cmp    rsi,rax
    3654:	75 ba                	jne    3610 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x130>
    3656:	48 8b 81 a8 09 00 00 	mov    rax,QWORD PTR [rcx+0x9a8]
    365d:	48 8b b9 a0 09 00 00 	mov    rdi,QWORD PTR [rcx+0x9a0]
    3664:	48 c7 81 c0 09 00 00 	mov    QWORD PTR [rcx+0x9c0],0x0
    366b:	00 00 00 00 
    366f:	48 89 c6             	mov    rsi,rax
    3672:	48 81 e7 00 00 00 80 	and    rdi,0xffffffff80000000
    3679:	48 25 00 00 00 80    	and    rax,0xffffffff80000000
    367f:	81 e6 ff ff ff 7f    	and    esi,0x7fffffff
    3685:	48 09 f7             	or     rdi,rsi
    3688:	83 e6 01             	and    esi,0x1
    368b:	48 d1 ef             	shr    rdi,1
    368e:	48 33 b9 c0 04 00 00 	xor    rdi,QWORD PTR [rcx+0x4c0]
    3695:	48 f7 de             	neg    rsi
    3698:	48 21 d6             	and    rsi,rdx
    369b:	48 31 fe             	xor    rsi,rdi
    369e:	48 89 b1 a0 09 00 00 	mov    QWORD PTR [rcx+0x9a0],rsi
    36a5:	48 8b b1 b0 09 00 00 	mov    rsi,QWORD PTR [rcx+0x9b0]
    36ac:	48 89 f7             	mov    rdi,rsi
    36af:	48 81 e6 00 00 00 80 	and    rsi,0xffffffff80000000
    36b6:	81 e7 ff ff ff 7f    	and    edi,0x7fffffff
    36bc:	48 09 f8             	or     rax,rdi
    36bf:	48 89 c7             	mov    rdi,rax
    36c2:	83 e0 01             	and    eax,0x1
    36c5:	48 d1 ef             	shr    rdi,1
    36c8:	48 33 b9 c8 04 00 00 	xor    rdi,QWORD PTR [rcx+0x4c8]
    36cf:	48 f7 d8             	neg    rax
    36d2:	48 21 d0             	and    rax,rdx
    36d5:	48 31 f8             	xor    rax,rdi
    36d8:	48 8b b9 b8 09 00 00 	mov    rdi,QWORD PTR [rcx+0x9b8]
    36df:	48 89 81 a8 09 00 00 	mov    QWORD PTR [rcx+0x9a8],rax
    36e6:	48 89 f8             	mov    rax,rdi
    36e9:	48 81 e7 00 00 00 80 	and    rdi,0xffffffff80000000
    36f0:	25 ff ff ff 7f       	and    eax,0x7fffffff
    36f5:	48 09 c6             	or     rsi,rax
    36f8:	83 e0 01             	and    eax,0x1
    36fb:	48 d1 ee             	shr    rsi,1
    36fe:	48 33 b1 d0 04 00 00 	xor    rsi,QWORD PTR [rcx+0x4d0]
    3705:	48 f7 d8             	neg    rax
    3708:	48 21 d0             	and    rax,rdx
    370b:	48 31 f0             	xor    rax,rsi
    370e:	48 89 81 b0 09 00 00 	mov    QWORD PTR [rcx+0x9b0],rax
    3715:	48 8b 01             	mov    rax,QWORD PTR [rcx]
    3718:	25 ff ff ff 7f       	and    eax,0x7fffffff
    371d:	48 09 f8             	or     rax,rdi
    3720:	48 89 c6             	mov    rsi,rax
    3723:	48 d1 ee             	shr    rsi,1
    3726:	48 33 b1 d8 04 00 00 	xor    rsi,QWORD PTR [rcx+0x4d8]
    372d:	83 e0 01             	and    eax,0x1
    3730:	48 f7 d8             	neg    rax
    3733:	48 21 d0             	and    rax,rdx
    3736:	48 31 f0             	xor    rax,rsi
    3739:	48 89 81 b8 09 00 00 	mov    QWORD PTR [rcx+0x9b8],rax
    3740:	c5 f8 77             	vzeroupper
    3743:	c3                   	ret

Disassembly of section .fini:

0000000000003744 <_fini>:
    3744:	f3 0f 1e fa          	endbr64
    3748:	48 83 ec 08          	sub    rsp,0x8
    374c:	48 83 c4 08          	add    rsp,0x8
    3750:	c3                   	ret
