; Castle Knowledge 2.6 - CODE segment 6 (14950 bytes)
; Disassembled & annotated. Globals g_XXXX = A5-XXXX; STR_XXXX = STRS literal offset.


;----------------------------------------------------------------------
; f6_0000   [jump table #210]
;----------------------------------------------------------------------
f6_0000:
  00000  4e56fffc              link     a6,#-4                             
  00004  2f07                  move.l   d7,-(a7)                           
  00006  4267                  clr.w    -(a7)                              
  00008  2f3c65766e74          move.l   #$65766e74,-(a7)                   
  0000e  486efffc              pea      -$4(a6)                            
  00012  4ead04aa              jsr      f4_1170                            
  00016  3e1f                  move.w   (a7)+,d7                           
  00018  4a47                  tst.w    d7                                 
  0001a  660a                  bne.s    L0026                              
  0001c  202efffc              move.l   -$4(a6),d0                         
  00020  02400001              andi.w   #1,d0                              
  00024  6604                  bne.s    L002a                              
L0026:
  00026  7000                  moveq    #0,d0                              
  00028  6002                  bra.s    L002c                              
L002a:
  0002a  7001                  moveq    #1,d0                              
L002c:
  0002c  2e1f                  move.l   (a7)+,d7                           
  0002e  4e5e                  unlk     a6                                 
  00030  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_0032   [jump table #209]
;----------------------------------------------------------------------
f6_0032:
  00032  4e56fc3e              link     a6,#-962                           
  00036  2f0c                  move.l   a4,-(a7)                           
  00038  0c6e0004000e          cmpi.w   #4,$e(a6)                          
  0003e  6f1e                  ble.s    L005e                              
  00040  4267                  clr.w    -(a7)                              
  00042  7003                  moveq    #3,d0                              
  00044  d06e0010              add.w    $10(a6),d0                         
  00048  3f00                  move.w   d0,-(a7)                           
  0004a  4267                  clr.w    -(a7)                              
  0004c  42a7                  clr.l    -(a7)                              
  0004e  42a7                  clr.l    -(a7)                              
  00050  42a7                  clr.l    -(a7)                              
  00052  42a7                  clr.l    -(a7)                              
  00054  4ead0232              jsr      f2_7ad6                            
  00058  7000                  moveq    #0,d0                              
  0005a  600000cc              bra.w    L0128                              
L005e:
  0005e  306e000c              movea.w  $c(a6),a0                          
  00062  2f08                  move.l   a0,-(a7)                           
  00064  486efe52              pea      -$1ae(a6)                          
  00068  4ead0512              jsr      f4_150e                            
  0006c  2f39ffff83a6          move.l   g_7c5a,-(a7)                       
  00072  486efd52              pea      -$2ae(a6)                          
  00076  4ead0512              jsr      f4_150e                            
  0007a  486efc52              pea      -$3ae(a6)                          
  0007e  3f3c02bc              move.w   #$2bc,-(a7)                        
  00082  3f2e0010              move.w   $10(a6),-(a7)                      
  00086  4ead0522              jsr      f4_153c                            
  0008a  486efd52              pea      -$2ae(a6)                          
  0008e  2f2e0008              move.l   $8(a6),-(a7)                       
  00092  486efc52              pea      -$3ae(a6)                          
  00096  486efe52              pea      -$1ae(a6)                          
  0009a  a98b                  _ParamText                                  ; $a98b
  0009c  42a7                  clr.l    -(a7)                              
  0009e  3f3c00fe              move.w   #$fe,-(a7)                         
  000a2  486eff56              pea      -$aa(a6)                           
  000a6  4878ffff              pea      ($ffff).w                          
  000aa  a97c                  _GetNewDialog                               ; $a97c
  000ac  285f                  movea.l  (a7)+,a4                           
  000ae  2f0c                  move.l   a4,-(a7)                           
  000b0  4ead06ba              jsr      f7_161c                            
  000b4  2e8c                  move.l   a4,(a7)                            
  000b6  a915                  _ShowWindow                                 ; $a915
  000b8  2f0c                  move.l   a4,-(a7)                           
  000ba  a873                  _SetPort                                    ; $a873
  000bc  2f0c                  move.l   a4,-(a7)                           
  000be  3f3c0001              move.w   #1,-(a7)                           
  000c2  486eff54              pea      -$ac(a6)                           
  000c6  486efc4e              pea      -$3b2(a6)                          
  000ca  486efc46              pea      -$3ba(a6)                          
  000ce  a98d                  _GetDialogItem                              ; $a98d
  000d0  2f3c00030003          move.l   #$30003,-(a7)                      
  000d6  a89b                  _PenSize                                    ; $a89b
  000d8  2d6efc46fc3e          move.l   -$3ba(a6),-$3c2(a6)                
  000de  2d6efc4afc42          move.l   -$3b6(a6),-$3be(a6)                
  000e4  486efc3e              pea      -$3c2(a6)                          
  000e8  2f3cfffcfffc          move.l   #$fffcfffc,-(a7)                   
  000ee  a8a9                  _InsetRect                                  ; $a8a9
  000f0  2f0c                  move.l   a4,-(a7)                           
  000f2  a915                  _ShowWindow                                 ; $a915
  000f4  2f0c                  move.l   a4,-(a7)                           
  000f6  a981                  _DrawDialog                                 ; $a981
  000f8  486efc3e              pea      -$3c2(a6)                          
  000fc  2f3c00100010          move.l   #$100010,-(a7)                     
  00102  a8b0                  _FrameRoundRect                             ; $a8b0
  00104  426eff54              clr.w    -$ac(a6)                           
L0108:
  00108  42a7                  clr.l    -(a7)                              
  0010a  486eff54              pea      -$ac(a6)                           
  0010e  a991                  _ModalDialog                                ; $a991
  00110  4a6eff54              tst.w    -$ac(a6)                           
  00114  67f2                  beq.s    L0108                              
  00116  2f0c                  move.l   a4,-(a7)                           
  00118  a983                  _DisposeDialog                              ; $a983
  0011a  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  00120  6604                  bne.s    L0126                              
  00122  7001                  moveq    #1,d0                              
  00124  6002                  bra.s    L0128                              
L0126:
  00126  7000                  moveq    #0,d0                              
L0128:
  00128  286efc3a              movea.l  -$3c6(a6),a4                       
  0012c  4e5e                  unlk     a6                                 
  0012e  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_0130   [jump table #187]
;----------------------------------------------------------------------
f6_0130:
  00130  4e56ffec              link     a6,#-20                            
  00134  2f07                  move.l   d7,-(a7)                           
  00136  41eeffec              lea      -$14(a6),a0                        
  0013a  43f9ffffae5e          lea      g_51a2,a1                          
  00140  7004                  moveq    #4,d0                              
L0142:
  00142  20d9                  move.l   (a1)+,(a0)+                        
  00144  51c8fffc              dbf      d0,L0142                           
  00148  7e00                  moveq    #0,d7                              
  0014a  6016                  bra.s    L0162                              
L014c:
  0014c  206e0008              movea.l  $8(a6),a0                          
  00150  10280001              move.b   $1(a0),d0                          
  00154  49c0                  extb.l   d0                                 
  00156  b07672ec              cmp.w    -$14(a6,d7.w*2),d0                 
  0015a  6604                  bne.s    L0160                              
  0015c  7001                  moveq    #1,d0                              
  0015e  600a                  bra.s    L016a                              
L0160:
  00160  5247                  addq.w   #1,d7                              
L0162:
  00162  0c47000a              cmpi.w   #$a,d7                             
  00166  6de4                  blt.s    L014c                              
  00168  7000                  moveq    #0,d0                              
L016a:
  0016a  2e1f                  move.l   (a7)+,d7                           
  0016c  4e5e                  unlk     a6                                 
  0016e  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_0170
;----------------------------------------------------------------------
f6_0170:
  00170  4e56fffe              link     a6,#-2                             
  00174  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  00178  3e2e0008              move.w   $8(a6),d7                          
  0017c  3c3073b0ffff8c24      move.w   (-$73dc,za0,d7.w*2),d6             
  00184  3a3073b0ffff8c4e      move.w   (-$73b2,za0,d7.w*2),d5             
  0018c  7801                  moveq    #1,d4                              
  0018e  6040                  bra.s    L01d0                              
L0190:
  00190  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  00198  6f34                  ble.s    L01ce                              
  0019a  b847                  cmp.w    d7,d4                              
  0019c  6730                  beq.s    L01ce                              
  0019e  303073b0ffff8c24      move.w   (-$73dc,za0,d7.w*2),d0             
  001a6  d06e000a              add.w    $a(a6),d0                          
  001aa  b07043b0ffff8c24      cmp.w    (-$73dc,za0,d4.w*2),d0             
  001b2  661a                  bne.s    L01ce                              
  001b4  303073b0ffff8c4e      move.w   (-$73b2,za0,d7.w*2),d0             
  001bc  d06e000c              add.w    $c(a6),d0                          
  001c0  b07043b0ffff8c4e      cmp.w    (-$73b2,za0,d4.w*2),d0             
  001c8  6604                  bne.s    L01ce                              
  001ca  7000                  moveq    #0,d0                              
  001cc  6078                  bra.s    L0246                              
L01ce:
  001ce  5244                  addq.w   #1,d4                              
L01d0:
  001d0  b879ffff883e          cmp.w    g_77c2,d4                          
  001d6  6fb8                  ble.s    L0190                              
  001d8  302e000a              move.w   $a(a6),d0                          
  001dc  d17073b0ffff8c24      add.w    d0,(-$73dc,za0,d7.w*2)             
  001e4  322e000c              move.w   $c(a6),d1                          
  001e8  d37073b0ffff8c4e      add.w    d1,(-$73b2,za0,d7.w*2)             
  001f0  7801                  moveq    #1,d4                              
  001f2  6048                  bra.s    L023c                              
L01f4:
  001f4  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  001fc  6f3c                  ble.s    L023a                              
  001fe  b847                  cmp.w    d7,d4                              
  00200  6738                  beq.s    L023a                              
  00202  303073b0ffff8c24      move.w   (-$73dc,za0,d7.w*2),d0             
  0020a  b07043b0ffff8c24      cmp.w    (-$73dc,za0,d4.w*2),d0             
  00212  6626                  bne.s    L023a                              
  00214  303073b0ffff8c4e      move.w   (-$73b2,za0,d7.w*2),d0             
  0021c  b07043b0ffff8c4e      cmp.w    (-$73b2,za0,d4.w*2),d0             
  00224  6614                  bne.s    L023a                              
  00226  318673b0ffff8c24      move.w   d6,(-$73dc,za0,d7.w*2)             
  0022e  318573b0ffff8c4e      move.w   d5,(-$73b2,za0,d7.w*2)             
  00236  7000                  moveq    #0,d0                              
  00238  600c                  bra.s    L0246                              
L023a:
  0023a  5244                  addq.w   #1,d4                              
L023c:
  0023c  b879ffff883e          cmp.w    g_77c2,d4                          
  00242  6fb0                  ble.s    L01f4                              
  00244  7001                  moveq    #1,d0                              
L0246:
  00246  4cdf00f0              movem.l  (a7)+,d4/d5/d6/d7                  
  0024a  4e5e                  unlk     a6                                 
  0024c  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_024e   [jump table #188]
;----------------------------------------------------------------------
f6_024e:
  0024e  4e56fe00              link     a6,#-512                           
  00252  2f07                  move.l   d7,-(a7)                           
  00254  7e00                  moveq    #0,d7                              
L0256:
  00256  7002                  moveq    #2,d0                              
  00258  2239ffff8384          move.l   g_7c7c,d1                          
  0025e  4c401801              divs.l   d0,d1                              
  00262  b2b9ffff8388          cmp.l    g_7c78,d1                          
  00268  6f66                  ble.s    L02d0                              
  0026a  7064                  moveq    #100,d0                            
  0026c  b0b9ffff8384          cmp.l    g_7c7c,d0                          
  00272  6c5c                  bge.s    L02d0                              
  00274  7002                  moveq    #2,d0                              
  00276  2239ffff8384          move.l   g_7c7c,d1                          
  0027c  4c401801              divs.l   d0,d1                              
  00280  23c1ffff8384          move.l   d1,g_7c7c                          
  00286  5379ffff8390          subq.w   #1,g_7c70                          
  0028c  486eff00              pea      -$100(a6)                          
  00290  3f3c0096              move.w   #$96,-(a7)                         
  00294  3f2e0008              move.w   $8(a6),-(a7)                       
  00298  4ead0522              jsr      f4_153c                            
  0029c  486efe00              pea      -$200(a6)                          
  002a0  2f3c000c0097          move.l   #$c0097,-(a7)                      
  002a6  4ead0522              jsr      f4_153c                            
  002aa  302e000a              move.w   $a(a6),d0                          
  002ae  303003b0ffff8c78      move.w   (-$7388,za0,d0.w*2),d0             
  002b6  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  002be  486eff00              pea      -$100(a6)                          
  002c2  486efe00              pea      -$200(a6)                          
  002c6  2f3c00001162          move.l   STR_1162,-(a7)                     ; "?"
  002cc  a98b                  _ParamText                                  ; $a98b
  002ce  6002                  bra.s    L02d2                              
L02d0:
  002d0  7e01                  moveq    #1,d7                              
L02d2:
  002d2  4a07                  tst.b    d7                                 
  002d4  6780                  beq.s    L0256                              
  002d6  2e1f                  move.l   (a7)+,d7                           
  002d8  4e5e                  unlk     a6                                 
  002da  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_02dc
;----------------------------------------------------------------------
f6_02dc:
  002dc  4e56ffd2              link     a6,#-46                            
  002e0  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  002e4  3e2e0008              move.w   $8(a6),d7                          
  002e8  3c2e000a              move.w   $a(a6),d6                          
  002ec  7678                  moveq    #120,d3                            
  002ee  42a7                  clr.l    -(a7)                              
  002f0  3f3c044c              move.w   #$44c,-(a7)                        
  002f4  a9bc                  _GetPicture                                 ; $a9bc
  002f6  285f                  movea.l  (a7)+,a4                           
  002f8  3f03                  move.w   d3,-(a7)                           
  002fa  3f07                  move.w   d7,-(a7)                           
  002fc  486effd2              pea      -$2e(a6)                           
  00300  486effd8              pea      -$28(a6)                           
  00304  486effda              pea      -$26(a6)                           
  00308  486effd4              pea      -$2c(a6)                           
  0030c  486effd6              pea      -$2a(a6)                           
  00310  486effdc              pea      -$24(a6)                           
  00314  486effde              pea      -$22(a6)                           
  00318  4eba0808              jsr      f6_0b22                            
  0031c  486efff4              pea      -$c(a6)                            
  00320  3f2effde              move.w   -$22(a6),-(a7)                     
  00324  3f2effda              move.w   -$26(a6),-(a7)                     
  00328  3f2effdc              move.w   -$24(a6),-(a7)                     
  0032c  3f2effd8              move.w   -$28(a6),-(a7)                     
  00330  a8a7                  _SetRect                                    ; $a8a7
  00332  3eaeffd4              move.w   -$2c(a6),(a7)                      
  00336  3f2effd6              move.w   -$2a(a6),-(a7)                     
  0033a  3f07                  move.w   d7,-(a7)                           
  0033c  3f2e000c              move.w   $c(a6),-(a7)                       
  00340  3f06                  move.w   d6,-(a7)                           
  00342  486effe2              pea      -$1e(a6)                           
  00346  4eba08c4              jsr      f6_0c0c                            
  0034a  302effe2              move.w   -$1e(a6),d0                        
  0034e  c1c6                  muls.w   d6,d0                              
  00350  3d40ffe2              move.w   d0,-$1e(a6)                        
  00354  486efff4              pea      -$c(a6)                            
  00358  3f00                  move.w   d0,-(a7)                           
  0035a  3f3c0014              move.w   #$14,-(a7)                         
  0035e  a8a8                  _OffsetRect                                 ; $a8a8
  00360  4a79ffff8e08          tst.w    g_71f8                             
  00366  4fef002c              lea      $2c(a7),a7                         
  0036a  6f58                  ble.s    L03c4                              
  0036c  7a01                  moveq    #1,d5                              
  0036e  604c                  bra.s    L03bc                              
L0370:
  00370  3045                  movea.w  d5,a0                              
  00372  2008                  move.l   a0,d0                              
  00374  81fc0002              divs.w   #2,d0                              
  00378  4840                  swap     d0                                 
  0037a  4a40                  tst.w    d0                                 
  0037c  660c                  bne.s    L038a                              
  0037e  3045                  movea.w  d5,a0                              
  00380  2008                  move.l   a0,d0                              
  00382  81fc0002              divs.w   #2,d0                              
  00386  d040                  add.w    d0,d0                              
  00388  6018                  bra.s    L03a2                              
L038a:
  0038a  3045                  movea.w  d5,a0                              
  0038c  2008                  move.l   a0,d0                              
  0038e  81fc0002              divs.w   #2,d0                              
  00392  3045                  movea.w  d5,a0                              
  00394  2208                  move.l   a0,d1                              
  00396  83fc0002              divs.w   #2,d1                              
  0039a  5240                  addq.w   #1,d0                              
  0039c  d041                  add.w    d1,d0                              
  0039e  c1fcffff              muls.w   #$ffff,d0                          
L03a2:
  003a2  3800                  move.w   d0,d4                              
  003a4  486efff4              pea      -$c(a6)                            
  003a8  302effdc              move.w   -$24(a6),d0                        
  003ac  906effde              sub.w    -$22(a6),d0                        
  003b0  5240                  addq.w   #1,d0                              
  003b2  c1c4                  muls.w   d4,d0                              
  003b4  3f00                  move.w   d0,-(a7)                           
  003b6  4267                  clr.w    -(a7)                              
  003b8  a8a8                  _OffsetRect                                 ; $a8a8
  003ba  5245                  addq.w   #1,d5                              
L03bc:
  003bc  ba79ffff8e08          cmp.w    g_71f8,d5                          
  003c2  6fac                  ble.s    L0370                              
L03c4:
  003c4  2f39ffff9a60          move.l   g_65a0,-(a7)                       
  003ca  a873                  _SetPort                                    ; $a873
  003cc  486efff4              pea      -$c(a6)                            
  003d0  a8a3                  _EraseRect                                  ; $a8a3
  003d2  2f0c                  move.l   a4,-(a7)                           
  003d4  486efff4              pea      -$c(a6)                            
  003d8  a8f6                  _DrawPicture                                ; $a8f6
  003da  2079ffff9a60          movea.l  g_65a0,a0                          
  003e0  20680002              movea.l  $2(a0),a0                          
  003e4  2f10                  move.l   (a0),-(a7)                         
  003e6  2079ffff99f8          movea.l  g_6608,a0                          
  003ec  20680002              movea.l  $2(a0),a0                          
  003f0  2f10                  move.l   (a0),-(a7)                         
  003f2  486efff4              pea      -$c(a6)                            
  003f6  486efff4              pea      -$c(a6)                            
  003fa  3f3c0024              move.w   #$24,-(a7)                         
  003fe  42a7                  clr.l    -(a7)                              
  00400  a8ec                  _CopyBits                                   ; $a8ec
  00402  700a                  moveq    #10,d0                             
  00404  c1c7                  muls.w   d7,d0                              
  00406  7228                  moveq    #40,d1                             
  00408  9240                  sub.w    d0,d1                              
  0040a  3d41ffd2              move.w   d1,-$2e(a6)                        
  0040e  48c1                  ext.l    d1                                 
  00410  83fc0004              divs.w   #4,d1                              
  00414  302efff4              move.w   -$c(a6),d0                         
  00418  9041                  sub.w    d1,d0                              
  0041a  5440                  addq.w   #2,d0                              
  0041c  3d40ffda              move.w   d0,-$26(a6)                        
  00420  322efffa              move.w   -$6(a6),d1                         
  00424  926efff6              sub.w    -$a(a6),d1                         
  00428  48c1                  ext.l    d1                                 
  0042a  83fc0003              divs.w   #3,d1                              
  0042e  d26efff6              add.w    -$a(a6),d1                         
  00432  3d41ffde              move.w   d1,-$22(a6)                        
  00436  486effec              pea      -$14(a6)                           
  0043a  3f01                  move.w   d1,-(a7)                           
  0043c  3f00                  move.w   d0,-(a7)                           
  0043e  d26effd2              add.w    -$2e(a6),d1                        
  00442  3f01                  move.w   d1,-(a7)                           
  00444  d06effd2              add.w    -$2e(a6),d0                        
  00448  3f00                  move.w   d0,-(a7)                           
  0044a  a8a7                  _SetRect                                    ; $a8a7
  0044c  0c470001              cmpi.w   #1,d7                              
  00450  6c34                  bge.s    L0486                              
  00452  4a46                  tst.w    d6                                 
  00454  6630                  bne.s    L0486                              
  00456  5279ffff8e08          addq.w   #1,g_71f8                          
  0045c  3039ffff8e08          move.w   g_71f8,d0                          
  00462  31ae000e03b0ffff97aa  move.w   $e(a6),(-$6856,za0,d0.w*2)         
  0046c  41f007b0ffff9622      lea      (-$69de,za0,d0.w*8),a0             
  00474  20eeffec              move.l   -$14(a6),(a0)+                     
  00478  20eefff0              move.l   -$10(a6),(a0)+                     
  0047c  13fc0001ffff3b0c      move.b   #1,g_c4f4                          
  00484  6006                  bra.s    L048c                              
L0486:
  00486  4239ffff3b0c          clr.b    g_c4f4                             
L048c:
  0048c  2f0c                  move.l   a4,-(a7)                           
  0048e  a9a3                  _ReleaseResource                            ; $a9a3
  00490  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  00494  4e5e                  unlk     a6                                 
  00496  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_0498   [jump table #208]
;----------------------------------------------------------------------
f6_0498:
  00498  4e56ffc6              link     a6,#-58                            
  0049c  48e71f18              movem.l  d3/d4/d5/d6/d7/a3/a4,-(a7)         
  004a0  3e2e0008              move.w   $8(a6),d7                          
  004a4  3a2e000e              move.w   $e(a6),d5                          
  004a8  41eeffc6              lea      -$3a(a6),a0                        
  004ac  43f9ffffae72          lea      g_518e,a1                          
  004b2  7007                  moveq    #7,d0                              
L04b4:
  004b4  20d9                  move.l   (a1)+,(a0)+                        
  004b6  51c8fffc              dbf      d0,L04b4                           
  004ba  303053b0ffff8b7c      move.w   (-$7484,za0,d5.w*2),d0             
  004c2  6b0001a6              bmi.w    L066a                              
  004c6  044000f6              subi.w   #$f6,d0                            
  004ca  67000146              beq.w    L0612                              
  004ce  6a36                  bpl.s    L0506                              
  004d0  0440fff0              subi.w   #$fff0,d0                          
  004d4  670000b2              beq.w    L0588                              
  004d8  6a14                  bpl.s    L04ee                              
  004da  5440                  addq.w   #2,d0                              
  004dc  676e                  beq.s    L054c                              
  004de  6a000080              bpl.w    L0560                              
  004e2  0440ff81              subi.w   #$ff81,d0                          
  004e6  670000e6              beq.w    L05ce                              
  004ea  6000017e              bra.w    L066a                              
L04ee:
  004ee  5140                  subq.w   #8,d0                              
  004f0  670000aa              beq.w    L059c                              
  004f4  6a08                  bpl.s    L04fe                              
  004f6  5240                  addq.w   #1,d0                              
  004f8  6a000170              bpl.w    L066a                              
  004fc  604e                  bra.s    L054c                              
L04fe:
  004fe  5d40                  subq.w   #6,d0                              
  00500  6772                  beq.s    L0574                              
  00502  60000166              bra.w    L066a                              
L0506:
  00506  044003ec              subi.w   #$3ec,d0                           
  0050a  670000ea              beq.w    L05f6                              
  0050e  6a24                  bpl.s    L0534                              
  00510  0440fc1b              subi.w   #$fc1b,d0                          
  00514  670000cc              beq.w    L05e2                              
  00518  6a0e                  bpl.s    L0528                              
  0051a  5440                  addq.w   #2,d0                              
  0051c  6a00014c              bpl.w    L066a                              
  00520  5440                  addq.w   #2,d0                              
  00522  6a28                  bpl.s    L054c                              
  00524  60000144              bra.w    L066a                              
L0528:
  00528  5540                  subq.w   #2,d0                              
  0052a  6700008e              beq.w    L05ba                              
  0052e  6a00013a              bpl.w    L066a                              
  00532  6072                  bra.s    L05a6                              
L0534:
  00534  04401a5e              subi.w   #$1a5e,d0                          
  00538  6a0c                  bpl.s    L0546                              
  0053a  0440e5ac              subi.w   #$e5ac,d0                          
  0053e  670000b6              beq.w    L05f6                              
  00542  60000126              bra.w    L066a                              
L0546:
  00546  5940                  subq.w   #4,d0                              
  00548  6a000120              bpl.w    L066a                              
L054c:
  0054c  303053b0ffff8b7c      move.w   (-$7484,za0,d5.w*2),d0             
  00554  064003e8              addi.w   #$3e8,d0                           
  00558  3d40ffec              move.w   d0,-$14(a6)                        
  0055c  60000112              bra.w    L0670                              
L0560:
  00560  303053b0ffff8ba6      move.w   (-$745a,za0,d5.w*2),d0             
  00568  064001bb              addi.w   #$1bb,d0                           
  0056c  3d40ffec              move.w   d0,-$14(a6)                        
  00570  600000fe              bra.w    L0670                              
L0574:
  00574  303053b0ffff8ba6      move.w   (-$745a,za0,d5.w*2),d0             
  0057c  0640027a              addi.w   #$27a,d0                           
  00580  3d40ffec              move.w   d0,-$14(a6)                        
  00584  600000ea              bra.w    L0670                              
L0588:
  00588  303053b0ffff8ba6      move.w   (-$745a,za0,d5.w*2),d0             
  00590  0640021b              addi.w   #$21b,d0                           
  00594  3d40ffec              move.w   d0,-$14(a6)                        
  00598  600000d6              bra.w    L0670                              
L059c:
  0059c  3d7c04d6ffec          move.w   #$4d6,-$14(a6)                     
  005a2  600000cc              bra.w    L0670                              
L05a6:
  005a6  3f05                  move.w   d5,-(a7)                           
  005a8  3f2e000c              move.w   $c(a6),-(a7)                       
  005ac  3f2e000a              move.w   $a(a6),-(a7)                       
  005b0  3f07                  move.w   d7,-(a7)                           
  005b2  4eba035e              jsr      f6_0912                            
  005b6  60000336              bra.w    L08ee                              
L05ba:
  005ba  3f05                  move.w   d5,-(a7)                           
  005bc  3f2e000c              move.w   $c(a6),-(a7)                       
  005c0  3f2e000a              move.w   $a(a6),-(a7)                       
  005c4  3f07                  move.w   d7,-(a7)                           
  005c6  4ebafd14              jsr      f6_02dc                            
  005ca  60000322              bra.w    L08ee                              
L05ce:
  005ce  3f05                  move.w   d5,-(a7)                           
  005d0  3f2e000c              move.w   $c(a6),-(a7)                       
  005d4  3f2e000a              move.w   $a(a6),-(a7)                       
  005d8  3f07                  move.w   d7,-(a7)                           
  005da  4eba078c              jsr      f6_0d68                            
  005de  6000030e              bra.w    L08ee                              
L05e2:
  005e2  3f05                  move.w   d5,-(a7)                           
  005e4  3f2e000c              move.w   $c(a6),-(a7)                       
  005e8  3f2e000a              move.w   $a(a6),-(a7)                       
  005ec  3f07                  move.w   d7,-(a7)                           
  005ee  4eba093c              jsr      f6_0f2c                            
  005f2  600002fa              bra.w    L08ee                              
L05f6:
  005f6  3f05                  move.w   d5,-(a7)                           
  005f8  3f2e000c              move.w   $c(a6),-(a7)                       
  005fc  3f2e000a              move.w   $a(a6),-(a7)                       
  00600  3f07                  move.w   d7,-(a7)                           
  00602  3f3053b0ffff8b7c      move.w   (-$7484,za0,d5.w*2),-(a7)          
  0060a  4ead053a              jsr      f5_153a                            
  0060e  600002de              bra.w    L08ee                              
L0612:
  00612  7800                  moveq    #0,d4                              
  00614  6024                  bra.s    L063a                              
L0616:
  00616  487646c6              pea      -$3a(a6,d4.w*8)                    
  0061a  70ff                  moveq    #-1,d0                             
  0061c  d044                  add.w    d4,d0                              
  0061e  c1fc0006              muls.w   #6,d0                              
  00622  0640fff0              addi.w   #$fff0,d0                          
  00626  3f00                  move.w   d0,-(a7)                           
  00628  70ff                  moveq    #-1,d0                             
  0062a  d044                  add.w    d4,d0                              
  0062c  c1fc0006              muls.w   #6,d0                              
  00630  0640fff0              addi.w   #$fff0,d0                          
  00634  3f00                  move.w   d0,-(a7)                           
  00636  a8a9                  _InsetRect                                  ; $a8a9
  00638  5244                  addq.w   #1,d4                              
L063a:
  0063a  0c440004              cmpi.w   #4,d4                              
  0063e  6dd6                  blt.s    L0616                              
  00640  486effde              pea      -$22(a6)                           
  00644  2f3c000f0000          move.l   #$f0000,-(a7)                      
  0064a  a8a8                  _OffsetRect                                 ; $a8a8
  0064c  486effd6              pea      -$2a(a6)                           
  00650  2f3c00080000          move.l   #$80000,-(a7)                      
  00656  a8a8                  _OffsetRect                                 ; $a8a8
  00658  303053b0ffff8b7c      move.w   (-$7484,za0,d5.w*2),d0             
  00660  064003e8              addi.w   #$3e8,d0                           
  00664  3d40ffec              move.w   d0,-$14(a6)                        
  00668  6006                  bra.s    L0670                              
L066a:
  0066a  3d7c00d1ffec          move.w   #$d1,-$14(a6)                      
L0670:
  00670  701e                  moveq    #30,d0                             
  00672  a122                  _NewHandle                                  ; $a122
  00674  2848                  movea.l  a0,a4                              
  00676  701e                  moveq    #30,d0                             
  00678  a122                  _NewHandle                                  ; $a122
  0067a  2648                  movea.l  a0,a3                              
  0067c  701e                  moveq    #30,d0                             
  0067e  2254                  movea.l  (a4),a1                            
  00680  207075b1ffff990a      movea.l  ([-$66f6,a0],d7.w*4,$0),a0         
  00688  a02e                  _BlockMove                                  ; $a02e
  0068a  701e                  moveq    #30,d0                             
  0068c  2253                  movea.l  (a3),a1                            
  0068e  207075b1ffff991e      movea.l  ([-$66e2,a0],d7.w*4,$0),a0         
  00696  a02e                  _BlockMove                                  ; $a02e
  00698  3007                  move.w   d7,d0                              
  0069a  e748                  lsl.w    #3,d0                              
  0069c  7220                  moveq    #32,d1                             
  0069e  9240                  sub.w    d0,d1                              
  006a0  3d41ffe8              move.w   d1,-$18(a6)                        
  006a4  2054                  movea.l  (a4),a0                            
  006a6  3c280014              move.w   $14(a0),d6                         
  006aa  3d46ffee              move.w   d6,-$12(a6)                        
  006ae  2253                  movea.l  (a3),a1                            
  006b0  30290014              move.w   $14(a1),d0                         
  006b4  3d40ffea              move.w   d0,-$16(a6)                        
  006b8  3d40fff4              move.w   d0,-$c(a6)                         
  006bc  48c1                  ext.l    d1                                 
  006be  83fc0002              divs.w   #2,d1                              
  006c2  34280012              move.w   $12(a0),d2                         
  006c6  9441                  sub.w    d1,d2                              
  006c8  3d42fff2              move.w   d2,-$e(a6)                         
  006cc  d46effe8              add.w    -$18(a6),d2                        
  006d0  3d42fff0              move.w   d2,-$10(a6)                        
  006d4  306effe8              movea.w  -$18(a6),a0                        
  006d8  2208                  move.l   a0,d1                              
  006da  83fc0002              divs.w   #2,d1                              
  006de  906effee              sub.w    -$12(a6),d0                        
  006e2  48c0                  ext.l    d0                                 
  006e4  81fc0002              divs.w   #2,d0                              
  006e8  d06effee              add.w    -$12(a6),d0                        
  006ec  9041                  sub.w    d1,d0                              
  006ee  3d40ffee              move.w   d0,-$12(a6)                        
  006f2  d06effe8              add.w    -$18(a6),d0                        
  006f6  3d40fff4              move.w   d0,-$c(a6)                         
  006fa  4a47                  tst.w    d7                                 
  006fc  6616                  bne.s    L0714                              
  006fe  2079ffff9382          movea.l  g_6c7e,a0                          
  00704  70e0                  moveq    #-32,d0                            
  00706  d0680014              add.w    $14(a0),d0                         
  0070a  3d40fff2              move.w   d0,-$e(a6)                         
  0070e  3d680014fff0          move.w   $14(a0),-$10(a6)                   
L0714:
  00714  486efff8              pea      -$8(a6)                            
  00718  3f2effee              move.w   -$12(a6),-(a7)                     
  0071c  3f2efff2              move.w   -$e(a6),-(a7)                      
  00720  3f2efff4              move.w   -$c(a6),-(a7)                      
  00724  3f2efff0              move.w   -$10(a6),-(a7)                     
  00728  a8a7                  _SetRect                                    ; $a8a7
  0072a  2d7676c6fff8          move.l   -$3a(a6,d7.w*8),-$8(a6)            
  00730  2d7676cafffc          move.l   -$36(a6,d7.w*8),-$4(a6)            
  00736  302e000a              move.w   $a(a6),d0                          
  0073a  5c40                  addq.w   #6,d0                              
  0073c  0c40000c              cmpi.w   #$c,d0                             
  00740  620000f6              bhi.w    L0838                              
  00744  43fa01b2              lea      L08f8(pc),a1                       
  00748  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  0074c  4ed1                  jmp      (a1)                               
  0074e  363c0190              move.w   #$190,d3                           
  00752  600000e4              bra.w    L0838                              
  00756  302e000c              move.w   $c(a6),d0                          
  0075a  6b0000dc              bmi.w    L0838                              
  0075e  5d40                  subq.w   #6,d0                              
  00760  6a0000d6              bpl.w    L0838                              
  00764  5640                  addq.w   #3,d0                              
  00766  6a08                  bpl.s    L0770                              
  00768  363c012c              move.w   #$12c,d3                           
  0076c  600000ca              bra.w    L0838                              
L0770:
  00770  3007                  move.w   d7,d0                              
  00772  6712                  beq.s    L0786                              
  00774  6b0000c2              bmi.w    L0838                              
  00778  5740                  subq.w   #3,d0                              
  0077a  6726                  beq.s    L07a2                              
  0077c  6a0000ba              bpl.w    L0838                              
  00780  5240                  addq.w   #1,d0                              
  00782  6a14                  bpl.s    L0798                              
  00784  6008                  bra.s    L078e                              
L0786:
  00786  363c012c              move.w   #$12c,d3                           
  0078a  600000ac              bra.w    L0838                              
L078e:
  0078e  362effea              move.w   -$16(a6),d3                        
  00792  9646                  sub.w    d6,d3                              
  00794  600000a2              bra.w    L0838                              
L0798:
  00798  362effea              move.w   -$16(a6),d3                        
  0079c  9646                  sub.w    d6,d3                              
  0079e  60000098              bra.w    L0838                              
L07a2:
  007a2  362effea              move.w   -$16(a6),d3                        
  007a6  9646                  sub.w    d6,d3                              
  007a8  6000008e              bra.w    L0838                              
  007ac  302e000c              move.w   $c(a6),d0                          
  007b0  6710                  beq.s    L07c2                              
  007b2  6b000084              bmi.w    L0838                              
  007b6  5540                  subq.w   #2,d0                              
  007b8  6728                  beq.s    L07e2                              
  007ba  6b0c                  bmi.s    L07c8                              
  007bc  5940                  subq.w   #4,d0                              
  007be  6a78                  bpl.s    L0838                              
  007c0  6044                  bra.s    L0806                              
L07c2:
  007c2  363c00c8              move.w   #$c8,d3                            
  007c6  6070                  bra.s    L0838                              
L07c8:
  007c8  3007                  move.w   d7,d0                              
  007ca  6708                  beq.s    L07d4                              
  007cc  6b6a                  bmi.s    L0838                              
  007ce  5540                  subq.w   #2,d0                              
  007d0  6a66                  bpl.s    L0838                              
  007d2  6006                  bra.s    L07da                              
L07d4:
  007d4  363c00c8              move.w   #$c8,d3                            
  007d8  605e                  bra.s    L0838                              
L07da:
  007da  362effea              move.w   -$16(a6),d3                        
  007de  9646                  sub.w    d6,d3                              
  007e0  6056                  bra.s    L0838                              
L07e2:
  007e2  3007                  move.w   d7,d0                              
  007e4  670a                  beq.s    L07f0                              
  007e6  6b50                  bmi.s    L0838                              
  007e8  5540                  subq.w   #2,d0                              
  007ea  6712                  beq.s    L07fe                              
  007ec  6a4a                  bpl.s    L0838                              
  007ee  6006                  bra.s    L07f6                              
L07f0:
  007f0  363c00c8              move.w   #$c8,d3                            
  007f4  6042                  bra.s    L0838                              
L07f6:
  007f6  362effea              move.w   -$16(a6),d3                        
  007fa  9646                  sub.w    d6,d3                              
  007fc  603a                  bra.s    L0838                              
L07fe:
  007fe  362effea              move.w   -$16(a6),d3                        
  00802  9646                  sub.w    d6,d3                              
  00804  6032                  bra.s    L0838                              
L0806:
  00806  3007                  move.w   d7,d0                              
  00808  670e                  beq.s    L0818                              
  0080a  6b2c                  bmi.s    L0838                              
  0080c  5740                  subq.w   #3,d0                              
  0080e  671e                  beq.s    L082e                              
  00810  6a26                  bpl.s    L0838                              
  00812  5240                  addq.w   #1,d0                              
  00814  6a10                  bpl.s    L0826                              
  00816  6006                  bra.s    L081e                              
L0818:
  00818  363c00c8              move.w   #$c8,d3                            
  0081c  601a                  bra.s    L0838                              
L081e:
  0081e  362effea              move.w   -$16(a6),d3                        
  00822  9646                  sub.w    d6,d3                              
  00824  6012                  bra.s    L0838                              
L0826:
  00826  362effea              move.w   -$16(a6),d3                        
  0082a  9646                  sub.w    d6,d3                              
  0082c  600a                  bra.s    L0838                              
L082e:
  0082e  362effea              move.w   -$16(a6),d3                        
  00832  9646                  sub.w    d6,d3                              
  00834  6002                  bra.s    L0838                              
  00836  7600                  moveq    #0,d3                              
L0838:
  00838  c7ee000a              muls.w   $a(a6),d3                          
  0083c  486efff8              pea      -$8(a6)                            
  00840  3f03                  move.w   d3,-(a7)                           
  00842  4267                  clr.w    -(a7)                              
  00844  a8a8                  _OffsetRect                                 ; $a8a8
  00846  4a79ffff8e08          tst.w    g_71f8                             
  0084c  6f5a                  ble.s    L08a8                              
  0084e  7801                  moveq    #1,d4                              
  00850  604e                  bra.s    L08a0                              
L0852:
  00852  3044                  movea.w  d4,a0                              
  00854  2008                  move.l   a0,d0                              
  00856  81fc0002              divs.w   #2,d0                              
  0085a  4840                  swap     d0                                 
  0085c  4a40                  tst.w    d0                                 
  0085e  660c                  bne.s    L086c                              
  00860  3044                  movea.w  d4,a0                              
  00862  2008                  move.l   a0,d0                              
  00864  81fc0002              divs.w   #2,d0                              
  00868  d040                  add.w    d0,d0                              
  0086a  6018                  bra.s    L0884                              
L086c:
  0086c  3044                  movea.w  d4,a0                              
  0086e  2008                  move.l   a0,d0                              
  00870  81fc0002              divs.w   #2,d0                              
  00874  3044                  movea.w  d4,a0                              
  00876  2208                  move.l   a0,d1                              
  00878  83fc0002              divs.w   #2,d1                              
  0087c  5240                  addq.w   #1,d0                              
  0087e  d041                  add.w    d1,d0                              
  00880  c1fcffff              muls.w   #$ffff,d0                          
L0884:
  00884  3d40ffe6              move.w   d0,-$1a(a6)                        
  00888  486efff8              pea      -$8(a6)                            
  0088c  322efff4              move.w   -$c(a6),d1                         
  00890  926effee              sub.w    -$12(a6),d1                        
  00894  5241                  addq.w   #1,d1                              
  00896  c1c1                  muls.w   d1,d0                              
  00898  3f00                  move.w   d0,-(a7)                           
  0089a  4267                  clr.w    -(a7)                              
  0089c  a8a8                  _OffsetRect                                 ; $a8a8
  0089e  5244                  addq.w   #1,d4                              
L08a0:
  008a0  b879ffff8e08          cmp.w    g_71f8,d4                          
  008a6  6faa                  ble.s    L0852                              
L08a8:
  008a8  3f2effec              move.w   -$14(a6),-(a7)                     
  008ac  486efff8              pea      -$8(a6)                            
  008b0  4ead06d2              jsr      f7_1a72                            
  008b4  0c470001              cmpi.w   #1,d7                              
  008b8  5c8f                  addq.l   #6,a7                              
  008ba  6c2a                  bge.s    L08e6                              
  008bc  4a6e000a              tst.w    $a(a6)                             
  008c0  6624                  bne.s    L08e6                              
  008c2  5279ffff8e08          addq.w   #1,g_71f8                          
  008c8  3039ffff8e08          move.w   g_71f8,d0                          
  008ce  318503b0ffff97aa      move.w   d5,(-$6856,za0,d0.w*2)             
  008d6  41f007b0ffff9622      lea      (-$69de,za0,d0.w*8),a0             
  008de  20eefff8              move.l   -$8(a6),(a0)+                      
  008e2  20eefffc              move.l   -$4(a6),(a0)+                      
L08e6:
  008e6  204c                  movea.l  a4,a0                              
  008e8  a023                  _DisposeHandle                              ; $a023
  008ea  204b                  movea.l  a3,a0                              
  008ec  a023                  _DisposeHandle                              ; $a023
L08ee:
  008ee  4cee18f8ffaa          movem.l  -$56(a6),d3/d4/d5/d6/d7/a3/a4      
  008f4  4e5e                  unlk     a6                                 
  008f6  4e75                  rts                                         
  008f8  fe56                  dc.w     $fe56                              
  008fa  fe56                  dc.w     $fe56                              
  008fc  fe56                  dc.w     $fe56                              
  008fe  fe56                  dc.w     $fe56                              
  00900  fe5e                  dc.w     $fe5e                              
  00902  feb4                  dc.w     $feb4                              
  00904  ff3e                  dc.w     $ff3e                              
  00906  feb4                  dc.w     $feb4                              
  00908  fe5e                  dc.w     $fe5e                              
  0090a  fe56                  dc.w     $fe56                              
  0090c  fe56                  dc.w     $fe56                              
  0090e  fe56                  dc.w     $fe56                              
  00910  fe56                  dc.w     $fe56                              

;----------------------------------------------------------------------
; f6_0912
;----------------------------------------------------------------------
f6_0912:
  00912  4e56ffce              link     a6,#-50                            
  00916  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  0091a  3e2e0008              move.w   $8(a6),d7                          
  0091e  3c2e000a              move.w   $a(a6),d6                          
  00922  7678                  moveq    #120,d3                            
  00924  42a7                  clr.l    -(a7)                              
  00926  3f3c03e8              move.w   #$3e8,-(a7)                        
  0092a  a9bc                  _GetPicture                                 ; $a9bc
  0092c  285f                  movea.l  (a7)+,a4                           
  0092e  42a7                  clr.l    -(a7)                              
  00930  3f3c03e9              move.w   #$3e9,-(a7)                        
  00934  a9bc                  _GetPicture                                 ; $a9bc
  00936  265f                  movea.l  (a7)+,a3                           
  00938  42a7                  clr.l    -(a7)                              
  0093a  3f3c03ea              move.w   #$3ea,-(a7)                        
  0093e  a9bc                  _GetPicture                                 ; $a9bc
  00940  245f                  movea.l  (a7)+,a2                           
  00942  3f03                  move.w   d3,-(a7)                           
  00944  3f07                  move.w   d7,-(a7)                           
  00946  486effce              pea      -$32(a6)                           
  0094a  486effd4              pea      -$2c(a6)                           
  0094e  486effd6              pea      -$2a(a6)                           
  00952  486effd0              pea      -$30(a6)                           
  00956  486effd2              pea      -$2e(a6)                           
  0095a  486effd8              pea      -$28(a6)                           
  0095e  486effda              pea      -$26(a6)                           
  00962  4eba01be              jsr      f6_0b22                            
  00966  486efff8              pea      -$8(a6)                            
  0096a  3f2effda              move.w   -$26(a6),-(a7)                     
  0096e  3f2effd6              move.w   -$2a(a6),-(a7)                     
  00972  3f2effd8              move.w   -$28(a6),-(a7)                     
  00976  3f2effd4              move.w   -$2c(a6),-(a7)                     
  0097a  a8a7                  _SetRect                                    ; $a8a7
  0097c  3eaeffd0              move.w   -$30(a6),(a7)                      
  00980  3f2effd2              move.w   -$2e(a6),-(a7)                     
  00984  3f07                  move.w   d7,-(a7)                           
  00986  3f2e000c              move.w   $c(a6),-(a7)                       
  0098a  3f06                  move.w   d6,-(a7)                           
  0098c  486effde              pea      -$22(a6)                           
  00990  4eba027a              jsr      f6_0c0c                            
  00994  302effde              move.w   -$22(a6),d0                        
  00998  c1c6                  muls.w   d6,d0                              
  0099a  3d40ffde              move.w   d0,-$22(a6)                        
  0099e  486efff8              pea      -$8(a6)                            
  009a2  3f00                  move.w   d0,-(a7)                           
  009a4  3f3c0014              move.w   #$14,-(a7)                         
  009a8  a8a8                  _OffsetRect                                 ; $a8a8
  009aa  4a79ffff8e08          tst.w    g_71f8                             
  009b0  4fef002c              lea      $2c(a7),a7                         
  009b4  6f58                  ble.s    L0a0e                              
  009b6  7a01                  moveq    #1,d5                              
  009b8  604c                  bra.s    L0a06                              
L09ba:
  009ba  3045                  movea.w  d5,a0                              
  009bc  2008                  move.l   a0,d0                              
  009be  81fc0002              divs.w   #2,d0                              
  009c2  4840                  swap     d0                                 
  009c4  4a40                  tst.w    d0                                 
  009c6  660c                  bne.s    L09d4                              
  009c8  3045                  movea.w  d5,a0                              
  009ca  2008                  move.l   a0,d0                              
  009cc  81fc0002              divs.w   #2,d0                              
  009d0  d040                  add.w    d0,d0                              
  009d2  6018                  bra.s    L09ec                              
L09d4:
  009d4  3045                  movea.w  d5,a0                              
  009d6  2008                  move.l   a0,d0                              
  009d8  81fc0002              divs.w   #2,d0                              
  009dc  3045                  movea.w  d5,a0                              
  009de  2208                  move.l   a0,d1                              
  009e0  83fc0002              divs.w   #2,d1                              
  009e4  5240                  addq.w   #1,d0                              
  009e6  d041                  add.w    d1,d0                              
  009e8  c1fcffff              muls.w   #$ffff,d0                          
L09ec:
  009ec  3800                  move.w   d0,d4                              
  009ee  486efff8              pea      -$8(a6)                            
  009f2  302effd8              move.w   -$28(a6),d0                        
  009f6  906effda              sub.w    -$26(a6),d0                        
  009fa  5240                  addq.w   #1,d0                              
  009fc  c1c4                  muls.w   d4,d0                              
  009fe  3f00                  move.w   d0,-(a7)                           
  00a00  4267                  clr.w    -(a7)                              
  00a02  a8a8                  _OffsetRect                                 ; $a8a8
  00a04  5245                  addq.w   #1,d5                              
L0a06:
  00a06  ba79ffff8e08          cmp.w    g_71f8,d5                          
  00a0c  6fac                  ble.s    L09ba                              
L0a0e:
  00a0e  2f0c                  move.l   a4,-(a7)                           
  00a10  486efff8              pea      -$8(a6)                            
  00a14  a8f6                  _DrawPicture                                ; $a8f6
  00a16  7005                  moveq    #5,d0                              
  00a18  c1c7                  muls.w   d7,d0                              
  00a1a  7214                  moveq    #20,d1                             
  00a1c  9240                  sub.w    d0,d1                              
  00a1e  3d41ffce              move.w   d1,-$32(a6)                        
  00a22  302efffc              move.w   -$4(a6),d0                         
  00a26  906efff8              sub.w    -$8(a6),d0                         
  00a2a  48c0                  ext.l    d0                                 
  00a2c  81fc0003              divs.w   #3,d0                              
  00a30  d06efff8              add.w    -$8(a6),d0                         
  00a34  3d40ffd6              move.w   d0,-$2a(a6)                        
  00a38  342efffe              move.w   -$2(a6),d2                         
  00a3c  946efffa              sub.w    -$6(a6),d2                         
  00a40  48c2                  ext.l    d2                                 
  00a42  85fc0004              divs.w   #4,d2                              
  00a46  d46efffa              add.w    -$6(a6),d2                         
  00a4a  3d42ffda              move.w   d2,-$26(a6)                        
  00a4e  486efff0              pea      -$10(a6)                           
  00a52  3f02                  move.w   d2,-(a7)                           
  00a54  3f00                  move.w   d0,-(a7)                           
  00a56  d441                  add.w    d1,d2                              
  00a58  3f02                  move.w   d2,-(a7)                           
  00a5a  d041                  add.w    d1,d0                              
  00a5c  3f00                  move.w   d0,-(a7)                           
  00a5e  a8a7                  _SetRect                                    ; $a8a7
  00a60  2f0b                  move.l   a3,-(a7)                           
  00a62  486efff0              pea      -$10(a6)                           
  00a66  a8f6                  _DrawPicture                                ; $a8f6
  00a68  302efffc              move.w   -$4(a6),d0                         
  00a6c  906efff8              sub.w    -$8(a6),d0                         
  00a70  48c0                  ext.l    d0                                 
  00a72  81fc0004              divs.w   #4,d0                              
  00a76  d06efff8              add.w    -$8(a6),d0                         
  00a7a  3d40ffd6              move.w   d0,-$2a(a6)                        
  00a7e  322efffe              move.w   -$2(a6),d1                         
  00a82  926efffa              sub.w    -$6(a6),d1                         
  00a86  48c1                  ext.l    d1                                 
  00a88  83fc0003              divs.w   #3,d1                              
  00a8c  342efffe              move.w   -$2(a6),d2                         
  00a90  9441                  sub.w    d1,d2                              
  00a92  3d42ffda              move.w   d2,-$26(a6)                        
  00a96  486effe8              pea      -$18(a6)                           
  00a9a  3f02                  move.w   d2,-(a7)                           
  00a9c  3f00                  move.w   d0,-(a7)                           
  00a9e  d46effce              add.w    -$32(a6),d2                        
  00aa2  3f02                  move.w   d2,-(a7)                           
  00aa4  d06effce              add.w    -$32(a6),d0                        
  00aa8  3f00                  move.w   d0,-(a7)                           
  00aaa  a8a7                  _SetRect                                    ; $a8a7
  00aac  2f0a                  move.l   a2,-(a7)                           
  00aae  486effe8              pea      -$18(a6)                           
  00ab2  a8f6                  _DrawPicture                                ; $a8f6
  00ab4  0c470001              cmpi.w   #1,d7                              
  00ab8  6c54                  bge.s    L0b0e                              
  00aba  4a46                  tst.w    d6                                 
  00abc  6650                  bne.s    L0b0e                              
  00abe  5279ffff8e08          addq.w   #1,g_71f8                          
  00ac4  3039ffff8e08          move.w   g_71f8,d0                          
  00aca  31ae000e03b0ffff97aa  move.w   $e(a6),(-$6856,za0,d0.w*2)         
  00ad4  41f007b0ffff9622      lea      (-$69de,za0,d0.w*8),a0             
  00adc  20eefff0              move.l   -$10(a6),(a0)+                     
  00ae0  20eefff4              move.l   -$c(a6),(a0)+                      
  00ae4  5279ffff8e08          addq.w   #1,g_71f8                          
  00aea  302e000e              move.w   $e(a6),d0                          
  00aee  4440                  neg.w    d0                                 
  00af0  3239ffff8e08          move.w   g_71f8,d1                          
  00af6  318013b0ffff97aa      move.w   d0,(-$6856,za0,d1.w*2)             
  00afe  41f017b0ffff9622      lea      (-$69de,za0,d1.w*8),a0             
  00b06  20eeffe8              move.l   -$18(a6),(a0)+                     
  00b0a  20eeffec              move.l   -$14(a6),(a0)+                     
L0b0e:
  00b0e  2f0c                  move.l   a4,-(a7)                           
  00b10  a9a3                  _ReleaseResource                            ; $a9a3
  00b12  2f0b                  move.l   a3,-(a7)                           
  00b14  a9a3                  _ReleaseResource                            ; $a9a3
  00b16  2f0a                  move.l   a2,-(a7)                           
  00b18  a9a3                  _ReleaseResource                            ; $a9a3
  00b1a  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  00b1e  4e5e                  unlk     a6                                 
  00b20  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_0b22   [jump table #189]
;----------------------------------------------------------------------
f6_0b22:
  00b22  4e560000              link     a6,#0                              
  00b26  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  00b2a  3c2e0024              move.w   $24(a6),d6                         
  00b2e  262e0020              move.l   $20(a6),d3                         
  00b32  286e0008              movea.l  $8(a6),a4                          
  00b36  2e2e0018              move.l   $18(a6),d7                         
  00b3a  3a2e0026              move.w   $26(a6),d5                         
  00b3e  282e000c              move.l   $c(a6),d4                          
  00b42  701e                  moveq    #30,d0                             
  00b44  a122                  _NewHandle                                  ; $a122
  00b46  2448                  movea.l  a0,a2                              
  00b48  701e                  moveq    #30,d0                             
  00b4a  a122                  _NewHandle                                  ; $a122
  00b4c  2648                  movea.l  a0,a3                              
  00b4e  701e                  moveq    #30,d0                             
  00b50  2252                  movea.l  (a2),a1                            
  00b52  207065b1ffff990a      movea.l  ([-$66f6,a0],d6.w*4,$0),a0         
  00b5a  a02e                  _BlockMove                                  ; $a02e
  00b5c  701e                  moveq    #30,d0                             
  00b5e  2253                  movea.l  (a3),a1                            
  00b60  207065b1ffff991e      movea.l  ([-$66e2,a0],d6.w*4,$0),a0         
  00b68  a02e                  _BlockMove                                  ; $a02e
  00b6a  3045                  movea.w  d5,a0                              
  00b6c  2008                  move.l   a0,d0                              
  00b6e  81fc0004              divs.w   #4,d0                              
  00b72  c1c6                  muls.w   d6,d0                              
  00b74  3205                  move.w   d5,d1                              
  00b76  9240                  sub.w    d0,d1                              
  00b78  2043                  movea.l  d3,a0                              
  00b7a  3081                  move.w   d1,(a0)                            
  00b7c  2052                  movea.l  (a2),a0                            
  00b7e  226e0010              movea.l  $10(a6),a1                         
  00b82  30280014              move.w   $14(a0),d0                         
  00b86  3280                  move.w   d0,(a1)                            
  00b88  3880                  move.w   d0,(a4)                            
  00b8a  2053                  movea.l  (a3),a0                            
  00b8c  226e0014              movea.l  $14(a6),a1                         
  00b90  30280014              move.w   $14(a0),d0                         
  00b94  3280                  move.w   d0,(a1)                            
  00b96  2044                  movea.l  d4,a0                              
  00b98  3080                  move.w   d0,(a0)                            
  00b9a  2043                  movea.l  d3,a0                              
  00b9c  2252                  movea.l  (a2),a1                            
  00b9e  30290012              move.w   $12(a1),d0                         
  00ba2  9050                  sub.w    (a0),d0                            
  00ba4  2047                  movea.l  d7,a0                              
  00ba6  3080                  move.w   d0,(a0)                            
  00ba8  2047                  movea.l  d7,a0                              
  00baa  2243                  movea.l  d3,a1                              
  00bac  3010                  move.w   (a0),d0                            
  00bae  d051                  add.w    (a1),d0                            
  00bb0  206e001c              movea.l  $1c(a6),a0                         
  00bb4  3080                  move.w   d0,(a0)                            
  00bb6  2243                  movea.l  d3,a1                              
  00bb8  3251                  movea.w  (a1),a1                            
  00bba  2009                  move.l   a1,d0                              
  00bbc  81fc0002              divs.w   #2,d0                              
  00bc0  2244                  movea.l  d4,a1                              
  00bc2  3211                  move.w   (a1),d1                            
  00bc4  9254                  sub.w    (a4),d1                            
  00bc6  48c1                  ext.l    d1                                 
  00bc8  83fc0002              divs.w   #2,d1                              
  00bcc  d254                  add.w    (a4),d1                            
  00bce  9240                  sub.w    d0,d1                              
  00bd0  3881                  move.w   d1,(a4)                            
  00bd2  2243                  movea.l  d3,a1                              
  00bd4  d251                  add.w    (a1),d1                            
  00bd6  2244                  movea.l  d4,a1                              
  00bd8  3281                  move.w   d1,(a1)                            
  00bda  4a46                  tst.w    d6                                 
  00bdc  661e                  bne.s    L0bfc                              
  00bde  2079ffff9382          movea.l  g_6c7e,a0                          
  00be4  30280014              move.w   $14(a0),d0                         
  00be8  9045                  sub.w    d5,d0                              
  00bea  2247                  movea.l  d7,a1                              
  00bec  3280                  move.w   d0,(a1)                            
  00bee  2079ffff9382          movea.l  g_6c7e,a0                          
  00bf4  226e001c              movea.l  $1c(a6),a1                         
  00bf8  32a80014              move.w   $14(a0),(a1)                       
L0bfc:
  00bfc  204a                  movea.l  a2,a0                              
  00bfe  a023                  _DisposeHandle                              ; $a023
  00c00  204b                  movea.l  a3,a0                              
  00c02  a023                  _DisposeHandle                              ; $a023
  00c04  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  00c08  4e5e                  unlk     a6                                 
  00c0a  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_0c0c   [jump table #190]
;----------------------------------------------------------------------
f6_0c0c:
  00c0c  4e560000              link     a6,#0                              
  00c10  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  00c14  3e2e0010              move.w   $10(a6),d7                         
  00c18  3c2e0012              move.w   $12(a6),d6                         
  00c1c  3a2e0014              move.w   $14(a6),d5                         
  00c20  286e0008              movea.l  $8(a6),a4                          
  00c24  302e000c              move.w   $c(a6),d0                          
  00c28  5c40                  addq.w   #6,d0                              
  00c2a  0c40000c              cmpi.w   #$c,d0                             
  00c2e  62000116              bhi.w    L0d46                              
  00c32  43fa011a              lea      L0d4e(pc),a1                       
  00c36  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  00c3a  4ed1                  jmp      (a1)                               
  00c3c  38bc0190              move.w   #$190,(a4)                         
  00c40  60000104              bra.w    L0d46                              
  00c44  302e000e              move.w   $e(a6),d0                          
  00c48  6b0000fc              bmi.w    L0d46                              
  00c4c  5d40                  subq.w   #6,d0                              
  00c4e  6a0000f6              bpl.w    L0d46                              
  00c52  5640                  addq.w   #3,d0                              
  00c54  6a08                  bpl.s    L0c5e                              
  00c56  38bc012c              move.w   #$12c,(a4)                         
  00c5a  600000ea              bra.w    L0d46                              
L0c5e:
  00c5e  3007                  move.w   d7,d0                              
  00c60  6712                  beq.s    L0c74                              
  00c62  6b0000e2              bmi.w    L0d46                              
  00c66  5740                  subq.w   #3,d0                              
  00c68  6726                  beq.s    L0c90                              
  00c6a  6a0000da              bpl.w    L0d46                              
  00c6e  5240                  addq.w   #1,d0                              
  00c70  6a14                  bpl.s    L0c86                              
  00c72  6008                  bra.s    L0c7c                              
L0c74:
  00c74  38bc012c              move.w   #$12c,(a4)                         
  00c78  600000cc              bra.w    L0d46                              
L0c7c:
  00c7c  3005                  move.w   d5,d0                              
  00c7e  9046                  sub.w    d6,d0                              
  00c80  3880                  move.w   d0,(a4)                            
  00c82  600000c2              bra.w    L0d46                              
L0c86:
  00c86  3005                  move.w   d5,d0                              
  00c88  9046                  sub.w    d6,d0                              
  00c8a  3880                  move.w   d0,(a4)                            
  00c8c  600000b8              bra.w    L0d46                              
L0c90:
  00c90  3005                  move.w   d5,d0                              
  00c92  9046                  sub.w    d6,d0                              
  00c94  3880                  move.w   d0,(a4)                            
  00c96  600000ae              bra.w    L0d46                              
  00c9a  302e000e              move.w   $e(a6),d0                          
  00c9e  6712                  beq.s    L0cb2                              
  00ca0  6b0000a4              bmi.w    L0d46                              
  00ca4  5540                  subq.w   #2,d0                              
  00ca6  6734                  beq.s    L0cdc                              
  00ca8  6b10                  bmi.s    L0cba                              
  00caa  5940                  subq.w   #4,d0                              
  00cac  6a000098              bpl.w    L0d46                              
  00cb0  6056                  bra.s    L0d08                              
L0cb2:
  00cb2  38bc00e6              move.w   #$e6,(a4)                          
  00cb6  6000008e              bra.w    L0d46                              
L0cba:
  00cba  3007                  move.w   d7,d0                              
  00cbc  670c                  beq.s    L0cca                              
  00cbe  6b000086              bmi.w    L0d46                              
  00cc2  5540                  subq.w   #2,d0                              
  00cc4  6a000080              bpl.w    L0d46                              
  00cc8  6006                  bra.s    L0cd0                              
L0cca:
  00cca  38bc00c8              move.w   #$c8,(a4)                          
  00cce  6076                  bra.s    L0d46                              
L0cd0:
  00cd0  3005                  move.w   d5,d0                              
  00cd2  9046                  sub.w    d6,d0                              
  00cd4  0640ffce              addi.w   #$ffce,d0                          
  00cd8  3880                  move.w   d0,(a4)                            
  00cda  606a                  bra.s    L0d46                              
L0cdc:
  00cdc  3007                  move.w   d7,d0                              
  00cde  670a                  beq.s    L0cea                              
  00ce0  6b64                  bmi.s    L0d46                              
  00ce2  5540                  subq.w   #2,d0                              
  00ce4  6716                  beq.s    L0cfc                              
  00ce6  6a5e                  bpl.s    L0d46                              
  00ce8  6006                  bra.s    L0cf0                              
L0cea:
  00cea  38bc00c8              move.w   #$c8,(a4)                          
  00cee  6056                  bra.s    L0d46                              
L0cf0:
  00cf0  3005                  move.w   d5,d0                              
  00cf2  9046                  sub.w    d6,d0                              
  00cf4  0640ffce              addi.w   #$ffce,d0                          
  00cf8  3880                  move.w   d0,(a4)                            
  00cfa  604a                  bra.s    L0d46                              
L0cfc:
  00cfc  3005                  move.w   d5,d0                              
  00cfe  9046                  sub.w    d6,d0                              
  00d00  0640ffe7              addi.w   #$ffe7,d0                          
  00d04  3880                  move.w   d0,(a4)                            
  00d06  603e                  bra.s    L0d46                              
L0d08:
  00d08  3007                  move.w   d7,d0                              
  00d0a  670e                  beq.s    L0d1a                              
  00d0c  6b38                  bmi.s    L0d46                              
  00d0e  5740                  subq.w   #3,d0                              
  00d10  6726                  beq.s    L0d38                              
  00d12  6a32                  bpl.s    L0d46                              
  00d14  5240                  addq.w   #1,d0                              
  00d16  6a14                  bpl.s    L0d2c                              
  00d18  6006                  bra.s    L0d20                              
L0d1a:
  00d1a  38bc00e6              move.w   #$e6,(a4)                          
  00d1e  6026                  bra.s    L0d46                              
L0d20:
  00d20  3005                  move.w   d5,d0                              
  00d22  9046                  sub.w    d6,d0                              
  00d24  0640ffce              addi.w   #$ffce,d0                          
  00d28  3880                  move.w   d0,(a4)                            
  00d2a  601a                  bra.s    L0d46                              
L0d2c:
  00d2c  3005                  move.w   d5,d0                              
  00d2e  9046                  sub.w    d6,d0                              
  00d30  0640ffe7              addi.w   #$ffe7,d0                          
  00d34  3880                  move.w   d0,(a4)                            
  00d36  600e                  bra.s    L0d46                              
L0d38:
  00d38  3005                  move.w   d5,d0                              
  00d3a  9046                  sub.w    d6,d0                              
  00d3c  0640fff6              addi.w   #$fff6,d0                          
  00d40  3880                  move.w   d0,(a4)                            
  00d42  6002                  bra.s    L0d46                              
  00d44  4254                  clr.w    (a4)                               
L0d46:
  00d46  4cdf10e0              movem.l  (a7)+,d5/d6/d7/a4                  
  00d4a  4e5e                  unlk     a6                                 
  00d4c  4e75                  rts                                         
  00d4e  feee                  dc.w     $feee                              
  00d50  feee                  dc.w     $feee                              
  00d52  feee                  dc.w     $feee                              
  00d54  feee                  dc.w     $feee                              
  00d56  fef6                  dc.w     $fef6                              
  00d58  ff4c                  dc.w     $ff4c                              
  00d5a  fff6                  dc.w     $fff6                              
  00d5c  ff4c                  dc.w     $ff4c                              
  00d5e  fef6                  dc.w     $fef6                              
  00d60  feee                  dc.w     $feee                              
  00d62  feee                  dc.w     $feee                              
  00d64  feee                  dc.w     $feee                              
  00d66  feee                  dc.w     $feee                              

;----------------------------------------------------------------------
; f6_0d68
;----------------------------------------------------------------------
f6_0d68:
  00d68  4e56ffce              link     a6,#-50                            
  00d6c  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  00d70  3e2e0008              move.w   $8(a6),d7                          
  00d74  3c2e000a              move.w   $a(a6),d6                          
  00d78  363c0096              move.w   #$96,d3                            
  00d7c  486effce              pea      -$32(a6)                           
  00d80  a874                  _GetPort                                    ; $a874
  00d82  42a7                  clr.l    -(a7)                              
  00d84  3f3c04b0              move.w   #$4b0,-(a7)                        
  00d88  a9bc                  _GetPicture                                 ; $a9bc
  00d8a  285f                  movea.l  (a7)+,a4                           
  00d8c  3f03                  move.w   d3,-(a7)                           
  00d8e  3f07                  move.w   d7,-(a7)                           
  00d90  486effd2              pea      -$2e(a6)                           
  00d94  486effd8              pea      -$28(a6)                           
  00d98  486effda              pea      -$26(a6)                           
  00d9c  486effd4              pea      -$2c(a6)                           
  00da0  486effd6              pea      -$2a(a6)                           
  00da4  486effdc              pea      -$24(a6)                           
  00da8  486effde              pea      -$22(a6)                           
  00dac  4ebafd74              jsr      f6_0b22                            
  00db0  486efff4              pea      -$c(a6)                            
  00db4  3f2effde              move.w   -$22(a6),-(a7)                     
  00db8  3f2effda              move.w   -$26(a6),-(a7)                     
  00dbc  3f2effdc              move.w   -$24(a6),-(a7)                     
  00dc0  3f2effd8              move.w   -$28(a6),-(a7)                     
  00dc4  a8a7                  _SetRect                                    ; $a8a7
  00dc6  3eaeffd4              move.w   -$2c(a6),(a7)                      
  00dca  3f2effd6              move.w   -$2a(a6),-(a7)                     
  00dce  3f07                  move.w   d7,-(a7)                           
  00dd0  3f2e000c              move.w   $c(a6),-(a7)                       
  00dd4  3f06                  move.w   d6,-(a7)                           
  00dd6  486effe2              pea      -$1e(a6)                           
  00dda  4ebafe30              jsr      f6_0c0c                            
  00dde  302effe2              move.w   -$1e(a6),d0                        
  00de2  c1c6                  muls.w   d6,d0                              
  00de4  3d40ffe2              move.w   d0,-$1e(a6)                        
  00de8  486efff4              pea      -$c(a6)                            
  00dec  3f00                  move.w   d0,-(a7)                           
  00dee  3f3c0014              move.w   #$14,-(a7)                         
  00df2  a8a8                  _OffsetRect                                 ; $a8a8
  00df4  4a79ffff8e08          tst.w    g_71f8                             
  00dfa  4fef002c              lea      $2c(a7),a7                         
  00dfe  6f58                  ble.s    L0e58                              
  00e00  7a01                  moveq    #1,d5                              
  00e02  604c                  bra.s    L0e50                              
L0e04:
  00e04  3045                  movea.w  d5,a0                              
  00e06  2008                  move.l   a0,d0                              
  00e08  81fc0002              divs.w   #2,d0                              
  00e0c  4840                  swap     d0                                 
  00e0e  4a40                  tst.w    d0                                 
  00e10  660c                  bne.s    L0e1e                              
  00e12  3045                  movea.w  d5,a0                              
  00e14  2008                  move.l   a0,d0                              
  00e16  81fc0002              divs.w   #2,d0                              
  00e1a  d040                  add.w    d0,d0                              
  00e1c  6018                  bra.s    L0e36                              
L0e1e:
  00e1e  3045                  movea.w  d5,a0                              
  00e20  2008                  move.l   a0,d0                              
  00e22  81fc0002              divs.w   #2,d0                              
  00e26  3045                  movea.w  d5,a0                              
  00e28  2208                  move.l   a0,d1                              
  00e2a  83fc0002              divs.w   #2,d1                              
  00e2e  5240                  addq.w   #1,d0                              
  00e30  d041                  add.w    d1,d0                              
  00e32  c1fcffff              muls.w   #$ffff,d0                          
L0e36:
  00e36  3800                  move.w   d0,d4                              
  00e38  486efff4              pea      -$c(a6)                            
  00e3c  302effdc              move.w   -$24(a6),d0                        
  00e40  906effde              sub.w    -$22(a6),d0                        
  00e44  5240                  addq.w   #1,d0                              
  00e46  c1c4                  muls.w   d4,d0                              
  00e48  3f00                  move.w   d0,-(a7)                           
  00e4a  4267                  clr.w    -(a7)                              
  00e4c  a8a8                  _OffsetRect                                 ; $a8a8
  00e4e  5245                  addq.w   #1,d5                              
L0e50:
  00e50  ba79ffff8e08          cmp.w    g_71f8,d5                          
  00e56  6fac                  ble.s    L0e04                              
L0e58:
  00e58  7005                  moveq    #5,d0                              
  00e5a  c1c7                  muls.w   d7,d0                              
  00e5c  7214                  moveq    #20,d1                             
  00e5e  9240                  sub.w    d0,d1                              
  00e60  3d41ffd2              move.w   d1,-$2e(a6)                        
  00e64  48c1                  ext.l    d1                                 
  00e66  83fc0004              divs.w   #4,d1                              
  00e6a  302efff8              move.w   -$8(a6),d0                         
  00e6e  906efff4              sub.w    -$c(a6),d0                         
  00e72  48c0                  ext.l    d0                                 
  00e74  81fc0002              divs.w   #2,d0                              
  00e78  d06efff4              add.w    -$c(a6),d0                         
  00e7c  9041                  sub.w    d1,d0                              
  00e7e  3d40ffda              move.w   d0,-$26(a6)                        
  00e82  322efffa              move.w   -$6(a6),d1                         
  00e86  926efff6              sub.w    -$a(a6),d1                         
  00e8a  48c1                  ext.l    d1                                 
  00e8c  83fc0002              divs.w   #2,d1                              
  00e90  d26efff6              add.w    -$a(a6),d1                         
  00e94  926effd2              sub.w    -$2e(a6),d1                        
  00e98  3d41ffde              move.w   d1,-$22(a6)                        
  00e9c  486effec              pea      -$14(a6)                           
  00ea0  3f01                  move.w   d1,-(a7)                           
  00ea2  3f00                  move.w   d0,-(a7)                           
  00ea4  d26effd2              add.w    -$2e(a6),d1                        
  00ea8  3f01                  move.w   d1,-(a7)                           
  00eaa  d06effd2              add.w    -$2e(a6),d0                        
  00eae  3f00                  move.w   d0,-(a7)                           
  00eb0  a8a7                  _SetRect                                    ; $a8a7
  00eb2  2f39ffff9a60          move.l   g_65a0,-(a7)                       
  00eb8  a873                  _SetPort                                    ; $a873
  00eba  486efff4              pea      -$c(a6)                            
  00ebe  a8a3                  _EraseRect                                  ; $a8a3
  00ec0  2f0c                  move.l   a4,-(a7)                           
  00ec2  486efff4              pea      -$c(a6)                            
  00ec6  a8f6                  _DrawPicture                                ; $a8f6
  00ec8  2079ffff9a60          movea.l  g_65a0,a0                          
  00ece  20680002              movea.l  $2(a0),a0                          
  00ed2  2f10                  move.l   (a0),-(a7)                         
  00ed4  2079ffff99f8          movea.l  g_6608,a0                          
  00eda  20680002              movea.l  $2(a0),a0                          
  00ede  2f10                  move.l   (a0),-(a7)                         
  00ee0  486efff4              pea      -$c(a6)                            
  00ee4  486efff4              pea      -$c(a6)                            
  00ee8  3f3c0024              move.w   #$24,-(a7)                         
  00eec  42a7                  clr.l    -(a7)                              
  00eee  a8ec                  _CopyBits                                   ; $a8ec
  00ef0  0c470001              cmpi.w   #1,d7                              
  00ef4  6c2a                  bge.s    L0f20                              
  00ef6  4a46                  tst.w    d6                                 
  00ef8  6626                  bne.s    L0f20                              
  00efa  5279ffff8e08          addq.w   #1,g_71f8                          
  00f00  3039ffff8e08          move.w   g_71f8,d0                          
  00f06  31ae000e03b0ffff97aa  move.w   $e(a6),(-$6856,za0,d0.w*2)         
  00f10  41f007b0ffff9622      lea      (-$69de,za0,d0.w*8),a0             
  00f18  20eeffec              move.l   -$14(a6),(a0)+                     
  00f1c  20eefff0              move.l   -$10(a6),(a0)+                     
L0f20:
  00f20  2f0c                  move.l   a4,-(a7)                           
  00f22  a9a3                  _ReleaseResource                            ; $a9a3
  00f24  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  00f28  4e5e                  unlk     a6                                 
  00f2a  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_0f2c
;----------------------------------------------------------------------
f6_0f2c:
  00f2c  4e56ffd6              link     a6,#-42                            
  00f30  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  00f34  3e2e0008              move.w   $8(a6),d7                          
  00f38  3c2e000a              move.w   $a(a6),d6                          
  00f3c  363c0082              move.w   #$82,d3                            
  00f40  42a7                  clr.l    -(a7)                              
  00f42  3f3c0514              move.w   #$514,-(a7)                        
  00f46  a9bc                  _GetPicture                                 ; $a9bc
  00f48  285f                  movea.l  (a7)+,a4                           
  00f4a  3f03                  move.w   d3,-(a7)                           
  00f4c  3f07                  move.w   d7,-(a7)                           
  00f4e  486effd6              pea      -$2a(a6)                           
  00f52  486effdc              pea      -$24(a6)                           
  00f56  486effde              pea      -$22(a6)                           
  00f5a  486effd8              pea      -$28(a6)                           
  00f5e  486effda              pea      -$26(a6)                           
  00f62  486effe0              pea      -$20(a6)                           
  00f66  486effe2              pea      -$1e(a6)                           
  00f6a  4ebafbb6              jsr      f6_0b22                            
  00f6e  486efff8              pea      -$8(a6)                            
  00f72  3f2effe2              move.w   -$1e(a6),-(a7)                     
  00f76  3f2effde              move.w   -$22(a6),-(a7)                     
  00f7a  3f2effe0              move.w   -$20(a6),-(a7)                     
  00f7e  3f2effdc              move.w   -$24(a6),-(a7)                     
  00f82  a8a7                  _SetRect                                    ; $a8a7
  00f84  486efff8              pea      -$8(a6)                            
  00f88  48780014              pea      ($14).w                            
  00f8c  a8a9                  _InsetRect                                  ; $a8a9
  00f8e  3eaeffd8              move.w   -$28(a6),(a7)                      
  00f92  3f2effda              move.w   -$26(a6),-(a7)                     
  00f96  3f07                  move.w   d7,-(a7)                           
  00f98  3f2e000c              move.w   $c(a6),-(a7)                       
  00f9c  3f06                  move.w   d6,-(a7)                           
  00f9e  486effe6              pea      -$1a(a6)                           
  00fa2  4ebafc68              jsr      f6_0c0c                            
  00fa6  302effe6              move.w   -$1a(a6),d0                        
  00faa  c1c6                  muls.w   d6,d0                              
  00fac  3d40ffe6              move.w   d0,-$1a(a6)                        
  00fb0  486efff8              pea      -$8(a6)                            
  00fb4  3f00                  move.w   d0,-(a7)                           
  00fb6  3f3c0014              move.w   #$14,-(a7)                         
  00fba  a8a8                  _OffsetRect                                 ; $a8a8
  00fbc  4a79ffff8e08          tst.w    g_71f8                             
  00fc2  4fef002c              lea      $2c(a7),a7                         
  00fc6  6f58                  ble.s    L1020                              
  00fc8  7a01                  moveq    #1,d5                              
  00fca  604c                  bra.s    L1018                              
L0fcc:
  00fcc  3045                  movea.w  d5,a0                              
  00fce  2008                  move.l   a0,d0                              
  00fd0  81fc0002              divs.w   #2,d0                              
  00fd4  4840                  swap     d0                                 
  00fd6  4a40                  tst.w    d0                                 
  00fd8  660c                  bne.s    L0fe6                              
  00fda  3045                  movea.w  d5,a0                              
  00fdc  2008                  move.l   a0,d0                              
  00fde  81fc0002              divs.w   #2,d0                              
  00fe2  d040                  add.w    d0,d0                              
  00fe4  6018                  bra.s    L0ffe                              
L0fe6:
  00fe6  3045                  movea.w  d5,a0                              
  00fe8  2008                  move.l   a0,d0                              
  00fea  81fc0002              divs.w   #2,d0                              
  00fee  3045                  movea.w  d5,a0                              
  00ff0  2208                  move.l   a0,d1                              
  00ff2  83fc0002              divs.w   #2,d1                              
  00ff6  5240                  addq.w   #1,d0                              
  00ff8  d041                  add.w    d1,d0                              
  00ffa  c1fcffff              muls.w   #$ffff,d0                          
L0ffe:
  00ffe  3800                  move.w   d0,d4                              
  01000  486efff8              pea      -$8(a6)                            
  01004  302effe0              move.w   -$20(a6),d0                        
  01008  906effe2              sub.w    -$1e(a6),d0                        
  0100c  5240                  addq.w   #1,d0                              
  0100e  c1c4                  muls.w   d4,d0                              
  01010  3f00                  move.w   d0,-(a7)                           
  01012  4267                  clr.w    -(a7)                              
  01014  a8a8                  _OffsetRect                                 ; $a8a8
  01016  5245                  addq.w   #1,d5                              
L1018:
  01018  ba79ffff8e08          cmp.w    g_71f8,d5                          
  0101e  6fac                  ble.s    L0fcc                              
L1020:
  01020  2f39ffff9a60          move.l   g_65a0,-(a7)                       
  01026  a873                  _SetPort                                    ; $a873
  01028  486efff8              pea      -$8(a6)                            
  0102c  a8a3                  _EraseRect                                  ; $a8a3
  0102e  2f0c                  move.l   a4,-(a7)                           
  01030  486efff8              pea      -$8(a6)                            
  01034  a8f6                  _DrawPicture                                ; $a8f6
  01036  2079ffff9a60          movea.l  g_65a0,a0                          
  0103c  20680002              movea.l  $2(a0),a0                          
  01040  2f10                  move.l   (a0),-(a7)                         
  01042  2079ffff99f8          movea.l  g_6608,a0                          
  01048  20680002              movea.l  $2(a0),a0                          
  0104c  2f10                  move.l   (a0),-(a7)                         
  0104e  486efff8              pea      -$8(a6)                            
  01052  486efff8              pea      -$8(a6)                            
  01056  3f3c0024              move.w   #$24,-(a7)                         
  0105a  42a7                  clr.l    -(a7)                              
  0105c  a8ec                  _CopyBits                                   ; $a8ec
  0105e  0c470001              cmpi.w   #1,d7                              
  01062  6c2a                  bge.s    L108e                              
  01064  4a46                  tst.w    d6                                 
  01066  6626                  bne.s    L108e                              
  01068  5279ffff8e08          addq.w   #1,g_71f8                          
  0106e  3039ffff8e08          move.w   g_71f8,d0                          
  01074  31ae000e03b0ffff97aa  move.w   $e(a6),(-$6856,za0,d0.w*2)         
  0107e  41f007b0ffff9622      lea      (-$69de,za0,d0.w*8),a0             
  01086  20eefff8              move.l   -$8(a6),(a0)+                      
  0108a  20eefffc              move.l   -$4(a6),(a0)+                      
L108e:
  0108e  2f0c                  move.l   a4,-(a7)                           
  01090  a9a3                  _ReleaseResource                            ; $a9a3
  01092  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  01096  4e5e                  unlk     a6                                 
  01098  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_109a   [jump table #191]
;----------------------------------------------------------------------
f6_109a:
  0109a  4e56fff0              link     a6,#-16                            
  0109e  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  010a2  3f3c0064              move.w   #$64,-(a7)                         
  010a6  4ead0242              jsr      f2_79a8                            
  010aa  0c40003c              cmpi.w   #$3c,d0                            
  010ae  548f                  addq.l   #2,a7                              
  010b0  6f000330              ble.w    L13e2                              
  010b4  43eefff0              lea      -$10(a6),a1                        
  010b8  307c0019              movea.w  #$19,a0                            
  010bc  a03b                  _Delay                                      ; $a03b
  010be  2280                  move.l   d0,(a1)                            
  010c0  302e0008              move.w   $8(a6),d0                          
  010c4  0c400006              cmpi.w   #6,d0                              
  010c8  62000322              bhi.w    L13ec                              
  010cc  43fa0342              lea      L1410(pc),a1                       
  010d0  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  010d4  4ed1                  jmp      (a1)                               
  010d6  3f3c080c              move.w   #$80c,-(a7)                        
  010da  4ead030a              jsr      f3_4238                            
  010de  5879ffff837e          addq.w   #4,g_7c82                          
  010e4  5879ffff8380          addq.w   #4,g_7c80                          
  010ea  3ebc0014              move.w   #$14,(a7)                          
  010ee  4ead0242              jsr      f2_79a8                            
  010f2  0640000a              addi.w   #$a,d0                             
  010f6  d179ffff8370          add.w    d0,g_7c90                          
  010fc  33f9ffff8370ffff8372  move.w   g_7c90,g_7c8e                      
  01106  4ead01d2              jsr      f2_6b9e                            
  0110a  548f                  addq.l   #2,a7                              
  0110c  600002de              bra.w    L13ec                              
  01110  3f3c0816              move.w   #$816,-(a7)                        
  01114  4ead030a              jsr      f3_4238                            
  01118  5979ffff837e          subq.w   #4,g_7c82                          
  0111e  5979ffff8380          subq.w   #4,g_7c80                          
  01124  3ebc000a              move.w   #$a,(a7)                           
  01128  4ead0242              jsr      f2_79a8                            
  0112c  5b40                  subq.w   #5,d0                              
  0112e  9179ffff8370          sub.w    d0,g_7c90                          
  01134  0c790001ffff8370      cmpi.w   #1,g_7c90                          
  0113c  548f                  addq.l   #2,a7                              
  0113e  6c08                  bge.s    L1148                              
  01140  33fc0002ffff8370      move.w   #2,g_7c90                          
L1148:
  01148  33f9ffff8370ffff8372  move.w   g_7c90,g_7c8e                      
  01152  4ead01d2              jsr      f2_6b9e                            
  01156  60000294              bra.w    L13ec                              
  0115a  3f3c0802              move.w   #$802,-(a7)                        
  0115e  4ead030a              jsr      f3_4238                            
  01162  4279ffff8da2          clr.w    g_725e                             
  01168  4279ffff8da0          clr.w    g_7260                             
  0116e  4279ffff8da4          clr.w    g_725c                             
  01174  33fc0001ffff8da6      move.w   #1,g_725a                          
  0117c  4279ffff8da8          clr.w    g_7258                             
  01182  4279ffff8dac          clr.w    g_7254                             
  01188  4279ffff8db2          clr.w    g_724e                             
  0118e  4279ffff8db8          clr.w    g_7248                             
  01194  4279ffff8dba          clr.w    g_7246                             
  0119a  4279ffff8dbc          clr.w    g_7244                             
  011a0  4279ffff8dbe          clr.w    g_7242                             
  011a6  42b9ffff83a6          clr.l    g_7c5a                             
  011ac  4279ffff8392          clr.w    g_7c6e                             
  011b2  33fc0006ffff83a0      move.w   #6,g_7c60                          
  011ba  33fc0006ffff83a2      move.w   #6,g_7c5e                          
  011c2  4279ffff837e          clr.w    g_7c82                             
  011c8  4279ffff8380          clr.w    g_7c80                             
  011ce  4279ffff8db0          clr.w    g_7250                             
  011d4  4279ffff8db6          clr.w    g_724a                             
  011da  7e00                  moveq    #0,d7                              
  011dc  548f                  addq.l   #2,a7                              
  011de  600a                  bra.s    L11ea                              
L11e0:
  011e0  423071b0ffff9858      clr.b    (-$67a8,za0,d7.w)                  
  011e8  5247                  addq.w   #1,d7                              
L11ea:
  011ea  0c470005              cmpi.w   #5,d7                              
  011ee  6ff0                  ble.s    L11e0                              
  011f0  7e00                  moveq    #0,d7                              
  011f2  600a                  bra.s    L11fe                              
L11f4:
  011f4  427073b0ffff97d2      clr.w    (-$682e,za0,d7.w*2)                
  011fc  5247                  addq.w   #1,d7                              
L11fe:
  011fe  0c470006              cmpi.w   #6,d7                              
  01202  6ff0                  ble.s    L11f4                              
  01204  7e00                  moveq    #0,d7                              
  01206  600a                  bra.s    L1212                              
L1208:
  01208  423071b0ffff8df5      clr.b    (-$720b,za0,d7.w)                  
  01210  5247                  addq.w   #1,d7                              
L1212:
  01212  0c470004              cmpi.w   #4,d7                              
  01216  6ff0                  ble.s    L1208                              
  01218  4ead01d2              jsr      f2_6b9e                            
  0121c  4ead05c2              jsr      f5_3984                            
  01220  4ead073a              jsr      f7_2bb6                            
  01224  4ead075a              jsr      f7_31f0                            
  01228  3f39ffff8894          move.w   g_776c,-(a7)                       
  0122e  4ead043a              jsr      f4_460e                            
  01232  3a39ffff8894          move.w   g_776c,d5                          
  01238  7e00                  moveq    #0,d7                              
  0123a  548f                  addq.l   #2,a7                              
  0123c  60000094              bra.w    L12d2                              
L1240:
  01240  4227                  clr.b    -(a7)                              
  01242  3f3073b0ffff3b00      move.w   (-$c500,za0,d7.w*2),-(a7)          
  0124a  4ead0412              jsr      f4_411c                            
  0124e  7600                  moveq    #0,d3                              
  01250  588f                  addq.l   #4,a7                              
L1252:
  01252  3f39ffff883e          move.w   g_77c2,-(a7)                       
  01258  4ead0242              jsr      f2_79a8                            
  0125c  3800                  move.w   d0,d4                              
  0125e  548f                  addq.l   #2,a7                              
  01260  4a7043b0ffff8ba6      tst.w    (-$745a,za0,d4.w*2)                
  01268  66e8                  bne.s    L1252                              
  0126a  3007                  move.w   d7,d0                              
  0126c  06401f40              addi.w   #$1f40,d0                          
  01270  318043b0ffff8b7c      move.w   d0,(-$7484,za0,d4.w*2)             
  01278  7048                  moveq    #72,d0                             
  0127a  d047                  add.w    d7,d0                              
  0127c  318043b0ffff8ba6      move.w   d0,(-$745a,za0,d4.w*2)             
  01284  3f04                  move.w   d4,-(a7)                           
  01286  486efff8              pea      -$8(a6)                            
  0128a  486efffa              pea      -$6(a6)                            
  0128e  486efffc              pea      -$4(a6)                            
  01292  486efffe              pea      -$2(a6)                            
  01296  4ead049a              jsr      f4_6754                            
  0129a  3eaefff8              move.w   -$8(a6),(a7)                       
  0129e  3f2efffa              move.w   -$6(a6),-(a7)                      
  012a2  3f2efffc              move.w   -$4(a6),-(a7)                      
  012a6  3f2efffe              move.w   -$2(a6),-(a7)                      
  012aa  3f04                  move.w   d4,-(a7)                           
  012ac  487043b0ffff8d74      pea      (-$728c,za0,d4.w*2)                
  012b4  487043b0ffff8d4a      pea      (-$72b6,za0,d4.w*2)                
  012bc  4ead0482              jsr      f4_66fa                            
  012c0  7601                  moveq    #1,d3                              
  012c2  3eb9ffff8894          move.w   g_776c,(a7)                        
  012c8  4ead043a              jsr      f4_460e                            
  012cc  4fef0022              lea      $22(a7),a7                         
  012d0  5247                  addq.w   #1,d7                              
L12d2:
  012d2  0c470004              cmpi.w   #4,d7                              
  012d6  6d00ff68              blt.w    L1240                              
  012da  4227                  clr.b    -(a7)                              
  012dc  3f05                  move.w   d5,-(a7)                           
  012de  4ead0412              jsr      f4_411c                            
  012e2  588f                  addq.l   #4,a7                              
  012e4  60000106              bra.w    L13ec                              
  012e8  3f39ffff8894          move.w   g_776c,-(a7)                       
  012ee  4ead043a              jsr      f4_460e                            
  012f2  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  012f8  4ead0532              jsr      f5_146e                            
  012fc  2eb9ffff8fb6          move.l   g_704a,(a7)                        
  01302  4ead0532              jsr      f5_146e                            
  01306  2eb9ffff8fd2          move.l   g_702e,(a7)                        
  0130c  4ead0532              jsr      f5_146e                            
  01310  4ead0462              jsr      f4_5cd0                            
  01314  7c0a                  moveq    #10,d6                             
  01316  3ebc0002              move.w   #2,(a7)                            
  0131a  4ead0242              jsr      f2_79a8                            
  0131e  5540                  subq.w   #2,d0                              
  01320  5c8f                  addq.l   #6,a7                              
  01322  6c02                  bge.s    L1326                              
  01324  4446                  neg.w    d6                                 
L1326:
  01326  dd79ffff8894          add.w    d6,g_776c                          
  0132c  0c790001ffff8894      cmpi.w   #1,g_776c                          
  01334  6c08                  bge.s    L133e                              
  01336  33fc0001ffff8894      move.w   #1,g_776c                          
L133e:
  0133e  0c790014ffff8894      cmpi.w   #$14,g_776c                        
  01346  6f08                  ble.s    L1350                              
  01348  33fc0014ffff8894      move.w   #$14,g_776c                        
L1350:
  01350  4227                  clr.b    -(a7)                              
  01352  3f39ffff8894          move.w   g_776c,-(a7)                       
  01358  4ead0412              jsr      f4_411c                            
  0135c  4a46                  tst.w    d6                                 
  0135e  588f                  addq.l   #4,a7                              
  01360  6c0a                  bge.s    L136c                              
  01362  4227                  clr.b    -(a7)                              
  01364  4ead039a              jsr      f3_5578                            
  01368  548f                  addq.l   #2,a7                              
  0136a  600a                  bra.s    L1376                              
L136c:
  0136c  1f3c0001              move.b   #1,-(a7)                           
  01370  4ead039a              jsr      f3_5578                            
  01374  548f                  addq.l   #2,a7                              
L1376:
  01376  4239ffff8ded          clr.b    g_7213                             
  0137c  4239ffff8df4          clr.b    g_720c                             
  01382  33fc0002ffff883a      move.w   #2,g_77c6                          
  0138a  4279ffff883c          clr.w    g_77c4                             
  01390  605a                  bra.s    L13ec                              
  01392  7e00                  moveq    #0,d7                              
  01394  6012                  bra.s    L13a8                              
L1396:
  01396  700a                  moveq    #10,d0                             
  01398  d079ffff8894          add.w    g_776c,d0                          
  0139e  d17073b0ffff8e3e      add.w    d0,(-$71c2,za0,d7.w*2)             
  013a6  5247                  addq.w   #1,d7                              
L13a8:
  013a8  0c470005              cmpi.w   #5,d7                              
  013ac  6de8                  blt.s    L1396                              
  013ae  3f3c082a              move.w   #$82a,-(a7)                        
  013b2  4ead030a              jsr      f3_4238                            
  013b6  548f                  addq.l   #2,a7                              
  013b8  6032                  bra.s    L13ec                              
  013ba  3f3c0bb8              move.w   #$bb8,-(a7)                        
  013be  4ead030a              jsr      f3_4238                            
  013c2  5679ffff8376          addq.w   #3,g_7c8a                          
  013c8  5679ffff8378          addq.w   #3,g_7c88                          
  013ce  5679ffff8382          addq.w   #3,g_7c7e                          
  013d4  5679ffff837c          addq.w   #3,g_7c84                          
  013da  4ead01d2              jsr      f2_6b9e                            
  013de  548f                  addq.l   #2,a7                              
  013e0  600a                  bra.s    L13ec                              
L13e2:
  013e2  3f3c0801              move.w   #$801,-(a7)                        
  013e6  4ead030a              jsr      f3_4238                            
  013ea  548f                  addq.l   #2,a7                              
L13ec:
  013ec  4ead0312              jsr      f3_4384                            
  013f0  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  013f8  4ead01ca              jsr      f2_6b56                            
  013fc  4a39ffff8dfb          tst.b    g_7205                             
  01402  6604                  bne.s    L1408                              
  01404  4ead032a              jsr      f3_44be                            
L1408:
  01408  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  0140c  4e5e                  unlk     a6                                 
  0140e  4e75                  rts                                         
  01410  ffdc                  dc.w     $ffdc                              
  01412  fcc6                  dc.w     $fcc6                              
  01414  fd00                  dc.w     $fd00                              
  01416  fd4a                  dc.w     $fd4a                              
  01418  fed8                  dc.w     $fed8                              
  0141a  ff82                  dc.w     $ff82                              
  0141c  ffaa                  dc.w     $ffaa                              

;----------------------------------------------------------------------
; f6_141e   [jump table #192]
;----------------------------------------------------------------------
f6_141e:
  0141e  4e56fff8              link     a6,#-8                             
  01422  48e70300              movem.l  d6/d7,-(a7)                        
  01426  3f3c0064              move.w   #$64,-(a7)                         
  0142a  4ead0242              jsr      f2_79a8                            
  0142e  0c40003c              cmpi.w   #$3c,d0                            
  01432  548f                  addq.l   #2,a7                              
  01434  6f0001d2              ble.w    L1608                              
  01438  43eefff8              lea      -$8(a6),a1                         
  0143c  307c0014              movea.w  #$14,a0                            
  01440  a03b                  _Delay                                      ; $a03b
  01442  2280                  move.l   d0,(a1)                            
  01444  302e0008              move.w   $8(a6),d0                          
  01448  0c400006              cmpi.w   #6,d0                              
  0144c  620001c4              bhi.w    L1612                              
  01450  43fa01e0              lea      L1632(pc),a1                       
  01454  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  01458  4ed1                  jmp      (a1)                               
  0145a  3f3c0bc2              move.w   #$bc2,-(a7)                        
  0145e  4ead030a              jsr      f3_4238                            
  01462  06b900000bb8ffff83a6  addi.l   #$bb8,g_7c5a                       
  0146c  4ead01ba              jsr      f2_6a8c                            
  01470  548f                  addq.l   #2,a7                              
  01472  6000019e              bra.w    L1612                              
  01476  3f3c0bcc              move.w   #$bcc,-(a7)                        
  0147a  4ead030a              jsr      f3_4238                            
  0147e  4279ffff8db8          clr.w    g_7248                             
  01484  4279ffff8dbc          clr.w    g_7244                             
  0148a  4279ffff8dba          clr.w    g_7246                             
  01490  7e00                  moveq    #0,d7                              
  01492  548f                  addq.l   #2,a7                              
  01494  600a                  bra.s    L14a0                              
L1496:
  01496  423071b0ffff9858      clr.b    (-$67a8,za0,d7.w)                  
  0149e  5247                  addq.w   #1,d7                              
L14a0:
  014a0  0c470005              cmpi.w   #5,d7                              
  014a4  6ff0                  ble.s    L1496                              
  014a6  7e00                  moveq    #0,d7                              
  014a8  600a                  bra.s    L14b4                              
L14aa:
  014aa  427073b0ffff97d2      clr.w    (-$682e,za0,d7.w*2)                
  014b2  5247                  addq.w   #1,d7                              
L14b4:
  014b4  0c470006              cmpi.w   #6,d7                              
  014b8  6ff0                  ble.s    L14aa                              
  014ba  7e00                  moveq    #0,d7                              
  014bc  600a                  bra.s    L14c8                              
L14be:
  014be  423071b0ffff8df5      clr.b    (-$720b,za0,d7.w)                  
  014c6  5247                  addq.w   #1,d7                              
L14c8:
  014c8  0c470004              cmpi.w   #4,d7                              
  014cc  6ff0                  ble.s    L14be                              
  014ce  4ead01d2              jsr      f2_6b9e                            
  014d2  6000013e              bra.w    L1612                              
  014d6  7e01                  moveq    #1,d7                              
  014d8  601a                  bra.s    L14f4                              
L14da:
  014da  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  014e2  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  014ea  427073b0ffff8c78      clr.w    (-$7388,za0,d7.w*2)                
  014f2  5247                  addq.w   #1,d7                              
L14f4:
  014f4  be79ffff883e          cmp.w    g_77c2,d7                          
  014fa  6fde                  ble.s    L14da                              
  014fc  3f3c0bd6              move.w   #$bd6,-(a7)                        
  01500  4ead030a              jsr      f3_4238                            
  01504  548f                  addq.l   #2,a7                              
  01506  6000010a              bra.w    L1612                              
  0150a  3f39ffff8894          move.w   g_776c,-(a7)                       
  01510  4ead043a              jsr      f4_460e                            
  01514  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  0151a  4ead0532              jsr      f5_146e                            
  0151e  2eb9ffff8fb6          move.l   g_704a,(a7)                        
  01524  4ead0532              jsr      f5_146e                            
  01528  2eb9ffff8fd2          move.l   g_702e,(a7)                        
  0152e  4ead0532              jsr      f5_146e                            
  01532  3ebc0802              move.w   #$802,(a7)                         
  01536  4ead030a              jsr      f3_4238                            
  0153a  4ead00c2              jsr      f2_1800                            
  0153e  3e00                  move.w   d0,d7                              
  01540  be79ffff8894          cmp.w    g_776c,d7                          
  01546  5c8f                  addq.l   #6,a7                              
  01548  6c04                  bge.s    L154e                              
  0154a  7cff                  moveq    #-1,d6                             
  0154c  6002                  bra.s    L1550                              
L154e:
  0154e  7c01                  moveq    #1,d6                              
L1550:
  01550  4ead0462              jsr      f4_5cd0                            
  01554  33c7ffff8894          move.w   d7,g_776c                          
  0155a  0c790001ffff8894      cmpi.w   #1,g_776c                          
  01562  6c08                  bge.s    L156c                              
  01564  33fc0001ffff8894      move.w   #1,g_776c                          
L156c:
  0156c  0c790014ffff8894      cmpi.w   #$14,g_776c                        
  01574  6f08                  ble.s    L157e                              
  01576  33fc0014ffff8894      move.w   #$14,g_776c                        
L157e:
  0157e  4227                  clr.b    -(a7)                              
  01580  3f39ffff8894          move.w   g_776c,-(a7)                       
  01586  4ead0412              jsr      f4_411c                            
  0158a  4a46                  tst.w    d6                                 
  0158c  588f                  addq.l   #4,a7                              
  0158e  6c0a                  bge.s    L159a                              
  01590  4227                  clr.b    -(a7)                              
  01592  4ead039a              jsr      f3_5578                            
  01596  548f                  addq.l   #2,a7                              
  01598  600a                  bra.s    L15a4                              
L159a:
  0159a  1f3c0001              move.b   #1,-(a7)                           
  0159e  4ead039a              jsr      f3_5578                            
  015a2  548f                  addq.l   #2,a7                              
L15a4:
  015a4  4239ffff8ded          clr.b    g_7213                             
  015aa  4239ffff8df4          clr.b    g_720c                             
  015b0  33fc0002ffff883a      move.w   #2,g_77c6                          
  015b8  4279ffff883c          clr.w    g_77c4                             
  015be  6052                  bra.s    L1612                              
  015c0  3f3c0bea              move.w   #$bea,-(a7)                        
  015c4  4ead030a              jsr      f3_4238                            
  015c8  7e01                  moveq    #1,d7                              
  015ca  548f                  addq.l   #2,a7                              
  015cc  601c                  bra.s    L15ea                              
L15ce:
  015ce  4a7073b0ffff8c78      tst.w    (-$7388,za0,d7.w*2)                
  015d6  6f10                  ble.s    L15e8                              
  015d8  e3f073b0ffff8ccc      lsl.w    (-$7334,za0,d7.w*2)                
  015e0  e3f073b0ffff8cf6      lsl.w    (-$730a,za0,d7.w*2)                
L15e8:
  015e8  5247                  addq.w   #1,d7                              
L15ea:
  015ea  be79ffff883e          cmp.w    g_77c2,d7                          
  015f0  6fdc                  ble.s    L15ce                              
  015f2  601e                  bra.s    L1612                              
  015f4  3f3c0bf4              move.w   #$bf4,-(a7)                        
  015f8  4ead030a              jsr      f3_4238                            
  015fc  1ebc0001              move.b   #1,(a7)                            
  01600  4ead03d2              jsr      f4_0a1a                            
  01604  548f                  addq.l   #2,a7                              
  01606  600a                  bra.s    L1612                              
L1608:
  01608  3f3c0801              move.w   #$801,-(a7)                        
  0160c  4ead030a              jsr      f3_4238                            
  01610  548f                  addq.l   #2,a7                              
L1612:
  01612  4ead0312              jsr      f3_4384                            
  01616  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  0161e  4a39ffff8dfb          tst.b    g_7205                             
  01624  6604                  bne.s    L162a                              
  01626  4ead032a              jsr      f3_44be                            
L162a:
  0162a  4cdf00c0              movem.l  (a7)+,d6/d7                        
  0162e  4e5e                  unlk     a6                                 
  01630  4e75                  rts                                         
  01632  ffe0                  dc.w     $ffe0                              
  01634  fe28                  dc.w     $fe28                              
  01636  fe44                  dc.w     $fe44                              
  01638  fea4                  dc.w     $fea4                              
  0163a  fed8                  dc.w     $fed8                              
  0163c  ff8e                  dc.w     $ff8e                              
  0163e  ffc2                  dc.w     $ffc2                              

;----------------------------------------------------------------------
; f6_1640   [jump table #193]
;----------------------------------------------------------------------
f6_1640:
  01640  4e56fe54              link     a6,#-428                           
  01644  2f0c                  move.l   a4,-(a7)                           
  01646  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  0164c  a851                  _SetCursor                                  ; $a851
  0164e  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  01654  486efe54              pea      -$1ac(a6)                          
  01658  a919                  _GetWTitle                                  ; $a919
  0165a  486efe54              pea      -$1ac(a6)                          
  0165e  2f3c00001164          move.l   STR_1164,-(a7)                     ; "?"
  01664  2f3c00001166          move.l   STR_1166,-(a7)                     ; "?"
  0166a  2f3c00001168          move.l   STR_1168,-(a7)                     ; "?"
  01670  a98b                  _ParamText                                  ; $a98b
  01672  42a7                  clr.l    -(a7)                              
  01674  3f3c0168              move.w   #$168,-(a7)                        
  01678  486eff56              pea      -$aa(a6)                           
  0167c  4878ffff              pea      ($ffff).w                          
  01680  a97c                  _GetNewDialog                               ; $a97c
  01682  285f                  movea.l  (a7)+,a4                           
  01684  2f0c                  move.l   a4,-(a7)                           
  01686  4ead06ba              jsr      f7_161c                            
  0168a  2e8c                  move.l   a4,(a7)                            
  0168c  a915                  _ShowWindow                                 ; $a915
L168e:
  0168e  42a7                  clr.l    -(a7)                              
  01690  486eff54              pea      -$ac(a6)                           
  01694  a991                  _ModalDialog                                ; $a991
  01696  0c6e0002ff54          cmpi.w   #2,-$ac(a6)                        
  0169c  6df0                  blt.s    L168e                              
  0169e  13fc0001ffff8df3      move.b   #1,g_720d                          
  016a6  33fc0001ffff8e48      move.w   #1,g_71b8                          
  016ae  4239ffff3b0c          clr.b    g_c4f4                             
  016b4  4ead032a              jsr      f3_44be                            
  016b8  2f0c                  move.l   a4,-(a7)                           
  016ba  a983                  _DisposeDialog                              ; $a983
  016bc  4ead074a              jsr      f7_2f40                            
  016c0  302e0008              move.w   $8(a6),d0                          
  016c4  427003b0ffff8b7c      clr.w    (-$7484,za0,d0.w*2)                
  016cc  427003b0ffff8ba6      clr.w    (-$745a,za0,d0.w*2)                
  016d4  285f                  movea.l  (a7)+,a4                           
  016d6  4e5e                  unlk     a6                                 
  016d8  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_16da   [jump table #194]
;----------------------------------------------------------------------
f6_16da:
  016da  4e56fc54              link     a6,#-940                           
  016de  2f0c                  move.l   a4,-(a7)                           
  016e0  426efc54              clr.w    -$3ac(a6)                          
  016e4  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  016ea  486efc56              pea      -$3aa(a6)                          
  016ee  a919                  _GetWTitle                                  ; $a919
  016f0  0c6e015e000a          cmpi.w   #$15e,$a(a6)                       
  016f6  661e                  bne.s    L1716                              
  016f8  486efe56              pea      -$1aa(a6)                          
  016fc  2f3c0001015e          move.l   #$1015e,-(a7)                      
  01702  4ead0522              jsr      f4_153c                            
  01706  486efd56              pea      -$2aa(a6)                          
  0170a  2f3c0003015e          move.l   #$3015e,-(a7)                      
  01710  4ead0522              jsr      f4_153c                            
  01714  601c                  bra.s    L1732                              
L1716:
  01716  486efe56              pea      -$1aa(a6)                          
  0171a  2f3c0002015e          move.l   #$2015e,-(a7)                      
  01720  4ead0522              jsr      f4_153c                            
  01724  486efd56              pea      -$2aa(a6)                          
  01728  2f3c0004015e          move.l   #$4015e,-(a7)                      
  0172e  4ead0522              jsr      f4_153c                            
L1732:
  01732  486efc56              pea      -$3aa(a6)                          
  01736  486efe56              pea      -$1aa(a6)                          
  0173a  486efd56              pea      -$2aa(a6)                          
  0173e  2f3c0000116a          move.l   STR_116a,-(a7)                     ; "?"
  01744  a98b                  _ParamText                                  ; $a98b
  01746  42a7                  clr.l    -(a7)                              
  01748  3f3c015e              move.w   #$15e,-(a7)                        
  0174c  486eff56              pea      -$aa(a6)                           
  01750  4878ffff              pea      ($ffff).w                          
  01754  a97c                  _GetNewDialog                               ; $a97c
  01756  285f                  movea.l  (a7)+,a4                           
  01758  2f0c                  move.l   a4,-(a7)                           
  0175a  4ead06ba              jsr      f7_161c                            
  0175e  2e8c                  move.l   a4,(a7)                            
  01760  a915                  _ShowWindow                                 ; $a915
L1762:
  01762  42a7                  clr.l    -(a7)                              
  01764  486efc54              pea      -$3ac(a6)                          
  01768  a991                  _ModalDialog                                ; $a991
  0176a  0c6e0002fc54          cmpi.w   #2,-$3ac(a6)                       
  01770  6df0                  blt.s    L1762                              
  01772  2f0c                  move.l   a4,-(a7)                           
  01774  a983                  _DisposeDialog                              ; $a983
  01776  302e000a              move.w   $a(a6),d0                          
  0177a  6b56                  bmi.s    L17d2                              
  0177c  0440015f              subi.w   #$15f,d0                           
  01780  672c                  beq.s    L17ae                              
  01782  6a4e                  bpl.s    L17d2                              
  01784  5240                  addq.w   #1,d0                              
  01786  6b4a                  bmi.s    L17d2                              
  01788  426efc54              clr.w    -$3ac(a6)                          
  0178c  6016                  bra.s    L17a4                              
L178e:
  0178e  7001                  moveq    #1,d0                              
  01790  d0b9ffff8384          add.l    g_7c7c,d0                          
  01796  23c0ffff8388          move.l   d0,g_7c78                          
  0179c  4ead023a              jsr      f2_7b7a                            
  017a0  526efc54              addq.w   #1,-$3ac(a6)                       
L17a4:
  017a4  0c6e0002fc54          cmpi.w   #2,-$3ac(a6)                       
  017aa  6de2                  blt.s    L178e                              
  017ac  6024                  bra.s    L17d2                              
L17ae:
  017ae  426efc54              clr.w    -$3ac(a6)                          
  017b2  6016                  bra.s    L17ca                              
L17b4:
  017b4  3f3c0005              move.w   #5,-(a7)                           
  017b8  4ead0242              jsr      f2_79a8                            
  017bc  527003b0ffff8e3c      addq.w   #1,(-$71c4,za0,d0.w*2)             
  017c4  548f                  addq.l   #2,a7                              
  017c6  526efc54              addq.w   #1,-$3ac(a6)                       
L17ca:
  017ca  0c6e0028fc54          cmpi.w   #$28,-$3ac(a6)                     
  017d0  6de2                  blt.s    L17b4                              
L17d2:
  017d2  3f2e0008              move.w   $8(a6),-(a7)                       
  017d6  4ead024a              jsr      f2_7a2c                            
  017da  427003b0ffff8b7c      clr.w    (-$7484,za0,d0.w*2)                
  017e2  3eae0008              move.w   $8(a6),(a7)                        
  017e6  4ead024a              jsr      f2_7a2c                            
  017ea  427003b0ffff8ba6      clr.w    (-$745a,za0,d0.w*2)                
  017f2  286efc50              movea.l  -$3b0(a6),a4                       
  017f6  4e5e                  unlk     a6                                 
  017f8  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_17fa   [jump table #195]
;----------------------------------------------------------------------
f6_17fa:
  017fa  4e56fd0a              link     a6,#-758                           
  017fe  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  01802  3e2e0008              move.w   $8(a6),d7                          
  01806  426effd2              clr.w    -$2e(a6)                           
  0180a  7a00                  moveq    #0,d5                              
  0180c  7856                  moveq    #86,d4                             
  0180e  486efff8              pea      -$8(a6)                            
  01812  42a7                  clr.l    -(a7)                              
  01814  48780001              pea      ($1).w                             
  01818  a8a7                  _SetRect                                    ; $a8a7
  0181a  486effe8              pea      -$18(a6)                           
  0181e  2f3c00310013          move.l   #$310013,-(a7)                     
  01824  2f3c009c0097          move.l   #$9c0097,-(a7)                     
  0182a  a8a7                  _SetRect                                    ; $a8a7
  0182c  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  01832  a851                  _SetCursor                                  ; $a851
  01834  42a7                  clr.l    -(a7)                              
  01836  3f3c04b0              move.w   #$4b0,-(a7)                        
  0183a  486eff0e              pea      -$f2(a6)                           
  0183e  4878ffff              pea      ($ffff).w                          
  01842  a97c                  _GetNewDialog                               ; $a97c
  01844  265f                  movea.l  (a7)+,a3                           
  01846  2f0b                  move.l   a3,-(a7)                           
  01848  4ead06ba              jsr      f7_161c                            
  0184c  2e8b                  move.l   a3,(a7)                            
  0184e  a915                  _ShowWindow                                 ; $a915
  01850  2f0b                  move.l   a3,-(a7)                           
  01852  3f3c0002              move.w   #2,-(a7)                           
  01856  486effd0              pea      -$30(a6)                           
  0185a  486effcc              pea      -$34(a6)                           
  0185e  486efff0              pea      -$10(a6)                           
  01862  a98d                  _GetDialogItem                              ; $a98d
  01864  046e000ffff6          subi.w   #$f,-$a(a6)                        
  0186a  486effdc              pea      -$24(a6)                           
  0186e  302efff6              move.w   -$a(a6),d0                         
  01872  906efff2              sub.w    -$e(a6),d0                         
  01876  3f00                  move.w   d0,-(a7)                           
  01878  3f3c000f              move.w   #$f,-(a7)                          
  0187c  a880                  _SetPt                                      ; $a880
  0187e  302efff4              move.w   -$c(a6),d0                         
  01882  906efff0              sub.w    -$10(a6),d0                        
  01886  48c0                  ext.l    d0                                 
  01888  81fc000f              divs.w   #$f,d0                             
  0188c  c1fc000f              muls.w   #$f,d0                             
  01890  d06efff0              add.w    -$10(a6),d0                        
  01894  3d40fff4              move.w   d0,-$c(a6)                         
  01898  2f0b                  move.l   a3,-(a7)                           
  0189a  a873                  _SetPort                                    ; $a873
  0189c  2f0b                  move.l   a3,-(a7)                           
  0189e  a922                  _BeginUpdate                                ; $a922
  018a0  2f0b                  move.l   a3,-(a7)                           
  018a2  a981                  _DrawDialog                                 ; $a981
  018a4  42a7                  clr.l    -(a7)                              
  018a6  486efff0              pea      -$10(a6)                           
  018aa  486efff8              pea      -$8(a6)                            
  018ae  2f2effdc              move.l   -$24(a6),-(a7)                     
  018b2  4267                  clr.w    -(a7)                              
  018b4  2f0b                  move.l   a3,-(a7)                           
  018b6  48780100              pea      ($100).w                           
  018ba  2f3c01000000          move.l   #$1000000,-(a7)                    
  018c0  3f3c0044              move.w   #$44,-(a7)                         
  018c4  a9e7                  _Pack0                                      ; $a9e7
  018c6  285f                  movea.l  (a7)+,a4                           
  018c8  2054                  movea.l  (a4),a0                            
  018ca  42280024              clr.b    $24(a0)                            
  018ce  4267                  clr.w    -(a7)                              
  018d0  3f04                  move.w   d4,-(a7)                           
  018d2  4267                  clr.w    -(a7)                              
  018d4  2f0c                  move.l   a4,-(a7)                           
  018d6  3f3c0008              move.w   #8,-(a7)                           
  018da  a9e7                  _Pack0                                      ; $a9e7
  018dc  3c1f                  move.w   (a7)+,d6                           
  018de  2d6efff0ffe8          move.l   -$10(a6),-$18(a6)                  
  018e4  2d6efff4ffec          move.l   -$c(a6),-$14(a6)                   
  018ea  486effe8              pea      -$18(a6)                           
  018ee  4878ffff              pea      ($ffff).w                          
  018f2  a8a9                  _InsetRect                                  ; $a8a9
  018f4  486effe8              pea      -$18(a6)                           
  018f8  a8a1                  _FrameRect                                  ; $a8a1
  018fa  486effe8              pea      -$18(a6)                           
  018fe  2f3c00320014          move.l   #$320014,-(a7)                     
  01904  2f3c009b00a5          move.l   #$9b00a5,-(a7)                     
  0190a  a8a7                  _SetRect                                    ; $a8a7
  0190c  2f0c                  move.l   a4,-(a7)                           
  0190e  486effd8              pea      -$28(a6)                           
  01912  2f3c00130001          move.l   #$130001,-(a7)                     
  01918  3f3c0001              move.w   #1,-(a7)                           
  0191c  4eba024a              jsr      f6_1b68                            
  01920  2e8c                  move.l   a4,(a7)                            
  01922  486effd8              pea      -$28(a6)                           
  01926  2f3c00290002          move.l   #$290002,-(a7)                     
  0192c  3f3c0014              move.w   #$14,-(a7)                         
  01930  4eba0236              jsr      f6_1b68                            
  01934  2e8c                  move.l   a4,(a7)                            
  01936  486effd8              pea      -$28(a6)                           
  0193a  2f3c00380003          move.l   #$380003,-(a7)                     
  01940  3f3c002a              move.w   #$2a,-(a7)                         
  01944  4eba0222              jsr      f6_1b68                            
  01948  2e8c                  move.l   a4,(a7)                            
  0194a  486effd8              pea      -$28(a6)                           
  0194e  2f3c003d0007          move.l   #$3d0007,-(a7)                     
  01954  3f3c0039              move.w   #$39,-(a7)                         
  01958  4eba020e              jsr      f6_1b68                            
  0195c  2e8c                  move.l   a4,(a7)                            
  0195e  486effd8              pea      -$28(a6)                           
  01962  2f3c00410008          move.l   #$410008,-(a7)                     
  01968  3f3c003e              move.w   #$3e,-(a7)                         
  0196c  4eba01fa              jsr      f6_1b68                            
  01970  2e8c                  move.l   a4,(a7)                            
  01972  486effd8              pea      -$28(a6)                           
  01976  2f3c00470009          move.l   #$470009,-(a7)                     
  0197c  3f3c0042              move.w   #$42,-(a7)                         
  01980  4eba01e6              jsr      f6_1b68                            
  01984  7c01                  moveq    #1,d6                              
  01986  4fef0040              lea      $40(a7),a7                         
  0198a  6032                  bra.s    L19be                              
L198c:
  0198c  486effd8              pea      -$28(a6)                           
  01990  4267                  clr.w    -(a7)                              
  01992  7037                  moveq    #55,d0                             
  01994  d046                  add.w    d6,d0                              
  01996  3f00                  move.w   d0,-(a7)                           
  01998  a880                  _SetPt                                      ; $a880
  0199a  487065b2ffff69a80001  pea      ([-$9658,a0],d6.w*4,$1)            
  019a4  103065b1ffff69a8      move.b   ([-$9658,a0],d6.w*4,$0),d0         
  019ac  49c0                  extb.l   d0                                 
  019ae  3f00                  move.w   d0,-(a7)                           
  019b0  2f2effd8              move.l   -$28(a6),-(a7)                     
  019b4  2f0c                  move.l   a4,-(a7)                           
  019b6  3f3c0058              move.w   #$58,-(a7)                         
  019ba  a9e7                  _Pack0                                      ; $a9e7
  019bc  5246                  addq.w   #1,d6                              
L19be:
  019be  0c460005              cmpi.w   #5,d6                              
  019c2  6fc8                  ble.s    L198c                              
  019c4  7c01                  moveq    #1,d6                              
  019c6  6032                  bra.s    L19fa                              
L19c8:
  019c8  486effd8              pea      -$28(a6)                           
  019cc  4267                  clr.w    -(a7)                              
  019ce  703c                  moveq    #60,d0                             
  019d0  d046                  add.w    d6,d0                              
  019d2  3f00                  move.w   d0,-(a7)                           
  019d4  a880                  _SetPt                                      ; $a880
  019d6  487065b2ffff69f80001  pea      ([-$9608,a0],d6.w*4,$1)            
  019e0  103065b1ffff69f8      move.b   ([-$9608,a0],d6.w*4,$0),d0         
  019e8  49c0                  extb.l   d0                                 
  019ea  3f00                  move.w   d0,-(a7)                           
  019ec  2f2effd8              move.l   -$28(a6),-(a7)                     
  019f0  2f0c                  move.l   a4,-(a7)                           
  019f2  3f3c0058              move.w   #$58,-(a7)                         
  019f6  a9e7                  _Pack0                                      ; $a9e7
  019f8  5246                  addq.w   #1,d6                              
L19fa:
  019fa  0c460005              cmpi.w   #5,d6                              
  019fe  6fc8                  ble.s    L19c8                              
  01a00  7c01                  moveq    #1,d6                              
  01a02  6032                  bra.s    L1a36                              
L1a04:
  01a04  486effd8              pea      -$28(a6)                           
  01a08  4267                  clr.w    -(a7)                              
  01a0a  7041                  moveq    #65,d0                             
  01a0c  d046                  add.w    d6,d0                              
  01a0e  3f00                  move.w   d0,-(a7)                           
  01a10  a880                  _SetPt                                      ; $a880
  01a12  487065b2ffff78220001  pea      ([-$87de,a0],d6.w*4,$1)            
  01a1c  103065b1ffff7822      move.b   ([-$87de,a0],d6.w*4,$0),d0         
  01a24  49c0                  extb.l   d0                                 
  01a26  3f00                  move.w   d0,-(a7)                           
  01a28  2f2effd8              move.l   -$28(a6),-(a7)                     
  01a2c  2f0c                  move.l   a4,-(a7)                           
  01a2e  3f3c0058              move.w   #$58,-(a7)                         
  01a32  a9e7                  _Pack0                                      ; $a9e7
  01a34  5246                  addq.w   #1,d6                              
L1a36:
  01a36  0c460005              cmpi.w   #5,d6                              
  01a3a  6fc8                  ble.s    L1a04                              
  01a3c  2f0b                  move.l   a3,-(a7)                           
  01a3e  a923                  _EndUpdate                                  ; $a923
  01a40  3f3c5bcd              move.w   #$5bcd,-(a7)                       
  01a44  4ead030a              jsr      f3_4238                            
  01a48  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  01a4e  201f                  move.l   (a7)+,d0                           
  01a50  a032                  _FlushEvents                                ; $a032
  01a52  548f                  addq.l   #2,a7                              
L1a54:
  01a54  4227                  clr.b    -(a7)                              
  01a56  3f3cffff              move.w   #$ffff,-(a7)                       
  01a5a  486effbc              pea      -$44(a6)                           
  01a5e  a970                  _GetNextEvent                               ; $a970
  01a60  7c00                  moveq    #0,d6                              
  01a62  1c1f                  move.b   (a7)+,d6                           
  01a64  4227                  clr.b    -(a7)                              
  01a66  486effbc              pea      -$44(a6)                           
  01a6a  a97f                  _IsDialogEvent                              ; $a97f
  01a6c  4a1f                  tst.b    (a7)+                              
  01a6e  675e                  beq.s    L1ace                              
  01a70  4227                  clr.b    -(a7)                              
  01a72  486effbc              pea      -$44(a6)                           
  01a76  486effb8              pea      -$48(a6)                           
  01a7a  486effd2              pea      -$2e(a6)                           
  01a7e  a980                  _DialogSelect                               ; $a980
  01a80  4a1f                  tst.b    (a7)+                              
  01a82  6766                  beq.s    L1aea                              
  01a84  b7eeffb8              cmpa.l   -$48(a6),a3                        
  01a88  6660                  bne.s    L1aea                              
  01a8a  302effd2              move.w   -$2e(a6),d0                        
  01a8e  675a                  beq.s    L1aea                              
  01a90  6b58                  bmi.s    L1aea                              
  01a92  5540                  subq.w   #2,d0                              
  01a94  671c                  beq.s    L1ab2                              
  01a96  6a52                  bpl.s    L1aea                              
  01a98  42a7                  clr.l    -(a7)                              
  01a9a  2f0c                  move.l   a4,-(a7)                           
  01a9c  3f3c0040              move.w   #$40,-(a7)                         
  01aa0  a9e7                  _Pack0                                      ; $a9e7
  01aa2  2d5fffd4              move.l   (a7)+,-$2c(a6)                     
  01aa6  4a6effd4              tst.w    -$2c(a6)                           
  01aaa  6c3e                  bge.s    L1aea                              
  01aac  426effd2              clr.w    -$2e(a6)                           
  01ab0  6038                  bra.s    L1aea                              
L1ab2:
  01ab2  486effc6              pea      -$3a(a6)                           
  01ab6  a871                  _GlobalToLocal                              ; $a871
  01ab8  4227                  clr.b    -(a7)                              
  01aba  2f2effc6              move.l   -$3a(a6),-(a7)                     
  01abe  3f2effca              move.w   -$36(a6),-(a7)                     
  01ac2  2f0c                  move.l   a4,-(a7)                           
  01ac4  3f3c0018              move.w   #$18,-(a7)                         
  01ac8  a9e7                  _Pack0                                      ; $a9e7
  01aca  161f                  move.b   (a7)+,d3                           
  01acc  601c                  bra.s    L1aea                              
L1ace:
  01ace  4a6effbc              tst.w    -$44(a6)                           
  01ad2  6716                  beq.s    L1aea                              
  01ad4  0c6e0006ffbc          cmpi.w   #6,-$44(a6)                        
  01ada  670e                  beq.s    L1aea                              
  01adc  0c6e0008ffbc          cmpi.w   #8,-$44(a6)                        
  01ae2  6706                  beq.s    L1aea                              
  01ae4  3f3c0001              move.w   #1,-(a7)                           
  01ae8  a9c8                  _SysBeep                                    ; $a9c8
L1aea:
  01aea  0c6e0001ffd2          cmpi.w   #1,-$2e(a6)                        
  01af0  6600ff62              bne.w    L1a54                              
  01af4  2f0c                  move.l   a4,-(a7)                           
  01af6  3f3c0028              move.w   #$28,-(a7)                         
  01afa  a9e7                  _Pack0                                      ; $a9e7
  01afc  2f0b                  move.l   a3,-(a7)                           
  01afe  a983                  _DisposeDialog                              ; $a983
  01b00  4ead0312              jsr      f3_4384                            
  01b04  42a7                  clr.l    -(a7)                              
  01b06  3f3c04b2              move.w   #$4b2,-(a7)                        
  01b0a  a9bc                  _GetPicture                                 ; $a9bc
  01b0c  245f                  movea.l  (a7)+,a2                           
  01b0e  1f3c0001              move.b   #1,-(a7)                           
  01b12  3f07                  move.w   d7,-(a7)                           
  01b14  4ead016a              jsr      f2_549e                            
  01b18  486efff0              pea      -$10(a6)                           
  01b1c  2f3c005a003c          move.l   #$5a003c,-(a7)                     
  01b22  2f3c008c00be          move.l   #$8c00be,-(a7)                     
  01b28  a8a7                  _SetRect                                    ; $a8a7
  01b2a  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  01b30  a873                  _SetPort                                    ; $a873
  01b32  2f0a                  move.l   a2,-(a7)                           
  01b34  486efff0              pea      -$10(a6)                           
  01b38  a8f6                  _DrawPicture                                ; $a8f6
  01b3a  3f3c5bcc              move.w   #$5bcc,-(a7)                       
  01b3e  4ead030a              jsr      f3_4238                            
  01b42  2f0a                  move.l   a2,-(a7)                           
  01b44  a9a3                  _ReleaseResource                            ; $a9a3
  01b46  7001                  moveq    #1,d0                              
  01b48  d06effd4              add.w    -$2c(a6),d0                        
  01b4c  318073b0ffff8ba6      move.w   d0,(-$745a,za0,d7.w*2)             
  01b54  3e87                  move.w   d7,(a7)                            
  01b56  4eba1942              jsr      f6_349a                            
  01b5a  4ead0312              jsr      f3_4384                            
  01b5e  4cee1cf8fcea          movem.l  -$316(a6),d3/d4/d5/d6/d7/a2/a3/a4  
  01b64  4e5e                  unlk     a6                                 
  01b66  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_1b68
;----------------------------------------------------------------------
f6_1b68:
  01b68  4e56fe00              link     a6,#-512                           
  01b6c  2f07                  move.l   d7,-(a7)                           
  01b6e  3e2e0008              move.w   $8(a6),d7                          
  01b72  60000098              bra.w    L1c0c                              
L1b76:
  01b76  0c6e0006000c          cmpi.w   #6,$c(a6)                          
  01b7c  6c10                  bge.s    L1b8e                              
  01b7e  2f2e000e              move.l   $e(a6),-(a7)                       
  01b82  4267                  clr.w    -(a7)                              
  01b84  70ff                  moveq    #-1,d0                             
  01b86  d047                  add.w    d7,d0                              
  01b88  3f00                  move.w   d0,-(a7)                           
  01b8a  a880                  _SetPt                                      ; $a880
  01b8c  600e                  bra.s    L1b9c                              
L1b8e:
  01b8e  2f2e000e              move.l   $e(a6),-(a7)                       
  01b92  4267                  clr.w    -(a7)                              
  01b94  700e                  moveq    #14,d0                             
  01b96  d047                  add.w    d7,d0                              
  01b98  3f00                  move.w   d0,-(a7)                           
  01b9a  a880                  _SetPt                                      ; $a880
L1b9c:
  01b9c  486eff00              pea      -$100(a6)                          
  01ba0  3f3c02bc              move.w   #$2bc,-(a7)                        
  01ba4  3f2e000c              move.w   $c(a6),-(a7)                       
  01ba8  4ead0522              jsr      f4_153c                            
  01bac  43eefe00              lea      -$200(a6),a1                       
  01bb0  103075b1ffff735a      move.b   ([-$8ca6,a0],d7.w*4,$0),d0         
  01bb8  49c0                  extb.l   d0                                 
  01bba  5240                  addq.w   #1,d0                              
  01bbc  48c0                  ext.l    d0                                 
  01bbe  207075b0ffff735a      movea.l  (-$8ca6,za0,d7.w*4),a0             
  01bc6  a02e                  _BlockMove                                  ; $a02e
  01bc8  102eff00              move.b   -$100(a6),d0                       
  01bcc  d12efe00              add.b    d0,-$200(a6)                       
  01bd0  41eeff01              lea      -$ff(a6),a0                        
  01bd4  103075b1ffff735a      move.b   ([-$8ca6,a0],d7.w*4,$0),d0         
  01bdc  49c0                  extb.l   d0                                 
  01bde  43eefe01              lea      -$1ff(a6),a1                       
  01be2  d089                  add.l    a1,d0                              
  01be4  2240                  movea.l  d0,a1                              
  01be6  7000                  moveq    #0,d0                              
  01be8  102eff00              move.b   -$100(a6),d0                       
  01bec  a02e                  _BlockMove                                  ; $a02e
  01bee  486efe01              pea      -$1ff(a6)                          
  01bf2  7000                  moveq    #0,d0                              
  01bf4  102efe00              move.b   -$200(a6),d0                       
  01bf8  3f00                  move.w   d0,-(a7)                           
  01bfa  206e000e              movea.l  $e(a6),a0                          
  01bfe  2f10                  move.l   (a0),-(a7)                         
  01c00  2f2e0012              move.l   $12(a6),-(a7)                      
  01c04  3f3c0058              move.w   #$58,-(a7)                         
  01c08  a9e7                  _Pack0                                      ; $a9e7
  01c0a  5247                  addq.w   #1,d7                              
L1c0c:
  01c0c  be6e000a              cmp.w    $a(a6),d7                          
  01c10  6f00ff64              ble.w    L1b76                              
  01c14  2e1f                  move.l   (a7)+,d7                           
  01c16  4e5e                  unlk     a6                                 
  01c18  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_1c1a   [jump table #196]
;----------------------------------------------------------------------
f6_1c1a:
  01c1a  4e56fe54              link     a6,#-428                           
  01c1e  2f0c                  move.l   a4,-(a7)                           
  01c20  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  01c26  a851                  _SetCursor                                  ; $a851
  01c28  42a7                  clr.l    -(a7)                              
  01c2a  3f3c0515              move.w   #$515,-(a7)                        
  01c2e  486eff56              pea      -$aa(a6)                           
  01c32  4878ffff              pea      ($ffff).w                          
  01c36  a97c                  _GetNewDialog                               ; $a97c
  01c38  285f                  movea.l  (a7)+,a4                           
  01c3a  2f0c                  move.l   a4,-(a7)                           
  01c3c  4ead06ba              jsr      f7_161c                            
  01c40  2e8c                  move.l   a4,(a7)                            
  01c42  a915                  _ShowWindow                                 ; $a915
  01c44  2f0c                  move.l   a4,-(a7)                           
  01c46  a981                  _DrawDialog                                 ; $a981
  01c48  3f3c5bce              move.w   #$5bce,-(a7)                       
  01c4c  4ead030a              jsr      f3_4238                            
  01c50  548f                  addq.l   #2,a7                              
L1c52:
  01c52  42a7                  clr.l    -(a7)                              
  01c54  486eff54              pea      -$ac(a6)                           
  01c58  a991                  _ModalDialog                                ; $a991
  01c5a  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  01c60  66f0                  bne.s    L1c52                              
  01c62  13fc0001ffff8df1      move.b   #1,g_720f                          
  01c6a  2f0c                  move.l   a4,-(a7)                           
  01c6c  a983                  _DisposeDialog                              ; $a983
  01c6e  4ead0312              jsr      f3_4384                            
  01c72  302e0008              move.w   $8(a6),d0                          
  01c76  427003b0ffff8b7c      clr.w    (-$7484,za0,d0.w*2)                
  01c7e  427003b0ffff8ba6      clr.w    (-$745a,za0,d0.w*2)                
  01c86  285f                  movea.l  (a7)+,a4                           
  01c88  4e5e                  unlk     a6                                 
  01c8a  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_1c8c   [jump table #197]
;----------------------------------------------------------------------
f6_1c8c:
  01c8c  4e56fefe              link     a6,#-258                           
  01c90  2f06                  move.l   d6,-(a7)                           
  01c92  426efefe              clr.w    -$102(a6)                          
  01c96  4267                  clr.w    -(a7)                              
  01c98  3eb80a9a              move.w   ($a9a).w,(a7)                      
  01c9c  3c1f                  move.w   (a7)+,d6                           
  01c9e  486eff00              pea      -$100(a6)                          
  01ca2  3f3c0fa0              move.w   #$fa0,-(a7)                        
  01ca6  7001                  moveq    #1,d0                              
  01ca8  d046                  add.w    d6,d0                              
  01caa  3f00                  move.w   d0,-(a7)                           
  01cac  4ead0522              jsr      f4_153c                            
  01cb0  486eff00              pea      -$100(a6)                          
  01cb4  2f3c0000116c          move.l   STR_116c,-(a7)                     ; "?"
  01cba  2f3c0000116e          move.l   STR_116e,-(a7)                     ; "?"
  01cc0  2f3c00001170          move.l   STR_1170,-(a7)                     ; "?"
  01cc6  a98b                  _ParamText                                  ; $a98b
  01cc8  3006                  move.w   d6,d0                              
  01cca  670e                  beq.s    L1cda                              
  01ccc  6b42                  bmi.s    L1d10                              
  01cce  5740                  subq.w   #3,d0                              
  01cd0  6732                  beq.s    L1d04                              
  01cd2  6a3c                  bpl.s    L1d10                              
  01cd4  5240                  addq.w   #1,d0                              
  01cd6  6a1e                  bpl.s    L1cf6                              
  01cd8  600e                  bra.s    L1ce8                              
L1cda:
  01cda  4267                  clr.w    -(a7)                              
  01cdc  3f3c0fab              move.w   #$fab,-(a7)                        
  01ce0  42a7                  clr.l    -(a7)                              
  01ce2  a985                  _Alert                                      ; $a985
  01ce4  548f                  addq.l   #2,a7                              
  01ce6  6028                  bra.s    L1d10                              
L1ce8:
  01ce8  4267                  clr.w    -(a7)                              
  01cea  3f3c0fab              move.w   #$fab,-(a7)                        
  01cee  42a7                  clr.l    -(a7)                              
  01cf0  a987                  _NoteAlert                                  ; $a987
  01cf2  548f                  addq.l   #2,a7                              
  01cf4  601a                  bra.s    L1d10                              
L1cf6:
  01cf6  4267                  clr.w    -(a7)                              
  01cf8  3f3c0fab              move.w   #$fab,-(a7)                        
  01cfc  42a7                  clr.l    -(a7)                              
  01cfe  a988                  _CautionAlert                               ; $a988
  01d00  548f                  addq.l   #2,a7                              
  01d02  600c                  bra.s    L1d10                              
L1d04:
  01d04  4267                  clr.w    -(a7)                              
  01d06  3f3c0fab              move.w   #$fab,-(a7)                        
  01d0a  42a7                  clr.l    -(a7)                              
  01d0c  a986                  _StopAlert                                  ; $a986
  01d0e  548f                  addq.l   #2,a7                              
L1d10:
  01d10  2c1f                  move.l   (a7)+,d6                           
  01d12  4e5e                  unlk     a6                                 
  01d14  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_1d16   [jump table #198]
;----------------------------------------------------------------------
f6_1d16:
  01d16  4e56fe54              link     a6,#-428                           
  01d1a  2f0c                  move.l   a4,-(a7)                           
  01d1c  426efe54              clr.w    -$1ac(a6)                          
  01d20  4a79ffff8da6          tst.w    g_725a                             
  01d26  6700008e              beq.w    L1db6                              
  01d2a  486efe56              pea      -$1aa(a6)                          
  01d2e  2f3c000501f4          move.l   #$501f4,-(a7)                      
  01d34  4ead0522              jsr      f4_153c                            
  01d38  486efe56              pea      -$1aa(a6)                          
  01d3c  2f3c00001172          move.l   STR_1172,-(a7)                     ; "?"
  01d42  2f3c00001174          move.l   STR_1174,-(a7)                     ; "?"
  01d48  2f3c00001176          move.l   STR_1176,-(a7)                     ; "?"
  01d4e  a98b                  _ParamText                                  ; $a98b
  01d50  42a7                  clr.l    -(a7)                              
  01d52  3f3c01f4              move.w   #$1f4,-(a7)                        
  01d56  486eff56              pea      -$aa(a6)                           
  01d5a  4878ffff              pea      ($ffff).w                          
  01d5e  a97c                  _GetNewDialog                               ; $a97c
  01d60  285f                  movea.l  (a7)+,a4                           
  01d62  2f0c                  move.l   a4,-(a7)                           
  01d64  4ead06ba              jsr      f7_161c                            
  01d68  2e8c                  move.l   a4,(a7)                            
  01d6a  a915                  _ShowWindow                                 ; $a915
L1d6c:
  01d6c  42a7                  clr.l    -(a7)                              
  01d6e  486efe54              pea      -$1ac(a6)                          
  01d72  a991                  _ModalDialog                                ; $a991
  01d74  0c6e0001fe54          cmpi.w   #1,-$1ac(a6)                       
  01d7a  66f0                  bne.s    L1d6c                              
  01d7c  2f0c                  move.l   a4,-(a7)                           
  01d7e  a983                  _DisposeDialog                              ; $a983
  01d80  4ead01ca              jsr      f2_6b56                            
  01d84  4279ffff8836          clr.w    g_77ca                             
  01d8a  4279ffff8832          clr.w    g_77ce                             
  01d90  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  01d96  3f39ffff8da6          move.w   g_725a,-(a7)                       
  01d9c  a93a                  _DisableItem                                ; $a93a
  01d9e  5379ffff8da6          subq.w   #1,g_725a                          
  01da4  4a79ffff8da6          tst.w    g_725a                             
  01daa  660a                  bne.s    L1db6                              
  01dac  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  01db2  4267                  clr.w    -(a7)                              
  01db4  a93a                  _DisableItem                                ; $a93a
L1db6:
  01db6  285f                  movea.l  (a7)+,a4                           
  01db8  4e5e                  unlk     a6                                 
  01dba  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_1dbc   [jump table #199]
;----------------------------------------------------------------------
f6_1dbc:
  01dbc  4e56fd4c              link     a6,#-692                           
  01dc0  48e70f08              movem.l  d4/d5/d6/d7/a4,-(a7)               
  01dc4  426eff54              clr.w    -$ac(a6)                           
  01dc8  7e00                  moveq    #0,d7                              
  01dca  7c01                  moveq    #1,d6                              
  01dcc  2d79ffffae92ff4c      move.l   g_516e,-$b4(a6)                    
  01dd4  2d79ffffae96ff50      move.l   g_516a,-$b0(a6)                    
  01ddc  7800                  moveq    #0,d4                              
  01dde  7e00                  moveq    #0,d7                              
  01de0  6016                  bra.s    L1df8                              
L1de2:
  01de2  3c367320ff4c          move.w   (-$b4,a6,d7.w*2),d6                
  01de8  cc79ffff8dbe          and.w    g_7242,d6                          
  01dee  4a46                  tst.w    d6                                 
  01df0  6604                  bne.s    L1df6                              
  01df2  526eff54              addq.w   #1,-$ac(a6)                        
L1df6:
  01df6  5247                  addq.w   #1,d7                              
L1df8:
  01df8  0c470004              cmpi.w   #4,d7                              
  01dfc  6de4                  blt.s    L1de2                              
  01dfe  4a6eff54              tst.w    -$ac(a6)                           
  01e02  6634                  bne.s    L1e38                              
  01e04  42a7                  clr.l    -(a7)                              
  01e06  3f3c07da              move.w   #$7da,-(a7)                        
  01e0a  486eff56              pea      -$aa(a6)                           
  01e0e  4878ffff              pea      ($ffff).w                          
  01e12  a97c                  _GetNewDialog                               ; $a97c
  01e14  285f                  movea.l  (a7)+,a4                           
  01e16  2f0c                  move.l   a4,-(a7)                           
  01e18  4ead06ba              jsr      f7_161c                            
  01e1c  2e8c                  move.l   a4,(a7)                            
  01e1e  a915                  _ShowWindow                                 ; $a915
L1e20:
  01e20  42a7                  clr.l    -(a7)                              
  01e22  486eff54              pea      -$ac(a6)                           
  01e26  a991                  _ModalDialog                                ; $a991
  01e28  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  01e2e  66f0                  bne.s    L1e20                              
  01e30  2f0c                  move.l   a4,-(a7)                           
  01e32  a983                  _DisposeDialog                              ; $a983
  01e34  60000112              bra.w    L1f48                              
L1e38:
  01e38  7e00                  moveq    #0,d7                              
L1e3a:
  01e3a  3039ffff8dbe          move.w   g_7242,d0                          
  01e40  c0767320ff4c          and.w    (-$b4,a6,d7.w*2),d0                
  01e46  66000096              bne.w    L1ede                              
  01e4a  3039ffff8894          move.w   g_776c,d0                          
  01e50  907073b0ffff3b00      sub.w    (-$c500,za0,d7.w*2),d0             
  01e58  3f00                  move.w   d0,-(a7)                           
  01e5a  4ead024a              jsr      f2_7a2c                            
  01e5e  3a00                  move.w   d0,d5                              
  01e60  0c450003              cmpi.w   #3,d5                              
  01e64  548f                  addq.l   #2,a7                              
  01e66  6c76                  bge.s    L1ede                              
  01e68  3045                  movea.w  d5,a0                              
  01e6a  2f08                  move.l   a0,-(a7)                           
  01e6c  486efe4c              pea      -$1b4(a6)                          
  01e70  4ead0512              jsr      f4_150e                            
  01e74  0c450001              cmpi.w   #1,d5                              
  01e78  6610                  bne.s    L1e8a                              
  01e7a  486efd4c              pea      -$2b4(a6)                          
  01e7e  2f3c00010119          move.l   #$10119,-(a7)                      
  01e84  4ead0522              jsr      f4_153c                            
  01e88  600e                  bra.s    L1e98                              
L1e8a:
  01e8a  486efd4c              pea      -$2b4(a6)                          
  01e8e  2f3c00020119          move.l   #$20119,-(a7)                      
  01e94  4ead0522              jsr      f4_153c                            
L1e98:
  01e98  486efe4c              pea      -$1b4(a6)                          
  01e9c  486efd4c              pea      -$2b4(a6)                          
  01ea0  2f3c00001178          move.l   STR_1178,-(a7)                     ; "?"
  01ea6  2f3c0000117a          move.l   STR_117a,-(a7)                     ; "?"
  01eac  a98b                  _ParamText                                  ; $a98b
  01eae  42a7                  clr.l    -(a7)                              
  01eb0  3f3c0119              move.w   #$119,-(a7)                        
  01eb4  486eff56              pea      -$aa(a6)                           
  01eb8  4878ffff              pea      ($ffff).w                          
  01ebc  a97c                  _GetNewDialog                               ; $a97c
  01ebe  285f                  movea.l  (a7)+,a4                           
  01ec0  2f0c                  move.l   a4,-(a7)                           
  01ec2  4ead06ba              jsr      f7_161c                            
  01ec6  2e8c                  move.l   a4,(a7)                            
  01ec8  a915                  _ShowWindow                                 ; $a915
L1eca:
  01eca  42a7                  clr.l    -(a7)                              
  01ecc  486eff54              pea      -$ac(a6)                           
  01ed0  a991                  _ModalDialog                                ; $a991
  01ed2  4a6eff54              tst.w    -$ac(a6)                           
  01ed6  67f2                  beq.s    L1eca                              
  01ed8  2f0c                  move.l   a4,-(a7)                           
  01eda  a983                  _DisposeDialog                              ; $a983
  01edc  606a                  bra.s    L1f48                              
L1ede:
  01ede  5247                  addq.w   #1,d7                              
  01ee0  0c470004              cmpi.w   #4,d7                              
  01ee4  6d00ff54              blt.w    L1e3a                              
  01ee8  486efe4c              pea      -$1b4(a6)                          
  01eec  2f3c00030119          move.l   #$30119,-(a7)                      
  01ef2  4ead0522              jsr      f4_153c                            
  01ef6  486efd4c              pea      -$2b4(a6)                          
  01efa  2f3c00020119          move.l   #$20119,-(a7)                      
  01f00  4ead0522              jsr      f4_153c                            
  01f04  486efe4c              pea      -$1b4(a6)                          
  01f08  486efd4c              pea      -$2b4(a6)                          
  01f0c  2f3c0000117c          move.l   STR_117c,-(a7)                     ; "?"
  01f12  2f3c0000117e          move.l   STR_117e,-(a7)                     ; "?"
  01f18  a98b                  _ParamText                                  ; $a98b
  01f1a  42a7                  clr.l    -(a7)                              
  01f1c  3f3c0119              move.w   #$119,-(a7)                        
  01f20  486eff56              pea      -$aa(a6)                           
  01f24  4878ffff              pea      ($ffff).w                          
  01f28  a97c                  _GetNewDialog                               ; $a97c
  01f2a  285f                  movea.l  (a7)+,a4                           
  01f2c  2f0c                  move.l   a4,-(a7)                           
  01f2e  4ead06ba              jsr      f7_161c                            
  01f32  2e8c                  move.l   a4,(a7)                            
  01f34  a915                  _ShowWindow                                 ; $a915
L1f36:
  01f36  42a7                  clr.l    -(a7)                              
  01f38  486eff54              pea      -$ac(a6)                           
  01f3c  a991                  _ModalDialog                                ; $a991
  01f3e  4a6eff54              tst.w    -$ac(a6)                           
  01f42  67f2                  beq.s    L1f36                              
  01f44  2f0c                  move.l   a4,-(a7)                           
  01f46  a983                  _DisposeDialog                              ; $a983
L1f48:
  01f48  4cdf10f0              movem.l  (a7)+,d4/d5/d6/d7/a4               
  01f4c  4e5e                  unlk     a6                                 
  01f4e  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_1f50   [jump table #200]
;----------------------------------------------------------------------
f6_1f50:
  01f50  4e56fdfc              link     a6,#-516                           
  01f54  48e70318              movem.l  d6/d7/a3/a4,-(a7)                  
  01f58  3e2e0008              move.w   $8(a6),d7                          
  01f5c  3c2e0010              move.w   $10(a6),d6                         
  01f60  286e000a              movea.l  $a(a6),a4                          
  01f64  266e0012              movea.l  $12(a6),a3                         
  01f68  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  01f70  4a7003b0ffff7054      tst.w    (-$8fac,za0,d0.w*2)                
  01f78  67000432              beq.w    L23ac                              
  01f7c  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  01f84  303003b0ffff7054      move.w   (-$8fac,za0,d0.w*2),d0             
  01f8c  0c400015              cmpi.w   #$15,d0                            
  01f90  6200041a              bhi.w    L23ac                              
  01f94  43fa041e              lea      L23b4(pc),a1                       
  01f98  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  01f9c  4ed1                  jmp      (a1)                               
  01f9e  0c460002              cmpi.w   #2,d6                              
  01fa2  660c                  bne.s    L1fb0                              
  01fa4  3054                  movea.w  (a4),a0                            
  01fa6  2008                  move.l   a0,d0                              
  01fa8  81fc0005              divs.w   #5,d0                              
  01fac  e548                  lsl.w    #2,d0                              
  01fae  6002                  bra.s    L1fb2                              
L1fb0:
  01fb0  3014                  move.w   (a4),d0                            
L1fb2:
  01fb2  3880                  move.w   d0,(a4)                            
  01fb4  600003f6              bra.w    L23ac                              
  01fb8  547073b0ffff8ccc      addq.w   #2,(-$7334,za0,d7.w*2)             
  01fc0  600003ea              bra.w    L23ac                              
  01fc4  0c460002              cmpi.w   #2,d6                              
  01fc8  660003e2              bne.w    L23ac                              
  01fcc  3f3c0064              move.w   #$64,-(a7)                         
  01fd0  4ead0242              jsr      f2_79a8                            
  01fd4  0c400014              cmpi.w   #$14,d0                            
  01fd8  548f                  addq.l   #2,a7                              
  01fda  6f0003d0              ble.w    L23ac                              
  01fde  4254                  clr.w    (a4)                               
  01fe0  486efefc              pea      -$104(a6)                          
  01fe4  2f3c000102d2          move.l   #$102d2,-(a7)                      
  01fea  4ead0522              jsr      f4_153c                            
  01fee  486efefc              pea      -$104(a6)                          
  01ff2  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  01ffa  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  02002  2f3c00001180          move.l   STR_1180,-(a7)                     ; "?"
  02008  2f3c00001182          move.l   STR_1182,-(a7)                     ; "?"
  0200e  a98b                  _ParamText                                  ; $a98b
  02010  42a7                  clr.l    -(a7)                              
  02012  4ead03fa              jsr      f4_355e                            
  02016  588f                  addq.l   #4,a7                              
  02018  60000392              bra.w    L23ac                              
  0201c  2f0b                  move.l   a3,-(a7)                           
  0201e  2f0c                  move.l   a4,-(a7)                           
  02020  2f3c00280002          move.l   #$280002,-(a7)                     
  02026  3f06                  move.w   d6,-(a7)                           
  02028  3f07                  move.w   d7,-(a7)                           
  0202a  4eba169a              jsr      f6_36c6                            
  0202e  4fef0010              lea      $10(a7),a7                         
  02032  60000378              bra.w    L23ac                              
  02036  2f0b                  move.l   a3,-(a7)                           
  02038  2f0c                  move.l   a4,-(a7)                           
  0203a  2f3c00320000          move.l   #$320000,-(a7)                     
  02040  3f06                  move.w   d6,-(a7)                           
  02042  3f07                  move.w   d7,-(a7)                           
  02044  4eba1680              jsr      f6_36c6                            
  02048  4fef0010              lea      $10(a7),a7                         
  0204c  6000035e              bra.w    L23ac                              
  02050  4a46                  tst.w    d6                                 
  02052  66000358              bne.w    L23ac                              
  02056  4a79ffff8380          tst.w    g_7c80                             
  0205c  6e00034e              bgt.w    L23ac                              
  02060  4254                  clr.w    (a4)                               
  02062  486efefc              pea      -$104(a6)                          
  02066  2f3c000202d2          move.l   #$202d2,-(a7)                      
  0206c  4ead0522              jsr      f4_153c                            
  02070  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  02078  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  02080  486efefc              pea      -$104(a6)                          
  02084  2f3c00001184          move.l   STR_1184,-(a7)                     ; "?"
  0208a  2f3c00001186          move.l   STR_1186,-(a7)                     ; "?"
  02090  a98b                  _ParamText                                  ; $a98b
  02092  42a7                  clr.l    -(a7)                              
  02094  4ead03fa              jsr      f4_355e                            
  02098  588f                  addq.l   #4,a7                              
  0209a  60000310              bra.w    L23ac                              
  0209e  2f0b                  move.l   a3,-(a7)                           
  020a0  2f0c                  move.l   a4,-(a7)                           
  020a2  2f3c003c0002          move.l   #$3c0002,-(a7)                     
  020a8  3f06                  move.w   d6,-(a7)                           
  020aa  3f07                  move.w   d7,-(a7)                           
  020ac  4eba1618              jsr      f6_36c6                            
  020b0  4fef0010              lea      $10(a7),a7                         
  020b4  600002f6              bra.w    L23ac                              
  020b8  307073b0ffff8cf6      movea.w  (-$730a,za0,d7.w*2),a0             
  020c0  2008                  move.l   a0,d0                              
  020c2  81fc0003              divs.w   #3,d0                              
  020c6  b07073b0ffff8ccc      cmp.w    (-$7334,za0,d7.w*2),d0             
  020ce  6f0002dc              ble.w    L23ac                              
  020d2  3f3c0064              move.w   #$64,-(a7)                         
  020d6  4ead0242              jsr      f2_79a8                            
  020da  0c400014              cmpi.w   #$14,d0                            
  020de  548f                  addq.l   #2,a7                              
  020e0  6c0002ca              bge.w    L23ac                              
  020e4  427073b0ffff8c78      clr.w    (-$7388,za0,d7.w*2)                
  020ec  3f3073b0ffff8c4e      move.w   (-$73b2,za0,d7.w*2),-(a7)          
  020f4  3f3073b0ffff8c24      move.w   (-$73dc,za0,d7.w*2),-(a7)          
  020fc  4ead008a              jsr      f2_0c6e                            
  02100  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  02108  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  02110  486efefc              pea      -$104(a6)                          
  02114  2f3c000302d2          move.l   #$302d2,-(a7)                      
  0211a  4ead0522              jsr      f4_153c                            
  0211e  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  02126  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  0212e  486efefc              pea      -$104(a6)                          
  02132  2f3c00001188          move.l   STR_1188,-(a7)                     ; "?"
  02138  2f3c0000118a          move.l   STR_118a,-(a7)                     ; "?"
  0213e  a98b                  _ParamText                                  ; $a98b
  02140  42a7                  clr.l    -(a7)                              
  02142  4ead03fa              jsr      f4_355e                            
  02146  588f                  addq.l   #4,a7                              
  02148  60000262              bra.w    L23ac                              
  0214c  4a46                  tst.w    d6                                 
  0214e  6600025c              bne.w    L23ac                              
  02152  3f3c0064              move.w   #$64,-(a7)                         
  02156  4ead0242              jsr      f2_79a8                            
  0215a  0c400015              cmpi.w   #$15,d0                            
  0215e  548f                  addq.l   #2,a7                              
  02160  6c00024a              bge.w    L23ac                              
  02164  4a79ffff8380          tst.w    g_7c80                             
  0216a  6e000240              bgt.w    L23ac                              
  0216e  3f3c0001              move.w   #1,-(a7)                           
  02172  3f07                  move.w   d7,-(a7)                           
  02174  3f3c000a              move.w   #$a,-(a7)                          
  02178  4eba0e0a              jsr      f6_2f84                            
  0217c  5c8f                  addq.l   #6,a7                              
  0217e  6000022c              bra.w    L23ac                              
  02182  4a46                  tst.w    d6                                 
  02184  66000226              bne.w    L23ac                              
  02188  3f3c0064              move.w   #$64,-(a7)                         
  0218c  4ead0242              jsr      f2_79a8                            
  02190  0c400015              cmpi.w   #$15,d0                            
  02194  548f                  addq.l   #2,a7                              
  02196  6c000214              bge.w    L23ac                              
  0219a  4a79ffff8380          tst.w    g_7c80                             
  021a0  6e00020a              bgt.w    L23ac                              
  021a4  3f3c0002              move.w   #2,-(a7)                           
  021a8  3f07                  move.w   d7,-(a7)                           
  021aa  3f3c0001              move.w   #1,-(a7)                           
  021ae  4eba0dd4              jsr      f6_2f84                            
  021b2  5c8f                  addq.l   #6,a7                              
  021b4  600001f6              bra.w    L23ac                              
  021b8  4a46                  tst.w    d6                                 
  021ba  660001f0              bne.w    L23ac                              
  021be  3f3c0064              move.w   #$64,-(a7)                         
  021c2  4ead0242              jsr      f2_79a8                            
  021c6  0c40001f              cmpi.w   #$1f,d0                            
  021ca  548f                  addq.l   #2,a7                              
  021cc  6c0001de              bge.w    L23ac                              
  021d0  4a79ffff8380          tst.w    g_7c80                             
  021d6  6e0001d4              bgt.w    L23ac                              
  021da  3f3c0003              move.w   #3,-(a7)                           
  021de  3f07                  move.w   d7,-(a7)                           
  021e0  3f3c0001              move.w   #1,-(a7)                           
  021e4  4eba0d9e              jsr      f6_2f84                            
  021e8  5c8f                  addq.l   #6,a7                              
  021ea  600001c0              bra.w    L23ac                              
  021ee  2f0b                  move.l   a3,-(a7)                           
  021f0  2f0c                  move.l   a4,-(a7)                           
  021f2  2f3c003c0002          move.l   #$3c0002,-(a7)                     
  021f8  3f06                  move.w   d6,-(a7)                           
  021fa  3f07                  move.w   d7,-(a7)                           
  021fc  4eba14c8              jsr      f6_36c6                            
  02200  4fef0010              lea      $10(a7),a7                         
  02204  600001a6              bra.w    L23ac                              
  02208  4a46                  tst.w    d6                                 
  0220a  660001a0              bne.w    L23ac                              
  0220e  3f3c0064              move.w   #$64,-(a7)                         
  02212  4ead0242              jsr      f2_79a8                            
  02216  0c40001a              cmpi.w   #$1a,d0                            
  0221a  548f                  addq.l   #2,a7                              
  0221c  6c00018e              bge.w    L23ac                              
  02220  4a79ffff8380          tst.w    g_7c80                             
  02226  6e000184              bgt.w    L23ac                              
  0222a  3f3c0004              move.w   #4,-(a7)                           
  0222e  3f07                  move.w   d7,-(a7)                           
  02230  3f3c0005              move.w   #5,-(a7)                           
  02234  4eba0d4e              jsr      f6_2f84                            
  02238  5c8f                  addq.l   #6,a7                              
  0223a  60000170              bra.w    L23ac                              
  0223e  2f0b                  move.l   a3,-(a7)                           
  02240  2f0c                  move.l   a4,-(a7)                           
  02242  2f3c00190000          move.l   #$190000,-(a7)                     
  02248  3f06                  move.w   d6,-(a7)                           
  0224a  3f07                  move.w   d7,-(a7)                           
  0224c  4eba1478              jsr      f6_36c6                            
  02250  4fef0010              lea      $10(a7),a7                         
  02254  60000156              bra.w    L23ac                              
  02258  2f0b                  move.l   a3,-(a7)                           
  0225a  2f0c                  move.l   a4,-(a7)                           
  0225c  2f3c00320000          move.l   #$320000,-(a7)                     
  02262  3f06                  move.w   d6,-(a7)                           
  02264  3f07                  move.w   d7,-(a7)                           
  02266  4eba145e              jsr      f6_36c6                            
  0226a  4fef0010              lea      $10(a7),a7                         
  0226e  6000013c              bra.w    L23ac                              
  02272  0c460002              cmpi.w   #2,d6                              
  02276  66000134              bne.w    L23ac                              
  0227a  e3f073b0ffff8ccc      lsl.w    (-$7334,za0,d7.w*2)                
  02282  e3f073b0ffff8cf6      lsl.w    (-$730a,za0,d7.w*2)                
  0228a  486efefc              pea      -$104(a6)                          
  0228e  2f3c000402d2          move.l   #$402d2,-(a7)                      
  02294  4ead0522              jsr      f4_153c                            
  02298  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  022a0  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  022a8  486efefc              pea      -$104(a6)                          
  022ac  2f3c0000118c          move.l   STR_118c,-(a7)                     ; "?"
  022b2  2f3c0000118e          move.l   STR_118e,-(a7)                     ; "?"
  022b8  a98b                  _ParamText                                  ; $a98b
  022ba  42a7                  clr.l    -(a7)                              
  022bc  4ead03fa              jsr      f4_355e                            
  022c0  588f                  addq.l   #4,a7                              
  022c2  600000e8              bra.w    L23ac                              
  022c6  4a46                  tst.w    d6                                 
  022c8  660000e2              bne.w    L23ac                              
  022cc  3f3c0064              move.w   #$64,-(a7)                         
  022d0  4ead0242              jsr      f2_79a8                            
  022d4  0c40003d              cmpi.w   #$3d,d0                            
  022d8  548f                  addq.l   #2,a7                              
  022da  6c0000d0              bge.w    L23ac                              
  022de  4a79ffff8380          tst.w    g_7c80                             
  022e4  6e0000c6              bgt.w    L23ac                              
  022e8  3f3c0005              move.w   #5,-(a7)                           
  022ec  3f07                  move.w   d7,-(a7)                           
  022ee  3f3c0003              move.w   #3,-(a7)                           
  022f2  4eba0c90              jsr      f6_2f84                            
  022f6  5c8f                  addq.l   #6,a7                              
  022f8  600000b2              bra.w    L23ac                              
  022fc  4a46                  tst.w    d6                                 
  022fe  660000ac              bne.w    L23ac                              
  02302  3f3c0064              move.w   #$64,-(a7)                         
  02306  4ead0242              jsr      f2_79a8                            
  0230a  0c400051              cmpi.w   #$51,d0                            
  0230e  548f                  addq.l   #2,a7                              
  02310  6c00009a              bge.w    L23ac                              
  02314  4a79ffff8380          tst.w    g_7c80                             
  0231a  6e000090              bgt.w    L23ac                              
  0231e  3f3c0006              move.w   #6,-(a7)                           
  02322  3f07                  move.w   d7,-(a7)                           
  02324  3f3c0003              move.w   #3,-(a7)                           
  02328  4eba0c5a              jsr      f6_2f84                            
  0232c  5c8f                  addq.l   #6,a7                              
  0232e  607c                  bra.s    L23ac                              
  02330  4a46                  tst.w    d6                                 
  02332  6678                  bne.s    L23ac                              
  02334  0c790006ffff83a2      cmpi.w   #6,g_7c5e                          
  0233c  676e                  beq.s    L23ac                              
  0233e  3f3c0064              move.w   #$64,-(a7)                         
  02342  4ead0242              jsr      f2_79a8                            
  02346  0c400032              cmpi.w   #$32,d0                            
  0234a  548f                  addq.l   #2,a7                              
  0234c  6f5e                  ble.s    L23ac                              
  0234e  4a79ffff8380          tst.w    g_7c80                             
  02354  6e56                  bgt.s    L23ac                              
  02356  486efefc              pea      -$104(a6)                          
  0235a  2f3c000502d2          move.l   #$502d2,-(a7)                      
  02360  4ead0522              jsr      f4_153c                            
  02364  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  0236c  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  02374  486efefc              pea      -$104(a6)                          
  02378  2f3c00001190          move.l   STR_1190,-(a7)                     ; "?"
  0237e  2f3c00001192          move.l   STR_1192,-(a7)                     ; "?"
  02384  a98b                  _ParamText                                  ; $a98b
  02386  42a7                  clr.l    -(a7)                              
  02388  4ead03fa              jsr      f4_355e                            
  0238c  33fc0006ffff83a2      move.w   #6,g_7c5e                          
  02394  4279ffff838c          clr.w    g_7c74                             
  0239a  4279ffff8380          clr.w    g_7c80                             
  023a0  4ead01ea              jsr      f2_70c2                            
  023a4  4279ffff83ac          clr.w    g_7c54                             
  023aa  588f                  addq.l   #4,a7                              
L23ac:
  023ac  4cdf18c0              movem.l  (a7)+,d6/d7/a3/a4                  
  023b0  4e5e                  unlk     a6                                 
  023b2  4e75                  rts                                         
  023b4  fff8                  dc.w     $fff8                              
  023b6  fbea                  dc.w     $fbea                              
  023b8  fc04                  dc.w     $fc04                              
  023ba  fc10                  dc.w     $fc10                              
  023bc  fff8                  dc.w     $fff8                              
  023be  fc68                  dc.w     $fc68                              
  023c0  fc82                  dc.w     $fc82                              
  023c2  fc9c                  dc.w     $fc9c                              
  023c4  fcea                  dc.w     $fcea                              
  023c6  fc9c                  dc.w     $fc9c                              
  023c8  fd04                  dc.w     $fd04                              
  023ca  fd98                  dc.w     $fd98                              
  023cc  fdce                  dc.w     $fdce                              
  023ce  fe04                  dc.w     $fe04                              
  023d0  fe3a                  dc.w     $fe3a                              
  023d2  fe54                  dc.w     $fe54                              
  023d4  fe8a                  dc.w     $fe8a                              
  023d6  fea4                  dc.w     $fea4                              
  023d8  febe                  dc.w     $febe                              
  023da  ff12                  dc.w     $ff12                              
  023dc  ff48                  dc.w     $ff48                              
  023de  ff7c                  dc.w     $ff7c                              

;----------------------------------------------------------------------
; f6_23e0   [jump table #201]
;----------------------------------------------------------------------
f6_23e0:
  023e0  4e56fd80              link     a6,#-640                           
  023e4  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  023e8  1e2e000a              move.b   $a(a6),d7                          
  023ec  2d79ffffae9aff4a      move.l   g_5166,-$b6(a6)                    
  023f4  2d79ffffae9eff4e      move.l   g_5162,-$b2(a6)                    
  023fc  2d79ffffaea2ff42      move.l   g_515e,-$be(a6)                    
  02404  2d79ffffaea6ff46      move.l   g_515a,-$ba(a6)                    
  0240c  2d79ffffaeaaff3a      move.l   g_5156,-$c6(a6)                    
  02414  2d79ffffaeaeff3e      move.l   g_5152,-$c2(a6)                    
  0241c  2d79ffffaeb2ff32      move.l   g_514e,-$ce(a6)                    
  02424  2d79ffffaeb6ff36      move.l   g_514a,-$ca(a6)                    
  0242c  41eefd88              lea      -$278(a6),a0                       
  02430  43f9ffffaeba          lea      g_5146,a1                          
  02436  7007                  moveq    #7,d0                              
L2438:
  02438  20d9                  move.l   (a1)+,(a0)+                        
  0243a  51c8fffc              dbf      d0,L2438                           
  0243e  7c00                  moveq    #0,d6                              
  02440  486efd84              pea      -$27c(a6)                          
  02444  a874                  _GetPort                                    ; $a874
  02446  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  0244c  a851                  _SetCursor                                  ; $a851
  0244e  3f3c0054              move.w   #$54,-(a7)                         
  02452  4ead0242              jsr      f2_79a8                            
  02456  780f                  moveq    #15,d4                             
  02458  d840                  add.w    d0,d4                              
  0245a  4a07                  tst.b    d7                                 
  0245c  548f                  addq.l   #2,a7                              
  0245e  671c                  beq.s    L247c                              
  02460  303c0276              move.w   #$276,d0                           
  02464  c1ee000e              muls.w   $e(a6),d0                          
  02468  721e                  moveq    #30,d1                             
  0246a  c3ee0010              muls.w   $10(a6),d1                         
  0246e  0680ffff7892          addi.l   #$ffff7892,d0                      
  02474  d081                  add.l    d1,d0                              
  02476  2040                  movea.l  d0,a0                              
  02478  3810                  move.w   (a0),d4                            
  0247a  601a                  bra.s    L2496                              
L247c:
  0247c  303c0276              move.w   #$276,d0                           
  02480  c1ee000e              muls.w   $e(a6),d0                          
  02484  721e                  moveq    #30,d1                             
  02486  c3ee0010              muls.w   $10(a6),d1                         
  0248a  0680ffff7892          addi.l   #$ffff7892,d0                      
  02490  d081                  add.l    d1,d0                              
  02492  2040                  movea.l  d0,a0                              
  02494  3084                  move.w   d4,(a0)                            
L2496:
  02496  3604                  move.w   d4,d3                              
  02498  7a00                  moveq    #0,d5                              
  0249a  6008                  bra.s    L24a4                              
L249c:
  0249c  42b65520fd88          clr.l    (-$278,a6,d5.w*4)                  
  024a2  5245                  addq.w   #1,d5                              
L24a4:
  024a4  0c450008              cmpi.w   #8,d5                              
  024a8  6df2                  blt.s    L249c                              
  024aa  7a00                  moveq    #0,d5                              
  024ac  6054                  bra.s    L2502                              
L24ae:
  024ae  3043                  movea.w  d3,a0                              
  024b0  2008                  move.l   a0,d0                              
  024b2  81f65320ff42          divs.w   (-$be,a6,d5.w*2),d0                
  024b8  3d40ff54              move.w   d0,-$ac(a6)                        
  024bc  4a40                  tst.w    d0                                 
  024be  6f14                  ble.s    L24d4                              
  024c0  3f3c0002              move.w   #2,-(a7)                           
  024c4  4ead0242              jsr      f2_79a8                            
  024c8  d06eff54              add.w    -$ac(a6),d0                        
  024cc  3d805320ff4a          move.w   d0,(-$b6,a6,d5.w*2)                
  024d2  548f                  addq.l   #2,a7                              
L24d4:
  024d4  30365320ff42          move.w   (-$be,a6,d5.w*2),d0                
  024da  c1eeff54              muls.w   -$ac(a6),d0                        
  024de  9640                  sub.w    d0,d3                              
  024e0  4a765320ff4a          tst.w    (-$b6,a6,d5.w*2)                   
  024e6  6f18                  ble.s    L2500                              
  024e8  42a7                  clr.l    -(a7)                              
  024ea  30365320ff32          move.w   (-$ce,a6,d5.w*2),d0                
  024f0  d0765320ff4a          add.w    (-$b6,a6,d5.w*2),d0                
  024f6  3f00                  move.w   d0,-(a7)                           
  024f8  a9bc                  _GetPicture                                 ; $a9bc
  024fa  2d9f5520fd88          move.l   (a7)+,(-$278,a6,d5.w*4)            
L2500:
  02500  5245                  addq.w   #1,d5                              
L2502:
  02502  0c450004              cmpi.w   #4,d5                              
  02506  6da6                  blt.s    L24ae                              
  02508  3044                  movea.w  d4,a0                              
  0250a  2f08                  move.l   a0,-(a7)                           
  0250c  486efe30              pea      -$1d0(a6)                          
  02510  4ead0512              jsr      f4_150e                            
  02514  3f3c03e8              move.w   #$3e8,-(a7)                        
  02518  486efda8              pea      -$258(a6)                          
  0251c  486eff30              pea      -$d0(a6)                           
  02520  4ead025a              jsr      f2_194e                            
  02524  4a2e0008              tst.b    $8(a6)                             
  02528  4fef000a              lea      $a(a7),a7                          
  0252c  6708                  beq.s    L2536                              
  0252e  2d6efdc0fdcc          move.l   -$240(a6),-$234(a6)                
  02534  6006                  bra.s    L253c                              
L2536:
  02536  2d6efdc4fdcc          move.l   -$23c(a6),-$234(a6)                
L253c:
  0253c  4a07                  tst.b    d7                                 
  0253e  6706                  beq.s    L2546                              
  02540  2d6efdc8fdcc          move.l   -$238(a6),-$234(a6)                
L2546:
  02546  4a2e000c              tst.b    $c(a6)                             
  0254a  6706                  beq.s    L2552                              
  0254c  2d6efdd0fdcc          move.l   -$230(a6),-$234(a6)                
L2552:
  02552  4a2e000c              tst.b    $c(a6)                             
  02556  6610                  bne.s    L2568                              
  02558  4a07                  tst.b    d7                                 
  0255a  660c                  bne.s    L2568                              
  0255c  4a6e000e              tst.w    $e(a6)                             
  02560  6606                  bne.s    L2568                              
  02562  2d6efdd4fdcc          move.l   -$22c(a6),-$234(a6)                
L2568:
  02568  486efe30              pea      -$1d0(a6)                          
  0256c  2f2efdcc              move.l   -$234(a6),-(a7)                    
  02570  2f3c00001194          move.l   STR_1194,-(a7)                     ; "?"
  02576  2f3c00001196          move.l   STR_1196,-(a7)                     ; "?"
  0257c  a98b                  _ParamText                                  ; $a98b
  0257e  42a7                  clr.l    -(a7)                              
  02580  3f3c03e9              move.w   #$3e9,-(a7)                        
  02584  486eff56              pea      -$aa(a6)                           
  02588  4878ffff              pea      ($ffff).w                          
  0258c  a97c                  _GetNewDialog                               ; $a97c
  0258e  285f                  movea.l  (a7)+,a4                           
  02590  2f0c                  move.l   a4,-(a7)                           
  02592  4ead06ba              jsr      f7_161c                            
  02596  2e8c                  move.l   a4,(a7)                            
  02598  a915                  _ShowWindow                                 ; $a915
  0259a  0c790004ffff8390      cmpi.w   #4,g_7c70                          
  025a2  6e0a                  bgt.s    L25ae                              
  025a4  0c790005ffff8894      cmpi.w   #5,g_776c                          
  025ac  6f10                  ble.s    L25be                              
L25ae:
  025ae  2f0c                  move.l   a4,-(a7)                           
  025b0  3f3c000a              move.w   #$a,-(a7)                          
  025b4  a827                  _ShowDialogItem                             ; $a827
  025b6  2f0c                  move.l   a4,-(a7)                           
  025b8  3f3c000b              move.w   #$b,-(a7)                          
  025bc  a827                  _ShowDialogItem                             ; $a827
L25be:
  025be  7a00                  moveq    #0,d5                              
  025c0  601e                  bra.s    L25e0                              
L25c2:
  025c2  4a765320ff4a          tst.w    (-$b6,a6,d5.w*2)                   
  025c8  6614                  bne.s    L25de                              
  025ca  2f0c                  move.l   a4,-(a7)                           
  025cc  7001                  moveq    #1,d0                              
  025ce  d045                  add.w    d5,d0                              
  025d0  3f00                  move.w   d0,-(a7)                           
  025d2  a827                  _ShowDialogItem                             ; $a827
  025d4  2f0c                  move.l   a4,-(a7)                           
  025d6  7005                  moveq    #5,d0                              
  025d8  d045                  add.w    d5,d0                              
  025da  3f00                  move.w   d0,-(a7)                           
  025dc  a827                  _ShowDialogItem                             ; $a827
L25de:
  025de  5245                  addq.w   #1,d5                              
L25e0:
  025e0  0c450004              cmpi.w   #4,d5                              
  025e4  6ddc                  blt.s    L25c2                              
  025e6  2f0c                  move.l   a4,-(a7)                           
  025e8  a873                  _SetPort                                    ; $a873
  025ea  7a00                  moveq    #0,d5                              
  025ec  6054                  bra.s    L2642                              
L25ee:
  025ee  2f0c                  move.l   a4,-(a7)                           
  025f0  7001                  moveq    #1,d0                              
  025f2  d045                  add.w    d5,d0                              
  025f4  3f00                  move.w   d0,-(a7)                           
  025f6  486eff54              pea      -$ac(a6)                           
  025fa  486efde4              pea      -$21c(a6)                          
  025fe  48765720fdf0          pea      (-$210,a6,d5.w*8)                  
  02604  a98d                  _GetDialogItem                              ; $a98d
  02606  2f0c                  move.l   a4,-(a7)                           
  02608  7005                  moveq    #5,d0                              
  0260a  d045                  add.w    d5,d0                              
  0260c  3f00                  move.w   d0,-(a7)                           
  0260e  486eff54              pea      -$ac(a6)                           
  02612  486efde4              pea      -$21c(a6)                          
  02616  48765720fe10          pea      (-$1f0,a6,d5.w*8)                  
  0261c  a98d                  _GetDialogItem                              ; $a98d
  0261e  4a765320ff4a          tst.w    (-$b6,a6,d5.w*2)                   
  02624  671a                  beq.s    L2640                              
  02626  2f0c                  move.l   a4,-(a7)                           
  02628  7001                  moveq    #1,d0                              
  0262a  d045                  add.w    d5,d0                              
  0262c  3f00                  move.w   d0,-(a7)                           
  0262e  3f2eff54              move.w   -$ac(a6),-(a7)                     
  02632  2f365520fd88          move.l   (-$278,a6,d5.w*4),-(a7)            
  02638  48765720fdf0          pea      (-$210,a6,d5.w*8)                  
  0263e  a98e                  _SetDialogItem                              ; $a98e
L2640:
  02640  5245                  addq.w   #1,d5                              
L2642:
  02642  0c450004              cmpi.w   #4,d5                              
  02646  6da6                  blt.s    L25ee                              
  02648  7600                  moveq    #0,d3                              
L264a:
  0264a  42a7                  clr.l    -(a7)                              
  0264c  486eff52              pea      -$ae(a6)                           
  02650  a991                  _ModalDialog                                ; $a991
  02652  536eff52              subq.w   #1,-$ae(a6)                        
  02656  302eff52              move.w   -$ae(a6),d0                        
  0265a  6b000274              bmi.w    L28d0                              
  0265e  0440000b              subi.w   #$b,d0                             
  02662  6700026a              beq.w    L28ce                              
  02666  6a000268              bpl.w    L28d0                              
  0266a  5640                  addq.w   #3,d0                              
  0266c  6a000262              bpl.w    L28d0                              
  02670  5840                  addq.w   #4,d0                              
  02672  6a000134              bpl.w    L27a8                              
  02676  302eff52              move.w   -$ae(a6),d0                        
  0267a  4a760320ff4a          tst.w    (-$b6,a6,d0.w*2)                   
  02680  6700024e              beq.w    L28d0                              
  02684  302eff52              move.w   -$ae(a6),d0                        
  02688  98760320ff42          sub.w    (-$be,a6,d0.w*2),d4                
  0268e  d6760320ff42          add.w    (-$be,a6,d0.w*2),d3                
  02694  53760320ff4a          subq.w   #1,(-$b6,a6,d0.w*2)                
  0269a  302eff52              move.w   -$ae(a6),d0                        
  0269e  52760320ff3a          addq.w   #1,(-$c6,a6,d0.w*2)                
  026a4  42a7                  clr.l    -(a7)                              
  026a6  302eff52              move.w   -$ae(a6),d0                        
  026aa  32360320ff32          move.w   (-$ce,a6,d0.w*2),d1                
  026b0  d2760320ff3a          add.w    (-$c6,a6,d0.w*2),d1                
  026b6  3f01                  move.w   d1,-(a7)                           
  026b8  a9bc                  _GetPicture                                 ; $a9bc
  026ba  302eff52              move.w   -$ae(a6),d0                        
  026be  2d9f0520fd98          move.l   (a7)+,(-$268,a6,d0.w*4)            
  026c4  302eff52              move.w   -$ae(a6),d0                        
  026c8  48760720fe10          pea      (-$1f0,a6,d0.w*8)                  
  026ce  a8a3                  _EraseRect                                  ; $a8a3
  026d0  302eff52              move.w   -$ae(a6),d0                        
  026d4  2f360520fd98          move.l   (-$268,a6,d0.w*4),-(a7)            
  026da  48760720fe10          pea      (-$1f0,a6,d0.w*8)                  
  026e0  a8f6                  _DrawPicture                                ; $a8f6
  026e2  2f0c                  move.l   a4,-(a7)                           
  026e4  7005                  moveq    #5,d0                              
  026e6  d06eff52              add.w    -$ae(a6),d0                        
  026ea  3f00                  move.w   d0,-(a7)                           
  026ec  3f3c0040              move.w   #$40,-(a7)                         
  026f0  302eff52              move.w   -$ae(a6),d0                        
  026f4  2f360520fd98          move.l   (-$268,a6,d0.w*4),-(a7)            
  026fa  48760720fe10          pea      (-$1f0,a6,d0.w*8)                  
  02700  a98e                  _SetDialogItem                              ; $a98e
  02702  302eff52              move.w   -$ae(a6),d0                        
  02706  4a760320ff4a          tst.w    (-$b6,a6,d0.w*2)                   
  0270c  660e                  bne.s    L271c                              
  0270e  2f0c                  move.l   a4,-(a7)                           
  02710  7001                  moveq    #1,d0                              
  02712  d06eff52              add.w    -$ae(a6),d0                        
  02716  3f00                  move.w   d0,-(a7)                           
  02718  a827                  _ShowDialogItem                             ; $a827
  0271a  605e                  bra.s    L277a                              
L271c:
  0271c  42a7                  clr.l    -(a7)                              
  0271e  302eff52              move.w   -$ae(a6),d0                        
  02722  32360320ff32          move.w   (-$ce,a6,d0.w*2),d1                
  02728  d2760320ff4a          add.w    (-$b6,a6,d0.w*2),d1                
  0272e  3f01                  move.w   d1,-(a7)                           
  02730  a9bc                  _GetPicture                                 ; $a9bc
  02732  302eff52              move.w   -$ae(a6),d0                        
  02736  2d9f0520fd88          move.l   (a7)+,(-$278,a6,d0.w*4)            
  0273c  302eff52              move.w   -$ae(a6),d0                        
  02740  48760720fdf0          pea      (-$210,a6,d0.w*8)                  
  02746  a8a3                  _EraseRect                                  ; $a8a3
  02748  302eff52              move.w   -$ae(a6),d0                        
  0274c  2f360520fd88          move.l   (-$278,a6,d0.w*4),-(a7)            
  02752  48760720fdf0          pea      (-$210,a6,d0.w*8)                  
  02758  a8f6                  _DrawPicture                                ; $a8f6
  0275a  2f0c                  move.l   a4,-(a7)                           
  0275c  7001                  moveq    #1,d0                              
  0275e  d06eff52              add.w    -$ae(a6),d0                        
  02762  3f00                  move.w   d0,-(a7)                           
  02764  3f3c0040              move.w   #$40,-(a7)                         
  02768  302eff52              move.w   -$ae(a6),d0                        
  0276c  2f360520fd88          move.l   (-$278,a6,d0.w*4),-(a7)            
  02772  48760720fdf0          pea      (-$210,a6,d0.w*8)                  
  02778  a98e                  _SetDialogItem                              ; $a98e
L277a:
  0277a  2f0c                  move.l   a4,-(a7)                           
  0277c  3f3c000b              move.w   #$b,-(a7)                          
  02780  486eff54              pea      -$ac(a6)                           
  02784  486efde4              pea      -$21c(a6)                          
  02788  486efde8              pea      -$218(a6)                          
  0278c  a98d                  _GetDialogItem                              ; $a98d
  0278e  3043                  movea.w  d3,a0                              
  02790  2f08                  move.l   a0,-(a7)                           
  02792  486efe30              pea      -$1d0(a6)                          
  02796  4ead0512              jsr      f4_150e                            
  0279a  2f2efde4              move.l   -$21c(a6),-(a7)                    
  0279e  486efe30              pea      -$1d0(a6)                          
  027a2  a98f                  _SetDialogItemText                          ; $a98f
  027a4  6000012a              bra.w    L28d0                              
L27a8:
  027a8  596eff52              subq.w   #4,-$ae(a6)                        
  027ac  302eff52              move.w   -$ae(a6),d0                        
  027b0  4a760320ff3a          tst.w    (-$c6,a6,d0.w*2)                   
  027b6  67000118              beq.w    L28d0                              
  027ba  302eff52              move.w   -$ae(a6),d0                        
  027be  d8760320ff42          add.w    (-$be,a6,d0.w*2),d4                
  027c4  96760320ff42          sub.w    (-$be,a6,d0.w*2),d3                
  027ca  52760320ff4a          addq.w   #1,(-$b6,a6,d0.w*2)                
  027d0  2f0c                  move.l   a4,-(a7)                           
  027d2  7001                  moveq    #1,d0                              
  027d4  d06eff52              add.w    -$ae(a6),d0                        
  027d8  3f00                  move.w   d0,-(a7)                           
  027da  a828                  _LayerDispatch                              ; $a828
  027dc  302eff52              move.w   -$ae(a6),d0                        
  027e0  53760320ff3a          subq.w   #1,(-$c6,a6,d0.w*2)                
  027e6  42a7                  clr.l    -(a7)                              
  027e8  302eff52              move.w   -$ae(a6),d0                        
  027ec  32360320ff32          move.w   (-$ce,a6,d0.w*2),d1                
  027f2  d2760320ff4a          add.w    (-$b6,a6,d0.w*2),d1                
  027f8  3f01                  move.w   d1,-(a7)                           
  027fa  a9bc                  _GetPicture                                 ; $a9bc
  027fc  302eff52              move.w   -$ae(a6),d0                        
  02800  2d9f0520fd88          move.l   (a7)+,(-$278,a6,d0.w*4)            
  02806  302eff52              move.w   -$ae(a6),d0                        
  0280a  48760720fdf0          pea      (-$210,a6,d0.w*8)                  
  02810  a8a3                  _EraseRect                                  ; $a8a3
  02812  302eff52              move.w   -$ae(a6),d0                        
  02816  2f360520fd88          move.l   (-$278,a6,d0.w*4),-(a7)            
  0281c  48760720fdf0          pea      (-$210,a6,d0.w*8)                  
  02822  a8f6                  _DrawPicture                                ; $a8f6
  02824  2f0c                  move.l   a4,-(a7)                           
  02826  7001                  moveq    #1,d0                              
  02828  d06eff52              add.w    -$ae(a6),d0                        
  0282c  3f00                  move.w   d0,-(a7)                           
  0282e  3f3c0040              move.w   #$40,-(a7)                         
  02832  302eff52              move.w   -$ae(a6),d0                        
  02836  2f360520fd88          move.l   (-$278,a6,d0.w*4),-(a7)            
  0283c  48760720fdf0          pea      (-$210,a6,d0.w*8)                  
  02842  a98e                  _SetDialogItem                              ; $a98e
  02844  42a7                  clr.l    -(a7)                              
  02846  302eff52              move.w   -$ae(a6),d0                        
  0284a  32360320ff32          move.w   (-$ce,a6,d0.w*2),d1                
  02850  d2760320ff3a          add.w    (-$c6,a6,d0.w*2),d1                
  02856  3f01                  move.w   d1,-(a7)                           
  02858  a9bc                  _GetPicture                                 ; $a9bc
  0285a  302eff52              move.w   -$ae(a6),d0                        
  0285e  2d9f0520fd98          move.l   (a7)+,(-$268,a6,d0.w*4)            
  02864  302eff52              move.w   -$ae(a6),d0                        
  02868  48760720fe10          pea      (-$1f0,a6,d0.w*8)                  
  0286e  a8a3                  _EraseRect                                  ; $a8a3
  02870  302eff52              move.w   -$ae(a6),d0                        
  02874  2f360520fd98          move.l   (-$268,a6,d0.w*4),-(a7)            
  0287a  48760720fe10          pea      (-$1f0,a6,d0.w*8)                  
  02880  a8f6                  _DrawPicture                                ; $a8f6
  02882  2f0c                  move.l   a4,-(a7)                           
  02884  7005                  moveq    #5,d0                              
  02886  d06eff52              add.w    -$ae(a6),d0                        
  0288a  3f00                  move.w   d0,-(a7)                           
  0288c  3f3c0040              move.w   #$40,-(a7)                         
  02890  302eff52              move.w   -$ae(a6),d0                        
  02894  2f360520fd98          move.l   (-$268,a6,d0.w*4),-(a7)            
  0289a  48760720fe10          pea      (-$1f0,a6,d0.w*8)                  
  028a0  a98e                  _SetDialogItem                              ; $a98e
  028a2  2f0c                  move.l   a4,-(a7)                           
  028a4  3f3c000b              move.w   #$b,-(a7)                          
  028a8  486eff54              pea      -$ac(a6)                           
  028ac  486efde4              pea      -$21c(a6)                          
  028b0  486efde8              pea      -$218(a6)                          
  028b4  a98d                  _GetDialogItem                              ; $a98d
  028b6  3043                  movea.w  d3,a0                              
  028b8  2f08                  move.l   a0,-(a7)                           
  028ba  486efe30              pea      -$1d0(a6)                          
  028be  4ead0512              jsr      f4_150e                            
  028c2  2f2efde4              move.l   -$21c(a6),-(a7)                    
  028c6  486efe30              pea      -$1d0(a6)                          
  028ca  a98f                  _SetDialogItemText                          ; $a98f
  028cc  6002                  bra.s    L28d0                              
L28ce:
  028ce  7c01                  moveq    #1,d6                              
L28d0:
  028d0  4a44                  tst.w    d4                                 
  028d2  6c06                  bge.s    L28da                              
  028d4  3f3c0001              move.w   #1,-(a7)                           
  028d8  a9c8                  _SysBeep                                    ; $a9c8
L28da:
  028da  4a44                  tst.w    d4                                 
  028dc  6706                  beq.s    L28e4                              
  028de  4a06                  tst.b    d6                                 
  028e0  6700fd68              beq.w    L264a                              
L28e4:
  028e4  2f0c                  move.l   a4,-(a7)                           
  028e6  a983                  _DisposeDialog                              ; $a983
  028e8  7a00                  moveq    #0,d5                              
  028ea  6016                  bra.s    L2902                              
L28ec:
  028ec  4ab65520fd88          tst.l    (-$278,a6,d5.w*4)                  
  028f2  670c                  beq.s    L2900                              
  028f4  2f365520fd88          move.l   (-$278,a6,d5.w*4),-(a7)            
  028fa  a9a3                  _ReleaseResource                            ; $a9a3
  028fc  4ead01ca              jsr      f2_6b56                            
L2900:
  02900  5245                  addq.w   #1,d5                              
L2902:
  02902  0c450008              cmpi.w   #8,d5                              
  02906  6de4                  blt.s    L28ec                              
  02908  7a01                  moveq    #1,d5                              
  0290a  600a                  bra.s    L2916                              
L290c:
  0290c  20765520fda8          movea.l  (-$258,a6,d5.w*4),a0               
  02912  a01f                  _DisposePtr                                 ; $a01f
  02914  5245                  addq.w   #1,d5                              
L2916:
  02916  ba6eff30              cmp.w    -$d0(a6),d5                        
  0291a  6ff0                  ble.s    L290c                              
  0291c  2f2efd84              move.l   -$27c(a6),-(a7)                    
  02920  a873                  _SetPort                                    ; $a873
  02922  4a44                  tst.w    d4                                 
  02924  6604                  bne.s    L292a                              
  02926  7001                  moveq    #1,d0                              
  02928  6002                  bra.s    L292c                              
L292a:
  0292a  7000                  moveq    #0,d0                              
L292c:
  0292c  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  02930  4e5e                  unlk     a6                                 
  02932  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_2934
;----------------------------------------------------------------------
f6_2934:
  02934  4e56fff8              link     a6,#-8                             
  02938  a01c                  _FreeMem                                    ; $a01c
  0293a  2d40fffc              move.l   d0,-$4(a6)                         
  0293e  43eefffc              lea      -$4(a6),a1                         
  02942  a11d                  _MaxMem                                     ; $a11d
  02944  2288                  move.l   a0,(a1)                            
  02946  2d40fff8              move.l   d0,-$8(a6)                         
  0294a  4e5e                  unlk     a6                                 
  0294c  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_294e   [jump table #202]
;----------------------------------------------------------------------
f6_294e:
  0294e  4e56fff6              link     a6,#-10                            
  02952  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  02956  3e2e0008              move.w   $8(a6),d7                          
  0295a  3079ffff836c          movea.w  g_7c94,a0                          
  02960  2008                  move.l   a0,d0                              
  02962  81fc0015              divs.w   #$15,d0                            
  02966  3d40fff8              move.w   d0,-$8(a6)                         
  0296a  3079ffff836e          movea.w  g_7c92,a0                          
  02970  72f1                  moveq    #-15,d1                            
  02972  d288                  add.l    a0,d1                              
  02974  83fc0015              divs.w   #$15,d1                            
  02978  3d41fffc              move.w   d1,-$4(a6)                         
  0297c  4a7073b0ffff8c78      tst.w    (-$7388,za0,d7.w*2)                
  02984  6f00051c              ble.w    L2ea2                              
  02988  4a7073b0ffff8c78      tst.w    (-$7388,za0,d7.w*2)                
  02990  6f000510              ble.w    L2ea2                              
  02994  307073b0ffff8c24      movea.w  (-$73dc,za0,d7.w*2),a0             
  0299c  2c08                  move.l   a0,d6                              
  0299e  8dfc0015              divs.w   #$15,d6                            
  029a2  307073b0ffff8c4e      movea.w  (-$73b2,za0,d7.w*2),a0             
  029aa  7af1                  moveq    #-15,d5                            
  029ac  da88                  add.l    a0,d5                              
  029ae  8bfc0015              divs.w   #$15,d5                            
  029b2  7012                  moveq    #18,d0                             
  029b4  c1c6                  muls.w   d6,d0                              
  029b6  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  029bc  3045                  movea.w  d5,a0                              
  029be  d1c8                  adda.l   a0,a0                              
  029c0  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  029c4  4ead024a              jsr      f2_7a2c                            
  029c8  3d40fff6              move.w   d0,-$a(a6)                         
  029cc  7212                  moveq    #18,d1                             
  029ce  c3eefff8              muls.w   -$8(a6),d1                         
  029d2  2041                  movea.l  d1,a0                              
  029d4  322efffc              move.w   -$4(a6),d1                         
  029d8  3eb01330ffff88b2      move.w   (-$774e,a0,d1.w*2),(a7)            
  029e0  4ead024a              jsr      f2_7a2c                            
  029e4  3d40fffa              move.w   d0,-$6(a6)                         
  029e8  3ebc03e8              move.w   #$3e8,(a7)                         
  029ec  4ead0242              jsr      f2_79a8                            
  029f0  0c4003de              cmpi.w   #$3de,d0                           
  029f4  548f                  addq.l   #2,a7                              
  029f6  6f0a                  ble.s    L2a02                              
  029f8  11bc000171b0ffff97e4  move.b   #1,(-$681c,za0,d7.w)               
L2a02:
  02a02  4a3071b0ffff97e4      tst.b    (-$681c,za0,d7.w)                  
  02a0a  67000478              beq.w    L2e84                              
  02a0e  7800                  moveq    #0,d4                              
  02a10  bc6efff8              cmp.w    -$8(a6),d6                         
  02a14  6c00011a              bge.w    L2b30                              
  02a18  7001                  moveq    #1,d0                              
  02a1a  d046                  add.w    d6,d0                              
  02a1c  c1fc0012              muls.w   #$12,d0                            
  02a20  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02a26  3045                  movea.w  d5,a0                              
  02a28  d1c8                  adda.l   a0,a0                              
  02a2a  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  02a2e  4ead024a              jsr      f2_7a2c                            
  02a32  b06efff6              cmp.w    -$a(a6),d0                         
  02a36  548f                  addq.l   #2,a7                              
  02a38  671a                  beq.s    L2a54                              
  02a3a  302efff6              move.w   -$a(a6),d0                         
  02a3e  72f1                  moveq    #-15,d1                            
  02a40  d27073b0ffff8c4e      add.w    (-$73b2,za0,d7.w*2),d1             
  02a48  b27003b0ffff8a56      cmp.w    (-$75aa,za0,d0.w*2),d1             
  02a50  660000de              bne.w    L2b30                              
L2a54:
  02a54  7001                  moveq    #1,d0                              
  02a56  d046                  add.w    d6,d0                              
  02a58  b06efff8              cmp.w    -$8(a6),d0                         
  02a5c  66000096              bne.w    L2af4                              
  02a60  ba6efffc              cmp.w    -$4(a6),d5                         
  02a64  6600008e              bne.w    L2af4                              
  02a68  4a39ffff981e          tst.b    g_67e2                             
  02a6e  66000084              bne.w    L2af4                              
  02a72  2f3c00150000          move.l   #$150000,-(a7)                     
  02a78  3f07                  move.w   d7,-(a7)                           
  02a7a  4ebad6f4              jsr      f6_0170                            
  02a7e  1800                  move.b   d0,d4                              
  02a80  7001                  moveq    #1,d0                              
  02a82  d046                  add.w    d6,d0                              
  02a84  c1fc0012              muls.w   #$12,d0                            
  02a88  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02a8e  3045                  movea.w  d5,a0                              
  02a90  d1c8                  adda.l   a0,a0                              
  02a92  3eb00800              move.w   $0(a0,d0.l),(a7)                   
  02a96  4ead024a              jsr      f2_7a2c                            
  02a9a  3d40fff6              move.w   d0,-$a(a6)                         
  02a9e  4a04                  tst.b    d4                                 
  02aa0  5c8f                  addq.l   #6,a7                              
  02aa2  6700008c              beq.w    L2b30                              
  02aa6  31b9ffff836e73b0ffff  move.w   g_7c92,(-$73b2,za0,d7.w*2)         
  02ab2  31b9ffff836c73b0ffff  move.w   g_7c94,(-$73dc,za0,d7.w*2)         
  02abe  1f3c0001              move.b   #1,-(a7)                           
  02ac2  3f2efffa              move.w   -$6(a6),-(a7)                      
  02ac6  4ead016a              jsr      f2_549e                            
  02aca  7601                  moveq    #1,d3                              
  02acc  588f                  addq.l   #4,a7                              
  02ace  6002                  bra.s    L2ad2                              
L2ad0:
  02ad0  5243                  addq.w   #1,d3                              
L2ad2:
  02ad2  be7033b0ffff97be      cmp.w    (-$6842,za0,d3.w*2),d7             
  02ada  6708                  beq.s    L2ae4                              
  02adc  b679ffff8e0a          cmp.w    g_71f6,d3                          
  02ae2  6fec                  ble.s    L2ad0                              
L2ae4:
  02ae4  3f03                  move.w   d3,-(a7)                           
  02ae6  3f3c081b              move.w   #$81b,-(a7)                        
  02aea  3f07                  move.w   d7,-(a7)                           
  02aec  4ead02b2              jsr      f3_22e0                            
  02af0  5c8f                  addq.l   #6,a7                              
  02af2  603c                  bra.s    L2b30                              
L2af4:
  02af4  2f3c00150000          move.l   #$150000,-(a7)                     
  02afa  3f07                  move.w   d7,-(a7)                           
  02afc  4ebad672              jsr      f6_0170                            
  02b00  1800                  move.b   d0,d4                              
  02b02  4a04                  tst.b    d4                                 
  02b04  5c8f                  addq.l   #6,a7                              
  02b06  6720                  beq.s    L2b28                              
  02b08  7001                  moveq    #1,d0                              
  02b0a  d046                  add.w    d6,d0                              
  02b0c  c1fc0012              muls.w   #$12,d0                            
  02b10  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02b16  3045                  movea.w  d5,a0                              
  02b18  d1c8                  adda.l   a0,a0                              
  02b1a  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  02b1e  4ead024a              jsr      f2_7a2c                            
  02b22  3d40fff6              move.w   d0,-$a(a6)                         
  02b26  548f                  addq.l   #2,a7                              
L2b28:
  02b28  423071b0ffff97f9      clr.b    (-$6807,za0,d7.w)                  
L2b30:
  02b30  ba6efffc              cmp.w    -$4(a6),d5                         
  02b34  6c00010e              bge.w    L2c44                              
  02b38  4a04                  tst.b    d4                                 
  02b3a  66000108              bne.w    L2c44                              
  02b3e  7012                  moveq    #18,d0                             
  02b40  c1c6                  muls.w   d6,d0                              
  02b42  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  02b48  3045                  movea.w  d5,a0                              
  02b4a  d1c8                  adda.l   a0,a0                              
  02b4c  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  02b50  4ead024a              jsr      f2_7a2c                            
  02b54  b06efff6              cmp.w    -$a(a6),d0                         
  02b58  548f                  addq.l   #2,a7                              
  02b5a  671a                  beq.s    L2b76                              
  02b5c  302efff6              move.w   -$a(a6),d0                         
  02b60  72ff                  moveq    #-1,d1                             
  02b62  d27073b0ffff8c24      add.w    (-$73dc,za0,d7.w*2),d1             
  02b6a  b27003b0ffff8a80      cmp.w    (-$7580,za0,d0.w*2),d1             
  02b72  660000d0              bne.w    L2c44                              
L2b76:
  02b76  7001                  moveq    #1,d0                              
  02b78  d045                  add.w    d5,d0                              
  02b7a  b06efffc              cmp.w    -$4(a6),d0                         
  02b7e  6600008e              bne.w    L2c0e                              
  02b82  bc6efff8              cmp.w    -$8(a6),d6                         
  02b86  66000086              bne.w    L2c0e                              
  02b8a  4a39ffff981e          tst.b    g_67e2                             
  02b90  667c                  bne.s    L2c0e                              
  02b92  48780015              pea      ($15).w                            
  02b96  3f07                  move.w   d7,-(a7)                           
  02b98  4ebad5d6              jsr      f6_0170                            
  02b9c  1800                  move.b   d0,d4                              
  02b9e  7012                  moveq    #18,d0                             
  02ba0  c1c6                  muls.w   d6,d0                              
  02ba2  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  02ba8  3045                  movea.w  d5,a0                              
  02baa  d1c8                  adda.l   a0,a0                              
  02bac  3eb00800              move.w   $0(a0,d0.l),(a7)                   
  02bb0  4ead024a              jsr      f2_7a2c                            
  02bb4  3d40fff6              move.w   d0,-$a(a6)                         
  02bb8  4a04                  tst.b    d4                                 
  02bba  5c8f                  addq.l   #6,a7                              
  02bbc  67000086              beq.w    L2c44                              
  02bc0  31b9ffff836e73b0ffff  move.w   g_7c92,(-$73b2,za0,d7.w*2)         
  02bcc  31b9ffff836c73b0ffff  move.w   g_7c94,(-$73dc,za0,d7.w*2)         
  02bd8  1f3c0001              move.b   #1,-(a7)                           
  02bdc  3f2efffa              move.w   -$6(a6),-(a7)                      
  02be0  4ead016a              jsr      f2_549e                            
  02be4  7601                  moveq    #1,d3                              
  02be6  588f                  addq.l   #4,a7                              
  02be8  6002                  bra.s    L2bec                              
L2bea:
  02bea  5243                  addq.w   #1,d3                              
L2bec:
  02bec  be7033b0ffff97be      cmp.w    (-$6842,za0,d3.w*2),d7             
  02bf4  6708                  beq.s    L2bfe                              
  02bf6  b679ffff8e0a          cmp.w    g_71f6,d3                          
  02bfc  6fec                  ble.s    L2bea                              
L2bfe:
  02bfe  3f03                  move.w   d3,-(a7)                           
  02c00  3f3c081b              move.w   #$81b,-(a7)                        
  02c04  3f07                  move.w   d7,-(a7)                           
  02c06  4ead02b2              jsr      f3_22e0                            
  02c0a  5c8f                  addq.l   #6,a7                              
  02c0c  6036                  bra.s    L2c44                              
L2c0e:
  02c0e  48780015              pea      ($15).w                            
  02c12  3f07                  move.w   d7,-(a7)                           
  02c14  4ebad55a              jsr      f6_0170                            
  02c18  1800                  move.b   d0,d4                              
  02c1a  4a04                  tst.b    d4                                 
  02c1c  5c8f                  addq.l   #6,a7                              
  02c1e  671c                  beq.s    L2c3c                              
  02c20  7012                  moveq    #18,d0                             
  02c22  c1c6                  muls.w   d6,d0                              
  02c24  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  02c2a  3045                  movea.w  d5,a0                              
  02c2c  d1c8                  adda.l   a0,a0                              
  02c2e  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  02c32  4ead024a              jsr      f2_7a2c                            
  02c36  3d40fff6              move.w   d0,-$a(a6)                         
  02c3a  548f                  addq.l   #2,a7                              
L2c3c:
  02c3c  423071b0ffff97f9      clr.b    (-$6807,za0,d7.w)                  
L2c44:
  02c44  bc6efff8              cmp.w    -$8(a6),d6                         
  02c48  6f000120              ble.w    L2d6a                              
  02c4c  4a04                  tst.b    d4                                 
  02c4e  6600011a              bne.w    L2d6a                              
  02c52  70ff                  moveq    #-1,d0                             
  02c54  d046                  add.w    d6,d0                              
  02c56  c1fc0012              muls.w   #$12,d0                            
  02c5a  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02c60  3045                  movea.w  d5,a0                              
  02c62  d1c8                  adda.l   a0,a0                              
  02c64  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  02c68  4ead024a              jsr      f2_7a2c                            
  02c6c  b06efff6              cmp.w    -$a(a6),d0                         
  02c70  548f                  addq.l   #2,a7                              
  02c72  671a                  beq.s    L2c8e                              
  02c74  302efff6              move.w   -$a(a6),d0                         
  02c78  72f1                  moveq    #-15,d1                            
  02c7a  d27073b0ffff8c4e      add.w    (-$73b2,za0,d7.w*2),d1             
  02c82  b27003b0ffff8aaa      cmp.w    (-$7556,za0,d0.w*2),d1             
  02c8a  660000de              bne.w    L2d6a                              
L2c8e:
  02c8e  70ff                  moveq    #-1,d0                             
  02c90  d046                  add.w    d6,d0                              
  02c92  b06efff8              cmp.w    -$8(a6),d0                         
  02c96  66000096              bne.w    L2d2e                              
  02c9a  ba6efffc              cmp.w    -$4(a6),d5                         
  02c9e  6600008e              bne.w    L2d2e                              
  02ca2  4a39ffff981e          tst.b    g_67e2                             
  02ca8  66000084              bne.w    L2d2e                              
  02cac  2f3cffeb0000          move.l   #$ffeb0000,-(a7)                   
  02cb2  3f07                  move.w   d7,-(a7)                           
  02cb4  4ebad4ba              jsr      f6_0170                            
  02cb8  1800                  move.b   d0,d4                              
  02cba  70ff                  moveq    #-1,d0                             
  02cbc  d046                  add.w    d6,d0                              
  02cbe  c1fc0012              muls.w   #$12,d0                            
  02cc2  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02cc8  3045                  movea.w  d5,a0                              
  02cca  d1c8                  adda.l   a0,a0                              
  02ccc  3eb00800              move.w   $0(a0,d0.l),(a7)                   
  02cd0  4ead024a              jsr      f2_7a2c                            
  02cd4  3d40fff6              move.w   d0,-$a(a6)                         
  02cd8  4a04                  tst.b    d4                                 
  02cda  5c8f                  addq.l   #6,a7                              
  02cdc  6700008c              beq.w    L2d6a                              
  02ce0  31b9ffff836e73b0ffff  move.w   g_7c92,(-$73b2,za0,d7.w*2)         
  02cec  31b9ffff836c73b0ffff  move.w   g_7c94,(-$73dc,za0,d7.w*2)         
  02cf8  1f3c0001              move.b   #1,-(a7)                           
  02cfc  3f2efffa              move.w   -$6(a6),-(a7)                      
  02d00  4ead016a              jsr      f2_549e                            
  02d04  7601                  moveq    #1,d3                              
  02d06  588f                  addq.l   #4,a7                              
  02d08  6002                  bra.s    L2d0c                              
L2d0a:
  02d0a  5243                  addq.w   #1,d3                              
L2d0c:
  02d0c  be7033b0ffff97be      cmp.w    (-$6842,za0,d3.w*2),d7             
  02d14  6708                  beq.s    L2d1e                              
  02d16  b679ffff8e0a          cmp.w    g_71f6,d3                          
  02d1c  6fec                  ble.s    L2d0a                              
L2d1e:
  02d1e  3f03                  move.w   d3,-(a7)                           
  02d20  3f3c081b              move.w   #$81b,-(a7)                        
  02d24  3f07                  move.w   d7,-(a7)                           
  02d26  4ead02b2              jsr      f3_22e0                            
  02d2a  5c8f                  addq.l   #6,a7                              
  02d2c  603c                  bra.s    L2d6a                              
L2d2e:
  02d2e  2f3cffeb0000          move.l   #$ffeb0000,-(a7)                   
  02d34  3f07                  move.w   d7,-(a7)                           
  02d36  4ebad438              jsr      f6_0170                            
  02d3a  1800                  move.b   d0,d4                              
  02d3c  4a04                  tst.b    d4                                 
  02d3e  5c8f                  addq.l   #6,a7                              
  02d40  6720                  beq.s    L2d62                              
  02d42  70ff                  moveq    #-1,d0                             
  02d44  d046                  add.w    d6,d0                              
  02d46  c1fc0012              muls.w   #$12,d0                            
  02d4a  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02d50  3045                  movea.w  d5,a0                              
  02d52  d1c8                  adda.l   a0,a0                              
  02d54  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  02d58  4ead024a              jsr      f2_7a2c                            
  02d5c  3d40fff6              move.w   d0,-$a(a6)                         
  02d60  548f                  addq.l   #2,a7                              
L2d62:
  02d62  423071b0ffff97f9      clr.b    (-$6807,za0,d7.w)                  
L2d6a:
  02d6a  ba6efffc              cmp.w    -$4(a6),d5                         
  02d6e  6f000114              ble.w    L2e84                              
  02d72  4a04                  tst.b    d4                                 
  02d74  6600010e              bne.w    L2e84                              
  02d78  7012                  moveq    #18,d0                             
  02d7a  c1c6                  muls.w   d6,d0                              
  02d7c  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  02d82  3045                  movea.w  d5,a0                              
  02d84  d1c8                  adda.l   a0,a0                              
  02d86  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  02d8a  4ead024a              jsr      f2_7a2c                            
  02d8e  b06efff6              cmp.w    -$a(a6),d0                         
  02d92  548f                  addq.l   #2,a7                              
  02d94  671a                  beq.s    L2db0                              
  02d96  302efff6              move.w   -$a(a6),d0                         
  02d9a  72ff                  moveq    #-1,d1                             
  02d9c  d27073b0ffff8c24      add.w    (-$73dc,za0,d7.w*2),d1             
  02da4  b27003b0ffff8a2c      cmp.w    (-$75d4,za0,d0.w*2),d1             
  02dac  660000d6              bne.w    L2e84                              
L2db0:
  02db0  70ff                  moveq    #-1,d0                             
  02db2  d045                  add.w    d5,d0                              
  02db4  b06efffc              cmp.w    -$4(a6),d0                         
  02db8  66000092              bne.w    L2e4c                              
  02dbc  bc6efff8              cmp.w    -$8(a6),d6                         
  02dc0  6600008a              bne.w    L2e4c                              
  02dc4  4a39ffff981e          tst.b    g_67e2                             
  02dca  66000080              bne.w    L2e4c                              
  02dce  2f3c0000ffeb          move.l   #$ffeb,-(a7)                       
  02dd4  3f07                  move.w   d7,-(a7)                           
  02dd6  4ebad398              jsr      f6_0170                            
  02dda  1800                  move.b   d0,d4                              
  02ddc  7012                  moveq    #18,d0                             
  02dde  c1c6                  muls.w   d6,d0                              
  02de0  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  02de6  3045                  movea.w  d5,a0                              
  02de8  d1c8                  adda.l   a0,a0                              
  02dea  3eb00800              move.w   $0(a0,d0.l),(a7)                   
  02dee  4ead024a              jsr      f2_7a2c                            
  02df2  3d40fff6              move.w   d0,-$a(a6)                         
  02df6  4a04                  tst.b    d4                                 
  02df8  5c8f                  addq.l   #6,a7                              
  02dfa  67000088              beq.w    L2e84                              
  02dfe  31b9ffff836e73b0ffff  move.w   g_7c92,(-$73b2,za0,d7.w*2)         
  02e0a  31b9ffff836c73b0ffff  move.w   g_7c94,(-$73dc,za0,d7.w*2)         
  02e16  1f3c0001              move.b   #1,-(a7)                           
  02e1a  3f2efffa              move.w   -$6(a6),-(a7)                      
  02e1e  4ead016a              jsr      f2_549e                            
  02e22  7601                  moveq    #1,d3                              
  02e24  588f                  addq.l   #4,a7                              
  02e26  6002                  bra.s    L2e2a                              
L2e28:
  02e28  5243                  addq.w   #1,d3                              
L2e2a:
  02e2a  be7033b0ffff97be      cmp.w    (-$6842,za0,d3.w*2),d7             
  02e32  6708                  beq.s    L2e3c                              
  02e34  b679ffff8e0a          cmp.w    g_71f6,d3                          
  02e3a  6fec                  ble.s    L2e28                              
L2e3c:
  02e3c  3f03                  move.w   d3,-(a7)                           
  02e3e  3f3c081b              move.w   #$81b,-(a7)                        
  02e42  3f07                  move.w   d7,-(a7)                           
  02e44  4ead02b2              jsr      f3_22e0                            
  02e48  5c8f                  addq.l   #6,a7                              
  02e4a  6038                  bra.s    L2e84                              
L2e4c:
  02e4c  2f3c0000ffeb          move.l   #$ffeb,-(a7)                       
  02e52  3f07                  move.w   d7,-(a7)                           
  02e54  4ebad31a              jsr      f6_0170                            
  02e58  1800                  move.b   d0,d4                              
  02e5a  4a04                  tst.b    d4                                 
  02e5c  5c8f                  addq.l   #6,a7                              
  02e5e  671c                  beq.s    L2e7c                              
  02e60  7012                  moveq    #18,d0                             
  02e62  c1c6                  muls.w   d6,d0                              
  02e64  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  02e6a  3045                  movea.w  d5,a0                              
  02e6c  d1c8                  adda.l   a0,a0                              
  02e6e  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  02e72  4ead024a              jsr      f2_7a2c                            
  02e76  3d40fff6              move.w   d0,-$a(a6)                         
  02e7a  548f                  addq.l   #2,a7                              
L2e7c:
  02e7c  423071b0ffff97f9      clr.b    (-$6807,za0,d7.w)                  
L2e84:
  02e84  307073b0ffff8c24      movea.w  (-$73dc,za0,d7.w*2),a0             
  02e8c  2c08                  move.l   a0,d6                              
  02e8e  8dfc0015              divs.w   #$15,d6                            
  02e92  307073b0ffff8c4e      movea.w  (-$73b2,za0,d7.w*2),a0             
  02e9a  7af1                  moveq    #-15,d5                            
  02e9c  da88                  add.l    a0,d5                              
  02e9e  8bfc0015              divs.w   #$15,d5                            
L2ea2:
  02ea2  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  02ea6  4e5e                  unlk     a6                                 
  02ea8  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_2eaa
;----------------------------------------------------------------------
f6_2eaa:
  02eaa  4e560000              link     a6,#0                              
  02eae  2f07                  move.l   d7,-(a7)                           
  02eb0  7e00                  moveq    #0,d7                              
  02eb2  3039ffff83bc          move.w   g_7c44,d0                          
  02eb8  674a                  beq.s    L2f04                              
  02eba  6b48                  bmi.s    L2f04                              
  02ebc  5740                  subq.w   #3,d0                              
  02ebe  672a                  beq.s    L2eea                              
  02ec0  6a06                  bpl.s    L2ec8                              
  02ec2  5240                  addq.w   #1,d0                              
  02ec4  6a16                  bpl.s    L2edc                              
  02ec6  6006                  bra.s    L2ece                              
L2ec8:
  02ec8  5540                  subq.w   #2,d0                              
  02eca  6a38                  bpl.s    L2f04                              
  02ecc  602a                  bra.s    L2ef8                              
L2ece:
  02ece  302e000a              move.w   $a(a6),d0                          
  02ed2  b06e000e              cmp.w    $e(a6),d0                          
  02ed6  6e2c                  bgt.s    L2f04                              
  02ed8  7e01                  moveq    #1,d7                              
  02eda  6028                  bra.s    L2f04                              
L2edc:
  02edc  302e0008              move.w   $8(a6),d0                          
  02ee0  b06e000c              cmp.w    $c(a6),d0                          
  02ee4  6e1e                  bgt.s    L2f04                              
  02ee6  7e01                  moveq    #1,d7                              
  02ee8  601a                  bra.s    L2f04                              
L2eea:
  02eea  302e000a              move.w   $a(a6),d0                          
  02eee  b06e000e              cmp.w    $e(a6),d0                          
  02ef2  6d10                  blt.s    L2f04                              
  02ef4  7e01                  moveq    #1,d7                              
  02ef6  600c                  bra.s    L2f04                              
L2ef8:
  02ef8  302e0008              move.w   $8(a6),d0                          
  02efc  b06e000c              cmp.w    $c(a6),d0                          
  02f00  6e02                  bgt.s    L2f04                              
  02f02  7e01                  moveq    #1,d7                              
L2f04:
  02f04  1007                  move.b   d7,d0                              
  02f06  2e1f                  move.l   (a7)+,d7                           
  02f08  4e5e                  unlk     a6                                 
  02f0a  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_2f0c   [jump table #203]
;----------------------------------------------------------------------
f6_2f0c:
  02f0c  4e56fe54              link     a6,#-428                           
  02f10  2f0c                  move.l   a4,-(a7)                           
  02f12  426efe54              clr.w    -$1ac(a6)                          
  02f16  486efe56              pea      -$1aa(a6)                          
  02f1a  3f3c01f4              move.w   #$1f4,-(a7)                        
  02f1e  7001                  moveq    #1,d0                              
  02f20  d079ffff8836          add.w    g_77ca,d0                          
  02f26  3f00                  move.w   d0,-(a7)                           
  02f28  4ead0522              jsr      f4_153c                            
  02f2c  486efe56              pea      -$1aa(a6)                          
  02f30  2f3c00001198          move.l   STR_1198,-(a7)                     ; "?"
  02f36  2f3c0000119a          move.l   STR_119a,-(a7)                     ; "?"
  02f3c  2f3c0000119c          move.l   STR_119c,-(a7)                     ; "?"
  02f42  a98b                  _ParamText                                  ; $a98b
  02f44  42a7                  clr.l    -(a7)                              
  02f46  3f3c01f4              move.w   #$1f4,-(a7)                        
  02f4a  486eff56              pea      -$aa(a6)                           
  02f4e  4878ffff              pea      ($ffff).w                          
  02f52  a97c                  _GetNewDialog                               ; $a97c
  02f54  285f                  movea.l  (a7)+,a4                           
  02f56  2f0c                  move.l   a4,-(a7)                           
  02f58  4ead06ba              jsr      f7_161c                            
  02f5c  2e8c                  move.l   a4,(a7)                            
  02f5e  a915                  _ShowWindow                                 ; $a915
L2f60:
  02f60  42a7                  clr.l    -(a7)                              
  02f62  486efe54              pea      -$1ac(a6)                          
  02f66  a991                  _ModalDialog                                ; $a991
  02f68  0c6e0001fe54          cmpi.w   #1,-$1ac(a6)                       
  02f6e  66f0                  bne.s    L2f60                              
  02f70  2f0c                  move.l   a4,-(a7)                           
  02f72  a983                  _DisposeDialog                              ; $a983
  02f74  4ead01ca              jsr      f2_6b56                            
  02f78  5279ffff8836          addq.w   #1,g_77ca                          
  02f7e  285f                  movea.l  (a7)+,a4                           
  02f80  4e5e                  unlk     a6                                 
  02f82  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_2f84
;----------------------------------------------------------------------
f6_2f84:
  02f84  4e56fdfc              link     a6,#-516                           
  02f88  486efdfc              pea      -$204(a6)                          
  02f8c  a874                  _GetPort                                    ; $a874
  02f8e  0c790006ffff83a2      cmpi.w   #6,g_7c5e                          
  02f96  670000ac              beq.w    L3044                              
  02f9a  486eff00              pea      -$100(a6)                          
  02f9e  3f3c02d3              move.w   #$2d3,-(a7)                        
  02fa2  3f2e000c              move.w   $c(a6),-(a7)                       
  02fa6  4ead0522              jsr      f4_153c                            
  02faa  302e000a              move.w   $a(a6),d0                          
  02fae  303003b0ffff8c78      move.w   (-$7388,za0,d0.w*2),d0             
  02fb6  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  02fbe  486eff00              pea      -$100(a6)                          
  02fc2  2f3c0000119e          move.l   STR_119e,-(a7)                     ; "?"
  02fc8  2f3c000011a0          move.l   STR_11a0,-(a7)                     ; "?"
  02fce  a98b                  _ParamText                                  ; $a98b
  02fd0  302e0008              move.w   $8(a6),d0                          
  02fd4  d179ffff8396          add.w    d0,g_7c6a                          
  02fda  0c79001dffff8396      cmpi.w   #$1d,g_7c6a                        
  02fe2  6f5a                  ble.s    L303e                              
  02fe4  0c790006ffff83a2      cmpi.w   #6,g_7c5e                          
  02fec  6750                  beq.s    L303e                              
  02fee  33fc0006ffff83a2      move.w   #6,g_7c5e                          
  02ff6  4279ffff838c          clr.w    g_7c74                             
  02ffc  4279ffff8380          clr.w    g_7c80                             
  03002  4279ffff8396          clr.w    g_7c6a                             
  03008  486efe00              pea      -$200(a6)                          
  0300c  2f3c000702d3          move.l   #$702d3,-(a7)                      
  03012  4ead0522              jsr      f4_153c                            
  03016  302e000a              move.w   $a(a6),d0                          
  0301a  303003b0ffff8c78      move.w   (-$7388,za0,d0.w*2),d0             
  03022  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  0302a  486eff00              pea      -$100(a6)                          
  0302e  486efe00              pea      -$200(a6)                          
  03032  2f3c000011a2          move.l   STR_11a2,-(a7)                     ; "?"
  03038  a98b                  _ParamText                                  ; $a98b
  0303a  4ead01ea              jsr      f2_70c2                            
L303e:
  0303e  42a7                  clr.l    -(a7)                              
  03040  4ead03fa              jsr      f4_355e                            
L3044:
  03044  4e5e                  unlk     a6                                 
  03046  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_3048   [jump table #204]
;----------------------------------------------------------------------
f6_3048:
  03048  4e56f8c8              link     a6,#-1848                          
  0304c  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  03050  7800                  moveq    #0,d4                              
  03052  7c00                  moveq    #0,d6                              
  03054  7a01                  moveq    #1,d5                              
  03056  6008                  bra.s    L3060                              
L3058:
  03058  3d855320f990          move.w   d5,(-$670,a6,d5.w*2)               
  0305e  5245                  addq.w   #1,d5                              
L3060:
  03060  0c450033              cmpi.w   #$33,d5                            
  03064  6df2                  blt.s    L3058                              
  03066  3f3c0032              move.w   #$32,-(a7)                         
  0306a  4ead0242              jsr      f2_79a8                            
  0306e  3d40f9f8              move.w   d0,-$608(a6)                       
  03072  302ef9f8              move.w   -$608(a6),d0                       
  03076  42760320f990          clr.w    (-$670,a6,d0.w*2)                  
  0307c  7a01                  moveq    #1,d5                              
  0307e  548f                  addq.l   #2,a7                              
  03080  602c                  bra.s    L30ae                              
L3082:
  03082  3f3c0032              move.w   #$32,-(a7)                         
  03086  4ead0242              jsr      f2_79a8                            
  0308a  3d805320f9f8          move.w   d0,(-$608,a6,d5.w*2)               
  03090  548f                  addq.l   #2,a7                              
  03092  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  03098  4a760320f990          tst.w    (-$670,a6,d0.w*2)                  
  0309e  67e2                  beq.s    L3082                              
  030a0  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  030a6  42760320f990          clr.w    (-$670,a6,d0.w*2)                  
  030ac  5245                  addq.w   #1,d5                              
L30ae:
  030ae  0c450004              cmpi.w   #4,d5                              
  030b2  6dce                  blt.s    L3082                              
  030b4  4a2e0008              tst.b    $8(a6)                             
  030b8  6706                  beq.s    L30c0                              
  030ba  303c07d7              move.w   #$7d7,d0                           
  030be  6004                  bra.s    L30c4                              
L30c0:
  030c0  303c07d6              move.w   #$7d6,d0                           
L30c4:
  030c4  3600                  move.w   d0,d3                              
  030c6  4a2e0008              tst.b    $8(a6)                             
  030ca  6706                  beq.s    L30d2                              
  030cc  303c07d6              move.w   #$7d6,d0                           
  030d0  6004                  bra.s    L30d6                              
L30d2:
  030d2  303c07d7              move.w   #$7d7,d0                           
L30d6:
  030d6  3e00                  move.w   d0,d7                              
  030d8  4a2e000a              tst.b    $a(a6)                             
  030dc  6766                  beq.s    L3144                              
  030de  303c0276              move.w   #$276,d0                           
  030e2  c1ee000c              muls.w   $c(a6),d0                          
  030e6  721e                  moveq    #30,d1                             
  030e8  c3ee000e              muls.w   $e(a6),d1                          
  030ec  0680ffff7892          addi.l   #$ffff7892,d0                      
  030f2  d081                  add.l    d1,d0                              
  030f4  2040                  movea.l  d0,a0                              
  030f6  3610                  move.w   (a0),d3                            
  030f8  303c0276              move.w   #$276,d0                           
  030fc  c1ee000c              muls.w   $c(a6),d0                          
  03100  721e                  moveq    #30,d1                             
  03102  c3ee000e              muls.w   $e(a6),d1                          
  03106  0680ffff7892          addi.l   #$ffff7892,d0                      
  0310c  d081                  add.l    d1,d0                              
  0310e  2040                  movea.l  d0,a0                              
  03110  3e280002              move.w   $2(a0),d7                          
  03114  7a00                  moveq    #0,d5                              
  03116  6026                  bra.s    L313e                              
L3118:
  03118  303c0276              move.w   #$276,d0                           
  0311c  c1ee000c              muls.w   $c(a6),d0                          
  03120  721e                  moveq    #30,d1                             
  03122  c3ee000e              muls.w   $e(a6),d1                          
  03126  0680ffff7892          addi.l   #$ffff7892,d0                      
  0312c  d081                  add.l    d1,d0                              
  0312e  5880                  addq.l   #4,d0                              
  03130  3045                  movea.w  d5,a0                              
  03132  d1c8                  adda.l   a0,a0                              
  03134  3db008005320f9f8      move.w   $0(a0,d0.l),(-$608,a6,d5.w*2)      
  0313c  5245                  addq.w   #1,d5                              
L313e:
  0313e  0c450004              cmpi.w   #4,d5                              
  03142  6dd4                  blt.s    L3118                              
L3144:
  03144  486eff00              pea      -$100(a6)                          
  03148  3f03                  move.w   d3,-(a7)                           
  0314a  3f2ef9f8              move.w   -$608(a6),-(a7)                    
  0314e  4ead0522              jsr      f4_153c                            
  03152  7a00                  moveq    #0,d5                              
  03154  601a                  bra.s    L3170                              
L3156:
  03156  3045                  movea.w  d5,a0                              
  03158  2008                  move.l   a0,d0                              
  0315a  e188                  lsl.l    #8,d0                              
  0315c  48760920fb00          pea      (-$500,a6,d0.l)                    
  03162  3f07                  move.w   d7,-(a7)                           
  03164  3f365320f9f8          move.w   (-$608,a6,d5.w*2),-(a7)            
  0316a  4ead0522              jsr      f4_153c                            
  0316e  5245                  addq.w   #1,d5                              
L3170:
  03170  0c450004              cmpi.w   #4,d5                              
  03174  6de0                  blt.s    L3156                              
  03176  4a2e000a              tst.b    $a(a6)                             
  0317a  6710                  beq.s    L318c                              
  0317c  486efa00              pea      -$600(a6)                          
  03180  2f3c000803e8          move.l   #$803e8,-(a7)                      
  03186  4ead0522              jsr      f4_153c                            
  0318a  6024                  bra.s    L31b0                              
L318c:
  0318c  4a6e000c              tst.w    $c(a6)                             
  03190  6d10                  blt.s    L31a2                              
  03192  486efa00              pea      -$600(a6)                          
  03196  2f3c000a03e8          move.l   #$a03e8,-(a7)                      
  0319c  4ead0522              jsr      f4_153c                            
  031a0  600e                  bra.s    L31b0                              
L31a2:
  031a2  486efa00              pea      -$600(a6)                          
  031a6  2f3c000b03e8          move.l   #$b03e8,-(a7)                      
  031ac  4ead0522              jsr      f4_153c                            
L31b0:
  031b0  7a01                  moveq    #1,d5                              
  031b2  6008                  bra.s    L31bc                              
L31b4:
  031b4  3d855320f990          move.w   d5,(-$670,a6,d5.w*2)               
  031ba  5245                  addq.w   #1,d5                              
L31bc:
  031bc  0c450005              cmpi.w   #5,d5                              
  031c0  6df2                  blt.s    L31b4                              
  031c2  3f3c0004              move.w   #4,-(a7)                           
  031c6  4ead0242              jsr      f2_79a8                            
  031ca  3d40f9f8              move.w   d0,-$608(a6)                       
  031ce  302ef9f8              move.w   -$608(a6),d0                       
  031d2  42760320f990          clr.w    (-$670,a6,d0.w*2)                  
  031d8  7a01                  moveq    #1,d5                              
  031da  548f                  addq.l   #2,a7                              
  031dc  602c                  bra.s    L320a                              
L31de:
  031de  3f3c0004              move.w   #4,-(a7)                           
  031e2  4ead0242              jsr      f2_79a8                            
  031e6  3d805320f9f8          move.w   d0,(-$608,a6,d5.w*2)               
  031ec  548f                  addq.l   #2,a7                              
  031ee  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  031f4  4a760320f990          tst.w    (-$670,a6,d0.w*2)                  
  031fa  67e2                  beq.s    L31de                              
  031fc  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  03202  42760320f990          clr.w    (-$670,a6,d0.w*2)                  
  03208  5245                  addq.w   #1,d5                              
L320a:
  0320a  0c450004              cmpi.w   #4,d5                              
  0320e  6dce                  blt.s    L31de                              
  03210  486efa00              pea      -$600(a6)                          
  03214  486eff00              pea      -$100(a6)                          
  03218  2f3c000011a4          move.l   STR_11a4,-(a7)                     ; "?"
  0321e  2f3c000011a6          move.l   STR_11a6,-(a7)                     ; "?"
  03224  a98b                  _ParamText                                  ; $a98b
  03226  42a7                  clr.l    -(a7)                              
  03228  7001                  moveq    #1,d0                              
  0322a  d043                  add.w    d3,d0                              
  0322c  3f00                  move.w   d0,-(a7)                           
  0322e  486ef8cc              pea      -$734(a6)                          
  03232  4878ffff              pea      ($ffff).w                          
  03236  a97c                  _GetNewDialog                               ; $a97c
  03238  285f                  movea.l  (a7)+,a4                           
  0323a  2f0c                  move.l   a4,-(a7)                           
  0323c  4ead06ba              jsr      f7_161c                            
  03240  7a00                  moveq    #0,d5                              
  03242  588f                  addq.l   #4,a7                              
  03244  603e                  bra.s    L3284                              
L3246:
  03246  2f0c                  move.l   a4,-(a7)                           
  03248  7002                  moveq    #2,d0                              
  0324a  d0765320f9f8          add.w    (-$608,a6,d5.w*2),d0               
  03250  3f00                  move.w   d0,-(a7)                           
  03252  486ef98e              pea      -$672(a6)                          
  03256  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  0325c  48760520f97a          pea      (-$686,a6,d0.w*4)                  
  03262  486ef976              pea      -$68a(a6)                          
  03266  a98d                  _GetDialogItem                              ; $a98d
  03268  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  0326e  2f360520f97a          move.l   (-$686,a6,d0.w*4),-(a7)            
  03274  3045                  movea.w  d5,a0                              
  03276  2008                  move.l   a0,d0                              
  03278  e188                  lsl.l    #8,d0                              
  0327a  48760920fb00          pea      (-$500,a6,d0.l)                    
  03280  a95f                  _SetCTitle                                  ; $a95f
  03282  5245                  addq.w   #1,d5                              
L3284:
  03284  0c450004              cmpi.w   #4,d5                              
  03288  6dbc                  blt.s    L3246                              
  0328a  2f0c                  move.l   a4,-(a7)                           
  0328c  a915                  _ShowWindow                                 ; $a915
  0328e  2f0c                  move.l   a4,-(a7)                           
  03290  a981                  _DrawDialog                                 ; $a981
  03292  7800                  moveq    #0,d4                              
L3294:
  03294  42a7                  clr.l    -(a7)                              
  03296  486ef98e              pea      -$672(a6)                          
  0329a  a991                  _ModalDialog                                ; $a991
  0329c  302ef98e              move.w   -$672(a6),d0                       
  032a0  6700008e              beq.w    L3330                              
  032a4  6b00008a              bmi.w    L3330                              
  032a8  5f40                  subq.w   #7,d0                              
  032aa  67000082              beq.w    L332e                              
  032ae  6a000080              bpl.w    L3330                              
  032b2  5a40                  addq.w   #5,d0                              
  032b4  677a                  beq.s    L3330                              
  032b6  6a50                  bpl.s    L3308                              
  032b8  b86ef9f8              cmp.w    -$608(a6),d4                       
  032bc  6628                  bne.s    L32e6                              
  032be  7c01                  moveq    #1,d6                              
  032c0  486efa00              pea      -$600(a6)                          
  032c4  486eff00              pea      -$100(a6)                          
  032c8  486efb00              pea      -$500(a6)                          
  032cc  2f3c000011a8          move.l   STR_11a8,-(a7)                     ; "?"
  032d2  a98b                  _ParamText                                  ; $a98b
  032d4  2f0c                  move.l   a4,-(a7)                           
  032d6  a981                  _DrawDialog                                 ; $a981
  032d8  43eef8c8              lea      -$738(a6),a1                       
  032dc  307c005a              movea.w  #$5a,a0                            
  032e0  a03b                  _Delay                                      ; $a03b
  032e2  2280                  move.l   d0,(a1)                            
  032e4  604a                  bra.s    L3330                              
L32e6:
  032e6  3f3c0001              move.w   #1,-(a7)                           
  032ea  a9c8                  _SysBeep                                    ; $a9c8
  032ec  4a79ffff8370          tst.w    g_7c90                             
  032f2  6f0e                  ble.s    L3302                              
  032f4  3079ffff8894          movea.w  g_776c,a0                          
  032fa  2008                  move.l   a0,d0                              
  032fc  91b9ffff8388          sub.l    d0,g_7c78                          
L3302:
  03302  426ef98e              clr.w    -$672(a6)                          
  03306  6028                  bra.s    L3330                              
L3308:
  03308  4a44                  tst.w    d4                                 
  0330a  6f0a                  ble.s    L3316                              
  0330c  2f364520f97a          move.l   (-$686,a6,d4.w*4),-(a7)            
  03312  4267                  clr.w    -(a7)                              
  03314  a963                  _SetCtlValue                                ; $a963
L3316:
  03316  302ef98e              move.w   -$672(a6),d0                       
  0331a  2f360520f972          move.l   (-$68e,a6,d0.w*4),-(a7)            
  03320  3f3c0001              move.w   #1,-(a7)                           
  03324  a963                  _SetCtlValue                                ; $a963
  03326  78fe                  moveq    #-2,d4                             
  03328  d86ef98e              add.w    -$672(a6),d4                       
  0332c  6002                  bra.s    L3330                              
L332e:
  0332e  7c00                  moveq    #0,d6                              
L3330:
  03330  0c6e0001f98e          cmpi.w   #1,-$672(a6)                       
  03336  670a                  beq.s    L3342                              
  03338  0c6e0007f98e          cmpi.w   #7,-$672(a6)                       
  0333e  6600ff54              bne.w    L3294                              
L3342:
  03342  2f0c                  move.l   a4,-(a7)                           
  03344  a983                  _DisposeDialog                              ; $a983
  03346  1006                  move.b   d6,d0                              
  03348  6004                  bra.s    L334e                              
  0334a  4ead01ca              jsr      f2_6b56                            
L334e:
  0334e  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  03352  4e5e                  unlk     a6                                 
  03354  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_3356   [jump table #205]
;----------------------------------------------------------------------
f6_3356:
  03356  4e56fcfc              link     a6,#-772                           
  0335a  2f07                  move.l   d7,-(a7)                           
  0335c  3e2e000c              move.w   $c(a6),d7                          
  03360  0c790002ffff83a0      cmpi.w   #2,g_7c60                          
  03368  6646                  bne.s    L33b0                              
  0336a  4a2e000a              tst.b    $a(a6)                             
  0336e  6740                  beq.s    L33b0                              
  03370  486efefc              pea      -$104(a6)                          
  03374  2f3c000a0097          move.l   #$a0097,-(a7)                      
  0337a  4ead0522              jsr      f4_153c                            
  0337e  486efdfc              pea      -$204(a6)                          
  03382  2f3c00080097          move.l   #$80097,-(a7)                      
  03388  4ead0522              jsr      f4_153c                            
  0338c  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  03394  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  0339c  486efefc              pea      -$104(a6)                          
  033a0  486efdfc              pea      -$204(a6)                          
  033a4  2f3c000011aa          move.l   STR_11aa,-(a7)                     ; "?"
  033aa  a98b                  _ParamText                                  ; $a98b
  033ac  600000e6              bra.w    L3494                              
L33b0:
  033b0  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  033b8  6646                  bne.s    L3400                              
  033ba  4a2e000a              tst.b    $a(a6)                             
  033be  6740                  beq.s    L3400                              
  033c0  486efefc              pea      -$104(a6)                          
  033c4  2f3c000a0097          move.l   #$a0097,-(a7)                      
  033ca  4ead0522              jsr      f4_153c                            
  033ce  486efdfc              pea      -$204(a6)                          
  033d2  2f3c00090097          move.l   #$90097,-(a7)                      
  033d8  4ead0522              jsr      f4_153c                            
  033dc  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  033e4  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  033ec  486efefc              pea      -$104(a6)                          
  033f0  486efdfc              pea      -$204(a6)                          
  033f4  2f3c000011ac          move.l   STR_11ac,-(a7)                     ; "?"
  033fa  a98b                  _ParamText                                  ; $a98b
  033fc  60000096              bra.w    L3494                              
L3400:
  03400  302e0008              move.w   $8(a6),d0                          
  03404  d179ffff8394          add.w    d0,g_7c6c                          
  0340a  486efcfc              pea      -$304(a6)                          
  0340e  3f3c0096              move.w   #$96,-(a7)                         
  03412  3f2e000e              move.w   $e(a6),-(a7)                       
  03416  4ead0522              jsr      f4_153c                            
  0341a  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  03422  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  0342a  486efcfc              pea      -$304(a6)                          
  0342e  2f3c000011ae          move.l   STR_11ae,-(a7)                     ; "?"
  03434  2f3c000011b0          move.l   STR_11b0,-(a7)                     ; "?"
  0343a  a98b                  _ParamText                                  ; $a98b
  0343c  0c79001dffff8394      cmpi.w   #$1d,g_7c6c                        
  03444  6f4e                  ble.s    L3494                              
  03446  486efefc              pea      -$104(a6)                          
  0344a  2f3c000b0097          move.l   #$b0097,-(a7)                      
  03450  4ead0522              jsr      f4_153c                            
  03454  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  0345c  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  03464  486efcfc              pea      -$304(a6)                          
  03468  486efefc              pea      -$104(a6)                          
  0346c  2f3c000011b2          move.l   STR_11b2,-(a7)                     ; "?"
  03472  a98b                  _ParamText                                  ; $a98b
  03474  4279ffff837e          clr.w    g_7c82                             
  0347a  33fc000affff8b7c      move.w   #$a,g_7484                         
  03482  33fc0006ffff83a0      move.w   #6,g_7c60                          
  0348a  4ead01a2              jsr      f2_68d4                            
  0348e  4279ffff8394          clr.w    g_7c6c                             
L3494:
  03494  2e1f                  move.l   (a7)+,d7                           
  03496  4e5e                  unlk     a6                                 
  03498  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_349a   [jump table #206]
;----------------------------------------------------------------------
f6_349a:
  0349a  4e560000              link     a6,#0                              
  0349e  2f07                  move.l   d7,-(a7)                           
  034a0  3e2e0008              move.w   $8(a6),d7                          
  034a4  0c70001373b0ffff8ba6  cmpi.w   #$13,(-$745a,za0,d7.w*2)           
  034ae  6e0a                  bgt.s    L34ba                              
  034b0  31bc00e873b0ffff8b7c  move.w   #$e8,(-$7484,za0,d7.w*2)           
L34ba:
  034ba  0c70001373b0ffff8ba6  cmpi.w   #$13,(-$745a,za0,d7.w*2)           
  034c4  6f16                  ble.s    L34dc                              
  034c6  0c70002973b0ffff8ba6  cmpi.w   #$29,(-$745a,za0,d7.w*2)           
  034d0  6e0a                  bgt.s    L34dc                              
  034d2  31bc00e973b0ffff8b7c  move.w   #$e9,(-$7484,za0,d7.w*2)           
L34dc:
  034dc  0c70002973b0ffff8ba6  cmpi.w   #$29,(-$745a,za0,d7.w*2)           
  034e6  6f16                  ble.s    L34fe                              
  034e8  0c70003873b0ffff8ba6  cmpi.w   #$38,(-$745a,za0,d7.w*2)           
  034f2  6e0a                  bgt.s    L34fe                              
  034f4  31bc00e773b0ffff8b7c  move.w   #$e7,(-$7484,za0,d7.w*2)           
L34fe:
  034fe  0c70003873b0ffff8ba6  cmpi.w   #$38,(-$745a,za0,d7.w*2)           
  03508  6f28                  ble.s    L3532                              
  0350a  0c70003d73b0ffff8ba6  cmpi.w   #$3d,(-$745a,za0,d7.w*2)           
  03514  6e1c                  bgt.s    L3532                              
  03516  70c8                  moveq    #-56,d0                            
  03518  d07073b0ffff8ba6      add.w    (-$745a,za0,d7.w*2),d0             
  03520  b079ffff8894          cmp.w    g_776c,d0                          
  03526  6e0a                  bgt.s    L3532                              
  03528  31bc00e573b0ffff8b7c  move.w   #$e5,(-$7484,za0,d7.w*2)           
L3532:
  03532  0c70003d73b0ffff8ba6  cmpi.w   #$3d,(-$745a,za0,d7.w*2)           
  0353c  6f28                  ble.s    L3566                              
  0353e  0c70004273b0ffff8ba6  cmpi.w   #$42,(-$745a,za0,d7.w*2)           
  03548  6e1c                  bgt.s    L3566                              
  0354a  70c3                  moveq    #-61,d0                            
  0354c  d07073b0ffff8ba6      add.w    (-$745a,za0,d7.w*2),d0             
  03554  b079ffff8894          cmp.w    g_776c,d0                          
  0355a  6e0a                  bgt.s    L3566                              
  0355c  31bc00e673b0ffff8b7c  move.w   #$e6,(-$7484,za0,d7.w*2)           
L3566:
  03566  0c70004273b0ffff8ba6  cmpi.w   #$42,(-$745a,za0,d7.w*2)           
  03570  6f28                  ble.s    L359a                              
  03572  0c70004773b0ffff8ba6  cmpi.w   #$47,(-$745a,za0,d7.w*2)           
  0357c  6e1c                  bgt.s    L359a                              
  0357e  70be                  moveq    #-66,d0                            
  03580  d07073b0ffff8ba6      add.w    (-$745a,za0,d7.w*2),d0             
  03588  b079ffff8894          cmp.w    g_776c,d0                          
  0358e  6e0a                  bgt.s    L359a                              
  03590  31bc00f473b0ffff8b7c  move.w   #$f4,(-$7484,za0,d7.w*2)           
L359a:
  0359a  0c70004773b0ffff8ba6  cmpi.w   #$47,(-$745a,za0,d7.w*2)           
  035a4  6f28                  ble.s    L35ce                              
  035a6  0c70004c73b0ffff8ba6  cmpi.w   #$4c,(-$745a,za0,d7.w*2)           
  035b0  6e1c                  bgt.s    L35ce                              
  035b2  4a79ffff8894          tst.w    g_776c                             
  035b8  6f14                  ble.s    L35ce                              
  035ba  31bc00ea73b0ffff8b7c  move.w   #$ea,(-$7484,za0,d7.w*2)           
  035c4  0470000f73b0ffff8ba6  subi.w   #$f,(-$745a,za0,d7.w*2)            
L35ce:
  035ce  0c70004c73b0ffff8ba6  cmpi.w   #$4c,(-$745a,za0,d7.w*2)           
  035d8  6f28                  ble.s    L3602                              
  035da  0c70005073b0ffff8ba6  cmpi.w   #$50,(-$745a,za0,d7.w*2)           
  035e4  6e1c                  bgt.s    L3602                              
  035e6  4a79ffff8894          tst.w    g_776c                             
  035ec  6f14                  ble.s    L3602                              
  035ee  31bc00ec73b0ffff8b7c  move.w   #$ec,(-$7484,za0,d7.w*2)           
  035f8  0470000f73b0ffff8ba6  subi.w   #$f,(-$745a,za0,d7.w*2)            
L3602:
  03602  0c70005073b0ffff8ba6  cmpi.w   #$50,(-$745a,za0,d7.w*2)           
  0360c  6f28                  ble.s    L3636                              
  0360e  0c70005673b0ffff8ba6  cmpi.w   #$56,(-$745a,za0,d7.w*2)           
  03618  6e1c                  bgt.s    L3636                              
  0361a  4a79ffff8894          tst.w    g_776c                             
  03620  6f14                  ble.s    L3636                              
  03622  31bc00eb73b0ffff8b7c  move.w   #$eb,(-$7484,za0,d7.w*2)           
  0362c  0470000f73b0ffff8ba6  subi.w   #$f,(-$745a,za0,d7.w*2)            
L3636:
  03636  0c7000e573b0ffff8b7c  cmpi.w   #$e5,(-$7484,za0,d7.w*2)           
  03640  6622                  bne.s    L3664                              
  03642  70c8                  moveq    #-56,d0                            
  03644  d07073b0ffff8ba6      add.w    (-$745a,za0,d7.w*2),d0             
  0364c  b079ffff8894          cmp.w    g_776c,d0                          
  03652  6f10                  ble.s    L3664                              
  03654  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  0365c  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
L3664:
  03664  0c7000e673b0ffff8b7c  cmpi.w   #$e6,(-$7484,za0,d7.w*2)           
  0366e  6622                  bne.s    L3692                              
  03670  7042                  moveq    #66,d0                             
  03672  907073b0ffff8ba6      sub.w    (-$745a,za0,d7.w*2),d0             
  0367a  b079ffff8894          cmp.w    g_776c,d0                          
  03680  6d10                  blt.s    L3692                              
  03682  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  0368a  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
L3692:
  03692  0c7000f473b0ffff8b7c  cmpi.w   #$f4,(-$7484,za0,d7.w*2)           
  0369c  6622                  bne.s    L36c0                              
  0369e  70be                  moveq    #-66,d0                            
  036a0  d07073b0ffff8ba6      add.w    (-$745a,za0,d7.w*2),d0             
  036a8  b079ffff8894          cmp.w    g_776c,d0                          
  036ae  6f10                  ble.s    L36c0                              
  036b0  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  036b8  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
L36c0:
  036c0  2e1f                  move.l   (a7)+,d7                           
  036c2  4e5e                  unlk     a6                                 
  036c4  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_36c6
;----------------------------------------------------------------------
f6_36c6:
  036c6  4e56fdfc              link     a6,#-516                           
  036ca  486efffc              pea      -$4(a6)                            
  036ce  a874                  _GetPort                                    ; $a874
  036d0  4a6e000a              tst.w    $a(a6)                             
  036d4  6f7c                  ble.s    L3752                              
  036d6  3f3c0064              move.w   #$64,-(a7)                         
  036da  4ead0242              jsr      f2_79a8                            
  036de  322e000e              move.w   $e(a6),d1                          
  036e2  c3f9ffff8894          muls.w   g_776c,d1                          
  036e8  d26e000c              add.w    $c(a6),d1                          
  036ec  b240                  cmp.w    d0,d1                              
  036ee  548f                  addq.l   #2,a7                              
  036f0  6f60                  ble.s    L3752                              
  036f2  206e0010              movea.l  $10(a6),a0                         
  036f6  3050                  movea.w  (a0),a0                            
  036f8  2008                  move.l   a0,d0                              
  036fa  81fc0002              divs.w   #2,d0                              
  036fe  206e0010              movea.l  $10(a6),a0                         
  03702  3080                  move.w   d0,(a0)                            
  03704  486efefc              pea      -$104(a6)                          
  03708  2f3c000102d1          move.l   #$102d1,-(a7)                      
  0370e  4ead0522              jsr      f4_153c                            
  03712  486efdfc              pea      -$204(a6)                          
  03716  3f3c02d1              move.w   #$2d1,-(a7)                        
  0371a  7001                  moveq    #1,d0                              
  0371c  d06e000a              add.w    $a(a6),d0                          
  03720  3f00                  move.w   d0,-(a7)                           
  03722  4ead0522              jsr      f4_153c                            
  03726  302e0008              move.w   $8(a6),d0                          
  0372a  303003b0ffff8c78      move.w   (-$7388,za0,d0.w*2),d0             
  03732  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  0373a  486efefc              pea      -$104(a6)                          
  0373e  486efdfc              pea      -$204(a6)                          
  03742  2f3c000011b4          move.l   STR_11b4,-(a7)                     ; "?"
  03748  a98b                  _ParamText                                  ; $a98b
  0374a  42a7                  clr.l    -(a7)                              
  0374c  4ead03fa              jsr      f4_355e                            
  03750  588f                  addq.l   #4,a7                              
L3752:
  03752  4e5e                  unlk     a6                                 
  03754  4e75                  rts                                         

;----------------------------------------------------------------------
; f6_3756   [jump table #207]
;----------------------------------------------------------------------
f6_3756:
  03756  4e56f864              link     a6,#-1948                          
  0375a  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  0375e  7800                  moveq    #0,d4                              
  03760  7600                  moveq    #0,d3                              
  03762  7a01                  moveq    #1,d5                              
  03764  6008                  bra.s    L376e                              
L3766:
  03766  3d855320f92c          move.w   d5,(-$6d4,a6,d5.w*2)               
  0376c  5245                  addq.w   #1,d5                              
L376e:
  0376e  0c450065              cmpi.w   #$65,d5                            
  03772  6df2                  blt.s    L3766                              
  03774  3f3c0064              move.w   #$64,-(a7)                         
  03778  4ead0242              jsr      f2_79a8                            
  0377c  3d40f9f8              move.w   d0,-$608(a6)                       
  03780  302ef9f8              move.w   -$608(a6),d0                       
  03784  42760320f92c          clr.w    (-$6d4,a6,d0.w*2)                  
  0378a  7a01                  moveq    #1,d5                              
  0378c  548f                  addq.l   #2,a7                              
  0378e  602c                  bra.s    L37bc                              
L3790:
  03790  3f3c0064              move.w   #$64,-(a7)                         
  03794  4ead0242              jsr      f2_79a8                            
  03798  3d805320f9f8          move.w   d0,(-$608,a6,d5.w*2)               
  0379e  548f                  addq.l   #2,a7                              
  037a0  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  037a6  4a760320f92c          tst.w    (-$6d4,a6,d0.w*2)                  
  037ac  67e2                  beq.s    L3790                              
  037ae  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  037b4  42760320f92c          clr.w    (-$6d4,a6,d0.w*2)                  
  037ba  5245                  addq.w   #1,d5                              
L37bc:
  037bc  0c450004              cmpi.w   #4,d5                              
  037c0  6dce                  blt.s    L3790                              
  037c2  4a2e0008              tst.b    $8(a6)                             
  037c6  6706                  beq.s    L37ce                              
  037c8  303c4e21              move.w   #$4e21,d0                          
  037cc  6004                  bra.s    L37d2                              
L37ce:
  037ce  303c4e22              move.w   #$4e22,d0                          
L37d2:
  037d2  3e00                  move.w   d0,d7                              
  037d4  4a2e0008              tst.b    $8(a6)                             
  037d8  6706                  beq.s    L37e0                              
  037da  303c4e22              move.w   #$4e22,d0                          
  037de  6004                  bra.s    L37e4                              
L37e0:
  037e0  303c4e21              move.w   #$4e21,d0                          
L37e4:
  037e4  3c00                  move.w   d0,d6                              
  037e6  4a2e000a              tst.b    $a(a6)                             
  037ea  6766                  beq.s    L3852                              
  037ec  303c0276              move.w   #$276,d0                           
  037f0  c1ee000c              muls.w   $c(a6),d0                          
  037f4  721e                  moveq    #30,d1                             
  037f6  c3ee000e              muls.w   $e(a6),d1                          
  037fa  0680ffff7892          addi.l   #$ffff7892,d0                      
  03800  d081                  add.l    d1,d0                              
  03802  2040                  movea.l  d0,a0                              
  03804  3e10                  move.w   (a0),d7                            
  03806  303c0276              move.w   #$276,d0                           
  0380a  c1ee000c              muls.w   $c(a6),d0                          
  0380e  721e                  moveq    #30,d1                             
  03810  c3ee000e              muls.w   $e(a6),d1                          
  03814  0680ffff7892          addi.l   #$ffff7892,d0                      
  0381a  d081                  add.l    d1,d0                              
  0381c  2040                  movea.l  d0,a0                              
  0381e  3c280002              move.w   $2(a0),d6                          
  03822  7a00                  moveq    #0,d5                              
  03824  6026                  bra.s    L384c                              
L3826:
  03826  303c0276              move.w   #$276,d0                           
  0382a  c1ee000c              muls.w   $c(a6),d0                          
  0382e  721e                  moveq    #30,d1                             
  03830  c3ee000e              muls.w   $e(a6),d1                          
  03834  0680ffff7892          addi.l   #$ffff7892,d0                      
  0383a  d081                  add.l    d1,d0                              
  0383c  5880                  addq.l   #4,d0                              
  0383e  3045                  movea.w  d5,a0                              
  03840  d1c8                  adda.l   a0,a0                              
  03842  3db008005320f9f8      move.w   $0(a0,d0.l),(-$608,a6,d5.w*2)      
  0384a  5245                  addq.w   #1,d5                              
L384c:
  0384c  0c450004              cmpi.w   #4,d5                              
  03850  6dd4                  blt.s    L3826                              
L3852:
  03852  486eff00              pea      -$100(a6)                          
  03856  3f07                  move.w   d7,-(a7)                           
  03858  3f2ef9f8              move.w   -$608(a6),-(a7)                    
  0385c  4ead0522              jsr      f4_153c                            
  03860  7a00                  moveq    #0,d5                              
  03862  601a                  bra.s    L387e                              
L3864:
  03864  3045                  movea.w  d5,a0                              
  03866  2008                  move.l   a0,d0                              
  03868  e188                  lsl.l    #8,d0                              
  0386a  48760920fb00          pea      (-$500,a6,d0.l)                    
  03870  3f06                  move.w   d6,-(a7)                           
  03872  3f365320f9f8          move.w   (-$608,a6,d5.w*2),-(a7)            
  03878  4ead0522              jsr      f4_153c                            
  0387c  5245                  addq.w   #1,d5                              
L387e:
  0387e  0c450004              cmpi.w   #4,d5                              
  03882  6de0                  blt.s    L3864                              
  03884  4a2e000a              tst.b    $a(a6)                             
  03888  6710                  beq.s    L389a                              
  0388a  486efa00              pea      -$600(a6)                          
  0388e  2f3c000803e8          move.l   #$803e8,-(a7)                      
  03894  4ead0522              jsr      f4_153c                            
  03898  6024                  bra.s    L38be                              
L389a:
  0389a  4a6e000c              tst.w    $c(a6)                             
  0389e  6d10                  blt.s    L38b0                              
  038a0  486efa00              pea      -$600(a6)                          
  038a4  2f3c000a03e8          move.l   #$a03e8,-(a7)                      
  038aa  4ead0522              jsr      f4_153c                            
  038ae  600e                  bra.s    L38be                              
L38b0:
  038b0  486efa00              pea      -$600(a6)                          
  038b4  2f3c000b03e8          move.l   #$b03e8,-(a7)                      
  038ba  4ead0522              jsr      f4_153c                            
L38be:
  038be  7a01                  moveq    #1,d5                              
  038c0  6008                  bra.s    L38ca                              
L38c2:
  038c2  3d855320f92c          move.w   d5,(-$6d4,a6,d5.w*2)               
  038c8  5245                  addq.w   #1,d5                              
L38ca:
  038ca  0c450005              cmpi.w   #5,d5                              
  038ce  6df2                  blt.s    L38c2                              
  038d0  3f3c0004              move.w   #4,-(a7)                           
  038d4  4ead0242              jsr      f2_79a8                            
  038d8  3d40f9f8              move.w   d0,-$608(a6)                       
  038dc  302ef9f8              move.w   -$608(a6),d0                       
  038e0  42760320f92c          clr.w    (-$6d4,a6,d0.w*2)                  
  038e6  7a01                  moveq    #1,d5                              
  038e8  548f                  addq.l   #2,a7                              
  038ea  602c                  bra.s    L3918                              
L38ec:
  038ec  3f3c0004              move.w   #4,-(a7)                           
  038f0  4ead0242              jsr      f2_79a8                            
  038f4  3d805320f9f8          move.w   d0,(-$608,a6,d5.w*2)               
  038fa  548f                  addq.l   #2,a7                              
  038fc  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  03902  4a760320f92c          tst.w    (-$6d4,a6,d0.w*2)                  
  03908  67e2                  beq.s    L38ec                              
  0390a  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  03910  42760320f92c          clr.w    (-$6d4,a6,d0.w*2)                  
  03916  5245                  addq.w   #1,d5                              
L3918:
  03918  0c450004              cmpi.w   #4,d5                              
  0391c  6dce                  blt.s    L38ec                              
  0391e  486efa00              pea      -$600(a6)                          
  03922  486eff00              pea      -$100(a6)                          
  03926  2f3c000011b6          move.l   STR_11b6,-(a7)                     ; "?"
  0392c  2f3c000011b8          move.l   STR_11b8,-(a7)                     ; "?"
  03932  a98b                  _ParamText                                  ; $a98b
  03934  42a7                  clr.l    -(a7)                              
  03936  3f3c07d9              move.w   #$7d9,-(a7)                        
  0393a  486ef868              pea      -$798(a6)                          
  0393e  4878ffff              pea      ($ffff).w                          
  03942  a97c                  _GetNewDialog                               ; $a97c
  03944  285f                  movea.l  (a7)+,a4                           
  03946  2f0c                  move.l   a4,-(a7)                           
  03948  4ead06ba              jsr      f7_161c                            
  0394c  7a00                  moveq    #0,d5                              
  0394e  588f                  addq.l   #4,a7                              
  03950  603e                  bra.s    L3990                              
L3952:
  03952  2f0c                  move.l   a4,-(a7)                           
  03954  7002                  moveq    #2,d0                              
  03956  d0765320f9f8          add.w    (-$608,a6,d5.w*2),d0               
  0395c  3f00                  move.w   d0,-(a7)                           
  0395e  486ef92a              pea      -$6d6(a6)                          
  03962  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  03968  48760520f916          pea      (-$6ea,a6,d0.w*4)                  
  0396e  486ef912              pea      -$6ee(a6)                          
  03972  a98d                  _GetDialogItem                              ; $a98d
  03974  30365320f9f8          move.w   (-$608,a6,d5.w*2),d0               
  0397a  2f360520f916          move.l   (-$6ea,a6,d0.w*4),-(a7)            
  03980  3045                  movea.w  d5,a0                              
  03982  2008                  move.l   a0,d0                              
  03984  e188                  lsl.l    #8,d0                              
  03986  48760920fb00          pea      (-$500,a6,d0.l)                    
  0398c  a95f                  _SetCTitle                                  ; $a95f
  0398e  5245                  addq.w   #1,d5                              
L3990:
  03990  0c450004              cmpi.w   #4,d5                              
  03994  6dbc                  blt.s    L3952                              
  03996  2f0c                  move.l   a4,-(a7)                           
  03998  a915                  _ShowWindow                                 ; $a915
  0399a  2f0c                  move.l   a4,-(a7)                           
  0399c  a981                  _DrawDialog                                 ; $a981
  0399e  7800                  moveq    #0,d4                              
L39a0:
  039a0  42a7                  clr.l    -(a7)                              
  039a2  486ef92a              pea      -$6d6(a6)                          
  039a6  a991                  _ModalDialog                                ; $a991
  039a8  302ef92a              move.w   -$6d6(a6),d0                       
  039ac  6700008e              beq.w    L3a3c                              
  039b0  6b00008a              bmi.w    L3a3c                              
  039b4  5f40                  subq.w   #7,d0                              
  039b6  67000082              beq.w    L3a3a                              
  039ba  6a000080              bpl.w    L3a3c                              
  039be  5a40                  addq.w   #5,d0                              
  039c0  677a                  beq.s    L3a3c                              
  039c2  6a50                  bpl.s    L3a14                              
  039c4  b86ef9f8              cmp.w    -$608(a6),d4                       
  039c8  6628                  bne.s    L39f2                              
  039ca  7601                  moveq    #1,d3                              
  039cc  486efa00              pea      -$600(a6)                          
  039d0  486eff00              pea      -$100(a6)                          
  039d4  486efb00              pea      -$500(a6)                          
  039d8  2f3c000011ba          move.l   STR_11ba,-(a7)                     ; "?"
  039de  a98b                  _ParamText                                  ; $a98b
  039e0  2f0c                  move.l   a4,-(a7)                           
  039e2  a981                  _DrawDialog                                 ; $a981
  039e4  43eef864              lea      -$79c(a6),a1                       
  039e8  307c005a              movea.w  #$5a,a0                            
  039ec  a03b                  _Delay                                      ; $a03b
  039ee  2280                  move.l   d0,(a1)                            
  039f0  604a                  bra.s    L3a3c                              
L39f2:
  039f2  3f3c0001              move.w   #1,-(a7)                           
  039f6  a9c8                  _SysBeep                                    ; $a9c8
  039f8  4a79ffff8370          tst.w    g_7c90                             
  039fe  6f0e                  ble.s    L3a0e                              
  03a00  3079ffff8894          movea.w  g_776c,a0                          
  03a06  2008                  move.l   a0,d0                              
  03a08  91b9ffff8388          sub.l    d0,g_7c78                          
L3a0e:
  03a0e  426ef92a              clr.w    -$6d6(a6)                          
  03a12  6028                  bra.s    L3a3c                              
L3a14:
  03a14  4a44                  tst.w    d4                                 
  03a16  6f0a                  ble.s    L3a22                              
  03a18  2f364520f916          move.l   (-$6ea,a6,d4.w*4),-(a7)            
  03a1e  4267                  clr.w    -(a7)                              
  03a20  a963                  _SetCtlValue                                ; $a963
L3a22:
  03a22  302ef92a              move.w   -$6d6(a6),d0                       
  03a26  2f360520f90e          move.l   (-$6f2,a6,d0.w*4),-(a7)            
  03a2c  3f3c0001              move.w   #1,-(a7)                           
  03a30  a963                  _SetCtlValue                                ; $a963
  03a32  78fe                  moveq    #-2,d4                             
  03a34  d86ef92a              add.w    -$6d6(a6),d4                       
  03a38  6002                  bra.s    L3a3c                              
L3a3a:
  03a3a  7600                  moveq    #0,d3                              
L3a3c:
  03a3c  0c6e0001f92a          cmpi.w   #1,-$6d6(a6)                       
  03a42  670a                  beq.s    L3a4e                              
  03a44  0c6e0007f92a          cmpi.w   #7,-$6d6(a6)                       
  03a4a  6600ff54              bne.w    L39a0                              
L3a4e:
  03a4e  2f0c                  move.l   a4,-(a7)                           
  03a50  a983                  _DisposeDialog                              ; $a983
  03a52  1003                  move.b   d3,d0                              
  03a54  6004                  bra.s    L3a5a                              
  03a56  4ead01ca              jsr      f2_6b56                            
L3a5a:
  03a5a  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  03a5e  4e5e                  unlk     a6                                 
  03a60  4e75                  rts                                         
