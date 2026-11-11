; Castle Knowledge 2.6 - CODE segment 1 (1234 bytes)
; Disassembled & annotated. Globals g_XXXX = A5-XXXX; STR_XXXX = STRS literal offset.

  00000  00000000              ori.b    #0,d0                              
  00004  00000000              ori.b    #0,d0                              
  00008  000000f2              ori.b    #$f2,d0                            
  0000c  00000000              ori.b    #0,d0                              

;----------------------------------------------------------------------
; f1_0010   [jump table #0]
;----------------------------------------------------------------------
f1_0010:
  00010  42780a4a              clr.w    ($a4a).w                           
  00014  9dce                  suba.l   a6,a6                              
  00016  4eba0268              jsr      f1_0280                            
  0001a  4eba00d4              jsr      f1_00f0                            
  0001e  4eba00f4              jsr      f1_0114                            
  00022  4eba0416              jsr      f1_043a                            
  00026  4eba0028              jsr      f1_0050                            
  0002a  4267                  clr.w    -(a7)                              
  0002c  48790000ffff          pea      ($0000ffff).l                      
  00032  486f0004              pea      $4(a7)                             
  00036  4857                  pea      (a7)                               
  00038  48780001              pea      ($1).w                             
  0003c  223affca              move.l   L0008(pc),d1                       
  00040  4eb51800              jsr      $0(a5,d1.l)                        
  00044  2a780904              movea.l  ($904).w,a5                        
  00048  206d006c              movea.l  $6c(a5),a0                         
  0004c  4e90                  jsr      (a0)                               
  0004e  a9f4                  _ExitToShell                                ; $a9f4

;----------------------------------------------------------------------
; f1_0050
;----------------------------------------------------------------------
f1_0050:
  00050  223affba              move.l   L000c(pc),d1                       
  00054  6704                  beq.s    L005a                              
  00056  4eb51800              jsr      $0(a5,d1.l)                        
L005a:
  0005a  4e75                  rts                                         
  0005c  588f                  addq.l   #4,a7                              
  0005e  48e7fff8              movem.l  d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4,-(a7)
  00062  3e2f0038              move.w   $38(a7),d7                         
  00066  50f80a5e              st       ($a5e).w                           
  0006a  598f                  subq.l   #4,a7                              
  0006c  2f3c434f4445          move.l   #$434f4445,-(a7)                   
  00072  3f07                  move.w   d7,-(a7)                           
  00074  a9a0                  _GetResource                                ; $a9a0
  00076  201f                  move.l   (a7)+,d0                           
  00078  674a                  beq.s    L00c4                              
  0007a  2040                  movea.l  d0,a0                              
  0007c  a069                  _HGetState                                  ; $a069
  0007e  08000007              btst     #7,d0                              
  00082  6604                  bne.s    L0088                              
  00084  a064                  _MoveHHi                                    ; $a064
  00086  a029                  _HLock                                      ; $a029
L0088:
  00088  2450                  movea.l  (a0),a2                            
  0008a  08920007              bclr     #7,(a2)                            
  0008e  6716                  beq.s    L00a6                              
  00090  598f                  subq.l   #4,a7                              
  00092  2f3c4352454c          move.l   #$4352454c,-(a7)                   
  00098  3f07                  move.w   d7,-(a7)                           
  0009a  a9a0                  _GetResource                                ; $a9a0
  0009c  201f                  move.l   (a7)+,d0                           
  0009e  6724                  beq.s    L00c4                              
  000a0  2040                  movea.l  d0,a0                              
  000a2  4eba00ec              jsr      f1_0190                            
L00a6:
  000a6  4eba013a              jsr      f1_01e2                            
  000aa  226f0034              movea.l  $34(a7),a1                         
  000ae  5d89                  subq.l   #6,a1                              
  000b0  2f490036              move.l   a1,$36(a7)                         
  000b4  4cdf1fff              movem.l  (a7)+,d0/d1/d2/d3/d4/d5/d6/d7/a0/a1/a2/a3/a4
  000b8  548f                  addq.l   #2,a7                              
  000ba  4a38012d              tst.b    ($12d).w                           
  000be  6702                  beq.s    L00c2                              
  000c0  a9ff                  _Debugger                                   ; $a9ff
L00c2:
  000c2  4e75                  rts                                         
L00c4:
  000c4  700f                  moveq    #15,d0                             
  000c6  a9c9                  _SysError                                   ; $a9c9
  000c8  588f                  addq.l   #4,a7                              
  000ca  206f0004              movea.l  $4(a7),a0                          
  000ce  0c504ef9              cmpi.w   #$4ef9,(a0)                        
  000d2  6618                  bne.s    L00ec                              
  000d4  598f                  subq.l   #4,a7                              
  000d6  2f3c434f4445          move.l   #$434f4445,-(a7)                   
  000dc  3f20                  move.w   -(a0),-(a7)                        
  000de  a9a0                  _GetResource                                ; $a9a0
  000e0  201f                  move.l   (a7)+,d0                           
  000e2  67e0                  beq.s    L00c4                              
  000e4  2040                  movea.l  d0,a0                              
  000e6  a02a                  _HUnlock                                    ; $a02a
  000e8  4eba00ca              jsr      f1_01b4                            
L00ec:
  000ec  2e9f                  move.l   (a7)+,(a7)                         
  000ee  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_00f0
;----------------------------------------------------------------------
f1_00f0:
  000f0  50f80a5e              st       ($a5e).w                           
  000f4  598f                  subq.l   #4,a7                              
  000f6  2f3c53545253          move.l   #$53545253,-(a7)                   
  000fc  4267                  clr.w    -(a7)                              
  000fe  a9a0                  _GetResource                                ; $a9a0
  00100  201f                  move.l   (a7)+,d0                           
  00102  670e                  beq.s    L0112                              
  00104  2040                  movea.l  d0,a0                              
  00106  2010                  move.l   (a0),d0                            
  00108  c0bafef6              and.l    L0000(pc),d0                       
  0010c  47fafef6              lea      L0004(pc),a3                       
  00110  2680                  move.l   d0,(a3)                            
L0112:
  00112  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_0114
;----------------------------------------------------------------------
f1_0114:
  00114  50f80a5e              st       ($a5e).w                           
  00118  598f                  subq.l   #4,a7                              
  0011a  2f3c5a45524f          move.l   #$5a45524f,-(a7)                   
  00120  4267                  clr.w    -(a7)                              
  00122  a9a0                  _GetResource                                ; $a9a0
  00124  2457                  movea.l  (a7),a2                            
  00126  598f                  subq.l   #4,a7                              
  00128  2f3c44415441          move.l   #$44415441,-(a7)                   
  0012e  4267                  clr.w    -(a7)                              
  00130  a9a0                  _GetResource                                ; $a9a0
  00132  2057                  movea.l  (a7),a0                            
  00134  2050                  movea.l  (a0),a0                            
  00136  22780908              movea.l  ($908).w,a1                        
  0013a  2452                  movea.l  (a2),a2                            
  0013c  600e                  bra.s    L014c                              
L013e:
  0013e  32d8                  move.w   (a0)+,(a1)+                        
  00140  660a                  bne.s    L014c                              
  00142  321a                  move.w   (a2)+,d1                           
  00144  6002                  bra.s    L0148                              
L0146:
  00146  4219                  clr.b    (a1)+                              
L0148:
  00148  51c9fffc              dbf      d1,L0146                           
L014c:
  0014c  bbc9                  cmpa.l   a1,a5                              
  0014e  66ee                  bne.s    L013e                              
  00150  a9a3                  _ReleaseResource                            ; $a9a3
  00152  a9a3                  _ReleaseResource                            ; $a9a3
  00154  598f                  subq.l   #4,a7                              
  00156  2f3c4452454c          move.l   #$4452454c,-(a7)                   
  0015c  4267                  clr.w    -(a7)                              
  0015e  a9a0                  _GetResource                                ; $a9a0
  00160  205f                  movea.l  (a7)+,a0                           
  00162  a025                  _GetHandleSize                              ; $a025
  00164  2f08                  move.l   a0,-(a7)                           
  00166  2050                  movea.l  (a0),a0                            
  00168  601e                  bra.s    L0188                              
L016a:
  0016a  240d                  move.l   a5,d2                              
  0016c  3218                  move.w   (a0)+,d1                           
  0016e  48c1                  ext.l    d1                                 
  00170  6b08                  bmi.s    L017a                              
  00172  4841                  swap     d1                                 
  00174  3218                  move.w   (a0)+,d1                           
  00176  4481                  neg.l    d1                                 
  00178  5580                  subq.l   #2,d0                              
L017a:
  0017a  08810000              bclr     #0,d1                              
  0017e  6704                  beq.s    L0184                              
  00180  243afe82              move.l   L0004(pc),d2                       
L0184:
  00184  d5b51800              add.l    d2,$0(a5,d1.l)                     
L0188:
  00188  5580                  subq.l   #2,d0                              
  0018a  6cde                  bge.s    L016a                              
  0018c  a9a3                  _ReleaseResource                            ; $a9a3
  0018e  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_0190
;----------------------------------------------------------------------
f1_0190:
  00190  a025                  _GetHandleSize                              ; $a025
  00192  2f08                  move.l   a0,-(a7)                           
  00194  2050                  movea.l  (a0),a0                            
  00196  e240                  asr.w    #1,d0                              
  00198  6012                  bra.s    L01ac                              
L019a:
  0019a  240d                  move.l   a5,d2                              
  0019c  3218                  move.w   (a0)+,d1                           
  0019e  08810000              bclr     #0,d1                              
  001a2  6704                  beq.s    L01a8                              
  001a4  243afe5e              move.l   L0004(pc),d2                       
L01a8:
  001a8  d5b21000              add.l    d2,$0(a2,d1.w)                     
L01ac:
  001ac  51c8ffec              dbf      d0,L019a                           
  001b0  a9a3                  _ReleaseResource                            ; $a9a3
  001b2  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_01b4
;----------------------------------------------------------------------
f1_01b4:
  001b4  2050                  movea.l  (a0),a0                            
  001b6  7200                  moveq    #0,d1                              
  001b8  3218                  move.w   (a0)+,d1                           
  001ba  3018                  move.w   (a0)+,d0                           
  001bc  02407fff              andi.w   #$7fff,d0                          
  001c0  e789                  lsl.l    #3,d1                              
  001c2  43f51820              lea      $20(a5,d1.l),a1                    
  001c6  3411                  move.w   (a1),d2                            
  001c8  6012                  bra.s    L01dc                              
L01ca:
  001ca  22290004              move.l   $4(a1),d1                          
  001ce  9288                  sub.l    a0,d1                              
  001d0  32c1                  move.w   d1,(a1)+                           
  001d2  32fc3f3c              move.w   #$3f3c,(a1)+                       
  001d6  32c2                  move.w   d2,(a1)+                           
  001d8  32fca9f0              move.w   #$a9f0,(a1)+                       
L01dc:
  001dc  51c8ffec              dbf      d0,L01ca                           
  001e0  6038                  bra.s    L021a                              

;----------------------------------------------------------------------
; f1_01e2
;----------------------------------------------------------------------
f1_01e2:
  001e2  200a                  move.l   a2,d0                              
  001e4  c0bafe1a              and.l    L0000(pc),d0                       
  001e8  2040                  movea.l  d0,a0                              
  001ea  7200                  moveq    #0,d1                              
  001ec  3218                  move.w   (a0)+,d1                           
  001ee  3018                  move.w   (a0)+,d0                           
  001f0  02407fff              andi.w   #$7fff,d0                          
  001f4  e789                  lsl.l    #3,d1                              
  001f6  43f51820              lea      $20(a5,d1.l),a1                    
  001fa  0c694ef90002          cmpi.w   #$4ef9,$2(a1)                      
  00200  6718                  beq.s    L021a                              
  00202  34290004              move.w   $4(a1),d2                          
  00206  600e                  bra.s    L0216                              
L0208:
  00208  3211                  move.w   (a1),d1                            
  0020a  48701000              pea      $0(a0,d1.w)                        
  0020e  32c2                  move.w   d2,(a1)+                           
  00210  32fc4ef9              move.w   #$4ef9,(a1)+                       
  00214  22df                  move.l   (a7)+,(a1)+                        
L0216:
  00216  51c8fff0              dbf      d0,L0208                           
L021a:
  0021a  203a000a              move.l   L0226(pc),d0                       
  0021e  2040                  movea.l  d0,a0                              
  00220  6602                  bne.s    L0224                              
  00222  6106                  bsr.s    f1_022a                            
L0224:
  00224  4ed0                  jmp      (a0)                               
  00226  00000000              ori.b    #0,d0                              

;----------------------------------------------------------------------
; f1_022a
;----------------------------------------------------------------------
f1_022a:
  0022a  303ca0bd              move.w   #$a0bd,d0                          
  0022e  a346                  _GetTrapAddress.clear                       ; $a346
  00230  2208                  move.l   a0,d1                              
  00232  303ca89f              move.w   #$a89f,d0                          
  00236  a746                  _GetTrapAddress.sysclear                    ; $a746
  00238  b288                  cmp.l    a0,d1                              
  0023a  6706                  beq.s    L0242                              
  0023c  41fa002c              lea      L026a(pc),a0                       
  00240  6020                  bra.s    L0262                              
L0242:
  00242  0c380004012f          cmpi.b   #4,($12f).w                        
  00248  6506                  bcs.s    L0250                              
  0024a  41fa0022              lea      L026e(pc),a0                       
  0024e  6012                  bra.s    L0262                              
L0250:
  00250  0c380002012f          cmpi.b   #2,($12f).w                        
  00256  6506                  bcs.s    L025e                              
  00258  41fa0018              lea      L0272(pc),a0                       
  0025c  6004                  bra.s    L0262                              
L025e:
  0025e  41fa001e              lea      L027e(pc),a0                       
L0262:
  00262  43faffc2              lea      L0226(pc),a1                       
  00266  2288                  move.l   a0,(a1)                            
  00268  4e75                  rts                                         
  0026a  a0bd                  _trap    $a0bd                              
  0026c  4e75                  rts                                         
  0026e  f4f8                  dc.w     $f4f8                              
  00270  4e75                  rts                                         
  00272  4e7a0002              movec                                       
  00276  08c00003              bset     #3,d0                              
  0027a  4e7b0002              movec                                       
  0027e  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_0280
;----------------------------------------------------------------------
f1_0280:
  00280  303ca055              move.w   #$a055,d0                          
  00284  a346                  _GetTrapAddress.clear                       ; $a346
  00286  2208                  move.l   a0,d1                              
  00288  303ca89f              move.w   #$a89f,d0                          
  0028c  a746                  _GetTrapAddress.sysclear                    ; $a746
  0028e  b288                  cmp.l    a0,d1                              
  00290  6706                  beq.s    L0298                              
  00292  70ff                  moveq    #-1,d0                             
  00294  a055                  _StripAddress                               ; $a055
  00296  6004                  bra.s    L029c                              
L0298:
  00298  2038031a              move.l   ($31a).w,d0                        
L029c:
  0029c  41fafd62              lea      L0000(pc),a0                       
  002a0  2080                  move.l   d0,(a0)                            
  002a2  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_02a4   [jump table #1]
;----------------------------------------------------------------------
f1_02a4:
  002a4  205f                  movea.l  (a7)+,a0                           
  002a6  3218                  move.w   (a0)+,d1                           
L02a8:
  002a8  3418                  move.w   (a0)+,d2                           
  002aa  b058                  cmp.w    (a0)+,d0                           
  002ac  57c9fffa              dbeq     d1,L02a8                           
  002b0  4a42                  tst.w    d2                                 
L02b2:
  002b2  67fe                  beq.s    L02b2                              
  002b4  4ef020fc              jmp      -$4(a0,d2.w)                       

;----------------------------------------------------------------------
; f1_02b8   [jump table #2]
;----------------------------------------------------------------------
f1_02b8:
  002b8  205f                  movea.l  (a7)+,a0                           
  002ba  3218                  move.w   (a0)+,d1                           
L02bc:
  002bc  3418                  move.w   (a0)+,d2                           
  002be  b098                  cmp.l    (a0)+,d0                           
  002c0  57c9fffa              dbeq     d1,L02bc                           
  002c4  4a42                  tst.w    d2                                 
L02c6:
  002c6  67fe                  beq.s    L02c6                              
  002c8  4ef020fa              jmp      -$6(a0,d2.w)                       

;----------------------------------------------------------------------
; f1_02cc   [jump table #3]
;----------------------------------------------------------------------
f1_02cc:
  002cc  205f                  movea.l  (a7)+,a0                           
  002ce  3218                  move.w   (a0)+,d1                           
  002d0  3418                  move.w   (a0)+,d2                           
  002d2  b042                  cmp.w    d2,d0                              
  002d4  6e0a                  bgt.s    L02e0                              
  002d6  9041                  sub.w    d1,d0                              
  002d8  6d06                  blt.s    L02e0                              
  002da  d040                  add.w    d0,d0                              
  002dc  41f00002              lea      $2(a0,d0.w),a0                     
L02e0:
  002e0  3010                  move.w   (a0),d0                            
L02e2:
  002e2  67fe                  beq.s    L02e2                              
  002e4  4ef00000              jmp      $0(a0,d0.w)                        

;----------------------------------------------------------------------
; f1_02e8   [jump table #4]
;----------------------------------------------------------------------
f1_02e8:
  002e8  202f0004              move.l   $4(a7),d0                          
  002ec  2f410004              move.l   d1,$4(a7)                          
  002f0  222f0008              move.l   $8(a7),d1                          
  002f4  2f5f0004              move.l   (a7)+,$4(a7)                       
  002f8  48e73c00              movem.l  d2/d3/d4/d5,-(a7)                  
  002fc  2400                  move.l   d0,d2                              
  002fe  2601                  move.l   d1,d3                              
  00300  4842                  swap     d2                                 
  00302  c4c3                  mulu.w   d3,d2                              
  00304  2800                  move.l   d0,d4                              
  00306  2a01                  move.l   d1,d5                              
  00308  4845                  swap     d5                                 
  0030a  c8c5                  mulu.w   d5,d4                              
  0030c  d444                  add.w    d4,d2                              
  0030e  4842                  swap     d2                                 
  00310  4242                  clr.w    d2                                 
  00312  c0c1                  mulu.w   d1,d0                              
  00314  d082                  add.l    d2,d0                              
  00316  4cdf003c              movem.l  (a7)+,d2/d3/d4/d5                  
  0031a  221f                  move.l   (a7)+,d1                           
  0031c  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_031e   [jump table #5]
;----------------------------------------------------------------------
f1_031e:
  0031e  202f0004              move.l   $4(a7),d0                          
  00322  2f410004              move.l   d1,$4(a7)                          
  00326  222f0008              move.l   $8(a7),d1                          
  0032a  2f5f0004              move.l   (a7)+,$4(a7)                       
  0032e  48e73100              movem.l  d2/d3/d7,-(a7)                     
  00332  4eba009c              jsr      f1_03d0                            
  00336  4cdf008c              movem.l  (a7)+,d2/d3/d7                     
  0033a  221f                  move.l   (a7)+,d1                           
  0033c  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_033e   [jump table #6]
;----------------------------------------------------------------------
f1_033e:
  0033e  202f0004              move.l   $4(a7),d0                          
  00342  2f410004              move.l   d1,$4(a7)                          
  00346  222f0008              move.l   $8(a7),d1                          
  0034a  2f5f0004              move.l   (a7)+,$4(a7)                       
  0034e  48e73100              movem.l  d2/d3/d7,-(a7)                     
  00352  4eba007c              jsr      f1_03d0                            
  00356  2001                  move.l   d1,d0                              
  00358  4cdf008c              movem.l  (a7)+,d2/d3/d7                     
  0035c  221f                  move.l   (a7)+,d1                           
  0035e  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_0360   [jump table #7]
;----------------------------------------------------------------------
f1_0360:
  00360  202f0004              move.l   $4(a7),d0                          
  00364  2f410004              move.l   d1,$4(a7)                          
  00368  222f0008              move.l   $8(a7),d1                          
  0036c  2f5f0004              move.l   (a7)+,$4(a7)                       
  00370  48e73100              movem.l  d2/d3/d7,-(a7)                     
  00374  4eba002c              jsr      f1_03a2                            
  00378  4cdf008c              movem.l  (a7)+,d2/d3/d7                     
  0037c  221f                  move.l   (a7)+,d1                           
  0037e  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_0380   [jump table #8]
;----------------------------------------------------------------------
f1_0380:
  00380  202f0004              move.l   $4(a7),d0                          
  00384  2f410004              move.l   d1,$4(a7)                          
  00388  222f0008              move.l   $8(a7),d1                          
  0038c  2f5f0004              move.l   (a7)+,$4(a7)                       
  00390  48e73100              movem.l  d2/d3/d7,-(a7)                     
  00394  4eba000c              jsr      f1_03a2                            
  00398  2001                  move.l   d1,d0                              
  0039a  4cdf008c              movem.l  (a7)+,d2/d3/d7                     
  0039e  221f                  move.l   (a7)+,d1                           
  003a0  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_03a2
;----------------------------------------------------------------------
f1_03a2:
  003a2  4a80                  tst.l    d0                                 
  003a4  6a1c                  bpl.s    L03c2                              
  003a6  4a81                  tst.l    d1                                 
  003a8  6a0c                  bpl.s    L03b6                              
  003aa  4480                  neg.l    d0                                 
  003ac  4481                  neg.l    d1                                 
  003ae  4eba0020              jsr      f1_03d0                            
  003b2  4481                  neg.l    d1                                 
  003b4  4e75                  rts                                         
L03b6:
  003b6  4480                  neg.l    d0                                 
  003b8  4eba0016              jsr      f1_03d0                            
  003bc  4480                  neg.l    d0                                 
  003be  4481                  neg.l    d1                                 
  003c0  4e75                  rts                                         
L03c2:
  003c2  4a81                  tst.l    d1                                 
  003c4  6a0a                  bpl.s    L03d0                              
  003c6  4481                  neg.l    d1                                 
  003c8  4eba0006              jsr      f1_03d0                            
  003cc  4480                  neg.l    d0                                 
  003ce  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_03d0
;----------------------------------------------------------------------
f1_03d0:
  003d0  2e3c0000ffff          move.l   #$ffff,d7                          
  003d6  b280                  cmp.l    d0,d1                              
  003d8  6306                  bls.s    L03e0                              
  003da  2200                  move.l   d0,d1                              
  003dc  7000                  moveq    #0,d0                              
  003de  4e75                  rts                                         
L03e0:
  003e0  b087                  cmp.l    d7,d0                              
  003e2  620c                  bhi.s    L03f0                              
  003e4  80c1                  divu.w   d1,d0                              
  003e6  4840                  swap     d0                                 
  003e8  3200                  move.w   d0,d1                              
  003ea  4240                  clr.w    d0                                 
  003ec  4840                  swap     d0                                 
  003ee  4e75                  rts                                         
L03f0:
  003f0  b287                  cmp.l    d7,d1                              
  003f2  621a                  bhi.s    L040e                              
  003f4  2e00                  move.l   d0,d7                              
  003f6  4240                  clr.w    d0                                 
  003f8  4840                  swap     d0                                 
  003fa  80c1                  divu.w   d1,d0                              
  003fc  4840                  swap     d0                                 
  003fe  4847                  swap     d7                                 
  00400  3e00                  move.w   d0,d7                              
  00402  4847                  swap     d7                                 
  00404  8ec1                  divu.w   d1,d7                              
  00406  3007                  move.w   d7,d0                              
  00408  4847                  swap     d7                                 
  0040a  3207                  move.w   d7,d1                              
  0040c  4e75                  rts                                         
L040e:
  0040e  2400                  move.l   d0,d2                              
  00410  2601                  move.l   d1,d3                              
L0412:
  00412  e288                  lsr.l    #1,d0                              
  00414  e289                  lsr.l    #1,d1                              
  00416  b287                  cmp.l    d7,d1                              
  00418  62f8                  bhi.s    L0412                              
  0041a  80c1                  divu.w   d1,d0                              
  0041c  c087                  and.l    d7,d0                              
L041e:
  0041e  3203                  move.w   d3,d1                              
  00420  c2c0                  mulu.w   d0,d1                              
  00422  2e03                  move.l   d3,d7                              
  00424  4847                  swap     d7                                 
  00426  cec0                  mulu.w   d0,d7                              
  00428  4847                  swap     d7                                 
  0042a  d287                  add.l    d7,d1                              
  0042c  6508                  bcs.s    L0436                              
  0042e  9282                  sub.l    d2,d1                              
  00430  6204                  bhi.s    L0436                              
  00432  4481                  neg.l    d1                                 
  00434  4e75                  rts                                         
L0436:
  00436  5340                  subq.w   #1,d0                              
  00438  60e4                  bra.s    L041e                              

;----------------------------------------------------------------------
; f1_043a
;----------------------------------------------------------------------
f1_043a:
  0043a  7024                  moveq    #36,d0                             
  0043c  a11e                  _NewPtr                                     ; $a11e
  0043e  2248                  movea.l  a0,a1                              
  00440  2b490068              move.l   a1,$68(a5)                         
  00444  303ca9f0              move.w   #$a9f0,d0                          
  00448  a146                  _GetTrapAddress                             ; $a146
  0044a  2208                  move.l   a0,d1                              
  0044c  303ca9f0              move.w   #$a9f0,d0                          
  00450  2049                  movea.l  a1,a0                              
  00452  a047                  _SetTrapAddress                             ; $a047
  00454  32fc4eb9              move.w   #$4eb9,(a1)+                       
  00458  41fafc02              lea      L005c(pc),a0                       
  0045c  22c8                  move.l   a0,(a1)+                           
  0045e  32fc4ef9              move.w   #$4ef9,(a1)+                       
  00462  22c1                  move.l   d1,(a1)+                           
  00464  303ca9f1              move.w   #$a9f1,d0                          
  00468  a146                  _GetTrapAddress                             ; $a146
  0046a  2208                  move.l   a0,d1                              
  0046c  303ca9f1              move.w   #$a9f1,d0                          
  00470  2049                  movea.l  a1,a0                              
  00472  a047                  _SetTrapAddress                             ; $a047
  00474  32fc4eb9              move.w   #$4eb9,(a1)+                       
  00478  41fafc4e              lea      L00c8(pc),a0                       
  0047c  22c8                  move.l   a0,(a1)+                           
  0047e  32fc4ef9              move.w   #$4ef9,(a1)+                       
  00482  22c1                  move.l   d1,(a1)+                           
  00484  303ca9f4              move.w   #$a9f4,d0                          
  00488  a146                  _GetTrapAddress                             ; $a146
  0048a  2208                  move.l   a0,d1                              
  0048c  303ca9f4              move.w   #$a9f4,d0                          
  00490  2049                  movea.l  a1,a0                              
  00492  a047                  _SetTrapAddress                             ; $a047
  00494  32fc4eb9              move.w   #$4eb9,(a1)+                       
  00498  41fafbaa              lea      L0044(pc),a0                       
  0049c  22c8                  move.l   a0,(a1)+                           
  0049e  32fc4ef9              move.w   #$4ef9,(a1)+                       
  004a2  22c1                  move.l   d1,(a1)+                           
  004a4  4e75                  rts                                         

;----------------------------------------------------------------------
; f1_04a6   [jump table #9]
;----------------------------------------------------------------------
f1_04a6:
  004a6  226d0068              movea.l  $68(a5),a1                         
  004aa  303ca9f0              move.w   #$a9f0,d0                          
  004ae  20690008              movea.l  $8(a1),a0                          
  004b2  a047                  _SetTrapAddress                             ; $a047
  004b4  303ca9f1              move.w   #$a9f1,d0                          
  004b8  20690014              movea.l  $14(a1),a0                         
  004bc  a047                  _SetTrapAddress                             ; $a047
  004be  303ca9f4              move.w   #$a9f4,d0                          
  004c2  20690020              movea.l  $20(a1),a0                         
  004c6  a047                  _SetTrapAddress                             ; $a047
  004c8  2049                  movea.l  a1,a0                              
  004ca  a01f                  _DisposePtr                                 ; $a01f
  004cc  4e75                  rts                                         
