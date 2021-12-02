; Disassembly of file: main.o
; Thu Dec  2 18:22:44 2021
; Type: ELF64
; Syntax: NASM
; Instruction set: SSE2, x64

default rel

global FilterContainer: function
global StraightSort: function
global errMessage1: function
global errMessage2: function
global main: function
global carSize
global busSize
global truckSize
global vehicleSize
global maxSize
global CAR
global BUS
global TRUCK

extern fprintf                                          ; near
extern clock                                            ; near
extern fclose                                           ; near
extern Out_Container                                    ; near
extern fwrite                                           ; near
extern stdout                                           ; qword
extern InRndContainer                                   ; near
extern srand                                            ; near
extern time                                             ; near
extern atoi                                             ; near
extern Fill_Container                                   ; near
extern fopen                                            ; near
extern strcmp                                           ; near
extern puts                                             ; near
extern __stack_chk_fail                                 ; near
extern memcpy                                           ; near
extern getRange                                         ; near
extern printf                                           ; near
extern getAverageRange                                  ; near
extern _GLOBAL_OFFSET_TABLE_                            ; byte


SECTION .text   align=1 execute                         ; section number 1, code

FilterContainer:; Function begin
        endbr64                                         ; 0000 _ F3: 0F 1E. FA
        push    rbp                                     ; 0004 _ 55
        mov     rbp, rsp                                ; 0005 _ 48: 89. E5
        sub     rsp, 64                                 ; 0008 _ 48: 83. EC, 40
        mov     qword [rbp-28H], rdi                    ; 000C _ 48: 89. 7D, D8
        mov     qword [rbp-30H], rsi                    ; 0010 _ 48: 89. 75, D0
        mov     dword [rbp-34H], edx                    ; 0014 _ 89. 55, CC
        mov     edx, dword [rbp-34H]                    ; 0017 _ 8B. 55, CC
        mov     rax, qword [rbp-28H]                    ; 001A _ 48: 8B. 45, D8
        mov     esi, edx                                ; 001E _ 89. D6
        mov     rdi, rax                                ; 0020 _ 48: 89. C7
        call    getAverageRange                         ; 0023 _ E8, 00000000(PLT r)
        cvtss2sd xmm0, xmm0                             ; 0028 _ F3: 0F 5A. C0
        movsd   qword [rbp-8H], xmm0                    ; 002C _ F2: 0F 11. 45, F8
        mov     rax, qword [rbp-8H]                     ; 0031 _ 48: 8B. 45, F8
        movq    xmm0, rax                               ; 0035 _ 66 48: 0F 6E. C0
        lea     rdi, [rel ?_021]                        ; 003A _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 0041 _ B8, 00000001
        call    printf                                  ; 0046 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-28H]                    ; 004B _ 48: 8B. 45, D8
        mov     qword [rbp-10H], rax                    ; 004F _ 48: 89. 45, F0
        mov     dword [rbp-18H], 0                      ; 0053 _ C7. 45, E8, 00000000
        mov     dword [rbp-14H], 0                      ; 005A _ C7. 45, EC, 00000000
        jmp     ?_003                                   ; 0061 _ EB, 75

?_001:  mov     rax, qword [rbp-10H]                    ; 0063 _ 48: 8B. 45, F0
        mov     rdi, rax                                ; 0067 _ 48: 89. C7
        call    getRange                                ; 006A _ E8, 00000000(PLT r)
        cvtss2sd xmm0, xmm0                             ; 006F _ F3: 0F 5A. C0
        lea     rdi, [rel ?_021]                        ; 0073 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 007A _ B8, 00000001
        call    printf                                  ; 007F _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-10H]                    ; 0084 _ 48: 8B. 45, F0
        mov     rdi, rax                                ; 0088 _ 48: 89. C7
        call    getRange                                ; 008B _ E8, 00000000(PLT r)
        cvtss2sd xmm0, xmm0                             ; 0090 _ F3: 0F 5A. C0
        comisd  xmm0, qword [rbp-8H]                    ; 0094 _ 66: 0F 2F. 45, F8
        jc      ?_002                                   ; 0099 _ 72, 2E
        mov     eax, 16                                 ; 009B _ B8, 00000010
        movsxd  rdx, eax                                ; 00A0 _ 48: 63. D0
        mov     eax, 16                                 ; 00A3 _ B8, 00000010
        imul    eax, dword [rbp-18H]                    ; 00A8 _ 0F AF. 45, E8
        movsxd  rcx, eax                                ; 00AC _ 48: 63. C8
        mov     rax, qword [rbp-30H]                    ; 00AF _ 48: 8B. 45, D0
        add     rcx, rax                                ; 00B3 _ 48: 01. C1
        mov     rax, qword [rbp-10H]                    ; 00B6 _ 48: 8B. 45, F0
        mov     rsi, rax                                ; 00BA _ 48: 89. C6
        mov     rdi, rcx                                ; 00BD _ 48: 89. CF
        call    memcpy                                  ; 00C0 _ E8, 00000000(PLT r)
        add     dword [rbp-18H], 1                      ; 00C5 _ 83. 45, E8, 01
?_002:  mov     eax, 16                                 ; 00C9 _ B8, 00000010
        cdqe                                            ; 00CE _ 48: 98
        add     qword [rbp-10H], rax                    ; 00D0 _ 48: 01. 45, F0
        add     dword [rbp-14H], 1                      ; 00D4 _ 83. 45, EC, 01
