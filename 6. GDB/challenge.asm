
challenge:     format de fichier elf64-x86-64


Déassemblage de la section .init :

0000000000001000 <.init>:
    1000:	48 83 ec 08          	sub    rsp,0x8
    1004:	48 8b 05 c5 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fc5]        # 3fd0 <__cxa_finalize@plt+0x2f60>
    100b:	48 85 c0             	test   rax,rax
    100e:	74 02                	je     1012 <puts@plt-0x1e>
    1010:	ff d0                	call   rax
    1012:	48 83 c4 08          	add    rsp,0x8
    1016:	c3                   	ret

Déassemblage de la section .plt :

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   QWORD PTR [rip+0x2fca]        # 3ff0 <__cxa_finalize@plt+0x2f80>
    1026:	ff 25 cc 2f 00 00    	jmp    QWORD PTR [rip+0x2fcc]        # 3ff8 <__cxa_finalize@plt+0x2f88>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4000 <__cxa_finalize@plt+0x2f90>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001040 <printf@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 4008 <__cxa_finalize@plt+0x2f98>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001050 <strcmp@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 4010 <__cxa_finalize@plt+0x2fa0>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001060 <__isoc99_scanf@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    QWORD PTR [rip+0x2fb2]        # 4018 <__cxa_finalize@plt+0x2fa8>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <puts@plt-0x10>

Déassemblage de la section .plt.got :

0000000000001070 <__cxa_finalize@plt>:
    1070:	ff 25 6a 2f 00 00    	jmp    QWORD PTR [rip+0x2f6a]        # 3fe0 <__cxa_finalize@plt+0x2f70>
    1076:	66 90                	xchg   ax,ax

Déassemblage de la section .text :

