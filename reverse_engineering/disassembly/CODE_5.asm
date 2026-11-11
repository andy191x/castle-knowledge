; Castle Knowledge 2.6 - CODE segment 5 (17402 bytes)
; Disassembled & annotated. Globals g_XXXX = A5-XXXX; STR_XXXX = STRS literal offset.


;----------------------------------------------------------------------
; f5_0000   [jump table #186]
;----------------------------------------------------------------------
f5_0000:
  00000  4e56fd00              link     a6,#-768                           
  00004  486eff00              pea      -$100(a6)                          
  00008  3f3c0096              move.w   #$96,-(a7)                         
  0000c  3f2e000a              move.w   $a(a6),-(a7)                       
  00010  4ead0522              jsr      f4_153c                            
  00014  486efe00              pea      -$200(a6)                          
  00018  2f3c002c0096          move.l   #$2c0096,-(a7)                     
  0001e  4ead0522              jsr      f4_153c                            
  00022  486efd00              pea      -$300(a6)                          
  00026  2f3c002d0096          move.l   #$2d0096,-(a7)                     
  0002c  4ead0522              jsr      f4_153c                            
  00030  302e0008              move.w   $8(a6),d0                          
  00034  303003b0ffff8c78      move.w   (-$7388,za0,d0.w*2),d0             
  0003c  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  00044  486efe00              pea      -$200(a6)                          
  00048  486eff00              pea      -$100(a6)                          
  0004c  486efd00              pea      -$300(a6)                          
  00050  a98b                  _ParamText                                  ; $a98b
  00052  4e5e                  unlk     a6                                 
  00054  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_0056
;----------------------------------------------------------------------
f5_0056:
  00056  4e56fd8a              link     a6,#-630                           
  0005a  48e70718              movem.l  d5/d6/d7/a3/a4,-(a7)               
  0005e  41eeffea              lea      -$16(a6),a0                        
  00062  43f9ffffac76          lea      g_538a,a1                          
  00068  7004                  moveq    #4,d0                              
L006a:
  0006a  20d9                  move.l   (a1)+,(a0)+                        
  0006c  51c8fffc              dbf      d0,L006a                           
  00070  30d9                  move.w   (a1)+,(a0)+                        
  00072  41eeffd4              lea      -$2c(a6),a0                        
  00076  43f9ffffac8c          lea      g_5374,a1                          
  0007c  7004                  moveq    #4,d0                              
L007e:
  0007e  20d9                  move.l   (a1)+,(a0)+                        
  00080  51c8fffc              dbf      d0,L007e                           
  00084  30d9                  move.w   (a1)+,(a0)+                        
  00086  97cb                  suba.l   a3,a3                              
  00088  0c790004ffff8da2      cmpi.w   #4,g_725e                          
  00090  6f2c                  ble.s    L00be                              
  00092  3f3c0005              move.w   #5,-(a7)                           
  00096  2f3c00000620          move.l   STR_0620,-(a7)                     ; "?"
  0009c  2f3c00000622          move.l   STR_0622,-(a7)                     ; "?"
  000a2  2f3c00010000          move.l   #$10000,-(a7)                      
  000a8  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  000ae  2f3c00010001          move.l   #$10001,-(a7)                      
  000b4  4ead00a2              jsr      f2_1144                            
  000b8  1c00                  move.b   d0,d6                              
  000ba  600001f0              bra.w    L02ac                              
L00be:
  000be  7e01                  moveq    #1,d7                              
  000c0  6012                  bra.s    L00d4                              
L00c2:
  000c2  70ff                  moveq    #-1,d0                             
  000c4  d079ffff8894          add.w    g_776c,d0                          
  000ca  c1fc0190              muls.w   #$190,d0                           
  000ce  d17672d4              add.w    d0,-$2c(a6,d7.w*2)                 
  000d2  5247                  addq.w   #1,d7                              
L00d4:
  000d4  0c47000b              cmpi.w   #$b,d7                             
  000d8  6de8                  blt.s    L00c2                              
  000da  3f3c00d2              move.w   #$d2,-(a7)                         
  000de  486efe02              pea      -$1fe(a6)                          
  000e2  486eff22              pea      -$de(a6)                           
  000e6  4ead025a              jsr      f2_194e                            
  000ea  3ebc02bc              move.w   #$2bc,(a7)                         
  000ee  486efd8a              pea      -$276(a6)                          
  000f2  486eff24              pea      -$dc(a6)                           
  000f6  4ead025a              jsr      f2_194e                            
  000fa  4297                  clr.l    (a7)                               
  000fc  3f3c0fa1              move.w   #$fa1,-(a7)                        
  00100  486eff2a              pea      -$d6(a6)                           
  00104  4878ffff              pea      ($ffff).w                          
  00108  a97c                  _GetNewDialog                               ; $a97c
  0010a  285f                  movea.l  (a7)+,a4                           
  0010c  2e8c                  move.l   a4,(a7)                            
  0010e  4ead06ba              jsr      f7_161c                            
  00112  2e8c                  move.l   a4,(a7)                            
  00114  a915                  _ShowWindow                                 ; $a915
  00116  2e8c                  move.l   a4,(a7)                            
  00118  a873                  _SetPort                                    ; $a873
  0011a  5c8f                  addq.l   #6,a7                              
L011c:
  0011c  42a7                  clr.l    -(a7)                              
  0011e  486eff28              pea      -$d8(a6)                           
  00122  a991                  _ModalDialog                                ; $a991
  00124  0c6e000aff28          cmpi.w   #$a,-$d8(a6)                       
  0012a  6f0e                  ble.s    L013a                              
  0012c  0c6e0015ff28          cmpi.w   #$15,-$d8(a6)                      
  00132  6c06                  bge.s    L013a                              
  00134  046e000aff28          subi.w   #$a,-$d8(a6)                       
L013a:
  0013a  302eff28              move.w   -$d8(a6),d0                        
  0013e  6700012e              beq.w    L026e                              
  00142  6b00012a              bmi.w    L026e                              
  00146  0440000b              subi.w   #$b,d0                             
  0014a  6a000122              bpl.w    L026e                              
  0014e  2f0c                  move.l   a4,-(a7)                           
  00150  700a                  moveq    #10,d0                             
  00152  d06eff28              add.w    -$d8(a6),d0                        
  00156  3f00                  move.w   d0,-(a7)                           
  00158  486eff26              pea      -$da(a6)                           
  0015c  486eff1e              pea      -$e2(a6)                           
  00160  486eff16              pea      -$ea(a6)                           
  00164  a98d                  _GetDialogItem                              ; $a98d
  00166  2f2eff1e              move.l   -$e2(a6),-(a7)                     
  0016a  486efe16              pea      -$1ea(a6)                          
  0016e  a990                  _GetDialogItemText                          ; $a990
  00170  7000                  moveq    #0,d0                              
  00172  102efe16              move.b   -$1ea(a6),d0                       
  00176  3d40ff26              move.w   d0,-$da(a6)                        
  0017a  7e01                  moveq    #1,d7                              
  0017c  6014                  bra.s    L0192                              
L017e:
  0017e  302eff26              move.w   -$da(a6),d0                        
  00182  41eefe16              lea      -$1ea(a6),a0                       
  00186  d0c0                  adda.w   d0,a0                              
  00188  11b67125fd8e7000      move.b   ([-$272,a6],d7.w,$0),$0(a0,d7.w)   
  00190  5247                  addq.w   #1,d7                              
L0192:
  00192  206efd8e              movea.l  -$272(a6),a0                       
  00196  1010                  move.b   (a0),d0                            
  00198  49c0                  extb.l   d0                                 
  0019a  b047                  cmp.w    d7,d0                              
  0019c  6ce0                  bge.s    L017e                              
  0019e  206efd8e              movea.l  -$272(a6),a0                       
  001a2  1010                  move.b   (a0),d0                            
  001a4  d12efe16              add.b    d0,-$1ea(a6)                       
  001a8  200b                  move.l   a3,d0                              
  001aa  6704                  beq.s    L01b0                              
  001ac  204b                  movea.l  a3,a0                              
  001ae  a01f                  _DisposePtr                                 ; $a01f
L01b0:
  001b0  7000                  moveq    #0,d0                              
  001b2  102efe16              move.b   -$1ea(a6),d0                       
  001b6  5280                  addq.l   #1,d0                              
  001b8  a11e                  _NewPtr                                     ; $a11e
  001ba  2648                  movea.l  a0,a3                              
  001bc  200b                  move.l   a3,d0                              
  001be  661a                  bne.s    L01da                              
  001c0  4267                  clr.w    -(a7)                              
  001c2  3eb80220              move.w   ($220).w,(a7)                      
  001c6  3a1f                  move.w   (a7)+,d5                           
  001c8  4a45                  tst.w    d5                                 
  001ca  670e                  beq.s    L01da                              
  001cc  2f3c00000624          move.l   STR_0624,-(a7)                     ; "adding new pointer in buypotions. Save your game and restart"
  001d2  3f05                  move.w   d5,-(a7)                           
  001d4  4ead06ca              jsr      f7_18ec                            
  001d8  5c8f                  addq.l   #6,a7                              
L01da:
  001da  41eefe16              lea      -$1ea(a6),a0                       
  001de  7000                  moveq    #0,d0                              
  001e0  102efe16              move.b   -$1ea(a6),d0                       
  001e4  5280                  addq.l   #1,d0                              
  001e6  224b                  movea.l  a3,a1                              
  001e8  a02e                  _BlockMove                                  ; $a02e
  001ea  3f3c0005              move.w   #5,-(a7)                           
  001ee  3f39ffff8da2          move.w   g_725e,-(a7)                       
  001f4  3f3c04d0              move.w   #$4d0,-(a7)                        
  001f8  2f0b                  move.l   a3,-(a7)                           
  001fa  486efe02              pea      -$1fe(a6)                          
  001fe  302eff28              move.w   -$d8(a6),d0                        
  00202  3f3602d4              move.w   -$2c(a6,d0.w*2),-(a7)              
  00206  4ead0262              jsr      f2_0000                            
  0020a  1c00                  move.b   d0,d6                              
  0020c  4a06                  tst.b    d6                                 
  0020e  4fef0010              lea      $10(a7),a7                         
  00212  675a                  beq.s    L026e                              
  00214  302eff28              move.w   -$d8(a6),d0                        
  00218  303602ea              move.w   -$16(a6,d0.w*2),d0                 
  0021c  322eff28              move.w   -$d8(a6),d1                        
  00220  323612ea              move.w   -$16(a6,d1.w*2),d1                 
  00224  21b005b0ffff735a15b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d1.w*4)
  00232  302eff28              move.w   -$d8(a6),d0                        
  00236  323602ea              move.w   -$16(a6,d0.w*2),d1                 
  0023a  31b602ea13b0ffff83be  move.w   -$16(a6,d0.w*2),(-$7c42,za0,d1.w*2)
  00244  2f3c00040001          move.l   #$40001,-(a7)                      
  0024a  4267                  clr.w    -(a7)                              
  0024c  42a7                  clr.l    -(a7)                              
  0024e  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  00254  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  0025a  3f3602ea              move.w   -$16(a6,d0.w*2),-(a7)              
  0025e  3f3c0001              move.w   #1,-(a7)                           
  00262  4ead0232              jsr      f2_7ad6                            
  00266  2e8c                  move.l   a4,(a7)                            
  00268  a91f                  _SelectWindow                               ; $a91f
  0026a  4fef0012              lea      $12(a7),a7                         
L026e:
  0026e  0c6e0015ff28          cmpi.w   #$15,-$d8(a6)                      
  00274  6d00fea6              blt.w    L011c                              
  00278  2f0c                  move.l   a4,-(a7)                           
  0027a  a983                  _DisposeDialog                              ; $a983
  0027c  7e01                  moveq    #1,d7                              
  0027e  600a                  bra.s    L028a                              
L0280:
  00280  20767520fe02          movea.l  (-$1fe,a6,d7.w*4),a0               
  00286  a01f                  _DisposePtr                                 ; $a01f
  00288  5247                  addq.w   #1,d7                              
L028a:
  0028a  be6eff22              cmp.w    -$de(a6),d7                        
  0028e  6ff0                  ble.s    L0280                              
  00290  7e01                  moveq    #1,d7                              
  00292  600a                  bra.s    L029e                              
L0294:
  00294  20767520fd8a          movea.l  (-$276,a6,d7.w*4),a0               
  0029a  a01f                  _DisposePtr                                 ; $a01f
  0029c  5247                  addq.w   #1,d7                              
L029e:
  0029e  be6eff24              cmp.w    -$dc(a6),d7                        
  002a2  6ff0                  ble.s    L0294                              
  002a4  200b                  move.l   a3,d0                              
  002a6  6704                  beq.s    L02ac                              
  002a8  204b                  movea.l  a3,a0                              
  002aa  a01f                  _DisposePtr                                 ; $a01f
L02ac:
  002ac  4cee18e0fd76          movem.l  -$28a(a6),d5/d6/d7/a3/a4           
  002b2  4e5e                  unlk     a6                                 
  002b4  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_02b6
;----------------------------------------------------------------------
f5_02b6:
  002b6  4e56fd82              link     a6,#-638                           
  002ba  48e70718              movem.l  d5/d6/d7/a3/a4,-(a7)               
  002be  41eeffe6              lea      -$1a(a6),a0                        
  002c2  43f9ffffaca2          lea      g_535e,a1                          
  002c8  7005                  moveq    #5,d0                              
L02ca:
  002ca  20d9                  move.l   (a1)+,(a0)+                        
  002cc  51c8fffc              dbf      d0,L02ca                           
  002d0  30d9                  move.w   (a1)+,(a0)+                        
  002d2  41eeffcc              lea      -$34(a6),a0                        
  002d6  43f9ffffacbc          lea      g_5344,a1                          
  002dc  7005                  moveq    #5,d0                              
L02de:
  002de  20d9                  move.l   (a1)+,(a0)+                        
  002e0  51c8fffc              dbf      d0,L02de                           
  002e4  30d9                  move.w   (a1)+,(a0)+                        
  002e6  97cb                  suba.l   a3,a3                              
  002e8  0c790004ffff8da0      cmpi.w   #4,g_7260                          
  002f0  6f2a                  ble.s    L031c                              
  002f2  3f3c0005              move.w   #5,-(a7)                           
  002f6  2f3c00000670          move.l   STR_0670,-(a7)                     ; "?"
  002fc  2f3c00000672          move.l   STR_0672,-(a7)                     ; "?"
  00302  2f3c00020000          move.l   #$20000,-(a7)                      
  00308  2f3cffff8da0          move.l   #$ffff8da0,-(a7)                   
  0030e  2f3c00010001          move.l   #$10001,-(a7)                      
  00314  4ead00a2              jsr      f2_1144                            
  00318  600001ee              bra.w    L0508                              
L031c:
  0031c  7e01                  moveq    #1,d7                              
  0031e  6012                  bra.s    L0332                              
L0320:
  00320  70ff                  moveq    #-1,d0                             
  00322  d079ffff8894          add.w    g_776c,d0                          
  00328  c1fc0190              muls.w   #$190,d0                           
  0032c  d17672cc              add.w    d0,-$34(a6,d7.w*2)                 
  00330  5247                  addq.w   #1,d7                              
L0332:
  00332  0c47000d              cmpi.w   #$d,d7                             
  00336  6de8                  blt.s    L0320                              
  00338  3f3c00d2              move.w   #$d2,-(a7)                         
  0033c  486efdfa              pea      -$206(a6)                          
  00340  486eff1a              pea      -$e6(a6)                           
  00344  4ead025a              jsr      f2_194e                            
  00348  3ebc02bc              move.w   #$2bc,(a7)                         
  0034c  486efd82              pea      -$27e(a6)                          
  00350  486eff1c              pea      -$e4(a6)                           
  00354  4ead025a              jsr      f2_194e                            
  00358  4297                  clr.l    (a7)                               
  0035a  3f3c0fa2              move.w   #$fa2,-(a7)                        
  0035e  486eff22              pea      -$de(a6)                           
  00362  4878ffff              pea      ($ffff).w                          
  00366  a97c                  _GetNewDialog                               ; $a97c
  00368  285f                  movea.l  (a7)+,a4                           
  0036a  2e8c                  move.l   a4,(a7)                            
  0036c  4ead06ba              jsr      f7_161c                            
  00370  2e8c                  move.l   a4,(a7)                            
  00372  a915                  _ShowWindow                                 ; $a915
  00374  4fef000a              lea      $a(a7),a7                          
L0378:
  00378  42a7                  clr.l    -(a7)                              
  0037a  486eff20              pea      -$e0(a6)                           
  0037e  a991                  _ModalDialog                                ; $a991
  00380  0c6e000cff20          cmpi.w   #$c,-$e0(a6)                       
  00386  6f0e                  ble.s    L0396                              
  00388  0c6e0019ff20          cmpi.w   #$19,-$e0(a6)                      
  0038e  6c06                  bge.s    L0396                              
  00390  046e000cff20          subi.w   #$c,-$e0(a6)                       
L0396:
  00396  302eff20              move.w   -$e0(a6),d0                        
  0039a  6700012e              beq.w    L04ca                              
  0039e  6b00012a              bmi.w    L04ca                              
  003a2  0440000d              subi.w   #$d,d0                             
  003a6  6a000122              bpl.w    L04ca                              
  003aa  2f0c                  move.l   a4,-(a7)                           
  003ac  700c                  moveq    #12,d0                             
  003ae  d06eff20              add.w    -$e0(a6),d0                        
  003b2  3f00                  move.w   d0,-(a7)                           
  003b4  486eff1e              pea      -$e2(a6)                           
  003b8  486eff16              pea      -$ea(a6)                           
  003bc  486eff0e              pea      -$f2(a6)                           
  003c0  a98d                  _GetDialogItem                              ; $a98d
  003c2  2f2eff16              move.l   -$ea(a6),-(a7)                     
  003c6  486efe0e              pea      -$1f2(a6)                          
  003ca  a990                  _GetDialogItemText                          ; $a990
  003cc  7000                  moveq    #0,d0                              
  003ce  102efe0e              move.b   -$1f2(a6),d0                       
  003d2  3d40ff1e              move.w   d0,-$e2(a6)                        
  003d6  7e01                  moveq    #1,d7                              
  003d8  6014                  bra.s    L03ee                              
L03da:
  003da  302eff1e              move.w   -$e2(a6),d0                        
  003de  41eefe0e              lea      -$1f2(a6),a0                       
  003e2  d0c0                  adda.w   d0,a0                              
  003e4  11b67125fd8a7000      move.b   ([-$276,a6],d7.w,$0),$0(a0,d7.w)   
  003ec  5247                  addq.w   #1,d7                              
L03ee:
  003ee  206efd8a              movea.l  -$276(a6),a0                       
  003f2  1010                  move.b   (a0),d0                            
  003f4  49c0                  extb.l   d0                                 
  003f6  b047                  cmp.w    d7,d0                              
  003f8  6ce0                  bge.s    L03da                              
  003fa  206efd8a              movea.l  -$276(a6),a0                       
  003fe  1010                  move.b   (a0),d0                            
  00400  d12efe0e              add.b    d0,-$1f2(a6)                       
  00404  200b                  move.l   a3,d0                              
  00406  6704                  beq.s    L040c                              
  00408  204b                  movea.l  a3,a0                              
  0040a  a01f                  _DisposePtr                                 ; $a01f
L040c:
  0040c  7000                  moveq    #0,d0                              
  0040e  102efe0e              move.b   -$1f2(a6),d0                       
  00412  5280                  addq.l   #1,d0                              
  00414  a11e                  _NewPtr                                     ; $a11e
  00416  2648                  movea.l  a0,a3                              
  00418  200b                  move.l   a3,d0                              
  0041a  661a                  bne.s    L0436                              
  0041c  4267                  clr.w    -(a7)                              
  0041e  3eb80220              move.w   ($220).w,(a7)                      
  00422  3a1f                  move.w   (a7)+,d5                           
  00424  4a45                  tst.w    d5                                 
  00426  670e                  beq.s    L0436                              
  00428  2f3c00000674          move.l   STR_0674,-(a7)                     ; "adding new pointer in buyscrolls. Save your game and restart"
  0042e  3f05                  move.w   d5,-(a7)                           
  00430  4ead06ca              jsr      f7_18ec                            
  00434  5c8f                  addq.l   #6,a7                              
L0436:
  00436  41eefe0e              lea      -$1f2(a6),a0                       
  0043a  7000                  moveq    #0,d0                              
  0043c  102efe0e              move.b   -$1f2(a6),d0                       
  00440  5280                  addq.l   #1,d0                              
  00442  224b                  movea.l  a3,a1                              
  00444  a02e                  _BlockMove                                  ; $a02e
  00446  3f3c0005              move.w   #5,-(a7)                           
  0044a  3f39ffff8da0          move.w   g_7260,-(a7)                       
  00450  3f3c04d1              move.w   #$4d1,-(a7)                        
  00454  2f0b                  move.l   a3,-(a7)                           
  00456  486efdfa              pea      -$206(a6)                          
  0045a  302eff20              move.w   -$e0(a6),d0                        
  0045e  3f3602cc              move.w   -$34(a6,d0.w*2),-(a7)              
  00462  4ead0262              jsr      f2_0000                            
  00466  1c00                  move.b   d0,d6                              
  00468  4a06                  tst.b    d6                                 
  0046a  4fef0010              lea      $10(a7),a7                         
  0046e  675a                  beq.s    L04ca                              
  00470  302eff20              move.w   -$e0(a6),d0                        
  00474  303602e6              move.w   -$1a(a6,d0.w*2),d0                 
  00478  322eff20              move.w   -$e0(a6),d1                        
  0047c  323612e6              move.w   -$1a(a6,d1.w*2),d1                 
  00480  21b005b0ffff735a15b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d1.w*4)
  0048e  302eff20              move.w   -$e0(a6),d0                        
  00492  323602e6              move.w   -$1a(a6,d0.w*2),d1                 
  00496  31b602e613b0ffff83be  move.w   -$1a(a6,d0.w*2),(-$7c42,za0,d1.w*2)
  004a0  2f3c00050002          move.l   #$50002,-(a7)                      
  004a6  4267                  clr.w    -(a7)                              
  004a8  42a7                  clr.l    -(a7)                              
  004aa  2f3cffff8864          move.l   #$ffff8864,-(a7)                   
  004b0  2f3cffff8da0          move.l   #$ffff8da0,-(a7)                   
  004b6  3f3602e6              move.w   -$1a(a6,d0.w*2),-(a7)              
  004ba  3f3c0001              move.w   #1,-(a7)                           
  004be  4ead0232              jsr      f2_7ad6                            
  004c2  2e8c                  move.l   a4,(a7)                            
  004c4  a91f                  _SelectWindow                               ; $a91f
  004c6  4fef0012              lea      $12(a7),a7                         
L04ca:
  004ca  0c6e0019ff20          cmpi.w   #$19,-$e0(a6)                      
  004d0  6d00fea6              blt.w    L0378                              
  004d4  2f0c                  move.l   a4,-(a7)                           
  004d6  a983                  _DisposeDialog                              ; $a983
  004d8  7e01                  moveq    #1,d7                              
  004da  600a                  bra.s    L04e6                              
L04dc:
  004dc  20767520fdfa          movea.l  (-$206,a6,d7.w*4),a0               
  004e2  a01f                  _DisposePtr                                 ; $a01f
  004e4  5247                  addq.w   #1,d7                              
L04e6:
  004e6  be6eff1a              cmp.w    -$e6(a6),d7                        
  004ea  6ff0                  ble.s    L04dc                              
  004ec  7e01                  moveq    #1,d7                              
  004ee  600a                  bra.s    L04fa                              
L04f0:
  004f0  20767520fd82          movea.l  (-$27e,a6,d7.w*4),a0               
  004f6  a01f                  _DisposePtr                                 ; $a01f
  004f8  5247                  addq.w   #1,d7                              
L04fa:
  004fa  be6eff1c              cmp.w    -$e4(a6),d7                        
  004fe  6ff0                  ble.s    L04f0                              
  00500  200b                  move.l   a3,d0                              
  00502  6704                  beq.s    L0508                              
  00504  204b                  movea.l  a3,a0                              
  00506  a01f                  _DisposePtr                                 ; $a01f
L0508:
  00508  4cee18e0fd6e          movem.l  -$292(a6),d5/d6/d7/a3/a4           
  0050e  4e5e                  unlk     a6                                 
  00510  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_0512
;----------------------------------------------------------------------
f5_0512:
  00512  4e56fd9e              link     a6,#-610                           
  00516  48e70718              movem.l  d5/d6/d7/a3/a4,-(a7)               
  0051a  41eefff4              lea      -$c(a6),a0                         
  0051e  43f9ffffacd6          lea      g_532a,a1                          
  00524  20d9                  move.l   (a1)+,(a0)+                        
  00526  20d9                  move.l   (a1)+,(a0)+                        
  00528  20d9                  move.l   (a1)+,(a0)+                        
  0052a  41eeffe8              lea      -$18(a6),a0                        
  0052e  43f9fffface2          lea      g_531e,a1                          
  00534  20d9                  move.l   (a1)+,(a0)+                        
  00536  20d9                  move.l   (a1)+,(a0)+                        
  00538  20d9                  move.l   (a1)+,(a0)+                        
  0053a  97cb                  suba.l   a3,a3                              
  0053c  3f3c02bc              move.w   #$2bc,-(a7)                        
  00540  486efd9e              pea      -$262(a6)                          
  00544  486eff38              pea      -$c8(a6)                           
  00548  4ead025a              jsr      f2_194e                            
  0054c  4a79ffff8da8          tst.w    g_7258                             
  00552  4fef000a              lea      $a(a7),a7                          
  00556  6f1c                  ble.s    L0574                              
  00558  2f2efdb6              move.l   -$24a(a6),-(a7)                    
  0055c  2f2efdb6              move.l   -$24a(a6),-(a7)                    
  00560  2f3cffff8da8          move.l   #$ffff8da8,-(a7)                   
  00566  2f3c00010001          move.l   #$10001,-(a7)                      
  0056c  4ead009a              jsr      f2_1010                            
  00570  600001a2              bra.w    L0714                              
L0574:
  00574  7e01                  moveq    #1,d7                              
  00576  6012                  bra.s    L058a                              
L0578:
  00578  70ff                  moveq    #-1,d0                             
  0057a  d079ffff8894          add.w    g_776c,d0                          
  00580  c1fc01f4              muls.w   #$1f4,d0                           
  00584  d17672e8              add.w    d0,-$18(a6,d7.w*2)                 
  00588  5247                  addq.w   #1,d7                              
L058a:
  0058a  0c470005              cmpi.w   #5,d7                              
  0058e  6de8                  blt.s    L0578                              
  00590  3f3c00d2              move.w   #$d2,-(a7)                         
  00594  486efe16              pea      -$1ea(a6)                          
  00598  486eff36              pea      -$ca(a6)                           
  0059c  4ead025a              jsr      f2_194e                            
  005a0  4297                  clr.l    (a7)                               
  005a2  3f3c0fa5              move.w   #$fa5,-(a7)                        
  005a6  486eff3e              pea      -$c2(a6)                           
  005aa  4878ffff              pea      ($ffff).w                          
  005ae  a97c                  _GetNewDialog                               ; $a97c
  005b0  285f                  movea.l  (a7)+,a4                           
  005b2  2e8c                  move.l   a4,(a7)                            
  005b4  4ead06ba              jsr      f7_161c                            
  005b8  2e8c                  move.l   a4,(a7)                            
  005ba  a915                  _ShowWindow                                 ; $a915
  005bc  548f                  addq.l   #2,a7                              
L05be:
  005be  42a7                  clr.l    -(a7)                              
  005c0  486eff3c              pea      -$c4(a6)                           
  005c4  a991                  _ModalDialog                                ; $a991
  005c6  0c6e0005ff3c          cmpi.w   #5,-$c4(a6)                        
  005cc  6f0c                  ble.s    L05da                              
  005ce  0c6e000bff3c          cmpi.w   #$b,-$c4(a6)                       
  005d4  6c04                  bge.s    L05da                              
  005d6  5b6eff3c              subq.w   #5,-$c4(a6)                        
L05da:
  005da  302eff3c              move.w   -$c4(a6),d0                        
  005de  670000f6              beq.w    L06d6                              
  005e2  6b0000f2              bmi.w    L06d6                              
  005e6  5d40                  subq.w   #6,d0                              
  005e8  6a0000ec              bpl.w    L06d6                              
  005ec  2f0c                  move.l   a4,-(a7)                           
  005ee  7005                  moveq    #5,d0                              
  005f0  d06eff3c              add.w    -$c4(a6),d0                        
  005f4  3f00                  move.w   d0,-(a7)                           
  005f6  486eff3a              pea      -$c6(a6)                           
  005fa  486eff32              pea      -$ce(a6)                           
  005fe  486eff2a              pea      -$d6(a6)                           
  00602  a98d                  _GetDialogItem                              ; $a98d
  00604  2f2eff32              move.l   -$ce(a6),-(a7)                     
  00608  486efe2a              pea      -$1d6(a6)                          
  0060c  a990                  _GetDialogItemText                          ; $a990
  0060e  7000                  moveq    #0,d0                              
  00610  102efe2a              move.b   -$1d6(a6),d0                       
  00614  3d40ff3a              move.w   d0,-$c6(a6)                        
  00618  7e01                  moveq    #1,d7                              
  0061a  6014                  bra.s    L0630                              
L061c:
  0061c  302eff3a              move.w   -$c6(a6),d0                        
  00620  41eefe2a              lea      -$1d6(a6),a0                       
  00624  d0c0                  adda.w   d0,a0                              
  00626  11b67125fdb67000      move.b   ([-$24a,a6],d7.w,$0),$0(a0,d7.w)   
  0062e  5247                  addq.w   #1,d7                              
L0630:
  00630  206efdb6              movea.l  -$24a(a6),a0                       
  00634  1010                  move.b   (a0),d0                            
  00636  49c0                  extb.l   d0                                 
  00638  b047                  cmp.w    d7,d0                              
  0063a  6ce0                  bge.s    L061c                              
  0063c  206efdb6              movea.l  -$24a(a6),a0                       
  00640  1010                  move.b   (a0),d0                            
  00642  d12efe2a              add.b    d0,-$1d6(a6)                       
  00646  7000                  moveq    #0,d0                              
  00648  102efe2a              move.b   -$1d6(a6),d0                       
  0064c  5280                  addq.l   #1,d0                              
  0064e  a11e                  _NewPtr                                     ; $a11e
  00650  2648                  movea.l  a0,a3                              
  00652  200b                  move.l   a3,d0                              
  00654  661a                  bne.s    L0670                              
  00656  4267                  clr.w    -(a7)                              
  00658  3eb80220              move.w   ($220).w,(a7)                      
  0065c  3a1f                  move.w   (a7)+,d5                           
  0065e  4a45                  tst.w    d5                                 
  00660  670e                  beq.s    L0670                              
  00662  2f3c000006c0          move.l   STR_06c0,-(a7)                     ; "adding new pointer in buyshield. Save your game and restart "
  00668  3f05                  move.w   d5,-(a7)                           
  0066a  4ead06ca              jsr      f7_18ec                            
  0066e  5c8f                  addq.l   #6,a7                              
L0670:
  00670  41eefe2a              lea      -$1d6(a6),a0                       
  00674  7000                  moveq    #0,d0                              
  00676  102efe2a              move.b   -$1d6(a6),d0                       
  0067a  5280                  addq.l   #1,d0                              
  0067c  224b                  movea.l  a3,a1                              
  0067e  a02e                  _BlockMove                                  ; $a02e
  00680  3f3c0001              move.w   #1,-(a7)                           
  00684  3f39ffff8da8          move.w   g_7258,-(a7)                       
  0068a  302eff3c              move.w   -$c4(a6),d0                        
  0068e  064002bc              addi.w   #$2bc,d0                           
  00692  3f00                  move.w   d0,-(a7)                           
  00694  2f0b                  move.l   a3,-(a7)                           
  00696  486efe16              pea      -$1ea(a6)                          
  0069a  302eff3c              move.w   -$c4(a6),d0                        
  0069e  3f3602e8              move.w   -$18(a6,d0.w*2),-(a7)              
  006a2  4ead0262              jsr      f2_0000                            
  006a6  1c00                  move.b   d0,d6                              
  006a8  4a06                  tst.b    d6                                 
  006aa  4fef0010              lea      $10(a7),a7                         
  006ae  6726                  beq.s    L06d6                              
  006b0  2f3cffff8daa          move.l   #$ffff8daa,-(a7)                   
  006b6  42a7                  clr.l    -(a7)                              
  006b8  2f3cffff8da8          move.l   #$ffff8da8,-(a7)                   
  006be  302eff3c              move.w   -$c4(a6),d0                        
  006c2  3f3602f4              move.w   -$c(a6,d0.w*2),-(a7)               
  006c6  3f3c0001              move.w   #1,-(a7)                           
  006ca  4ead00ca              jsr      f2_1c84                            
  006ce  2e8c                  move.l   a4,(a7)                            
  006d0  a91f                  _SelectWindow                               ; $a91f
  006d2  4fef000c              lea      $c(a7),a7                          
L06d6:
  006d6  0c6e0006ff3c          cmpi.w   #6,-$c4(a6)                        
  006dc  6d00fee0              blt.w    L05be                              
  006e0  2f0c                  move.l   a4,-(a7)                           
  006e2  a983                  _DisposeDialog                              ; $a983
  006e4  7e01                  moveq    #1,d7                              
  006e6  600a                  bra.s    L06f2                              
L06e8:
  006e8  20767520fe16          movea.l  (-$1ea,a6,d7.w*4),a0               
  006ee  a01f                  _DisposePtr                                 ; $a01f
  006f0  5247                  addq.w   #1,d7                              
L06f2:
  006f2  be6eff36              cmp.w    -$ca(a6),d7                        
  006f6  6ff0                  ble.s    L06e8                              
  006f8  7e01                  moveq    #1,d7                              
  006fa  600a                  bra.s    L0706                              
L06fc:
  006fc  20767520fd9e          movea.l  (-$262,a6,d7.w*4),a0               
  00702  a01f                  _DisposePtr                                 ; $a01f
  00704  5247                  addq.w   #1,d7                              
L0706:
  00706  be6eff38              cmp.w    -$c8(a6),d7                        
  0070a  6ff0                  ble.s    L06fc                              
  0070c  200b                  move.l   a3,d0                              
  0070e  6704                  beq.s    L0714                              
  00710  204b                  movea.l  a3,a0                              
  00712  a01f                  _DisposePtr                                 ; $a01f
L0714:
  00714  4cee18e0fd8a          movem.l  -$276(a6),d5/d6/d7/a3/a4           
  0071a  4e5e                  unlk     a6                                 
  0071c  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_071e
;----------------------------------------------------------------------
f5_071e:
  0071e  4e56fd22              link     a6,#-734                           
  00722  48e70718              movem.l  d5/d6/d7/a3/a4,-(a7)               
  00726  41eefff4              lea      -$c(a6),a0                         
  0072a  43f9ffffacee          lea      g_5312,a1                          
  00730  20d9                  move.l   (a1)+,(a0)+                        
  00732  20d9                  move.l   (a1)+,(a0)+                        
  00734  20d9                  move.l   (a1)+,(a0)+                        
  00736  41eefd36              lea      -$2ca(a6),a0                       
  0073a  43f9ffffacfa          lea      g_5306,a1                          
  00740  703f                  moveq    #63,d0                             
L0742:
  00742  20d9                  move.l   (a1)+,(a0)+                        
  00744  51c8fffc              dbf      d0,L0742                           
  00748  97cb                  suba.l   a3,a3                              
  0074a  3f3c00d2              move.w   #$d2,-(a7)                         
  0074e  486efd22              pea      -$2de(a6)                          
  00752  486eff42              pea      -$be(a6)                           
  00756  4ead025a              jsr      f2_194e                            
  0075a  7e01                  moveq    #1,d7                              
  0075c  4fef000a              lea      $a(a7),a7                          
  00760  6012                  bra.s    L0774                              
L0762:
  00762  70ff                  moveq    #-1,d0                             
  00764  d079ffff8894          add.w    g_776c,d0                          
  0076a  c1fc0190              muls.w   #$190,d0                           
  0076e  d17672f4              add.w    d0,-$c(a6,d7.w*2)                  
  00772  5247                  addq.w   #1,d7                              
L0774:
  00774  0c470006              cmpi.w   #6,d7                              
  00778  6de8                  blt.s    L0762                              
  0077a  42a7                  clr.l    -(a7)                              
  0077c  3f3c0fa6              move.w   #$fa6,-(a7)                        
  00780  486eff4a              pea      -$b6(a6)                           
  00784  4878ffff              pea      ($ffff).w                          
  00788  a97c                  _GetNewDialog                               ; $a97c
  0078a  285f                  movea.l  (a7)+,a4                           
  0078c  2f0c                  move.l   a4,-(a7)                           
  0078e  4ead06ba              jsr      f7_161c                            
  00792  2e8c                  move.l   a4,(a7)                            
  00794  a915                  _ShowWindow                                 ; $a915
L0796:
  00796  42a7                  clr.l    -(a7)                              
  00798  486eff48              pea      -$b8(a6)                           
  0079c  a991                  _ModalDialog                                ; $a991
  0079e  0c6e0005ff48          cmpi.w   #5,-$b8(a6)                        
  007a4  6f0c                  ble.s    L07b2                              
  007a6  0c6e000bff48          cmpi.w   #$b,-$b8(a6)                       
  007ac  6c04                  bge.s    L07b2                              
  007ae  5b6eff48              subq.w   #5,-$b8(a6)                        
L07b2:
  007b2  302eff48              move.w   -$b8(a6),d0                        
  007b6  670000d0              beq.w    L0888                              
  007ba  6b0000cc              bmi.w    L0888                              
  007be  5d40                  subq.w   #6,d0                              
  007c0  6a0000c6              bpl.w    L0888                              
  007c4  2f0c                  move.l   a4,-(a7)                           
  007c6  7005                  moveq    #5,d0                              
  007c8  d06eff48              add.w    -$b8(a6),d0                        
  007cc  3f00                  move.w   d0,-(a7)                           
  007ce  486eff46              pea      -$ba(a6)                           
  007d2  486eff3e              pea      -$c2(a6)                           
  007d6  486eff36              pea      -$ca(a6)                           
  007da  a98d                  _GetDialogItem                              ; $a98d
  007dc  2f2eff3e              move.l   -$c2(a6),-(a7)                     
  007e0  486efe36              pea      -$1ca(a6)                          
  007e4  a990                  _GetDialogItemText                          ; $a990
  007e6  7000                  moveq    #0,d0                              
  007e8  102efe36              move.b   -$1ca(a6),d0                       
  007ec  3d40ff46              move.w   d0,-$ba(a6)                        
  007f0  7e01                  moveq    #1,d7                              
  007f2  6014                  bra.s    L0808                              
L07f4:
  007f4  302eff46              move.w   -$ba(a6),d0                        
  007f8  41eefe36              lea      -$1ca(a6),a0                       
  007fc  d0c0                  adda.w   d0,a0                              
  007fe  11b67120fd367000      move.b   (-$2ca,a6,d7.w),$0(a0,d7.w)        
  00806  5247                  addq.w   #1,d7                              
L0808:
  00808  7000                  moveq    #0,d0                              
  0080a  102efd36              move.b   -$2ca(a6),d0                       
  0080e  b047                  cmp.w    d7,d0                              
  00810  6ce2                  bge.s    L07f4                              
  00812  102efd36              move.b   -$2ca(a6),d0                       
  00816  d12efe36              add.b    d0,-$1ca(a6)                       
  0081a  7000                  moveq    #0,d0                              
  0081c  102efe36              move.b   -$1ca(a6),d0                       
  00820  5280                  addq.l   #1,d0                              
  00822  a11e                  _NewPtr                                     ; $a11e
  00824  2648                  movea.l  a0,a3                              
  00826  200b                  move.l   a3,d0                              
  00828  661a                  bne.s    L0844                              
  0082a  4267                  clr.w    -(a7)                              
  0082c  3eb80220              move.w   ($220).w,(a7)                      
  00830  3a1f                  move.w   (a7)+,d5                           
  00832  4a45                  tst.w    d5                                 
  00834  670e                  beq.s    L0844                              
  00836  2f3c0000070a          move.l   STR_070a,-(a7)                     ; "adding new pointer in buyspells. Save your game and restart "
  0083c  3f05                  move.w   d5,-(a7)                           
  0083e  4ead06ca              jsr      f7_18ec                            
  00842  5c8f                  addq.l   #6,a7                              
L0844:
  00844  41eefe36              lea      -$1ca(a6),a0                       
  00848  7000                  moveq    #0,d0                              
  0084a  102efe36              move.b   -$1ca(a6),d0                       
  0084e  5280                  addq.l   #1,d0                              
  00850  224b                  movea.l  a3,a1                              
  00852  a02e                  _BlockMove                                  ; $a02e
  00854  48780001              pea      ($1).w                             
  00858  3f3c4e3e              move.w   #$4e3e,-(a7)                       
  0085c  2f0b                  move.l   a3,-(a7)                           
  0085e  486efd22              pea      -$2de(a6)                          
  00862  302eff48              move.w   -$b8(a6),d0                        
  00866  3f3602f4              move.w   -$c(a6,d0.w*2),-(a7)               
  0086a  4ead0262              jsr      f2_0000                            
  0086e  1c00                  move.b   d0,d6                              
  00870  4a06                  tst.b    d6                                 
  00872  4fef0010              lea      $10(a7),a7                         
  00876  6710                  beq.s    L0888                              
  00878  302eff48              move.w   -$b8(a6),d0                        
  0087c  547003b0ffff8e3e      addq.w   #2,(-$71c2,za0,d0.w*2)             
  00884  2f0c                  move.l   a4,-(a7)                           
  00886  a91f                  _SelectWindow                               ; $a91f
L0888:
  00888  0c6e0006ff48          cmpi.w   #6,-$b8(a6)                        
  0088e  6d00ff06              blt.w    L0796                              
  00892  2f0c                  move.l   a4,-(a7)                           
  00894  a983                  _DisposeDialog                              ; $a983
  00896  7c00                  moveq    #0,d6                              
  00898  7e01                  moveq    #1,d7                              
  0089a  600e                  bra.s    L08aa                              
L089c:
  0089c  4a7073b0ffff8e3e      tst.w    (-$71c2,za0,d7.w*2)                
  008a4  6f02                  ble.s    L08a8                              
  008a6  7c01                  moveq    #1,d6                              
L08a8:
  008a8  5247                  addq.w   #1,d7                              
L08aa:
  008aa  0c470006              cmpi.w   #6,d7                              
  008ae  6dec                  blt.s    L089c                              
  008b0  7e01                  moveq    #1,d7                              
  008b2  6012                  bra.s    L08c6                              
L08b4:
  008b4  4ab67520fd22          tst.l    (-$2de,a6,d7.w*4)                  
  008ba  6708                  beq.s    L08c4                              
  008bc  20767520fd22          movea.l  (-$2de,a6,d7.w*4),a0               
  008c2  a01f                  _DisposePtr                                 ; $a01f
L08c4:
  008c4  5247                  addq.w   #1,d7                              
L08c6:
  008c6  be6eff42              cmp.w    -$be(a6),d7                        
  008ca  6fe8                  ble.s    L08b4                              
  008cc  200b                  move.l   a3,d0                              
  008ce  6704                  beq.s    L08d4                              
  008d0  204b                  movea.l  a3,a0                              
  008d2  a01f                  _DisposePtr                                 ; $a01f
L08d4:
  008d4  4cdf18e0              movem.l  (a7)+,d5/d6/d7/a3/a4               
  008d8  4e5e                  unlk     a6                                 
  008da  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_08dc
;----------------------------------------------------------------------
f5_08dc:
  008dc  4e56fd8a              link     a6,#-630                           
  008e0  48e70718              movem.l  d5/d6/d7/a3/a4,-(a7)               
  008e4  41eeffea              lea      -$16(a6),a0                        
  008e8  43f9ffffadfa          lea      g_5206,a1                          
  008ee  7004                  moveq    #4,d0                              
L08f0:
  008f0  20d9                  move.l   (a1)+,(a0)+                        
  008f2  51c8fffc              dbf      d0,L08f0                           
  008f6  30d9                  move.w   (a1)+,(a0)+                        
  008f8  41eeffd4              lea      -$2c(a6),a0                        
  008fc  43f9ffffae10          lea      g_51f0,a1                          
  00902  7004                  moveq    #4,d0                              
L0904:
  00904  20d9                  move.l   (a1)+,(a0)+                        
  00906  51c8fffc              dbf      d0,L0904                           
  0090a  30d9                  move.w   (a1)+,(a0)+                        
  0090c  97cb                  suba.l   a3,a3                              
  0090e  0c790004ffff8da4      cmpi.w   #4,g_725c                          
  00916  6f2a                  ble.s    L0942                              
  00918  3f3c0005              move.w   #5,-(a7)                           
  0091c  2f3c00000754          move.l   STR_0754,-(a7)                     ; "?"
  00922  2f3c00000756          move.l   STR_0756,-(a7)                     ; "?"
  00928  2f3c00030000          move.l   #$30000,-(a7)                      
  0092e  2f3cffff8da4          move.l   #$ffff8da4,-(a7)                   
  00934  2f3c00010001          move.l   #$10001,-(a7)                      
  0093a  4ead00a2              jsr      f2_1144                            
  0093e  600001ee              bra.w    L0b2e                              
L0942:
  00942  7e01                  moveq    #1,d7                              
  00944  6012                  bra.s    L0958                              
L0946:
  00946  70ff                  moveq    #-1,d0                             
  00948  d079ffff8894          add.w    g_776c,d0                          
  0094e  c1fc0190              muls.w   #$190,d0                           
  00952  d17672d4              add.w    d0,-$2c(a6,d7.w*2)                 
  00956  5247                  addq.w   #1,d7                              
L0958:
  00958  0c47000b              cmpi.w   #$b,d7                             
  0095c  6de8                  blt.s    L0946                              
  0095e  3f3c00d2              move.w   #$d2,-(a7)                         
  00962  486efe02              pea      -$1fe(a6)                          
  00966  486eff22              pea      -$de(a6)                           
  0096a  4ead025a              jsr      f2_194e                            
  0096e  3ebc02bc              move.w   #$2bc,(a7)                         
  00972  486efd8a              pea      -$276(a6)                          
  00976  486eff24              pea      -$dc(a6)                           
  0097a  4ead025a              jsr      f2_194e                            
  0097e  4297                  clr.l    (a7)                               
  00980  3f3c0fa3              move.w   #$fa3,-(a7)                        
  00984  486eff2a              pea      -$d6(a6)                           
  00988  4878ffff              pea      ($ffff).w                          
  0098c  a97c                  _GetNewDialog                               ; $a97c
  0098e  285f                  movea.l  (a7)+,a4                           
  00990  2e8c                  move.l   a4,(a7)                            
  00992  4ead06ba              jsr      f7_161c                            
  00996  2e8c                  move.l   a4,(a7)                            
  00998  a915                  _ShowWindow                                 ; $a915
  0099a  4fef000a              lea      $a(a7),a7                          
L099e:
  0099e  42a7                  clr.l    -(a7)                              
  009a0  486eff28              pea      -$d8(a6)                           
  009a4  a991                  _ModalDialog                                ; $a991
  009a6  0c6e000aff28          cmpi.w   #$a,-$d8(a6)                       
  009ac  6f0e                  ble.s    L09bc                              
  009ae  0c6e0015ff28          cmpi.w   #$15,-$d8(a6)                      
  009b4  6c06                  bge.s    L09bc                              
  009b6  046e000aff28          subi.w   #$a,-$d8(a6)                       
L09bc:
  009bc  302eff28              move.w   -$d8(a6),d0                        
  009c0  6700012e              beq.w    L0af0                              
  009c4  6b00012a              bmi.w    L0af0                              
  009c8  0440000b              subi.w   #$b,d0                             
  009cc  6a000122              bpl.w    L0af0                              
  009d0  2f0c                  move.l   a4,-(a7)                           
  009d2  700a                  moveq    #10,d0                             
  009d4  d06eff28              add.w    -$d8(a6),d0                        
  009d8  3f00                  move.w   d0,-(a7)                           
  009da  486eff26              pea      -$da(a6)                           
  009de  486eff1e              pea      -$e2(a6)                           
  009e2  486eff16              pea      -$ea(a6)                           
  009e6  a98d                  _GetDialogItem                              ; $a98d
  009e8  2f2eff1e              move.l   -$e2(a6),-(a7)                     
  009ec  486efe16              pea      -$1ea(a6)                          
  009f0  a990                  _GetDialogItemText                          ; $a990
  009f2  7000                  moveq    #0,d0                              
  009f4  102efe16              move.b   -$1ea(a6),d0                       
  009f8  3d40ff26              move.w   d0,-$da(a6)                        
  009fc  7e01                  moveq    #1,d7                              
  009fe  6014                  bra.s    L0a14                              
L0a00:
  00a00  302eff26              move.w   -$da(a6),d0                        
  00a04  41eefe16              lea      -$1ea(a6),a0                       
  00a08  d0c0                  adda.w   d0,a0                              
  00a0a  11b67125fd967000      move.b   ([-$26a,a6],d7.w,$0),$0(a0,d7.w)   
  00a12  5247                  addq.w   #1,d7                              
L0a14:
  00a14  206efd96              movea.l  -$26a(a6),a0                       
  00a18  1010                  move.b   (a0),d0                            
  00a1a  49c0                  extb.l   d0                                 
  00a1c  b047                  cmp.w    d7,d0                              
  00a1e  6ce0                  bge.s    L0a00                              
  00a20  206efd96              movea.l  -$26a(a6),a0                       
  00a24  1010                  move.b   (a0),d0                            
  00a26  d12efe16              add.b    d0,-$1ea(a6)                       
  00a2a  200b                  move.l   a3,d0                              
  00a2c  6704                  beq.s    L0a32                              
  00a2e  204b                  movea.l  a3,a0                              
  00a30  a01f                  _DisposePtr                                 ; $a01f
L0a32:
  00a32  7000                  moveq    #0,d0                              
  00a34  102efe16              move.b   -$1ea(a6),d0                       
  00a38  5280                  addq.l   #1,d0                              
  00a3a  a11e                  _NewPtr                                     ; $a11e
  00a3c  2648                  movea.l  a0,a3                              
  00a3e  200b                  move.l   a3,d0                              
  00a40  661a                  bne.s    L0a5c                              
  00a42  4267                  clr.w    -(a7)                              
  00a44  3eb80220              move.w   ($220).w,(a7)                      
  00a48  3a1f                  move.w   (a7)+,d5                           
  00a4a  4a45                  tst.w    d5                                 
  00a4c  670e                  beq.s    L0a5c                              
  00a4e  2f3c00000758          move.l   STR_0758,-(a7)                     ; "adding new pointer in buywands. Save your game and restart t"
  00a54  3f05                  move.w   d5,-(a7)                           
  00a56  4ead06ca              jsr      f7_18ec                            
  00a5a  5c8f                  addq.l   #6,a7                              
L0a5c:
  00a5c  41eefe16              lea      -$1ea(a6),a0                       
  00a60  7000                  moveq    #0,d0                              
  00a62  102efe16              move.b   -$1ea(a6),d0                       
  00a66  5280                  addq.l   #1,d0                              
  00a68  224b                  movea.l  a3,a1                              
  00a6a  a02e                  _BlockMove                                  ; $a02e
  00a6c  3f3c0005              move.w   #5,-(a7)                           
  00a70  3f39ffff8da4          move.w   g_725c,-(a7)                       
  00a76  3f3c04cf              move.w   #$4cf,-(a7)                        
  00a7a  2f0b                  move.l   a3,-(a7)                           
  00a7c  486efe02              pea      -$1fe(a6)                          
  00a80  302eff28              move.w   -$d8(a6),d0                        
  00a84  3f3602d4              move.w   -$2c(a6,d0.w*2),-(a7)              
  00a88  4ead0262              jsr      f2_0000                            
  00a8c  1c00                  move.b   d0,d6                              
  00a8e  4a06                  tst.b    d6                                 
  00a90  4fef0010              lea      $10(a7),a7                         
  00a94  675a                  beq.s    L0af0                              
  00a96  302eff28              move.w   -$d8(a6),d0                        
  00a9a  303602ea              move.w   -$16(a6,d0.w*2),d0                 
  00a9e  322eff28              move.w   -$d8(a6),d1                        
  00aa2  323612ea              move.w   -$16(a6,d1.w*2),d1                 
  00aa6  21b005b0ffff735a15b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d1.w*4)
  00ab4  302eff28              move.w   -$d8(a6),d0                        
  00ab8  323602ea              move.w   -$16(a6,d0.w*2),d1                 
  00abc  31b602ea13b0ffff83be  move.w   -$16(a6,d0.w*2),(-$7c42,za0,d1.w*2)
  00ac6  2f3c00060003          move.l   #$60003,-(a7)                      
  00acc  4267                  clr.w    -(a7)                              
  00ace  42a7                  clr.l    -(a7)                              
  00ad0  2f3cffff887c          move.l   #$ffff887c,-(a7)                   
  00ad6  2f3cffff8da4          move.l   #$ffff8da4,-(a7)                   
  00adc  3f3602ea              move.w   -$16(a6,d0.w*2),-(a7)              
  00ae0  3f3c0001              move.w   #1,-(a7)                           
  00ae4  4ead0232              jsr      f2_7ad6                            
  00ae8  2e8c                  move.l   a4,(a7)                            
  00aea  a91f                  _SelectWindow                               ; $a91f
  00aec  4fef0012              lea      $12(a7),a7                         
L0af0:
  00af0  0c6e0015ff28          cmpi.w   #$15,-$d8(a6)                      
  00af6  6d00fea6              blt.w    L099e                              
  00afa  2f0c                  move.l   a4,-(a7)                           
  00afc  a983                  _DisposeDialog                              ; $a983
  00afe  7e01                  moveq    #1,d7                              
  00b00  600a                  bra.s    L0b0c                              
L0b02:
  00b02  20767520fe02          movea.l  (-$1fe,a6,d7.w*4),a0               
  00b08  a01f                  _DisposePtr                                 ; $a01f
  00b0a  5247                  addq.w   #1,d7                              
L0b0c:
  00b0c  be6eff22              cmp.w    -$de(a6),d7                        
  00b10  6ff0                  ble.s    L0b02                              
  00b12  7e01                  moveq    #1,d7                              
  00b14  600a                  bra.s    L0b20                              
L0b16:
  00b16  20767520fd8a          movea.l  (-$276,a6,d7.w*4),a0               
  00b1c  a01f                  _DisposePtr                                 ; $a01f
  00b1e  5247                  addq.w   #1,d7                              
L0b20:
  00b20  be6eff24              cmp.w    -$dc(a6),d7                        
  00b24  6ff0                  ble.s    L0b16                              
  00b26  200b                  move.l   a3,d0                              
  00b28  6704                  beq.s    L0b2e                              
  00b2a  204b                  movea.l  a3,a0                              
  00b2c  a01f                  _DisposePtr                                 ; $a01f
L0b2e:
  00b2e  4cee18e0fd76          movem.l  -$28a(a6),d5/d6/d7/a3/a4           
  00b34  4e5e                  unlk     a6                                 
  00b36  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_0b38   [jump table #161]
;----------------------------------------------------------------------
f5_0b38:
  00b38  4e56faa6              link     a6,#-1370                          
  00b3c  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  00b40  7800                  moveq    #0,d4                              
  00b42  7c00                  moveq    #0,d6                              
  00b44  7a0a                  moveq    #10,d5                             
  00b46  7600                  moveq    #0,d3                              
  00b48  7e00                  moveq    #0,d7                              
  00b4a  426eff10              clr.w    -$f0(a6)                           
  00b4e  70ff                  moveq    #-1,d0                             
  00b50  d06e0008              add.w    $8(a6),d0                          
  00b54  c1fc0007              muls.w   #7,d0                              
  00b58  3d40ff0e              move.w   d0,-$f2(a6)                        
  00b5c  422efaa7              clr.b    -$559(a6)                          
  00b60  4a2e000a              tst.b    $a(a6)                             
  00b64  670000fc              beq.w    L0c62                              
  00b68  426eff54              clr.w    -$ac(a6)                           
  00b6c  600e                  bra.s    L0b7c                              
L0b6e:
  00b6e  302eff54              move.w   -$ac(a6),d0                        
  00b72  3d800320ff28          move.w   d0,(-$d8,a6,d0.w*2)                
  00b78  526eff54              addq.w   #1,-$ac(a6)                        
L0b7c:
  00b7c  0c6e000aff54          cmpi.w   #$a,-$ac(a6)                       
  00b82  6dea                  blt.s    L0b6e                              
  00b84  426eff54              clr.w    -$ac(a6)                           
  00b88  601a                  bra.s    L0ba4                              
L0b8a:
  00b8a  3f3c000a              move.w   #$a,-(a7)                          
  00b8e  4ead0242              jsr      f2_79a8                            
  00b92  322eff54              move.w   -$ac(a6),d1                        
  00b96  5a40                  addq.w   #5,d0                              
  00b98  3d801320ff3e          move.w   d0,(-$c2,a6,d1.w*2)                
  00b9e  548f                  addq.l   #2,a7                              
  00ba0  526eff54              addq.w   #1,-$ac(a6)                        
L0ba4:
  00ba4  0c6e000aff54          cmpi.w   #$a,-$ac(a6)                       
  00baa  6dde                  blt.s    L0b8a                              
  00bac  dc6eff3e              add.w    -$c2(a6),d6                        
  00bb0  3d7c0001ff54          move.w   #1,-$ac(a6)                        
  00bb6  6048                  bra.s    L0c00                              
L0bb8:
  00bb8  3f3c0002              move.w   #2,-(a7)                           
  00bbc  4ead0242              jsr      f2_79a8                            
  00bc0  3d40ff52              move.w   d0,-$ae(a6)                        
  00bc4  5340                  subq.w   #1,d0                              
  00bc6  548f                  addq.l   #2,a7                              
  00bc8  660c                  bne.s    L0bd6                              
  00bca  302eff54              move.w   -$ac(a6),d0                        
  00bce  dc760320ff3e          add.w    (-$c2,a6,d0.w*2),d6                
  00bd4  6026                  bra.s    L0bfc                              
L0bd6:
  00bd6  302eff54              move.w   -$ac(a6),d0                        
  00bda  3206                  move.w   d6,d1                              
  00bdc  92760320ff3e          sub.w    (-$c2,a6,d0.w*2),d1                
  00be2  4a41                  tst.w    d1                                 
  00be4  6f0c                  ble.s    L0bf2                              
  00be6  302eff54              move.w   -$ac(a6),d0                        
  00bea  9c760320ff3e          sub.w    (-$c2,a6,d0.w*2),d6                
  00bf0  600a                  bra.s    L0bfc                              
L0bf2:
  00bf2  302eff54              move.w   -$ac(a6),d0                        
  00bf6  dc760320ff3e          add.w    (-$c2,a6,d0.w*2),d6                
L0bfc:
  00bfc  526eff54              addq.w   #1,-$ac(a6)                        
L0c00:
  00c00  302eff54              move.w   -$ac(a6),d0                        
  00c04  b06e0008              cmp.w    $8(a6),d0                          
  00c08  6dae                  blt.s    L0bb8                              
  00c0a  426eff54              clr.w    -$ac(a6)                           
  00c0e  6048                  bra.s    L0c58                              
L0c10:
  00c10  3f05                  move.w   d5,-(a7)                           
  00c12  4ead0242              jsr      f2_79a8                            
  00c16  5340                  subq.w   #1,d0                              
  00c18  3d40ff52              move.w   d0,-$ae(a6)                        
  00c1c  30360320ff28          move.w   (-$d8,a6,d0.w*2),d0                
  00c22  322eff54              move.w   -$ac(a6),d1                        
  00c26  3db60320ff3e1320ff14  move.w   (-$c2,a6,d0.w*2),(-$ec,a6,d1.w*2)  
  00c30  3d6eff52ff12          move.w   -$ae(a6),-$ee(a6)                  
  00c36  548f                  addq.l   #2,a7                              
  00c38  6012                  bra.s    L0c4c                              
L0c3a:
  00c3a  302eff12              move.w   -$ee(a6),d0                        
  00c3e  3db60320ff2a0320ff28  move.w   (-$d6,a6,d0.w*2),(-$d8,a6,d0.w*2)  
  00c48  526eff12              addq.w   #1,-$ee(a6)                        
L0c4c:
  00c4c  ba6eff12              cmp.w    -$ee(a6),d5                        
  00c50  6ee8                  bgt.s    L0c3a                              
  00c52  5345                  subq.w   #1,d5                              
  00c54  526eff54              addq.w   #1,-$ac(a6)                        
L0c58:
  00c58  0c6e000aff54          cmpi.w   #$a,-$ac(a6)                       
  00c5e  6db0                  blt.s    L0c10                              
  00c60  6050                  bra.s    L0cb2                              
L0c62:
  00c62  303c0276              move.w   #$276,d0                           
  00c66  c1ee000c              muls.w   $c(a6),d0                          
  00c6a  721e                  moveq    #30,d1                             
  00c6c  c3ee000e              muls.w   $e(a6),d1                          
  00c70  0680ffff7892          addi.l   #$ffff7892,d0                      
  00c76  d081                  add.l    d1,d0                              
  00c78  2040                  movea.l  d0,a0                              
  00c7a  3c10                  move.w   (a0),d6                            
  00c7c  426eff54              clr.w    -$ac(a6)                           
  00c80  6028                  bra.s    L0caa                              
L0c82:
  00c82  303c0276              move.w   #$276,d0                           
  00c86  c1ee000c              muls.w   $c(a6),d0                          
  00c8a  721e                  moveq    #30,d1                             
  00c8c  c3ee000e              muls.w   $e(a6),d1                          
  00c90  0680ffff7892          addi.l   #$ffff7892,d0                      
  00c96  d081                  add.l    d1,d0                              
  00c98  2040                  movea.l  d0,a0                              
  00c9a  302eff54              move.w   -$ac(a6),d0                        
  00c9e  3db002020320ff14      move.w   $2(a0,d0.w*2),(-$ec,a6,d0.w*2)     
  00ca6  526eff54              addq.w   #1,-$ac(a6)                        
L0caa:
  00caa  0c6e000aff54          cmpi.w   #$a,-$ac(a6)                       
  00cb0  6dd0                  blt.s    L0c82                              
L0cb2:
  00cb2  306eff0e              movea.w  -$f2(a6),a0                        
  00cb6  2f08                  move.l   a0,-(a7)                           
  00cb8  486efbaa              pea      -$456(a6)                          
  00cbc  4ead0512              jsr      f4_150e                            
  00cc0  4a2e000a              tst.b    $a(a6)                             
  00cc4  6714                  beq.s    L0cda                              
  00cc6  4a6e000c              tst.w    $c(a6)                             
  00cca  6d0e                  blt.s    L0cda                              
  00ccc  486efaaa              pea      -$556(a6)                          
  00cd0  2f3c00012712          move.l   #$12712,-(a7)                      
  00cd6  4ead0522              jsr      f4_153c                            
L0cda:
  00cda  4a2e000a              tst.b    $a(a6)                             
  00cde  660e                  bne.s    L0cee                              
  00ce0  486efaaa              pea      -$556(a6)                          
  00ce4  2f3c00022712          move.l   #$22712,-(a7)                      
  00cea  4ead0522              jsr      f4_153c                            
L0cee:
  00cee  4a2e000a              tst.b    $a(a6)                             
  00cf2  6714                  beq.s    L0d08                              
  00cf4  4a6e000c              tst.w    $c(a6)                             
  00cf8  6c0e                  bge.s    L0d08                              
  00cfa  486efaaa              pea      -$556(a6)                          
  00cfe  2f3c00032712          move.l   #$32712,-(a7)                      
  00d04  4ead0522              jsr      f4_153c                            
L0d08:
  00d08  486efaaa              pea      -$556(a6)                          
  00d0c  486efbaa              pea      -$456(a6)                          
  00d10  2f3c000007a2          move.l   STR_07a2,-(a7)                     ; "?"
  00d16  2f3c000007a4          move.l   STR_07a4,-(a7)                     ; "?"
  00d1c  a98b                  _ParamText                                  ; $a98b
  00d1e  42a7                  clr.l    -(a7)                              
  00d20  3f3c2712              move.w   #$2712,-(a7)                       
  00d24  486eff56              pea      -$aa(a6)                           
  00d28  4878ffff              pea      ($ffff).w                          
  00d2c  a97c                  _GetNewDialog                               ; $a97c
  00d2e  285f                  movea.l  (a7)+,a4                           
  00d30  2f0c                  move.l   a4,-(a7)                           
  00d32  4ead06ba              jsr      f7_161c                            
  00d36  426eff54              clr.w    -$ac(a6)                           
  00d3a  588f                  addq.l   #4,a7                              
  00d3c  6022                  bra.s    L0d60                              
L0d3e:
  00d3e  2f0c                  move.l   a4,-(a7)                           
  00d40  700f                  moveq    #15,d0                             
  00d42  d06eff54              add.w    -$ac(a6),d0                        
  00d46  3f00                  move.w   d0,-(a7)                           
  00d48  486eff52              pea      -$ae(a6)                           
  00d4c  302eff54              move.w   -$ac(a6),d0                        
  00d50  48760520fee6          pea      (-$11a,a6,d0.w*4)                  
  00d56  486efeaa              pea      -$156(a6)                          
  00d5a  a98d                  _GetDialogItem                              ; $a98d
  00d5c  526eff54              addq.w   #1,-$ac(a6)                        
L0d60:
  00d60  0c6e000aff54          cmpi.w   #$a,-$ac(a6)                       
  00d66  6dd6                  blt.s    L0d3e                              
  00d68  426eff54              clr.w    -$ac(a6)                           
  00d6c  6024                  bra.s    L0d92                              
L0d6e:
  00d6e  2f0c                  move.l   a4,-(a7)                           
  00d70  302eff54              move.w   -$ac(a6),d0                        
  00d74  d040                  add.w    d0,d0                              
  00d76  5440                  addq.w   #2,d0                              
  00d78  3f00                  move.w   d0,-(a7)                           
  00d7a  486eff52              pea      -$ae(a6)                           
  00d7e  302eff54              move.w   -$ac(a6),d0                        
  00d82  48760520feca          pea      (-$136,a6,d0.w*4)                  
  00d88  486efeaa              pea      -$156(a6)                          
  00d8c  a98d                  _GetDialogItem                              ; $a98d
  00d8e  526eff54              addq.w   #1,-$ac(a6)                        
L0d92:
  00d92  0c6e0005ff54          cmpi.w   #5,-$ac(a6)                        
  00d98  6dd4                  blt.s    L0d6e                              
  00d9a  426eff54              clr.w    -$ac(a6)                           
  00d9e  6024                  bra.s    L0dc4                              
L0da0:
  00da0  2f0c                  move.l   a4,-(a7)                           
  00da2  302eff54              move.w   -$ac(a6),d0                        
  00da6  d040                  add.w    d0,d0                              
  00da8  5640                  addq.w   #3,d0                              
  00daa  3f00                  move.w   d0,-(a7)                           
  00dac  486eff52              pea      -$ae(a6)                           
  00db0  302eff54              move.w   -$ac(a6),d0                        
  00db4  48760520feba          pea      (-$146,a6,d0.w*4)                  
  00dba  486efeaa              pea      -$156(a6)                          
  00dbe  a98d                  _GetDialogItem                              ; $a98d
  00dc0  526eff54              addq.w   #1,-$ac(a6)                        
L0dc4:
  00dc4  0c6e0004ff54          cmpi.w   #4,-$ac(a6)                        
  00dca  6dd4                  blt.s    L0da0                              
  00dcc  426eff54              clr.w    -$ac(a6)                           
  00dd0  6022                  bra.s    L0df4                              
L0dd2:
  00dd2  2f0c                  move.l   a4,-(a7)                           
  00dd4  7019                  moveq    #25,d0                             
  00dd6  d06eff54              add.w    -$ac(a6),d0                        
  00dda  3f00                  move.w   d0,-(a7)                           
  00ddc  486eff52              pea      -$ae(a6)                           
  00de0  302eff54              move.w   -$ac(a6),d0                        
  00de4  48760520fede          pea      (-$122,a6,d0.w*4)                  
  00dea  486efeaa              pea      -$156(a6)                          
  00dee  a98d                  _GetDialogItem                              ; $a98d
  00df0  526eff54              addq.w   #1,-$ac(a6)                        
L0df4:
  00df4  0c6e0002ff54          cmpi.w   #2,-$ac(a6)                        
  00dfa  6dd6                  blt.s    L0dd2                              
  00dfc  2f0c                  move.l   a4,-(a7)                           
  00dfe  3f3c000d              move.w   #$d,-(a7)                          
  00e02  486eff52              pea      -$ae(a6)                           
  00e06  486efeb6              pea      -$14a(a6)                          
  00e0a  486efeaa              pea      -$156(a6)                          
  00e0e  a98d                  _GetDialogItem                              ; $a98d
  00e10  2f0c                  move.l   a4,-(a7)                           
  00e12  3f3c000e              move.w   #$e,-(a7)                          
  00e16  486eff52              pea      -$ae(a6)                           
  00e1a  486efeb2              pea      -$14e(a6)                          
  00e1e  486efeaa              pea      -$156(a6)                          
  00e22  a98d                  _GetDialogItem                              ; $a98d
  00e24  426eff54              clr.w    -$ac(a6)                           
  00e28  6028                  bra.s    L0e52                              
L0e2a:
  00e2a  302eff54              move.w   -$ac(a6),d0                        
  00e2e  30760320ff14          movea.w  (-$ec,a6,d0.w*2),a0                
  00e34  2f08                  move.l   a0,-(a7)                           
  00e36  486efcaa              pea      -$356(a6)                          
  00e3a  4ead0512              jsr      f4_150e                            
  00e3e  302eff54              move.w   -$ac(a6),d0                        
  00e42  2f360520fee6          move.l   (-$11a,a6,d0.w*4),-(a7)            
  00e48  486efcaa              pea      -$356(a6)                          
  00e4c  a95f                  _SetCTitle                                  ; $a95f
  00e4e  526eff54              addq.w   #1,-$ac(a6)                        
L0e52:
  00e52  0c6e000aff54          cmpi.w   #$a,-$ac(a6)                       
  00e58  6dd0                  blt.s    L0e2a                              
  00e5a  3046                  movea.w  d6,a0                              
  00e5c  2f08                  move.l   a0,-(a7)                           
  00e5e  486efcaa              pea      -$356(a6)                          
  00e62  4ead0512              jsr      f4_150e                            
  00e66  2f2efeb2              move.l   -$14e(a6),-(a7)                    
  00e6a  486efcaa              pea      -$356(a6)                          
  00e6e  a98f                  _SetDialogItemText                          ; $a98f
  00e70  42a7                  clr.l    -(a7)                              
  00e72  486efcaa              pea      -$356(a6)                          
  00e76  4ead0512              jsr      f4_150e                            
  00e7a  2f2efeb6              move.l   -$14a(a6),-(a7)                    
  00e7e  486efcaa              pea      -$356(a6)                          
  00e82  a98f                  _SetDialogItemText                          ; $a98f
  00e84  302e0008              move.w   $8(a6),d0                          
  00e88  d040                  add.w    d0,d0                              
  00e8a  5240                  addq.w   #1,d0                              
  00e8c  3d40ff54              move.w   d0,-$ac(a6)                        
  00e90  600c                  bra.s    L0e9e                              
L0e92:
  00e92  2f0c                  move.l   a4,-(a7)                           
  00e94  3f2eff54              move.w   -$ac(a6),-(a7)                     
  00e98  a827                  _ShowDialogItem                             ; $a827
  00e9a  526eff54              addq.w   #1,-$ac(a6)                        
L0e9e:
  00e9e  0c6e000bff54          cmpi.w   #$b,-$ac(a6)                       
  00ea4  6dec                  blt.s    L0e92                              
  00ea6  426eff54              clr.w    -$ac(a6)                           
  00eaa  6014                  bra.s    L0ec0                              
L0eac:
  00eac  302eff54              move.w   -$ac(a6),d0                        
  00eb0  2f360520feca          move.l   (-$136,a6,d0.w*4),-(a7)            
  00eb6  3f3c00ff              move.w   #$ff,-(a7)                         
  00eba  a95d                  _HiliteControl                              ; $a95d
  00ebc  526eff54              addq.w   #1,-$ac(a6)                        
L0ec0:
  00ec0  0c6e0005ff54          cmpi.w   #5,-$ac(a6)                        
  00ec6  6de4                  blt.s    L0eac                              
  00ec8  426eff54              clr.w    -$ac(a6)                           
  00ecc  6014                  bra.s    L0ee2                              
L0ece:
  00ece  302eff54              move.w   -$ac(a6),d0                        
  00ed2  2f360520feba          move.l   (-$146,a6,d0.w*4),-(a7)            
  00ed8  3f3c00ff              move.w   #$ff,-(a7)                         
  00edc  a95d                  _HiliteControl                              ; $a95d
  00ede  526eff54              addq.w   #1,-$ac(a6)                        
L0ee2:
  00ee2  0c6e0004ff54          cmpi.w   #4,-$ac(a6)                        
  00ee8  6de4                  blt.s    L0ece                              
  00eea  426eff54              clr.w    -$ac(a6)                           
  00eee  6014                  bra.s    L0f04                              
L0ef0:
  00ef0  302eff54              move.w   -$ac(a6),d0                        
  00ef4  2f360520fede          move.l   (-$122,a6,d0.w*4),-(a7)            
  00efa  3f3c00ff              move.w   #$ff,-(a7)                         
  00efe  a95d                  _HiliteControl                              ; $a95d
  00f00  526eff54              addq.w   #1,-$ac(a6)                        
L0f04:
  00f04  0c6e0002ff54          cmpi.w   #2,-$ac(a6)                        
  00f0a  6de4                  blt.s    L0ef0                              
  00f0c  2f0c                  move.l   a4,-(a7)                           
  00f0e  a915                  _ShowWindow                                 ; $a915
L0f10:
  00f10  42a7                  clr.l    -(a7)                              
  00f12  486eff54              pea      -$ac(a6)                           
  00f16  a991                  _ModalDialog                                ; $a991
  00f18  302eff54              move.w   -$ac(a6),d0                        
  00f1c  0c40001c              cmpi.w   #$1c,d0                            
  00f20  620004b8              bhi.w    L13da                              
  00f24  43fa050e              lea      L1434(pc),a1                       
  00f28  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  00f2c  4ed1                  jmp      (a1)                               
  00f2e  1d7c0001faa7          move.b   #1,-$559(a6)                       
  00f34  600004a4              bra.w    L13da                              
  00f38  302eff54              move.w   -$ac(a6),d0                        
  00f3c  2f360520feaa          move.l   (-$156,a6,d0.w*4),-(a7)            
  00f42  486efcaa              pea      -$356(a6)                          
  00f46  a95e                  _GetCTitle                                  ; $a95e
  00f48  2f363520feca          move.l   (-$136,a6,d3.w*4),-(a7)            
  00f4e  486efcaa              pea      -$356(a6)                          
  00f52  a95f                  _SetCTitle                                  ; $a95f
  00f54  3daeff543320ff28      move.w   -$ac(a6),(-$d8,a6,d3.w*2)          
  00f5c  2f363520feca          move.l   (-$136,a6,d3.w*4),-(a7)            
  00f62  4267                  clr.w    -(a7)                              
  00f64  a95d                  _HiliteControl                              ; $a95d
  00f66  4a43                  tst.w    d3                                 
  00f68  660c                  bne.s    L0f76                              
  00f6a  302eff54              move.w   -$ac(a6),d0                        
  00f6e  d8760320fef6          add.w    (-$10a,a6,d0.w*2),d4               
  00f74  603c                  bra.s    L0fb2                              
L0f76:
  00f76  2f363520feb6          move.l   (-$14a,a6,d3.w*4),-(a7)            
  00f7c  486efdaa              pea      -$256(a6)                          
  00f80  a95e                  _GetCTitle                                  ; $a95e
  00f82  102efdab              move.b   -$255(a6),d0                       
  00f86  6b2a                  bmi.s    L0fb2                              
  00f88  0400002c              subi.b   #$2c,d0                            
  00f8c  6724                  beq.s    L0fb2                              
  00f8e  6a06                  bpl.s    L0f96                              
  00f90  5200                  addq.b   #1,d0                              
  00f92  6a08                  bpl.s    L0f9c                              
  00f94  601c                  bra.s    L0fb2                              
L0f96:
  00f96  5500                  subq.b   #2,d0                              
  00f98  6a18                  bpl.s    L0fb2                              
  00f9a  600c                  bra.s    L0fa8                              
L0f9c:
  00f9c  302eff54              move.w   -$ac(a6),d0                        
  00fa0  d8760320fef6          add.w    (-$10a,a6,d0.w*2),d4               
  00fa6  600a                  bra.s    L0fb2                              
L0fa8:
  00fa8  302eff54              move.w   -$ac(a6),d0                        
  00fac  98760320fef6          sub.w    (-$10a,a6,d0.w*2),d4               
L0fb2:
  00fb2  3044                  movea.w  d4,a0                              
  00fb4  2f08                  move.l   a0,-(a7)                           
  00fb6  486efdaa              pea      -$256(a6)                          
  00fba  4ead0512              jsr      f4_150e                            
  00fbe  2f2efeb6              move.l   -$14a(a6),-(a7)                    
  00fc2  486efdaa              pea      -$256(a6)                          
  00fc6  a98f                  _SetDialogItemText                          ; $a98f
  00fc8  2f0c                  move.l   a4,-(a7)                           
  00fca  3f2eff54              move.w   -$ac(a6),-(a7)                     
  00fce  a827                  _ShowDialogItem                             ; $a827
  00fd0  5243                  addq.w   #1,d3                              
  00fd2  426eff52              clr.w    -$ae(a6)                           
  00fd6  6014                  bra.s    L0fec                              
L0fd8:
  00fd8  302eff52              move.w   -$ae(a6),d0                        
  00fdc  2f360520fee6          move.l   (-$11a,a6,d0.w*4),-(a7)            
  00fe2  3f3c00ff              move.w   #$ff,-(a7)                         
  00fe6  a95d                  _HiliteControl                              ; $a95d
  00fe8  526eff52              addq.w   #1,-$ae(a6)                        
L0fec:
  00fec  0c6e000aff52          cmpi.w   #$a,-$ae(a6)                       
  00ff2  6de4                  blt.s    L0fd8                              
  00ff4  b66e0008              cmp.w    $8(a6),d3                          
  00ff8  6c0003e0              bge.w    L13da                              
  00ffc  426eff52              clr.w    -$ae(a6)                           
  01000  6012                  bra.s    L1014                              
L1002:
  01002  302eff52              move.w   -$ae(a6),d0                        
  01006  2f360520fede          move.l   (-$122,a6,d0.w*4),-(a7)            
  0100c  4267                  clr.w    -(a7)                              
  0100e  a95d                  _HiliteControl                              ; $a95d
  01010  526eff52              addq.w   #1,-$ae(a6)                        
L1014:
  01014  0c6e0002ff52          cmpi.w   #2,-$ae(a6)                        
  0101a  6de6                  blt.s    L1002                              
  0101c  600003bc              bra.w    L13da                              
  01020  70e7                  moveq    #-25,d0                            
  01022  d06eff54              add.w    -$ac(a6),d0                        
  01026  3d40ff10              move.w   d0,-$f0(a6)                        
  0102a  322eff54              move.w   -$ac(a6),d1                        
  0102e  2f361520fe7a          move.l   (-$186,a6,d1.w*4),-(a7)            
  01034  486efcaa              pea      -$356(a6)                          
  01038  a95e                  _GetCTitle                                  ; $a95e
  0103a  2f367520feba          move.l   (-$146,a6,d7.w*4),-(a7)            
  01040  486efcaa              pea      -$356(a6)                          
  01044  a95f                  _SetCTitle                                  ; $a95f
  01046  2f367520feba          move.l   (-$146,a6,d7.w*4),-(a7)            
  0104c  4267                  clr.w    -(a7)                              
  0104e  a95d                  _HiliteControl                              ; $a95d
  01050  b66e0008              cmp.w    $8(a6),d3                          
  01054  6c20                  bge.s    L1076                              
  01056  426eff52              clr.w    -$ae(a6)                           
  0105a  6012                  bra.s    L106e                              
L105c:
  0105c  302eff52              move.w   -$ae(a6),d0                        
  01060  2f360520fee6          move.l   (-$11a,a6,d0.w*4),-(a7)            
  01066  4267                  clr.w    -(a7)                              
  01068  a95d                  _HiliteControl                              ; $a95d
  0106a  526eff52              addq.w   #1,-$ae(a6)                        
L106e:
  0106e  0c6e000aff52          cmpi.w   #$a,-$ae(a6)                       
  01074  6de6                  blt.s    L105c                              
L1076:
  01076  426eff52              clr.w    -$ae(a6)                           
  0107a  6014                  bra.s    L1090                              
L107c:
  0107c  302eff52              move.w   -$ae(a6),d0                        
  01080  2f360520fede          move.l   (-$122,a6,d0.w*4),-(a7)            
  01086  3f3c00ff              move.w   #$ff,-(a7)                         
  0108a  a95d                  _HiliteControl                              ; $a95d
  0108c  526eff52              addq.w   #1,-$ae(a6)                        
L1090:
  01090  0c6e0002ff52          cmpi.w   #2,-$ae(a6)                        
  01096  6de4                  blt.s    L107c                              
  01098  5247                  addq.w   #1,d7                              
  0109a  6000033e              bra.w    L13da                              
  0109e  306eff54              movea.w  -$ac(a6),a0                        
  010a2  2608                  move.l   a0,d3                              
  010a4  87fc0002              divs.w   #2,d3                              
  010a8  5343                  subq.w   #1,d3                              
  010aa  3e03                  move.w   d3,d7                              
  010ac  7a00                  moveq    #0,d5                              
  010ae  3d43ff52              move.w   d3,-$ae(a6)                        
  010b2  6026                  bra.s    L10da                              
L10b4:
  010b4  302eff52              move.w   -$ae(a6),d0                        
  010b8  2f360520feca          move.l   (-$136,a6,d0.w*4),-(a7)            
  010be  2f3c000007a6          move.l   STR_07a6,-(a7)                     ; "?"
  010c4  a95f                  _SetCTitle                                  ; $a95f
  010c6  302eff52              move.w   -$ae(a6),d0                        
  010ca  2f360520feca          move.l   (-$136,a6,d0.w*4),-(a7)            
  010d0  3f3c00ff              move.w   #$ff,-(a7)                         
  010d4  a95d                  _HiliteControl                              ; $a95d
  010d6  526eff52              addq.w   #1,-$ae(a6)                        
L10da:
  010da  0c6e0005ff52          cmpi.w   #5,-$ae(a6)                        
  010e0  6dd2                  blt.s    L10b4                              
  010e2  3d43ff52              move.w   d3,-$ae(a6)                        
  010e6  6026                  bra.s    L110e                              
L10e8:
  010e8  302eff52              move.w   -$ae(a6),d0                        
  010ec  2f360520feba          move.l   (-$146,a6,d0.w*4),-(a7)            
  010f2  2f3c000007a8          move.l   STR_07a8,-(a7)                     ; "?"
  010f8  a95f                  _SetCTitle                                  ; $a95f
  010fa  302eff52              move.w   -$ae(a6),d0                        
  010fe  2f360520feba          move.l   (-$146,a6,d0.w*4),-(a7)            
  01104  3f3c00ff              move.w   #$ff,-(a7)                         
  01108  a95d                  _HiliteControl                              ; $a95d
  0110a  526eff52              addq.w   #1,-$ae(a6)                        
L110e:
  0110e  0c6e0004ff52          cmpi.w   #4,-$ae(a6)                        
  01114  6dd2                  blt.s    L10e8                              
  01116  4a43                  tst.w    d3                                 
  01118  6f0000a4              ble.w    L11be                              
  0111c  302eff28              move.w   -$d8(a6),d0                        
  01120  da760320fef6          add.w    (-$10a,a6,d0.w*2),d5               
  01126  3d7c0001ff52          move.w   #1,-$ae(a6)                        
  0112c  6050                  bra.s    L117e                              
L112e:
  0112e  302eff52              move.w   -$ae(a6),d0                        
  01132  2f360520feb6          move.l   (-$14a,a6,d0.w*4),-(a7)            
  01138  486efdaa              pea      -$256(a6)                          
  0113c  a95e                  _GetCTitle                                  ; $a95e
  0113e  102efdab              move.b   -$255(a6),d0                       
  01142  6b36                  bmi.s    L117a                              
  01144  0400002c              subi.b   #$2c,d0                            
  01148  6730                  beq.s    L117a                              
  0114a  6a06                  bpl.s    L1152                              
  0114c  5200                  addq.b   #1,d0                              
  0114e  6a08                  bpl.s    L1158                              
  01150  6028                  bra.s    L117a                              
L1152:
  01152  5500                  subq.b   #2,d0                              
  01154  6a24                  bpl.s    L117a                              
  01156  6012                  bra.s    L116a                              
L1158:
  01158  302eff52              move.w   -$ae(a6),d0                        
  0115c  30360320ff28          move.w   (-$d8,a6,d0.w*2),d0                
  01162  da760320fef6          add.w    (-$10a,a6,d0.w*2),d5               
  01168  6010                  bra.s    L117a                              
L116a:
  0116a  302eff52              move.w   -$ae(a6),d0                        
  0116e  30360320ff28          move.w   (-$d8,a6,d0.w*2),d0                
  01174  9a760320fef6          sub.w    (-$10a,a6,d0.w*2),d5               
L117a:
  0117a  526eff52              addq.w   #1,-$ae(a6)                        
L117e:
  0117e  b66eff52              cmp.w    -$ae(a6),d3                        
  01182  6eaa                  bgt.s    L112e                              
  01184  3805                  move.w   d5,d4                              
  01186  3044                  movea.w  d4,a0                              
  01188  2f08                  move.l   a0,-(a7)                           
  0118a  486efdaa              pea      -$256(a6)                          
  0118e  4ead0512              jsr      f4_150e                            
  01192  2f2efeb6              move.l   -$14a(a6),-(a7)                    
  01196  486efdaa              pea      -$256(a6)                          
  0119a  a98f                  _SetDialogItemText                          ; $a98f
  0119c  3d43ff52              move.w   d3,-$ae(a6)                        
  011a0  6012                  bra.s    L11b4                              
L11a2:
  011a2  2f0c                  move.l   a4,-(a7)                           
  011a4  302eff52              move.w   -$ae(a6),d0                        
  011a8  3f360320ff28          move.w   (-$d8,a6,d0.w*2),-(a7)             
  011ae  a828                  _LayerDispatch                              ; $a828
  011b0  526eff52              addq.w   #1,-$ae(a6)                        
L11b4:
  011b4  0c6e0005ff52          cmpi.w   #5,-$ae(a6)                        
  011ba  6de6                  blt.s    L11a2                              
  011bc  6018                  bra.s    L11d6                              
L11be:
  011be  7800                  moveq    #0,d4                              
  011c0  3044                  movea.w  d4,a0                              
  011c2  2f08                  move.l   a0,-(a7)                           
  011c4  486efdaa              pea      -$256(a6)                          
  011c8  4ead0512              jsr      f4_150e                            
  011cc  2f2efeb6              move.l   -$14a(a6),-(a7)                    
  011d0  486efdaa              pea      -$256(a6)                          
  011d4  a98f                  _SetDialogItemText                          ; $a98f
L11d6:
  011d6  3d43ff52              move.w   d3,-$ae(a6)                        
  011da  6012                  bra.s    L11ee                              
L11dc:
  011dc  2f0c                  move.l   a4,-(a7)                           
  011de  302eff52              move.w   -$ae(a6),d0                        
  011e2  3f360320ff28          move.w   (-$d8,a6,d0.w*2),-(a7)             
  011e8  a828                  _LayerDispatch                              ; $a828
  011ea  526eff52              addq.w   #1,-$ae(a6)                        
L11ee:
  011ee  302eff52              move.w   -$ae(a6),d0                        
  011f2  b06e0008              cmp.w    $8(a6),d0                          
  011f6  6de4                  blt.s    L11dc                              
  011f8  426eff52              clr.w    -$ae(a6)                           
  011fc  6012                  bra.s    L1210                              
L11fe:
  011fe  302eff52              move.w   -$ae(a6),d0                        
  01202  2f360520fee6          move.l   (-$11a,a6,d0.w*4),-(a7)            
  01208  4267                  clr.w    -(a7)                              
  0120a  a95d                  _HiliteControl                              ; $a95d
  0120c  526eff52              addq.w   #1,-$ae(a6)                        
L1210:
  01210  0c6e000aff52          cmpi.w   #$a,-$ae(a6)                       
  01216  6de6                  blt.s    L11fe                              
  01218  426eff52              clr.w    -$ae(a6)                           
  0121c  6014                  bra.s    L1232                              
L121e:
  0121e  302eff52              move.w   -$ae(a6),d0                        
  01222  2f360520fede          move.l   (-$122,a6,d0.w*4),-(a7)            
  01228  3f3c00ff              move.w   #$ff,-(a7)                         
  0122c  a95d                  _HiliteControl                              ; $a95d
  0122e  526eff52              addq.w   #1,-$ae(a6)                        
L1232:
  01232  0c6e0002ff52          cmpi.w   #2,-$ae(a6)                        
  01238  6de4                  blt.s    L121e                              
  0123a  6000019e              bra.w    L13da                              
  0123e  306eff54              movea.w  -$ac(a6),a0                        
  01242  2e08                  move.l   a0,d7                              
  01244  8ffc0002              divs.w   #2,d7                              
  01248  5347                  subq.w   #1,d7                              
  0124a  7601                  moveq    #1,d3                              
  0124c  d647                  add.w    d7,d3                              
  0124e  7a00                  moveq    #0,d5                              
  01250  3d43ff52              move.w   d3,-$ae(a6)                        
  01254  6026                  bra.s    L127c                              
L1256:
  01256  302eff52              move.w   -$ae(a6),d0                        
  0125a  2f360520feca          move.l   (-$136,a6,d0.w*4),-(a7)            
  01260  2f3c000007aa          move.l   STR_07aa,-(a7)                     ; "?"
  01266  a95f                  _SetCTitle                                  ; $a95f
  01268  302eff52              move.w   -$ae(a6),d0                        
  0126c  2f360520feca          move.l   (-$136,a6,d0.w*4),-(a7)            
  01272  3f3c00ff              move.w   #$ff,-(a7)                         
  01276  a95d                  _HiliteControl                              ; $a95d
  01278  526eff52              addq.w   #1,-$ae(a6)                        
L127c:
  0127c  0c6e0005ff52          cmpi.w   #5,-$ae(a6)                        
  01282  6dd2                  blt.s    L1256                              
  01284  3d47ff52              move.w   d7,-$ae(a6)                        
  01288  6026                  bra.s    L12b0                              
L128a:
  0128a  302eff52              move.w   -$ae(a6),d0                        
  0128e  2f360520feba          move.l   (-$146,a6,d0.w*4),-(a7)            
  01294  2f3c000007ac          move.l   STR_07ac,-(a7)                     ; "?"
  0129a  a95f                  _SetCTitle                                  ; $a95f
  0129c  302eff52              move.w   -$ae(a6),d0                        
  012a0  2f360520feba          move.l   (-$146,a6,d0.w*4),-(a7)            
  012a6  3f3c00ff              move.w   #$ff,-(a7)                         
  012aa  a95d                  _HiliteControl                              ; $a95d
  012ac  526eff52              addq.w   #1,-$ae(a6)                        
L12b0:
  012b0  0c6e0004ff52          cmpi.w   #4,-$ae(a6)                        
  012b6  6dd2                  blt.s    L128a                              
  012b8  4a43                  tst.w    d3                                 
  012ba  6f0000a2              ble.w    L135e                              
  012be  302eff28              move.w   -$d8(a6),d0                        
  012c2  da760320fef6          add.w    (-$10a,a6,d0.w*2),d5               
  012c8  426eff52              clr.w    -$ae(a6)                           
  012cc  6050                  bra.s    L131e                              
L12ce:
  012ce  302eff52              move.w   -$ae(a6),d0                        
  012d2  2f360520feba          move.l   (-$146,a6,d0.w*4),-(a7)            
  012d8  486efdaa              pea      -$256(a6)                          
  012dc  a95e                  _GetCTitle                                  ; $a95e
  012de  102efdab              move.b   -$255(a6),d0                       
  012e2  6b36                  bmi.s    L131a                              
  012e4  0400002c              subi.b   #$2c,d0                            
  012e8  6730                  beq.s    L131a                              
  012ea  6a06                  bpl.s    L12f2                              
  012ec  5200                  addq.b   #1,d0                              
  012ee  6a08                  bpl.s    L12f8                              
  012f0  6028                  bra.s    L131a                              
L12f2:
  012f2  5500                  subq.b   #2,d0                              
  012f4  6a24                  bpl.s    L131a                              
  012f6  6012                  bra.s    L130a                              
L12f8:
  012f8  302eff52              move.w   -$ae(a6),d0                        
  012fc  30360320ff2a          move.w   (-$d6,a6,d0.w*2),d0                
  01302  da760320fef6          add.w    (-$10a,a6,d0.w*2),d5               
  01308  6010                  bra.s    L131a                              
L130a:
  0130a  302eff52              move.w   -$ae(a6),d0                        
  0130e  30360320ff2a          move.w   (-$d6,a6,d0.w*2),d0                
  01314  9a760320fef6          sub.w    (-$10a,a6,d0.w*2),d5               
L131a:
  0131a  526eff52              addq.w   #1,-$ae(a6)                        
L131e:
  0131e  be6eff52              cmp.w    -$ae(a6),d7                        
  01322  6eaa                  bgt.s    L12ce                              
  01324  3805                  move.w   d5,d4                              
  01326  3044                  movea.w  d4,a0                              
  01328  2f08                  move.l   a0,-(a7)                           
  0132a  486efdaa              pea      -$256(a6)                          
  0132e  4ead0512              jsr      f4_150e                            
  01332  2f2efeb6              move.l   -$14a(a6),-(a7)                    
  01336  486efdaa              pea      -$256(a6)                          
  0133a  a98f                  _SetDialogItemText                          ; $a98f
  0133c  3d43ff52              move.w   d3,-$ae(a6)                        
  01340  6012                  bra.s    L1354                              
L1342:
  01342  2f0c                  move.l   a4,-(a7)                           
  01344  302eff52              move.w   -$ae(a6),d0                        
  01348  3f360320ff28          move.w   (-$d8,a6,d0.w*2),-(a7)             
  0134e  a828                  _LayerDispatch                              ; $a828
  01350  526eff52              addq.w   #1,-$ae(a6)                        
L1354:
  01354  0c6e0005ff52          cmpi.w   #5,-$ae(a6)                        
  0135a  6de6                  blt.s    L1342                              
  0135c  6018                  bra.s    L1376                              
L135e:
  0135e  7800                  moveq    #0,d4                              
  01360  3044                  movea.w  d4,a0                              
  01362  2f08                  move.l   a0,-(a7)                           
  01364  486efdaa              pea      -$256(a6)                          
  01368  4ead0512              jsr      f4_150e                            
  0136c  2f2efeb6              move.l   -$14a(a6),-(a7)                    
  01370  486efdaa              pea      -$256(a6)                          
  01374  a98f                  _SetDialogItemText                          ; $a98f
L1376:
  01376  3d43ff52              move.w   d3,-$ae(a6)                        
  0137a  6012                  bra.s    L138e                              
L137c:
  0137c  2f0c                  move.l   a4,-(a7)                           
  0137e  302eff52              move.w   -$ae(a6),d0                        
  01382  3f360320ff28          move.w   (-$d8,a6,d0.w*2),-(a7)             
  01388  a828                  _LayerDispatch                              ; $a828
  0138a  526eff52              addq.w   #1,-$ae(a6)                        
L138e:
  0138e  302eff52              move.w   -$ae(a6),d0                        
  01392  b06e0008              cmp.w    $8(a6),d0                          
  01396  6de4                  blt.s    L137c                              
  01398  426eff52              clr.w    -$ae(a6)                           
  0139c  6014                  bra.s    L13b2                              
L139e:
  0139e  302eff52              move.w   -$ae(a6),d0                        
  013a2  2f360520fee6          move.l   (-$11a,a6,d0.w*4),-(a7)            
  013a8  3f3c00ff              move.w   #$ff,-(a7)                         
  013ac  a95d                  _HiliteControl                              ; $a95d
  013ae  526eff52              addq.w   #1,-$ae(a6)                        
L13b2:
  013b2  0c6e000aff52          cmpi.w   #$a,-$ae(a6)                       
  013b8  6de4                  blt.s    L139e                              
  013ba  426eff52              clr.w    -$ae(a6)                           
  013be  6012                  bra.s    L13d2                              
L13c0:
  013c0  302eff52              move.w   -$ae(a6),d0                        
  013c4  2f360520fede          move.l   (-$122,a6,d0.w*4),-(a7)            
  013ca  4267                  clr.w    -(a7)                              
  013cc  a95d                  _HiliteControl                              ; $a95d
  013ce  526eff52              addq.w   #1,-$ae(a6)                        
L13d2:
  013d2  0c6e0002ff52          cmpi.w   #2,-$ae(a6)                        
  013d8  6de6                  blt.s    L13c0                              
L13da:
  013da  536eff0e              subq.w   #1,-$f2(a6)                        
  013de  306eff0e              movea.w  -$f2(a6),a0                        
  013e2  2f08                  move.l   a0,-(a7)                           
  013e4  486efbaa              pea      -$456(a6)                          
  013e8  4ead0512              jsr      f4_150e                            
  013ec  486efaaa              pea      -$556(a6)                          
  013f0  486efbaa              pea      -$456(a6)                          
  013f4  2f3c000007ae          move.l   STR_07ae,-(a7)                     ; "?"
  013fa  2f3c000007b0          move.l   STR_07b0,-(a7)                     ; "?"
  01400  a98b                  _ParamText                                  ; $a98b
  01402  2f0c                  move.l   a4,-(a7)                           
  01404  a981                  _DrawDialog                                 ; $a981
  01406  bc44                  cmp.w    d4,d6                              
  01408  6606                  bne.s    L1410                              
  0140a  b66e0008              cmp.w    $8(a6),d3                          
  0140e  6c0e                  bge.s    L141e                              
L1410:
  01410  4a6eff0e              tst.w    -$f2(a6)                           
  01414  6f08                  ble.s    L141e                              
  01416  4a2efaa7              tst.b    -$559(a6)                          
  0141a  6700faf4              beq.w    L0f10                              
L141e:
  0141e  2f0c                  move.l   a4,-(a7)                           
  01420  a983                  _DisposeDialog                              ; $a983
  01422  bc44                  cmp.w    d4,d6                              
  01424  6604                  bne.s    L142a                              
  01426  7001                  moveq    #1,d0                              
  01428  6002                  bra.s    L142c                              
L142a:
  0142a  7000                  moveq    #0,d0                              
L142c:
  0142c  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  01430  4e5e                  unlk     a6                                 
  01432  4e75                  rts                                         
  01434  ffa6                  dc.w     $ffa6                              
  01436  ffa6                  dc.w     $ffa6                              
  01438  fc6a                  dc.w     $fc6a                              
  0143a  fe0a                  dc.w     $fe0a                              
  0143c  fc6a                  dc.w     $fc6a                              
  0143e  fe0a                  dc.w     $fe0a                              
  01440  fc6a                  dc.w     $fc6a                              
  01442  fe0a                  dc.w     $fe0a                              
  01444  fc6a                  dc.w     $fc6a                              
  01446  fe0a                  dc.w     $fe0a                              
  01448  fc6a                  dc.w     $fc6a                              
  0144a  ffa6                  dc.w     $ffa6                              
  0144c  ffa6                  dc.w     $ffa6                              
  0144e  ffa6                  dc.w     $ffa6                              
  01450  ffa6                  dc.w     $ffa6                              
  01452  fb04                  dc.w     $fb04                              
  01454  fb04                  dc.w     $fb04                              
  01456  fb04                  dc.w     $fb04                              
  01458  fb04                  dc.w     $fb04                              
  0145a  fb04                  dc.w     $fb04                              
  0145c  fb04                  dc.w     $fb04                              
  0145e  fb04                  dc.w     $fb04                              
  01460  fb04                  dc.w     $fb04                              
  01462  fb04                  dc.w     $fb04                              
  01464  fb04                  dc.w     $fb04                              
  01466  fbec                  dc.w     $fbec                              
  01468  fbec                  dc.w     $fbec                              
  0146a  ffa6                  dc.w     $ffa6                              
  0146c  fafa                  dc.w     $fafa                              

;----------------------------------------------------------------------
; f5_146e   [jump table #162]
;----------------------------------------------------------------------
f5_146e:
  0146e  4e56fff0              link     a6,#-16                            
  01472  2f0c                  move.l   a4,-(a7)                           
  01474  286e0008              movea.l  $8(a6),a4                          
  01478  2079ffff9382          movea.l  g_6c7e,a0                          
  0147e  2d680010fff4          move.l   $10(a0),-$c(a6)                    
  01484  2d680014fff8          move.l   $14(a0),-$8(a6)                    
  0148a  4a39ffff8de8          tst.b    g_7218                             
  01490  660000a2              bne.w    L1534                              
  01494  42a7                  clr.l    -(a7)                              
  01496  a924                  _FrontWindow                                ; $a924
  01498  2d5ffff0              move.l   (a7)+,-$10(a6)                     
  0149c  2f0c                  move.l   a4,-(a7)                           
  0149e  a922                  _BeginUpdate                                ; $a922
  014a0  b9f9ffff8fb6          cmpa.l   g_704a,a4                          
  014a6  6614                  bne.s    L14bc                              
  014a8  4a79ffff836c          tst.w    g_7c94                             
  014ae  670c                  beq.s    L14bc                              
  014b0  4a79ffff8894          tst.w    g_776c                             
  014b6  6f04                  ble.s    L14bc                              
  014b8  4ead0142              jsr      f2_4440                            
L14bc:
  014bc  b9f9ffff8fd2          cmpa.l   g_702e,a4                          
  014c2  660c                  bne.s    L14d0                              
  014c4  4a79ffff8370          tst.w    g_7c90                             
  014ca  6f04                  ble.s    L14d0                              
  014cc  4ead01d2              jsr      f2_6b9e                            
L14d0:
  014d0  b9f9ffff9382          cmpa.l   g_6c7e,a4                          
  014d6  6634                  bne.s    L150c                              
  014d8  4a79ffff836c          tst.w    g_7c94                             
  014de  672c                  beq.s    L150c                              
  014e0  4a79ffff8894          tst.w    g_776c                             
  014e6  6f24                  ble.s    L150c                              
  014e8  2079ffff99f8          movea.l  g_6608,a0                          
  014ee  20680002              movea.l  $2(a0),a0                          
  014f2  2f10                  move.l   (a0),-(a7)                         
  014f4  2079ffff9382          movea.l  g_6c7e,a0                          
  014fa  48680002              pea      $2(a0)                             
  014fe  486efff4              pea      -$c(a6)                            
  01502  486efff4              pea      -$c(a6)                            
  01506  4267                  clr.w    -(a7)                              
  01508  42a7                  clr.l    -(a7)                              
  0150a  a8ec                  _CopyBits                                   ; $a8ec
L150c:
  0150c  b9f9ffff8fd6          cmpa.l   g_702a,a4                          
  01512  6604                  bne.s    L1518                              
  01514  4ead075a              jsr      f7_31f0                            
L1518:
  01518  b9f9ffff8fc2          cmpa.l   g_703e,a4                          
  0151e  6604                  bne.s    L1524                              
  01520  4ead074a              jsr      f7_2f40                            
L1524:
  01524  b9f9ffff8fc6          cmpa.l   g_703a,a4                          
  0152a  6604                  bne.s    L1530                              
  0152c  4ead073a              jsr      f7_2bb6                            
L1530:
  01530  2f0c                  move.l   a4,-(a7)                           
  01532  a923                  _EndUpdate                                  ; $a923
L1534:
  01534  285f                  movea.l  (a7)+,a4                           
  01536  4e5e                  unlk     a6                                 
  01538  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_153a   [jump table #163]
;----------------------------------------------------------------------
f5_153a:
  0153a  4e56ff8a              link     a6,#-118                           
  0153e  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  01542  3e2e000a              move.w   $a(a6),d7                          
  01546  7c7d                  moveq    #125,d6                            
  01548  0c6e04e20008          cmpi.w   #$4e2,$8(a6)                       
  0154e  6604                  bne.s    L1554                              
  01550  7023                  moveq    #35,d0                             
  01552  6002                  bra.s    L1556                              
L1554:
  01554  701b                  moveq    #27,d0                             
L1556:
  01556  3600                  move.w   d0,d3                              
  01558  42a7                  clr.l    -(a7)                              
  0155a  3f2e0008              move.w   $8(a6),-(a7)                       
  0155e  a9bc                  _GetPicture                                 ; $a9bc
  01560  285f                  movea.l  (a7)+,a4                           
  01562  3f06                  move.w   d6,-(a7)                           
  01564  3f07                  move.w   d7,-(a7)                           
  01566  486eff8a              pea      -$76(a6)                           
  0156a  486eff90              pea      -$70(a6)                           
  0156e  486eff92              pea      -$6e(a6)                           
  01572  486eff8c              pea      -$74(a6)                           
  01576  486eff8e              pea      -$72(a6)                           
  0157a  486eff94              pea      -$6c(a6)                           
  0157e  486eff96              pea      -$6a(a6)                           
  01582  4ead060a              jsr      f6_0b22                            
  01586  486effdc              pea      -$24(a6)                           
  0158a  3f2eff96              move.w   -$6a(a6),-(a7)                     
  0158e  3f2eff92              move.w   -$6e(a6),-(a7)                     
  01592  3f2eff94              move.w   -$6c(a6),-(a7)                     
  01596  3f2eff90              move.w   -$70(a6),-(a7)                     
  0159a  a8a7                  _SetRect                                    ; $a8a7
  0159c  3eaeff8c              move.w   -$74(a6),(a7)                      
  015a0  3f2eff8e              move.w   -$72(a6),-(a7)                     
  015a4  3f07                  move.w   d7,-(a7)                           
  015a6  3f2e000e              move.w   $e(a6),-(a7)                       
  015aa  3f2e000c              move.w   $c(a6),-(a7)                       
  015ae  486eff9a              pea      -$66(a6)                           
  015b2  4ead0612              jsr      f6_0c0c                            
  015b6  302eff9a              move.w   -$66(a6),d0                        
  015ba  c1ee000c              muls.w   $c(a6),d0                          
  015be  3d40ff9a              move.w   d0,-$66(a6)                        
  015c2  486effdc              pea      -$24(a6)                           
  015c6  3f00                  move.w   d0,-(a7)                           
  015c8  4267                  clr.w    -(a7)                              
  015ca  a8a8                  _OffsetRect                                 ; $a8a8
  015cc  4a79ffff8e08          tst.w    g_71f8                             
  015d2  4fef002c              lea      $2c(a7),a7                         
  015d6  6f58                  ble.s    L1630                              
  015d8  7a01                  moveq    #1,d5                              
  015da  604c                  bra.s    L1628                              
L15dc:
  015dc  3045                  movea.w  d5,a0                              
  015de  2008                  move.l   a0,d0                              
  015e0  81fc0002              divs.w   #2,d0                              
  015e4  4840                  swap     d0                                 
  015e6  4a40                  tst.w    d0                                 
  015e8  660c                  bne.s    L15f6                              
  015ea  3045                  movea.w  d5,a0                              
  015ec  2008                  move.l   a0,d0                              
  015ee  81fc0002              divs.w   #2,d0                              
  015f2  d040                  add.w    d0,d0                              
  015f4  6018                  bra.s    L160e                              
L15f6:
  015f6  3045                  movea.w  d5,a0                              
  015f8  2008                  move.l   a0,d0                              
  015fa  81fc0002              divs.w   #2,d0                              
  015fe  3045                  movea.w  d5,a0                              
  01600  2208                  move.l   a0,d1                              
  01602  83fc0002              divs.w   #2,d1                              
  01606  5240                  addq.w   #1,d0                              
  01608  d041                  add.w    d1,d0                              
  0160a  c1fcffff              muls.w   #$ffff,d0                          
L160e:
  0160e  3800                  move.w   d0,d4                              
  01610  486effdc              pea      -$24(a6)                           
  01614  302eff94              move.w   -$6c(a6),d0                        
  01618  906eff96              sub.w    -$6a(a6),d0                        
  0161c  5240                  addq.w   #1,d0                              
  0161e  c1c4                  muls.w   d4,d0                              
  01620  3f00                  move.w   d0,-(a7)                           
  01622  4267                  clr.w    -(a7)                              
  01624  a8a8                  _OffsetRect                                 ; $a8a8
  01626  5245                  addq.w   #1,d5                              
L1628:
  01628  ba79ffff8e08          cmp.w    g_71f8,d5                          
  0162e  6fac                  ble.s    L15dc                              
L1630:
  01630  2f0c                  move.l   a4,-(a7)                           
  01632  486effdc              pea      -$24(a6)                           
  01636  a8f6                  _DrawPicture                                ; $a8f6
  01638  7005                  moveq    #5,d0                              
  0163a  c1c7                  muls.w   d7,d0                              
  0163c  721e                  moveq    #30,d1                             
  0163e  9240                  sub.w    d0,d1                              
  01640  3d41ff8a              move.w   d1,-$76(a6)                        
  01644  701c                  moveq    #28,d0                             
  01646  d06effdc              add.w    -$24(a6),d0                        
  0164a  3d40ff92              move.w   d0,-$6e(a6)                        
  0164e  7417                  moveq    #23,d2                             
  01650  d46effde              add.w    -$22(a6),d2                        
  01654  3d42ff96              move.w   d2,-$6a(a6)                        
  01658  486effac              pea      -$54(a6)                           
  0165c  3f02                  move.w   d2,-(a7)                           
  0165e  3f00                  move.w   d0,-(a7)                           
  01660  d441                  add.w    d1,d2                              
  01662  3f02                  move.w   d2,-(a7)                           
  01664  d041                  add.w    d1,d0                              
  01666  3f00                  move.w   d0,-(a7)                           
  01668  a8a7                  _SetRect                                    ; $a8a7
  0166a  2d6effacffb4          move.l   -$54(a6),-$4c(a6)                  
  01670  2d6effb0ffb8          move.l   -$50(a6),-$48(a6)                  
  01676  486effb4              pea      -$4c(a6)                           
  0167a  302eff8a              move.w   -$76(a6),d0                        
  0167e  d043                  add.w    d3,d0                              
  01680  3f00                  move.w   d0,-(a7)                           
  01682  4267                  clr.w    -(a7)                              
  01684  a8a8                  _OffsetRect                                 ; $a8a8
  01686  2d6effacffbc          move.l   -$54(a6),-$44(a6)                  
  0168c  2d6effb0ffc0          move.l   -$50(a6),-$40(a6)                  
  01692  486effbc              pea      -$44(a6)                           
  01696  4267                  clr.w    -(a7)                              
  01698  700b                  moveq    #11,d0                             
  0169a  d06eff8a              add.w    -$76(a6),d0                        
  0169e  3f00                  move.w   d0,-(a7)                           
  016a0  a8a8                  _OffsetRect                                 ; $a8a8
  016a2  2d6effbcffc4          move.l   -$44(a6),-$3c(a6)                  
  016a8  2d6effc0ffc8          move.l   -$40(a6),-$38(a6)                  
  016ae  486effc4              pea      -$3c(a6)                           
  016b2  302eff8a              move.w   -$76(a6),d0                        
  016b6  d043                  add.w    d3,d0                              
  016b8  3f00                  move.w   d0,-(a7)                           
  016ba  4267                  clr.w    -(a7)                              
  016bc  a8a8                  _OffsetRect                                 ; $a8a8
  016be  2d6effbcffcc          move.l   -$44(a6),-$34(a6)                  
  016c4  2d6effc0ffd0          move.l   -$40(a6),-$30(a6)                  
  016ca  486effcc              pea      -$34(a6)                           
  016ce  4267                  clr.w    -(a7)                              
  016d0  700b                  moveq    #11,d0                             
  016d2  d06eff8a              add.w    -$76(a6),d0                        
  016d6  3f00                  move.w   d0,-(a7)                           
  016d8  a8a8                  _OffsetRect                                 ; $a8a8
  016da  2d6effccffd4          move.l   -$34(a6),-$2c(a6)                  
  016e0  2d6effd0ffd8          move.l   -$30(a6),-$28(a6)                  
  016e6  486effd4              pea      -$2c(a6)                           
  016ea  302eff8a              move.w   -$76(a6),d0                        
  016ee  d043                  add.w    d3,d0                              
  016f0  3f00                  move.w   d0,-(a7)                           
  016f2  4267                  clr.w    -(a7)                              
  016f4  a8a8                  _OffsetRect                                 ; $a8a8
  016f6  0c470001              cmpi.w   #1,d7                              
  016fa  6c38                  bge.s    L1734                              
  016fc  4a6e000c              tst.w    $c(a6)                             
  01700  6632                  bne.s    L1734                              
  01702  7a01                  moveq    #1,d5                              
  01704  6028                  bra.s    L172e                              
L1706:
  01706  5279ffff8e08          addq.w   #1,g_71f8                          
  0170c  3039ffff8e08          move.w   g_71f8,d0                          
  01712  41f007b0ffff9622      lea      (-$69de,za0,d0.w*8),a0             
  0171a  20f656a4              move.l   -$5c(a6,d5.w*8),(a0)+              
  0171e  20f656a8              move.l   -$58(a6,d5.w*8),(a0)+              
  01722  31ae001003b0ffff97aa  move.w   $10(a6),(-$6856,za0,d0.w*2)        
  0172c  5245                  addq.w   #1,d5                              
L172e:
  0172e  0c450007              cmpi.w   #7,d5                              
  01732  6dd2                  blt.s    L1706                              
L1734:
  01734  2f0c                  move.l   a4,-(a7)                           
  01736  a9a3                  _ReleaseResource                            ; $a9a3
  01738  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  0173c  4e5e                  unlk     a6                                 
  0173e  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_1740   [jump table #164]
;----------------------------------------------------------------------
f5_1740:
  01740  4e56fe90              link     a6,#-368                           
  01744  48e70118              movem.l  d7/a3/a4,-(a7)                     
  01748  426efe92              clr.w    -$16e(a6)                          
  0174c  426efe90              clr.w    -$170(a6)                          
  01750  426efe94              clr.w    -$16c(a6)                          
  01754  486efece              pea      -$132(a6)                          
  01758  a874                  _GetPort                                    ; $a874
  0175a  42a7                  clr.l    -(a7)                              
  0175c  3f3c0fa0              move.w   #$fa0,-(a7)                        
  01760  486eff56              pea      -$aa(a6)                           
  01764  4878ffff              pea      ($ffff).w                          
  01768  a97c                  _GetNewDialog                               ; $a97c
  0176a  285f                  movea.l  (a7)+,a4                           
  0176c  42a7                  clr.l    -(a7)                              
  0176e  3f3c008d              move.w   #$8d,-(a7)                         
  01772  a9bc                  _GetPicture                                 ; $a9bc
  01774  265f                  movea.l  (a7)+,a3                           
  01776  204b                  movea.l  a3,a0                              
  01778  a029                  _HLock                                      ; $a029
  0177a  7e01                  moveq    #1,d7                              
  0177c  6018                  bra.s    L1796                              
L177e:
  0177e  2f0c                  move.l   a4,-(a7)                           
  01780  3f07                  move.w   d7,-(a7)                           
  01782  486eff52              pea      -$ae(a6)                           
  01786  48767520fea2          pea      (-$15e,a6,d7.w*4)                  
  0178c  48767720fed2          pea      (-$12e,a6,d7.w*8)                  
  01792  a98d                  _GetDialogItem                              ; $a98d
  01794  5247                  addq.w   #1,d7                              
L1796:
  01796  0c470008              cmpi.w   #8,d7                              
  0179a  6de2                  blt.s    L177e                              
  0179c  7e01                  moveq    #1,d7                              
  0179e  6016                  bra.s    L17b6                              
L17a0:
  017a0  2db075b0ffff95c27520  move.l   (-$6a3e,za0,d7.w*4),(-$d6,a6,d7.w*4)
  017ac  20767520ff2a          movea.l  (-$d6,a6,d7.w*4),a0                
  017b2  a029                  _HLock                                      ; $a029
  017b4  5247                  addq.w   #1,d7                              
L17b6:
  017b6  0c470007              cmpi.w   #7,d7                              
  017ba  6de4                  blt.s    L17a0                              
  017bc  42a7                  clr.l    -(a7)                              
  017be  3f3c008e              move.w   #$8e,-(a7)                         
  017c2  a9bc                  _GetPicture                                 ; $a9bc
  017c4  2d5fff46              move.l   (a7)+,-$ba(a6)                     
  017c8  206eff46              movea.l  -$ba(a6),a0                        
  017cc  a029                  _HLock                                      ; $a029
  017ce  2d6c0010ff22          move.l   $10(a4),-$de(a6)                   
  017d4  2d6c0014ff26          move.l   $14(a4),-$da(a6)                   
  017da  486eff22              pea      -$de(a6)                           
  017de  2f3cfff6fff6          move.l   #$fff6fff6,-(a7)                   
  017e4  a8a9                  _InsetRect                                  ; $a8a9
  017e6  2f39ffff9a0c          move.l   g_65f4,-(a7)                       
  017ec  a873                  _SetPort                                    ; $a873
  017ee  486efe90              pea      -$170(a6)                          
  017f2  aa14                  _RGBForeColor                               ; $aa14
  017f4  486eff22              pea      -$de(a6)                           
  017f8  a8a3                  _EraseRect                                  ; $a8a3
  017fa  2f0b                  move.l   a3,-(a7)                           
  017fc  486eff22              pea      -$de(a6)                           
  01800  a8f6                  _DrawPicture                                ; $a8f6
  01802  2d6c0010ff22          move.l   $10(a4),-$de(a6)                   
  01808  2d6c0014ff26          move.l   $14(a4),-$da(a6)                   
  0180e  7e01                  moveq    #1,d7                              
  01810  6010                  bra.s    L1822                              
L1812:
  01812  2f367520ff2a          move.l   (-$d6,a6,d7.w*4),-(a7)             
  01818  48767720fed2          pea      (-$12e,a6,d7.w*8)                  
  0181e  a8f6                  _DrawPicture                                ; $a8f6
  01820  5247                  addq.w   #1,d7                              
L1822:
  01822  0c470008              cmpi.w   #8,d7                              
  01826  6dea                  blt.s    L1812                              
  01828  204b                  movea.l  a3,a0                              
  0182a  a02a                  _HUnlock                                    ; $a02a
  0182c  2f0b                  move.l   a3,-(a7)                           
  0182e  a9a3                  _ReleaseResource                            ; $a9a3
  01830  206eff46              movea.l  -$ba(a6),a0                        
  01834  a02a                  _HUnlock                                    ; $a02a
  01836  7e01                  moveq    #1,d7                              
  01838  600a                  bra.s    L1844                              
L183a:
  0183a  20767520ff2a          movea.l  (-$d6,a6,d7.w*4),a0                
  01840  a02a                  _HUnlock                                    ; $a02a
  01842  5247                  addq.w   #1,d7                              
L1844:
  01844  0c470007              cmpi.w   #7,d7                              
  01848  6df0                  blt.s    L183a                              
  0184a  2f0c                  move.l   a4,-(a7)                           
  0184c  a983                  _DisposeDialog                              ; $a983
  0184e  2f2efece              move.l   -$132(a6),-(a7)                    
  01852  a873                  _SetPort                                    ; $a873
  01854  4cdf1880              movem.l  (a7)+,d7/a3/a4                     
  01858  4e5e                  unlk     a6                                 
  0185a  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_185c   [jump table #166]
;----------------------------------------------------------------------
f5_185c:
  0185c  4e56fff8              link     a6,#-8                             
  01860  2f0c                  move.l   a4,-(a7)                           
  01862  206e0010              movea.l  $10(a6),a0                         
  01866  2d680010fff8          move.l   $10(a0),-$8(a6)                    
  0186c  2d680014fffc          move.l   $14(a0),-$4(a6)                    
  01872  226e000c              movea.l  $c(a6),a1                          
  01876  28690002              movea.l  $2(a1),a4                          
  0187a  4ead0192              jsr      f2_648e                            
  0187e  206e000c              movea.l  $c(a6),a0                          
  01882  0c500006              cmpi.w   #6,(a0)                            
  01886  663c                  bne.s    L18c4                              
  01888  b9ee0010              cmpa.l   $10(a6),a4                         
  0188c  6636                  bne.s    L18c4                              
  0188e  206e0008              movea.l  $8(a6),a0                          
  01892  30bc0014              move.w   #$14,(a0)                          
  01896  2f0c                  move.l   a4,-(a7)                           
  01898  a922                  _BeginUpdate                                ; $a922
  0189a  2079ffff9a0c          movea.l  g_65f4,a0                          
  018a0  20680002              movea.l  $2(a0),a0                          
  018a4  2f10                  move.l   (a0),-(a7)                         
  018a6  486c0002              pea      $2(a4)                             
  018aa  486efff8              pea      -$8(a6)                            
  018ae  486efff8              pea      -$8(a6)                            
  018b2  4267                  clr.w    -(a7)                              
  018b4  42a7                  clr.l    -(a7)                              
  018b6  a8ec                  _CopyBits                                   ; $a8ec
  018b8  2f0c                  move.l   a4,-(a7)                           
  018ba  a923                  _EndUpdate                                  ; $a923
  018bc  1d7c00010014          move.b   #1,$14(a6)                         
  018c2  6004                  bra.s    L18c8                              
L18c4:
  018c4  422e0014              clr.b    $14(a6)                            
L18c8:
  018c8  285f                  movea.l  (a7)+,a4                           
  018ca  4e5e                  unlk     a6                                 
  018cc  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f5_18d0   [jump table #165]
;----------------------------------------------------------------------
f5_18d0:
  018d0  4e56fe96              link     a6,#-362                           
  018d4  48e70118              movem.l  d7/a3/a4,-(a7)                     
  018d8  486efece              pea      -$132(a6)                          
  018dc  a874                  _GetPort                                    ; $a874
  018de  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  018e4  a916                  _HideWindow                                 ; $a916
  018e6  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  018ec  a916                  _HideWindow                                 ; $a916
  018ee  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  018f4  a916                  _HideWindow                                 ; $a916
  018f6  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  018fc  a916                  _HideWindow                                 ; $a916
  018fe  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  01904  a916                  _HideWindow                                 ; $a916
  01906  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  0190c  a916                  _HideWindow                                 ; $a916
  0190e  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  01914  a851                  _SetCursor                                  ; $a851
  01916  42a7                  clr.l    -(a7)                              
  01918  3f3c0faa              move.w   #$faa,-(a7)                        
  0191c  486eff56              pea      -$aa(a6)                           
  01920  4878ffff              pea      ($ffff).w                          
  01924  a97c                  _GetNewDialog                               ; $a97c
  01926  285f                  movea.l  (a7)+,a4                           
  01928  2f0c                  move.l   a4,-(a7)                           
  0192a  4ead06ba              jsr      f7_161c                            
  0192e  2e8c                  move.l   a4,(a7)                            
  01930  a915                  _ShowWindow                                 ; $a915
L1932:
  01932  42a7                  clr.l    -(a7)                              
  01934  486eff54              pea      -$ac(a6)                           
  01938  a991                  _ModalDialog                                ; $a991
  0193a  4a6eff54              tst.w    -$ac(a6)                           
  0193e  67f2                  beq.s    L1932                              
  01940  302eff54              move.w   -$ac(a6),d0                        
  01944  674e                  beq.s    L1994                              
  01946  6b4c                  bmi.s    L1994                              
  01948  5540                  subq.w   #2,d0                              
  0194a  6708                  beq.s    L1954                              
  0194c  6a46                  bpl.s    L1994                              
  0194e  2f0c                  move.l   a4,-(a7)                           
  01950  a983                  _DisposeDialog                              ; $a983
  01952  6040                  bra.s    L1994                              
L1954:
  01954  2f0c                  move.l   a4,-(a7)                           
  01956  a983                  _DisposeDialog                              ; $a983
  01958  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  0195e  a920                  _BringToFront                               ; $a920
  01960  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  01966  a915                  _ShowWindow                                 ; $a915
  01968  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  0196e  a920                  _BringToFront                               ; $a920
  01970  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  01976  a915                  _ShowWindow                                 ; $a915
  01978  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  0197e  a920                  _BringToFront                               ; $a920
  01980  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  01986  a915                  _ShowWindow                                 ; $a915
  01988  4ead075a              jsr      f7_31f0                            
  0198c  4ead074a              jsr      f7_2f40                            
  01990  60000228              bra.w    L1bba                              
L1994:
  01994  42a7                  clr.l    -(a7)                              
  01996  3f3c0fa0              move.w   #$fa0,-(a7)                        
  0199a  486eff56              pea      -$aa(a6)                           
  0199e  4878ffff              pea      ($ffff).w                          
  019a2  a97c                  _GetNewDialog                               ; $a97c
  019a4  285f                  movea.l  (a7)+,a4                           
  019a6  2f0c                  move.l   a4,-(a7)                           
  019a8  4ead06ba              jsr      f7_161c                            
  019ac  2e8c                  move.l   a4,(a7)                            
  019ae  a915                  _ShowWindow                                 ; $a915
  019b0  7e01                  moveq    #1,d7                              
  019b2  6018                  bra.s    L19cc                              
L19b4:
  019b4  2f0c                  move.l   a4,-(a7)                           
  019b6  3f07                  move.w   d7,-(a7)                           
  019b8  486eff52              pea      -$ae(a6)                           
  019bc  48767520fea2          pea      (-$15e,a6,d7.w*4)                  
  019c2  48767720fed2          pea      (-$12e,a6,d7.w*8)                  
  019c8  a98d                  _GetDialogItem                              ; $a98d
  019ca  5247                  addq.w   #1,d7                              
L19cc:
  019cc  0c470008              cmpi.w   #8,d7                              
  019d0  6de2                  blt.s    L19b4                              
  019d2  2f0c                  move.l   a4,-(a7)                           
  019d4  a915                  _ShowWindow                                 ; $a915
  019d6  2f0c                  move.l   a4,-(a7)                           
  019d8  a873                  _SetPort                                    ; $a873
  019da  2d6c0010ff22          move.l   $10(a4),-$de(a6)                   
  019e0  2d6c0014ff26          move.l   $14(a4),-$da(a6)                   
L19e6:
  019e6  486d0552              pea      f5_185c                            
  019ea  486eff54              pea      -$ac(a6)                           
  019ee  a991                  _ModalDialog                                ; $a991
  019f0  302eff54              move.w   -$ac(a6),d0                        
  019f4  0c400014              cmpi.w   #$14,d0                            
  019f8  62000142              bhi.w    L1b3c                              
  019fc  43fa01c4              lea      L1bc2(pc),a1                       
  01a00  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  01a04  4ed1                  jmp      (a1)                               
  01a06  2f0c                  move.l   a4,-(a7)                           
  01a08  a922                  _BeginUpdate                                ; $a922
  01a0a  2079ffff9a0c          movea.l  g_65f4,a0                          
  01a10  20680002              movea.l  $2(a0),a0                          
  01a14  2f10                  move.l   (a0),-(a7)                         
  01a16  486c0002              pea      $2(a4)                             
  01a1a  486eff22              pea      -$de(a6)                           
  01a1e  486eff22              pea      -$de(a6)                           
  01a22  4267                  clr.w    -(a7)                              
  01a24  42a7                  clr.l    -(a7)                              
  01a26  a8ec                  _CopyBits                                   ; $a8ec
  01a28  2f0c                  move.l   a4,-(a7)                           
  01a2a  a923                  _EndUpdate                                  ; $a923
  01a2c  6000010e              bra.w    L1b3c                              
  01a30  4ebae624              jsr      f5_0056                            
  01a34  2f0c                  move.l   a4,-(a7)                           
  01a36  a920                  _BringToFront                               ; $a920
  01a38  2f0c                  move.l   a4,-(a7)                           
  01a3a  a873                  _SetPort                                    ; $a873
  01a3c  2079ffff9a0c          movea.l  g_65f4,a0                          
  01a42  20680002              movea.l  $2(a0),a0                          
  01a46  2f10                  move.l   (a0),-(a7)                         
  01a48  486c0002              pea      $2(a4)                             
  01a4c  486eff22              pea      -$de(a6)                           
  01a50  486eff22              pea      -$de(a6)                           
  01a54  4267                  clr.w    -(a7)                              
  01a56  42a7                  clr.l    -(a7)                              
  01a58  a8ec                  _CopyBits                                   ; $a8ec
  01a5a  600000e0              bra.w    L1b3c                              
  01a5e  4ebae856              jsr      f5_02b6                            
  01a62  2f0c                  move.l   a4,-(a7)                           
  01a64  a920                  _BringToFront                               ; $a920
  01a66  2f0c                  move.l   a4,-(a7)                           
  01a68  a873                  _SetPort                                    ; $a873
  01a6a  2079ffff9a0c          movea.l  g_65f4,a0                          
  01a70  20680002              movea.l  $2(a0),a0                          
  01a74  2f10                  move.l   (a0),-(a7)                         
  01a76  486c0002              pea      $2(a4)                             
  01a7a  486eff22              pea      -$de(a6)                           
  01a7e  486eff22              pea      -$de(a6)                           
  01a82  4267                  clr.w    -(a7)                              
  01a84  42a7                  clr.l    -(a7)                              
  01a86  a8ec                  _CopyBits                                   ; $a8ec
  01a88  600000b2              bra.w    L1b3c                              
  01a8c  4ebaee4e              jsr      f5_08dc                            
  01a90  2f0c                  move.l   a4,-(a7)                           
  01a92  a920                  _BringToFront                               ; $a920
  01a94  2f0c                  move.l   a4,-(a7)                           
  01a96  a873                  _SetPort                                    ; $a873
  01a98  2079ffff9a0c          movea.l  g_65f4,a0                          
  01a9e  20680002              movea.l  $2(a0),a0                          
  01aa2  2f10                  move.l   (a0),-(a7)                         
  01aa4  486c0002              pea      $2(a4)                             
  01aa8  486eff22              pea      -$de(a6)                           
  01aac  486eff22              pea      -$de(a6)                           
  01ab0  4267                  clr.w    -(a7)                              
  01ab2  42a7                  clr.l    -(a7)                              
  01ab4  a8ec                  _CopyBits                                   ; $a8ec
  01ab6  60000084              bra.w    L1b3c                              
  01aba  4eba17aa              jsr      f5_3266                            
  01abe  2f0c                  move.l   a4,-(a7)                           
  01ac0  a920                  _BringToFront                               ; $a920
  01ac2  2f0c                  move.l   a4,-(a7)                           
  01ac4  a873                  _SetPort                                    ; $a873
  01ac6  2079ffff9a0c          movea.l  g_65f4,a0                          
  01acc  20680002              movea.l  $2(a0),a0                          
  01ad0  2f10                  move.l   (a0),-(a7)                         
  01ad2  486c0002              pea      $2(a4)                             
  01ad6  486eff22              pea      -$de(a6)                           
  01ada  486eff22              pea      -$de(a6)                           
  01ade  4267                  clr.w    -(a7)                              
  01ae0  42a7                  clr.l    -(a7)                              
  01ae2  a8ec                  _CopyBits                                   ; $a8ec
  01ae4  6056                  bra.s    L1b3c                              
  01ae6  4ebaea2a              jsr      f5_0512                            
  01aea  2f0c                  move.l   a4,-(a7)                           
  01aec  a920                  _BringToFront                               ; $a920
  01aee  2f0c                  move.l   a4,-(a7)                           
  01af0  a873                  _SetPort                                    ; $a873
  01af2  2079ffff9a0c          movea.l  g_65f4,a0                          
  01af8  20680002              movea.l  $2(a0),a0                          
  01afc  2f10                  move.l   (a0),-(a7)                         
  01afe  486c0002              pea      $2(a4)                             
  01b02  486eff22              pea      -$de(a6)                           
  01b06  486eff22              pea      -$de(a6)                           
  01b0a  4267                  clr.w    -(a7)                              
  01b0c  42a7                  clr.l    -(a7)                              
  01b0e  a8ec                  _CopyBits                                   ; $a8ec
  01b10  602a                  bra.s    L1b3c                              
  01b12  4ebaec0a              jsr      f5_071e                            
  01b16  2f0c                  move.l   a4,-(a7)                           
  01b18  a920                  _BringToFront                               ; $a920
  01b1a  2f0c                  move.l   a4,-(a7)                           
  01b1c  a873                  _SetPort                                    ; $a873
  01b1e  2079ffff9a0c          movea.l  g_65f4,a0                          
  01b24  20680002              movea.l  $2(a0),a0                          
  01b28  2f10                  move.l   (a0),-(a7)                         
  01b2a  486c0002              pea      $2(a4)                             
  01b2e  486eff22              pea      -$de(a6)                           
  01b32  486eff22              pea      -$de(a6)                           
  01b36  4267                  clr.w    -(a7)                              
  01b38  42a7                  clr.l    -(a7)                              
  01b3a  a8ec                  _CopyBits                                   ; $a8ec
L1b3c:
  01b3c  0c6e0007ff54          cmpi.w   #7,-$ac(a6)                        
  01b42  6600fea2              bne.w    L19e6                              
  01b46  2f0c                  move.l   a4,-(a7)                           
  01b48  a873                  _SetPort                                    ; $a873
  01b4a  42a7                  clr.l    -(a7)                              
  01b4c  3f3c008f              move.w   #$8f,-(a7)                         
  01b50  a9bc                  _GetPicture                                 ; $a9bc
  01b52  265f                  movea.l  (a7)+,a3                           
  01b54  204b                  movea.l  a3,a0                              
  01b56  a029                  _HLock                                      ; $a029
  01b58  2f0b                  move.l   a3,-(a7)                           
  01b5a  486eff0a              pea      -$f6(a6)                           
  01b5e  a8f6                  _DrawPicture                                ; $a8f6
  01b60  43eefe96              lea      -$16a(a6),a1                       
  01b64  307c002d              movea.w  #$2d,a0                            
  01b68  a03b                  _Delay                                      ; $a03b
  01b6a  2280                  move.l   d0,(a1)                            
  01b6c  2f0c                  move.l   a4,-(a7)                           
  01b6e  a983                  _DisposeDialog                              ; $a983
  01b70  204b                  movea.l  a3,a0                              
  01b72  a02a                  _HUnlock                                    ; $a02a
  01b74  2f0b                  move.l   a3,-(a7)                           
  01b76  a9a3                  _ReleaseResource                            ; $a9a3
  01b78  2f2efece              move.l   -$132(a6),-(a7)                    
  01b7c  a873                  _SetPort                                    ; $a873
  01b7e  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  01b84  a915                  _ShowWindow                                 ; $a915
  01b86  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  01b8c  a91f                  _SelectWindow                               ; $a91f
  01b8e  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  01b94  a915                  _ShowWindow                                 ; $a915
  01b96  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  01b9c  a91f                  _SelectWindow                               ; $a91f
  01b9e  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  01ba4  a915                  _ShowWindow                                 ; $a915
  01ba6  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  01bac  a91f                  _SelectWindow                               ; $a91f
  01bae  4ead075a              jsr      f7_31f0                            
  01bb2  4ead074a              jsr      f7_2f40                            
  01bb6  4ead073a              jsr      f7_2bb6                            
L1bba:
  01bba  4cdf1880              movem.l  (a7)+,d7/a3/a4                     
  01bbe  4e5e                  unlk     a6                                 
  01bc0  4e75                  rts                                         
  01bc2  ff7a                  dc.w     $ff7a                              
  01bc4  fe6e                  dc.w     $fe6e                              
  01bc6  fe9c                  dc.w     $fe9c                              
  01bc8  feca                  dc.w     $feca                              
  01bca  fef8                  dc.w     $fef8                              
  01bcc  ff24                  dc.w     $ff24                              
  01bce  ff50                  dc.w     $ff50                              
  01bd0  ff7a                  dc.w     $ff7a                              
  01bd2  ff7a                  dc.w     $ff7a                              
  01bd4  ff7a                  dc.w     $ff7a                              
  01bd6  ff7a                  dc.w     $ff7a                              
  01bd8  ff7a                  dc.w     $ff7a                              
  01bda  ff7a                  dc.w     $ff7a                              
  01bdc  ff7a                  dc.w     $ff7a                              
  01bde  ff7a                  dc.w     $ff7a                              
  01be0  ff7a                  dc.w     $ff7a                              
  01be2  ff7a                  dc.w     $ff7a                              
  01be4  ff7a                  dc.w     $ff7a                              
  01be6  ff7a                  dc.w     $ff7a                              
  01be8  ff7a                  dc.w     $ff7a                              
  01bea  fe44                  dc.w     $fe44                              

;----------------------------------------------------------------------
; f5_1bec   [jump table #167]
;----------------------------------------------------------------------
f5_1bec:
  01bec  4e56ff4a              link     a6,#-182                           
  01bf0  48e70108              movem.l  d7/a4,-(a7)                        
  01bf4  3e2e0008              move.w   $8(a6),d7                          
  01bf8  2d79ffffae26ff4a      move.l   g_51da,-$b6(a6)                    
  01c00  2d79ffffae2aff4e      move.l   g_51d6,-$b2(a6)                    
  01c08  303073b0ffff8ba6      move.w   (-$745a,za0,d7.w*2),d0             
  01c10  2f3005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),-(a7)          
  01c18  2f3c000007b2          move.l   STR_07b2,-(a7)                     ; "?"
  01c1e  2f3c000007b4          move.l   STR_07b4,-(a7)                     ; "?"
  01c24  2f3c000007b6          move.l   STR_07b6,-(a7)                     ; "?"
  01c2a  a98b                  _ParamText                                  ; $a98b
  01c2c  42a7                  clr.l    -(a7)                              
  01c2e  3f3c00fd              move.w   #$fd,-(a7)                         
  01c32  486eff56              pea      -$aa(a6)                           
  01c36  4878ffff              pea      ($ffff).w                          
  01c3a  a97c                  _GetNewDialog                               ; $a97c
  01c3c  285f                  movea.l  (a7)+,a4                           
  01c3e  2f0c                  move.l   a4,-(a7)                           
  01c40  4ead06ba              jsr      f7_161c                            
  01c44  2e8c                  move.l   a4,(a7)                            
  01c46  a915                  _ShowWindow                                 ; $a915
  01c48  2f0c                  move.l   a4,-(a7)                           
  01c4a  a981                  _DrawDialog                                 ; $a981
  01c4c  43eeff52              lea      -$ae(a6),a1                        
  01c50  307c00f0              movea.w  #$f0,a0                            
  01c54  a03b                  _Delay                                      ; $a03b
  01c56  2280                  move.l   d0,(a1)                            
  01c58  2f0c                  move.l   a4,-(a7)                           
  01c5a  a983                  _DisposeDialog                              ; $a983
  01c5c  303073b0ffff8b7c      move.w   (-$7484,za0,d7.w*2),d0             
  01c64  30360320c0ca          move.w   (-$3f36,a6,d0.w*2),d0              
  01c6a  d179ffff8dbe          add.w    d0,g_7242                          
  01c70  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  01c78  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  01c80  3f3073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),-(a7)          
  01c88  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  01c90  4ead008a              jsr      f2_0c6e                            
  01c94  4cee1080ff42          movem.l  -$be(a6),d7/a4                     
  01c9a  4e5e                  unlk     a6                                 
  01c9c  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_1c9e   [jump table #168]
;----------------------------------------------------------------------
f5_1c9e:
  01c9e  4e56fcee              link     a6,#-786                           
  01ca2  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  01ca6  7e04                  moveq    #4,d7                              
  01ca8  2d79ffffabf6fefe      move.l   g_540a,-$102(a6)                   
  01cb0  2d79ffffabfaff02      move.l   g_5406,-$fe(a6)                    
  01cb8  2d7c4a444847feee      move.l   #$4a444847,-$112(a6)               
  01cc0  486eff68              pea      -$98(a6)                           
  01cc4  302eff04              move.w   -$fc(a6),d0                        
  01cc8  906eff02              sub.w    -$fe(a6),d0                        
  01ccc  48c0                  ext.l    d0                                 
  01cce  81fc0002              divs.w   #2,d0                              
  01cd2  3f00                  move.w   d0,-(a7)                           
  01cd4  3f3c004b              move.w   #$4b,-(a7)                         
  01cd8  a880                  _SetPt                                      ; $a880
  01cda  4a2e0008              tst.b    $8(a6)                             
  01cde  6600032a              bne.w    L200a                              
  01ce2  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  01ce8  486efdee              pea      -$212(a6)                          
  01cec  a919                  _GetWTitle                                  ; $a919
  01cee  4ab9ffff3b18          tst.l    g_c4e8                             
  01cf4  67000088              beq.w    L1d7e                              
  01cf8  42a7                  clr.l    -(a7)                              
  01cfa  2f39ffff3b18          move.l   g_c4e8,-(a7)                       
  01d00  4ead04b2              jsr      f4_137e                            
  01d04  43eeffc0              lea      -$40(a6),a1                        
  01d08  201f                  move.l   (a7)+,d0                           
  01d0a  2079ffff3b18          movea.l  g_c4e8,a0                          
  01d10  a02e                  _BlockMove                                  ; $a02e
  01d12  4267                  clr.w    -(a7)                              
  01d14  486effc0              pea      -$40(a6)                           
  01d18  3f2effbc              move.w   -$44(a6),-(a7)                     
  01d1c  486eff66              pea      -$9a(a6)                           
  01d20  4ead04ca              jsr      f4_13ae                            
  01d24  3a1f                  move.w   (a7)+,d5                           
  01d26  4a45                  tst.w    d5                                 
  01d28  6712                  beq.s    L1d3c                              
  01d2a  2f3c000007b8          move.l   STR_07b8,-(a7)                     ; "trying to open file"
  01d30  3f05                  move.w   d5,-(a7)                           
  01d32  4ead06ca              jsr      f7_18ec                            
  01d36  7000                  moveq    #0,d0                              
  01d38  60000352              bra.w    L208c                              
L1d3c:
  01d3c  49ed04e2              lea      f4_140c,a4                         
  01d40  4239ffff3b1e          clr.b    g_c4e2                             
  01d46  486efdee              pea      -$212(a6)                          
  01d4a  2f0c                  move.l   a4,-(a7)                           
  01d4c  3f2eff66              move.w   -$9a(a6),-(a7)                     
  01d50  4eba0344              jsr      f5_2096                            
  01d54  4257                  clr.w    (a7)                               
  01d56  3f2eff66              move.w   -$9a(a6),-(a7)                     
  01d5a  4ead04d2              jsr      f4_13ee                            
  01d5e  3a1f                  move.w   (a7)+,d5                           
  01d60  4a45                  tst.w    d5                                 
  01d62  508f                  addq.l   #8,a7                              
  01d64  6712                  beq.s    L1d78                              
  01d66  2f3c000007cc          move.l   STR_07cc,-(a7)                     ; "trying to close file"
  01d6c  3f05                  move.w   d5,-(a7)                           
  01d6e  4ead06ca              jsr      f7_18ec                            
  01d72  7000                  moveq    #0,d0                              
  01d74  60000316              bra.w    L208c                              
L1d78:
  01d78  7001                  moveq    #1,d0                              
  01d7a  60000310              bra.w    L208c                              
L1d7e:
  01d7e  4ab9ffff3b14          tst.l    g_c4ec                             
  01d84  671c                  beq.s    L1da2                              
  01d86  42a7                  clr.l    -(a7)                              
  01d88  2f39ffff3b14          move.l   g_c4ec,-(a7)                       
  01d8e  4ead04b2              jsr      f4_137e                            
  01d92  43eefcee              lea      -$312(a6),a1                       
  01d96  201f                  move.l   (a7)+,d0                           
  01d98  2079ffff3b14          movea.l  g_c4ec,a0                          
  01d9e  a02e                  _BlockMove                                  ; $a02e
  01da0  600c                  bra.s    L1dae                              
L1da2:
  01da2  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  01da8  486efcee              pea      -$312(a6)                          
  01dac  a919                  _GetWTitle                                  ; $a919
L1dae:
  01dae  2f2eff68              move.l   -$98(a6),-(a7)                     
  01db2  2f3c000007e2          move.l   STR_07e2,-(a7)                     ; "Save as this game as. . ."
  01db8  486efcee              pea      -$312(a6)                          
  01dbc  42a7                  clr.l    -(a7)                              
  01dbe  486effb6              pea      -$4a(a6)                           
  01dc2  3f3c0001              move.w   #1,-(a7)                           
  01dc6  a9ea                  _Pack3                                      ; $a9ea
  01dc8  4a2effb6              tst.b    -$4a(a6)                           
  01dcc  6606                  bne.s    L1dd4                              
  01dce  7000                  moveq    #0,d0                              
  01dd0  600002ba              bra.w    L208c                              
L1dd4:
  01dd4  4267                  clr.w    -(a7)                              
  01dd6  486effc0              pea      -$40(a6)                           
  01dda  3f2effbc              move.w   -$44(a6),-(a7)                     
  01dde  2f3c4a444843          move.l   #$4a444843,-(a7)                   
  01de4  2f3c4a444847          move.l   #$4a444847,-(a7)                   
  01dea  4ead04ea              jsr      f4_1450                            
  01dee  3a1f                  move.w   (a7)+,d5                           
  01df0  4267                  clr.w    -(a7)                              
  01df2  486effc0              pea      -$40(a6)                           
  01df6  3f2effbc              move.w   -$44(a6),-(a7)                     
  01dfa  486eff66              pea      -$9a(a6)                           
  01dfe  4ead04ca              jsr      f4_13ae                            
  01e02  3a1f                  move.w   (a7)+,d5                           
  01e04  49ed04e2              lea      f4_140c,a4                         
  01e08  4ab9ffff3b14          tst.l    g_c4ec                             
  01e0e  670001c4              beq.w    L1fd4                              
  01e12  4ab9ffff3b18          tst.l    g_c4e8                             
  01e18  670001ea              beq.w    L2004                              
  01e1c  4a39ffff993c          tst.b    g_66c4                             
  01e22  6350                  bls.s    L1e74                              
  01e24  4267                  clr.w    -(a7)                              
  01e26  2f3cffff9936          move.l   #$ffff9936,-(a7)                   
  01e2c  7006                  moveq    #6,d0                              
  01e2e  aa52                  _trap    $aa52                              
  01e30  3a1f                  move.w   (a7)+,d5                           
  01e32  4a45                  tst.w    d5                                 
  01e34  6736                  beq.s    L1e6c                              
  01e36  2f3c000007fc          move.l   STR_07fc,-(a7)                     ; "trying to delete a file"
  01e3c  3f05                  move.w   d5,-(a7)                           
  01e3e  4ead06ca              jsr      f7_18ec                            
  01e42  4257                  clr.w    (a7)                               
  01e44  3f2eff66              move.w   -$9a(a6),-(a7)                     
  01e48  4ead04d2              jsr      f4_13ee                            
  01e4c  3a1f                  move.w   (a7)+,d5                           
  01e4e  4a45                  tst.w    d5                                 
  01e50  588f                  addq.l   #4,a7                              
  01e52  6712                  beq.s    L1e66                              
  01e54  2f3c00000814          move.l   STR_0814,-(a7)                     ; "trying to close file"
  01e5a  3f05                  move.w   d5,-(a7)                           
  01e5c  4ead06ca              jsr      f7_18ec                            
  01e60  7000                  moveq    #0,d0                              
  01e62  60000228              bra.w    L208c                              
L1e66:
  01e66  7000                  moveq    #0,d0                              
  01e68  60000222              bra.w    L208c                              
L1e6c:
  01e6c  4239ffff993c          clr.b    g_66c4                             
  01e72  604e                  bra.s    L1ec2                              
L1e74:
  01e74  4267                  clr.w    -(a7)                              
  01e76  2f39ffff3b14          move.l   g_c4ec,-(a7)                       
  01e7c  3f39ffffa798          move.w   g_5868,-(a7)                       
  01e82  4ead04f2              jsr      f4_148e                            
  01e86  3a1f                  move.w   (a7)+,d5                           
  01e88  4a45                  tst.w    d5                                 
  01e8a  6736                  beq.s    L1ec2                              
  01e8c  2f3c0000082a          move.l   STR_082a,-(a7)                     ; "trying to delete a file"
  01e92  3f05                  move.w   d5,-(a7)                           
  01e94  4ead06ca              jsr      f7_18ec                            
  01e98  4257                  clr.w    (a7)                               
  01e9a  3f2eff66              move.w   -$9a(a6),-(a7)                     
  01e9e  4ead04d2              jsr      f4_13ee                            
  01ea2  3a1f                  move.w   (a7)+,d5                           
  01ea4  4a45                  tst.w    d5                                 
  01ea6  588f                  addq.l   #4,a7                              
  01ea8  6712                  beq.s    L1ebc                              
  01eaa  2f3c00000842          move.l   STR_0842,-(a7)                     ; "trying to close file"
  01eb0  3f05                  move.w   d5,-(a7)                           
  01eb2  4ead06ca              jsr      f7_18ec                            
  01eb6  7000                  moveq    #0,d0                              
  01eb8  600001d2              bra.w    L208c                              
L1ebc:
  01ebc  7000                  moveq    #0,d0                              
  01ebe  600001cc              bra.w    L208c                              
L1ec2:
  01ec2  2079ffff3b14          movea.l  g_c4ec,a0                          
  01ec8  a01f                  _DisposePtr                                 ; $a01f
  01eca  2079ffff3b18          movea.l  g_c4e8,a0                          
  01ed0  1010                  move.b   (a0),d0                            
  01ed2  49c0                  extb.l   d0                                 
  01ed4  5240                  addq.w   #1,d0                              
  01ed6  48c0                  ext.l    d0                                 
  01ed8  a11e                  _NewPtr                                     ; $a11e
  01eda  23c8ffff3b14          move.l   a0,g_c4ec                          
  01ee0  4ab9ffff3b14          tst.l    g_c4ec                             
  01ee6  6642                  bne.s    L1f2a                              
  01ee8  4267                  clr.w    -(a7)                              
  01eea  3eb80220              move.w   ($220).w,(a7)                      
  01eee  3a1f                  move.w   (a7)+,d5                           
  01ef0  4a45                  tst.w    d5                                 
  01ef2  6736                  beq.s    L1f2a                              
  01ef4  2f3c00000858          move.l   STR_0858,-(a7)                     ; "trying to get a new pointer. Your game hasn't been saved/rea"
  01efa  3f05                  move.w   d5,-(a7)                           
  01efc  4ead06ca              jsr      f7_18ec                            
  01f00  4257                  clr.w    (a7)                               
  01f02  3f2eff66              move.w   -$9a(a6),-(a7)                     
  01f06  4ead04d2              jsr      f4_13ee                            
  01f0a  3a1f                  move.w   (a7)+,d5                           
  01f0c  4a45                  tst.w    d5                                 
  01f0e  588f                  addq.l   #4,a7                              
  01f10  6712                  beq.s    L1f24                              
  01f12  2f3c00000898          move.l   STR_0898,-(a7)                     ; "trying to close file"
  01f18  3f05                  move.w   d5,-(a7)                           
  01f1a  4ead06ca              jsr      f7_18ec                            
  01f1e  7000                  moveq    #0,d0                              
  01f20  6000016a              bra.w    L208c                              
L1f24:
  01f24  7000                  moveq    #0,d0                              
  01f26  60000164              bra.w    L208c                              
L1f2a:
  01f2a  2079ffff3b18          movea.l  g_c4e8,a0                          
  01f30  1010                  move.b   (a0),d0                            
  01f32  49c0                  extb.l   d0                                 
  01f34  5240                  addq.w   #1,d0                              
  01f36  48c0                  ext.l    d0                                 
  01f38  2279ffff3b14          movea.l  g_c4ec,a1                          
  01f3e  2079ffff3b18          movea.l  g_c4e8,a0                          
  01f44  a02e                  _BlockMove                                  ; $a02e
  01f46  33f9ffffa79affffa798  move.w   g_5866,g_5868                      
  01f50  2079ffff3b18          movea.l  g_c4e8,a0                          
  01f56  a01f                  _DisposePtr                                 ; $a01f
  01f58  7000                  moveq    #0,d0                              
  01f5a  102effc0              move.b   -$40(a6),d0                        
  01f5e  5240                  addq.w   #1,d0                              
  01f60  48c0                  ext.l    d0                                 
  01f62  a11e                  _NewPtr                                     ; $a11e
  01f64  23c8ffff3b18          move.l   a0,g_c4e8                          
  01f6a  4ab9ffff3b18          tst.l    g_c4e8                             
  01f70  6642                  bne.s    L1fb4                              
  01f72  4267                  clr.w    -(a7)                              
  01f74  3eb80220              move.w   ($220).w,(a7)                      
  01f78  3a1f                  move.w   (a7)+,d5                           
  01f7a  4a45                  tst.w    d5                                 
  01f7c  6736                  beq.s    L1fb4                              
  01f7e  2f3c000008ae          move.l   STR_08ae,-(a7)                     ; "trying to get a new pointer. Your game hasn't been saved/rea"
  01f84  3f05                  move.w   d5,-(a7)                           
  01f86  4ead06ca              jsr      f7_18ec                            
  01f8a  4257                  clr.w    (a7)                               
  01f8c  3f2eff66              move.w   -$9a(a6),-(a7)                     
  01f90  4ead04d2              jsr      f4_13ee                            
  01f94  3a1f                  move.w   (a7)+,d5                           
  01f96  4a45                  tst.w    d5                                 
  01f98  588f                  addq.l   #4,a7                              
  01f9a  6712                  beq.s    L1fae                              
  01f9c  2f3c000008ee          move.l   STR_08ee,-(a7)                     ; "trying to close file"
  01fa2  3f05                  move.w   d5,-(a7)                           
  01fa4  4ead06ca              jsr      f7_18ec                            
  01fa8  7000                  moveq    #0,d0                              
  01faa  600000e0              bra.w    L208c                              
L1fae:
  01fae  7000                  moveq    #0,d0                              
  01fb0  600000da              bra.w    L208c                              
L1fb4:
  01fb4  41eeffc0              lea      -$40(a6),a0                        
  01fb8  7000                  moveq    #0,d0                              
  01fba  102effc0              move.b   -$40(a6),d0                        
  01fbe  5240                  addq.w   #1,d0                              
  01fc0  48c0                  ext.l    d0                                 
  01fc2  2279ffff3b18          movea.l  g_c4e8,a1                          
  01fc8  a02e                  _BlockMove                                  ; $a02e
  01fca  33eeffbcffffa79a      move.w   -$44(a6),g_5866                    
  01fd2  6030                  bra.s    L2004                              
L1fd4:
  01fd4  7000                  moveq    #0,d0                              
  01fd6  102effc0              move.b   -$40(a6),d0                        
  01fda  5240                  addq.w   #1,d0                              
  01fdc  48c0                  ext.l    d0                                 
  01fde  a11e                  _NewPtr                                     ; $a11e
  01fe0  23c8ffff3b14          move.l   a0,g_c4ec                          
  01fe6  41eeffc0              lea      -$40(a6),a0                        
  01fea  7000                  moveq    #0,d0                              
  01fec  102effc0              move.b   -$40(a6),d0                        
  01ff0  5240                  addq.w   #1,d0                              
  01ff2  48c0                  ext.l    d0                                 
  01ff4  2279ffff3b14          movea.l  g_c4ec,a1                          
  01ffa  a02e                  _BlockMove                                  ; $a02e
  01ffc  33eeffbcffffa798      move.w   -$44(a6),g_5868                    
L2004:
  02004  4239ffff3b1e          clr.b    g_c4e2                             
L200a:
  0200a  4a2e0008              tst.b    $8(a6)                             
  0200e  674a                  beq.s    L205a                              
  02010  2f2eff68              move.l   -$98(a6),-(a7)                     
  02014  2f3c00000904          move.l   STR_0904,-(a7)                     ; "Resume which game?"
  0201a  42a7                  clr.l    -(a7)                              
  0201c  3f3c0001              move.w   #1,-(a7)                           
  02020  486efeee              pea      -$112(a6)                          
  02024  42a7                  clr.l    -(a7)                              
  02026  486eff6c              pea      -$94(a6)                           
  0202a  3f3c0002              move.w   #2,-(a7)                           
  0202e  a9ea                  _Pack3                                      ; $a9ea
  02030  4a2eff6c              tst.b    -$94(a6)                           
  02034  6604                  bne.s    L203a                              
  02036  7000                  moveq    #0,d0                              
  02038  6052                  bra.s    L208c                              
L203a:
  0203a  42a7                  clr.l    -(a7)                              
  0203c  3f2eff72              move.w   -$8e(a6),-(a7)                     
  02040  486eff76              pea      -$8a(a6)                           
  02044  4ead06fa              jsr      f7_21d8                            
  02048  1c00                  move.b   d0,d6                              
  0204a  4a06                  tst.b    d6                                 
  0204c  4fef000a              lea      $a(a7),a7                          
  02050  6704                  beq.s    L2056                              
  02052  7001                  moveq    #1,d0                              
  02054  6036                  bra.s    L208c                              
L2056:
  02056  7000                  moveq    #0,d0                              
  02058  6032                  bra.s    L208c                              
L205a:
  0205a  486efdee              pea      -$212(a6)                          
  0205e  2f0c                  move.l   a4,-(a7)                           
  02060  3f2eff66              move.w   -$9a(a6),-(a7)                     
  02064  4eba0030              jsr      f5_2096                            
  02068  4257                  clr.w    (a7)                               
  0206a  3f2eff66              move.w   -$9a(a6),-(a7)                     
  0206e  4ead04d2              jsr      f4_13ee                            
  02072  3a1f                  move.w   (a7)+,d5                           
  02074  4a45                  tst.w    d5                                 
  02076  508f                  addq.l   #8,a7                              
  02078  6710                  beq.s    L208a                              
  0207a  2f3c00000918          move.l   STR_0918,-(a7)                     ; "trying to close file"
  02080  3f05                  move.w   d5,-(a7)                           
  02082  4ead06ca              jsr      f7_18ec                            
  02086  7001                  moveq    #1,d0                              
  02088  6002                  bra.s    L208c                              
L208a:
  0208a  7001                  moveq    #1,d0                              
L208c:
  0208c  4cee10e0fcde          movem.l  -$322(a6),d5/d6/d7/a4              
  02092  4e5e                  unlk     a6                                 
  02094  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_2096   [jump table #169]
;----------------------------------------------------------------------
f5_2096:
  02096  4e56fef4              link     a6,#-268                           
  0209a  48e70318              movem.l  d6/d7/a3/a4,-(a7)                  
  0209e  3e2e0008              move.w   $8(a6),d7                          
  020a2  286e000a              movea.l  $a(a6),a4                          
  020a6  266e000e              movea.l  $e(a6),a3                          
  020aa  703e                  moveq    #62,d0                             
  020ac  2d40fffc              move.l   d0,-$4(a6)                         
  020b0  4267                  clr.w    -(a7)                              
  020b2  3f07                  move.w   d7,-(a7)                           
  020b4  486efffc              pea      -$4(a6)                            
  020b8  2f3cffff836c          move.l   #$ffff836c,-(a7)                   
  020be  4e94                  jsr      (a4)                               
  020c0  3c1f                  move.w   (a7)+,d6                           
  020c2  4a46                  tst.w    d6                                 
  020c4  6710                  beq.s    L20d6                              
  020c6  2f3c0000092e          move.l   STR_092e,-(a7)                     ; "reading/writing u from file. Operation halted"
  020cc  3f06                  move.w   d6,-(a7)                           
  020ce  4ead06ca              jsr      f7_18ec                            
  020d2  60000692              bra.w    L2766                              
L20d6:
  020d6  7020                  moveq    #32,d0                             
  020d8  2d40fffc              move.l   d0,-$4(a6)                         
  020dc  4267                  clr.w    -(a7)                              
  020de  3f07                  move.w   d7,-(a7)                           
  020e0  486efffc              pea      -$4(a6)                            
  020e4  2f3cffff8da0          move.l   #$ffff8da0,-(a7)                   
  020ea  4e94                  jsr      (a4)                               
  020ec  3c1f                  move.w   (a7)+,d6                           
  020ee  4a46                  tst.w    d6                                 
  020f0  6710                  beq.s    L2102                              
  020f2  2f3c0000095c          move.l   STR_095c,-(a7)                     ; "reading/writing stuff from file. Operation halted"
  020f8  3f06                  move.w   d6,-(a7)                           
  020fa  4ead06ca              jsr      f7_18ec                            
  020fe  60000666              bra.w    L2766                              
L2102:
  02102  7054                  moveq    #84,d0                             
  02104  2d40fffc              move.l   d0,-$4(a6)                         
  02108  4267                  clr.w    -(a7)                              
  0210a  3f07                  move.w   d7,-(a7)                           
  0210c  486efffc              pea      -$4(a6)                            
  02110  2f3cffff8c24          move.l   #$ffff8c24,-(a7)                   
  02116  4e94                  jsr      (a4)                               
  02118  3c1f                  move.w   (a7)+,d6                           
  0211a  4a46                  tst.w    d6                                 
  0211c  6710                  beq.s    L212e                              
  0211e  2f3c0000098e          move.l   STR_098e,-(a7)                     ; "reading/writing mpos from file. Operation halted"
  02124  3f06                  move.w   d6,-(a7)                           
  02126  4ead06ca              jsr      f7_18ec                            
  0212a  6000063a              bra.w    L2766                              
L212e:
  0212e  702a                  moveq    #42,d0                             
  02130  2d40fffc              move.l   d0,-$4(a6)                         
  02134  4267                  clr.w    -(a7)                              
  02136  3f07                  move.w   d7,-(a7)                           
  02138  486efffc              pea      -$4(a6)                            
  0213c  2f3cffff8c78          move.l   #$ffff8c78,-(a7)                   
  02142  4e94                  jsr      (a4)                               
  02144  3c1f                  move.w   (a7)+,d6                           
  02146  4a46                  tst.w    d6                                 
  02148  6710                  beq.s    L215a                              
  0214a  2f3c000009c0          move.l   STR_09c0,-(a7)                     ; "reading/writing matt from file. Operation halted"
  02150  3f06                  move.w   d6,-(a7)                           
  02152  4ead06ca              jsr      f7_18ec                            
  02156  6000060e              bra.w    L2766                              
L215a:
  0215a  702a                  moveq    #42,d0                             
  0215c  2d40fffc              move.l   d0,-$4(a6)                         
  02160  4267                  clr.w    -(a7)                              
  02162  3f07                  move.w   d7,-(a7)                           
  02164  486efffc              pea      -$4(a6)                            
  02168  2f3cffff8ccc          move.l   #$ffff8ccc,-(a7)                   
  0216e  4e94                  jsr      (a4)                               
  02170  3c1f                  move.w   (a7)+,d6                           
  02172  4a46                  tst.w    d6                                 
  02174  6710                  beq.s    L2186                              
  02176  2f3c000009f2          move.l   STR_09f2,-(a7)                     ; "reading/writing mhp from file. Operation halted"
  0217c  3f06                  move.w   d6,-(a7)                           
  0217e  4ead06ca              jsr      f7_18ec                            
  02182  600005e2              bra.w    L2766                              
L2186:
  02186  702a                  moveq    #42,d0                             
  02188  2d40fffc              move.l   d0,-$4(a6)                         
  0218c  4267                  clr.w    -(a7)                              
  0218e  3f07                  move.w   d7,-(a7)                           
  02190  486efffc              pea      -$4(a6)                            
  02194  2f3cffff8cf6          move.l   #$ffff8cf6,-(a7)                   
  0219a  4e94                  jsr      (a4)                               
  0219c  3c1f                  move.w   (a7)+,d6                           
  0219e  4a46                  tst.w    d6                                 
  021a0  6710                  beq.s    L21b2                              
  021a2  2f3c00000a22          move.l   STR_0a22,-(a7)                     ; "reading/writing kmhp from file. Operation halted"
  021a8  3f06                  move.w   d6,-(a7)                           
  021aa  4ead06ca              jsr      f7_18ec                            
  021ae  600005b6              bra.w    L2766                              
L21b2:
  021b2  7002                  moveq    #2,d0                              
  021b4  2d40fffc              move.l   d0,-$4(a6)                         
  021b8  4267                  clr.w    -(a7)                              
  021ba  3f07                  move.w   d7,-(a7)                           
  021bc  486efffc              pea      -$4(a6)                            
  021c0  2f3cffff8894          move.l   #$ffff8894,-(a7)                   
  021c6  4e94                  jsr      (a4)                               
  021c8  3c1f                  move.w   (a7)+,d6                           
  021ca  4a46                  tst.w    d6                                 
  021cc  6710                  beq.s    L21de                              
  021ce  2f3c00000a54          move.l   STR_0a54,-(a7)                     ; "reading/writing level from file. Operation halted"
  021d4  3f06                  move.w   d6,-(a7)                           
  021d6  4ead06ca              jsr      f7_18ec                            
  021da  6000058a              bra.w    L2766                              
L21de:
  021de  7002                  moveq    #2,d0                              
  021e0  2d40fffc              move.l   d0,-$4(a6)                         
  021e4  4267                  clr.w    -(a7)                              
  021e6  3f07                  move.w   d7,-(a7)                           
  021e8  486efffc              pea      -$4(a6)                            
  021ec  2f3cffff83bc          move.l   #$ffff83bc,-(a7)                   
  021f2  4e94                  jsr      (a4)                               
  021f4  3c1f                  move.w   (a7)+,d6                           
  021f6  4a46                  tst.w    d6                                 
  021f8  6710                  beq.s    L220a                              
  021fa  2f3c00000a86          move.l   STR_0a86,-(a7)                     ; "reading/writing direction from file. Operation halted"
  02200  3f06                  move.w   d6,-(a7)                           
  02202  4ead06ca              jsr      f7_18ec                            
  02206  6000055e              bra.w    L2766                              
L220a:
  0220a  7002                  moveq    #2,d0                              
  0220c  2d40fffc              move.l   d0,-$4(a6)                         
  02210  4267                  clr.w    -(a7)                              
  02212  3f07                  move.w   d7,-(a7)                           
  02214  486efffc              pea      -$4(a6)                            
  02218  2f3cffff88b0          move.l   #$ffff88b0,-(a7)                   
  0221e  4e94                  jsr      (a4)                               
  02220  3c1f                  move.w   (a7)+,d6                           
  02222  4a46                  tst.w    d6                                 
  02224  6710                  beq.s    L2236                              
  02226  2f3c00000abc          move.l   STR_0abc,-(a7)                     ; "reading/writing gold from file. Operation halted"
  0222c  3f06                  move.w   d6,-(a7)                           
  0222e  4ead06ca              jsr      f7_18ec                            
  02232  60000532              bra.w    L2766                              
L2236:
  02236  7002                  moveq    #2,d0                              
  02238  2d40fffc              move.l   d0,-$4(a6)                         
  0223c  4267                  clr.w    -(a7)                              
  0223e  3f07                  move.w   d7,-(a7)                           
  02240  486efffc              pea      -$4(a6)                            
  02244  2f3cffff8d9e          move.l   #$ffff8d9e,-(a7)                   
  0224a  4e94                  jsr      (a4)                               
  0224c  3c1f                  move.w   (a7)+,d6                           
  0224e  4a46                  tst.w    d6                                 
  02250  6710                  beq.s    L2262                              
  02252  2f3c00000aee          move.l   STR_0aee,-(a7)                     ; "reading/writing whichroom from file. Operation halted"
  02258  3f06                  move.w   d6,-(a7)                           
  0225a  4ead06ca              jsr      f7_18ec                            
  0225e  60000506              bra.w    L2766                              
L2262:
  02262  700c                  moveq    #12,d0                             
  02264  2d40fffc              move.l   d0,-$4(a6)                         
  02268  4267                  clr.w    -(a7)                              
  0226a  3f07                  move.w   d7,-(a7)                           
  0226c  486efffc              pea      -$4(a6)                            
  02270  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  02276  4e94                  jsr      (a4)                               
  02278  3c1f                  move.w   (a7)+,d6                           
  0227a  4a46                  tst.w    d6                                 
  0227c  6710                  beq.s    L228e                              
  0227e  2f3c00000b24          move.l   STR_0b24,-(a7)                     ; "reading/writing po from file. Operation halted"
  02284  3f06                  move.w   d6,-(a7)                           
  02286  4ead06ca              jsr      f7_18ec                            
  0228a  600004da              bra.w    L2766                              
L228e:
  0228e  700c                  moveq    #12,d0                             
  02290  2d40fffc              move.l   d0,-$4(a6)                         
  02294  4267                  clr.w    -(a7)                              
  02296  3f07                  move.w   d7,-(a7)                           
  02298  486efffc              pea      -$4(a6)                            
  0229c  2f3cffff8864          move.l   #$ffff8864,-(a7)                   
  022a2  4e94                  jsr      (a4)                               
  022a4  3c1f                  move.w   (a7)+,d6                           
  022a6  4a46                  tst.w    d6                                 
  022a8  6710                  beq.s    L22ba                              
  022aa  2f3c00000b54          move.l   STR_0b54,-(a7)                     ; "reading/writing sc from file. Operation halted"
  022b0  3f06                  move.w   d6,-(a7)                           
  022b2  4ead06ca              jsr      f7_18ec                            
  022b6  600004ae              bra.w    L2766                              
L22ba:
  022ba  700c                  moveq    #12,d0                             
  022bc  2d40fffc              move.l   d0,-$4(a6)                         
  022c0  4267                  clr.w    -(a7)                              
  022c2  3f07                  move.w   d7,-(a7)                           
  022c4  486efffc              pea      -$4(a6)                            
  022c8  2f3cffff887c          move.l   #$ffff887c,-(a7)                   
  022ce  4e94                  jsr      (a4)                               
  022d0  3c1f                  move.w   (a7)+,d6                           
  022d2  4a46                  tst.w    d6                                 
  022d4  6710                  beq.s    L22e6                              
  022d6  2f3c00000b84          move.l   STR_0b84,-(a7)                     ; "reading/writing wand from file. Operation halted"
  022dc  3f06                  move.w   d6,-(a7)                           
  022de  4ead06ca              jsr      f7_18ec                            
  022e2  60000482              bra.w    L2766                              
L22e6:
  022e6  7054                  moveq    #84,d0                             
  022e8  2d40fffc              move.l   d0,-$4(a6)                         
  022ec  4267                  clr.w    -(a7)                              
  022ee  3f07                  move.w   d7,-(a7)                           
  022f0  486efffc              pea      -$4(a6)                            
  022f4  2f3cffff985e          move.l   #$ffff985e,-(a7)                   
  022fa  4e94                  jsr      (a4)                               
  022fc  3c1f                  move.w   (a7)+,d6                           
  022fe  4a46                  tst.w    d6                                 
  02300  6710                  beq.s    L2312                              
  02302  2f3c00000bb6          move.l   STR_0bb6,-(a7)                     ; "reading/writing doorlocks from file. Operation halted"
  02308  3f06                  move.w   d6,-(a7)                           
  0230a  4ead06ca              jsr      f7_18ec                            
  0230e  60000456              bra.w    L2766                              
L2312:
  02312  2d7c00002d48fffc      move.l   #$2d48,-$4(a6)                     
  0231a  4267                  clr.w    -(a7)                              
  0231c  3f07                  move.w   d7,-(a7)                           
  0231e  486efffc              pea      -$4(a6)                            
  02322  2f3cffff3b20          move.l   #$ffff3b20,-(a7)                   
  02328  4e94                  jsr      (a4)                               
  0232a  3c1f                  move.w   (a7)+,d6                           
  0232c  4a46                  tst.w    d6                                 
  0232e  6710                  beq.s    L2340                              
  02330  2f3c00000bec          move.l   STR_0bec,-(a7)                     ; "reading/writing gamelevels from file. Operation halted"
  02336  3f06                  move.w   d6,-(a7)                           
  02338  4ead06ca              jsr      f7_18ec                            
  0233c  60000428              bra.w    L2766                              
L2340:
  02340  7001                  moveq    #1,d0                              
  02342  2d40fffc              move.l   d0,-$4(a6)                         
  02346  4267                  clr.w    -(a7)                              
  02348  3f07                  move.w   d7,-(a7)                           
  0234a  486efffc              pea      -$4(a6)                            
  0234e  2f0b                  move.l   a3,-(a7)                           
  02350  4e94                  jsr      (a4)                               
  02352  3c1f                  move.w   (a7)+,d6                           
  02354  4a46                  tst.w    d6                                 
  02356  6710                  beq.s    L2368                              
  02358  2f3c00000c24          move.l   STR_0c24,-(a7)                     ; "reading/writing wtitle0 from file. Operation halted"
  0235e  3f06                  move.w   d6,-(a7)                           
  02360  4ead06ca              jsr      f7_18ec                            
  02364  60000400              bra.w    L2766                              
L2368:
  02368  7000                  moveq    #0,d0                              
  0236a  1013                  move.b   (a3),d0                            
  0236c  2d40fffc              move.l   d0,-$4(a6)                         
  02370  4267                  clr.w    -(a7)                              
  02372  3f07                  move.w   d7,-(a7)                           
  02374  486efffc              pea      -$4(a6)                            
  02378  486b0001              pea      $1(a3)                             
  0237c  4e94                  jsr      (a4)                               
  0237e  3c1f                  move.w   (a7)+,d6                           
  02380  4a46                  tst.w    d6                                 
  02382  6710                  beq.s    L2394                              
  02384  2f3c00000c58          move.l   STR_0c58,-(a7)                     ; "reading/writing wtitle from file. Operation halted"
  0238a  3f06                  move.w   d6,-(a7)                           
  0238c  4ead06ca              jsr      f7_18ec                            
  02390  600003d4              bra.w    L2766                              
L2394:
  02394  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  0239a  2f0b                  move.l   a3,-(a7)                           
  0239c  a91a                  _SetWTitle                                  ; $a91a
  0239e  2d7c0000012cfffc      move.l   #$12c,-$4(a6)                      
  023a6  4267                  clr.w    -(a7)                              
  023a8  3f07                  move.w   d7,-(a7)                           
  023aa  486efffc              pea      -$4(a6)                            
  023ae  2f3cffff83be          move.l   #$ffff83be,-(a7)                   
  023b4  4e94                  jsr      (a4)                               
  023b6  3c1f                  move.w   (a7)+,d6                           
  023b8  4a46                  tst.w    d6                                 
  023ba  6710                  beq.s    L23cc                              
  023bc  2f3c00000c8c          move.l   STR_0c8c,-(a7)                     ; "reading/writing unkid from file. Operation halted"
  023c2  3f06                  move.w   d6,-(a7)                           
  023c4  4ead06ca              jsr      f7_18ec                            
  023c8  6000039c              bra.w    L2766                              
L23cc:
  023cc  700c                  moveq    #12,d0                             
  023ce  2d40fffc              move.l   d0,-$4(a6)                         
  023d2  4267                  clr.w    -(a7)                              
  023d4  3f07                  move.w   d7,-(a7)                           
  023d6  486efffc              pea      -$4(a6)                            
  023da  2f3cffff8e4a          move.l   #$ffff8e4a,-(a7)                   
  023e0  4e94                  jsr      (a4)                               
  023e2  3c1f                  move.w   (a7)+,d6                           
  023e4  4a46                  tst.w    d6                                 
  023e6  6710                  beq.s    L23f8                              
  023e8  2f3c00000cbe          move.l   STR_0cbe,-(a7)                     ; "reading/writing ring from file. Operation halted"
  023ee  3f06                  move.w   d6,-(a7)                           
  023f0  4ead06ca              jsr      f7_18ec                            
  023f4  60000370              bra.w    L2766                              
L23f8:
  023f8  7006                  moveq    #6,d0                              
  023fa  2d40fffc              move.l   d0,-$4(a6)                         
  023fe  4267                  clr.w    -(a7)                              
  02400  3f07                  move.w   d7,-(a7)                           
  02402  486efffc              pea      -$4(a6)                            
  02406  2f3cffff9858          move.l   #$ffff9858,-(a7)                   
  0240c  4e94                  jsr      (a4)                               
  0240e  3c1f                  move.w   (a7)+,d6                           
  02410  4a46                  tst.w    d6                                 
  02412  6710                  beq.s    L2424                              
  02414  2f3c00000cf0          move.l   STR_0cf0,-(a7)                     ; "reading/writing ringprop from file. Operation halted"
  0241a  3f06                  move.w   d6,-(a7)                           
  0241c  4ead06ca              jsr      f7_18ec                            
  02420  60000344              bra.w    L2766                              
L2424:
  02424  700c                  moveq    #12,d0                             
  02426  2d40fffc              move.l   d0,-$4(a6)                         
  0242a  4267                  clr.w    -(a7)                              
  0242c  3f07                  move.w   d7,-(a7)                           
  0242e  486efffc              pea      -$4(a6)                            
  02432  2f3cffff8e56          move.l   #$ffff8e56,-(a7)                   
  02438  4e94                  jsr      (a4)                               
  0243a  3c1f                  move.w   (a7)+,d6                           
  0243c  4a46                  tst.w    d6                                 
  0243e  6710                  beq.s    L2450                              
  02440  2f3c00000d26          move.l   STR_0d26,-(a7)                     ; "reading/writing crown from file. Operation halted"
  02446  3f06                  move.w   d6,-(a7)                           
  02448  4ead06ca              jsr      f7_18ec                            
  0244c  60000318              bra.w    L2766                              
L2450:
  02450  7005                  moveq    #5,d0                              
  02452  2d40fffc              move.l   d0,-$4(a6)                         
  02456  4267                  clr.w    -(a7)                              
  02458  3f07                  move.w   d7,-(a7)                           
  0245a  486efffc              pea      -$4(a6)                            
  0245e  2f3cffff8df5          move.l   #$ffff8df5,-(a7)                   
  02464  4e94                  jsr      (a4)                               
  02466  3c1f                  move.w   (a7)+,d6                           
  02468  4a46                  tst.w    d6                                 
  0246a  6710                  beq.s    L247c                              
  0246c  2f3c00000d58          move.l   STR_0d58,-(a7)                     ; "reading/writing helmprop from file. Operation halted"
  02472  3f06                  move.w   d6,-(a7)                           
  02474  4ead06ca              jsr      f7_18ec                            
  02478  600002ec              bra.w    L2766                              
L247c:
  0247c  7007                  moveq    #7,d0                              
  0247e  2d40fffc              move.l   d0,-$4(a6)                         
  02482  4267                  clr.w    -(a7)                              
  02484  3f07                  move.w   d7,-(a7)                           
  02486  486efffc              pea      -$4(a6)                            
  0248a  2f3cffff9850          move.l   #$ffff9850,-(a7)                   
  02490  4e94                  jsr      (a4)                               
  02492  3c1f                  move.w   (a7)+,d6                           
  02494  4a46                  tst.w    d6                                 
  02496  6710                  beq.s    L24a8                              
  02498  2f3c00000d8e          move.l   STR_0d8e,-(a7)                     ; "reading/writing amulet from file. Operation halted"
  0249e  3f06                  move.w   d6,-(a7)                           
  024a0  4ead06ca              jsr      f7_18ec                            
  024a4  600002c0              bra.w    L2766                              
L24a8:
  024a8  700e                  moveq    #14,d0                             
  024aa  2d40fffc              move.l   d0,-$4(a6)                         
  024ae  4267                  clr.w    -(a7)                              
  024b0  3f07                  move.w   d7,-(a7)                           
  024b2  486efffc              pea      -$4(a6)                            
  024b6  2f3cffff97d2          move.l   #$ffff97d2,-(a7)                   
  024bc  4e94                  jsr      (a4)                               
  024be  3c1f                  move.w   (a7)+,d6                           
  024c0  4a46                  tst.w    d6                                 
  024c2  6710                  beq.s    L24d4                              
  024c4  2f3c00000dc2          move.l   STR_0dc2,-(a7)                     ; "reading/writing amulets from file. Operation halted"
  024ca  3f06                  move.w   d6,-(a7)                           
  024cc  4ead06ca              jsr      f7_18ec                            
  024d0  60000294              bra.w    L2766                              
L24d4:
  024d4  7008                  moveq    #8,d0                              
  024d6  2d40fffc              move.l   d0,-$4(a6)                         
  024da  4267                  clr.w    -(a7)                              
  024dc  3f07                  move.w   d7,-(a7)                           
  024de  486efffc              pea      -$4(a6)                            
  024e2  2f3cffff3b00          move.l   #$ffff3b00,-(a7)                   
  024e8  4e94                  jsr      (a4)                               
  024ea  3c1f                  move.w   (a7)+,d6                           
  024ec  4a46                  tst.w    d6                                 
  024ee  6710                  beq.s    L2500                              
  024f0  2f3c00000df6          move.l   STR_0df6,-(a7)                     ; "reading/writing jewelfloors from file. Operation halted"
  024f6  3f06                  move.w   d6,-(a7)                           
  024f8  4ead06ca              jsr      f7_18ec                            
  024fc  60000268              bra.w    L2766                              
L2500:
  02500  7003                  moveq    #3,d0                              
  02502  2d40fffc              move.l   d0,-$4(a6)                         
  02506  4267                  clr.w    -(a7)                              
  02508  3f07                  move.w   d7,-(a7)                           
  0250a  486efffc              pea      -$4(a6)                            
  0250e  2f3cffffa794          move.l   #$ffffa794,-(a7)                   
  02514  4e94                  jsr      (a4)                               
  02516  3c1f                  move.w   (a7)+,d6                           
  02518  4a46                  tst.w    d6                                 
  0251a  6710                  beq.s    L252c                              
  0251c  2f3c00000e2e          move.l   STR_0e2e,-(a7)                     ; "reading/writing newmagic from file. Operation halted"
  02522  3f06                  move.w   d6,-(a7)                           
  02524  4ead06ca              jsr      f7_18ec                            
  02528  6000023c              bra.w    L2766                              
L252c:
  0252c  7002                  moveq    #2,d0                              
  0252e  2d40fffc              move.l   d0,-$4(a6)                         
  02532  4267                  clr.w    -(a7)                              
  02534  3f07                  move.w   d7,-(a7)                           
  02536  486efffc              pea      -$4(a6)                            
  0253a  2f3cffff3b10          move.l   #$ffff3b10,-(a7)                   
  02540  4e94                  jsr      (a4)                               
  02542  3c1f                  move.w   (a7)+,d6                           
  02544  4a46                  tst.w    d6                                 
  02546  6710                  beq.s    L2558                              
  02548  2f3c00000e64          move.l   STR_0e64,-(a7)                     ; "reading/writing wishwells from file. Operation halted"
  0254e  3f06                  move.w   d6,-(a7)                           
  02550  4ead06ca              jsr      f7_18ec                            
  02554  60000210              bra.w    L2766                              
L2558:
  02558  7001                  moveq    #1,d0                              
  0255a  2d40fffc              move.l   d0,-$4(a6)                         
  0255e  4267                  clr.w    -(a7)                              
  02560  3f07                  move.w   d7,-(a7)                           
  02562  486efffc              pea      -$4(a6)                            
  02566  2f3cffff8df3          move.l   #$ffff8df3,-(a7)                   
  0256c  4e94                  jsr      (a4)                               
  0256e  3c1f                  move.w   (a7)+,d6                           
  02570  4a46                  tst.w    d6                                 
  02572  6710                  beq.s    L2584                              
  02574  2f3c00000e9a          move.l   STR_0e9a,-(a7)                     ; "reading/writing dspell from file. Operation halted"
  0257a  3f06                  move.w   d6,-(a7)                           
  0257c  4ead06ca              jsr      f7_18ec                            
  02580  600001e4              bra.w    L2766                              
L2584:
  02584  7001                  moveq    #1,d0                              
  02586  2d40fffc              move.l   d0,-$4(a6)                         
  0258a  4267                  clr.w    -(a7)                              
  0258c  3f07                  move.w   d7,-(a7)                           
  0258e  486efffc              pea      -$4(a6)                            
  02592  2f3cffff8df1          move.l   #$ffff8df1,-(a7)                   
  02598  4e94                  jsr      (a4)                               
  0259a  3c1f                  move.w   (a7)+,d6                           
  0259c  4a46                  tst.w    d6                                 
  0259e  6710                  beq.s    L25b0                              
  025a0  2f3c00000ece          move.l   STR_0ece,-(a7)                     ; "reading/writing necro from file. Operation halted"
  025a6  3f06                  move.w   d6,-(a7)                           
  025a8  4ead06ca              jsr      f7_18ec                            
  025ac  600001b8              bra.w    L2766                              
L25b0:
  025b0  7002                  moveq    #2,d0                              
  025b2  2d40fffc              move.l   d0,-$4(a6)                         
  025b6  4267                  clr.w    -(a7)                              
  025b8  3f07                  move.w   d7,-(a7)                           
  025ba  486efffc              pea      -$4(a6)                            
  025be  2f3cffff8836          move.l   #$ffff8836,-(a7)                   
  025c4  4e94                  jsr      (a4)                               
  025c6  3c1f                  move.w   (a7)+,d6                           
  025c8  4a46                  tst.w    d6                                 
  025ca  6710                  beq.s    L25dc                              
  025cc  2f3c00000f00          move.l   STR_0f00,-(a7)                     ; "reading/writing hunger from file. Operation halted"
  025d2  3f06                  move.w   d6,-(a7)                           
  025d4  4ead06ca              jsr      f7_18ec                            
  025d8  6000018c              bra.w    L2766                              
L25dc:
  025dc  7002                  moveq    #2,d0                              
  025de  2d40fffc              move.l   d0,-$4(a6)                         
  025e2  4267                  clr.w    -(a7)                              
  025e4  3f07                  move.w   d7,-(a7)                           
  025e6  486efffc              pea      -$4(a6)                            
  025ea  2f3cffff8832          move.l   #$ffff8832,-(a7)                   
  025f0  4e94                  jsr      (a4)                               
  025f2  3c1f                  move.w   (a7)+,d6                           
  025f4  4a46                  tst.w    d6                                 
  025f6  6710                  beq.s    L2608                              
  025f8  2f3c00000f34          move.l   STR_0f34,-(a7)                     ; "reading/writing movecount from file. Operation halted"
  025fe  3f06                  move.w   d6,-(a7)                           
  02600  4ead06ca              jsr      f7_18ec                            
  02604  60000160              bra.w    L2766                              
L2608:
  02608  700f                  moveq    #15,d0                             
  0260a  2d40fffc              move.l   d0,-$4(a6)                         
  0260e  4267                  clr.w    -(a7)                              
  02610  3f07                  move.w   d7,-(a7)                           
  02612  486efffc              pea      -$4(a6)                            
  02616  2f3cffff980f          move.l   #$ffff980f,-(a7)                   
  0261c  4e94                  jsr      (a4)                               
  0261e  3c1f                  move.w   (a7)+,d6                           
  02620  4a46                  tst.w    d6                                 
  02622  6710                  beq.s    L2634                              
  02624  2f3c00000f6a          move.l   STR_0f6a,-(a7)                     ; "reading/writing options from file. Operation halted"
  0262a  3f06                  move.w   d6,-(a7)                           
  0262c  4ead06ca              jsr      f7_18ec                            
  02630  60000134              bra.w    L2766                              
L2634:
  02634  700c                  moveq    #12,d0                             
  02636  2d40fffc              move.l   d0,-$4(a6)                         
  0263a  4267                  clr.w    -(a7)                              
  0263c  3f07                  move.w   d7,-(a7)                           
  0263e  486efffc              pea      -$4(a6)                            
  02642  2f3cffff8e3e          move.l   #$ffff8e3e,-(a7)                   
  02648  4e94                  jsr      (a4)                               
  0264a  3c1f                  move.w   (a7)+,d6                           
  0264c  4a46                  tst.w    d6                                 
  0264e  6710                  beq.s    L2660                              
  02650  2f3c00000f9e          move.l   STR_0f9e,-(a7)                     ; "reading/writing spells from file. Operation halted"
  02656  3f06                  move.w   d6,-(a7)                           
  02658  4ead06ca              jsr      f7_18ec                            
  0265c  60000108              bra.w    L2766                              
L2660:
  02660  2d7c000001a4fffc      move.l   #$1a4,-$4(a6)                      
  02668  4267                  clr.w    -(a7)                              
  0266a  3f07                  move.w   d7,-(a7)                           
  0266c  486efffc              pea      -$4(a6)                            
  02670  2f3cffff84ea          move.l   #$ffff84ea,-(a7)                   
  02676  4e94                  jsr      (a4)                               
  02678  3c1f                  move.w   (a7)+,d6                           
  0267a  4a46                  tst.w    d6                                 
  0267c  6710                  beq.s    L268e                              
  0267e  2f3c00000fd2          move.l   STR_0fd2,-(a7)                     ; "reading/writing chesttreasure from file. Operation halted"
  02684  3f06                  move.w   d6,-(a7)                           
  02686  4ead06ca              jsr      f7_18ec                            
  0268a  600000da              bra.w    L2766                              
L268e:
  0268e  2d7c000001a4fffc      move.l   #$1a4,-$4(a6)                      
  02696  4267                  clr.w    -(a7)                              
  02698  3f07                  move.w   d7,-(a7)                           
  0269a  486efffc              pea      -$4(a6)                            
  0269e  2f3cffff868e          move.l   #$ffff868e,-(a7)                   
  026a4  4e94                  jsr      (a4)                               
  026a6  3c1f                  move.w   (a7)+,d6                           
  026a8  4a46                  tst.w    d6                                 
  026aa  6710                  beq.s    L26bc                              
  026ac  2f3c0000100c          move.l   STR_100c,-(a7)                     ; "reading/writing chestreasurebonus from file. Operation halte"
  026b2  3f06                  move.w   d6,-(a7)                           
  026b4  4ead06ca              jsr      f7_18ec                            
  026b8  600000ac              bra.w    L2766                              
L26bc:
  026bc  700c                  moveq    #12,d0                             
  026be  2d40fffc              move.l   d0,-$4(a6)                         
  026c2  4267                  clr.w    -(a7)                              
  026c4  3f07                  move.w   d7,-(a7)                           
  026c6  486efffc              pea      -$4(a6)                            
  026ca  2f3cffff784a          move.l   #$ffff784a,-(a7)                   
  026d0  4e94                  jsr      (a4)                               
  026d2  3c1f                  move.w   (a7)+,d6                           
  026d4  4a46                  tst.w    d6                                 
  026d6  6710                  beq.s    L26e8                              
  026d8  2f3c0000104a          move.l   STR_104a,-(a7)                     ; "reading/writing shoproom from file. Operation halted"
  026de  3f06                  move.w   d6,-(a7)                           
  026e0  4ead06ca              jsr      f7_18ec                            
  026e4  60000080              bra.w    L2766                              
L26e8:
  026e8  700c                  moveq    #12,d0                             
  026ea  2d40fffc              move.l   d0,-$4(a6)                         
  026ee  4267                  clr.w    -(a7)                              
  026f0  3f07                  move.w   d7,-(a7)                           
  026f2  486efffc              pea      -$4(a6)                            
  026f6  2f3cffff7856          move.l   #$ffff7856,-(a7)                   
  026fc  4e94                  jsr      (a4)                               
  026fe  3c1f                  move.w   (a7)+,d6                           
  02700  4a46                  tst.w    d6                                 
  02702  670e                  beq.s    L2712                              
  02704  2f3c00001080          move.l   STR_1080,-(a7)                     ; "reading/writing shopwall from file. Operation halted"
  0270a  3f06                  move.w   d6,-(a7)                           
  0270c  4ead06ca              jsr      f7_18ec                            
  02710  6054                  bra.s    L2766                              
L2712:
  02712  7030                  moveq    #48,d0                             
  02714  2d40fffc              move.l   d0,-$4(a6)                         
  02718  4267                  clr.w    -(a7)                              
  0271a  3f07                  move.w   d7,-(a7)                           
  0271c  486efffc              pea      -$4(a6)                            
  02720  2f3cffff7862          move.l   #$ffff7862,-(a7)                   
  02726  4e94                  jsr      (a4)                               
  02728  3c1f                  move.w   (a7)+,d6                           
  0272a  4a46                  tst.w    d6                                 
  0272c  670e                  beq.s    L273c                              
  0272e  2f3c000010b6          move.l   STR_10b6,-(a7)                     ; "reading/writing shop from file. Operation halted"
  02734  3f06                  move.w   d6,-(a7)                           
  02736  4ead06ca              jsr      f7_18ec                            
  0273a  602a                  bra.s    L2766                              
L273c:
  0273c  2d7c000009d8fffc      move.l   #$9d8,-$4(a6)                      
  02744  4267                  clr.w    -(a7)                              
  02746  3f07                  move.w   d7,-(a7)                           
  02748  486efffc              pea      -$4(a6)                            
  0274c  2f3cffff7892          move.l   #$ffff7892,-(a7)                   
  02752  4e94                  jsr      (a4)                               
  02754  3c1f                  move.w   (a7)+,d6                           
  02756  4a46                  tst.w    d6                                 
  02758  670c                  beq.s    L2766                              
  0275a  2f3c000010e8          move.l   STR_10e8,-(a7)                     ; "reading/writing doorcodes from file. Operation halted"
  02760  3f06                  move.w   d6,-(a7)                           
  02762  4ead06ca              jsr      f7_18ec                            
L2766:
  02766  4cee18c0fee4          movem.l  -$11c(a6),d6/d7/a3/a4              
  0276c  4e5e                  unlk     a6                                 
  0276e  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_2770   [jump table #170]
;----------------------------------------------------------------------
f5_2770:
  02770  4e56ffa0              link     a6,#-96                            
  02774  2f07                  move.l   d7,-(a7)                           
  02776  426effa0              clr.w    -$60(a6)                           
  0277a  2079ffff9382          movea.l  g_6c7e,a0                          
  02780  2d680010ffa2          move.l   $10(a0),-$5e(a6)                   
  02786  2d680014ffa6          move.l   $14(a0),-$5a(a6)                   
  0278c  4ead01d2              jsr      f2_6b9e                            
  02790  7e00                  moveq    #0,d7                              
  02792  600c                  bra.s    L27a0                              
L2794:
  02794  3db073b0ffff8c7872d6  move.w   (-$7388,za0,d7.w*2),-$2a(a6,d7.w*2)
  0279e  5247                  addq.w   #1,d7                              
L27a0:
  027a0  0c470015              cmpi.w   #$15,d7                            
  027a4  6dee                  blt.s    L2794                              
  027a6  7e01                  moveq    #1,d7                              
  027a8  600c                  bra.s    L27b6                              
L27aa:
  027aa  3db073b0ffff8ccc72ac  move.w   (-$7334,za0,d7.w*2),-$54(a6,d7.w*2)
  027b4  5247                  addq.w   #1,d7                              
L27b6:
  027b6  0c470015              cmpi.w   #$15,d7                            
  027ba  6dee                  blt.s    L27aa                              
  027bc  1f3c0001              move.b   #1,-(a7)                           
  027c0  3f39ffff8894          move.w   g_776c,-(a7)                       
  027c6  4ead0412              jsr      f4_411c                            
  027ca  7e00                  moveq    #0,d7                              
  027cc  588f                  addq.l   #4,a7                              
  027ce  600c                  bra.s    L27dc                              
L27d0:
  027d0  31b672d673b0ffff8c78  move.w   -$2a(a6,d7.w*2),(-$7388,za0,d7.w*2)
  027da  5247                  addq.w   #1,d7                              
L27dc:
  027dc  0c470015              cmpi.w   #$15,d7                            
  027e0  6dee                  blt.s    L27d0                              
  027e2  7e01                  moveq    #1,d7                              
  027e4  600c                  bra.s    L27f2                              
L27e6:
  027e6  31b672ac73b0ffff8ccc  move.w   -$54(a6,d7.w*2),(-$7334,za0,d7.w*2)
  027f0  5247                  addq.w   #1,d7                              
L27f2:
  027f2  0c470015              cmpi.w   #$15,d7                            
  027f6  6dee                  blt.s    L27e6                              
  027f8  4ead018a              jsr      f2_6450                            
  027fc  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  02802  4ead01e2              jsr      f2_6ca0                            
  02806  4ead0142              jsr      f2_4440                            
  0280a  4ead01b2              jsr      f2_6a2a                            
  0280e  7e01                  moveq    #1,d7                              
  02810  548f                  addq.l   #2,a7                              
  02812  6040                  bra.s    L2854                              
L2814:
  02814  4a7073b0ffff83be      tst.w    (-$7c42,za0,d7.w*2)                
  0281c  6c1e                  bge.s    L283c                              
  0281e  3f3073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),-(a7)          
  02826  4ead024a              jsr      f2_7a2c                            
  0282a  21b005b0ffff686875b0  move.l   (-$9798,za0,d0.w*4),(-$8a36,za0,d7.w*4)
  02838  548f                  addq.l   #2,a7                              
  0283a  6016                  bra.s    L2852                              
L283c:
  0283c  303073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),d0             
  02844  21b005b0ffff735a75b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d7.w*4)
L2852:
  02852  5247                  addq.w   #1,d7                              
L2854:
  02854  0c470013              cmpi.w   #$13,d7                            
  02858  6fba                  ble.s    L2814                              
  0285a  7e14                  moveq    #20,d7                             
  0285c  6040                  bra.s    L289e                              
L285e:
  0285e  4a7073b0ffff83be      tst.w    (-$7c42,za0,d7.w*2)                
  02866  6c1e                  bge.s    L2886                              
  02868  3f3073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),-(a7)          
  02870  4ead024a              jsr      f2_7a2c                            
  02874  21b005b0ffff826a75b0  move.l   (-$7d96,za0,d0.w*4),(-$8a36,za0,d7.w*4)
  02882  548f                  addq.l   #2,a7                              
  02884  6016                  bra.s    L289c                              
L2886:
  02886  303073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),d0             
  0288e  21b005b0ffff735a75b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d7.w*4)
L289c:
  0289c  5247                  addq.w   #1,d7                              
L289e:
  0289e  0c470029              cmpi.w   #$29,d7                            
  028a2  6fba                  ble.s    L285e                              
  028a4  7e2a                  moveq    #42,d7                             
  028a6  6040                  bra.s    L28e8                              
L28a8:
  028a8  4a7073b0ffff83be      tst.w    (-$7c42,za0,d7.w*2)                
  028b0  6c1e                  bge.s    L28d0                              
  028b2  3f3073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),-(a7)          
  028ba  4ead024a              jsr      f2_7a2c                            
  028be  21b005b0ffff68e075b0  move.l   (-$9720,za0,d0.w*4),(-$8a36,za0,d7.w*4)
  028cc  548f                  addq.l   #2,a7                              
  028ce  6016                  bra.s    L28e6                              
L28d0:
  028d0  303073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),d0             
  028d8  21b005b0ffff735a75b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d7.w*4)
L28e6:
  028e6  5247                  addq.w   #1,d7                              
L28e8:
  028e8  0c470038              cmpi.w   #$38,d7                            
  028ec  6fba                  ble.s    L28a8                              
  028ee  7e39                  moveq    #57,d7                             
  028f0  6040                  bra.s    L2932                              
L28f2:
  028f2  4a7073b0ffff83be      tst.w    (-$7c42,za0,d7.w*2)                
  028fa  6c1e                  bge.s    L291a                              
  028fc  3f3073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),-(a7)          
  02904  4ead024a              jsr      f2_7a2c                            
  02908  21b005b0ffff695875b0  move.l   (-$96a8,za0,d0.w*4),(-$8a36,za0,d7.w*4)
  02916  548f                  addq.l   #2,a7                              
  02918  6016                  bra.s    L2930                              
L291a:
  0291a  303073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),d0             
  02922  21b005b0ffff735a75b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d7.w*4)
L2930:
  02930  5247                  addq.w   #1,d7                              
L2932:
  02932  0c47003d              cmpi.w   #$3d,d7                            
  02936  6fba                  ble.s    L28f2                              
  02938  7e3e                  moveq    #62,d7                             
  0293a  6040                  bra.s    L297c                              
L293c:
  0293c  4a7073b0ffff83be      tst.w    (-$7c42,za0,d7.w*2)                
  02944  6c1e                  bge.s    L2964                              
  02946  3f3073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),-(a7)          
  0294e  4ead024a              jsr      f2_7a2c                            
  02952  21b005b0ffff68e075b0  move.l   (-$9720,za0,d0.w*4),(-$8a36,za0,d7.w*4)
  02960  548f                  addq.l   #2,a7                              
  02962  6016                  bra.s    L297a                              
L2964:
  02964  303073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),d0             
  0296c  21b005b0ffff735a75b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d7.w*4)
L297a:
  0297a  5247                  addq.w   #1,d7                              
L297c:
  0297c  0c470041              cmpi.w   #$41,d7                            
  02980  6fba                  ble.s    L293c                              
  02982  7e42                  moveq    #66,d7                             
  02984  6040                  bra.s    L29c6                              
L2986:
  02986  4a7073b0ffff83be      tst.w    (-$7c42,za0,d7.w*2)                
  0298e  6c1e                  bge.s    L29ae                              
  02990  3f3073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),-(a7)          
  02998  4ead024a              jsr      f2_7a2c                            
  0299c  21b005b0ffff68e075b0  move.l   (-$9720,za0,d0.w*4),(-$8a36,za0,d7.w*4)
  029aa  548f                  addq.l   #2,a7                              
  029ac  6016                  bra.s    L29c4                              
L29ae:
  029ae  303073b0ffff83be      move.w   (-$7c42,za0,d7.w*2),d0             
  029b6  21b005b0ffff735a75b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d7.w*4)
L29c4:
  029c4  5247                  addq.w   #1,d7                              
L29c6:
  029c6  0c470047              cmpi.w   #$47,d7                            
  029ca  6fba                  ble.s    L2986                              
  029cc  4a79ffff8dac          tst.w    g_7254                             
  029d2  6c06                  bge.s    L29da                              
  029d4  4279ffff8dac          clr.w    g_7254                             
L29da:
  029da  4a79ffff8db2          tst.w    g_724e                             
  029e0  6c06                  bge.s    L29e8                              
  029e2  4279ffff8db2          clr.w    g_724e                             
L29e8:
  029e8  33f9ffff3d30ffff3ad2  move.w   g_c2d0,g_c52e                      
  029f2  33f9ffff3d3cffff3ad0  move.w   g_c2c4,g_c530                      
  029fc  33f9ffff8c78ffff83b6  move.w   g_7388,g_7c4a                      
  02a06  1f3c0001              move.b   #1,-(a7)                           
  02a0a  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  02a10  4ead016a              jsr      f2_549e                            
  02a14  4ead013a              jsr      f2_4410                            
  02a18  4ead075a              jsr      f7_31f0                            
  02a1c  4ead074a              jsr      f7_2f40                            
  02a20  4eba0f62              jsr      f5_3984                            
  02a24  2079ffff99f8          movea.l  g_6608,a0                          
  02a2a  20680002              movea.l  $2(a0),a0                          
  02a2e  2e90                  move.l   (a0),(a7)                          
  02a30  2079ffff9382          movea.l  g_6c7e,a0                          
  02a36  48680002              pea      $2(a0)                             
  02a3a  486effa2              pea      -$5e(a6)                           
  02a3e  486effa2              pea      -$5e(a6)                           
  02a42  4267                  clr.w    -(a7)                              
  02a44  42a7                  clr.l    -(a7)                              
  02a46  a8ec                  _CopyBits                                   ; $a8ec
  02a48  2e1f                  move.l   (a7)+,d7                           
  02a4a  4e5e                  unlk     a6                                 
  02a4c  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_2a4e   [jump table #171]
;----------------------------------------------------------------------
f5_2a4e:
  02a4e  4e56fa52              link     a6,#-1454                          
  02a52  48e70308              movem.l  d6/d7/a4,-(a7)                     
  02a56  3e2e0008              move.w   $8(a6),d7                          
  02a5a  486efe56              pea      -$1aa(a6)                          
  02a5e  2f3c000b02bc          move.l   #$b02bc,-(a7)                      
  02a64  4ead0522              jsr      f4_153c                            
  02a68  486efe56              pea      -$1aa(a6)                          
  02a6c  4ead05fa              jsr      f6_0130                            
  02a70  1c00                  move.b   d0,d6                              
  02a72  4a06                  tst.b    d6                                 
  02a74  588f                  addq.l   #4,a7                              
  02a76  6710                  beq.s    L2a88                              
  02a78  486efa56              pea      -$5aa(a6)                          
  02a7c  2f3c000202bb          move.l   #$202bb,-(a7)                      
  02a82  4ead0522              jsr      f4_153c                            
  02a86  600e                  bra.s    L2a96                              
L2a88:
  02a88  486efa56              pea      -$5aa(a6)                          
  02a8c  2f3c000102bb          move.l   #$102bb,-(a7)                      
  02a92  4ead0522              jsr      f4_153c                            
L2a96:
  02a96  307073b0ffff8ba6      movea.w  (-$745a,za0,d7.w*2),a0             
  02a9e  2f08                  move.l   a0,-(a7)                           
  02aa0  486efc56              pea      -$3aa(a6)                          
  02aa4  4ead0512              jsr      f4_150e                            
  02aa8  0c70000173b0ffff8ba6  cmpi.w   #1,(-$745a,za0,d7.w*2)             
  02ab2  6610                  bne.s    L2ac4                              
  02ab4  486efb56              pea      -$4aa(a6)                          
  02ab8  2f3c001702bc          move.l   #$1702bc,-(a7)                     
  02abe  4ead0522              jsr      f4_153c                            
  02ac2  600e                  bra.s    L2ad2                              
L2ac4:
  02ac4  486efb56              pea      -$4aa(a6)                          
  02ac8  2f3c000c02bc          move.l   #$c02bc,-(a7)                      
  02ace  4ead0522              jsr      f4_153c                            
L2ad2:
  02ad2  486efa56              pea      -$5aa(a6)                          
  02ad6  486efe56              pea      -$1aa(a6)                          
  02ada  486efc56              pea      -$3aa(a6)                          
  02ade  486efb56              pea      -$4aa(a6)                          
  02ae2  a98b                  _ParamText                                  ; $a98b
  02ae4  42a7                  clr.l    -(a7)                              
  02ae6  3f3c00fd              move.w   #$fd,-(a7)                         
  02aea  486eff56              pea      -$aa(a6)                           
  02aee  4878ffff              pea      ($ffff).w                          
  02af2  a97c                  _GetNewDialog                               ; $a97c
  02af4  285f                  movea.l  (a7)+,a4                           
  02af6  2f0c                  move.l   a4,-(a7)                           
  02af8  4ead06ba              jsr      f7_161c                            
  02afc  2e8c                  move.l   a4,(a7)                            
  02afe  a915                  _ShowWindow                                 ; $a915
  02b00  2f0c                  move.l   a4,-(a7)                           
  02b02  a981                  _DrawDialog                                 ; $a981
  02b04  43eefa52              lea      -$5ae(a6),a1                       
  02b08  307c0078              movea.w  #$78,a0                            
  02b0c  a03b                  _Delay                                      ; $a03b
  02b0e  2280                  move.l   d0,(a1)                            
  02b10  2f0c                  move.l   a4,-(a7)                           
  02b12  a983                  _DisposeDialog                              ; $a983
  02b14  307073b0ffff8ba6      movea.w  (-$745a,za0,d7.w*2),a0             
  02b1c  2008                  move.l   a0,d0                              
  02b1e  d1b9ffff83a6          add.l    d0,g_7c5a                          
  02b24  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  02b2c  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  02b34  3f3073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),-(a7)          
  02b3c  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  02b44  4ead008a              jsr      f2_0c6e                            
  02b48  4ead01ba              jsr      f2_6a8c                            
  02b4c  4cee10c0fa46          movem.l  -$5ba(a6),d6/d7/a4                 
  02b52  4e5e                  unlk     a6                                 
  02b54  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_2b56   [jump table #172]
;----------------------------------------------------------------------
f5_2b56:
  02b56  4e56fd52              link     a6,#-686                           
  02b5a  2f0c                  move.l   a4,-(a7)                           
  02b5c  426eff54              clr.w    -$ac(a6)                           
  02b60  0c790004ffff8dbe      cmpi.w   #4,g_7242                          
  02b68  6c000086              bge.w    L2bf0                              
  02b6c  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02b72  486efe52              pea      -$1ae(a6)                          
  02b76  a919                  _GetWTitle                                  ; $a919
  02b78  486efd52              pea      -$2ae(a6)                          
  02b7c  3f3c2711              move.w   #$2711,-(a7)                       
  02b80  7001                  moveq    #1,d0                              
  02b82  d079ffff8dbe          add.w    g_7242,d0                          
  02b88  3f00                  move.w   d0,-(a7)                           
  02b8a  4ead0522              jsr      f4_153c                            
  02b8e  486efe52              pea      -$1ae(a6)                          
  02b92  486efd52              pea      -$2ae(a6)                          
  02b96  2f3c0000111e          move.l   STR_111e,-(a7)                     ; "?"
  02b9c  2f3c00001120          move.l   STR_1120,-(a7)                     ; "?"
  02ba2  a98b                  _ParamText                                  ; $a98b
  02ba4  42a7                  clr.l    -(a7)                              
  02ba6  3f3c270f              move.w   #$270f,-(a7)                       
  02baa  486eff56              pea      -$aa(a6)                           
  02bae  4878ffff              pea      ($ffff).w                          
  02bb2  a97c                  _GetNewDialog                               ; $a97c
  02bb4  285f                  movea.l  (a7)+,a4                           
  02bb6  2f0c                  move.l   a4,-(a7)                           
  02bb8  4ead06ba              jsr      f7_161c                            
  02bbc  2e8c                  move.l   a4,(a7)                            
  02bbe  a915                  _ShowWindow                                 ; $a915
L2bc0:
  02bc0  42a7                  clr.l    -(a7)                              
  02bc2  486eff54              pea      -$ac(a6)                           
  02bc6  a991                  _ModalDialog                                ; $a991
  02bc8  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  02bce  66f0                  bne.s    L2bc0                              
  02bd0  2f0c                  move.l   a4,-(a7)                           
  02bd2  a983                  _DisposeDialog                              ; $a983
  02bd4  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  02bda  a915                  _ShowWindow                                 ; $a915
  02bdc  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02be2  a915                  _ShowWindow                                 ; $a915
  02be4  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02bea  a915                  _ShowWindow                                 ; $a915
  02bec  7000                  moveq    #0,d0                              
  02bee  6058                  bra.s    L2c48                              
L2bf0:
  02bf0  42a7                  clr.l    -(a7)                              
  02bf2  3f3c2711              move.w   #$2711,-(a7)                       
  02bf6  486eff56              pea      -$aa(a6)                           
  02bfa  4878ffff              pea      ($ffff).w                          
  02bfe  a97c                  _GetNewDialog                               ; $a97c
  02c00  285f                  movea.l  (a7)+,a4                           
  02c02  2f0c                  move.l   a4,-(a7)                           
  02c04  4ead06ba              jsr      f7_161c                            
  02c08  588f                  addq.l   #4,a7                              
L2c0a:
  02c0a  42a7                  clr.l    -(a7)                              
  02c0c  486eff54              pea      -$ac(a6)                           
  02c10  a991                  _ModalDialog                                ; $a991
  02c12  4a6eff54              tst.w    -$ac(a6)                           
  02c16  67f2                  beq.s    L2c0a                              
  02c18  2f0c                  move.l   a4,-(a7)                           
  02c1a  a983                  _DisposeDialog                              ; $a983
  02c1c  302eff54              move.w   -$ac(a6),d0                        
  02c20  6726                  beq.s    L2c48                              
  02c22  6b24                  bmi.s    L2c48                              
  02c24  5540                  subq.w   #2,d0                              
  02c26  6706                  beq.s    L2c2e                              
  02c28  6a1e                  bpl.s    L2c48                              
  02c2a  7001                  moveq    #1,d0                              
  02c2c  601a                  bra.s    L2c48                              
L2c2e:
  02c2e  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  02c34  a915                  _ShowWindow                                 ; $a915
  02c36  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02c3c  a915                  _ShowWindow                                 ; $a915
  02c3e  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02c44  a915                  _ShowWindow                                 ; $a915
  02c46  7000                  moveq    #0,d0                              
L2c48:
  02c48  285f                  movea.l  (a7)+,a4                           
  02c4a  4e5e                  unlk     a6                                 
  02c4c  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_2c4e   [jump table #173]
;----------------------------------------------------------------------
f5_2c4e:
  02c4e  4e56fd9a              link     a6,#-614                           
  02c52  48e71f18              movem.l  d3/d4/d5/d6/d7/a3/a4,-(a7)         
  02c56  2d79ffffae2eff3c      move.l   g_51d2,-$c4(a6)                    
  02c5e  2d79ffffae32ff40      move.l   g_51ce,-$c0(a6)                    
  02c66  2d79ffffae36ff34      move.l   g_51ca,-$cc(a6)                    
  02c6e  2d79ffffae3aff38      move.l   g_51c6,-$c8(a6)                    
  02c76  3a39ffff3ad0          move.w   g_c530,d5                          
  02c7c  3839ffff3ad2          move.w   g_c52e,d4                          
  02c82  7600                  moveq    #0,d3                              
  02c84  426efd9c              clr.w    -$264(a6)                          
  02c88  426efd9a              clr.w    -$266(a6)                          
  02c8c  426efd9e              clr.w    -$262(a6)                          
  02c90  486efeaa              pea      -$156(a6)                          
  02c94  a874                  _GetPort                                    ; $a874
  02c96  486efef2              pea      -$10e(a6)                          
  02c9a  42a7                  clr.l    -(a7)                              
  02c9c  2f3c00820078          move.l   #$820078,-(a7)                     
  02ca2  a8a7                  _SetRect                                    ; $a8a7
  02ca4  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  02caa  a916                  _HideWindow                                 ; $a916
  02cac  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02cb2  a916                  _HideWindow                                 ; $a916
  02cb4  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02cba  a916                  _HideWindow                                 ; $a916
  02cbc  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  02cc2  a916                  _HideWindow                                 ; $a916
  02cc4  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  02cca  a916                  _HideWindow                                 ; $a916
  02ccc  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  02cd2  a916                  _HideWindow                                 ; $a916
  02cd4  42a7                  clr.l    -(a7)                              
  02cd6  3f3c0081              move.w   #$81,-(a7)                         
  02cda  a9bc                  _GetPicture                                 ; $a9bc
  02cdc  265f                  movea.l  (a7)+,a3                           
  02cde  204b                  movea.l  a3,a0                              
  02ce0  a029                  _HLock                                      ; $a029
  02ce2  2f39ffff99f8          move.l   g_6608,-(a7)                       
  02ce8  a873                  _SetPort                                    ; $a873
  02cea  2079ffff99f8          movea.l  g_6608,a0                          
  02cf0  48680010              pea      $10(a0)                            
  02cf4  a8a3                  _EraseRect                                  ; $a8a3
  02cf6  426eff44              clr.w    -$bc(a6)                           
  02cfa  6014                  bra.s    L2d10                              
L2cfc:
  02cfc  302eff44              move.w   -$bc(a6),d0                        
  02d00  3200                  move.w   d0,d1                              
  02d02  06412328              addi.w   #$2328,d1                          
  02d06  3d810320fea2          move.w   d1,(-$15e,a6,d0.w*2)               
  02d0c  526eff44              addq.w   #1,-$bc(a6)                        
L2d10:
  02d10  0c6e0004ff44          cmpi.w   #4,-$bc(a6)                        
  02d16  6de4                  blt.s    L2cfc                              
  02d18  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  02d1e  a851                  _SetCursor                                  ; $a851
  02d20  42a7                  clr.l    -(a7)                              
  02d22  3f3c2710              move.w   #$2710,-(a7)                       
  02d26  486eff56              pea      -$aa(a6)                           
  02d2a  4878ffff              pea      ($ffff).w                          
  02d2e  a97c                  _GetNewDialog                               ; $a97c
  02d30  285f                  movea.l  (a7)+,a4                           
  02d32  2f0c                  move.l   a4,-(a7)                           
  02d34  4ead06ba              jsr      f7_161c                            
  02d38  2e8c                  move.l   a4,(a7)                            
  02d3a  a915                  _ShowWindow                                 ; $a915
  02d3c  7e02                  moveq    #2,d7                              
  02d3e  601c                  bra.s    L2d5c                              
L2d40:
  02d40  2f0c                  move.l   a4,-(a7)                           
  02d42  3f07                  move.w   d7,-(a7)                           
  02d44  486eff44              pea      -$bc(a6)                           
  02d48  486efeae              pea      -$152(a6)                          
  02d4c  48767720fef2          pea      (-$10e,a6,d7.w*8)                  
  02d52  a98d                  _GetDialogItem                              ; $a98d
  02d54  2f0c                  move.l   a4,-(a7)                           
  02d56  3f07                  move.w   d7,-(a7)                           
  02d58  a827                  _ShowDialogItem                             ; $a827
  02d5a  5247                  addq.w   #1,d7                              
L2d5c:
  02d5c  0c470006              cmpi.w   #6,d7                              
  02d60  6dde                  blt.s    L2d40                              
  02d62  2f0c                  move.l   a4,-(a7)                           
  02d64  3f3c0001              move.w   #1,-(a7)                           
  02d68  486eff44              pea      -$bc(a6)                           
  02d6c  486efeae              pea      -$152(a6)                          
  02d70  486efefa              pea      -$106(a6)                          
  02d74  a98d                  _GetDialogItem                              ; $a98d
  02d76  2d6c0010fefa          move.l   $10(a4),-$106(a6)                  
  02d7c  2d6c0014fefe          move.l   $14(a4),-$102(a6)                  
  02d82  2f0b                  move.l   a3,-(a7)                           
  02d84  486efefa              pea      -$106(a6)                          
  02d88  a8f6                  _DrawPicture                                ; $a8f6
  02d8a  2f0c                  move.l   a4,-(a7)                           
  02d8c  a915                  _ShowWindow                                 ; $a915
  02d8e  2079ffff99f8          movea.l  g_6608,a0                          
  02d94  20680002              movea.l  $2(a0),a0                          
  02d98  2f10                  move.l   (a0),-(a7)                         
  02d9a  486c0002              pea      $2(a4)                             
  02d9e  486efefa              pea      -$106(a6)                          
  02da2  486efefa              pea      -$106(a6)                          
  02da6  4267                  clr.w    -(a7)                              
  02da8  42a7                  clr.l    -(a7)                              
  02daa  a8ec                  _CopyBits                                   ; $a8ec
  02dac  e3f9ffff3ad0          lsl.w    g_c530                             
  02db2  e3f9ffff3ad2          lsl.w    g_c52e                             
  02db8  7e00                  moveq    #0,d7                              
  02dba  6076                  bra.s    L2e32                              
L2dbc:
  02dbc  4ead06ea              jsr      f7_1f7c                            
  02dc0  1d40fea1              move.b   d0,-$15f(a6)                       
  02dc4  4a00                  tst.b    d0                                 
  02dc6  6616                  bne.s    L2dde                              
  02dc8  2f0c                  move.l   a4,-(a7)                           
  02dca  a983                  _DisposeDialog                              ; $a983
  02dcc  33c5ffff3ad0          move.w   d5,g_c530                          
  02dd2  33c4ffff3ad2          move.w   d4,g_c52e                          
  02dd8  7000                  moveq    #0,d0                              
  02dda  6000045a              bra.w    L3236                              
L2dde:
  02dde  3f3c5bd5              move.w   #$5bd5,-(a7)                       
  02de2  4ead030a              jsr      f3_4238                            
  02de6  2f39ffff99f8          move.l   g_6608,-(a7)                       
  02dec  a873                  _SetPort                                    ; $a873
  02dee  3eb67320fea2          move.w   (-$15e,a6,d7.w*2),(a7)             
  02df4  48767720ff02          pea      (-$fe,a6,d7.w*8)                   
  02dfa  4ead06d2              jsr      f7_1a72                            
  02dfe  43eeff2e              lea      -$d2(a6),a1                        
  02e02  2079ffff9828          movea.l  g_67d8,a0                          
  02e08  a03b                  _Delay                                      ; $a03b
  02e0a  2280                  move.l   d0,(a1)                            
  02e0c  2079ffff99f8          movea.l  g_6608,a0                          
  02e12  20680002              movea.l  $2(a0),a0                          
  02e16  2e90                  move.l   (a0),(a7)                          
  02e18  486c0002              pea      $2(a4)                             
  02e1c  486efefa              pea      -$106(a6)                          
  02e20  486efefa              pea      -$106(a6)                          
  02e24  4267                  clr.w    -(a7)                              
  02e26  42a7                  clr.l    -(a7)                              
  02e28  a8ec                  _CopyBits                                   ; $a8ec
  02e2a  4ead0312              jsr      f3_4384                            
  02e2e  548f                  addq.l   #2,a7                              
  02e30  5247                  addq.w   #1,d7                              
L2e32:
  02e32  0c470004              cmpi.w   #4,d7                              
  02e36  6d84                  blt.s    L2dbc                              
  02e38  2f39ffff99f4          move.l   g_660c,-(a7)                       
  02e3e  a873                  _SetPort                                    ; $a873
  02e40  2079ffff99f4          movea.l  g_660c,a0                          
  02e46  48680010              pea      $10(a0)                            
  02e4a  a8a3                  _EraseRect                                  ; $a8a3
  02e4c  a852                  _HideCursor                                 ; $a852
  02e4e  3f3c5bd6              move.w   #$5bd6,-(a7)                       
  02e52  4ead030a              jsr      f3_4238                            
  02e56  2f0b                  move.l   a3,-(a7)                           
  02e58  486efefa              pea      -$106(a6)                          
  02e5c  a8f6                  _DrawPicture                                ; $a8f6
  02e5e  2f39ffff99f8          move.l   g_6608,-(a7)                       
  02e64  a873                  _SetPort                                    ; $a873
  02e66  486efd9a              pea      -$266(a6)                          
  02e6a  aa14                  _RGBForeColor                               ; $aa14
  02e6c  2079ffff99f4          movea.l  g_660c,a0                          
  02e72  20680002              movea.l  $2(a0),a0                          
  02e76  2f10                  move.l   (a0),-(a7)                         
  02e78  2079ffff99f8          movea.l  g_6608,a0                          
  02e7e  20680002              movea.l  $2(a0),a0                          
  02e82  2f10                  move.l   (a0),-(a7)                         
  02e84  486efefa              pea      -$106(a6)                          
  02e88  486efefa              pea      -$106(a6)                          
  02e8c  4267                  clr.w    -(a7)                              
  02e8e  42a7                  clr.l    -(a7)                              
  02e90  a8ec                  _CopyBits                                   ; $a8ec
  02e92  7c00                  moveq    #0,d6                              
  02e94  426eff44              clr.w    -$bc(a6)                           
  02e98  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  02e9e  201f                  move.l   (a7)+,d0                           
  02ea0  a032                  _FlushEvents                                ; $a032
  02ea2  548f                  addq.l   #2,a7                              
  02ea4  600000b8              bra.w    L2f5e                              
L2ea8:
  02ea8  4227                  clr.b    -(a7)                              
  02eaa  3f3c0002              move.w   #2,-(a7)                           
  02eae  486eff46              pea      -$ba(a6)                           
  02eb2  a970                  _GetNextEvent                               ; $a970
  02eb4  7000                  moveq    #0,d0                              
  02eb6  101f                  move.b   (a7)+,d0                           
  02eb8  3d40ff44              move.w   d0,-$bc(a6)                        
  02ebc  2079ffff99f4          movea.l  g_660c,a0                          
  02ec2  20680002              movea.l  $2(a0),a0                          
  02ec6  2f10                  move.l   (a0),-(a7)                         
  02ec8  2079ffff99f8          movea.l  g_6608,a0                          
  02ece  20680002              movea.l  $2(a0),a0                          
  02ed2  2f10                  move.l   (a0),-(a7)                         
  02ed4  486efefa              pea      -$106(a6)                          
  02ed8  486efefa              pea      -$106(a6)                          
  02edc  4267                  clr.w    -(a7)                              
  02ede  42a7                  clr.l    -(a7)                              
  02ee0  a8ec                  _CopyBits                                   ; $a8ec
  02ee2  43eeff2e              lea      -$d2(a6),a1                        
  02ee6  2079ffff9828          movea.l  g_67d8,a0                          
  02eec  a03b                  _Delay                                      ; $a03b
  02eee  2280                  move.l   d0,(a1)                            
  02ef0  7e00                  moveq    #0,d7                              
  02ef2  6046                  bra.s    L2f3a                              
L2ef4:
  02ef4  48767720ff02          pea      (-$fe,a6,d7.w*8)                   
  02efa  3f367320ff3c          move.w   (-$c4,a6,d7.w*2),-(a7)             
  02f00  3f367320ff34          move.w   (-$cc,a6,d7.w*2),-(a7)             
  02f06  a8a8                  _OffsetRect                                 ; $a8a8
  02f08  3f367320fea2          move.w   (-$15e,a6,d7.w*2),-(a7)            
  02f0e  48767720ff02          pea      (-$fe,a6,d7.w*8)                   
  02f14  4ead06d2              jsr      f7_1a72                            
  02f18  4a39ffff8dfb          tst.b    g_7205                             
  02f1e  5c8f                  addq.l   #6,a7                              
  02f20  6604                  bne.s    L2f26                              
  02f22  4ead031a              jsr      f3_4424                            
L2f26:
  02f26  4a39ffff8dfb          tst.b    g_7205                             
  02f2c  670a                  beq.s    L2f38                              
  02f2e  3f3c5bd6              move.w   #$5bd6,-(a7)                       
  02f32  4ead030a              jsr      f3_4238                            
  02f36  548f                  addq.l   #2,a7                              
L2f38:
  02f38  5247                  addq.w   #1,d7                              
L2f3a:
  02f3a  0c470004              cmpi.w   #4,d7                              
  02f3e  6db4                  blt.s    L2ef4                              
  02f40  2079ffff99f8          movea.l  g_6608,a0                          
  02f46  20680002              movea.l  $2(a0),a0                          
  02f4a  2f10                  move.l   (a0),-(a7)                         
  02f4c  486c0002              pea      $2(a4)                             
  02f50  486efefa              pea      -$106(a6)                          
  02f54  486efefa              pea      -$106(a6)                          
  02f58  4267                  clr.w    -(a7)                              
  02f5a  42a7                  clr.l    -(a7)                              
  02f5c  a8ec                  _CopyBits                                   ; $a8ec
L2f5e:
  02f5e  3006                  move.w   d6,d0                              
  02f60  5246                  addq.w   #1,d6                              
  02f62  0c400010              cmpi.w   #$10,d0                            
  02f66  6c08                  bge.s    L2f70                              
  02f68  4a6eff44              tst.w    -$bc(a6)                           
  02f6c  6700ff3a              beq.w    L2ea8                              
L2f70:
  02f70  4a6eff44              tst.w    -$bc(a6)                           
  02f74  6702                  beq.s    L2f78                              
  02f76  7601                  moveq    #1,d3                              
L2f78:
  02f78  2f0c                  move.l   a4,-(a7)                           
  02f7a  3f3c0006              move.w   #6,-(a7)                           
  02f7e  a828                  _LayerDispatch                              ; $a828
  02f80  2f0c                  move.l   a4,-(a7)                           
  02f82  3f3c0006              move.w   #6,-(a7)                           
  02f86  486eff44              pea      -$bc(a6)                           
  02f8a  486efeae              pea      -$152(a6)                          
  02f8e  486eff22              pea      -$de(a6)                           
  02f92  a98d                  _GetDialogItem                              ; $a98d
  02f94  426eff44              clr.w    -$bc(a6)                           
  02f98  2079ffff99f4          movea.l  g_660c,a0                          
  02f9e  20680002              movea.l  $2(a0),a0                          
  02fa2  2f10                  move.l   (a0),-(a7)                         
  02fa4  2079ffff99f8          movea.l  g_6608,a0                          
  02faa  20680002              movea.l  $2(a0),a0                          
  02fae  2f10                  move.l   (a0),-(a7)                         
  02fb0  486efefa              pea      -$106(a6)                          
  02fb4  486efefa              pea      -$106(a6)                          
  02fb8  4267                  clr.w    -(a7)                              
  02fba  42a7                  clr.l    -(a7)                              
  02fbc  a8ec                  _CopyBits                                   ; $a8ec
  02fbe  302eff44              move.w   -$bc(a6),d0                        
  02fc2  2f360520feb2          move.l   (-$14e,a6,d0.w*4),-(a7)            
  02fc8  486eff02              pea      -$fe(a6)                           
  02fcc  a8f6                  _DrawPicture                                ; $a8f6
  02fce  3f3c5bd6              move.w   #$5bd6,-(a7)                       
  02fd2  4ead030a              jsr      f3_4238                            
  02fd6  7c00                  moveq    #0,d6                              
  02fd8  7e00                  moveq    #0,d7                              
  02fda  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  02fe0  201f                  move.l   (a7)+,d0                           
  02fe2  a032                  _FlushEvents                                ; $a032
  02fe4  548f                  addq.l   #2,a7                              
  02fe6  600000a4              bra.w    L308c                              
L2fea:
  02fea  4227                  clr.b    -(a7)                              
  02fec  3f3c0002              move.w   #2,-(a7)                           
  02ff0  486eff46              pea      -$ba(a6)                           
  02ff4  a970                  _GetNextEvent                               ; $a970
  02ff6  7e00                  moveq    #0,d7                              
  02ff8  1e1f                  move.b   (a7)+,d7                           
  02ffa  486eff02              pea      -$fe(a6)                           
  02ffe  4878ffff              pea      ($ffff).w                          
  03002  a8a9                  _InsetRect                                  ; $a8a9
  03004  306eff44              movea.w  -$bc(a6),a0                        
  03008  7001                  moveq    #1,d0                              
  0300a  d088                  add.l    a0,d0                              
  0300c  81fc0010              divs.w   #$10,d0                            
  03010  4840                  swap     d0                                 
  03012  3d40ff44              move.w   d0,-$bc(a6)                        
  03016  43eeff2e              lea      -$d2(a6),a1                        
  0301a  2079ffff9828          movea.l  g_67d8,a0                          
  03020  a03b                  _Delay                                      ; $a03b
  03022  2280                  move.l   d0,(a1)                            
  03024  302eff44              move.w   -$bc(a6),d0                        
  03028  207005b2ffff9a200002  movea.l  ([-$65e0,a0],d0.w*4,$2),a0         
  03032  2f10                  move.l   (a0),-(a7)                         
  03034  2079ffff99f8          movea.l  g_6608,a0                          
  0303a  20680002              movea.l  $2(a0),a0                          
  0303e  2f10                  move.l   (a0),-(a7)                         
  03040  486efef2              pea      -$10e(a6)                          
  03044  486eff02              pea      -$fe(a6)                           
  03048  3f3c0024              move.w   #$24,-(a7)                         
  0304c  42a7                  clr.l    -(a7)                              
  0304e  a8ec                  _CopyBits                                   ; $a8ec
  03050  2079ffff99f8          movea.l  g_6608,a0                          
  03056  20680002              movea.l  $2(a0),a0                          
  0305a  2f10                  move.l   (a0),-(a7)                         
  0305c  486c0002              pea      $2(a4)                             
  03060  486efefa              pea      -$106(a6)                          
  03064  486efefa              pea      -$106(a6)                          
  03068  4267                  clr.w    -(a7)                              
  0306a  42a7                  clr.l    -(a7)                              
  0306c  a8ec                  _CopyBits                                   ; $a8ec
  0306e  4a39ffff8dfb          tst.b    g_7205                             
  03074  6604                  bne.s    L307a                              
  03076  4ead031a              jsr      f3_4424                            
L307a:
  0307a  4a39ffff8dfb          tst.b    g_7205                             
  03080  670a                  beq.s    L308c                              
  03082  3f3c5bd6              move.w   #$5bd6,-(a7)                       
  03086  4ead030a              jsr      f3_4238                            
  0308a  548f                  addq.l   #2,a7                              
L308c:
  0308c  3006                  move.w   d6,d0                              
  0308e  5246                  addq.w   #1,d6                              
  03090  0c400020              cmpi.w   #$20,d0                            
  03094  6c0a                  bge.s    L30a0                              
  03096  4a47                  tst.w    d7                                 
  03098  6606                  bne.s    L30a0                              
  0309a  4a03                  tst.b    d3                                 
  0309c  6700ff4c              beq.w    L2fea                              
L30a0:
  030a0  4a47                  tst.w    d7                                 
  030a2  6702                  beq.s    L30a6                              
  030a4  7601                  moveq    #1,d3                              
L30a6:
  030a6  7e00                  moveq    #0,d7                              
  030a8  600000a2              bra.w    L314c                              
L30ac:
  030ac  4227                  clr.b    -(a7)                              
  030ae  3f3c0002              move.w   #2,-(a7)                           
  030b2  486eff46              pea      -$ba(a6)                           
  030b6  a970                  _GetNextEvent                               ; $a970
  030b8  7e00                  moveq    #0,d7                              
  030ba  1e1f                  move.b   (a7)+,d7                           
  030bc  306eff44              movea.w  -$bc(a6),a0                        
  030c0  7001                  moveq    #1,d0                              
  030c2  d088                  add.l    a0,d0                              
  030c4  81fc0010              divs.w   #$10,d0                            
  030c8  4840                  swap     d0                                 
  030ca  3d40ff44              move.w   d0,-$bc(a6)                        
  030ce  7203                  moveq    #3,d1                              
  030d0  2439ffff9828          move.l   g_67d8,d2                          
  030d6  4c412802              divs.l   d1,d2                              
  030da  43eeff2e              lea      -$d2(a6),a1                        
  030de  2042                  movea.l  d2,a0                              
  030e0  a03b                  _Delay                                      ; $a03b
  030e2  2280                  move.l   d0,(a1)                            
  030e4  302eff44              move.w   -$bc(a6),d0                        
  030e8  207005b2ffff9a200002  movea.l  ([-$65e0,a0],d0.w*4,$2),a0         
  030f2  2f10                  move.l   (a0),-(a7)                         
  030f4  2079ffff99f8          movea.l  g_6608,a0                          
  030fa  20680002              movea.l  $2(a0),a0                          
  030fe  2f10                  move.l   (a0),-(a7)                         
  03100  486efef2              pea      -$10e(a6)                          
  03104  486eff02              pea      -$fe(a6)                           
  03108  3f3c0024              move.w   #$24,-(a7)                         
  0310c  42a7                  clr.l    -(a7)                              
  0310e  a8ec                  _CopyBits                                   ; $a8ec
  03110  2079ffff99f8          movea.l  g_6608,a0                          
  03116  20680002              movea.l  $2(a0),a0                          
  0311a  2f10                  move.l   (a0),-(a7)                         
  0311c  486c0002              pea      $2(a4)                             
  03120  486efefa              pea      -$106(a6)                          
  03124  486efefa              pea      -$106(a6)                          
  03128  4267                  clr.w    -(a7)                              
  0312a  42a7                  clr.l    -(a7)                              
  0312c  a8ec                  _CopyBits                                   ; $a8ec
  0312e  4a39ffff8dfb          tst.b    g_7205                             
  03134  6604                  bne.s    L313a                              
  03136  4ead031a              jsr      f3_4424                            
L313a:
  0313a  4a39ffff8dfb          tst.b    g_7205                             
  03140  670a                  beq.s    L314c                              
  03142  3f3c5bd6              move.w   #$5bd6,-(a7)                       
  03146  4ead030a              jsr      f3_4238                            
  0314a  548f                  addq.l   #2,a7                              
L314c:
  0314c  4a47                  tst.w    d7                                 
  0314e  6606                  bne.s    L3156                              
  03150  4a03                  tst.b    d3                                 
  03152  6700ff58              beq.w    L30ac                              
L3156:
  03156  4ead032a              jsr      f3_44be                            
  0315a  2f0c                  move.l   a4,-(a7)                           
  0315c  a983                  _DisposeDialog                              ; $a983
  0315e  204b                  movea.l  a3,a0                              
  03160  a02a                  _HUnlock                                    ; $a02a
  03162  2f0b                  move.l   a3,-(a7)                           
  03164  a9a3                  _ReleaseResource                            ; $a9a3
  03166  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  0316c  486efda0              pea      -$260(a6)                          
  03170  a919                  _GetWTitle                                  ; $a919
  03172  486efda0              pea      -$260(a6)                          
  03176  2f3c00001122          move.l   STR_1122,-(a7)                     ; "?"
  0317c  2f3c00001124          move.l   STR_1124,-(a7)                     ; "?"
  03182  2f3c00001126          move.l   STR_1126,-(a7)                     ; "?"
  03188  a98b                  _ParamText                                  ; $a98b
  0318a  a853                  _ShowCursor                                 ; $a853
  0318c  42a7                  clr.l    -(a7)                              
  0318e  3f3c2713              move.w   #$2713,-(a7)                       
  03192  486eff56              pea      -$aa(a6)                           
  03196  4878ffff              pea      ($ffff).w                          
  0319a  a97c                  _GetNewDialog                               ; $a97c
  0319c  285f                  movea.l  (a7)+,a4                           
L319e:
  0319e  42a7                  clr.l    -(a7)                              
  031a0  486eff44              pea      -$bc(a6)                           
  031a4  a991                  _ModalDialog                                ; $a991
  031a6  0c6e0001ff44          cmpi.w   #1,-$bc(a6)                        
  031ac  66f0                  bne.s    L319e                              
  031ae  2f0c                  move.l   a4,-(a7)                           
  031b0  a983                  _DisposeDialog                              ; $a983
  031b2  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  031b8  201f                  move.l   (a7)+,d0                           
  031ba  a032                  _FlushEvents                                ; $a032
  031bc  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  031c2  a915                  _ShowWindow                                 ; $a915
  031c4  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  031ca  a915                  _ShowWindow                                 ; $a915
  031cc  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  031d2  a915                  _ShowWindow                                 ; $a915
  031d4  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  031da  a915                  _ShowWindow                                 ; $a915
  031dc  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  031e2  a91f                  _SelectWindow                               ; $a91f
  031e4  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  031ea  a91f                  _SelectWindow                               ; $a91f
  031ec  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  031f2  a91f                  _SelectWindow                               ; $a91f
  031f4  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  031fa  a873                  _SetPort                                    ; $a873
  031fc  4ead074a              jsr      f7_2f40                            
  03200  4ead075a              jsr      f7_31f0                            
  03204  4ead073a              jsr      f7_2bb6                            
  03208  202efeaa              move.l   -$156(a6),d0                       
  0320c  b0b9ffff8fb6          cmp.l    g_704a,d0                          
  03212  6720                  beq.s    L3234                              
  03214  202efeaa              move.l   -$156(a6),d0                       
  03218  b0b9ffff8fd2          cmp.l    g_702e,d0                          
  0321e  6714                  beq.s    L3234                              
  03220  202efeaa              move.l   -$156(a6),d0                       
  03224  b0b9ffff9382          cmp.l    g_6c7e,d0                          
  0322a  6708                  beq.s    L3234                              
  0322c  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  03232  a873                  _SetPort                                    ; $a873
L3234:
  03234  7001                  moveq    #1,d0                              
L3236:
  03236  4cdf18f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a3/a4         
  0323a  4e5e                  unlk     a6                                 
  0323c  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_323e   [jump table #174]
;----------------------------------------------------------------------
f5_323e:
  0323e  4e560000              link     a6,#0                              
  03242  4a39ffff9932          tst.b    g_66ce                             
  03248  57c0                  seq      d0                                 
  0324a  4400                  neg.b    d0                                 
  0324c  13c0ffff9932          move.b   d0,g_66ce                          
  03252  4e5e                  unlk     a6                                 
  03254  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_3256   [jump table #175]
;----------------------------------------------------------------------
f5_3256:
  03256  4e560000              link     a6,#0                              
  0325a  4ead078a              jsr      f7_3fde                            
  0325e  4ead01ca              jsr      f2_6b56                            
  03262  4e5e                  unlk     a6                                 
  03264  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_3266
;----------------------------------------------------------------------
f5_3266:
  03266  4e56fd9e              link     a6,#-610                           
  0326a  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  0326e  7800                  moveq    #0,d4                              
  03270  7600                  moveq    #0,d3                              
  03272  41eefdaa              lea      -$256(a6),a0                       
  03276  43f9ffffae3e          lea      g_51c2,a1                          
  0327c  20d9                  move.l   (a1)+,(a0)+                        
  0327e  20d9                  move.l   (a1)+,(a0)+                        
  03280  20d9                  move.l   (a1)+,(a0)+                        
  03282  41eefd9e              lea      -$262(a6),a0                       
  03286  43f9ffffae4a          lea      g_51b6,a1                          
  0328c  20d9                  move.l   (a1)+,(a0)+                        
  0328e  20d9                  move.l   (a1)+,(a0)+                        
  03290  20d9                  move.l   (a1)+,(a0)+                        
  03292  7c01                  moveq    #1,d6                              
  03294  6014                  bra.s    L32aa                              
L3296:
  03296  70ff                  moveq    #-1,d0                             
  03298  d079ffff8894          add.w    g_776c,d0                          
  0329e  c1fc01f4              muls.w   #$1f4,d0                           
  032a2  d1766320fdaa          add.w    d0,(-$256,a6,d6.w*2)               
  032a8  5246                  addq.w   #1,d6                              
L32aa:
  032aa  0c460006              cmpi.w   #6,d6                              
  032ae  6de6                  blt.s    L3296                              
  032b0  7c01                  moveq    #1,d6                              
  032b2  6014                  bra.s    L32c8                              
L32b4:
  032b4  70ff                  moveq    #-1,d0                             
  032b6  d079ffff8894          add.w    g_776c,d0                          
  032bc  c1fc01f4              muls.w   #$1f4,d0                           
  032c0  d1766320fd9e          add.w    d0,(-$262,a6,d6.w*2)               
  032c6  5246                  addq.w   #1,d6                              
L32c8:
  032c8  0c460006              cmpi.w   #6,d6                              
  032cc  6de6                  blt.s    L32b4                              
  032ce  3f3c00d2              move.w   #$d2,-(a7)                         
  032d2  486efe2e              pea      -$1d2(a6)                          
  032d6  486eff4e              pea      -$b2(a6)                           
  032da  4ead025a              jsr      f2_194e                            
  032de  2ebc0000ffff          move.l   #$ffff,(a7)                        
  032e4  201f                  move.l   (a7)+,d0                           
  032e6  a032                  _FlushEvents                                ; $a032
  032e8  4297                  clr.l    (a7)                               
  032ea  3f3c00d1              move.w   #$d1,-(a7)                         
  032ee  486eff56              pea      -$aa(a6)                           
  032f2  4878ffff              pea      ($ffff).w                          
  032f6  a97c                  _GetNewDialog                               ; $a97c
  032f8  285f                  movea.l  (a7)+,a4                           
  032fa  2f0c                  move.l   a4,-(a7)                           
  032fc  4ead06ba              jsr      f7_161c                            
  03300  2e8c                  move.l   a4,(a7)                            
  03302  a915                  _ShowWindow                                 ; $a915
  03304  3ebc02bc              move.w   #$2bc,(a7)                         
  03308  486efdb6              pea      -$24a(a6)                          
  0330c  486eff50              pea      -$b0(a6)                           
  03310  4ead025a              jsr      f2_194e                            
  03314  2e8c                  move.l   a4,(a7)                            
  03316  a873                  _SetPort                                    ; $a873
  03318  486eff46              pea      -$ba(a6)                           
  0331c  42a7                  clr.l    -(a7)                              
  0331e  42a7                  clr.l    -(a7)                              
  03320  a8a7                  _SetRect                                    ; $a8a7
  03322  5c8f                  addq.l   #6,a7                              
L3324:
  03324  2f0c                  move.l   a4,-(a7)                           
  03326  a920                  _BringToFront                               ; $a920
  03328  42a7                  clr.l    -(a7)                              
  0332a  486eff54              pea      -$ac(a6)                           
  0332e  a991                  _ModalDialog                                ; $a991
  03330  4a6eff54              tst.w    -$ac(a6)                           
  03334  6f0000a4              ble.w    L33da                              
  03338  0c6e0006ff54          cmpi.w   #6,-$ac(a6)                        
  0333e  6c00009a              bge.w    L33da                              
  03342  302eff54              move.w   -$ac(a6),d0                        
  03346  3e360320fdaa          move.w   (-$256,a6,d0.w*2),d7               
  0334c  4a79ffff8dac          tst.w    g_7254                             
  03352  6f2a                  ble.s    L337e                              
  03354  0c790006ffff8dac      cmpi.w   #6,g_7254                          
  0335c  6c20                  bge.s    L337e                              
  0335e  2f2efdc6              move.l   -$23a(a6),-(a7)                    
  03362  2f2efdc6              move.l   -$23a(a6),-(a7)                    
  03366  2f3cffff8dac          move.l   #$ffff8dac,-(a7)                   
  0336c  2f3c00010001          move.l   #$10001,-(a7)                      
  03372  4ead009a              jsr      f2_1010                            
  03376  4fef0010              lea      $10(a7),a7                         
  0337a  60000110              bra.w    L348c                              
L337e:
  0337e  3f3c0001              move.w   #1,-(a7)                           
  03382  3f39ffff8dac          move.w   g_7254,-(a7)                       
  03388  303c01f9              move.w   #$1f9,d0                           
  0338c  906eff54              sub.w    -$ac(a6),d0                        
  03390  3f00                  move.w   d0,-(a7)                           
  03392  7006                  moveq    #6,d0                              
  03394  906eff54              sub.w    -$ac(a6),d0                        
  03398  2f3005b0ffff69a8      move.l   (-$9658,za0,d0.w*4),-(a7)          
  033a0  486efe2e              pea      -$1d2(a6)                          
  033a4  3f07                  move.w   d7,-(a7)                           
  033a6  4ead0262              jsr      f2_0000                            
  033aa  1a00                  move.b   d0,d5                              
  033ac  4a05                  tst.b    d5                                 
  033ae  4fef0010              lea      $10(a7),a7                         
  033b2  6726                  beq.s    L33da                              
  033b4  2f3cffff8db0          move.l   #$ffff8db0,-(a7)                   
  033ba  2f3cffff8dae          move.l   #$ffff8dae,-(a7)                   
  033c0  2f3cffff8dac          move.l   #$ffff8dac,-(a7)                   
  033c6  7006                  moveq    #6,d0                              
  033c8  906eff54              sub.w    -$ac(a6),d0                        
  033cc  3f00                  move.w   d0,-(a7)                           
  033ce  3f3c0001              move.w   #1,-(a7)                           
  033d2  4ead00ca              jsr      f2_1c84                            
  033d6  4fef0010              lea      $10(a7),a7                         
L33da:
  033da  0c6e0005ff54          cmpi.w   #5,-$ac(a6)                        
  033e0  6f0000a0              ble.w    L3482                              
  033e4  0c6e000bff54          cmpi.w   #$b,-$ac(a6)                       
  033ea  6c000096              bge.w    L3482                              
  033ee  302eff54              move.w   -$ac(a6),d0                        
  033f2  3e360320fd94          move.w   (-$26c,a6,d0.w*2),d7               
  033f8  4a79ffff8db2          tst.w    g_724e                             
  033fe  6f28                  ble.s    L3428                              
  03400  0c790006ffff8db2      cmpi.w   #6,g_724e                          
  03408  6c1e                  bge.s    L3428                              
  0340a  2f2efdca              move.l   -$236(a6),-(a7)                    
  0340e  2f2efdca              move.l   -$236(a6),-(a7)                    
  03412  2f3cffff8db2          move.l   #$ffff8db2,-(a7)                   
  03418  2f3c00010001          move.l   #$10001,-(a7)                      
  0341e  4ead009a              jsr      f2_1010                            
  03422  4fef0010              lea      $10(a7),a7                         
  03426  6064                  bra.s    L348c                              
L3428:
  03428  3f3c0001              move.w   #1,-(a7)                           
  0342c  3f39ffff8db2          move.w   g_724e,-(a7)                       
  03432  302eff54              move.w   -$ac(a6),d0                        
  03436  06400253              addi.w   #$253,d0                           
  0343a  3f00                  move.w   d0,-(a7)                           
  0343c  302eff54              move.w   -$ac(a6),d0                        
  03440  2f3005b0ffff69e4      move.l   (-$961c,za0,d0.w*4),-(a7)          
  03448  486efe2e              pea      -$1d2(a6)                          
  0344c  3f07                  move.w   d7,-(a7)                           
  0344e  4ead0262              jsr      f2_0000                            
  03452  1a00                  move.b   d0,d5                              
  03454  4a05                  tst.b    d5                                 
  03456  4fef0010              lea      $10(a7),a7                         
  0345a  6726                  beq.s    L3482                              
  0345c  2f3cffff8db6          move.l   #$ffff8db6,-(a7)                   
  03462  2f3cffff8db4          move.l   #$ffff8db4,-(a7)                   
  03468  2f3cffff8db2          move.l   #$ffff8db2,-(a7)                   
  0346e  70fb                  moveq    #-5,d0                             
  03470  d06eff54              add.w    -$ac(a6),d0                        
  03474  3f00                  move.w   d0,-(a7)                           
  03476  3f3c0001              move.w   #1,-(a7)                           
  0347a  4ead00ca              jsr      f2_1c84                            
  0347e  4fef0010              lea      $10(a7),a7                         
L3482:
  03482  0c6e0016ff54          cmpi.w   #$16,-$ac(a6)                      
  03488  6600fe9a              bne.w    L3324                              
L348c:
  0348c  2f0c                  move.l   a4,-(a7)                           
  0348e  a983                  _DisposeDialog                              ; $a983
  03490  7c01                  moveq    #1,d6                              
  03492  600a                  bra.s    L349e                              
L3494:
  03494  20766520fe2e          movea.l  (-$1d2,a6,d6.w*4),a0               
  0349a  a01f                  _DisposePtr                                 ; $a01f
  0349c  5246                  addq.w   #1,d6                              
L349e:
  0349e  bc6eff4e              cmp.w    -$b2(a6),d6                        
  034a2  6ff0                  ble.s    L3494                              
  034a4  7c01                  moveq    #1,d6                              
  034a6  600a                  bra.s    L34b2                              
L34a8:
  034a8  20766520fdb6          movea.l  (-$24a,a6,d6.w*4),a0               
  034ae  a01f                  _DisposePtr                                 ; $a01f
  034b0  5246                  addq.w   #1,d6                              
L34b2:
  034b2  bc6eff50              cmp.w    -$b0(a6),d6                        
  034b6  6ff0                  ble.s    L34a8                              
  034b8  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  034bc  4e5e                  unlk     a6                                 
  034be  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_34c0   [jump table #176]
;----------------------------------------------------------------------
f5_34c0:
  034c0  4e56fe3c              link     a6,#-452                           
  034c4  48e70108              movem.l  d7/a4,-(a7)                        
  034c8  7e01                  moveq    #1,d7                              
  034ca  0c790001ffff8894      cmpi.w   #1,g_776c                          
  034d2  6d12                  blt.s    L34e6                              
  034d4  0c790001ffff8370      cmpi.w   #1,g_7c90                          
  034dc  6d08                  blt.s    L34e6                              
  034de  4a39ffff3b1e          tst.b    g_c4e2                             
  034e4  6606                  bne.s    L34ec                              
L34e6:
  034e6  1007                  move.b   d7,d0                              
  034e8  600000f2              bra.w    L35dc                              
L34ec:
  034ec  486eff50              pea      -$b0(a6)                           
  034f0  a874                  _GetPort                                    ; $a874
  034f2  4a2e0008              tst.b    $8(a6)                             
  034f6  6710                  beq.s    L3508                              
  034f8  486efe3c              pea      -$1c4(a6)                          
  034fc  2f3c00010514          move.l   #$10514,-(a7)                      
  03502  4ead0522              jsr      f4_153c                            
  03506  600e                  bra.s    L3516                              
L3508:
  03508  486efe3c              pea      -$1c4(a6)                          
  0350c  2f3c00020514          move.l   #$20514,-(a7)                      
  03512  4ead0522              jsr      f4_153c                            
L3516:
  03516  486efe3c              pea      -$1c4(a6)                          
  0351a  2f3c00001128          move.l   STR_1128,-(a7)                     ; "?"
  03520  2f3c0000112a          move.l   STR_112a,-(a7)                     ; "?"
  03526  2f3c0000112c          move.l   STR_112c,-(a7)                     ; "?"
  0352c  a98b                  _ParamText                                  ; $a98b
  0352e  42a7                  clr.l    -(a7)                              
  03530  3f3c0514              move.w   #$514,-(a7)                        
  03534  486eff56              pea      -$aa(a6)                           
  03538  4878ffff              pea      ($ffff).w                          
  0353c  a97c                  _GetNewDialog                               ; $a97c
  0353e  285f                  movea.l  (a7)+,a4                           
  03540  2f0c                  move.l   a4,-(a7)                           
  03542  4ead06ba              jsr      f7_161c                            
  03546  2e8c                  move.l   a4,(a7)                            
  03548  a915                  _ShowWindow                                 ; $a915
  0354a  2f0c                  move.l   a4,-(a7)                           
  0354c  a873                  _SetPort                                    ; $a873
  0354e  2f0c                  move.l   a4,-(a7)                           
  03550  3f3c0001              move.w   #1,-(a7)                           
  03554  486eff54              pea      -$ac(a6)                           
  03558  486eff4c              pea      -$b4(a6)                           
  0355c  486eff44              pea      -$bc(a6)                           
  03560  a98d                  _GetDialogItem                              ; $a98d
  03562  2f3c00030003          move.l   #$30003,-(a7)                      
  03568  a89b                  _PenSize                                    ; $a89b
  0356a  2d6eff44ff3c          move.l   -$bc(a6),-$c4(a6)                  
  03570  2d6eff48ff40          move.l   -$b8(a6),-$c0(a6)                  
  03576  486eff3c              pea      -$c4(a6)                           
  0357a  2f3cfffcfffc          move.l   #$fffcfffc,-(a7)                   
  03580  a8a9                  _InsetRect                                  ; $a8a9
  03582  2f0c                  move.l   a4,-(a7)                           
  03584  a981                  _DrawDialog                                 ; $a981
  03586  486eff3c              pea      -$c4(a6)                           
  0358a  2f3c00100010          move.l   #$100010,-(a7)                     
  03590  a8b0                  _FrameRoundRect                             ; $a8b0
  03592  426eff54              clr.w    -$ac(a6)                           
L3596:
  03596  42a7                  clr.l    -(a7)                              
  03598  486eff54              pea      -$ac(a6)                           
  0359c  a991                  _ModalDialog                                ; $a991
  0359e  4a6eff54              tst.w    -$ac(a6)                           
  035a2  67f2                  beq.s    L3596                              
  035a4  2f0c                  move.l   a4,-(a7)                           
  035a6  a983                  _DisposeDialog                              ; $a983
  035a8  302eff54              move.w   -$ac(a6),d0                        
  035ac  6724                  beq.s    L35d2                              
  035ae  6b22                  bmi.s    L35d2                              
  035b0  5740                  subq.w   #3,d0                              
  035b2  671c                  beq.s    L35d0                              
  035b4  6a1c                  bpl.s    L35d2                              
  035b6  5240                  addq.w   #1,d0                              
  035b8  6a18                  bpl.s    L35d2                              
  035ba  3f39ffff8894          move.w   g_776c,-(a7)                       
  035c0  4ead043a              jsr      f4_460e                            
  035c4  42a7                  clr.l    -(a7)                              
  035c6  4ebae6d6              jsr      f5_1c9e                            
  035ca  1e00                  move.b   d0,d7                              
  035cc  5c8f                  addq.l   #6,a7                              
  035ce  6002                  bra.s    L35d2                              
L35d0:
  035d0  7e00                  moveq    #0,d7                              
L35d2:
  035d2  a89e                  _PenNormal                                  ; $a89e
  035d4  2f2eff50              move.l   -$b0(a6),-(a7)                     
  035d8  a873                  _SetPort                                    ; $a873
  035da  1007                  move.b   d7,d0                              
L35dc:
  035dc  4cdf1080              movem.l  (a7)+,d7/a4                        
  035e0  4e5e                  unlk     a6                                 
  035e2  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_35e4   [jump table #177]
;----------------------------------------------------------------------
f5_35e4:
  035e4  4e56fe4c              link     a6,#-436                           
  035e8  48e70308              movem.l  d6/d7/a4,-(a7)                     
  035ec  426eff54              clr.w    -$ac(a6)                           
  035f0  2d79ffffae56ff4c      move.l   g_51aa,-$b4(a6)                    
  035f8  2d79ffffae5aff50      move.l   g_51a6,-$b0(a6)                    
  03600  7e00                  moveq    #0,d7                              
  03602  6016                  bra.s    L361a                              
L3604:
  03604  3c367320ff4c          move.w   (-$b4,a6,d7.w*2),d6                
  0360a  cc79ffff8dbe          and.w    g_7242,d6                          
  03610  4a46                  tst.w    d6                                 
  03612  6604                  bne.s    L3618                              
  03614  526eff54              addq.w   #1,-$ac(a6)                        
L3618:
  03618  5247                  addq.w   #1,d7                              
L361a:
  0361a  0c470004              cmpi.w   #4,d7                              
  0361e  6de4                  blt.s    L3604                              
  03620  306eff54              movea.w  -$ac(a6),a0                        
  03624  2f08                  move.l   a0,-(a7)                           
  03626  486efe4c              pea      -$1b4(a6)                          
  0362a  4ead0512              jsr      f4_150e                            
  0362e  486efe4c              pea      -$1b4(a6)                          
  03632  2f3c0000112e          move.l   STR_112e,-(a7)                     ; "?"
  03638  2f3c00001130          move.l   STR_1130,-(a7)                     ; "?"
  0363e  2f3c00001132          move.l   STR_1132,-(a7)                     ; "?"
  03644  a98b                  _ParamText                                  ; $a98b
  03646  42a7                  clr.l    -(a7)                              
  03648  3f3c010f              move.w   #$10f,-(a7)                        
  0364c  486eff56              pea      -$aa(a6)                           
  03650  4878ffff              pea      ($ffff).w                          
  03654  a97c                  _GetNewDialog                               ; $a97c
  03656  285f                  movea.l  (a7)+,a4                           
  03658  2f0c                  move.l   a4,-(a7)                           
  0365a  4ead06ba              jsr      f7_161c                            
  0365e  7e00                  moveq    #0,d7                              
  03660  588f                  addq.l   #4,a7                              
  03662  602a                  bra.s    L368e                              
L3664:
  03664  3039ffff8dbe          move.w   g_7242,d0                          
  0366a  c0767320ff4c          and.w    (-$b4,a6,d7.w*2),d0                
  03670  3d40ff54              move.w   d0,-$ac(a6)                        
  03674  4a40                  tst.w    d0                                 
  03676  6614                  bne.s    L368c                              
  03678  2f0c                  move.l   a4,-(a7)                           
  0367a  7003                  moveq    #3,d0                              
  0367c  d047                  add.w    d7,d0                              
  0367e  3f00                  move.w   d0,-(a7)                           
  03680  a827                  _ShowDialogItem                             ; $a827
  03682  2f0c                  move.l   a4,-(a7)                           
  03684  7007                  moveq    #7,d0                              
  03686  d047                  add.w    d7,d0                              
  03688  3f00                  move.w   d0,-(a7)                           
  0368a  a827                  _ShowDialogItem                             ; $a827
L368c:
  0368c  5247                  addq.w   #1,d7                              
L368e:
  0368e  0c470004              cmpi.w   #4,d7                              
  03692  6dd0                  blt.s    L3664                              
  03694  426eff54              clr.w    -$ac(a6)                           
  03698  2f0c                  move.l   a4,-(a7)                           
  0369a  a915                  _ShowWindow                                 ; $a915
  0369c  2f0c                  move.l   a4,-(a7)                           
  0369e  a981                  _DrawDialog                                 ; $a981
L36a0:
  036a0  42a7                  clr.l    -(a7)                              
  036a2  486eff54              pea      -$ac(a6)                           
  036a6  a991                  _ModalDialog                                ; $a991
  036a8  4a6eff54              tst.w    -$ac(a6)                           
  036ac  67f2                  beq.s    L36a0                              
  036ae  2f0c                  move.l   a4,-(a7)                           
  036b0  a983                  _DisposeDialog                              ; $a983
  036b2  4cdf10c0              movem.l  (a7)+,d6/d7/a4                     
  036b6  4e5e                  unlk     a6                                 
  036b8  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_36ba   [jump table #179]
;----------------------------------------------------------------------
f5_36ba:
  036ba  4e56fff8              link     a6,#-8                             
  036be  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  036c2  7c08                  moveq    #8,d6                              
  036c4  7a01                  moveq    #1,d5                              
  036c6  2d79ffffabf6fff8      move.l   g_540a,-$8(a6)                     
  036ce  2d79ffffabfafffc      move.l   g_5406,-$4(a6)                     
  036d6  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  036dc  a851                  _SetCursor                                  ; $a851
  036de  4a39ffff3b1e          tst.b    g_c4e2                             
  036e4  670c                  beq.s    L36f2                              
  036e6  1f3c0001              move.b   #1,-(a7)                           
  036ea  4ebafdd4              jsr      f5_34c0                            
  036ee  1a00                  move.b   d0,d5                              
  036f0  548f                  addq.l   #2,a7                              
L36f2:
  036f2  4a05                  tst.b    d5                                 
  036f4  670001b6              beq.w    L38ac                              
  036f8  13fc0001ffff8de8      move.b   #1,g_7218                          
  03700  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  03706  a914                  _DisposeWindow                              ; $a914
  03708  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  0370e  a914                  _DisposeWindow                              ; $a914
  03710  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  03716  a914                  _DisposeWindow                              ; $a914
  03718  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  0371e  a914                  _DisposeWindow                              ; $a914
  03720  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  03726  a914                  _DisposeWindow                              ; $a914
  03728  2f39ffff8fca          move.l   g_7036,-(a7)                       
  0372e  a914                  _DisposeWindow                              ; $a914
  03730  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03736  a914                  _DisposeWindow                              ; $a914
  03738  4267                  clr.w    -(a7)                              
  0373a  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  03740  1f3c0001              move.b   #1,-(a7)                           
  03744  a801                  _SndDisposeChannel                          ; $a801
  03746  3e1f                  move.w   (a7)+,d7                           
  03748  4267                  clr.w    -(a7)                              
  0374a  2f39ffff9792          move.l   g_686e,-(a7)                       
  03750  1f3c0001              move.b   #1,-(a7)                           
  03754  a801                  _SndDisposeChannel                          ; $a801
  03756  3e1f                  move.w   (a7)+,d7                           
  03758  7e00                  moveq    #0,d7                              
  0375a  6024                  bra.s    L3780                              
L375c:
  0375c  2f3075b2ffff99f40002  move.l   ([-$660c,a0],d7.w*4,$2),-(a7)      
  03766  203c00040002          move.l   #$40002,d0                         
  0376c  ab1d                  _trap    $ab1d                              
  0376e  2f3075b0ffff99f4      move.l   (-$660c,za0,d7.w*4),-(a7)          
  03776  203c00040004          move.l   #$40004,d0                         
  0377c  ab1d                  _trap    $ab1d                              
  0377e  5247                  addq.w   #1,d7                              
L3780:
  03780  0c470005              cmpi.w   #5,d7                              
  03784  6dd6                  blt.s    L375c                              
  03786  7e00                  moveq    #0,d7                              
  03788  6024                  bra.s    L37ae                              
L378a:
  0378a  2f3075b2ffff9a100002  move.l   ([-$65f0,a0],d7.w*4,$2),-(a7)      
  03794  203c00040002          move.l   #$40002,d0                         
  0379a  ab1d                  _trap    $ab1d                              
  0379c  2f3075b0ffff9a10      move.l   (-$65f0,za0,d7.w*4),-(a7)          
  037a4  203c00040004          move.l   #$40004,d0                         
  037aa  ab1d                  _trap    $ab1d                              
  037ac  5247                  addq.w   #1,d7                              
L37ae:
  037ae  0c470003              cmpi.w   #3,d7                              
  037b2  6dd6                  blt.s    L378a                              
  037b4  2079ffff9a1c          movea.l  g_65e4,a0                          
  037ba  2f280002              move.l   $2(a0),-(a7)                       
  037be  203c00040002          move.l   #$40002,d0                         
  037c4  ab1d                  _trap    $ab1d                              
  037c6  2f39ffff9a1c          move.l   g_65e4,-(a7)                       
  037cc  203c00040004          move.l   #$40004,d0                         
  037d2  ab1d                  _trap    $ab1d                              
  037d4  2079ffff9a0c          movea.l  g_65f4,a0                          
  037da  2f280002              move.l   $2(a0),-(a7)                       
  037de  203c00040002          move.l   #$40002,d0                         
  037e4  ab1d                  _trap    $ab1d                              
  037e6  2f39ffff9a0c          move.l   g_65f4,-(a7)                       
  037ec  203c00040004          move.l   #$40004,d0                         
  037f2  ab1d                  _trap    $ab1d                              
  037f4  7e00                  moveq    #0,d7                              
  037f6  600c                  bra.s    L3804                              
L37f8:
  037f8  2f3075b0ffff8dc0      move.l   (-$7240,za0,d7.w*4),-(a7)          
  03800  a932                  _DisposeMenu                                ; $a932
  03802  5247                  addq.w   #1,d7                              
L3804:
  03804  0c470005              cmpi.w   #5,d7                              
  03808  6fee                  ble.s    L37f8                              
  0380a  a934                  _ClearMenuBar                               ; $a934
  0380c  a937                  _DrawMenuBar                                ; $a937
  0380e  4ab9ffff3b18          tst.l    g_c4e8                             
  03814  6704                  beq.s    L381a                              
  03816  4eba009e              jsr      f5_38b6                            
L381a:
  0381a  3f39ffffa79c          move.w   g_5864,-(a7)                       
  03820  a99a                  _CloseResFile                               ; $a99a
  03822  3f39ffffa7a6          move.w   g_585a,-(a7)                       
  03828  a99a                  _CloseResFile                               ; $a99a
  0382a  3f39ffffa7a0          move.w   g_5860,-(a7)                       
  03830  a99a                  _CloseResFile                               ; $a99a
  03832  4267                  clr.w    -(a7)                              
  03834  3f39ffffa7a8          move.w   g_5858,-(a7)                       
  0383a  4ead04d2              jsr      f4_13ee                            
  0383e  4ead01ca              jsr      f2_6b56                            
  03842  42a7                  clr.l    -(a7)                              
  03844  aa2a                  _GetMainDevice                              ; $aa2a
  03846  285f                  movea.l  (a7)+,a4                           
  03848  2054                  movea.l  (a4),a0                            
  0384a  3279ffff97e2          movea.w  g_681e,a1                          
  03850  93e8002a              suba.l   $2a(a0),a1                         
  03854  2009                  move.l   a1,d0                              
  03856  548f                  addq.l   #2,a7                              
  03858  6f10                  ble.s    L386a                              
  0385a  2054                  movea.l  (a4),a0                            
  0385c  1039ffff97e3          move.b   g_681d,d0                          
  03862  9028002d              sub.b    $2d(a0),d0                         
  03866  e16e                  lsl.w    d0,d6                              
  03868  600e                  bra.s    L3878                              
L386a:
  0386a  2054                  movea.l  (a4),a0                            
  0386c  1028002d              move.b   $2d(a0),d0                         
  03870  9039ffff97e3          sub.b    g_681d,d0                          
  03876  e066                  asr.w    d0,d6                              
L3878:
  03878  0c460008              cmpi.w   #8,d6                              
  0387c  660a                  bne.s    L3888                              
  0387e  0c390001ffff9934      cmpi.b   #1,g_66cc                          
  03886  671c                  beq.s    L38a4                              
L3888:
  03888  4267                  clr.w    -(a7)                              
  0388a  2f0c                  move.l   a4,-(a7)                           
  0388c  3f06                  move.w   d6,-(a7)                           
  0388e  3f3c0001              move.w   #1,-(a7)                           
  03892  7000                  moveq    #0,d0                              
  03894  1039ffff9934          move.b   g_66cc,d0                          
  0389a  3f00                  move.w   d0,-(a7)                           
  0389c  303c0a13              move.w   #$a13,d0                           
  038a0  aaa2                  _PaletteDispatch                            ; $aaa2
  038a2  548f                  addq.l   #2,a7                              
L38a4:
  038a4  4a05                  tst.b    d5                                 
  038a6  57c0                  seq      d0                                 
  038a8  4400                  neg.b    d0                                 
  038aa  6002                  bra.s    L38ae                              
L38ac:
  038ac  1005                  move.b   d5,d0                              
L38ae:
  038ae  4cdf10e0              movem.l  (a7)+,d5/d6/d7/a4                  
  038b2  4e5e                  unlk     a6                                 
  038b4  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_38b6   [jump table #178]
;----------------------------------------------------------------------
f5_38b6:
  038b6  4e560000              link     a6,#0                              
  038ba  48e70700              movem.l  d5/d6/d7,-(a7)                     
  038be  7c01                  moveq    #1,d6                              
  038c0  4a39ffff993c          tst.b    g_66c4                             
  038c6  6326                  bls.s    L38ee                              
  038c8  4267                  clr.w    -(a7)                              
  038ca  2f3cffff9936          move.l   #$ffff9936,-(a7)                   
  038d0  7006                  moveq    #6,d0                              
  038d2  aa52                  _trap    $aa52                              
  038d4  3a1f                  move.w   (a7)+,d5                           
  038d6  4a45                  tst.w    d5                                 
  038d8  670000a2              beq.w    L397c                              
  038dc  2f3c00001134          move.l   STR_1134,-(a7)                     ; "FSpDelete"
  038e2  3f05                  move.w   d5,-(a7)                           
  038e4  4ead06ca              jsr      f7_18ec                            
  038e8  5c8f                  addq.l   #6,a7                              
  038ea  60000090              bra.w    L397c                              
L38ee:
  038ee  2079ffff3b14          movea.l  g_c4ec,a0                          
  038f4  2279ffff3b18          movea.l  g_c4e8,a1                          
  038fa  1010                  move.b   (a0),d0                            
  038fc  b011                  cmp.b    (a1),d0                            
  038fe  6728                  beq.s    L3928                              
  03900  4267                  clr.w    -(a7)                              
  03902  2f39ffff3b14          move.l   g_c4ec,-(a7)                       
  03908  3f39ffffa798          move.w   g_5868,-(a7)                       
  0390e  4ead04f2              jsr      f4_148e                            
  03912  3a1f                  move.w   (a7)+,d5                           
  03914  4a45                  tst.w    d5                                 
  03916  6764                  beq.s    L397c                              
  03918  2f3c0000113e          move.l   STR_113e,-(a7)                     ; "FSDelete"
  0391e  3f05                  move.w   d5,-(a7)                           
  03920  4ead06ca              jsr      f7_18ec                            
  03924  5c8f                  addq.l   #6,a7                              
  03926  6054                  bra.s    L397c                              
L3928:
  03928  7e01                  moveq    #1,d7                              
L392a:
  0392a  103071b5ffff3b14      move.b   ([-$c4ec,a0],d7.w,$0),d0           
  03932  b03071b5ffff3b18      cmp.b    ([-$c4e8,a0],d7.w,$0),d0           
  0393a  6702                  beq.s    L393e                              
  0393c  7c00                  moveq    #0,d6                              
L393e:
  0393e  5247                  addq.w   #1,d7                              
  03940  2079ffff3b14          movea.l  g_c4ec,a0                          
  03946  1010                  move.b   (a0),d0                            
  03948  49c0                  extb.l   d0                                 
  0394a  b047                  cmp.w    d7,d0                              
  0394c  6d04                  blt.s    L3952                              
  0394e  4a06                  tst.b    d6                                 
  03950  66d8                  bne.s    L392a                              
L3952:
  03952  4a06                  tst.b    d6                                 
  03954  6614                  bne.s    L396a                              
  03956  4267                  clr.w    -(a7)                              
  03958  2f39ffff3b14          move.l   g_c4ec,-(a7)                       
  0395e  3f39ffffa798          move.w   g_5868,-(a7)                       
  03964  4ead04f2              jsr      f4_148e                            
  03968  3a1f                  move.w   (a7)+,d5                           
L396a:
  0396a  4a45                  tst.w    d5                                 
  0396c  670e                  beq.s    L397c                              
  0396e  2f3c00001148          move.l   STR_1148,-(a7)                     ; "FSDelete"
  03974  3f05                  move.w   d5,-(a7)                           
  03976  4ead06ca              jsr      f7_18ec                            
  0397a  5c8f                  addq.l   #6,a7                              
L397c:
  0397c  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  03980  4e5e                  unlk     a6                                 
  03982  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_3984   [jump table #180]
;----------------------------------------------------------------------
f5_3984:
  03984  4e560000              link     a6,#0                              
  03988  48e70300              movem.l  d6/d7,-(a7)                        
  0398c  4a39ffff8de8          tst.b    g_7218                             
  03992  660002b8              bne.w    L3c4c                              
  03996  4a79ffff8da2          tst.w    g_725e                             
  0399c  6e7c                  bgt.s    L3a1a                              
  0399e  4a79ffff8da0          tst.w    g_7260                             
  039a4  6e74                  bgt.s    L3a1a                              
  039a6  4a79ffff8da4          tst.w    g_725c                             
  039ac  6e6c                  bgt.s    L3a1a                              
  039ae  4a79ffff8dac          tst.w    g_7254                             
  039b4  6e64                  bgt.s    L3a1a                              
  039b6  4a79ffff8db2          tst.w    g_724e                             
  039bc  6e5c                  bgt.s    L3a1a                              
  039be  4a79ffff8da8          tst.w    g_7258                             
  039c4  6e54                  bgt.s    L3a1a                              
  039c6  4a79ffff8da8          tst.w    g_7258                             
  039cc  6e4c                  bgt.s    L3a1a                              
  039ce  4a79ffff8db8          tst.w    g_7248                             
  039d4  6e44                  bgt.s    L3a1a                              
  039d6  4a79ffff8dbc          tst.w    g_7244                             
  039dc  6e3c                  bgt.s    L3a1a                              
  039de  4a79ffff8dba          tst.w    g_7246                             
  039e4  6e34                  bgt.s    L3a1a                              
  039e6  4a79ffff8dbe          tst.w    g_7242                             
  039ec  6e2c                  bgt.s    L3a1a                              
  039ee  4a79ffff83a0          tst.w    g_7c60                             
  039f4  6f0a                  ble.s    L3a00                              
  039f6  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  039fe  6d1a                  blt.s    L3a1a                              
L3a00:
  03a00  4a79ffff83a2          tst.w    g_7c5e                             
  03a06  6f0a                  ble.s    L3a12                              
  03a08  0c790006ffff83a2      cmpi.w   #6,g_7c5e                          
  03a10  6d08                  blt.s    L3a1a                              
L3a12:
  03a12  4a79ffff8392          tst.w    g_7c6e                             
  03a18  6f18                  ble.s    L3a32                              
L3a1a:
  03a1a  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03a20  4267                  clr.w    -(a7)                              
  03a22  a939                  _EnableItem                                 ; $a939
  03a24  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03a2a  a915                  _ShowWindow                                 ; $a915
  03a2c  4ead073a              jsr      f7_2bb6                            
  03a30  6012                  bra.s    L3a44                              
L3a32:
  03a32  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03a38  4267                  clr.w    -(a7)                              
  03a3a  a93a                  _DisableItem                                ; $a93a
  03a3c  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03a42  a916                  _HideWindow                                 ; $a916
L3a44:
  03a44  4a79ffff8da2          tst.w    g_725e                             
  03a4a  6f0e                  ble.s    L3a5a                              
  03a4c  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03a52  3f3c0001              move.w   #1,-(a7)                           
  03a56  a939                  _EnableItem                                 ; $a939
  03a58  600c                  bra.s    L3a66                              
L3a5a:
  03a5a  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03a60  3f3c0001              move.w   #1,-(a7)                           
  03a64  a93a                  _DisableItem                                ; $a93a
L3a66:
  03a66  4a79ffff8da0          tst.w    g_7260                             
  03a6c  6f0e                  ble.s    L3a7c                              
  03a6e  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03a74  3f3c0002              move.w   #2,-(a7)                           
  03a78  a939                  _EnableItem                                 ; $a939
  03a7a  600c                  bra.s    L3a88                              
L3a7c:
  03a7c  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03a82  3f3c0002              move.w   #2,-(a7)                           
  03a86  a93a                  _DisableItem                                ; $a93a
L3a88:
  03a88  4a79ffff8da4          tst.w    g_725c                             
  03a8e  6f0e                  ble.s    L3a9e                              
  03a90  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03a96  3f3c0003              move.w   #3,-(a7)                           
  03a9a  a939                  _EnableItem                                 ; $a939
  03a9c  600c                  bra.s    L3aaa                              
L3a9e:
  03a9e  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03aa4  3f3c0003              move.w   #3,-(a7)                           
  03aa8  a93a                  _DisableItem                                ; $a93a
L3aaa:
  03aaa  4a79ffff8dac          tst.w    g_7254                             
  03ab0  6e0a                  bgt.s    L3abc                              
  03ab2  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  03aba  670e                  beq.s    L3aca                              
L3abc:
  03abc  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03ac2  3f3c0004              move.w   #4,-(a7)                           
  03ac6  a939                  _EnableItem                                 ; $a939
  03ac8  600c                  bra.s    L3ad6                              
L3aca:
  03aca  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03ad0  3f3c0004              move.w   #4,-(a7)                           
  03ad4  a93a                  _DisableItem                                ; $a93a
L3ad6:
  03ad6  4a79ffff8db2          tst.w    g_724e                             
  03adc  6e0a                  bgt.s    L3ae8                              
  03ade  0c790006ffff83a2      cmpi.w   #6,g_7c5e                          
  03ae6  670e                  beq.s    L3af6                              
L3ae8:
  03ae8  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03aee  3f3c0005              move.w   #5,-(a7)                           
  03af2  a939                  _EnableItem                                 ; $a939
  03af4  600c                  bra.s    L3b02                              
L3af6:
  03af6  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03afc  3f3c0005              move.w   #5,-(a7)                           
  03b00  a93a                  _DisableItem                                ; $a93a
L3b02:
  03b02  4a79ffff8da8          tst.w    g_7258                             
  03b08  6e08                  bgt.s    L3b12                              
  03b0a  4a79ffff8392          tst.w    g_7c6e                             
  03b10  6f0e                  ble.s    L3b20                              
L3b12:
  03b12  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03b18  3f3c0006              move.w   #6,-(a7)                           
  03b1c  a939                  _EnableItem                                 ; $a939
  03b1e  600c                  bra.s    L3b2c                              
L3b20:
  03b20  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03b26  3f3c0006              move.w   #6,-(a7)                           
  03b2a  a93a                  _DisableItem                                ; $a93a
L3b2c:
  03b2c  4a79ffff8db8          tst.w    g_7248                             
  03b32  6f0e                  ble.s    L3b42                              
  03b34  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03b3a  3f3c0007              move.w   #7,-(a7)                           
  03b3e  a939                  _EnableItem                                 ; $a939
  03b40  600c                  bra.s    L3b4e                              
L3b42:
  03b42  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03b48  3f3c0007              move.w   #7,-(a7)                           
  03b4c  a93a                  _DisableItem                                ; $a93a
L3b4e:
  03b4e  4a79ffff8dbc          tst.w    g_7244                             
  03b54  6f0e                  ble.s    L3b64                              
  03b56  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03b5c  3f3c0009              move.w   #9,-(a7)                           
  03b60  a939                  _EnableItem                                 ; $a939
  03b62  600c                  bra.s    L3b70                              
L3b64:
  03b64  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03b6a  3f3c0009              move.w   #9,-(a7)                           
  03b6e  a93a                  _DisableItem                                ; $a93a
L3b70:
  03b70  4a79ffff8dba          tst.w    g_7246                             
  03b76  6f0e                  ble.s    L3b86                              
  03b78  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03b7e  3f3c0008              move.w   #8,-(a7)                           
  03b82  a939                  _EnableItem                                 ; $a939
  03b84  600c                  bra.s    L3b92                              
L3b86:
  03b86  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03b8c  3f3c0008              move.w   #8,-(a7)                           
  03b90  a93a                  _DisableItem                                ; $a93a
L3b92:
  03b92  4267                  clr.w    -(a7)                              
  03b94  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03b9a  a950                  _CountMItems                                ; $a950
  03b9c  0c5f000a              cmpi.w   #$a,(a7)+                          
  03ba0  6c16                  bge.s    L3bb8                              
  03ba2  4a79ffff8dbe          tst.w    g_7242                             
  03ba8  6f0e                  ble.s    L3bb8                              
  03baa  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03bb0  2f3c00001152          move.l   STR_1152,-(a7)                     ; "Crystals"
  03bb6  a933                  _AppendMenu                                 ; $a933
L3bb8:
  03bb8  4267                  clr.w    -(a7)                              
  03bba  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03bc0  a950                  _CountMItems                                ; $a950
  03bc2  0c5f0009              cmpi.w   #9,(a7)+                           
  03bc6  6f14                  ble.s    L3bdc                              
  03bc8  4a79ffff8dbe          tst.w    g_7242                             
  03bce  6f0c                  ble.s    L3bdc                              
  03bd0  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  03bd6  3f3c000a              move.w   #$a,-(a7)                          
  03bda  a939                  _EnableItem                                 ; $a939
L3bdc:
  03bdc  4a79ffff8da6          tst.w    g_725a                             
  03be2  6f18                  ble.s    L3bfc                              
  03be4  7e00                  moveq    #0,d7                              
  03be6  600c                  bra.s    L3bf4                              
L3be8:
  03be8  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  03bee  3f07                  move.w   d7,-(a7)                           
  03bf0  a939                  _EnableItem                                 ; $a939
  03bf2  5247                  addq.w   #1,d7                              
L3bf4:
  03bf4  be79ffff8da6          cmp.w    g_725a,d7                          
  03bfa  6fec                  ble.s    L3be8                              
L3bfc:
  03bfc  7e01                  moveq    #1,d7                              
  03bfe  de79ffff8da6          add.w    g_725a,d7                          
  03c04  600c                  bra.s    L3c12                              
L3c06:
  03c06  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  03c0c  3f07                  move.w   d7,-(a7)                           
  03c0e  a93a                  _DisableItem                                ; $a93a
  03c10  5247                  addq.w   #1,d7                              
L3c12:
  03c12  0c470006              cmpi.w   #6,d7                              
  03c16  6dee                  blt.s    L3c06                              
  03c18  2f39ffff8dcc          move.l   g_7234,-(a7)                       
  03c1e  4267                  clr.w    -(a7)                              
  03c20  a939                  _EnableItem                                 ; $a939
  03c22  4267                  clr.w    -(a7)                              
  03c24  2f39ffff8dd0          move.l   g_7230,-(a7)                       
  03c2a  a950                  _CountMItems                                ; $a950
  03c2c  3c1f                  move.w   (a7)+,d6                           
  03c2e  4a79ffff8370          tst.w    g_7c90                             
  03c34  6f14                  ble.s    L3c4a                              
  03c36  7e00                  moveq    #0,d7                              
  03c38  600c                  bra.s    L3c46                              
L3c3a:
  03c3a  2f39ffff8dd0          move.l   g_7230,-(a7)                       
  03c40  3f07                  move.w   d7,-(a7)                           
  03c42  a939                  _EnableItem                                 ; $a939
  03c44  5247                  addq.w   #1,d7                              
L3c46:
  03c46  bc47                  cmp.w    d7,d6                              
  03c48  6cf0                  bge.s    L3c3a                              
L3c4a:
  03c4a  a937                  _DrawMenuBar                                ; $a937
L3c4c:
  03c4c  4cdf00c0              movem.l  (a7)+,d6/d7                        
  03c50  4e5e                  unlk     a6                                 
  03c52  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_3c54   [jump table #181]
;----------------------------------------------------------------------
f5_3c54:
  03c54  4e56fdc4              link     a6,#-572                           
  03c58  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  03c5c  3e2e0008              move.w   $8(a6),d7                          
  03c60  7c00                  moveq    #0,d6                              
  03c62  4a2e000a              tst.b    $a(a6)                             
  03c66  662a                  bne.s    L3c92                              
  03c68  3f3c00eb              move.w   #$eb,-(a7)                         
  03c6c  1f2e000a              move.b   $a(a6),-(a7)                       
  03c70  3f3c0009              move.w   #9,-(a7)                           
  03c74  42a7                  clr.l    -(a7)                              
  03c76  42a7                  clr.l    -(a7)                              
  03c78  42a7                  clr.l    -(a7)                              
  03c7a  42a7                  clr.l    -(a7)                              
  03c7c  2f3cffff97d2          move.l   #$ffff97d2,-(a7)                   
  03c82  2f3cffff8dbc          move.l   #$ffff8dbc,-(a7)                   
  03c88  3f07                  move.w   d7,-(a7)                           
  03c8a  4ead0082              jsr      f2_0b70                            
  03c8e  60000136              bra.w    L3dc6                              
L3c92:
  03c92  3f3c02bc              move.w   #$2bc,-(a7)                        
  03c96  486efec8              pea      -$138(a6)                          
  03c9a  486eff4c              pea      -$b4(a6)                           
  03c9e  4ead025a              jsr      f2_194e                            
  03ca2  303073b0ffff97d2      move.w   (-$682e,za0,d7.w*2),d0             
  03caa  2eb005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),(a7)           
  03cb2  4ead05fa              jsr      f6_0130                            
  03cb6  1600                  move.b   d0,d3                              
  03cb8  4a03                  tst.b    d3                                 
  03cba  4fef000a              lea      $a(a7),a7                          
  03cbe  6710                  beq.s    L3cd0                              
  03cc0  486efdc4              pea      -$23c(a6)                          
  03cc4  2f3c000202bb          move.l   #$202bb,-(a7)                      
  03cca  4ead0522              jsr      f4_153c                            
  03cce  600e                  bra.s    L3cde                              
L3cd0:
  03cd0  486efdc4              pea      -$23c(a6)                          
  03cd4  2f3c000102bb          move.l   #$102bb,-(a7)                      
  03cda  4ead0522              jsr      f4_153c                            
L3cde:
  03cde  486efdc4              pea      -$23c(a6)                          
  03ce2  303073b0ffff97d2      move.w   (-$682e,za0,d7.w*2),d0             
  03cea  2f3005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),-(a7)          
  03cf2  2f2efeec              move.l   -$114(a6),-(a7)                    
  03cf6  2f3c0000115c          move.l   STR_115c,-(a7)                     ; "?"
  03cfc  a98b                  _ParamText                                  ; $a98b
  03cfe  42a7                  clr.l    -(a7)                              
  03d00  3f3c02c7              move.w   #$2c7,-(a7)                        
  03d04  486eff56              pea      -$aa(a6)                           
  03d08  4878ffff              pea      ($ffff).w                          
  03d0c  a97c                  _GetNewDialog                               ; $a97c
  03d0e  285f                  movea.l  (a7)+,a4                           
  03d10  2f0c                  move.l   a4,-(a7)                           
  03d12  4ead06ba              jsr      f7_161c                            
  03d16  2e8c                  move.l   a4,(a7)                            
  03d18  a981                  _DrawDialog                                 ; $a981
  03d1a  43eefec4              lea      -$13c(a6),a1                       
  03d1e  307c00b4              movea.w  #$b4,a0                            
  03d22  a03b                  _Delay                                      ; $a03b
  03d24  2280                  move.l   d0,(a1)                            
  03d26  2f0c                  move.l   a4,-(a7)                           
  03d28  a983                  _DisposeDialog                              ; $a983
  03d2a  303073b0ffff97d2      move.w   (-$682e,za0,d7.w*2),d0             
  03d32  323073b0ffff97d2      move.w   (-$682e,za0,d7.w*2),d1             
  03d3a  21b005b0ffff735a15b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d1.w*4)
  03d48  303073b0ffff97d2      move.w   (-$682e,za0,d7.w*2),d0             
  03d50  31b073b0ffff97d203b0  move.w   (-$682e,za0,d7.w*2),(-$7c42,za0,d0.w*2)
  03d5e  7a01                  moveq    #1,d5                              
  03d60  600a                  bra.s    L3d6c                              
L3d62:
  03d62  20765520fec8          movea.l  (-$138,a6,d5.w*4),a0               
  03d68  a01f                  _DisposePtr                                 ; $a01f
  03d6a  5245                  addq.w   #1,d5                              
L3d6c:
  03d6c  ba6eff4c              cmp.w    -$b4(a6),d5                        
  03d70  6ff0                  ble.s    L3d62                              
  03d72  7cbf                  moveq    #-65,d6                            
  03d74  dc7073b0ffff97d2      add.w    (-$682e,za0,d7.w*2),d6             
  03d7c  7800                  moveq    #0,d4                              
  03d7e  4a3061b0ffff9850      tst.b    (-$67b0,za0,d6.w)                  
  03d86  6626                  bne.s    L3dae                              
  03d88  7a01                  moveq    #1,d5                              
  03d8a  600e                  bra.s    L3d9a                              
L3d8c:
  03d8c  4a3051b0ffff9850      tst.b    (-$67b0,za0,d5.w)                  
  03d94  6702                  beq.s    L3d98                              
  03d96  5244                  addq.w   #1,d4                              
L3d98:
  03d98  5245                  addq.w   #1,d5                              
L3d9a:
  03d9a  0c450006              cmpi.w   #6,d5                              
  03d9e  6fec                  ble.s    L3d8c                              
  03da0  4a44                  tst.w    d4                                 
  03da2  6f0a                  ble.s    L3dae                              
  03da4  3f3c0009              move.w   #9,-(a7)                           
  03da8  4ead022a              jsr      f2_7a4c                            
  03dac  6018                  bra.s    L3dc6                              
L3dae:
  03dae  4a3061b0ffff9850      tst.b    (-$67b0,za0,d6.w)                  
  03db6  57c0                  seq      d0                                 
  03db8  4400                  neg.b    d0                                 
  03dba  118061b0ffff9850      move.b   d0,(-$67b0,za0,d6.w)               
  03dc2  4ead072a              jsr      f7_2ab2                            
L3dc6:
  03dc6  4cee10f8fdac          movem.l  -$254(a6),d3/d4/d5/d6/d7/a4        
  03dcc  4e5e                  unlk     a6                                 
  03dce  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_3dd0   [jump table #182]
;----------------------------------------------------------------------
f5_3dd0:
  03dd0  4e56fdc4              link     a6,#-572                           
  03dd4  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  03dd8  3e2e0008              move.w   $8(a6),d7                          
  03ddc  7c00                  moveq    #0,d6                              
  03dde  4a2e000a              tst.b    $a(a6)                             
  03de2  662a                  bne.s    L3e0e                              
  03de4  3f3c00ec              move.w   #$ec,-(a7)                         
  03de8  1f2e000a              move.b   $a(a6),-(a7)                       
  03dec  3f3c0008              move.w   #8,-(a7)                           
  03df0  42a7                  clr.l    -(a7)                              
  03df2  42a7                  clr.l    -(a7)                              
  03df4  42a7                  clr.l    -(a7)                              
  03df6  42a7                  clr.l    -(a7)                              
  03df8  2f3cffff8e56          move.l   #$ffff8e56,-(a7)                   
  03dfe  2f3cffff8dba          move.l   #$ffff8dba,-(a7)                   
  03e04  3f07                  move.w   d7,-(a7)                           
  03e06  4ead0082              jsr      f2_0b70                            
  03e0a  60000136              bra.w    L3f42                              
L3e0e:
  03e0e  3f3c02bc              move.w   #$2bc,-(a7)                        
  03e12  486efec8              pea      -$138(a6)                          
  03e16  486eff4c              pea      -$b4(a6)                           
  03e1a  4ead025a              jsr      f2_194e                            
  03e1e  303073b0ffff8e56      move.w   (-$71aa,za0,d7.w*2),d0             
  03e26  2eb005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),(a7)           
  03e2e  4ead05fa              jsr      f6_0130                            
  03e32  1600                  move.b   d0,d3                              
  03e34  4a03                  tst.b    d3                                 
  03e36  4fef000a              lea      $a(a7),a7                          
  03e3a  6710                  beq.s    L3e4c                              
  03e3c  486efdc4              pea      -$23c(a6)                          
  03e40  2f3c000202bb          move.l   #$202bb,-(a7)                      
  03e46  4ead0522              jsr      f4_153c                            
  03e4a  600e                  bra.s    L3e5a                              
L3e4c:
  03e4c  486efdc4              pea      -$23c(a6)                          
  03e50  2f3c000102bb          move.l   #$102bb,-(a7)                      
  03e56  4ead0522              jsr      f4_153c                            
L3e5a:
  03e5a  486efdc4              pea      -$23c(a6)                          
  03e5e  303073b0ffff8e56      move.w   (-$71aa,za0,d7.w*2),d0             
  03e66  2f3005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),-(a7)          
  03e6e  2f2efee8              move.l   -$118(a6),-(a7)                    
  03e72  2f3c0000115e          move.l   STR_115e,-(a7)                     ; "?"
  03e78  a98b                  _ParamText                                  ; $a98b
  03e7a  42a7                  clr.l    -(a7)                              
  03e7c  3f3c02c7              move.w   #$2c7,-(a7)                        
  03e80  486eff56              pea      -$aa(a6)                           
  03e84  4878ffff              pea      ($ffff).w                          
  03e88  a97c                  _GetNewDialog                               ; $a97c
  03e8a  285f                  movea.l  (a7)+,a4                           
  03e8c  2f0c                  move.l   a4,-(a7)                           
  03e8e  4ead06ba              jsr      f7_161c                            
  03e92  2e8c                  move.l   a4,(a7)                            
  03e94  a981                  _DrawDialog                                 ; $a981
  03e96  43eefec4              lea      -$13c(a6),a1                       
  03e9a  307c00b4              movea.w  #$b4,a0                            
  03e9e  a03b                  _Delay                                      ; $a03b
  03ea0  2280                  move.l   d0,(a1)                            
  03ea2  2f0c                  move.l   a4,-(a7)                           
  03ea4  a983                  _DisposeDialog                              ; $a983
  03ea6  303073b0ffff8e56      move.w   (-$71aa,za0,d7.w*2),d0             
  03eae  323073b0ffff8e56      move.w   (-$71aa,za0,d7.w*2),d1             
  03eb6  21b005b0ffff735a15b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d1.w*4)
  03ec4  303073b0ffff8e56      move.w   (-$71aa,za0,d7.w*2),d0             
  03ecc  31b073b0ffff8e5603b0  move.w   (-$71aa,za0,d7.w*2),(-$7c42,za0,d0.w*2)
  03eda  7a01                  moveq    #1,d5                              
  03edc  600a                  bra.s    L3ee8                              
L3ede:
  03ede  20765520fec8          movea.l  (-$138,a6,d5.w*4),a0               
  03ee4  a01f                  _DisposePtr                                 ; $a01f
  03ee6  5245                  addq.w   #1,d5                              
L3ee8:
  03ee8  ba6eff4c              cmp.w    -$b4(a6),d5                        
  03eec  6ff0                  ble.s    L3ede                              
  03eee  7cc3                  moveq    #-61,d6                            
  03ef0  dc7073b0ffff8e56      add.w    (-$71aa,za0,d7.w*2),d6             
  03ef8  7800                  moveq    #0,d4                              
  03efa  4a3061b0ffff8df5      tst.b    (-$720b,za0,d6.w)                  
  03f02  6626                  bne.s    L3f2a                              
  03f04  7a01                  moveq    #1,d5                              
  03f06  600e                  bra.s    L3f16                              
L3f08:
  03f08  4a3051b0ffff8df5      tst.b    (-$720b,za0,d5.w)                  
  03f10  6702                  beq.s    L3f14                              
  03f12  5244                  addq.w   #1,d4                              
L3f14:
  03f14  5245                  addq.w   #1,d5                              
L3f16:
  03f16  0c450004              cmpi.w   #4,d5                              
  03f1a  6fec                  ble.s    L3f08                              
  03f1c  4a44                  tst.w    d4                                 
  03f1e  6f0a                  ble.s    L3f2a                              
  03f20  3f3c0008              move.w   #8,-(a7)                           
  03f24  4ead022a              jsr      f2_7a4c                            
  03f28  6018                  bra.s    L3f42                              
L3f2a:
  03f2a  4a3061b0ffff8df5      tst.b    (-$720b,za0,d6.w)                  
  03f32  57c0                  seq      d0                                 
  03f34  4400                  neg.b    d0                                 
  03f36  118061b0ffff8df5      move.b   d0,(-$720b,za0,d6.w)               
  03f3e  4ead0732              jsr      f7_2b34                            
L3f42:
  03f42  4cee10f8fdac          movem.l  -$254(a6),d3/d4/d5/d6/d7/a4        
  03f48  4e5e                  unlk     a6                                 
  03f4a  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_3f4c   [jump table #184]
;----------------------------------------------------------------------
f5_3f4c:
  03f4c  4e56fdc4              link     a6,#-572                           
  03f50  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  03f54  3e2e0008              move.w   $8(a6),d7                          
  03f58  7c00                  moveq    #0,d6                              
  03f5a  4a2e000a              tst.b    $a(a6)                             
  03f5e  662a                  bne.s    L3f8a                              
  03f60  3f3c00ea              move.w   #$ea,-(a7)                         
  03f64  1f2e000a              move.b   $a(a6),-(a7)                       
  03f68  3f3c0007              move.w   #7,-(a7)                           
  03f6c  42a7                  clr.l    -(a7)                              
  03f6e  42a7                  clr.l    -(a7)                              
  03f70  42a7                  clr.l    -(a7)                              
  03f72  42a7                  clr.l    -(a7)                              
  03f74  2f3cffff8e4a          move.l   #$ffff8e4a,-(a7)                   
  03f7a  2f3cffff8db8          move.l   #$ffff8db8,-(a7)                   
  03f80  3f07                  move.w   d7,-(a7)                           
  03f82  4ead0082              jsr      f2_0b70                            
  03f86  60000138              bra.w    L40c0                              
L3f8a:
  03f8a  3f3c02bc              move.w   #$2bc,-(a7)                        
  03f8e  486efec8              pea      -$138(a6)                          
  03f92  486eff4c              pea      -$b4(a6)                           
  03f96  4ead025a              jsr      f2_194e                            
  03f9a  303073b0ffff8e4a      move.w   (-$71b6,za0,d7.w*2),d0             
  03fa2  2eb005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),(a7)           
  03faa  4ead05fa              jsr      f6_0130                            
  03fae  1600                  move.b   d0,d3                              
  03fb0  4a03                  tst.b    d3                                 
  03fb2  4fef000a              lea      $a(a7),a7                          
  03fb6  6710                  beq.s    L3fc8                              
  03fb8  486efdc4              pea      -$23c(a6)                          
  03fbc  2f3c000202bb          move.l   #$202bb,-(a7)                      
  03fc2  4ead0522              jsr      f4_153c                            
  03fc6  600e                  bra.s    L3fd6                              
L3fc8:
  03fc8  486efdc4              pea      -$23c(a6)                          
  03fcc  2f3c000102bb          move.l   #$102bb,-(a7)                      
  03fd2  4ead0522              jsr      f4_153c                            
L3fd6:
  03fd6  486efdc4              pea      -$23c(a6)                          
  03fda  303073b0ffff8e4a      move.w   (-$71b6,za0,d7.w*2),d0             
  03fe2  2f3005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),-(a7)          
  03fea  2f2efee4              move.l   -$11c(a6),-(a7)                    
  03fee  2f3c00001160          move.l   STR_1160,-(a7)                     ; "?"
  03ff4  a98b                  _ParamText                                  ; $a98b
  03ff6  42a7                  clr.l    -(a7)                              
  03ff8  3f3c02c7              move.w   #$2c7,-(a7)                        
  03ffc  486eff56              pea      -$aa(a6)                           
  04000  4878ffff              pea      ($ffff).w                          
  04004  a97c                  _GetNewDialog                               ; $a97c
  04006  285f                  movea.l  (a7)+,a4                           
  04008  2f0c                  move.l   a4,-(a7)                           
  0400a  4ead06ba              jsr      f7_161c                            
  0400e  2e8c                  move.l   a4,(a7)                            
  04010  a981                  _DrawDialog                                 ; $a981
  04012  43eefec4              lea      -$13c(a6),a1                       
  04016  307c00b4              movea.w  #$b4,a0                            
  0401a  a03b                  _Delay                                      ; $a03b
  0401c  2280                  move.l   d0,(a1)                            
  0401e  2f0c                  move.l   a4,-(a7)                           
  04020  a983                  _DisposeDialog                              ; $a983
  04022  303073b0ffff8e4a      move.w   (-$71b6,za0,d7.w*2),d0             
  0402a  323073b0ffff8e4a      move.w   (-$71b6,za0,d7.w*2),d1             
  04032  21b005b0ffff735a15b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d1.w*4)
  04040  303073b0ffff8e4a      move.w   (-$71b6,za0,d7.w*2),d0             
  04048  31b073b0ffff8e4a03b0  move.w   (-$71b6,za0,d7.w*2),(-$7c42,za0,d0.w*2)
  04056  7801                  moveq    #1,d4                              
  04058  600a                  bra.s    L4064                              
L405a:
  0405a  20764520fec8          movea.l  (-$138,a6,d4.w*4),a0               
  04060  a01f                  _DisposePtr                                 ; $a01f
  04062  5244                  addq.w   #1,d4                              
L4064:
  04064  b86eff4c              cmp.w    -$b4(a6),d4                        
  04068  6ff0                  ble.s    L405a                              
  0406a  7cc8                  moveq    #-56,d6                            
  0406c  dc7073b0ffff8e4a      add.w    (-$71b6,za0,d7.w*2),d6             
  04074  7a00                  moveq    #0,d5                              
  04076  4a3061b0ffff9858      tst.b    (-$67a8,za0,d6.w)                  
  0407e  6628                  bne.s    L40a8                              
  04080  7801                  moveq    #1,d4                              
  04082  600e                  bra.s    L4092                              
L4084:
  04084  4a3041b0ffff9858      tst.b    (-$67a8,za0,d4.w)                  
  0408c  6702                  beq.s    L4090                              
  0408e  5245                  addq.w   #1,d5                              
L4090:
  04090  5244                  addq.w   #1,d4                              
L4092:
  04092  0c440005              cmpi.w   #5,d4                              
  04096  6fec                  ble.s    L4084                              
  04098  0c450001              cmpi.w   #1,d5                              
  0409c  6f0a                  ble.s    L40a8                              
  0409e  3f3c0007              move.w   #7,-(a7)                           
  040a2  4ead022a              jsr      f2_7a4c                            
  040a6  6018                  bra.s    L40c0                              
L40a8:
  040a8  4a3061b0ffff9858      tst.b    (-$67a8,za0,d6.w)                  
  040b0  57c0                  seq      d0                                 
  040b2  4400                  neg.b    d0                                 
  040b4  118061b0ffff9858      move.b   d0,(-$67a8,za0,d6.w)               
  040bc  4ead0742              jsr      f7_2ebe                            
L40c0:
  040c0  4cee10f8fdac          movem.l  -$254(a6),d3/d4/d5/d6/d7/a4        
  040c6  4e5e                  unlk     a6                                 
  040c8  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_40ca   [jump table #183]
;----------------------------------------------------------------------
f5_40ca:
  040ca  4e560000              link     a6,#0                              
  040ce  4a39ffff985d          tst.b    g_67a3                             
  040d4  6748                  beq.s    L411e                              
  040d6  3039ffff8370          move.w   g_7c90,d0                          
  040dc  b079ffff8372          cmp.w    g_7c8e,d0                          
  040e2  6c3a                  bge.s    L411e                              
  040e4  302e0008              move.w   $8(a6),d0                          
  040e8  c1f9ffff8390          muls.w   g_7c70,d0                          
  040ee  3f00                  move.w   d0,-(a7)                           
  040f0  4ead0242              jsr      f2_79a8                            
  040f4  d179ffff8370          add.w    d0,g_7c90                          
  040fa  3039ffff8370          move.w   g_7c90,d0                          
  04100  b079ffff8372          cmp.w    g_7c8e,d0                          
  04106  548f                  addq.l   #2,a7                              
  04108  6f08                  ble.s    L4112                              
  0410a  3039ffff8372          move.w   g_7c8e,d0                          
  04110  6006                  bra.s    L4118                              
L4112:
  04112  3039ffff8370          move.w   g_7c90,d0                          
L4118:
  04118  33c0ffff8370          move.w   d0,g_7c90                          
L411e:
  0411e  4e5e                  unlk     a6                                 
  04120  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_4122   [jump table #185]
;----------------------------------------------------------------------
f5_4122:
  04122  4e56fda2              link     a6,#-606                           
  04126  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  0412a  3d7c0001fdbe          move.w   #1,-$242(a6)                       
  04130  3d7c0001ff3e          move.w   #1,-$c2(a6)                        
  04136  7a00                  moveq    #0,d5                              
  04138  42aefeca              clr.l    -$136(a6)                          
  0413c  42aefec6              clr.l    -$13a(a6)                          
  04140  42aefec2              clr.l    -$13e(a6)                          
  04144  1d7c0001fdc1          move.b   #1,-$23f(a6)                       
  0414a  3d79ffff83bcfdb4      move.w   g_7c44,-$24c(a6)                   
  04152  2079ffff9382          movea.l  g_6c7e,a0                          
  04158  2d680010fdaa          move.l   $10(a0),-$256(a6)                  
  0415e  2d680014fdae          move.l   $14(a0),-$252(a6)                  
  04164  486efece              pea      -$132(a6)                          
  04168  a874                  _GetPort                                    ; $a874
  0416a  7601                  moveq    #1,d3                              
  0416c  6036                  bra.s    L41a4                              
L416e:
  0416e  303033b0ffff97be      move.w   (-$6842,za0,d3.w*2),d0             
  04176  303003b0ffff8c24      move.w   (-$73dc,za0,d0.w*2),d0             
  0417e  b079ffff836c          cmp.w    g_7c94,d0                          
  04184  661c                  bne.s    L41a2                              
  04186  303033b0ffff97be      move.w   (-$6842,za0,d3.w*2),d0             
  0418e  303003b0ffff8c4e      move.w   (-$73b2,za0,d0.w*2),d0             
  04196  b079ffff836e          cmp.w    g_7c92,d0                          
  0419c  6604                  bne.s    L41a2                              
  0419e  3d43000a              move.w   d3,$a(a6)                          
L41a2:
  041a2  5243                  addq.w   #1,d3                              
L41a4:
  041a4  b679ffff8e0a          cmp.w    g_71f6,d3                          
  041aa  6fc2                  ble.s    L416e                              
  041ac  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  041b2  4ebad2ba              jsr      f5_146e                            
  041b6  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  041bc  4ebad2b0              jsr      f5_146e                            
  041c0  2eb9ffff8fd6          move.l   g_702a,(a7)                        
  041c6  4ebad2a6              jsr      f5_146e                            
  041ca  2eb9ffff8fc2          move.l   g_703e,(a7)                        
  041d0  4ebad29c              jsr      f5_146e                            
  041d4  2eb9ffff8fb6          move.l   g_704a,(a7)                        
  041da  4ebad292              jsr      f5_146e                            
  041de  4297                  clr.l    (a7)                               
  041e0  3f3c0090              move.w   #$90,-(a7)                         
  041e4  a9bc                  _GetPicture                                 ; $a9bc
  041e6  285f                  movea.l  (a7)+,a4                           
  041e8  2f39ffff99f8          move.l   g_6608,-(a7)                       
  041ee  a873                  _SetPort                                    ; $a873
  041f0  2079ffff9382          movea.l  g_6c7e,a0                          
  041f6  2d680010fda2          move.l   $10(a0),-$25e(a6)                  
  041fc  2d680014fda6          move.l   $14(a0),-$25a(a6)                  
  04202  70ef                  moveq    #-17,d0                            
  04204  d06efda6              add.w    -$25a(a6),d0                       
  04208  3d40fda2              move.w   d0,-$25e(a6)                       
  0420c  70cf                  moveq    #-49,d0                            
  0420e  d06efda8              add.w    -$258(a6),d0                       
  04212  3d40fda4              move.w   d0,-$25c(a6)                       
  04216  2f0c                  move.l   a4,-(a7)                           
  04218  486efda2              pea      -$25e(a6)                          
  0421c  a8f6                  _DrawPicture                                ; $a8f6
  0421e  2079ffff99f8          movea.l  g_6608,a0                          
  04224  20680002              movea.l  $2(a0),a0                          
  04228  2f10                  move.l   (a0),-(a7)                         
  0422a  2079ffff9382          movea.l  g_6c7e,a0                          
  04230  48680002              pea      $2(a0)                             
  04234  486efdaa              pea      -$256(a6)                          
  04238  486efdaa              pea      -$256(a6)                          
  0423c  4267                  clr.w    -(a7)                              
  0423e  42a7                  clr.l    -(a7)                              
  04240  a8ec                  _CopyBits                                   ; $a8ec
  04242  2f2efece              move.l   -$132(a6),-(a7)                    
  04246  a873                  _SetPort                                    ; $a873
L4248:
  04248  486efda2              pea      -$25e(a6)                          
  0424c  3f05                  move.w   d5,-(a7)                           
  0424e  3f2e000a              move.w   $a(a6),-(a7)                       
  04252  3f2e0008              move.w   $8(a6),-(a7)                       
  04256  4ead02ba              jsr      f3_2458                            
  0425a  1800                  move.b   d0,d4                              
  0425c  5245                  addq.w   #1,d5                              
  0425e  3ebc0001              move.w   #1,(a7)                            
  04262  4ebafe66              jsr      f5_40ca                            
  04266  4fef000a              lea      $a(a7),a7                          
  0426a  302e0008              move.w   $8(a6),d0                          
  0426e  4a7003b0ffff8c78      tst.w    (-$7388,za0,d0.w*2)                
  04276  6f1a                  ble.s    L4292                              
  04278  4a79ffff8370          tst.w    g_7c90                             
  0427e  6f12                  ble.s    L4292                              
  04280  302e0008              move.w   $8(a6),d0                          
  04284  4a7003b0ffff8ccc      tst.w    (-$7334,za0,d0.w*2)                
  0428c  6f04                  ble.s    L4292                              
  0428e  4a04                  tst.b    d4                                 
  04290  67b6                  beq.s    L4248                              
L4292:
  04292  4a79ffff8370          tst.w    g_7c90                             
  04298  6e10                  bgt.s    L42aa                              
  0429a  2f2efee2              move.l   -$11e(a6),-(a7)                    
  0429e  2f2efede              move.l   -$122(a6),-(a7)                    
  042a2  4ead02ca              jsr      f3_2bdc                            
  042a6  7cff                  moveq    #-1,d6                             
  042a8  508f                  addq.l   #8,a7                              
L42aa:
  042aa  4ead01ca              jsr      f2_6b56                            
  042ae  2f0c                  move.l   a4,-(a7)                           
  042b0  a9a3                  _ReleaseResource                            ; $a9a3
  042b2  2f2efece              move.l   -$132(a6),-(a7)                    
  042b6  a873                  _SetPort                                    ; $a873
  042b8  4a46                  tst.w    d6                                 
  042ba  6c46                  bge.s    L4302                              
  042bc  4a79ffff8372          tst.w    g_7c8e                             
  042c2  6f3e                  ble.s    L4302                              
  042c4  3f39ffff8894          move.w   g_776c,-(a7)                       
  042ca  4ead043a              jsr      f4_460e                            
  042ce  0c790003ffff8894      cmpi.w   #3,g_776c                          
  042d6  548f                  addq.l   #2,a7                              
  042d8  6f08                  ble.s    L42e2                              
  042da  5579ffff8894          subq.w   #2,g_776c                          
  042e0  6008                  bra.s    L42ea                              
L42e2:
  042e2  33fc0001ffff8894      move.w   #1,g_776c                          
L42ea:
  042ea  3f39ffff8894          move.w   g_776c,-(a7)                       
  042f0  4ead0412              jsr      f4_411c                            
  042f4  4257                  clr.w    (a7)                               
  042f6  4ead039a              jsr      f3_5578                            
  042fa  4ead01d2              jsr      f2_6b9e                            
  042fe  60000094              bra.w    L4394                              
L4302:
  04302  3039ffff8370          move.w   g_7c90,d0                          
  04308  b079ffff8372          cmp.w    g_7c8e,d0                          
  0430e  6c10                  bge.s    L4320                              
  04310  4a79ffff8370          tst.w    g_7c90                             
  04316  6f08                  ble.s    L4320                              
  04318  4a04                  tst.b    d4                                 
  0431a  6604                  bne.s    L4320                              
  0431c  4ead02c2              jsr      f3_281c                            
L4320:
  04320  4a04                  tst.b    d4                                 
  04322  6770                  beq.s    L4394                              
  04324  3079ffff83bc          movea.w  g_7c44,a0                          
  0432a  7001                  moveq    #1,d0                              
  0432c  d088                  add.l    a0,d0                              
  0432e  81fc0004              divs.w   #4,d0                              
  04332  4840                  swap     d0                                 
  04334  5240                  addq.w   #1,d0                              
  04336  33c0ffff83bc          move.w   d0,g_7c44                          
  0433c  3079ffff836e          movea.w  g_7c92,a0                          
  04342  72f1                  moveq    #-15,d1                            
  04344  d288                  add.l    a0,d1                              
  04346  83fc0015              divs.w   #$15,d1                            
  0434a  3d41fdb2              move.w   d1,-$24e(a6)                       
  0434e  3079ffff836c          movea.w  g_7c94,a0                          
  04354  2e08                  move.l   a0,d7                              
  04356  8ffc0015              divs.w   #$15,d7                            
  0435a  7412                  moveq    #18,d2                             
  0435c  c5c7                  muls.w   d7,d2                              
  0435e  0682ffff88b2          addi.l   #$ffff88b2,d2                      
  04364  3041                  movea.w  d1,a0                              
  04366  d1c8                  adda.l   a0,a0                              
  04368  3f302800              move.w   $0(a0,d2.l),-(a7)                  
  0436c  4ead024a              jsr      f2_7a2c                            
  04370  33c0ffff8d9e          move.w   d0,g_7262                          
  04376  1ebc0001              move.b   #1,(a7)                            
  0437a  3f00                  move.w   d0,-(a7)                           
  0437c  4ead016a              jsr      f2_549e                            
  04380  4ead01b2              jsr      f2_6a2a                            
  04384  1ebc0001              move.b   #1,(a7)                            
  04388  4ead015a              jsr      f2_47e6                            
  0438c  4239ffff981e          clr.b    g_67e2                             
  04392  588f                  addq.l   #4,a7                              
L4394:
  04394  4cee10f8fd8a          movem.l  -$276(a6),d3/d4/d5/d6/d7/a4        
  0439a  4e5e                  unlk     a6                                 
  0439c  4e75                  rts                                         

;----------------------------------------------------------------------
; f5_439e
;----------------------------------------------------------------------
f5_439e:
  0439e  4e560000              link     a6,#0                              
  043a2  2f0c                  move.l   a4,-(a7)                           
  043a4  286e0008              movea.l  $8(a6),a4                          
  043a8  4a2e000c              tst.b    $c(a6)                             
  043ac  671a                  beq.s    L43c8                              
  043ae  2f0c                  move.l   a4,-(a7)                           
  043b0  2f3cfffefffe          move.l   #$fffefffe,-(a7)                   
  043b6  a8a9                  _InsetRect                                  ; $a8a9
  043b8  2f0c                  move.l   a4,-(a7)                           
  043ba  a8a3                  _EraseRect                                  ; $a8a3
  043bc  2f0c                  move.l   a4,-(a7)                           
  043be  2f3c00020002          move.l   #$20002,-(a7)                      
  043c4  a8a9                  _InsetRect                                  ; $a8a9
  043c6  6028                  bra.s    L43f0                              
L43c8:
  043c8  2f0c                  move.l   a4,-(a7)                           
  043ca  a8a1                  _FrameRect                                  ; $a8a1
  043cc  7001                  moveq    #1,d0                              
  043ce  d06c0002              add.w    $2(a4),d0                          
  043d2  3f00                  move.w   d0,-(a7)                           
  043d4  3f2c0004              move.w   $4(a4),-(a7)                       
  043d8  a893                  _MoveTo                                     ; $a893
  043da  3f2c0006              move.w   $6(a4),-(a7)                       
  043de  3f2c0004              move.w   $4(a4),-(a7)                       
  043e2  a891                  _LineTo                                     ; $a891
  043e4  3f2c0006              move.w   $6(a4),-(a7)                       
  043e8  7001                  moveq    #1,d0                              
  043ea  d054                  add.w    (a4),d0                            
  043ec  3f00                  move.w   d0,-(a7)                           
  043ee  a891                  _LineTo                                     ; $a891
L43f0:
  043f0  285f                  movea.l  (a7)+,a4                           
  043f2  4e5e                  unlk     a6                                 
  043f4  4e75                  rts                                         