?_003:  mov     eax, dword [rbp-14H]                    ; 00D8 _ 8B. 45, EC
        cmp     eax, dword [rbp-34H]                    ; 00DB _ 3B. 45, CC
        jl      ?_001                                   ; 00DE _ 7C, 83
        mov     eax, dword [rbp-18H]                    ; 00E0 _ 8B. 45, E8
        leave                                           ; 00E3 _ C9
        ret                                             ; 00E4 _ C3
; FilterContainer End of function

StraightSort:; Function begin
        endbr64                                         ; 00E5 _ F3: 0F 1E. FA
        push    rbp                                     ; 00E9 _ 55
        mov     rbp, rsp                                ; 00EA _ 48: 89. E5
        sub     rsp, 64                                 ; 00ED _ 48: 83. EC, 40
        mov     qword [rbp-38H], rdi                    ; 00F1 _ 48: 89. 7D, C8
        mov     dword [rbp-3CH], esi                    ; 00F5 _ 89. 75, C4
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 00F8 _ 64 48: 8B. 04 25, 00000028
        mov     qword [rbp-8H], rax                     ; 0101 _ 48: 89. 45, F8
        xor     eax, eax                                ; 0105 _ 31. C0
        mov     dword [rbp-28H], 0                      ; 0107 _ C7. 45, D8, 00000000
        jmp     ?_008                                   ; 010E _ E9, 000000BC

?_004:  mov     eax, dword [rbp-28H]                    ; 0113 _ 8B. 45, D8
        shl     eax, 4                                  ; 0116 _ C1. E0, 04
        movsxd  rdx, eax                                ; 0119 _ 48: 63. D0
        mov     rax, qword [rbp-38H]                    ; 011C _ 48: 8B. 45, C8
        add     rax, rdx                                ; 0120 _ 48: 01. D0
        mov     rdx, qword [rax+8H]                     ; 0123 _ 48: 8B. 50, 08
        mov     rax, qword [rax]                        ; 0127 _ 48: 8B. 00
        mov     qword [rbp-20H], rax                    ; 012A _ 48: 89. 45, E0
        mov     qword [rbp-18H], rdx                    ; 012E _ 48: 89. 55, E8
        mov     eax, dword [rbp-28H]                    ; 0132 _ 8B. 45, D8
        mov     dword [rbp-24H], eax                    ; 0135 _ 89. 45, DC
        jmp     ?_006                                   ; 0138 _ EB, 35

?_005:  mov     eax, dword [rbp-24H]                    ; 013A _ 8B. 45, DC
        sub     eax, 1                                  ; 013D _ 83. E8, 01
        shl     eax, 4                                  ; 0140 _ C1. E0, 04
        movsxd  rdx, eax                                ; 0143 _ 48: 63. D0
        mov     rax, qword [rbp-38H]                    ; 0146 _ 48: 8B. 45, C8
        add     rax, rdx                                ; 014A _ 48: 01. D0
        mov     edx, dword [rbp-24H]                    ; 014D _ 8B. 55, DC
        shl     edx, 4                                  ; 0150 _ C1. E2, 04
        movsxd  rcx, edx                                ; 0153 _ 48: 63. CA
        mov     rdx, qword [rbp-38H]                    ; 0156 _ 48: 8B. 55, C8
        add     rcx, rdx                                ; 015A _ 48: 01. D1
        mov     rdx, qword [rax+8H]                     ; 015D _ 48: 8B. 50, 08
        mov     rax, qword [rax]                        ; 0161 _ 48: 8B. 00
        mov     qword [rcx], rax                        ; 0164 _ 48: 89. 01
        mov     qword [rcx+8H], rdx                     ; 0167 _ 48: 89. 51, 08
        sub     dword [rbp-24H], 1                      ; 016B _ 83. 6D, DC, 01
?_006:  cmp     dword [rbp-24H], 0                      ; 016F _ 83. 7D, DC, 00
        jle     ?_007                                   ; 0173 _ 7E, 36
        mov     eax, dword [rbp-24H]                    ; 0175 _ 8B. 45, DC
        sub     eax, 1                                  ; 0178 _ 83. E8, 01
        shl     eax, 4                                  ; 017B _ C1. E0, 04
        movsxd  rdx, eax                                ; 017E _ 48: 63. D0
        mov     rax, qword [rbp-38H]                    ; 0181 _ 48: 8B. 45, C8
        add     rax, rdx                                ; 0185 _ 48: 01. D0
        mov     rdi, rax                                ; 0188 _ 48: 89. C7
        call    getRange                                ; 018B _ E8, 00000000(PLT r)
        movss   dword [rbp-40H], xmm0                   ; 0190 _ F3: 0F 11. 45, C0
        lea     rax, [rbp-20H]                          ; 0195 _ 48: 8D. 45, E0
        mov     rdi, rax                                ; 0199 _ 48: 89. C7
        call    getRange                                ; 019C _ E8, 00000000(PLT r)
        movss   xmm1, dword [rbp-40H]                   ; 01A1 _ F3: 0F 10. 4D, C0
        comiss  xmm1, xmm0                              ; 01A6 _ 0F 2F. C8
        ja      ?_005                                   ; 01A9 _ 77, 8F