0000000000001080 <.text>:
    1080:	31 ed                	xor    ebp,ebp
    1082:	49 89 d1             	mov    r9,rdx
    1085:	5e                   	pop    rsi
    1086:	48 89 e2             	mov    rdx,rsp
    1089:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    108d:	50                   	push   rax
    108e:	54                   	push   rsp
    108f:	45 31 c0             	xor    r8d,r8d
    1092:	31 c9                	xor    ecx,ecx
    1094:	48 8d 3d 02 01 00 00 	lea    rdi,[rip+0x102]        # 119d <__cxa_finalize@plt+0x12d>
    109b:	ff 15 1f 2f 00 00    	call   QWORD PTR [rip+0x2f1f]        # 3fc0 <__cxa_finalize@plt+0x2f50>
    10a1:	f4                   	hlt
    10a2:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    10a9:	00 00 00 
    10ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    10b0:	48 8d 3d 79 2f 00 00 	lea    rdi,[rip+0x2f79]        # 4030 <__cxa_finalize@plt+0x2fc0>
    10b7:	48 8d 05 72 2f 00 00 	lea    rax,[rip+0x2f72]        # 4030 <__cxa_finalize@plt+0x2fc0>
    10be:	48 39 f8             	cmp    rax,rdi
    10c1:	74 15                	je     10d8 <__cxa_finalize@plt+0x68>
    10c3:	48 8b 05 fe 2e 00 00 	mov    rax,QWORD PTR [rip+0x2efe]        # 3fc8 <__cxa_finalize@plt+0x2f58>
    10ca:	48 85 c0             	test   rax,rax
    10cd:	74 09                	je     10d8 <__cxa_finalize@plt+0x68>
    10cf:	ff e0                	jmp    rax
    10d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10e0:	48 8d 3d 49 2f 00 00 	lea    rdi,[rip+0x2f49]        # 4030 <__cxa_finalize@plt+0x2fc0>
    10e7:	48 8d 35 42 2f 00 00 	lea    rsi,[rip+0x2f42]        # 4030 <__cxa_finalize@plt+0x2fc0>
    10ee:	48 29 fe             	sub    rsi,rdi
    10f1:	48 89 f0             	mov    rax,rsi
    10f4:	48 c1 ee 3f          	shr    rsi,0x3f
    10f8:	48 c1 f8 03          	sar    rax,0x3
    10fc:	48 01 c6             	add    rsi,rax
    10ff:	48 d1 fe             	sar    rsi,1
    1102:	74 14                	je     1118 <__cxa_finalize@plt+0xa8>
    1104:	48 8b 05 cd 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ecd]        # 3fd8 <__cxa_finalize@plt+0x2f68>
    110b:	48 85 c0             	test   rax,rax
    110e:	74 08                	je     1118 <__cxa_finalize@plt+0xa8>
    1110:	ff e0                	jmp    rax
    1112:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1120:	f3 0f 1e fa          	endbr64
    1124:	80 3d 05 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f05],0x0        # 4030 <__cxa_finalize@plt+0x2fc0>
    112b:	75 2b                	jne    1158 <__cxa_finalize@plt+0xe8>
    112d:	55                   	push   rbp
    112e:	48 83 3d aa 2e 00 00 	cmp    QWORD PTR [rip+0x2eaa],0x0        # 3fe0 <__cxa_finalize@plt+0x2f70>
    1135:	00 
    1136:	48 89 e5             	mov    rbp,rsp
    1139:	74 0c                	je     1147 <__cxa_finalize@plt+0xd7>
    113b:	48 8b 3d e6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ee6]        # 4028 <__cxa_finalize@plt+0x2fb8>
    1142:	e8 29 ff ff ff       	call   1070 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	call   10b0 <__cxa_finalize@plt+0x40>
    114c:	c6 05 dd 2e 00 00 01 	mov    BYTE PTR [rip+0x2edd],0x1        # 4030 <__cxa_finalize@plt+0x2fc0>
    1153:	5d                   	pop    rbp
    1154:	c3                   	ret
    1155:	0f 1f 00             	nop    DWORD PTR [rax]
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1160:	f3 0f 1e fa          	endbr64
    1164:	e9 77 ff ff ff       	jmp    10e0 <__cxa_finalize@plt+0x70>
    1169:	55                   	push   rbp
    116a:	48 89 e5             	mov    rbp,rsp
    116d:	48 83 ec 10          	sub    rsp,0x10
    1171:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    1175:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1179:	48 8d 15 84 0e 00 00 	lea    rdx,[rip+0xe84]        # 2004 <__cxa_finalize@plt+0xf94>
    1180:	48 89 d6             	mov    rsi,rdx
    1183:	48 89 c7             	mov    rdi,rax
    1186:	e8 c5 fe ff ff       	call   1050 <strcmp@plt>
    118b:	85 c0                	test   eax,eax
    118d:	75 07                	jne    1196 <__cxa_finalize@plt+0x126>
    118f:	b8 01 00 00 00       	mov    eax,0x1
    1194:	eb 05                	jmp    119b <__cxa_finalize@plt+0x12b>
    1196:	b8 00 00 00 00       	mov    eax,0x0
    119b:	c9                   	leave
    119c:	c3                   	ret
    119d:	55                   	push   rbp
    119e:	48 89 e5             	mov    rbp,rsp
    11a1:	48 83 ec 70          	sub    rsp,0x70
    11a5:	48 8d 05 5d 0e 00 00 	lea    rax,[rip+0xe5d]        # 2009 <__cxa_finalize@plt+0xf99>
    11ac:	48 89 c7             	mov    rdi,rax
    11af:	b8 00 00 00 00       	mov    eax,0x0
    11b4:	e8 87 fe ff ff       	call   1040 <printf@plt>
    11b9:	48 8d 45 90          	lea    rax,[rbp-0x70]
    11bd:	48 89 c6             	mov    rsi,rax
    11c0:	48 8d 05 60 0e 00 00 	lea    rax,[rip+0xe60]        # 2027 <__cxa_finalize@plt+0xfb7>
    11c7:	48 89 c7             	mov    rdi,rax
    11ca:	b8 00 00 00 00       	mov    eax,0x0
    11cf:	e8 8c fe ff ff       	call   1060 <__isoc99_scanf@plt>
    11d4:	eb 3e                	jmp    1214 <__cxa_finalize@plt+0x1a4>
    11d6:	48 8d 05 4d 0e 00 00 	lea    rax,[rip+0xe4d]        # 202a <__cxa_finalize@plt+0xfba>
    11dd:	48 89 c7             	mov    rdi,rax
    11e0:	e8 4b fe ff ff       	call   1030 <puts@plt>
    11e5:	48 8d 05 1d 0e 00 00 	lea    rax,[rip+0xe1d]        # 2009 <__cxa_finalize@plt+0xf99>
    11ec:	48 89 c7             	mov    rdi,rax
    11ef:	b8 00 00 00 00       	mov    eax,0x0
    11f4:	e8 47 fe ff ff       	call   1040 <printf@plt>
    11f9:	48 8d 45 90          	lea    rax,[rbp-0x70]
    11fd:	48 89 c6             	mov    rsi,rax
    1200:	48 8d 05 20 0e 00 00 	lea    rax,[rip+0xe20]        # 2027 <__cxa_finalize@plt+0xfb7>
    1207:	48 89 c7             	mov    rdi,rax
    120a:	b8 00 00 00 00       	mov    eax,0x0
    120f:	e8 4c fe ff ff       	call   1060 <__isoc99_scanf@plt>
    1214:	48 8d 45 90          	lea    rax,[rbp-0x70]
    1218:	48 89 c7             	mov    rdi,rax
    121b:	e8 49 ff ff ff       	call   1169 <__cxa_finalize@plt+0xf9>
    1220:	85 c0                	test   eax,eax
    1222:	74 b2                	je     11d6 <__cxa_finalize@plt+0x166>
    1224:	48 8d 05 14 0e 00 00 	lea    rax,[rip+0xe14]        # 203f <__cxa_finalize@plt+0xfcf>
    122b:	48 89 c7             	mov    rdi,rax
    122e:	e8 fd fd ff ff       	call   1030 <puts@plt>
    1233:	b8 00 00 00 00       	mov    eax,0x0
    1238:	c9                   	leave
    1239:	c3                   	ret

Déassemblage de la section .fini :

000000000000123c <.fini>:
    123c:	48 83 ec 08          	sub    rsp,0x8
    1240:	48 83 c4 08          	add    rsp,0x8
    1244:	c3                   	ret