?_007:  mov     eax, dword [rbp-24H]                    ; 01AB _ 8B. 45, DC
        shl     eax, 4                                  ; 01AE _ C1. E0, 04
        movsxd  rdx, eax                                ; 01B1 _ 48: 63. D0
        mov     rax, qword [rbp-38H]                    ; 01B4 _ 48: 8B. 45, C8
        lea     rcx, [rdx+rax]                          ; 01B8 _ 48: 8D. 0C 02
        mov     rax, qword [rbp-20H]                    ; 01BC _ 48: 8B. 45, E0
        mov     rdx, qword [rbp-18H]                    ; 01C0 _ 48: 8B. 55, E8
        mov     qword [rcx], rax                        ; 01C4 _ 48: 89. 01
        mov     qword [rcx+8H], rdx                     ; 01C7 _ 48: 89. 51, 08
        add     dword [rbp-28H], 1                      ; 01CB _ 83. 45, D8, 01
?_008:  mov     eax, dword [rbp-28H]                    ; 01CF _ 8B. 45, D8
        cmp     eax, dword [rbp-3CH]                    ; 01D2 _ 3B. 45, C4
        jl      ?_004                                   ; 01D5 _ 0F 8C, FFFFFF38
        nop                                             ; 01DB _ 90
        mov     rax, qword [rbp-8H]                     ; 01DC _ 48: 8B. 45, F8
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        xor     rax, qword [fs:abs 28H]                 ; 01E0 _ 64 48: 33. 04 25, 00000028
        jz      ?_009                                   ; 01E9 _ 74, 05
        call    __stack_chk_fail                        ; 01EB _ E8, 00000000(PLT r)
?_009:  leave                                           ; 01F0 _ C9
        ret                                             ; 01F1 _ C3
; StraightSort End of function

errMessage1:; Function begin
        endbr64                                         ; 01F2 _ F3: 0F 1E. FA
        push    rbp                                     ; 01F6 _ 55
        mov     rbp, rsp                                ; 01F7 _ 48: 89. E5
        lea     rdi, [rel ?_022]                        ; 01FA _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0201 _ E8, 00000000(PLT r)
        nop                                             ; 0206 _ 90
        pop     rbp                                     ; 0207 _ 5D
        ret                                             ; 0208 _ C3
; errMessage1 End of function

errMessage2:; Function begin
        endbr64                                         ; 0209 _ F3: 0F 1E. FA
        push    rbp                                     ; 020D _ 55
        mov     rbp, rsp                                ; 020E _ 48: 89. E5
        lea     rdi, [rel ?_023]                        ; 0211 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0218 _ E8, 00000000(PLT r)
        nop                                             ; 021D _ 90
        pop     rbp                                     ; 021E _ 5D
        ret                                             ; 021F _ C3
; errMessage2 End of function

main:   ; Function begin
        endbr64                                         ; 0220 _ F3: 0F 1E. FA
        push    rbp                                     ; 0224 _ 55
        mov     rbp, rsp                                ; 0225 _ 48: 89. E5
        push    rbx                                     ; 0228 _ 53
        sub     rsp, 104                                ; 0229 _ 48: 83. EC, 68
        mov     dword [rbp-64H], edi                    ; 022D _ 89. 7D, 9C
        mov     qword [rbp-70H], rsi                    ; 0230 _ 48: 89. 75, 90
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 0234 _ 64 48: 8B. 04 25, 00000028
        mov     qword [rbp-18H], rax                    ; 023D _ 48: 89. 45, E8
        xor     eax, eax                                ; 0241 _ 31. C0
        mov     rax, rsp                                ; 0243 _ 48: 89. E0
        mov     rbx, rax                                ; 0246 _ 48: 89. C3
        mov     eax, 160000                             ; 0249 _ B8, 00027100
        cdqe                                            ; 024E _ 48: 98
        sub     rax, 1                                  ; 0250 _ 48: 83. E8, 01
        mov     qword [rbp-58H], rax                    ; 0254 _ 48: 89. 45, A8
        mov     eax, 160000                             ; 0258 _ B8, 00027100
        cdqe                                            ; 025D _ 48: 98
        mov     r10, rax                                ; 025F _ 49: 89. C2
        mov     r11d, 0                                 ; 0262 _ 41: BB, 00000000
        mov     eax, 160000                             ; 0268 _ B8, 00027100
        cdqe                                            ; 026D _ 48: 98
        mov     r8, rax                                 ; 026F _ 49: 89. C0
        mov     r9d, 0                                  ; 0272 _ 41: B9, 00000000
        mov     eax, 160000                             ; 0278 _ B8, 00027100
        cdqe                                            ; 027D _ 48: 98
        mov     edx, 16                                 ; 027F _ BA, 00000010
        sub     rdx, 1                                  ; 0284 _ 48: 83. EA, 01
        add     rax, rdx                                ; 0288 _ 48: 01. D0
        mov     ecx, 16                                 ; 028B _ B9, 00000010
        mov     edx, 0                                  ; 0290 _ BA, 00000000
        div     rcx                                     ; 0295 _ 48: F7. F1
        imul    rax, rax, 16                            ; 0298 _ 48: 6B. C0, 10
        mov     rdx, rax                                ; 029C _ 48: 89. C2
        and     rdx, 0FFFFFFFFFFFFF000H                 ; 029F _ 48: 81. E2, FFFFF000
        mov     rcx, rsp                                ; 02A6 _ 48: 89. E1
        sub     rcx, rdx                                ; 02A9 _ 48: 29. D1
        mov     rdx, rcx                                ; 02AC _ 48: 89. CA
?_010:  cmp     rsp, rdx                                ; 02AF _ 48: 39. D4
        jz      ?_011                                   ; 02B2 _ 74, 12
        sub     rsp, 4096                               ; 02B4 _ 48: 81. EC, 00001000
        or      qword [rsp+0FF8H], 00H                  ; 02BB _ 48: 83. 8C 24, 00000FF8, 00
        jmp     ?_010                                   ; 02C4 _ EB, E9
; main End of function

?_011:  ; Local function
        mov     rdx, rax                                ; 02C6 _ 48: 89. C2
        and     edx, 0FFFH                              ; 02C9 _ 81. E2, 00000FFF
        sub     rsp, rdx                                ; 02CF _ 48: 29. D4
        mov     rdx, rax                                ; 02D2 _ 48: 89. C2
        and     edx, 0FFFH                              ; 02D5 _ 81. E2, 00000FFF
        test    rdx, rdx                                ; 02DB _ 48: 85. D2
        jz      ?_012                                   ; 02DE _ 74, 10
        and     eax, 0FFFH                              ; 02E0 _ 25, 00000FFF
        sub     rax, 8                                  ; 02E5 _ 48: 83. E8, 08
        add     rax, rsp                                ; 02E9 _ 48: 01. E0
        or      qword [rax], 00H                        ; 02EC _ 48: 83. 08, 00
?_012:  mov     rax, rsp                                ; 02F0 _ 48: 89. E0
        add     rax, 0                                  ; 02F3 _ 48: 83. C0, 00
        mov     qword [rbp-50H], rax                    ; 02F7 _ 48: 89. 45, B0
        mov     dword [rbp-60H], 0                      ; 02FB _ C7. 45, A0, 00000000
        mov     eax, 14                                 ; 0302 _ B8, 0000000E
        mov     esi, eax                                ; 0307 _ 89. C6
        lea     rdi, [rel ?_024]                        ; 0309 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0310 _ B8, 00000000
        call    printf                                  ; 0315 _ E8, 00000000(PLT r)
        mov     eax, 14                                 ; 031A _ B8, 0000000E
        mov     esi, eax                                ; 031F _ 89. C6
        lea     rdi, [rel ?_025]                        ; 0321 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0328 _ B8, 00000000
        call    printf                                  ; 032D _ E8, 00000000(PLT r)
        mov     eax, 16                                 ; 0332 _ B8, 00000010
        mov     esi, eax                                ; 0337 _ 89. C6
        lea     rdi, [rel ?_026]                        ; 0339 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0340 _ B8, 00000000
        call    printf                                  ; 0345 _ E8, 00000000(PLT r)
        mov     eax, 16                                 ; 034A _ B8, 00000010
        mov     esi, eax                                ; 034F _ 89. C6
        lea     rdi, [rel ?_027]                        ; 0351 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0358 _ B8, 00000000
        call    printf                                  ; 035D _ E8, 00000000(PLT r)
        mov     eax, 160000                             ; 0362 _ B8, 00027100
        mov     esi, eax                                ; 0367 _ 89. C6
        lea     rdi, [rel ?_028]                        ; 0369 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0370 _ B8, 00000000
        call    printf                                  ; 0375 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 037A _ B8, 00000000
        mov     esi, eax                                ; 037F _ 89. C6
        lea     rdi, [rel ?_029]                        ; 0381 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0388 _ B8, 00000000
        call    printf                                  ; 038D _ E8, 00000000(PLT r)
        mov     eax, 1                                  ; 0392 _ B8, 00000001
        mov     esi, eax                                ; 0397 _ 89. C6
        lea     rdi, [rel ?_030]                        ; 0399 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 03A0 _ B8, 00000000
        call    printf                                  ; 03A5 _ E8, 00000000(PLT r)
        mov     eax, 2                                  ; 03AA _ B8, 00000002
        mov     esi, eax                                ; 03AF _ 89. C6
        lea     rdi, [rel ?_031]                        ; 03B1 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 03B8 _ B8, 00000000
        call    printf                                  ; 03BD _ E8, 00000000(PLT r)
        mov     eax, 160000                             ; 03C2 _ B8, 00027100
        cdqe                                            ; 03C7 _ 48: 98
        mov     rsi, rax                                ; 03C9 _ 48: 89. C6
        lea     rdi, [rel ?_032]                        ; 03CC _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 03D3 _ B8, 00000000
        call    printf                                  ; 03D8 _ E8, 00000000(PLT r)
        cmp     dword [rbp-64H], 5                      ; 03DD _ 83. 7D, 9C, 05
        jz      ?_013                                   ; 03E1 _ 74, 14
        mov     eax, 0                                  ; 03E3 _ B8, 00000000
        call    errMessage1                             ; 03E8 _ E8, 00000000(PLT r)
        mov     eax, 1                                  ; 03ED _ B8, 00000001
        jmp     ?_019                                   ; 03F2 _ E9, 00000263

?_013:  lea     rdi, [rel ?_033]                        ; 03F7 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 03FE _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-70H]                    ; 0403 _ 48: 8B. 45, 90
        add     rax, 8                                  ; 0407 _ 48: 83. C0, 08
        mov     rax, qword [rax]                        ; 040B _ 48: 8B. 00
        lea     rsi, [rel ?_034]                        ; 040E _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0415 _ 48: 89. C7
        call    strcmp                                  ; 0418 _ E8, 00000000(PLT r)
        test    eax, eax                                ; 041D _ 85. C0
        jnz     ?_014                                   ; 041F _ 75, 39
        mov     rax, qword [rbp-70H]                    ; 0421 _ 48: 8B. 45, 90
        add     rax, 16                                 ; 0425 _ 48: 83. C0, 10
        mov     rax, qword [rax]                        ; 0429 _ 48: 8B. 00
        lea     rsi, [rel ?_035]                        ; 042C _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0433 _ 48: 89. C7
        call    fopen                                   ; 0436 _ E8, 00000000(PLT r)
        mov     qword [rbp-48H], rax                    ; 043B _ 48: 89. 45, B8
        mov     rdx, qword [rbp-48H]                    ; 043F _ 48: 8B. 55, B8
        mov     rax, qword [rbp-50H]                    ; 0443 _ 48: 8B. 45, B0
        mov     rsi, rdx                                ; 0447 _ 48: 89. D6
        mov     rdi, rax                                ; 044A _ 48: 89. C7
        call    Fill_Container                          ; 044D _ E8, 00000000(PLT r)
        mov     dword [rbp-60H], eax                    ; 0452 _ 89. 45, A0
        jmp     ?_018                                   ; 0455 _ E9, 000000A0

?_014:  mov     rax, qword [rbp-70H]                    ; 045A _ 48: 8B. 45, 90
        add     rax, 8                                  ; 045E _ 48: 83. C0, 08
        mov     rax, qword [rax]                        ; 0462 _ 48: 8B. 00
        lea     rsi, [rel ?_036]                        ; 0465 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 046C _ 48: 89. C7
        call    strcmp                                  ; 046F _ E8, 00000000(PLT r)
        test    eax, eax                                ; 0474 _ 85. C0
        jnz     ?_017                                   ; 0476 _ 75, 6E
        mov     rax, qword [rbp-70H]                    ; 0478 _ 48: 8B. 45, 90
        add     rax, 16                                 ; 047C _ 48: 83. C0, 10
        mov     rax, qword [rax]                        ; 0480 _ 48: 8B. 00
        mov     rdi, rax                                ; 0483 _ 48: 89. C7
        call    atoi                                    ; 0486 _ E8, 00000000(PLT r)
        mov     dword [rbp-5CH], eax                    ; 048B _ 89. 45, A4
        cmp     dword [rbp-5CH], 0                      ; 048E _ 83. 7D, A4, 00
        jle     ?_015                                   ; 0492 _ 7E, 09
        cmp     dword [rbp-5CH], 10000                  ; 0494 _ 81. 7D, A4, 00002710
        jle     ?_016                                   ; 049B _ 7E, 20
?_015:  mov     eax, dword [rbp-5CH]                    ; 049D _ 8B. 45, A4
        mov     esi, eax                                ; 04A0 _ 89. C6
        lea     rdi, [rel ?_037]                        ; 04A2 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 04A9 _ B8, 00000000
        call    printf                                  ; 04AE _ E8, 00000000(PLT r)
        mov     eax, 3                                  ; 04B3 _ B8, 00000003
        jmp     ?_019                                   ; 04B8 _ E9, 0000019D

?_016:  mov     edi, 0                                  ; 04BD _ BF, 00000000
        call    time                                    ; 04C2 _ E8, 00000000(PLT r)
        mov     edi, eax                                ; 04C7 _ 89. C7
        call    srand                                   ; 04C9 _ E8, 00000000(PLT r)
        mov     edx, dword [rbp-5CH]                    ; 04CE _ 8B. 55, A4
        lea     rcx, [rbp-60H]                          ; 04D1 _ 48: 8D. 4D, A0
        mov     rax, qword [rbp-50H]                    ; 04D5 _ 48: 8B. 45, B0
        mov     rsi, rcx                                ; 04D9 _ 48: 89. CE
        mov     rdi, rax                                ; 04DC _ 48: 89. C7
        call    InRndContainer                          ; 04DF _ E8, 00000000(PLT r)
        jmp     ?_018                                   ; 04E4 _ EB, 14

?_017:  mov     eax, 0                                  ; 04E6 _ B8, 00000000
        call    errMessage2                             ; 04EB _ E8, 00000000(PLT r)
        mov     eax, 2                                  ; 04F0 _ B8, 00000002
        jmp     ?_019                                   ; 04F5 _ E9, 00000160

?_018:  mov     rax, qword [rel stdout]                 ; 04FA _ 48: 8B. 05, 00000000(rel)
        mov     rcx, rax                                ; 0501 _ 48: 89. C1
        mov     edx, 18                                 ; 0504 _ BA, 00000012
        mov     esi, 1                                  ; 0509 _ BE, 00000001
        lea     rdi, [rel ?_038]                        ; 050E _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0515 _ E8, 00000000(PLT r)
        mov     rdx, qword [rel stdout]                 ; 051A _ 48: 8B. 15, 00000000(rel)
        mov     ecx, dword [rbp-60H]                    ; 0521 _ 8B. 4D, A0
        mov     rax, qword [rbp-50H]                    ; 0524 _ 48: 8B. 45, B0
        mov     esi, ecx                                ; 0528 _ 89. CE
        mov     rdi, rax                                ; 052A _ 48: 89. C7
        call    Out_Container                           ; 052D _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-70H]                    ; 0532 _ 48: 8B. 45, 90
        add     rax, 24                                 ; 0536 _ 48: 83. C0, 18
        mov     rax, qword [rax]                        ; 053A _ 48: 8B. 00
        lea     rsi, [rel ?_039]                        ; 053D _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0544 _ 48: 89. C7
        call    fopen                                   ; 0547 _ E8, 00000000(PLT r)
        mov     qword [rbp-40H], rax                    ; 054C _ 48: 89. 45, C0
        mov     rax, qword [rbp-40H]                    ; 0550 _ 48: 8B. 45, C0
        mov     rcx, rax                                ; 0554 _ 48: 89. C1
        mov     edx, 18                                 ; 0557 _ BA, 00000012
        mov     esi, 1                                  ; 055C _ BE, 00000001
        lea     rdi, [rel ?_038]                        ; 0561 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0568 _ E8, 00000000(PLT r)
        mov     ecx, dword [rbp-60H]                    ; 056D _ 8B. 4D, A0
        mov     rdx, qword [rbp-40H]                    ; 0570 _ 48: 8B. 55, C0
        mov     rax, qword [rbp-50H]                    ; 0574 _ 48: 8B. 45, B0
        mov     esi, ecx                                ; 0578 _ 89. CE
        mov     rdi, rax                                ; 057A _ 48: 89. C7
        call    Out_Container                           ; 057D _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-40H]                    ; 0582 _ 48: 8B. 45, C0
        mov     rdi, rax                                ; 0586 _ 48: 89. C7
        call    fclose                                  ; 0589 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-70H]                    ; 058E _ 48: 8B. 45, 90
        add     rax, 32                                 ; 0592 _ 48: 83. C0, 20
        mov     rax, qword [rax]                        ; 0596 _ 48: 8B. 00
        lea     rsi, [rel ?_039]                        ; 0599 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 05A0 _ 48: 89. C7
        call    fopen                                   ; 05A3 _ E8, 00000000(PLT r)
        mov     qword [rbp-38H], rax                    ; 05A8 _ 48: 89. 45, C8
        call    clock                                   ; 05AC _ E8, 00000000(PLT r)
        mov     qword [rbp-30H], rax                    ; 05B1 _ 48: 89. 45, D0
        call    clock                                   ; 05B5 _ E8, 00000000(PLT r)
        mov     qword [rbp-28H], rax                    ; 05BA _ 48: 89. 45, D8
        mov     rax, qword [rbp-28H]                    ; 05BE _ 48: 8B. 45, D8
        sub     rax, qword [rbp-30H]                    ; 05C2 _ 48: 2B. 45, D0
        cvtsi2sd xmm0, rax                              ; 05C6 _ F2 48: 0F 2A. C0
        movsd   xmm1, qword [rel ?_042]                 ; 05CB _ F2: 0F 10. 0D, 00000000(rel)
        divsd   xmm0, xmm1                              ; 05D3 _ F2: 0F 5E. C1
        movsd   qword [rbp-20H], xmm0                   ; 05D7 _ F2: 0F 11. 45, E0
        mov     rdx, qword [rbp-20H]                    ; 05DC _ 48: 8B. 55, E0
        mov     rax, qword [rbp-38H]                    ; 05E0 _ 48: 8B. 45, C8
        movq    xmm0, rdx                               ; 05E4 _ 66 48: 0F 6E. C2
        lea     rsi, [rel ?_040]                        ; 05E9 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 05F0 _ 48: 89. C7
        mov     eax, 1                                  ; 05F3 _ B8, 00000001
        call    fprintf                                 ; 05F8 _ E8, 00000000(PLT r)
        mov     edx, dword [rbp-60H]                    ; 05FD _ 8B. 55, A0
        mov     rax, qword [rbp-50H]                    ; 0600 _ 48: 8B. 45, B0
        mov     esi, edx                                ; 0604 _ 89. D6
        mov     rdi, rax                                ; 0606 _ 48: 89. C7
        call    StraightSort                            ; 0609 _ E8, 00000000(PLT r)
        mov     ecx, dword [rbp-60H]                    ; 060E _ 8B. 4D, A0
        mov     rdx, qword [rbp-38H]                    ; 0611 _ 48: 8B. 55, C8
        mov     rax, qword [rbp-50H]                    ; 0615 _ 48: 8B. 45, B0
        mov     esi, ecx                                ; 0619 _ 89. CE
        mov     rdi, rax                                ; 061B _ 48: 89. C7
        call    Out_Container                           ; 061E _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-38H]                    ; 0623 _ 48: 8B. 45, C8
        mov     rdi, rax                                ; 0627 _ 48: 89. C7
        call    fclose                                  ; 062A _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-20H]                    ; 062F _ 48: 8B. 45, E0
        movq    xmm0, rax                               ; 0633 _ 66 48: 0F 6E. C0
        lea     rdi, [rel ?_040]                        ; 0638 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 063F _ B8, 00000001
        call    printf                                  ; 0644 _ E8, 00000000(PLT r)
        lea     rdi, [rel ?_041]                        ; 0649 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0650 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 0655 _ B8, 00000000
?_019:  mov     rsp, rbx                                ; 065A _ 48: 89. DC
        mov     rbx, qword [rbp-18H]                    ; 065D _ 48: 8B. 5D, E8
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        xor     rbx, qword [fs:abs 28H]                 ; 0661 _ 64 48: 33. 1C 25, 00000028
        jz      ?_020                                   ; 066A _ 74, 05
        call    __stack_chk_fail                        ; 066C _ E8, 00000000(PLT r)
?_020:  mov     rbx, qword [rbp-8H]                     ; 0671 _ 48: 8B. 5D, F8
        leave                                           ; 0675 _ C9
        ret                                             ; 0676 _ C3


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss


SECTION .rodata align=8 noexecute                       ; section number 4, const

carSize:                                                ; dword
        dd 0000000EH                                    ; 0000 _ 14 

busSize: dd 0000000EH                                   ; 0004 _ 14 

truckSize:                                              ; dword
        dd 00000010H                                    ; 0008 _ 16 

vehicleSize:                                            ; dword
        dd 00000010H                                    ; 000C _ 16 

maxSize: dd 00027100H                                   ; 0010 _ 160000 

CAR:    dd 00000000H                                    ; 0014 _ 0 

BUS:    dd 00000001H                                    ; 0018 _ 1 

TRUCK:  dd 00000002H                                    ; 001C _ 2 

?_021:                                                  ; byte
        db 25H, 66H, 0AH, 00H, 00H, 00H, 00H, 00H       ; 0020 _ %f......

?_022:                                                  ; byte
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 0028 _ incorrec
        db 74H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH       ; 0030 _ t comman
        db 64H, 20H, 6CH, 69H, 6EH, 65H, 21H, 0AH       ; 0038 _ d line!.
        db 20H, 20H, 57H, 61H, 69H, 74H, 65H, 64H       ; 0040 _   Waited
        db 3AH, 0AH, 20H, 20H, 20H, 20H, 20H, 63H       ; 0048 _ :.     c
        db 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H, 2DH       ; 0050 _ ommand -
        db 66H, 20H, 69H, 6EH, 66H, 69H, 6CH, 65H       ; 0058 _ f infile
        db 20H, 6FH, 75H, 74H, 66H, 69H, 6CH, 65H       ; 0060 _  outfile
        db 30H, 31H, 20H, 6FH, 75H, 74H, 66H, 69H       ; 0068 _ 01 outfi
        db 6CH, 65H, 30H, 32H, 0AH, 20H, 20H, 4FH       ; 0070 _ le02.  O
        db 72H, 3AH, 0AH, 20H, 20H, 20H, 20H, 20H       ; 0078 _ r:.     
        db 63H, 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H       ; 0080 _ command 
        db 2DH, 6EH, 20H, 6EH, 75H, 6DH, 62H, 65H       ; 0088 _ -n numbe
        db 72H, 20H, 6FH, 75H, 74H, 66H, 69H, 6CH       ; 0090 _ r outfil
        db 65H, 30H, 31H, 20H, 6FH, 75H, 74H, 66H       ; 0098 _ e01 outf
        db 69H, 6CH, 65H, 30H, 32H, 00H, 00H, 00H       ; 00A0 _ ile02...

?_023:                                                  ; byte
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 00A8 _ incorrec
        db 74H, 20H, 71H, 75H, 61H, 6CH, 69H, 66H       ; 00B0 _ t qualif
        db 69H, 65H, 72H, 20H, 76H, 61H, 6CH, 75H       ; 00B8 _ ier valu
        db 65H, 21H, 0AH, 20H, 20H, 57H, 61H, 69H       ; 00C0 _ e!.  Wai
        db 74H, 65H, 64H, 3AH, 0AH, 20H, 20H, 20H       ; 00C8 _ ted:.   
        db 20H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH       ; 00D0 _   comman
        db 64H, 20H, 2DH, 66H, 20H, 69H, 6EH, 66H       ; 00D8 _ d -f inf
        db 69H, 6CH, 65H, 20H, 6FH, 75H, 74H, 66H       ; 00E0 _ ile outf
        db 69H, 6CH, 65H, 30H, 31H, 20H, 6FH, 75H       ; 00E8 _ ile01 ou
        db 74H, 66H, 69H, 6CH, 65H, 30H, 32H, 0AH       ; 00F0 _ tfile02.
        db 20H, 20H, 4FH, 72H, 3AH, 0AH, 20H, 20H       ; 00F8 _   Or:.  
        db 20H, 20H, 20H, 63H, 6FH, 6DH, 6DH, 61H       ; 0100 _    comma
        db 6EH, 64H, 20H, 2DH, 6EH, 20H, 6EH, 75H       ; 0108 _ nd -n nu
        db 6DH, 62H, 65H, 72H, 20H, 6FH, 75H, 74H       ; 0110 _ mber out
        db 66H, 69H, 6CH, 65H, 30H, 31H, 20H, 6FH       ; 0118 _ file01 o
        db 75H, 74H, 66H, 69H, 6CH, 65H, 30H, 32H       ; 0120 _ utfile02
        db 00H                                          ; 0128 _ .

?_024:                                                  ; byte
        db 63H, 61H, 72H, 53H, 69H, 7AH, 65H, 20H       ; 0129 _ carSize 
        db 3DH, 20H, 25H, 64H, 0AH, 00H                 ; 0131 _ = %d..

?_025:                                                  ; byte
        db 62H, 75H, 73H, 53H, 69H, 7AH, 65H, 20H       ; 0137 _ busSize 
        db 3DH, 20H, 25H, 64H, 0AH, 00H                 ; 013F _ = %d..

?_026:                                                  ; byte
        db 74H, 72H, 75H, 63H, 6BH, 53H, 69H, 7AH       ; 0145 _ truckSiz
        db 65H, 20H, 3DH, 20H, 25H, 64H, 0AH, 00H       ; 014D _ e = %d..

?_027:                                                  ; byte
        db 76H, 65H, 68H, 69H, 63H, 6CH, 65H, 53H       ; 0155 _ vehicleS
        db 69H, 7AH, 65H, 20H, 3DH, 20H, 25H, 64H       ; 015D _ ize = %d
        db 0AH, 00H                                     ; 0165 _ ..

?_028:                                                  ; byte
        db 6DH, 61H, 78H, 53H, 69H, 7AH, 65H, 20H       ; 0167 _ maxSize 
        db 3DH, 20H, 25H, 64H, 0AH, 00H                 ; 016F _ = %d..

?_029:                                                  ; byte
        db 43H, 41H, 52H, 20H, 3DH, 20H, 25H, 64H       ; 0175 _ CAR = %d
        db 0AH, 00H                                     ; 017D _ ..

?_030:                                                  ; byte
        db 42H, 55H, 53H, 20H, 3DH, 20H, 25H, 64H       ; 017F _ BUS = %d
        db 0AH, 00H                                     ; 0187 _ ..

?_031:                                                  ; byte
        db 54H, 52H, 55H, 43H, 4BH, 20H, 3DH, 20H       ; 0189 _ TRUCK = 
        db 25H, 64H, 0AH, 00H                           ; 0191 _ %d..

?_032:                                                  ; byte
        db 53H, 69H, 7AH, 65H, 20H, 6FH, 66H, 20H       ; 0195 _ Size of 
        db 63H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H       ; 019D _ containe
        db 72H, 20H, 3DH, 20H, 25H, 6CH, 75H, 0AH       ; 01A5 _ r = %lu.
        db 00H                                          ; 01AD _ .

?_033:                                                  ; byte
        db 53H, 74H, 61H, 72H, 74H, 00H                 ; 01AE _ Start.

?_034:                                                  ; byte
        db 2DH, 66H, 00H                                ; 01B4 _ -f.

?_035:                                                  ; byte
        db 72H, 00H                                     ; 01B7 _ r.

?_036:                                                  ; byte
        db 2DH, 6EH, 00H, 00H, 00H, 00H, 00H            ; 01B9 _ -n.....

?_037:                                                  ; byte
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 01C0 _ incorrec
        db 74H, 20H, 6EH, 75H, 6DH, 65H, 72H, 20H       ; 01C8 _ t numer 
        db 6FH, 66H, 20H, 76H, 65H, 68H, 69H, 63H       ; 01D0 _ of vehic
        db 6CH, 65H, 73H, 20H, 3DH, 20H, 25H, 64H       ; 01D8 _ les = %d
        db 2EH, 20H, 53H, 65H, 74H, 20H, 30H, 20H       ; 01E0 _ . Set 0 
        db 3CH, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H       ; 01E8 _ < number
        db 20H, 3CH, 3DH, 20H, 31H, 30H, 30H, 30H       ; 01F0 _  <= 1000
        db 30H, 0AH, 00H                                ; 01F8 _ 0..

?_038:                                                  ; byte
        db 46H, 69H, 6CH, 6CH, 65H, 64H, 20H, 63H       ; 01FB _ Filled c
        db 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H, 72H       ; 0203 _ ontainer
        db 3AH, 0AH, 00H                                ; 020B _ :..

?_039:                                                  ; byte
        db 77H, 00H                                     ; 020E _ w.

?_040:                                                  ; byte
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H       ; 0210 _ Containe
        db 72H, 20H, 66H, 69H, 6CH, 74H, 65H, 72H       ; 0218 _ r filter
        db 65H, 64H, 2EH, 20H, 46H, 69H, 6CH, 74H       ; 0220 _ ed. Filt
        db 72H, 61H, 74H, 69H, 6FH, 6EH, 20H, 74H       ; 0228 _ ration t
        db 69H, 6DH, 65H, 20H, 3DH, 20H, 25H, 67H       ; 0230 _ ime = %g
        db 0AH, 00H                                     ; 0238 _ ..

?_041:                                                  ; byte
        db 53H, 74H, 6FH, 70H, 00H, 00H                 ; 023A _ Stop..

?_042:  dq 412E848200000000H                            ; 0240 _ 1000001.0 


SECTION .note.gnu.property align=8 noexecute            ; section number 5, const

        db 04H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 0000 _ ........
        db 05H, 00H, 00H, 00H, 47H, 4EH, 55H, 00H       ; 0008 _ ....GNU.
        db 02H, 00H, 00H, 0C0H, 04H, 00H, 00H, 00H      ; 0010 _ ........
        db 03H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........


