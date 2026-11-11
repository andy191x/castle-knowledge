; Castle Knowledge 2.6 - CODE segment 4 (26678 bytes)
; Disassembled & annotated. Globals g_XXXX = A5-XXXX; STR_XXXX = STRS literal offset.


;----------------------------------------------------------------------
; f4_0000   [jump table #117]
;----------------------------------------------------------------------
f4_0000:
  00000  4e56fcb8              link     a6,#-840                           
  00004  48e71f18              movem.l  d3/d4/d5/d6/d7/a3/a4,-(a7)         
  00008  2d79ffffab84fd3c      move.l   g_547c,-$2c4(a6)                   
  00010  2d79ffffab88fd40      move.l   g_5478,-$2c0(a6)                   
  00018  2d79ffffab8cfd34      move.l   g_5474,-$2cc(a6)                   
  00020  2d79ffffab90fd38      move.l   g_5470,-$2c8(a6)                   
  00028  7e10                  moveq    #16,d7                             
  0002a  486efd18              pea      -$2e8(a6)                          
  0002e  a874                  _GetPort                                    ; $a874
  00030  42a7                  clr.l    -(a7)                              
  00032  3f3c0faf              move.w   #$faf,-(a7)                        
  00036  486efdfe              pea      -$202(a6)                          
  0003a  4878ffff              pea      ($ffff).w                          
  0003e  a97c                  _GetNewDialog                               ; $a97c
  00040  265f                  movea.l  (a7)+,a3                           
  00042  302b0014              move.w   $14(a3),d0                         
  00046  906b0010              sub.w    $10(a3),d0                         
  0004a  3d40fcf4              move.w   d0,-$30c(a6)                       
  0004e  362b0016              move.w   $16(a3),d3                         
  00052  966b0012              sub.w    $12(a3),d3                         
  00056  3a39ffffabfc          move.w   g_5404,d5                          
  0005c  9a43                  sub.w    d3,d5                              
  0005e  48c5                  ext.l    d5                                 
  00060  8bfc0002              divs.w   #2,d5                              
  00064  4ead01ca              jsr      f2_6b56                            
  00068  426efd46              clr.w    -$2ba(a6)                          
  0006c  6014                  bra.s    L0082                              
L006e:
  0006e  302efd46              move.w   -$2ba(a6),d0                       
  00072  3200                  move.w   d0,d1                              
  00074  06412328              addi.w   #$2328,d1                          
  00078  3d810320fd04          move.w   d1,(-$2fc,a6,d0.w*2)               
  0007e  526efd46              addq.w   #1,-$2ba(a6)                       
L0082:
  00082  0c6e0004fd46          cmpi.w   #4,-$2ba(a6)                       
  00088  6de4                  blt.s    L006e                              
  0008a  42a7                  clr.l    -(a7)                              
  0008c  3f3c09c4              move.w   #$9c4,-(a7)                        
  00090  486eff52              pea      -$ae(a6)                           
  00094  4878ffff              pea      ($ffff).w                          
  00098  a97c                  _GetNewDialog                               ; $a97c
  0009a  285f                  movea.l  (a7)+,a4                           
  0009c  2f0c                  move.l   a4,-(a7)                           
  0009e  4ead06ba              jsr      f7_161c                            
  000a2  2e8b                  move.l   a3,(a7)                            
  000a4  3f05                  move.w   d5,-(a7)                           
  000a6  4878001e              pea      ($1e).w                            
  000aa  a91b                  _MoveWindow                                 ; $a91b
  000ac  2f0b                  move.l   a3,-(a7)                           
  000ae  a915                  _ShowWindow                                 ; $a915
  000b0  2f0b                  move.l   a3,-(a7)                           
  000b2  a920                  _BringToFront                               ; $a920
  000b4  2f0c                  move.l   a4,-(a7)                           
  000b6  a920                  _BringToFront                               ; $a920
  000b8  2f0c                  move.l   a4,-(a7)                           
  000ba  a873                  _SetPort                                    ; $a873
  000bc  3d6c0012fcbc          move.w   $12(a4),-$344(a6)                  
  000c2  3d6c0010fcba          move.w   $10(a4),-$346(a6)                  
  000c8  486efcba              pea      -$346(a6)                          
  000cc  a870                  _LocalToGlobal                              ; $a870
  000ce  0c6e0028fcba          cmpi.w   #$28,-$346(a6)                     
  000d4  6c0c                  bge.s    L00e2                              
  000d6  2f0c                  move.l   a4,-(a7)                           
  000d8  3f2efcbc              move.w   -$344(a6),-(a7)                    
  000dc  48780028              pea      ($28).w                            
  000e0  a91b                  _MoveWindow                                 ; $a91b
L00e2:
  000e2  3d7c0002fd46          move.w   #2,-$2ba(a6)                       
  000e8  600c                  bra.s    L00f6                              
L00ea:
  000ea  2f0c                  move.l   a4,-(a7)                           
  000ec  3f2efd46              move.w   -$2ba(a6),-(a7)                    
  000f0  a827                  _ShowDialogItem                             ; $a827
  000f2  526efd46              addq.w   #1,-$2ba(a6)                       
L00f6:
  000f6  0c6e0003fd46          cmpi.w   #3,-$2ba(a6)                       
  000fc  6dec                  blt.s    L00ea                              
  000fe  2f0c                  move.l   a4,-(a7)                           
  00100  3f3c0001              move.w   #1,-(a7)                           
  00104  486efd44              pea      -$2bc(a6)                          
  00108  486efd1c              pea      -$2e4(a6)                          
  0010c  486efd5a              pea      -$2a6(a6)                          
  00110  a98d                  _GetDialogItem                              ; $a98d
  00112  2d6c0010fcd2          move.l   $10(a4),-$32e(a6)                  
  00118  2d6c0014fcd6          move.l   $14(a4),-$32a(a6)                  
  0011e  7001                  moveq    #1,d0                              
  00120  d06efd5e              add.w    -$2a2(a6),d0                       
  00124  3d40fcd2              move.w   d0,-$32e(a6)                       
  00128  2d6efcd2fcca          move.l   -$32e(a6),-$336(a6)                
  0012e  2d6efcd6fcce          move.l   -$32a(a6),-$332(a6)                
  00134  3d6efcd2fcba          move.w   -$32e(a6),-$346(a6)                
  0013a  3d6efcd4fcbc          move.w   -$32c(a6),-$344(a6)                
  00140  486efcba              pea      -$346(a6)                          
  00144  a870                  _LocalToGlobal                              ; $a870
  00146  3d6efcbafcda          move.w   -$346(a6),-$326(a6)                
  0014c  3d6efcbcfcdc          move.w   -$344(a6),-$324(a6)                
  00152  3d6efcd6fcba          move.w   -$32a(a6),-$346(a6)                
  00158  3d6efcd8fcbc          move.w   -$328(a6),-$344(a6)                
  0015e  486efcba              pea      -$346(a6)                          
  00162  a870                  _LocalToGlobal                              ; $a870
  00164  3d6efcbafcde          move.w   -$346(a6),-$322(a6)                
  0016a  3d6efcbcfce0          move.w   -$344(a6),-$320(a6)                
  00170  2d6efcd2fce2          move.l   -$32e(a6),-$31e(a6)                
  00176  2d6efcd6fce6          move.l   -$32a(a6),-$31a(a6)                
  0017c  2f0c                  move.l   a4,-(a7)                           
  0017e  a915                  _ShowWindow                                 ; $a915
  00180  2f0c                  move.l   a4,-(a7)                           
  00182  a981                  _DrawDialog                                 ; $a981
  00184  2f0b                  move.l   a3,-(a7)                           
  00186  a981                  _DrawDialog                                 ; $a981
  00188  486efcd2              pea      -$32e(a6)                          
  0018c  48780002              pea      ($2).w                             
  00190  a8a9                  _InsetRect                                  ; $a8a9
  00192  556efcd6              subq.w   #2,-$32a(a6)                       
  00196  2079ffff9a60          movea.l  g_65a0,a0                          
  0019c  20680002              movea.l  $2(a0),a0                          
  001a0  2f10                  move.l   (a0),-(a7)                         
  001a2  486c0002              pea      $2(a4)                             
  001a6  486efcd2              pea      -$32e(a6)                          
  001aa  486efce2              pea      -$31e(a6)                          
  001ae  4267                  clr.w    -(a7)                              
  001b0  42a7                  clr.l    -(a7)                              
  001b2  a8ec                  _CopyBits                                   ; $a8ec
  001b4  2f0c                  move.l   a4,-(a7)                           
  001b6  486efd5a              pea      -$2a6(a6)                          
  001ba  4ead078a              jsr      f7_3fde                            
  001be  426efd46              clr.w    -$2ba(a6)                          
  001c2  508f                  addq.l   #8,a7                              
  001c4  603a                  bra.s    L0200                              
L01c6:
  001c6  2f0c                  move.l   a4,-(a7)                           
  001c8  7003                  moveq    #3,d0                              
  001ca  d06efd46              add.w    -$2ba(a6),d0                       
  001ce  3f00                  move.w   d0,-(a7)                           
  001d0  486efd48              pea      -$2b8(a6)                          
  001d4  302efd46              move.w   -$2ba(a6),d0                       
  001d8  48760520fd20          pea      (-$2e0,a6,d0.w*4)                  
  001de  48760720fd82          pea      (-$27e,a6,d0.w*8)                  
  001e4  a98d                  _GetDialogItem                              ; $a98d
  001e6  302efd46              move.w   -$2ba(a6),d0                       
  001ea  41f60720fd62          lea      (-$29e,a6,d0.w*8),a0               
  001f0  20f60720fd82          move.l   (-$27e,a6,d0.w*8),(a0)+            
  001f6  20f60720fd86          move.l   (-$27a,a6,d0.w*8),(a0)+            
  001fc  526efd46              addq.w   #1,-$2ba(a6)                       
L0200:
  00200  0c6e0004fd46          cmpi.w   #4,-$2ba(a6)                       
  00206  6dbe                  blt.s    L01c6                              
  00208  42a7                  clr.l    -(a7)                              
  0020a  a975                  _TickCount                                  ; $a975
  0020c  2c1f                  move.l   (a7)+,d6                           
  0020e  2079ffff979e          movea.l  g_6862,a0                          
  00214  a029                  _HLock                                      ; $a029
  00216  2f39ffff979e          move.l   g_6862,-(a7)                       
  0021c  a9d0                  _TECalText                                  ; $a9d0
  0021e  2079ffff979e          movea.l  g_6862,a0                          
  00224  2050                  movea.l  (a0),a0                            
  00226  2f280052              move.l   $52(a0),-(a7)                      
  0022a  a922                  _BeginUpdate                                ; $a922
  0022c  2079ffff979e          movea.l  g_6862,a0                          
  00232  2050                  movea.l  (a0),a0                            
  00234  48680008              pea      $8(a0)                             
  00238  2f39ffff979e          move.l   g_6862,-(a7)                       
  0023e  a9d3                  _TEUpdate                                   ; $a9d3
  00240  2079ffff979e          movea.l  g_6862,a0                          
  00246  2050                  movea.l  (a0),a0                            
  00248  2f280052              move.l   $52(a0),-(a7)                      
  0024c  a923                  _EndUpdate                                  ; $a923
  0024e  43eefd0c              lea      -$2f4(a6),a1                       
  00252  307c002d              movea.w  #$2d,a0                            
  00256  a03b                  _Delay                                      ; $a03b
  00258  2280                  move.l   d0,(a1)                            
  0025a  3f3c5c0e              move.w   #$5c0e,-(a7)                       
  0025e  4ead030a              jsr      f3_4238                            
  00262  548f                  addq.l   #2,a7                              
L0264:
  00264  3f3c0014              move.w   #$14,-(a7)                         
  00268  4ead0792              jsr      f7_416a                            
  0026c  7003                  moveq    #3,d0                              
  0026e  2239ffff9828          move.l   g_67d8,d1                          
  00274  4c401801              divs.l   d0,d1                              
  00278  43eefd10              lea      -$2f0(a6),a1                       
  0027c  2041                  movea.l  d1,a0                              
  0027e  a03b                  _Delay                                      ; $a03b
  00280  2280                  move.l   d0,(a1)                            
  00282  2079ffff9a60          movea.l  g_65a0,a0                          
  00288  20680002              movea.l  $2(a0),a0                          
  0028c  2f10                  move.l   (a0),-(a7)                         
  0028e  2079ffff9a68          movea.l  g_6598,a0                          
  00294  20680002              movea.l  $2(a0),a0                          
  00298  2f10                  move.l   (a0),-(a7)                         
  0029a  486efcd2              pea      -$32e(a6)                          
  0029e  486efce2              pea      -$31e(a6)                          
  002a2  4267                  clr.w    -(a7)                              
  002a4  42a7                  clr.l    -(a7)                              
  002a6  a8ec                  _CopyBits                                   ; $a8ec
  002a8  2f39ffff9a68          move.l   g_6598,-(a7)                       
  002ae  a873                  _SetPort                                    ; $a873
  002b0  426efd46              clr.w    -$2ba(a6)                          
  002b4  548f                  addq.l   #2,a7                              
  002b6  6032                  bra.s    L02ea                              
L02b8:
  002b8  302efd46              move.w   -$2ba(a6),d0                       
  002bc  48760720fd82          pea      (-$27e,a6,d0.w*8)                  
  002c2  3f360320fd3c          move.w   (-$2c4,a6,d0.w*2),-(a7)            
  002c8  3f360320fd34          move.w   (-$2cc,a6,d0.w*2),-(a7)            
  002ce  a8a8                  _OffsetRect                                 ; $a8a8
  002d0  302efd46              move.w   -$2ba(a6),d0                       
  002d4  3f360320fd04          move.w   (-$2fc,a6,d0.w*2),-(a7)            
  002da  48760720fd82          pea      (-$27e,a6,d0.w*8)                  
  002e0  4ead06d2              jsr      f7_1a72                            
  002e4  5c8f                  addq.l   #6,a7                              
  002e6  526efd46              addq.w   #1,-$2ba(a6)                       
L02ea:
  002ea  0c6e0004fd46          cmpi.w   #4,-$2ba(a6)                       
  002f0  6dc6                  blt.s    L02b8                              
  002f2  2f0c                  move.l   a4,-(a7)                           
  002f4  a873                  _SetPort                                    ; $a873
  002f6  2079ffff9a68          movea.l  g_6598,a0                          
  002fc  20680002              movea.l  $2(a0),a0                          
  00300  2f10                  move.l   (a0),-(a7)                         
  00302  486c0002              pea      $2(a4)                             
  00306  486efce2              pea      -$31e(a6)                          
  0030a  486efce2              pea      -$31e(a6)                          
  0030e  4267                  clr.w    -(a7)                              
  00310  42a7                  clr.l    -(a7)                              
  00312  a8ec                  _CopyBits                                   ; $a8ec
  00314  4a39ffff8dfb          tst.b    g_7205                             
  0031a  6604                  bne.s    L0320                              
  0031c  4ead031a              jsr      f3_4424                            
L0320:
  00320  4a39ffff8dfb          tst.b    g_7205                             
  00326  670a                  beq.s    L0332                              
  00328  3f3c5c0e              move.w   #$5c0e,-(a7)                       
  0032c  4ead030a              jsr      f3_4238                            
  00330  548f                  addq.l   #2,a7                              
L0332:
  00332  4227                  clr.b    -(a7)                              
  00334  3f3c0002              move.w   #2,-(a7)                           
  00338  486efdaa              pea      -$256(a6)                          
  0033c  a970                  _GetNextEvent                               ; $a970
  0033e  7800                  moveq    #0,d4                              
  00340  181f                  move.b   (a7)+,d4                           
  00342  302efd94              move.w   -$26c(a6),d0                       
  00346  b06efd8c              cmp.w    -$274(a6),d0                       
  0034a  6f06                  ble.s    L0352                              
  0034c  4a44                  tst.w    d4                                 
  0034e  6700ff14              beq.w    L0264                              
L0352:
  00352  4ead032a              jsr      f3_44be                            
  00356  302efd94              move.w   -$26c(a6),d0                       
  0035a  b06efd8c              cmp.w    -$274(a6),d0                       
  0035e  6e000604              bgt.w    L0964                              
  00362  2f0c                  move.l   a4,-(a7)                           
  00364  3f3c0002              move.w   #2,-(a7)                           
  00368  a828                  _LayerDispatch                              ; $a828
  0036a  2f0c                  move.l   a4,-(a7)                           
  0036c  3f3c0002              move.w   #2,-(a7)                           
  00370  486efd46              pea      -$2ba(a6)                          
  00374  486efd30              pea      -$2d0(a6)                          
  00378  486efda2              pea      -$25e(a6)                          
  0037c  a98d                  _GetDialogItem                              ; $a98d
  0037e  2079ffff9a60          movea.l  g_65a0,a0                          
  00384  20680002              movea.l  $2(a0),a0                          
  00388  2f10                  move.l   (a0),-(a7)                         
  0038a  2079ffff9a68          movea.l  g_6598,a0                          
  00390  20680002              movea.l  $2(a0),a0                          
  00394  2f10                  move.l   (a0),-(a7)                         
  00396  486efcd2              pea      -$32e(a6)                          
  0039a  486efce2              pea      -$31e(a6)                          
  0039e  4267                  clr.w    -(a7)                              
  003a0  42a7                  clr.l    -(a7)                              
  003a2  a8ec                  _CopyBits                                   ; $a8ec
  003a4  426efd46              clr.w    -$2ba(a6)                          
  003a8  2d6efda2fd4a          move.l   -$25e(a6),-$2b6(a6)                
  003ae  2d6efda6fd4e          move.l   -$25a(a6),-$2b2(a6)                
  003b4  486efd4a              pea      -$2b6(a6)                          
  003b8  2f3c0028001e          move.l   #$28001e,-(a7)                     
  003be  a8a9                  _InsetRect                                  ; $a8a9
  003c0  486efcc2              pea      -$33e(a6)                          
  003c4  42a7                  clr.l    -(a7)                              
  003c6  2f3c00820078          move.l   #$820078,-(a7)                     
  003cc  a8a7                  _SetRect                                    ; $a8a7
  003ce  4a39ffff8dfb          tst.b    g_7205                             
  003d4  670a                  beq.s    L03e0                              
  003d6  3f3c5c10              move.w   #$5c10,-(a7)                       
  003da  4ead030a              jsr      f3_4238                            
  003de  548f                  addq.l   #2,a7                              
L03e0:
  003e0  2f39ffff9a64          move.l   g_659c,-(a7)                       
  003e6  a873                  _SetPort                                    ; $a873
  003e8  2079ffff9a64          movea.l  g_659c,a0                          
  003ee  48680010              pea      $10(a0)                            
  003f2  a8a3                  _EraseRect                                  ; $a8a3
  003f4  2079ffff9a20          movea.l  g_65e0,a0                          
  003fa  20680002              movea.l  $2(a0),a0                          
  003fe  2f10                  move.l   (a0),-(a7)                         
  00400  2079ffff9a64          movea.l  g_659c,a0                          
  00406  20680002              movea.l  $2(a0),a0                          
  0040a  2f10                  move.l   (a0),-(a7)                         
  0040c  486efcc2              pea      -$33e(a6)                          
  00410  486efd4a              pea      -$2b6(a6)                          
  00414  3f3c0024              move.w   #$24,-(a7)                         
  00418  42a7                  clr.l    -(a7)                              
  0041a  a8ec                  _CopyBits                                   ; $a8ec
  0041c  2079ffff9a64          movea.l  g_659c,a0                          
  00422  20680002              movea.l  $2(a0),a0                          
  00426  2f10                  move.l   (a0),-(a7)                         
  00428  2079ffff9a68          movea.l  g_6598,a0                          
  0042e  20680002              movea.l  $2(a0),a0                          
  00432  2f10                  move.l   (a0),-(a7)                         
  00434  486efd4a              pea      -$2b6(a6)                          
  00438  486efd4a              pea      -$2b6(a6)                          
  0043c  3f3c0024              move.w   #$24,-(a7)                         
  00440  42a7                  clr.l    -(a7)                              
  00442  a8ec                  _CopyBits                                   ; $a8ec
  00444  2079ffff9a68          movea.l  g_6598,a0                          
  0044a  20680002              movea.l  $2(a0),a0                          
  0044e  2f10                  move.l   (a0),-(a7)                         
  00450  486c0002              pea      $2(a4)                             
  00454  486efce2              pea      -$31e(a6)                          
  00458  486efce2              pea      -$31e(a6)                          
  0045c  3f3c0024              move.w   #$24,-(a7)                         
  00460  42a7                  clr.l    -(a7)                              
  00462  a8ec                  _CopyBits                                   ; $a8ec
  00464  60000118              bra.w    L057e                              
L0468:
  00468  4a39ffff8dfb          tst.b    g_7205                             
  0046e  670a                  beq.s    L047a                              
  00470  3f3c5c10              move.w   #$5c10,-(a7)                       
  00474  4ead030a              jsr      f3_4238                            
  00478  548f                  addq.l   #2,a7                              
L047a:
  0047a  4a39ffff8dfb          tst.b    g_7205                             
  00480  6604                  bne.s    L0486                              
  00482  4ead031a              jsr      f3_4424                            
L0486:
  00486  4227                  clr.b    -(a7)                              
  00488  3f3c0002              move.w   #2,-(a7)                           
  0048c  486efdaa              pea      -$256(a6)                          
  00490  a970                  _GetNextEvent                               ; $a970
  00492  7800                  moveq    #0,d4                              
  00494  181f                  move.b   (a7)+,d4                           
  00496  43eefd10              lea      -$2f0(a6),a1                       
  0049a  2079ffff9828          movea.l  g_67d8,a0                          
  004a0  a03b                  _Delay                                      ; $a03b
  004a2  2280                  move.l   d0,(a1)                            
  004a4  3f3c000a              move.w   #$a,-(a7)                          
  004a8  4ead0792              jsr      f7_416a                            
  004ac  2f39ffff9a64          move.l   g_659c,-(a7)                       
  004b2  a873                  _SetPort                                    ; $a873
  004b4  2079ffff9a64          movea.l  g_659c,a0                          
  004ba  48680010              pea      $10(a0)                            
  004be  a8a3                  _EraseRect                                  ; $a8a3
  004c0  2079ffff9a60          movea.l  g_65a0,a0                          
  004c6  20680002              movea.l  $2(a0),a0                          
  004ca  2f10                  move.l   (a0),-(a7)                         
  004cc  2079ffff9a68          movea.l  g_6598,a0                          
  004d2  20680002              movea.l  $2(a0),a0                          
  004d6  2f10                  move.l   (a0),-(a7)                         
  004d8  486efcd2              pea      -$32e(a6)                          
  004dc  486efce2              pea      -$31e(a6)                          
  004e0  3f3c0024              move.w   #$24,-(a7)                         
  004e4  42a7                  clr.l    -(a7)                              
  004e6  a8ec                  _CopyBits                                   ; $a8ec
  004e8  302efd46              move.w   -$2ba(a6),d0                       
  004ec  207005b2ffff9a200002  movea.l  ([-$65e0,a0],d0.w*4,$2),a0         
  004f6  2f10                  move.l   (a0),-(a7)                         
  004f8  2079ffff9a64          movea.l  g_659c,a0                          
  004fe  20680002              movea.l  $2(a0),a0                          
  00502  2f10                  move.l   (a0),-(a7)                         
  00504  486efcc2              pea      -$33e(a6)                          
  00508  486efd4a              pea      -$2b6(a6)                          
  0050c  3f3c0024              move.w   #$24,-(a7)                         
  00510  42a7                  clr.l    -(a7)                              
  00512  a8ec                  _CopyBits                                   ; $a8ec
  00514  2079ffff9a64          movea.l  g_659c,a0                          
  0051a  20680002              movea.l  $2(a0),a0                          
  0051e  2f10                  move.l   (a0),-(a7)                         
  00520  2079ffff9a68          movea.l  g_6598,a0                          
  00526  20680002              movea.l  $2(a0),a0                          
  0052a  2f10                  move.l   (a0),-(a7)                         
  0052c  486efd4a              pea      -$2b6(a6)                          
  00530  486efd4a              pea      -$2b6(a6)                          
  00534  3f3c0024              move.w   #$24,-(a7)                         
  00538  42a7                  clr.l    -(a7)                              
  0053a  a8ec                  _CopyBits                                   ; $a8ec
  0053c  486efd4a              pea      -$2b6(a6)                          
  00540  2f3cfffeffff          move.l   #$fffeffff,-(a7)                   
  00546  a8a9                  _InsetRect                                  ; $a8a9
  00548  2f0c                  move.l   a4,-(a7)                           
  0054a  a873                  _SetPort                                    ; $a873
  0054c  2079ffff9a68          movea.l  g_6598,a0                          
  00552  20680002              movea.l  $2(a0),a0                          
  00556  2f10                  move.l   (a0),-(a7)                         
  00558  486c0002              pea      $2(a4)                             
  0055c  486efce2              pea      -$31e(a6)                          
  00560  486efce2              pea      -$31e(a6)                          
  00564  4267                  clr.w    -(a7)                              
  00566  42a7                  clr.l    -(a7)                              
  00568  a8ec                  _CopyBits                                   ; $a8ec
  0056a  306efd46              movea.w  -$2ba(a6),a0                       
  0056e  7001                  moveq    #1,d0                              
  00570  d088                  add.l    a0,d0                              
  00572  81fc0010              divs.w   #$10,d0                            
  00576  4840                  swap     d0                                 
  00578  3d40fd46              move.w   d0,-$2ba(a6)                       
  0057c  548f                  addq.l   #2,a7                              
L057e:
  0057e  4a44                  tst.w    d4                                 
  00580  660c                  bne.s    L058e                              
  00582  302efda6              move.w   -$25a(a6),d0                       
  00586  b06efd4e              cmp.w    -$2b2(a6),d0                       
  0058a  6e00fedc              bgt.w    L0468                              
L058e:
  0058e  4ead032a              jsr      f3_44be                            
  00592  302efd4e              move.w   -$2b2(a6),d0                       
  00596  b06efda6              cmp.w    -$25a(a6),d0                       
  0059a  6d000150              blt.w    L06ec                              
L059e:
  0059e  2079ffff9a60          movea.l  g_65a0,a0                          
  005a4  20680002              movea.l  $2(a0),a0                          
  005a8  2f10                  move.l   (a0),-(a7)                         
  005aa  2079ffff9a68          movea.l  g_6598,a0                          
  005b0  20680002              movea.l  $2(a0),a0                          
  005b4  2f10                  move.l   (a0),-(a7)                         
  005b6  486efcd2              pea      -$32e(a6)                          
  005ba  486efce2              pea      -$31e(a6)                          
  005be  4267                  clr.w    -(a7)                              
  005c0  42a7                  clr.l    -(a7)                              
  005c2  a8ec                  _CopyBits                                   ; $a8ec
  005c4  4a39ffff8dfb          tst.b    g_7205                             
  005ca  670a                  beq.s    L05d6                              
  005cc  3f3c5c10              move.w   #$5c10,-(a7)                       
  005d0  4ead030a              jsr      f3_4238                            
  005d4  548f                  addq.l   #2,a7                              
L05d6:
  005d6  4a39ffff8dfb          tst.b    g_7205                             
  005dc  6604                  bne.s    L05e2                              
  005de  4ead031a              jsr      f3_4424                            
L05e2:
  005e2  3f3c000a              move.w   #$a,-(a7)                          
  005e6  4ead0792              jsr      f7_416a                            
  005ea  43eefd10              lea      -$2f0(a6),a1                       
  005ee  2079ffff9828          movea.l  g_67d8,a0                          
  005f4  a03b                  _Delay                                      ; $a03b
  005f6  2280                  move.l   d0,(a1)                            
  005f8  2f39ffff9a64          move.l   g_659c,-(a7)                       
  005fe  a873                  _SetPort                                    ; $a873
  00600  2079ffff9a64          movea.l  g_659c,a0                          
  00606  48680010              pea      $10(a0)                            
  0060a  a8a3                  _EraseRect                                  ; $a8a3
  0060c  2079ffff9a60          movea.l  g_65a0,a0                          
  00612  20680002              movea.l  $2(a0),a0                          
  00616  2f10                  move.l   (a0),-(a7)                         
  00618  2079ffff9a68          movea.l  g_6598,a0                          
  0061e  20680002              movea.l  $2(a0),a0                          
  00622  2f10                  move.l   (a0),-(a7)                         
  00624  486efcd2              pea      -$32e(a6)                          
  00628  486efce2              pea      -$31e(a6)                          
  0062c  3f3c0024              move.w   #$24,-(a7)                         
  00630  42a7                  clr.l    -(a7)                              
  00632  a8ec                  _CopyBits                                   ; $a8ec
  00634  302efd46              move.w   -$2ba(a6),d0                       
  00638  207005b2ffff9a200002  movea.l  ([-$65e0,a0],d0.w*4,$2),a0         
  00642  2f10                  move.l   (a0),-(a7)                         
  00644  2079ffff9a64          movea.l  g_659c,a0                          
  0064a  20680002              movea.l  $2(a0),a0                          
  0064e  2f10                  move.l   (a0),-(a7)                         
  00650  486efcc2              pea      -$33e(a6)                          
  00654  486efd4a              pea      -$2b6(a6)                          
  00658  3f3c0024              move.w   #$24,-(a7)                         
  0065c  42a7                  clr.l    -(a7)                              
  0065e  a8ec                  _CopyBits                                   ; $a8ec
  00660  2079ffff9a64          movea.l  g_659c,a0                          
  00666  20680002              movea.l  $2(a0),a0                          
  0066a  2f10                  move.l   (a0),-(a7)                         
  0066c  2079ffff9a68          movea.l  g_6598,a0                          
  00672  20680002              movea.l  $2(a0),a0                          
  00676  2f10                  move.l   (a0),-(a7)                         
  00678  486efd4a              pea      -$2b6(a6)                          
  0067c  486efd4a              pea      -$2b6(a6)                          
  00680  3f3c0024              move.w   #$24,-(a7)                         
  00684  42a7                  clr.l    -(a7)                              
  00686  a8ec                  _CopyBits                                   ; $a8ec
  00688  2f0c                  move.l   a4,-(a7)                           
  0068a  a873                  _SetPort                                    ; $a873
  0068c  2079ffff9a68          movea.l  g_6598,a0                          
  00692  20680002              movea.l  $2(a0),a0                          
  00696  2f10                  move.l   (a0),-(a7)                         
  00698  486c0002              pea      $2(a4)                             
  0069c  486efce2              pea      -$31e(a6)                          
  006a0  486efce2              pea      -$31e(a6)                          
  006a4  4267                  clr.w    -(a7)                              
  006a6  42a7                  clr.l    -(a7)                              
  006a8  a8ec                  _CopyBits                                   ; $a8ec
  006aa  306efd46              movea.w  -$2ba(a6),a0                       
  006ae  7001                  moveq    #1,d0                              
  006b0  d088                  add.l    a0,d0                              
  006b2  81fc0010              divs.w   #$10,d0                            
  006b6  4840                  swap     d0                                 
  006b8  3d40fd46              move.w   d0,-$2ba(a6)                       
  006bc  4217                  clr.b    (a7)                               
  006be  3f3c0002              move.w   #2,-(a7)                           
  006c2  486efdaa              pea      -$256(a6)                          
  006c6  a970                  _GetNextEvent                               ; $a970
  006c8  7800                  moveq    #0,d4                              
  006ca  181f                  move.b   (a7)+,d4                           
  006cc  4a44                  tst.w    d4                                 
  006ce  661c                  bne.s    L06ec                              
  006d0  2079ffff979e          movea.l  g_6862,a0                          
  006d6  2050                  movea.l  (a0),a0                            
  006d8  700f                  moveq    #15,d0                             
  006da  c1e8005e              muls.w   $5e(a0),d0                         
  006de  0640000a              addi.w   #$a,d0                             
  006e2  b079ffff836a          cmp.w    g_7c96,d0                          
  006e8  6e00feb4              bgt.w    L059e                              
L06ec:
  006ec  4ead032a              jsr      f3_44be                            
  006f0  2079ffff979e          movea.l  g_6862,a0                          
  006f6  2050                  movea.l  (a0),a0                            
  006f8  700f                  moveq    #15,d0                             
  006fa  c1e8005e              muls.w   $5e(a0),d0                         
  006fe  0640000a              addi.w   #$a,d0                             
  00702  b079ffff836a          cmp.w    g_7c96,d0                          
  00708  6e00025a              bgt.w    L0964                              
  0070c  4a44                  tst.w    d4                                 
  0070e  66000254              bne.w    L0964                              
  00712  426efd48              clr.w    -$2b8(a6)                          
  00716  426efd46              clr.w    -$2ba(a6)                          
L071a:
  0071a  4a39ffff8dfb          tst.b    g_7205                             
  00720  670a                  beq.s    L072c                              
  00722  3f3c5c0f              move.w   #$5c0f,-(a7)                       
  00726  4ead030a              jsr      f3_4238                            
  0072a  548f                  addq.l   #2,a7                              
L072c:
  0072c  4a39ffff8dfb          tst.b    g_7205                             
  00732  6604                  bne.s    L0738                              
  00734  4ead031a              jsr      f3_4424                            
L0738:
  00738  3f3c000a              move.w   #$a,-(a7)                          
  0073c  4ead0792              jsr      f7_416a                            
  00740  2f39ffff9a68          move.l   g_6598,-(a7)                       
  00746  a873                  _SetPort                                    ; $a873
  00748  486efcca              pea      -$336(a6)                          
  0074c  a8a3                  _EraseRect                                  ; $a8a3
  0074e  2079ffff9a60          movea.l  g_65a0,a0                          
  00754  20680002              movea.l  $2(a0),a0                          
  00758  2f10                  move.l   (a0),-(a7)                         
  0075a  2079ffff9a68          movea.l  g_6598,a0                          
  00760  20680002              movea.l  $2(a0),a0                          
  00764  2f10                  move.l   (a0),-(a7)                         
  00766  486efcd2              pea      -$32e(a6)                          
  0076a  486efce2              pea      -$31e(a6)                          
  0076e  4267                  clr.w    -(a7)                              
  00770  42a7                  clr.l    -(a7)                              
  00772  a8ec                  _CopyBits                                   ; $a8ec
  00774  302efd48              move.w   -$2b8(a6),d0                       
  00778  48760720fd82          pea      (-$27e,a6,d0.w*8)                  
  0077e  2f3c000f0003          move.l   #$f0003,-(a7)                      
  00784  a8a8                  _OffsetRect                                 ; $a8a8
  00786  0c6e0003fd48          cmpi.w   #3,-$2b8(a6)                       
  0078c  548f                  addq.l   #2,a7                              
  0078e  6c000092              bge.w    L0822                              
  00792  2f39ffff9a64          move.l   g_659c,-(a7)                       
  00798  a873                  _SetPort                                    ; $a873
  0079a  2079ffff9a64          movea.l  g_659c,a0                          
  007a0  48680010              pea      $10(a0)                            
  007a4  a8a3                  _EraseRect                                  ; $a8a3
  007a6  2079ffff9a60          movea.l  g_65a0,a0                          
  007ac  20680002              movea.l  $2(a0),a0                          
  007b0  2f10                  move.l   (a0),-(a7)                         
  007b2  2079ffff9a68          movea.l  g_6598,a0                          
  007b8  20680002              movea.l  $2(a0),a0                          
  007bc  2f10                  move.l   (a0),-(a7)                         
  007be  486efcd2              pea      -$32e(a6)                          
  007c2  486efce2              pea      -$31e(a6)                          
  007c6  3f3c0024              move.w   #$24,-(a7)                         
  007ca  42a7                  clr.l    -(a7)                              
  007cc  a8ec                  _CopyBits                                   ; $a8ec
  007ce  302efd46              move.w   -$2ba(a6),d0                       
  007d2  207005b2ffff9a200002  movea.l  ([-$65e0,a0],d0.w*4,$2),a0         
  007dc  2f10                  move.l   (a0),-(a7)                         
  007de  2079ffff9a64          movea.l  g_659c,a0                          
  007e4  20680002              movea.l  $2(a0),a0                          
  007e8  2f10                  move.l   (a0),-(a7)                         
  007ea  486efcc2              pea      -$33e(a6)                          
  007ee  486efda2              pea      -$25e(a6)                          
  007f2  3f3c0024              move.w   #$24,-(a7)                         
  007f6  42a7                  clr.l    -(a7)                              
  007f8  a8ec                  _CopyBits                                   ; $a8ec
  007fa  2079ffff9a64          movea.l  g_659c,a0                          
  00800  20680002              movea.l  $2(a0),a0                          
  00804  2f10                  move.l   (a0),-(a7)                         
  00806  2079ffff9a68          movea.l  g_6598,a0                          
  0080c  20680002              movea.l  $2(a0),a0                          
  00810  2f10                  move.l   (a0),-(a7)                         
  00812  486efda2              pea      -$25e(a6)                          
  00816  486efda2              pea      -$25e(a6)                          
  0081a  3f3c0024              move.w   #$24,-(a7)                         
  0081e  42a7                  clr.l    -(a7)                              
  00820  a8ec                  _CopyBits                                   ; $a8ec
L0822:
  00822  302efd48              move.w   -$2b8(a6),d0                       
  00826  3f360320fd04          move.w   (-$2fc,a6,d0.w*2),-(a7)            
  0082c  48760720fd82          pea      (-$27e,a6,d0.w*8)                  
  00832  4ead06d2              jsr      f7_1a72                            
  00836  302efd48              move.w   -$2b8(a6),d0                       
  0083a  2079ffff9a68          movea.l  g_6598,a0                          
  00840  30360720fd84          move.w   (-$27c,a6,d0.w*8),d0               
  00846  b0680016              cmp.w    $16(a0),d0                         
  0084a  5c8f                  addq.l   #6,a7                              
  0084c  6f1c                  ble.s    L086a                              
  0084e  302efd48              move.w   -$2b8(a6),d0                       
  00852  2079ffff9a68          movea.l  g_6598,a0                          
  00858  30360720fd82          move.w   (-$27e,a6,d0.w*8),d0               
  0085e  b0680014              cmp.w    $14(a0),d0                         
  00862  6f06                  ble.s    L086a                              
  00864  526efd48              addq.w   #1,-$2b8(a6)                       
  00868  5947                  subq.w   #4,d7                              
L086a:
  0086a  43eefd10              lea      -$2f0(a6),a1                       
  0086e  2079ffff9828          movea.l  g_67d8,a0                          
  00874  a03b                  _Delay                                      ; $a03b
  00876  2280                  move.l   d0,(a1)                            
  00878  4227                  clr.b    -(a7)                              
  0087a  302efd48              move.w   -$2b8(a6),d0                       
  0087e  48760720fd82          pea      (-$27e,a6,d0.w*8)                  
  00884  2079ffff9a68          movea.l  g_6598,a0                          
  0088a  48680010              pea      $10(a0)                            
  0088e  486efce2              pea      -$31e(a6)                          
  00892  a8aa                  _SectRect                                   ; $a8aa
  00894  4a1f                  tst.b    (a7)+                              
  00896  6634                  bne.s    L08cc                              
  00898  0c6e0003fd48          cmpi.w   #3,-$2b8(a6)                       
  0089e  6c2c                  bge.s    L08cc                              
  008a0  526efd48              addq.w   #1,-$2b8(a6)                       
  008a4  5947                  subq.w   #4,d7                              
  008a6  486efda2              pea      -$25e(a6)                          
  008aa  302efda8              move.w   -$258(a6),d0                       
  008ae  906efda4              sub.w    -$25c(a6),d0                       
  008b2  48c0                  ext.l    d0                                 
  008b4  81fc0008              divs.w   #8,d0                              
  008b8  3f00                  move.w   d0,-(a7)                           
  008ba  302efda6              move.w   -$25a(a6),d0                       
  008be  906efda2              sub.w    -$25e(a6),d0                       
  008c2  48c0                  ext.l    d0                                 
  008c4  81fc0008              divs.w   #8,d0                              
  008c8  3f00                  move.w   d0,-(a7)                           
  008ca  a8a9                  _InsetRect                                  ; $a8a9
L08cc:
  008cc  4227                  clr.b    -(a7)                              
  008ce  302efd48              move.w   -$2b8(a6),d0                       
  008d2  48760720fd82          pea      (-$27e,a6,d0.w*8)                  
  008d8  2079ffff9a68          movea.l  g_6598,a0                          
  008de  48680010              pea      $10(a0)                            
  008e2  486efcda              pea      -$326(a6)                          
  008e6  a8aa                  _SectRect                                   ; $a8aa
  008e8  4a1f                  tst.b    (a7)+                              
  008ea  660e                  bne.s    L08fa                              
  008ec  0c6e0003fd48          cmpi.w   #3,-$2b8(a6)                       
  008f2  6606                  bne.s    L08fa                              
  008f4  3d7c0004fd48          move.w   #4,-$2b8(a6)                       
L08fa:
  008fa  2f0c                  move.l   a4,-(a7)                           
  008fc  a873                  _SetPort                                    ; $a873
  008fe  2079ffff9a68          movea.l  g_6598,a0                          
  00904  20680002              movea.l  $2(a0),a0                          
  00908  2f10                  move.l   (a0),-(a7)                         
  0090a  486c0002              pea      $2(a4)                             
  0090e  486efce2              pea      -$31e(a6)                          
  00912  486efce2              pea      -$31e(a6)                          
  00916  4267                  clr.w    -(a7)                              
  00918  42a7                  clr.l    -(a7)                              
  0091a  a8ec                  _CopyBits                                   ; $a8ec
  0091c  306efd46              movea.w  -$2ba(a6),a0                       
  00920  7001                  moveq    #1,d0                              
  00922  d088                  add.l    a0,d0                              
  00924  81c7                  divs.w   d7,d0                              
  00926  4840                  swap     d0                                 
  00928  3d40fd46              move.w   d0,-$2ba(a6)                       
  0092c  4227                  clr.b    -(a7)                              
  0092e  3f3c0002              move.w   #2,-(a7)                           
  00932  486efdaa              pea      -$256(a6)                          
  00936  a970                  _GetNextEvent                               ; $a970
  00938  7800                  moveq    #0,d4                              
  0093a  181f                  move.b   (a7)+,d4                           
  0093c  4a44                  tst.w    d4                                 
  0093e  6624                  bne.s    L0964                              
  00940  2079ffff979e          movea.l  g_6862,a0                          
  00946  2050                  movea.l  (a0),a0                            
  00948  7019                  moveq    #25,d0                             
  0094a  c1e8005e              muls.w   $5e(a0),d0                         
  0094e  0640000a              addi.w   #$a,d0                             
  00952  b079ffff836a          cmp.w    g_7c96,d0                          
  00958  6f0a                  ble.s    L0964                              
  0095a  0c6e0004fd48          cmpi.w   #4,-$2b8(a6)                       
  00960  6d00fdb8              blt.w    L071a                              
L0964:
  00964  4a44                  tst.w    d4                                 
  00966  6674                  bne.s    L09dc                              
  00968  2079ffff979e          movea.l  g_6862,a0                          
  0096e  2050                  movea.l  (a0),a0                            
  00970  7019                  moveq    #25,d0                             
  00972  c1e8005e              muls.w   $5e(a0),d0                         
  00976  0640000a              addi.w   #$a,d0                             
  0097a  b079ffff836a          cmp.w    g_7c96,d0                          
  00980  6f5a                  ble.s    L09dc                              
L0982:
  00982  3f3c0008              move.w   #8,-(a7)                           
  00986  4ead0792              jsr      f7_416a                            
  0098a  4a39ffff8dfb          tst.b    g_7205                             
  00990  548f                  addq.l   #2,a7                              
  00992  670a                  beq.s    L099e                              
  00994  3f3c5c0f              move.w   #$5c0f,-(a7)                       
  00998  4ead030a              jsr      f3_4238                            
  0099c  548f                  addq.l   #2,a7                              
L099e:
  0099e  4a39ffff8dfb          tst.b    g_7205                             
  009a4  6604                  bne.s    L09aa                              
  009a6  4ead031a              jsr      f3_4424                            
L09aa:
  009aa  4227                  clr.b    -(a7)                              
  009ac  a974                  _Button                                     ; $a974
  009ae  7800                  moveq    #0,d4                              
  009b0  181f                  move.b   (a7)+,d4                           
  009b2  43eefd0c              lea      -$2f4(a6),a1                       
  009b6  307c0014              movea.w  #$14,a0                            
  009ba  a03b                  _Delay                                      ; $a03b
  009bc  2280                  move.l   d0,(a1)                            
  009be  4a44                  tst.w    d4                                 
  009c0  661a                  bne.s    L09dc                              
  009c2  2079ffff979e          movea.l  g_6862,a0                          
  009c8  2050                  movea.l  (a0),a0                            
  009ca  7019                  moveq    #25,d0                             
  009cc  c1e8005e              muls.w   $5e(a0),d0                         
  009d0  0640000a              addi.w   #$a,d0                             
  009d4  b079ffff836a          cmp.w    g_7c96,d0                          
  009da  6ea6                  bgt.s    L0982                              
L09dc:
  009dc  4a44                  tst.w    d4                                 
  009de  6704                  beq.s    L09e4                              
  009e0  4ead032a              jsr      f3_44be                            
L09e4:
  009e4  2f2efd18              move.l   -$2e8(a6),-(a7)                    
  009e8  a873                  _SetPort                                    ; $a873
  009ea  4ead032a              jsr      f3_44be                            
  009ee  2f0c                  move.l   a4,-(a7)                           
  009f0  a983                  _DisposeDialog                              ; $a983
  009f2  2f0b                  move.l   a3,-(a7)                           
  009f4  a983                  _DisposeDialog                              ; $a983
  009f6  2079ffff979e          movea.l  g_6862,a0                          
  009fc  a02a                  _HUnlock                                    ; $a02a
  009fe  2f39ffff979e          move.l   g_6862,-(a7)                       
  00a04  a9cd                  _TEDispose                                  ; $a9cd
  00a06  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  00a0c  201f                  move.l   (a7)+,d0                           
  00a0e  a032                  _FlushEvents                                ; $a032
  00a10  a853                  _ShowCursor                                 ; $a853
  00a12  4cdf18f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a3/a4         
  00a16  4e5e                  unlk     a6                                 
  00a18  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_0a1a   [jump table #118]
;----------------------------------------------------------------------
f4_0a1a:
  00a1a  4e560000              link     a6,#0                              
  00a1e  48e70700              movem.l  d5/d6/d7,-(a7)                     
  00a22  4a2e0008              tst.b    $8(a6)                             
  00a26  660000a8              bne.w    L0ad0                              
  00a2a  7e01                  moveq    #1,d7                              
  00a2c  60000094              bra.w    L0ac2                              
L0a30:
  00a30  7c00                  moveq    #0,d6                              
  00a32  60000084              bra.w    L0ab8                              
L0a36:
  00a36  303c0276              move.w   #$276,d0                           
  00a3a  c1c6                  muls.w   d6,d0                              
  00a3c  721e                  moveq    #30,d1                             
  00a3e  c3c7                  muls.w   d7,d1                              
  00a40  0680ffff7892          addi.l   #$ffff7892,d0                      
  00a46  d081                  add.l    d1,d0                              
  00a48  2040                  movea.l  d0,a0                              
  00a4a  30bcffff              move.w   #$ffff,(a0)                        
  00a4e  702a                  moveq    #42,d0                             
  00a50  c1c6                  muls.w   d6,d0                              
  00a52  0680ffff8a2c          addi.l   #$ffff8a2c,d0                      
  00a58  3047                  movea.w  d7,a0                              
  00a5a  d1c8                  adda.l   a0,a0                              
  00a5c  4a700800              tst.w    $0(a0,d0.l)                        
  00a60  6f44                  ble.s    L0aa6                              
  00a62  3f3c0064              move.w   #$64,-(a7)                         
  00a66  4ead0242              jsr      f2_79a8                            
  00a6a  0c400032              cmpi.w   #$32,d0                            
  00a6e  548f                  addq.l   #2,a7                              
  00a70  6f34                  ble.s    L0aa6                              
L0a72:
  00a72  3f3c000d              move.w   #$d,-(a7)                          
  00a76  4ead0242              jsr      f2_79a8                            
  00a7a  3a00                  move.w   d0,d5                              
  00a7c  548f                  addq.l   #2,a7                              
  00a7e  4a3051b0ffff980f      tst.b    (-$67f1,za0,d5.w)                  
  00a86  67ea                  beq.s    L0a72                              
  00a88  7015                  moveq    #21,d0                             
  00a8a  c1c6                  muls.w   d6,d0                              
  00a8c  0680ffff985e          addi.l   #$ffff985e,d0                      
  00a92  3047                  movea.w  d7,a0                              
  00a94  11850800              move.b   d5,$0(a0,d0.l)                     
  00a98  3f05                  move.w   d5,-(a7)                           
  00a9a  3f07                  move.w   d7,-(a7)                           
  00a9c  3f06                  move.w   d6,-(a7)                           
  00a9e  4eba00c2              jsr      f4_0b62                            
  00aa2  5c8f                  addq.l   #6,a7                              
  00aa4  6010                  bra.s    L0ab6                              
L0aa6:
  00aa6  7015                  moveq    #21,d0                             
  00aa8  c1c6                  muls.w   d6,d0                              
  00aaa  0680ffff985e          addi.l   #$ffff985e,d0                      
  00ab0  3047                  movea.w  d7,a0                              
  00ab2  42300800              clr.b    $0(a0,d0.l)                        
L0ab6:
  00ab6  5246                  addq.w   #1,d6                              
L0ab8:
  00ab8  0c460004              cmpi.w   #4,d6                              
  00abc  6d00ff78              blt.w    L0a36                              
  00ac0  5247                  addq.w   #1,d7                              
L0ac2:
  00ac2  be79ffff883e          cmp.w    g_77c2,d7                          
  00ac8  6f00ff66              ble.w    L0a30                              
  00acc  6000008c              bra.w    L0b5a                              
L0ad0:
  00ad0  7e01                  moveq    #1,d7                              
  00ad2  607c                  bra.s    L0b50                              
L0ad4:
  00ad4  7c00                  moveq    #0,d6                              
  00ad6  6070                  bra.s    L0b48                              
L0ad8:
  00ad8  303c0276              move.w   #$276,d0                           
  00adc  c1c6                  muls.w   d6,d0                              
  00ade  721e                  moveq    #30,d1                             
  00ae0  c3c7                  muls.w   d7,d1                              
  00ae2  0680ffff7892          addi.l   #$ffff7892,d0                      
  00ae8  d081                  add.l    d1,d0                              
  00aea  2040                  movea.l  d0,a0                              
  00aec  30bcffff              move.w   #$ffff,(a0)                        
  00af0  7015                  moveq    #21,d0                             
  00af2  c1c6                  muls.w   d6,d0                              
  00af4  0680ffff985e          addi.l   #$ffff985e,d0                      
  00afa  3047                  movea.w  d7,a0                              
  00afc  4a300800              tst.b    $0(a0,d0.l)                        
  00b00  6734                  beq.s    L0b36                              
L0b02:
  00b02  3f3c000d              move.w   #$d,-(a7)                          
  00b06  4ead0242              jsr      f2_79a8                            
  00b0a  3a00                  move.w   d0,d5                              
  00b0c  548f                  addq.l   #2,a7                              
  00b0e  4a3051b0ffff980f      tst.b    (-$67f1,za0,d5.w)                  
  00b16  67ea                  beq.s    L0b02                              
  00b18  7015                  moveq    #21,d0                             
  00b1a  c1c6                  muls.w   d6,d0                              
  00b1c  0680ffff985e          addi.l   #$ffff985e,d0                      
  00b22  3047                  movea.w  d7,a0                              
  00b24  11850800              move.b   d5,$0(a0,d0.l)                     
  00b28  3f05                  move.w   d5,-(a7)                           
  00b2a  3f07                  move.w   d7,-(a7)                           
  00b2c  3f06                  move.w   d6,-(a7)                           
  00b2e  4eba0032              jsr      f4_0b62                            
  00b32  5c8f                  addq.l   #6,a7                              
  00b34  6010                  bra.s    L0b46                              
L0b36:
  00b36  7015                  moveq    #21,d0                             
  00b38  c1c6                  muls.w   d6,d0                              
  00b3a  0680ffff985e          addi.l   #$ffff985e,d0                      
  00b40  3047                  movea.w  d7,a0                              
  00b42  42300800              clr.b    $0(a0,d0.l)                        
L0b46:
  00b46  5246                  addq.w   #1,d6                              
L0b48:
  00b48  0c460004              cmpi.w   #4,d6                              
  00b4c  6d8a                  blt.s    L0ad8                              
  00b4e  5247                  addq.w   #1,d7                              
L0b50:
  00b50  be79ffff883e          cmp.w    g_77c2,d7                          
  00b56  6f00ff7c              ble.w    L0ad4                              
L0b5a:
  00b5a  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  00b5e  4e5e                  unlk     a6                                 
  00b60  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_0b62
;----------------------------------------------------------------------
f4_0b62:
  00b62  4e56fe94              link     a6,#-364                           
  00b66  48e71f18              movem.l  d3/d4/d5/d6/d7/a3/a4,-(a7)         
  00b6a  3e2e0008              move.w   $8(a6),d7                          
  00b6e  3c2e000a              move.w   $a(a6),d6                          
  00b72  426efff6              clr.w    -$a(a6)                            
  00b76  41eeffb8              lea      -$48(a6),a0                        
  00b7a  43f9ffffab94          lea      g_546c,a1                          
  00b80  20d9                  move.l   (a1)+,(a0)+                        
  00b82  20d9                  move.l   (a1)+,(a0)+                        
  00b84  20d9                  move.l   (a1)+,(a0)+                        
  00b86  701e                  moveq    #30,d0                             
  00b88  c1c6                  muls.w   d6,d0                              
  00b8a  323c0276              move.w   #$276,d1                           
  00b8e  c3c7                  muls.w   d7,d1                              
  00b90  0680ffff7892          addi.l   #$ffff7892,d0                      
  00b96  d081                  add.l    d1,d0                              
  00b98  2640                  movea.l  d0,a3                              
  00b9a  3d7c000afe9a          move.w   #$a,-$166(a6)                      
  00ba0  302e000c              move.w   $c(a6),d0                          
  00ba4  0c40000d              cmpi.w   #$d,d0                             
  00ba8  620005a2              bhi.w    L114c                              
  00bac  43fa05a6              lea      L1154(pc),a1                       
  00bb0  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  00bb4  4ed1                  jmp      (a1)                               
  00bb6  3d6e000cfffe          move.w   $c(a6),-$2(a6)                     
  00bbc  486efff8              pea      -$8(a6)                            
  00bc0  486efff6              pea      -$a(a6)                            
  00bc4  3f3c0001              move.w   #1,-(a7)                           
  00bc8  3f39ffff3ad2          move.w   g_c52e,-(a7)                       
  00bce  3f39ffff3ad0          move.w   g_c530,-(a7)                       
  00bd4  42a7                  clr.l    -(a7)                              
  00bd6  4ead019a              jsr      f2_6694                            
  00bda  3d40fedc              move.w   d0,-$124(a6)                       
  00bde  323c0276              move.w   #$276,d1                           
  00be2  c3c7                  muls.w   d7,d1                              
  00be4  741e                  moveq    #30,d2                             
  00be6  c5c6                  muls.w   d6,d2                              
  00be8  0681ffff7892          addi.l   #$ffff7892,d1                      
  00bee  d282                  add.l    d2,d1                              
  00bf0  2041                  movea.l  d1,a0                              
  00bf2  30aefffa              move.w   -$6(a6),(a0)                       
  00bf6  323c0276              move.w   #$276,d1                           
  00bfa  c3c7                  muls.w   d7,d1                              
  00bfc  741e                  moveq    #30,d2                             
  00bfe  c5c6                  muls.w   d6,d2                              
  00c00  0681ffff7892          addi.l   #$ffff7892,d1                      
  00c06  d282                  add.l    d2,d1                              
  00c08  2041                  movea.l  d1,a0                              
  00c0a  316efffc0002          move.w   -$4(a6),$2(a0)                     
  00c10  323c0276              move.w   #$276,d1                           
  00c14  c3c7                  muls.w   d7,d1                              
  00c16  741e                  moveq    #30,d2                             
  00c18  c5c6                  muls.w   d6,d2                              
  00c1a  0681ffff7892          addi.l   #$ffff7892,d1                      
  00c20  d282                  add.l    d2,d1                              
  00c22  2041                  movea.l  d1,a0                              
  00c24  316efff60004          move.w   -$a(a6),$4(a0)                     
  00c2a  323c0276              move.w   #$276,d1                           
  00c2e  c3c7                  muls.w   d7,d1                              
  00c30  741e                  moveq    #30,d2                             
  00c32  c5c6                  muls.w   d6,d2                              
  00c34  0681ffff7892          addi.l   #$ffff7892,d1                      
  00c3a  d282                  add.l    d2,d1                              
  00c3c  2041                  movea.l  d1,a0                              
  00c3e  316efffe0006          move.w   -$2(a6),$6(a0)                     
  00c44  4fef0012              lea      $12(a7),a7                         
  00c48  60000502              bra.w    L114c                              
  00c4c  3f3c0054              move.w   #$54,-(a7)                         
  00c50  4ead0242              jsr      f2_79a8                            
  00c54  323c0276              move.w   #$276,d1                           
  00c58  c3c7                  muls.w   d7,d1                              
  00c5a  741e                  moveq    #30,d2                             
  00c5c  c5c6                  muls.w   d6,d2                              
  00c5e  0681ffff7892          addi.l   #$ffff7892,d1                      
  00c64  d282                  add.l    d2,d1                              
  00c66  0640000f              addi.w   #$f,d0                             
  00c6a  2041                  movea.l  d1,a0                              
  00c6c  3080                  move.w   d0,(a0)                            
  00c6e  548f                  addq.l   #2,a7                              
  00c70  600004da              bra.w    L114c                              
  00c74  4eba4408              jsr      f4_507e                            
  00c78  3d40ffac              move.w   d0,-$54(a6)                        
  00c7c  323c0276              move.w   #$276,d1                           
  00c80  c3c7                  muls.w   d7,d1                              
  00c82  741e                  moveq    #30,d2                             
  00c84  c5c6                  muls.w   d6,d2                              
  00c86  0681ffff7892          addi.l   #$ffff7892,d1                      
  00c8c  d282                  add.l    d2,d1                              
  00c8e  2041                  movea.l  d1,a0                              
  00c90  3080                  move.w   d0,(a0)                            
  00c92  42a7                  clr.l    -(a7)                              
  00c94  2f3c53545223          move.l   #$53545223,-(a7)                   
  00c9a  3f00                  move.w   d0,-(a7)                           
  00c9c  a9a0                  _GetResource                                ; $a9a0
  00c9e  285f                  movea.l  (a7)+,a4                           
  00ca0  43eefff6              lea      -$a(a6),a1                         
  00ca4  7002                  moveq    #2,d0                              
  00ca6  2054                  movea.l  (a4),a0                            
  00ca8  a02e                  _BlockMove                                  ; $a02e
  00caa  3f2efff6              move.w   -$a(a6),-(a7)                      
  00cae  4ead0242              jsr      f2_79a8                            
  00cb2  3d40ffae              move.w   d0,-$52(a6)                        
  00cb6  323c0276              move.w   #$276,d1                           
  00cba  c3c7                  muls.w   d7,d1                              
  00cbc  741e                  moveq    #30,d2                             
  00cbe  c5c6                  muls.w   d6,d2                              
  00cc0  0681ffff7892          addi.l   #$ffff7892,d1                      
  00cc6  d282                  add.l    d2,d1                              
  00cc8  2041                  movea.l  d1,a0                              
  00cca  31400002              move.w   d0,$2(a0)                          
  00cce  548f                  addq.l   #2,a7                              
  00cd0  6000047a              bra.w    L114c                              
  00cd4  3f3c0002              move.w   #2,-(a7)                           
  00cd8  4ead0242              jsr      f2_79a8                            
  00cdc  5340                  subq.w   #1,d0                              
  00cde  548f                  addq.l   #2,a7                              
  00ce0  6f04                  ble.s    L0ce6                              
  00ce2  7001                  moveq    #1,d0                              
  00ce4  6002                  bra.s    L0ce8                              
L0ce6:
  00ce6  7000                  moveq    #0,d0                              
L0ce8:
  00ce8  1d40fe95              move.b   d0,-$16b(a6)                       
  00cec  7601                  moveq    #1,d3                              
  00cee  6008                  bra.s    L0cf8                              
L0cf0:
  00cf0  3d833320fee0          move.w   d3,(-$120,a6,d3.w*2)               
  00cf6  5243                  addq.w   #1,d3                              
L0cf8:
  00cf8  0c430033              cmpi.w   #$33,d3                            
  00cfc  6df2                  blt.s    L0cf0                              
  00cfe  3f3c0032              move.w   #$32,-(a7)                         
  00d02  4ead0242              jsr      f2_79a8                            
  00d06  3d40ffb0              move.w   d0,-$50(a6)                        
  00d0a  302effb0              move.w   -$50(a6),d0                        
  00d0e  42760320fee0          clr.w    (-$120,a6,d0.w*2)                  
  00d14  7601                  moveq    #1,d3                              
  00d16  548f                  addq.l   #2,a7                              
  00d18  6026                  bra.s    L0d40                              
L0d1a:
  00d1a  3f3c0032              move.w   #$32,-(a7)                         
  00d1e  4ead0242              jsr      f2_79a8                            
  00d22  3d8032b0              move.w   d0,-$50(a6,d3.w*2)                 
  00d26  548f                  addq.l   #2,a7                              
  00d28  303632b0              move.w   -$50(a6,d3.w*2),d0                 
  00d2c  4a760320fee0          tst.w    (-$120,a6,d0.w*2)                  
  00d32  67e6                  beq.s    L0d1a                              
  00d34  303632b0              move.w   -$50(a6,d3.w*2),d0                 
  00d38  42760320fee0          clr.w    (-$120,a6,d0.w*2)                  
  00d3e  5243                  addq.w   #1,d3                              
L0d40:
  00d40  0c430004              cmpi.w   #4,d3                              
  00d44  6dd4                  blt.s    L0d1a                              
  00d46  4a2efe95              tst.b    -$16b(a6)                          
  00d4a  6706                  beq.s    L0d52                              
  00d4c  303c07d7              move.w   #$7d7,d0                           
  00d50  6004                  bra.s    L0d56                              
L0d52:
  00d52  303c07d6              move.w   #$7d6,d0                           
L0d56:
  00d56  3d40fede              move.w   d0,-$122(a6)                       
  00d5a  4a2efe95              tst.b    -$16b(a6)                          
  00d5e  6706                  beq.s    L0d66                              
  00d60  303c07d6              move.w   #$7d6,d0                           
  00d64  6004                  bra.s    L0d6a                              
L0d66:
  00d66  303c07d7              move.w   #$7d7,d0                           
L0d6a:
  00d6a  3d40fedc              move.w   d0,-$124(a6)                       
  00d6e  323c0276              move.w   #$276,d1                           
  00d72  c3c7                  muls.w   d7,d1                              
  00d74  741e                  moveq    #30,d2                             
  00d76  c5c6                  muls.w   d6,d2                              
  00d78  0681ffff7892          addi.l   #$ffff7892,d1                      
  00d7e  d282                  add.l    d2,d1                              
  00d80  2041                  movea.l  d1,a0                              
  00d82  30aefede              move.w   -$122(a6),(a0)                     
  00d86  323c0276              move.w   #$276,d1                           
  00d8a  c3c7                  muls.w   d7,d1                              
  00d8c  741e                  moveq    #30,d2                             
  00d8e  c5c6                  muls.w   d6,d2                              
  00d90  0681ffff7892          addi.l   #$ffff7892,d1                      
  00d96  d282                  add.l    d2,d1                              
  00d98  2041                  movea.l  d1,a0                              
  00d9a  31400002              move.w   d0,$2(a0)                          
  00d9e  7600                  moveq    #0,d3                              
  00da0  6020                  bra.s    L0dc2                              
L0da2:
  00da2  303c0276              move.w   #$276,d0                           
  00da6  c1c7                  muls.w   d7,d0                              
  00da8  721e                  moveq    #30,d1                             
  00daa  c3c6                  muls.w   d6,d1                              
  00dac  0680ffff7892          addi.l   #$ffff7892,d0                      
  00db2  d081                  add.l    d1,d0                              
  00db4  5880                  addq.l   #4,d0                              
  00db6  3043                  movea.w  d3,a0                              
  00db8  d1c8                  adda.l   a0,a0                              
  00dba  31b632b00800          move.w   -$50(a6,d3.w*2),$0(a0,d0.l)        
  00dc0  5243                  addq.w   #1,d3                              
L0dc2:
  00dc2  0c430004              cmpi.w   #4,d3                              
  00dc6  6dda                  blt.s    L0da2                              
  00dc8  60000382              bra.w    L114c                              
  00dcc  426efeb2              clr.w    -$14e(a6)                          
  00dd0  0c790006ffff8894      cmpi.w   #6,g_776c                          
  00dd8  6c08                  bge.s    L0de2                              
  00dda  3d7c0002fe98          move.w   #2,-$168(a6)                       
  00de0  6048                  bra.s    L0e2a                              
L0de2:
  00de2  0c790005ffff8894      cmpi.w   #5,g_776c                          
  00dea  6f12                  ble.s    L0dfe                              
  00dec  0c79000bffff8894      cmpi.w   #$b,g_776c                         
  00df4  6c08                  bge.s    L0dfe                              
  00df6  3d7c0003fe98          move.w   #3,-$168(a6)                       
  00dfc  602c                  bra.s    L0e2a                              
L0dfe:
  00dfe  0c79000affff8894      cmpi.w   #$a,g_776c                         
  00e06  6f12                  ble.s    L0e1a                              
  00e08  0c790010ffff8894      cmpi.w   #$10,g_776c                        
  00e10  6c08                  bge.s    L0e1a                              
  00e12  3d7c0004fe98          move.w   #4,-$168(a6)                       
  00e18  6010                  bra.s    L0e2a                              
L0e1a:
  00e1a  0c79000fffff8894      cmpi.w   #$f,g_776c                         
  00e22  6f06                  ble.s    L0e2a                              
  00e24  3d7c0005fe98          move.w   #5,-$168(a6)                       
L0e2a:
  00e2a  7600                  moveq    #0,d3                              
  00e2c  6008                  bra.s    L0e36                              
L0e2e:
  00e2e  3d833320fe9c          move.w   d3,(-$164,a6,d3.w*2)               
  00e34  5243                  addq.w   #1,d3                              
L0e36:
  00e36  0c43000a              cmpi.w   #$a,d3                             
  00e3a  6df2                  blt.s    L0e2e                              
  00e3c  7600                  moveq    #0,d3                              
  00e3e  6014                  bra.s    L0e54                              
L0e40:
  00e40  3f3c000a              move.w   #$a,-(a7)                          
  00e44  4ead0242              jsr      f2_79a8                            
  00e48  5a40                  addq.w   #5,d0                              
  00e4a  3d803320fec8          move.w   d0,(-$138,a6,d3.w*2)               
  00e50  548f                  addq.l   #2,a7                              
  00e52  5243                  addq.w   #1,d3                              
L0e54:
  00e54  0c43000a              cmpi.w   #$a,d3                             
  00e58  6de6                  blt.s    L0e40                              
  00e5a  302efec8              move.w   -$138(a6),d0                       
  00e5e  d16efeb2              add.w    d0,-$14e(a6)                       
  00e62  7601                  moveq    #1,d3                              
  00e64  6044                  bra.s    L0eaa                              
L0e66:
  00e66  3f3c0002              move.w   #2,-(a7)                           
  00e6a  4ead0242              jsr      f2_79a8                            
  00e6e  3800                  move.w   d0,d4                              
  00e70  0c440001              cmpi.w   #1,d4                              
  00e74  548f                  addq.l   #2,a7                              
  00e76  660c                  bne.s    L0e84                              
  00e78  30363320fec8          move.w   (-$138,a6,d3.w*2),d0               
  00e7e  d16efeb2              add.w    d0,-$14e(a6)                       
  00e82  6024                  bra.s    L0ea8                              
L0e84:
  00e84  302efeb2              move.w   -$14e(a6),d0                       
  00e88  90763320fec8          sub.w    (-$138,a6,d3.w*2),d0               
  00e8e  4a40                  tst.w    d0                                 
  00e90  6f0c                  ble.s    L0e9e                              
  00e92  30363320fec8          move.w   (-$138,a6,d3.w*2),d0               
  00e98  916efeb2              sub.w    d0,-$14e(a6)                       
  00e9c  600a                  bra.s    L0ea8                              
L0e9e:
  00e9e  30363320fec8          move.w   (-$138,a6,d3.w*2),d0               
  00ea4  d16efeb2              add.w    d0,-$14e(a6)                       
L0ea8:
  00ea8  5243                  addq.w   #1,d3                              
L0eaa:
  00eaa  b66efe98              cmp.w    -$168(a6),d3                       
  00eae  6db6                  blt.s    L0e66                              
  00eb0  7600                  moveq    #0,d3                              
  00eb2  6046                  bra.s    L0efa                              
L0eb4:
  00eb4  3f2efe9a              move.w   -$166(a6),-(a7)                    
  00eb8  4ead0242              jsr      f2_79a8                            
  00ebc  5340                  subq.w   #1,d0                              
  00ebe  3800                  move.w   d0,d4                              
  00ec0  30364320fe9c          move.w   (-$164,a6,d4.w*2),d0               
  00ec6  3db60320fec83320feb4  move.w   (-$138,a6,d0.w*2),(-$14c,a6,d3.w*2)
  00ed0  3d44fe96              move.w   d4,-$16a(a6)                       
  00ed4  548f                  addq.l   #2,a7                              
  00ed6  6012                  bra.s    L0eea                              
L0ed8:
  00ed8  302efe96              move.w   -$16a(a6),d0                       
  00edc  3db60320fe9e0320fe9c  move.w   (-$162,a6,d0.w*2),(-$164,a6,d0.w*2)
  00ee6  526efe96              addq.w   #1,-$16a(a6)                       
L0eea:
  00eea  302efe96              move.w   -$16a(a6),d0                       
  00eee  b06efe9a              cmp.w    -$166(a6),d0                       
  00ef2  6de4                  blt.s    L0ed8                              
  00ef4  536efe9a              subq.w   #1,-$166(a6)                       
  00ef8  5243                  addq.w   #1,d3                              
L0efa:
  00efa  0c43000a              cmpi.w   #$a,d3                             
  00efe  6db4                  blt.s    L0eb4                              
  00f00  303c0276              move.w   #$276,d0                           
  00f04  c1c7                  muls.w   d7,d0                              
  00f06  721e                  moveq    #30,d1                             
  00f08  c3c6                  muls.w   d6,d1                              
  00f0a  0680ffff7892          addi.l   #$ffff7892,d0                      
  00f10  d081                  add.l    d1,d0                              
  00f12  2040                  movea.l  d0,a0                              
  00f14  30aefeb2              move.w   -$14e(a6),(a0)                     
  00f18  7600                  moveq    #0,d3                              
  00f1a  6022                  bra.s    L0f3e                              
L0f1c:
  00f1c  303c0276              move.w   #$276,d0                           
  00f20  c1c7                  muls.w   d7,d0                              
  00f22  721e                  moveq    #30,d1                             
  00f24  c3c6                  muls.w   d6,d1                              
  00f26  0680ffff7892          addi.l   #$ffff7892,d0                      
  00f2c  d081                  add.l    d1,d0                              
  00f2e  5480                  addq.l   #2,d0                              
  00f30  3043                  movea.w  d3,a0                              
  00f32  d1c8                  adda.l   a0,a0                              
  00f34  31b63320feb40800      move.w   (-$14c,a6,d3.w*2),$0(a0,d0.l)      
  00f3c  5243                  addq.w   #1,d3                              
L0f3e:
  00f3e  0c43000a              cmpi.w   #$a,d3                             
  00f42  6dd8                  blt.s    L0f1c                              
  00f44  60000206              bra.w    L114c                              
  00f48  3839ffff83b6          move.w   g_7c4a,d4                          
  00f4e  0c440064              cmpi.w   #$64,d4                            
  00f52  6f0c                  ble.s    L0f60                              
  00f54  3f3c0064              move.w   #$64,-(a7)                         
  00f58  4ead0242              jsr      f2_79a8                            
  00f5c  548f                  addq.l   #2,a7                              
  00f5e  6008                  bra.s    L0f68                              
L0f60:
  00f60  3f04                  move.w   d4,-(a7)                           
  00f62  4ead0242              jsr      f2_79a8                            
  00f66  548f                  addq.l   #2,a7                              
L0f68:
  00f68  323c0276              move.w   #$276,d1                           
  00f6c  c3c7                  muls.w   d7,d1                              
  00f6e  741e                  moveq    #30,d2                             
  00f70  c5c6                  muls.w   d6,d2                              
  00f72  0681ffff7892          addi.l   #$ffff7892,d1                      
  00f78  d282                  add.l    d2,d1                              
  00f7a  2041                  movea.l  d1,a0                              
  00f7c  3080                  move.w   d0,(a0)                            
  00f7e  3f3c0064              move.w   #$64,-(a7)                         
  00f82  4ead0242              jsr      f2_79a8                            
  00f86  323c0276              move.w   #$276,d1                           
  00f8a  c3c7                  muls.w   d7,d1                              
  00f8c  741e                  moveq    #30,d2                             
  00f8e  c5c6                  muls.w   d6,d2                              
  00f90  0681ffff7892          addi.l   #$ffff7892,d1                      
  00f96  d282                  add.l    d2,d1                              
  00f98  2041                  movea.l  d1,a0                              
  00f9a  31400002              move.w   d0,$2(a0)                          
  00f9e  548f                  addq.l   #2,a7                              
  00fa0  600001aa              bra.w    L114c                              
  00fa4  3f3c0002              move.w   #2,-(a7)                           
  00fa8  4ead0242              jsr      f2_79a8                            
  00fac  5340                  subq.w   #1,d0                              
  00fae  548f                  addq.l   #2,a7                              
  00fb0  6f04                  ble.s    L0fb6                              
  00fb2  7001                  moveq    #1,d0                              
  00fb4  6002                  bra.s    L0fb8                              
L0fb6:
  00fb6  7000                  moveq    #0,d0                              
L0fb8:
  00fb8  1d40fe95              move.b   d0,-$16b(a6)                       
  00fbc  7601                  moveq    #1,d3                              
  00fbe  6008                  bra.s    L0fc8                              
L0fc0:
  00fc0  3d833320fee0          move.w   d3,(-$120,a6,d3.w*2)               
  00fc6  5243                  addq.w   #1,d3                              
L0fc8:
  00fc8  0c430065              cmpi.w   #$65,d3                            
  00fcc  6df2                  blt.s    L0fc0                              
  00fce  3f3c0064              move.w   #$64,-(a7)                         
  00fd2  4ead0242              jsr      f2_79a8                            
  00fd6  3d40ffb0              move.w   d0,-$50(a6)                        
  00fda  302effb0              move.w   -$50(a6),d0                        
  00fde  42760320fee0          clr.w    (-$120,a6,d0.w*2)                  
  00fe4  7601                  moveq    #1,d3                              
  00fe6  548f                  addq.l   #2,a7                              
  00fe8  6026                  bra.s    L1010                              
L0fea:
  00fea  3f3c0064              move.w   #$64,-(a7)                         
  00fee  4ead0242              jsr      f2_79a8                            
  00ff2  3d8032b0              move.w   d0,-$50(a6,d3.w*2)                 
  00ff6  548f                  addq.l   #2,a7                              
  00ff8  303632b0              move.w   -$50(a6,d3.w*2),d0                 
  00ffc  4a760320fee0          tst.w    (-$120,a6,d0.w*2)                  
  01002  67e6                  beq.s    L0fea                              
  01004  303632b0              move.w   -$50(a6,d3.w*2),d0                 
  01008  42760320fee0          clr.w    (-$120,a6,d0.w*2)                  
  0100e  5243                  addq.w   #1,d3                              
L1010:
  01010  0c430004              cmpi.w   #4,d3                              
  01014  6dd4                  blt.s    L0fea                              
  01016  4a2efe95              tst.b    -$16b(a6)                          
  0101a  6706                  beq.s    L1022                              
  0101c  303c4e21              move.w   #$4e21,d0                          
  01020  6004                  bra.s    L1026                              
L1022:
  01022  303c4e22              move.w   #$4e22,d0                          
L1026:
  01026  3d40fede              move.w   d0,-$122(a6)                       
  0102a  4a2efe95              tst.b    -$16b(a6)                          
  0102e  6706                  beq.s    L1036                              
  01030  303c4e22              move.w   #$4e22,d0                          
  01034  6004                  bra.s    L103a                              
L1036:
  01036  303c4e21              move.w   #$4e21,d0                          
L103a:
  0103a  3d40fedc              move.w   d0,-$124(a6)                       
  0103e  323c0276              move.w   #$276,d1                           
  01042  c3c7                  muls.w   d7,d1                              
  01044  741e                  moveq    #30,d2                             
  01046  c5c6                  muls.w   d6,d2                              
  01048  0681ffff7892          addi.l   #$ffff7892,d1                      
  0104e  d282                  add.l    d2,d1                              
  01050  2041                  movea.l  d1,a0                              
  01052  30aefede              move.w   -$122(a6),(a0)                     
  01056  323c0276              move.w   #$276,d1                           
  0105a  c3c7                  muls.w   d7,d1                              
  0105c  741e                  moveq    #30,d2                             
  0105e  c5c6                  muls.w   d6,d2                              
  01060  0681ffff7892          addi.l   #$ffff7892,d1                      
  01066  d282                  add.l    d2,d1                              
  01068  2041                  movea.l  d1,a0                              
  0106a  31400002              move.w   d0,$2(a0)                          
  0106e  7600                  moveq    #0,d3                              
  01070  6020                  bra.s    L1092                              
L1072:
  01072  303c0276              move.w   #$276,d0                           
  01076  c1c7                  muls.w   d7,d0                              
  01078  721e                  moveq    #30,d1                             
  0107a  c3c6                  muls.w   d6,d1                              
  0107c  0680ffff7892          addi.l   #$ffff7892,d0                      
  01082  d081                  add.l    d1,d0                              
  01084  5880                  addq.l   #4,d0                              
  01086  3043                  movea.w  d3,a0                              
  01088  d1c8                  adda.l   a0,a0                              
  0108a  31b632b00800          move.w   -$50(a6,d3.w*2),$0(a0,d0.l)        
  01090  5243                  addq.w   #1,d3                              
L1092:
  01092  0c430004              cmpi.w   #4,d3                              
  01096  6dda                  blt.s    L1072                              
  01098  600000b2              bra.w    L114c                              
  0109c  0c79000fffff8894      cmpi.w   #$f,g_776c                         
  010a4  6f04                  ble.s    L10aa                              
  010a6  7a05                  moveq    #5,d5                              
  010a8  601e                  bra.s    L10c8                              
L10aa:
  010aa  0c79000affff8894      cmpi.w   #$a,g_776c                         
  010b2  6f04                  ble.s    L10b8                              
  010b4  7a04                  moveq    #4,d5                              
  010b6  6010                  bra.s    L10c8                              
L10b8:
  010b8  0c790005ffff8894      cmpi.w   #5,g_776c                          
  010c0  6f04                  ble.s    L10c6                              
  010c2  7a03                  moveq    #3,d5                              
  010c4  6002                  bra.s    L10c8                              
L10c6:
  010c6  7a02                  moveq    #2,d5                              
L10c8:
  010c8  7600                  moveq    #0,d3                              
  010ca  6048                  bra.s    L1114                              
L10cc:
  010cc  7800                  moveq    #0,d4                              
  010ce  603e                  bra.s    L110e                              
L10d0:
  010d0  422efe94              clr.b    -$16c(a6)                          
  010d4  6030                  bra.s    L1106                              
L10d6:
  010d6  3f3c0005              move.w   #5,-(a7)                           
  010da  4ead0242              jsr      f2_79a8                            
  010de  3d40fede              move.w   d0,-$122(a6)                       
  010e2  4a7602b8              tst.w    -$48(a6,d0.w*2)                    
  010e6  548f                  addq.l   #2,a7                              
  010e8  671c                  beq.s    L1106                              
  010ea  700a                  moveq    #10,d0                             
  010ec  c1c3                  muls.w   d3,d0                              
  010ee  41f608c4              lea      -$3c(a6,d0.l),a0                   
  010f2  31aefede4200          move.w   -$122(a6),$0(a0,d4.w*2)            
  010f8  302efede              move.w   -$122(a6),d0                       
  010fc  537602b8              subq.w   #1,-$48(a6,d0.w*2)                 
  01100  1d7c0001fe94          move.b   #1,-$16c(a6)                       
L1106:
  01106  4a2efe94              tst.b    -$16c(a6)                          
  0110a  67ca                  beq.s    L10d6                              
  0110c  5244                  addq.w   #1,d4                              
L110e:
  0110e  ba44                  cmp.w    d4,d5                              
  01110  6ebe                  bgt.s    L10d0                              
  01112  5243                  addq.w   #1,d3                              
L1114:
  01114  ba43                  cmp.w    d3,d5                              
  01116  6eb4                  bgt.s    L10cc                              
  01118  7600                  moveq    #0,d3                              
  0111a  602c                  bra.s    L1148                              
L111c:
  0111c  7800                  moveq    #0,d4                              
  0111e  6022                  bra.s    L1142                              
L1120:
  01120  700a                  moveq    #10,d0                             
  01122  c1c3                  muls.w   d3,d0                              
  01124  41f608c4              lea      -$3c(a6,d0.l),a0                   
  01128  1d704201fe95          move.b   $1(a0,d4.w*2),-$16b(a6)            
  0112e  41eefe95              lea      -$16b(a6),a0                       
  01132  7005                  moveq    #5,d0                              
  01134  c1c3                  muls.w   d3,d0                              
  01136  3240                  movea.w  d0,a1                              
  01138  d3cb                  adda.l   a3,a1                              
  0113a  d2c4                  adda.w   d4,a1                              
  0113c  7001                  moveq    #1,d0                              
  0113e  a02e                  _BlockMove                                  ; $a02e
  01140  5244                  addq.w   #1,d4                              
L1142:
  01142  ba44                  cmp.w    d4,d5                              
  01144  6eda                  bgt.s    L1120                              
  01146  5243                  addq.w   #1,d3                              
L1148:
  01148  ba43                  cmp.w    d3,d5                              
  0114a  6ed0                  bgt.s    L111c                              
L114c:
  0114c  4cdf18f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a3/a4         
  01150  4e5e                  unlk     a6                                 
  01152  4e75                  rts                                         
  01154  fff8                  dc.w     $fff8                              
  01156  fa62                  dc.w     $fa62                              
  01158  fa62                  dc.w     $fa62                              
  0115a  fa62                  dc.w     $fa62                              
  0115c  fa62                  dc.w     $fa62                              
  0115e  faf8                  dc.w     $faf8                              
  01160  fb20                  dc.w     $fb20                              
  01162  fb20                  dc.w     $fb20                              
  01164  fb20                  dc.w     $fb20                              
  01166  fb80                  dc.w     $fb80                              
  01168  fc78                  dc.w     $fc78                              
  0116a  fdf4                  dc.w     $fdf4                              
  0116c  fe50                  dc.w     $fe50                              
  0116e  ff48                  dc.w     $ff48                              

;----------------------------------------------------------------------
; f4_1170   [jump table #145]
;----------------------------------------------------------------------
f4_1170:
  01170  4e560000              link     a6,#0                              
  01174  203c0000a89f          move.l   #$a89f,d0                          
  0117a  a746                  _GetTrapAddress.sysclear                    ; $a746
  0117c  2f08                  move.l   a0,-(a7)                           
  0117e  203c0000a0ad          move.l   #$a0ad,d0                          
  01184  a346                  _GetTrapAddress.clear                       ; $a346
  01186  b1df                  cmpa.l   (a7)+,a0                           
  01188  670e                  beq.s    L1198                              
  0118a  202e000c              move.l   $c(a6),d0                          
  0118e  a1ad                  _Gestalt                                    ; $a1ad
  01190  226e0008              movea.l  $8(a6),a1                          
  01194  2288                  move.l   a0,(a1)                            
  01196  6026                  bra.s    L11be                              
L1198:
  01198  41fa0036              lea      L11d0(pc),a0                       
  0119c  303cea51              move.w   #$ea51,d0                          
  011a0  222e000c              move.l   $c(a6),d1                          
L11a4:
  011a4  b298                  cmp.l    (a0)+,d1                           
  011a6  6706                  beq.s    L11ae                              
  011a8  4a98                  tst.l    (a0)+                              
  011aa  6712                  beq.s    L11be                              
  011ac  60f6                  bra.s    L11a4                              
L11ae:
  011ae  43fa0020              lea      L11d0(pc),a1                       
  011b2  d3d0                  adda.l   (a0),a1                            
  011b4  4ed1                  jmp      (a1)                               
L11b6:
  011b6  226e0008              movea.l  $8(a6),a1                          
  011ba  2280                  move.l   d0,(a1)                            
  011bc  4240                  clr.w    d0                                 
L11be:
  011be  3d400010              move.w   d0,$10(a6)                         
  011c2  4e5e                  unlk     a6                                 
  011c4  205f                  movea.l  (a7)+,a0                           
  011c6  508f                  addq.l   #8,a7                              
  011c8  4ed0                  jmp      (a0)                               
L11ca:
  011ca  303cea52              move.w   #$ea52,d0                          
  011ce  60ee                  bra.s    L11be                              
  011d0  7665                  moveq    #101,d3                            
  011d2  7273                  moveq    #115,d1                            
  011d4  00000060              ori.b    #$60,d0                            
  011d8  6d61                  blt.s    L123b                              
  011da  6368                  bls.s    L1244                              
  011dc  00000064              ori.b    #$64,d0                            
  011e0  7379                  moveq    #121,d1                            
  011e2  7376                  moveq    #118,d1                            
  011e4  00000088              ori.b    #$88,d0                            
  011e8  7072                  moveq    #114,d0                            
  011ea  6f63                  ble.s    L124f                              
  011ec  00000092              ori.b    #$92,d0                            
  011f0  6670                  bne.s    L1262                              
  011f2  7520                  moveq    #32,d2                             
  011f4  0000009e              ori.b    #$9e,d0                            
  011f8  7164                  moveq    #100,d0                            
  011fa  2020                  move.l   -(a0),d0                           
  011fc  000000e8              ori.b    #$e8,d0                            
  01200  6b62                  bmi.s    L1264                              
  01202  6420                  bcc.s    L1224                              
  01204  0000011a              ori.b    #$1a,d0                            
  01208  6174                  bsr.s    f4_127e                            
  0120a  6c6b                  bge.s    L1277                              
  0120c  00000142              ori.b    #$42,d0                            
  01210  6d6d                  blt.s    L127f                              
  01212  7520                  moveq    #32,d2                             
  01214  00000164              ori.b    #$64,d0                            
  01218  7261                  moveq    #97,d1                             
  0121a  6d20                  blt.s    L123c                              
  0121c  00000188              ori.b    #$88,d0                            
  01220  6c72                  bge.s    L1294                              
  01222  616d                  bsr.s    f4_1291                            
L1224:
  01224  00000188              ori.b    #$88,d0                            
  01228  00000000              ori.b    #0,d0                              
  0122c  00000000              ori.b    #0,d0                              
  01230  7001                  moveq    #1,d0                              
  01232  6082                  bra.s    L11b6                              
  01234  227802ae              movea.l  ($2ae).w,a1                        
  01238  7004                  moveq    #4,d0                              
  0123a  0c6900750008          cmpi.w   #$75,$8(a1)                        
  01240  6712                  beq.s    L1254                              
  01242  0c6902760008          cmpi.w   #$276,$8(a1)                       
  01248  6604                  bne.s    L124e                              
  0124a  5240                  addq.w   #1,d0                              
  0124c  6006                  bra.s    L1254                              
L124e:
  0124e  10380cb3              move.b   ($cb3).w,d0                        
  01252  5c80                  addq.l   #6,d0                              
L1254:
  01254  6000ff60              bra.w    L11b6                              
  01258  7000                  moveq    #0,d0                              
  0125a  3038015a              move.w   ($15a).w,d0                        
  0125e  6000ff56              bra.w    L11b6                              
L1262:
  01262  7000                  moveq    #0,d0                              
L1264:
  01264  1038012f              move.b   ($12f).w,d0                        
  01268  5240                  addq.w   #1,d0                              
  0126a  6000ff4a              bra.w    L11b6                              
  0126e  0c380004012f          cmpi.b   #4,($12f).w                        
  01274  6738                  beq.s    L12ae                              
  01276  083800040b22          btst     #4,($b22).w                        
  0127c  6734                  beq.s    L12b2                              

;----------------------------------------------------------------------
; f4_127e
;----------------------------------------------------------------------
f4_127e:
  0127e  204f                  movea.l  a7,a0                              
  01280  f2800000              fb00     L1282                              
  01284  f327                  fsave    -(a7)                              
  01286  3017                  move.w   (a7),d0                            
  01288  2e48                  movea.l  a0,a7                              
  0128a  0c401f18              cmpi.w   #$1f18,d0                          
  0128e  6716                  beq.s    L12a6                              
  01290  0c403f18              cmpi.w   #$3f18,d0                          
L1294:
  01294  6710                  beq.s    L12a6                              
  01296  0c403f38              cmpi.w   #$3f38,d0                          
  0129a  670e                  beq.s    L12aa                              
  0129c  0c401f38              cmpi.w   #$1f38,d0                          
  012a0  6708                  beq.s    L12aa                              
  012a2  7000                  moveq    #0,d0                              
  012a4  600e                  bra.s    L12b4                              
L12a6:
  012a6  7001                  moveq    #1,d0                              
  012a8  600a                  bra.s    L12b4                              
L12aa:
  012aa  7002                  moveq    #2,d0                              
  012ac  6006                  bra.s    L12b4                              
L12ae:
  012ae  7003                  moveq    #3,d0                              
  012b0  6002                  bra.s    L12b4                              
L12b2:
  012b2  7000                  moveq    #0,d0                              
L12b4:
  012b4  6000ff00              bra.w    L11b6                              
  012b8  0c783fff028e          cmpi.w   #$3fff,($28e).w                    
  012be  6e1c                  bgt.s    L12dc                              
  012c0  303ca89f              move.w   #$a89f,d0                          
  012c4  a746                  _GetTrapAddress.sysclear                    ; $a746
  012c6  2408                  move.l   a0,d2                              
  012c8  203c0000ab03          move.l   #$ab03,d0                          
  012ce  a746                  _GetTrapAddress.sysclear                    ; $a746
  012d0  203c00000100          move.l   #$100,d0                           
  012d6  b488                  cmp.l    a0,d2                              
  012d8  6606                  bne.s    L12e0                              
  012da  600a                  bra.s    L12e6                              
L12dc:
  012dc  7000                  moveq    #0,d0                              
  012de  6006                  bra.s    L12e6                              
L12e0:
  012e0  203c00000200          move.l   #$200,d0                           
L12e6:
  012e6  6000fece              bra.w    L11b6                              
  012ea  1038021e              move.b   ($21e).w,d0                        
  012ee  41fa0016              lea      L1306(pc),a0                       
  012f2  2248                  movea.l  a0,a1                              
L12f4:
  012f4  1218                  move.b   (a0)+,d1                           
  012f6  6700fed2              beq.w    L11ca                              
  012fa  b200                  cmp.b    d0,d1                              
  012fc  66f6                  bne.s    L12f4                              
  012fe  91c9                  suba.l   a1,a0                              
  01300  2008                  move.l   a0,d0                              
  01302  6000feb2              bra.w    L11b6                              
  01306  0313                  btst     d1,(a3)                            
  01308  0b02                  btst     d5,d2                              
  0130a  0106                  btst     d0,d6                              
  0130c  0704                  btst     d3,d4                              
  0130e  05080900              movep.w  $900(a0),d2                        
  01312  7000                  moveq    #0,d0                              
  01314  4a380291              tst.b    ($291).w                           
  01318  6b16                  bmi.s    L1330                              
  0131a  123801fb              move.b   ($1fb).w,d1                        
  0131e  0201000f              andi.b   #$f,d1                             
  01322  0c010001              cmpi.b   #1,d1                              
  01326  6608                  bne.s    L1330                              
  01328  207802dc              movea.l  ($2dc).w,a0                        
  0132c  10280007              move.b   $7(a0),d0                          
L1330:
  01330  6000fe84              bra.w    L11b6                              
  01334  0c380002012f          cmpi.b   #2,($12f).w                        
  0133a  6d16                  blt.s    L1352                              
  0133c  7000                  moveq    #0,d0                              
  0133e  10380cb1              move.b   ($cb1).w,d0                        
  01342  0c000001              cmpi.b   #1,d0                              
  01346  670c                  beq.s    L1354                              
  01348  0c000003              cmpi.b   #3,d0                              
  0134c  6d04                  blt.s    L1352                              
  0134e  5340                  subq.w   #1,d0                              
  01350  6002                  bra.s    L1354                              
L1352:
  01352  7000                  moveq    #0,d0                              
L1354:
  01354  6000fe60              bra.w    L11b6                              
  01358  303ca89f              move.w   #$a89f,d0                          
  0135c  a746                  _GetTrapAddress.sysclear                    ; $a746
  0135e  2408                  move.l   a0,d2                              
  01360  203c0000a88f          move.l   #$a88f,d0                          
  01366  a746                  _GetTrapAddress.sysclear                    ; $a746
  01368  20380108              move.l   ($108).w,d0                        
  0136c  b488                  cmp.l    a0,d2                              
  0136e  670a                  beq.s    L137a                              
  01370  598f                  subq.l   #4,a7                              
  01372  3f3c0016              move.w   #$16,-(a7)                         
  01376  a88f                  _trap    $a88f                              
  01378  201f                  move.l   (a7)+,d0                           
L137a:
  0137a  6000fe3a              bra.w    L11b6                              

;----------------------------------------------------------------------
; f4_137e   [jump table #146]
;----------------------------------------------------------------------
f4_137e:
  0137e  225f                  movea.l  (a7)+,a1                           
  01380  205f                  movea.l  (a7)+,a0                           
  01382  a021                  _GetPtrSize                                 ; $a021
  01384  2e80                  move.l   d0,(a7)                            
  01386  6a02                  bpl.s    L138a                              
  01388  4297                  clr.l    (a7)                               
L138a:
  0138a  4ed1                  jmp      (a1)                               

;----------------------------------------------------------------------
; f4_138c   [jump table #147]
;----------------------------------------------------------------------
f4_138c:
  0138c  225f                  movea.l  (a7)+,a1                           
  0138e  205f                  movea.l  (a7)+,a0                           
  01390  a025                  _GetHandleSize                              ; $a025
  01392  2e80                  move.l   d0,(a7)                            
  01394  6a02                  bpl.s    L1398                              
  01396  4297                  clr.l    (a7)                               
L1398:
  01398  4ed1                  jmp      (a1)                               

;----------------------------------------------------------------------
; f4_139a   [jump table #148]
;----------------------------------------------------------------------
f4_139a:
  0139a  225f                  movea.l  (a7)+,a1                           
  0139c  121f                  move.b   (a7)+,d1                           
  0139e  301f                  move.w   (a7)+,d0                           
  013a0  4a01                  tst.b    d1                                 
  013a2  6704                  beq.s    L13a8                              
  013a4  a746                  _GetTrapAddress.sysclear                    ; $a746
  013a6  6002                  bra.s    L13aa                              
L13a8:
  013a8  a346                  _GetTrapAddress.clear                       ; $a346
L13aa:
  013aa  2e88                  move.l   a0,(a7)                            
  013ac  4ed1                  jmp      (a1)                               

;----------------------------------------------------------------------
; f4_13ae   [jump table #149]
;----------------------------------------------------------------------
f4_13ae:
  013ae  4e56ffce              link     a6,#-50                            
  013b2  204f                  movea.l  a7,a0                              
  013b4  216e000e0012          move.l   $e(a6),$12(a0)                     
  013ba  316e000c0016          move.w   $c(a6),$16(a0)                     
  013c0  4228001a              clr.b    $1a(a0)                            
  013c4  4228001b              clr.b    $1b(a0)                            
  013c8  42a8001c              clr.l    $1c(a0)                            
  013cc  701a                  moveq    #26,d0                             
  013ce  a060                  _HFSDispatch                                ; $a060
  013d0  0c40ffce              cmpi.w   #$ffce,d0                          
  013d4  6602                  bne.s    L13d8                              
  013d6  a000                  _Open                                       ; $a000
L13d8:
  013d8  226e0008              movea.l  $8(a6),a1                          
  013dc  32a80018              move.w   $18(a0),(a1)                       
  013e0  3d400012              move.w   d0,$12(a6)                         
  013e4  4e5e                  unlk     a6                                 
  013e6  205f                  movea.l  (a7)+,a0                           
  013e8  4fef000a              lea      $a(a7),a7                          
  013ec  4ed0                  jmp      (a0)                               

;----------------------------------------------------------------------
; f4_13ee   [jump table #150]
;----------------------------------------------------------------------
f4_13ee:
  013ee  4e56ffce              link     a6,#-50                            
  013f2  204f                  movea.l  a7,a0                              
  013f4  316e00080018          move.w   $8(a6),$18(a0)                     
  013fa  a001                  _Close                                      ; $a001
  013fc  3d40000a              move.w   d0,$a(a6)                          
  01400  4e5e                  unlk     a6                                 
  01402  205f                  movea.l  (a7)+,a0                           
  01404  548f                  addq.l   #2,a7                              
  01406  4ed0                  jmp      (a0)                               

;----------------------------------------------------------------------
; f4_1408   [jump table #151]
;----------------------------------------------------------------------
f4_1408:
  01408  51c1                  sf       d1                                 
  0140a  6002                  bra.s    L140e                              

;----------------------------------------------------------------------
; f4_140c   [jump table #152]
;----------------------------------------------------------------------
f4_140c:
  0140c  50c1                  st       d1                                 

;----------------------------------------------------------------------
; f4_140e
;----------------------------------------------------------------------
f4_140e:
  0140e  4e56ffce              link     a6,#-50                            
  01412  204f                  movea.l  a7,a0                              
  01414  216e00080020          move.l   $8(a6),$20(a0)                     
  0141a  316e00100018          move.w   $10(a6),$18(a0)                    
  01420  226e000c              movea.l  $c(a6),a1                          
  01424  21510024              move.l   (a1),$24(a0)                       
  01428  4268002c              clr.w    $2c(a0)                            
  0142c  42a8002e              clr.l    $2e(a0)                            
  01430  4a01                  tst.b    d1                                 
  01432  6604                  bne.s    L1438                              
  01434  a002                  _Read                                       ; $a002
  01436  6002                  bra.s    L143a                              
L1438:
  01438  a003                  _Write                                      ; $a003
L143a:
  0143a  3d400012              move.w   d0,$12(a6)                         
  0143e  226e000c              movea.l  $c(a6),a1                          
  01442  22a80028              move.l   $28(a0),(a1)                       
  01446  4e5e                  unlk     a6                                 
  01448  225f                  movea.l  (a7)+,a1                           
  0144a  4fef000a              lea      $a(a7),a7                          
  0144e  4ed1                  jmp      (a1)                               

;----------------------------------------------------------------------
; f4_1450   [jump table #153]
;----------------------------------------------------------------------
f4_1450:
  01450  4e56ffb0              link     a6,#-80                            
  01454  204f                  movea.l  a7,a0                              
  01456  216e00120012          move.l   $12(a6),$12(a0)                    
  0145c  316e00100016          move.w   $10(a6),$16(a0)                    
  01462  4228001a              clr.b    $1a(a0)                            
  01466  a008                  _Create                                     ; $a008
  01468  6616                  bne.s    L1480                              
  0146a  4268001c              clr.w    $1c(a0)                            
  0146e  a00c                  _GetFileInfo                                ; $a00c
  01470  660e                  bne.s    L1480                              
  01472  43e80020              lea      $20(a0),a1                         
  01476  22ee0008              move.l   $8(a6),(a1)+                       
  0147a  22ae000c              move.l   $c(a6),(a1)                        
  0147e  a00d                  _SetFileInfo                                ; $a00d
L1480:
  01480  3d400016              move.w   d0,$16(a6)                         
  01484  4e5e                  unlk     a6                                 
  01486  225f                  movea.l  (a7)+,a1                           
  01488  4fef000e              lea      $e(a7),a7                          
  0148c  4ed1                  jmp      (a1)                               

;----------------------------------------------------------------------
; f4_148e   [jump table #154]
;----------------------------------------------------------------------
f4_148e:
  0148e  4e56ffce              link     a6,#-50                            
  01492  204f                  movea.l  a7,a0                              
  01494  216e000a0012          move.l   $a(a6),$12(a0)                     
  0149a  316e00080016          move.w   $8(a6),$16(a0)                     
  014a0  4228001a              clr.b    $1a(a0)                            
  014a4  a009                  _Delete                                     ; $a009
  014a6  3d40000e              move.w   d0,$e(a6)                          
  014aa  4e5e                  unlk     a6                                 
  014ac  225f                  movea.l  (a7)+,a1                           
  014ae  5c8f                  addq.l   #6,a7                              
  014b0  4ed1                  jmp      (a1)                               

;----------------------------------------------------------------------
; f4_14b2   [jump table #155]
;----------------------------------------------------------------------
f4_14b2:
  014b2  4e56ffce              link     a6,#-50                            
  014b6  204f                  movea.l  a7,a0                              
  014b8  316e000c0018          move.w   $c(a6),$18(a0)                     
  014be  a011                  _GetEOF                                     ; $a011
  014c0  3d40000e              move.w   d0,$e(a6)                          
  014c4  226e0008              movea.l  $8(a6),a1                          
  014c8  22a8001c              move.l   $1c(a0),(a1)                       
  014cc  4e5e                  unlk     a6                                 
  014ce  225f                  movea.l  (a7)+,a1                           
  014d0  5c8f                  addq.l   #6,a7                              
  014d2  4ed1                  jmp      (a1)                               

;----------------------------------------------------------------------
; f4_14d4   [jump table #156]
;----------------------------------------------------------------------
f4_14d4:
  014d4  4e56ffce              link     a6,#-50                            
  014d8  204f                  movea.l  a7,a0                              
  014da  316e000e0018          move.w   $e(a6),$18(a0)                     
  014e0  316e000c002c          move.w   $c(a6),$2c(a0)                     
  014e6  216e0008002e          move.l   $8(a6),$2e(a0)                     
  014ec  a044                  _SetFPos                                    ; $a044
  014ee  3d400010              move.w   d0,$10(a6)                         
  014f2  4e5e                  unlk     a6                                 
  014f4  225f                  movea.l  (a7)+,a1                           
  014f6  508f                  addq.l   #8,a7                              
  014f8  4ed1                  jmp      (a1)                               

;----------------------------------------------------------------------
; f4_14fa   [jump table #157]
;----------------------------------------------------------------------
f4_14fa:
  014fa  206f0008              movea.l  $8(a7),a0                          
  014fe  3f3c0001              move.w   #1,-(a7)                           
  01502  a9ee                  _Pack7                                      ; $a9ee
  01504  206f0004              movea.l  $4(a7),a0                          
  01508  2080                  move.l   d0,(a0)                            
  0150a  4efa000e              jmp      L151a(pc)                          

;----------------------------------------------------------------------
; f4_150e   [jump table #158]
;----------------------------------------------------------------------
f4_150e:
  0150e  206f0004              movea.l  $4(a7),a0                          
  01512  202f0008              move.l   $8(a7),d0                          
  01516  4267                  clr.w    -(a7)                              
  01518  a9ee                  _Pack7                                      ; $a9ee
L151a:
  0151a  205f                  movea.l  (a7)+,a0                           
  0151c  504f                  addq.w   #8,a7                              
  0151e  4ed0                  jmp      (a0)                               

;----------------------------------------------------------------------
; f4_1520   [jump table #159]
;----------------------------------------------------------------------
f4_1520:
  01520  206f000c              movea.l  $c(a7),a0                          
  01524  202f0004              move.l   $4(a7),d0                          
  01528  a9e3                  _PtrToHand                                  ; $a9e3
  0152a  3f400010              move.w   d0,$10(a7)                         
  0152e  226f0008              movea.l  $8(a7),a1                          
  01532  2288                  move.l   a0,(a1)                            
  01534  205f                  movea.l  (a7)+,a0                           
  01536  4fef000c              lea      $c(a7),a7                          
  0153a  4ed0                  jmp      (a0)                               

;----------------------------------------------------------------------
; f4_153c   [jump table #160]
;----------------------------------------------------------------------
f4_153c:
  0153c  4e560000              link     a6,#0                              
  01540  594f                  subq.w   #4,a7                              
  01542  2f3c53545223          move.l   #$53545223,-(a7)                   
  01548  3f2e000a              move.w   $a(a6),-(a7)                       
  0154c  a9a0                  _GetResource                                ; $a9a0
  0154e  226e000c              movea.l  $c(a6),a1                          
  01552  4211                  clr.b    (a1)                               
  01554  201f                  move.l   (a7)+,d0                           
  01556  6722                  beq.s    L157a                              
  01558  2040                  movea.l  d0,a0                              
  0155a  2050                  movea.l  (a0),a0                            
  0155c  3018                  move.w   (a0)+,d0                           
  0155e  322e0008              move.w   $8(a6),d1                          
  01562  6716                  beq.s    L157a                              
  01564  b240                  cmp.w    d0,d1                              
  01566  6212                  bhi.s    L157a                              
  01568  7000                  moveq    #0,d0                              
L156a:
  0156a  5341                  subq.w   #1,d1                              
  0156c  6706                  beq.s    L1574                              
  0156e  1018                  move.b   (a0)+,d0                           
  01570  d1c0                  adda.l   d0,a0                              
  01572  60f6                  bra.s    L156a                              
L1574:
  01574  1010                  move.b   (a0),d0                            
  01576  5240                  addq.w   #1,d0                              
  01578  a02e                  _BlockMove                                  ; $a02e
L157a:
  0157a  4e5e                  unlk     a6                                 
  0157c  205f                  movea.l  (a7)+,a0                           
  0157e  508f                  addq.l   #8,a7                              
  01580  4ed0                  jmp      (a0)                               

;----------------------------------------------------------------------
; f4_1582   [jump table #119]
;----------------------------------------------------------------------
f4_1582:
  01582  4e56fff4              link     a6,#-12                            
  01586  48e70300              movem.l  d6/d7,-(a7)                        
  0158a  7e02                  moveq    #2,d7                              
  0158c  486efff8              pea      -$8(a6)                            
  01590  486efffc              pea      -$4(a6)                            
  01594  203c00080005          move.l   #$80005,d0                         
  0159a  ab1d                  _trap    $ab1d                              
  0159c  4267                  clr.w    -(a7)                              
  0159e  2f2e0008              move.l   $8(a6),-(a7)                       
  015a2  3f3c0008              move.w   #8,-(a7)                           
  015a6  2f2e000c              move.l   $c(a6),-(a7)                       
  015aa  42a7                  clr.l    -(a7)                              
  015ac  2f2efffc              move.l   -$4(a6),-(a7)                      
  015b0  2f07                  move.l   d7,-(a7)                           
  015b2  203c00160000          move.l   #$160000,d0                        
  015b8  ab1d                  _trap    $ab1d                              
  015ba  3c1f                  move.w   (a7)+,d6                           
  015bc  4a46                  tst.w    d6                                 
  015be  6710                  beq.s    L15d0                              
  015c0  2f3c000003a4          move.l   STR_03a4,-(a7)                     ; "new g world try"
  015c6  3f06                  move.w   d6,-(a7)                           
  015c8  4ead06ca              jsr      f7_18ec                            
  015cc  a9f4                  _ExitToShell                                ; $a9f4
  015ce  5c8f                  addq.l   #6,a7                              
L15d0:
  015d0  4227                  clr.b    -(a7)                              
  015d2  206e0008              movea.l  $8(a6),a0                          
  015d6  2050                  movea.l  (a0),a0                            
  015d8  2f280002              move.l   $2(a0),-(a7)                       
  015dc  203c00040001          move.l   #$40001,d0                         
  015e2  ab1d                  _trap    $ab1d                              
  015e4  4cee00c0ffec          movem.l  -$14(a6),d6/d7                     
  015ea  4e5e                  unlk     a6                                 
  015ec  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_15ee   [jump table #144]
;----------------------------------------------------------------------
f4_15ee:
  015ee  4e56ffe6              link     a6,#-26                            
  015f2  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  015f6  286e0010              movea.l  $10(a6),a4                         
  015fa  266e0014              movea.l  $14(a6),a3                         
  015fe  2d53ffec              move.l   (a3),-$14(a6)                      
  01602  2d6b0004fff0          move.l   $4(a3),-$10(a6)                    
  01608  206e0008              movea.l  $8(a6),a0                          
  0160c  202e000c              move.l   $c(a6),d0                          
  01610  2080                  move.l   d0,(a0)                            
  01612  2440                  movea.l  d0,a2                              
  01614  3d6effecfff4          move.w   -$14(a6),-$c(a6)                   
  0161a  3d6effeefff6          move.w   -$12(a6),-$a(a6)                   
  01620  486efff4              pea      -$c(a6)                            
  01624  a870                  _LocalToGlobal                              ; $a870
  01626  3d6efff4ffec          move.w   -$c(a6),-$14(a6)                   
  0162c  3d6efff6ffee          move.w   -$a(a6),-$12(a6)                   
  01632  3d6efff0fff4          move.w   -$10(a6),-$c(a6)                   
  01638  3d6efff2fff6          move.w   -$e(a6),-$a(a6)                    
  0163e  486efff4              pea      -$c(a6)                            
  01642  a870                  _LocalToGlobal                              ; $a870
  01644  3d6efff4fff0          move.w   -$c(a6),-$10(a6)                   
  0164a  3d6efff6fff2          move.w   -$a(a6),-$e(a6)                    
  01650  3a2b0006              move.w   $6(a3),d5                          
  01654  3d6b0002ffe6          move.w   $2(a3),-$1a(a6)                    
  0165a  3d53fffe              move.w   (a3),-$2(a6)                       
  0165e  3d6b0004fff8          move.w   $4(a3),-$8(a6)                     
  01664  2f0a                  move.l   a2,-(a7)                           
  01666  aa00                  _OpenCPort                                  ; $aa00
  01668  42a7                  clr.l    -(a7)                              
  0166a  486effec              pea      -$14(a6)                           
  0166e  aa27                  _GetMaxDevice                               ; $aa27
  01670  2d5fffe8              move.l   (a7)+,-$18(a6)                     
  01674  206a0002              movea.l  $2(a2),a0                          
  01678  2050                  movea.l  (a0),a0                            
  0167a  3e280020              move.w   $20(a0),d7                         
  0167e  3005                  move.w   d5,d0                              
  01680  906effe6              sub.w    -$1a(a6),d0                        
  01684  c1c7                  muls.w   d7,d0                              
  01686  780f                  moveq    #15,d4                             
  01688  d840                  add.w    d0,d4                              
  0168a  e844                  asr.w    #4,d4                              
  0168c  d844                  add.w    d4,d4                              
  0168e  48c4                  ext.l    d4                                 
  01690  302efff8              move.w   -$8(a6),d0                         
  01694  906efffe              sub.w    -$2(a6),d0                         
  01698  48c0                  ext.l    d0                                 
  0169a  4c040000              mulu.l   d4,d0                              
  0169e  2d40fffa              move.l   d0,-$6(a6)                         
  016a2  a11e                  _NewPtr                                     ; $a11e
  016a4  226e0018              movea.l  $18(a6),a1                         
  016a8  2288                  move.l   a0,(a1)                            
  016aa  4267                  clr.w    -(a7)                              
  016ac  3eb80220              move.w   ($220).w,(a7)                      
  016b0  361f                  move.w   (a7)+,d3                           
  016b2  4a43                  tst.w    d3                                 
  016b4  6716                  beq.s    L16cc                              
  016b6  2f3c000003b4          move.l   STR_03b4,-(a7)                     ; " trying to allocate offscreen maps.  Increase program memory"
  016bc  3f03                  move.w   d3,-(a7)                           
  016be  4ead06ca              jsr      f7_18ec                            
  016c2  4ead05ba              jsr      f5_36ba                            
  016c6  3600                  move.w   d0,d3                              
  016c8  a9f4                  _ExitToShell                                ; $a9f4
  016ca  5c8f                  addq.l   #6,a7                              
L16cc:
  016cc  206e0018              movea.l  $18(a6),a0                         
  016d0  226a0002              movea.l  $2(a2),a1                          
  016d4  2251                  movea.l  (a1),a1                            
  016d6  2290                  move.l   (a0),(a1)                          
  016d8  3004                  move.w   d4,d0                              
  016da  06408000              addi.w   #$8000,d0                          
  016de  226a0002              movea.l  $2(a2),a1                          
  016e2  2251                  movea.l  (a1),a1                            
  016e4  33400004              move.w   d0,$4(a1)                          
  016e8  226a0002              movea.l  $2(a2),a1                          
  016ec  2251                  movea.l  (a1),a1                            
  016ee  23530006              move.l   (a3),$6(a1)                        
  016f2  236b0004000a          move.l   $4(a3),$a(a1)                      
  016f8  25530010              move.l   (a3),$10(a2)                       
  016fc  256b00040014          move.l   $4(a3),$14(a2)                     
  01702  226effe8              movea.l  -$18(a6),a1                        
  01706  2251                  movea.l  (a1),a1                            
  01708  22690016              movea.l  $16(a1),a1                         
  0170c  2251                  movea.l  (a1),a1                            
  0170e  28a9002a              move.l   $2a(a1),(a4)                       
  01712  7c00                  moveq    #0,d6                              
  01714  600a                  bra.s    L1720                              
L1716:
  01716  2054                  movea.l  (a4),a0                            
  01718  2050                  movea.l  (a0),a0                            
  0171a  31866608              move.w   d6,$8(a0,d6.w*8)                   
  0171e  5246                  addq.w   #1,d6                              
L1720:
  01720  2054                  movea.l  (a4),a0                            
  01722  2050                  movea.l  (a0),a0                            
  01724  bc680006              cmp.w    $6(a0),d6                          
  01728  6fec                  ble.s    L1716                              
  0172a  2054                  movea.l  (a4),a0                            
  0172c  2050                  movea.l  (a0),a0                            
  0172e  02687fff0004          andi.w   #$7fff,$4(a0)                      
  01734  42a7                  clr.l    -(a7)                              
  01736  aa28                  _GetCTSeed                                  ; $aa28
  01738  2054                  movea.l  (a4),a0                            
  0173a  2050                  movea.l  (a0),a0                            
  0173c  209f                  move.l   (a7)+,(a0)                         
  0173e  206a0002              movea.l  $2(a2),a0                          
  01742  2050                  movea.l  (a0),a0                            
  01744  2154002a              move.l   (a4),$2a(a0)                       
  01748  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  0174c  4e5e                  unlk     a6                                 
  0174e  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_1750   [jump table #120]
;----------------------------------------------------------------------
f4_1750:
  01750  4e56fff8              link     a6,#-8                             
  01754  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  01758  4ead0072              jsr      f2_0404                            
  0175c  33fc0001ffff883e      move.w   #1,g_77c2                          
L1764:
  01764  3f3c0003              move.w   #3,-(a7)                           
  01768  4ead0242              jsr      f2_79a8                            
  0176c  5340                  subq.w   #1,d0                              
  0176e  c1fc0015              muls.w   #$15,d0                            
  01772  06400015              addi.w   #$15,d0                            
  01776  3239ffff883e          move.w   g_77c2,d1                          
  0177c  318013b0ffff8afe      move.w   d0,(-$7502,za0,d1.w*2)             
  01784  3ebc0003              move.w   #3,(a7)                            
  01788  4ead0242              jsr      f2_79a8                            
  0178c  5340                  subq.w   #1,d0                              
  0178e  c1fc0015              muls.w   #$15,d0                            
  01792  06400015              addi.w   #$15,d0                            
  01796  3239ffff883e          move.w   g_77c2,d1                          
  0179c  318013b0ffff8ad4      move.w   d0,(-$752c,za0,d1.w*2)             
  017a4  548f                  addq.l   #2,a7                              
  017a6  3039ffff883e          move.w   g_77c2,d0                          
  017ac  0c70003f03b0ffff8ad4  cmpi.w   #$3f,(-$752c,za0,d0.w*2)           
  017b6  6eac                  bgt.s    L1764                              
L17b8:
  017b8  3f3c0003              move.w   #3,-(a7)                           
  017bc  4ead0242              jsr      f2_79a8                            
  017c0  c1fc0015              muls.w   #$15,d0                            
  017c4  3239ffff883e          move.w   g_77c2,d1                          
  017ca  d07013b0ffff8afe      add.w    (-$7502,za0,d1.w*2),d0             
  017d2  318013b0ffff8b52      move.w   d0,(-$74ae,za0,d1.w*2)             
  017da  3ebc0003              move.w   #3,(a7)                            
  017de  4ead0242              jsr      f2_79a8                            
  017e2  c1fc0015              muls.w   #$15,d0                            
  017e6  3239ffff883e          move.w   g_77c2,d1                          
  017ec  d07013b0ffff8ad4      add.w    (-$752c,za0,d1.w*2),d0             
  017f4  318013b0ffff8b28      move.w   d0,(-$74d8,za0,d1.w*2)             
  017fc  548f                  addq.l   #2,a7                              
  017fe  3039ffff883e          move.w   g_77c2,d0                          
  01804  0c7000bd03b0ffff8b28  cmpi.w   #$bd,(-$74d8,za0,d0.w*2)           
  0180e  6ea8                  bgt.s    L17b8                              
  01810  3039ffff883e          move.w   g_77c2,d0                          
  01816  307003b0ffff8afe      movea.w  (-$7502,za0,d0.w*2),a0             
  0181e  2208                  move.l   a0,d1                              
  01820  83fc0015              divs.w   #$15,d1                            
  01824  3d41fff8              move.w   d1,-$8(a6)                         
  01828  307003b0ffff8b52      movea.w  (-$74ae,za0,d0.w*2),a0             
  01830  2408                  move.l   a0,d2                              
  01832  85fc0015              divs.w   #$15,d2                            
  01836  5342                  subq.w   #1,d2                              
  01838  3d42fffa              move.w   d2,-$6(a6)                         
  0183c  307003b0ffff8ad4      movea.w  (-$752c,za0,d0.w*2),a0             
  01844  2008                  move.l   a0,d0                              
  01846  81fc0015              divs.w   #$15,d0                            
  0184a  3d40fffc              move.w   d0,-$4(a6)                         
  0184e  3039ffff883e          move.w   g_77c2,d0                          
  01854  307003b0ffff8b28      movea.w  (-$74d8,za0,d0.w*2),a0             
  0185c  2008                  move.l   a0,d0                              
  0185e  81fc0015              divs.w   #$15,d0                            
  01862  5340                  subq.w   #1,d0                              
  01864  3d40fffe              move.w   d0,-$2(a6)                         
L1868:
  01868  7601                  moveq    #1,d3                              
  0186a  3f3c000a              move.w   #$a,-(a7)                          
  0186e  4ead0242              jsr      f2_79a8                            
  01872  5f40                  subq.w   #7,d0                              
  01874  548f                  addq.l   #2,a7                              
  01876  6e2e                  bgt.s    L18a6                              
  01878  3c2efffa              move.w   -$6(a6),d6                         
  0187c  9c6efff8              sub.w    -$8(a6),d6                         
  01880  7600                  moveq    #0,d3                              
  01882  3f06                  move.w   d6,-(a7)                           
  01884  4ead0242              jsr      f2_79a8                            
  01888  5340                  subq.w   #1,d0                              
  0188a  c1fc0015              muls.w   #$15,d0                            
  0188e  3239ffff883e          move.w   g_77c2,d1                          
  01894  d07013b0ffff8afe      add.w    (-$7502,za0,d1.w*2),d0             
  0189c  318013b0ffff8a80      move.w   d0,(-$7580,za0,d1.w*2)             
  018a4  548f                  addq.l   #2,a7                              
L18a6:
  018a6  3f3c000a              move.w   #$a,-(a7)                          
  018aa  4ead0242              jsr      f2_79a8                            
  018ae  5f40                  subq.w   #7,d0                              
  018b0  548f                  addq.l   #2,a7                              
  018b2  6e2e                  bgt.s    L18e2                              
  018b4  3c2efffe              move.w   -$2(a6),d6                         
  018b8  9c6efffc              sub.w    -$4(a6),d6                         
  018bc  7600                  moveq    #0,d3                              
  018be  3f06                  move.w   d6,-(a7)                           
  018c0  4ead0242              jsr      f2_79a8                            
  018c4  5340                  subq.w   #1,d0                              
  018c6  c1fc0015              muls.w   #$15,d0                            
  018ca  3239ffff883e          move.w   g_77c2,d1                          
  018d0  d07013b0ffff8ad4      add.w    (-$752c,za0,d1.w*2),d0             
  018d8  318013b0ffff8a56      move.w   d0,(-$75aa,za0,d1.w*2)             
  018e0  548f                  addq.l   #2,a7                              
L18e2:
  018e2  0c430001              cmpi.w   #1,d3                              
  018e6  6780                  beq.s    L1868                              
  018e8  7a01                  moveq    #1,d5                              
  018ea  3e2efff8              move.w   -$8(a6),d7                         
  018ee  6026                  bra.s    L1916                              
L18f0:
  018f0  3c2efffc              move.w   -$4(a6),d6                         
  018f4  6018                  bra.s    L190e                              
L18f6:
  018f6  7012                  moveq    #18,d0                             
  018f8  c1c7                  muls.w   d7,d0                              
  018fa  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01900  3046                  movea.w  d6,a0                              
  01902  d1c8                  adda.l   a0,a0                              
  01904  31b9ffff883e0800      move.w   g_77c2,$0(a0,d0.l)                 
  0190c  5246                  addq.w   #1,d6                              
L190e:
  0190e  bc6efffe              cmp.w    -$2(a6),d6                         
  01912  6fe2                  ble.s    L18f6                              
  01914  5247                  addq.w   #1,d7                              
L1916:
  01916  be6efffa              cmp.w    -$6(a6),d7                         
  0191a  6fd4                  ble.s    L18f0                              
L191c:
  0191c  3805                  move.w   d5,d4                              
  0191e  60000484              bra.w    L1da4                              
L1922:
  01922  0c70017a43b0ffff8b52  cmpi.w   #$17a,(-$74ae,za0,d4.w*2)          
  0192c  6e000234              bgt.w    L1b62                              
  01930  4a7043b0ffff8a56      tst.w    (-$75aa,za0,d4.w*2)                
  01938  67000228              beq.w    L1b62                              
  0193c  307043b0ffff8b52      movea.w  (-$74ae,za0,d4.w*2),a0             
  01944  2008                  move.l   a0,d0                              
  01946  81fc0015              divs.w   #$15,d0                            
  0194a  c1fc0012              muls.w   #$12,d0                            
  0194e  307043b0ffff8a56      movea.w  (-$75aa,za0,d4.w*2),a0             
  01956  2208                  move.l   a0,d1                              
  01958  83fc0015              divs.w   #$15,d1                            
  0195c  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01962  3041                  movea.w  d1,a0                              
  01964  d1c8                  adda.l   a0,a0                              
  01966  4a700800              tst.w    $0(a0,d0.l)                        
  0196a  660001f6              bne.w    L1b62                              
  0196e  5279ffff883e          addq.w   #1,g_77c2                          
  01974  3039ffff883e          move.w   g_77c2,d0                          
  0197a  b079ffff3ae0          cmp.w    g_c520,d0                          
  01980  6e00042c              bgt.w    L1dae                              
  01984  3039ffff883e          move.w   g_77c2,d0                          
  0198a  31b043b0ffff8b5203b0  move.w   (-$74ae,za0,d4.w*2),(-$7502,za0,d0.w*2)
  01998  31b043b0ffff8a5603b0  move.w   (-$75aa,za0,d4.w*2),(-$7556,za0,d0.w*2)
  019a6  7c01                  moveq    #1,d6                              
  019a8  7601                  moveq    #1,d3                              
  019aa  6056                  bra.s    L1a02                              
L19ac:
  019ac  3039ffff883e          move.w   g_77c2,d0                          
  019b2  307003b0ffff8aaa      movea.w  (-$7556,za0,d0.w*2),a0             
  019ba  2208                  move.l   a0,d1                              
  019bc  83fc0015              divs.w   #$15,d1                            
  019c0  9243                  sub.w    d3,d1                              
  019c2  5341                  subq.w   #1,d1                              
  019c4  6d42                  blt.s    L1a08                              
  019c6  3039ffff883e          move.w   g_77c2,d0                          
  019cc  307003b0ffff8afe      movea.w  (-$7502,za0,d0.w*2),a0             
  019d4  2208                  move.l   a0,d1                              
  019d6  83fc0015              divs.w   #$15,d1                            
  019da  c3fc0012              muls.w   #$12,d1                            
  019de  307003b0ffff8aaa      movea.w  (-$7556,za0,d0.w*2),a0             
  019e6  2408                  move.l   a0,d2                              
  019e8  85fc0015              divs.w   #$15,d2                            
  019ec  9443                  sub.w    d3,d2                              
  019ee  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  019f4  3042                  movea.w  d2,a0                              
  019f6  d1c8                  adda.l   a0,a0                              
  019f8  4a701800              tst.w    $0(a0,d1.l)                        
  019fc  660a                  bne.s    L1a08                              
  019fe  5246                  addq.w   #1,d6                              
  01a00  5243                  addq.w   #1,d3                              
L1a02:
  01a02  0c430003              cmpi.w   #3,d3                              
  01a06  6fa4                  ble.s    L19ac                              
L1a08:
  01a08  3f06                  move.w   d6,-(a7)                           
  01a0a  4ead0242              jsr      f2_79a8                            
  01a0e  c1fc0015              muls.w   #$15,d0                            
  01a12  3239ffff883e          move.w   g_77c2,d1                          
  01a18  323013b0ffff8aaa      move.w   (-$7556,za0,d1.w*2),d1             
  01a20  9240                  sub.w    d0,d1                              
  01a22  06410015              addi.w   #$15,d1                            
  01a26  3039ffff883e          move.w   g_77c2,d0                          
  01a2c  318103b0ffff8ad4      move.w   d1,(-$752c,za0,d0.w*2)             
  01a34  7c00                  moveq    #0,d6                              
  01a36  7601                  moveq    #1,d3                              
  01a38  548f                  addq.l   #2,a7                              
  01a3a  6058                  bra.s    L1a94                              
L1a3c:
  01a3c  3039ffff883e          move.w   g_77c2,d0                          
  01a42  307003b0ffff8afe      movea.w  (-$7502,za0,d0.w*2),a0             
  01a4a  2208                  move.l   a0,d1                              
  01a4c  83fc0015              divs.w   #$15,d1                            
  01a50  d243                  add.w    d3,d1                              
  01a52  0c410012              cmpi.w   #$12,d1                            
  01a56  6e42                  bgt.s    L1a9a                              
  01a58  3039ffff883e          move.w   g_77c2,d0                          
  01a5e  307003b0ffff8afe      movea.w  (-$7502,za0,d0.w*2),a0             
  01a66  2208                  move.l   a0,d1                              
  01a68  83fc0015              divs.w   #$15,d1                            
  01a6c  d243                  add.w    d3,d1                              
  01a6e  c3fc0012              muls.w   #$12,d1                            
  01a72  307003b0ffff8ad4      movea.w  (-$752c,za0,d0.w*2),a0             
  01a7a  2408                  move.l   a0,d2                              
  01a7c  85fc0015              divs.w   #$15,d2                            
  01a80  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  01a86  3042                  movea.w  d2,a0                              
  01a88  d1c8                  adda.l   a0,a0                              
  01a8a  4a701800              tst.w    $0(a0,d1.l)                        
  01a8e  660a                  bne.s    L1a9a                              
  01a90  5246                  addq.w   #1,d6                              
  01a92  5243                  addq.w   #1,d3                              
L1a94:
  01a94  0c430003              cmpi.w   #3,d3                              
  01a98  6fa2                  ble.s    L1a3c                              
L1a9a:
  01a9a  3f06                  move.w   d6,-(a7)                           
  01a9c  4ead0242              jsr      f2_79a8                            
  01aa0  3239ffff883e          move.w   g_77c2,d1                          
  01aa6  5340                  subq.w   #1,d0                              
  01aa8  c1fc0015              muls.w   #$15,d0                            
  01aac  d07013b0ffff8afe      add.w    (-$7502,za0,d1.w*2),d0             
  01ab4  06400015              addi.w   #$15,d0                            
  01ab8  318013b0ffff8b52      move.w   d0,(-$74ae,za0,d1.w*2)             
  01ac0  7c00                  moveq    #0,d6                              
  01ac2  7601                  moveq    #1,d3                              
  01ac4  548f                  addq.l   #2,a7                              
  01ac6  6056                  bra.s    L1b1e                              
L1ac8:
  01ac8  3039ffff883e          move.w   g_77c2,d0                          
  01ace  307003b0ffff8aaa      movea.w  (-$7556,za0,d0.w*2),a0             
  01ad6  2208                  move.l   a0,d1                              
  01ad8  83fc0015              divs.w   #$15,d1                            
  01adc  d243                  add.w    d3,d1                              
  01ade  5141                  subq.w   #8,d1                              
  01ae0  6e42                  bgt.s    L1b24                              
  01ae2  3039ffff883e          move.w   g_77c2,d0                          
  01ae8  307003b0ffff8afe      movea.w  (-$7502,za0,d0.w*2),a0             
  01af0  2208                  move.l   a0,d1                              
  01af2  83fc0015              divs.w   #$15,d1                            
  01af6  c3fc0012              muls.w   #$12,d1                            
  01afa  307003b0ffff8aaa      movea.w  (-$7556,za0,d0.w*2),a0             
  01b02  2408                  move.l   a0,d2                              
  01b04  85fc0015              divs.w   #$15,d2                            
  01b08  d443                  add.w    d3,d2                              
  01b0a  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  01b10  3042                  movea.w  d2,a0                              
  01b12  d1c8                  adda.l   a0,a0                              
  01b14  4a701800              tst.w    $0(a0,d1.l)                        
  01b18  660a                  bne.s    L1b24                              
  01b1a  5246                  addq.w   #1,d6                              
  01b1c  5243                  addq.w   #1,d3                              
L1b1e:
  01b1e  0c430003              cmpi.w   #3,d3                              
  01b22  6fa4                  ble.s    L1ac8                              
L1b24:
  01b24  3f06                  move.w   d6,-(a7)                           
  01b26  4ead0242              jsr      f2_79a8                            
  01b2a  5340                  subq.w   #1,d0                              
  01b2c  c1fc0015              muls.w   #$15,d0                            
  01b30  3239ffff883e          move.w   g_77c2,d1                          
  01b36  d07013b0ffff8aaa      add.w    (-$7556,za0,d1.w*2),d0             
  01b3e  06400015              addi.w   #$15,d0                            
  01b42  318013b0ffff8b28      move.w   d0,(-$74d8,za0,d1.w*2)             
  01b4a  3e81                  move.w   d1,(a7)                            
  01b4c  4eba04cc              jsr      f4_201a                            
  01b50  3eb9ffff883e          move.w   g_77c2,(a7)                        
  01b56  4eba0632              jsr      f4_218a                            
  01b5a  3a04                  move.w   d4,d5                              
  01b5c  548f                  addq.l   #2,a7                              
  01b5e  6000fdbc              bra.w    L191c                              
L1b62:
  01b62  0c7000a843b0ffff8b28  cmpi.w   #$a8,(-$74d8,za0,d4.w*2)           
  01b6c  6e000234              bgt.w    L1da2                              
  01b70  4a7043b0ffff8a80      tst.w    (-$7580,za0,d4.w*2)                
  01b78  67000228              beq.w    L1da2                              
  01b7c  307043b0ffff8a80      movea.w  (-$7580,za0,d4.w*2),a0             
  01b84  2008                  move.l   a0,d0                              
  01b86  81fc0015              divs.w   #$15,d0                            
  01b8a  c1fc0012              muls.w   #$12,d0                            
  01b8e  307043b0ffff8b28      movea.w  (-$74d8,za0,d4.w*2),a0             
  01b96  2208                  move.l   a0,d1                              
  01b98  83fc0015              divs.w   #$15,d1                            
  01b9c  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01ba2  3041                  movea.w  d1,a0                              
  01ba4  d1c8                  adda.l   a0,a0                              
  01ba6  4a700800              tst.w    $0(a0,d0.l)                        
  01baa  660001f6              bne.w    L1da2                              
  01bae  5279ffff883e          addq.w   #1,g_77c2                          
  01bb4  3039ffff883e          move.w   g_77c2,d0                          
  01bba  b079ffff3ae0          cmp.w    g_c520,d0                          
  01bc0  6e0001ec              bgt.w    L1dae                              
  01bc4  3039ffff883e          move.w   g_77c2,d0                          
  01bca  31b043b0ffff8b2803b0  move.w   (-$74d8,za0,d4.w*2),(-$752c,za0,d0.w*2)
  01bd8  31b043b0ffff8a8003b0  move.w   (-$7580,za0,d4.w*2),(-$75d4,za0,d0.w*2)
  01be6  7c00                  moveq    #0,d6                              
  01be8  7601                  moveq    #1,d3                              
  01bea  6056                  bra.s    L1c42                              
L1bec:
  01bec  3039ffff883e          move.w   g_77c2,d0                          
  01bf2  307003b0ffff8ad4      movea.w  (-$752c,za0,d0.w*2),a0             
  01bfa  2208                  move.l   a0,d1                              
  01bfc  83fc0015              divs.w   #$15,d1                            
  01c00  d243                  add.w    d3,d1                              
  01c02  5141                  subq.w   #8,d1                              
  01c04  6e42                  bgt.s    L1c48                              
  01c06  3039ffff883e          move.w   g_77c2,d0                          
  01c0c  307003b0ffff8a2c      movea.w  (-$75d4,za0,d0.w*2),a0             
  01c14  2208                  move.l   a0,d1                              
  01c16  83fc0015              divs.w   #$15,d1                            
  01c1a  c3fc0012              muls.w   #$12,d1                            
  01c1e  307003b0ffff8ad4      movea.w  (-$752c,za0,d0.w*2),a0             
  01c26  2408                  move.l   a0,d2                              
  01c28  85fc0015              divs.w   #$15,d2                            
  01c2c  d443                  add.w    d3,d2                              
  01c2e  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  01c34  3042                  movea.w  d2,a0                              
  01c36  d1c8                  adda.l   a0,a0                              
  01c38  4a701800              tst.w    $0(a0,d1.l)                        
  01c3c  660a                  bne.s    L1c48                              
  01c3e  5246                  addq.w   #1,d6                              
  01c40  5243                  addq.w   #1,d3                              
L1c42:
  01c42  0c430003              cmpi.w   #3,d3                              
  01c46  6fa4                  ble.s    L1bec                              
L1c48:
  01c48  3f06                  move.w   d6,-(a7)                           
  01c4a  4ead0242              jsr      f2_79a8                            
  01c4e  5340                  subq.w   #1,d0                              
  01c50  c1fc0015              muls.w   #$15,d0                            
  01c54  3239ffff883e          move.w   g_77c2,d1                          
  01c5a  d07013b0ffff8ad4      add.w    (-$752c,za0,d1.w*2),d0             
  01c62  06400015              addi.w   #$15,d0                            
  01c66  318013b0ffff8b28      move.w   d0,(-$74d8,za0,d1.w*2)             
  01c6e  7c01                  moveq    #1,d6                              
  01c70  7601                  moveq    #1,d3                              
  01c72  548f                  addq.l   #2,a7                              
  01c74  6056                  bra.s    L1ccc                              
L1c76:
  01c76  3039ffff883e          move.w   g_77c2,d0                          
  01c7c  307003b0ffff8a2c      movea.w  (-$75d4,za0,d0.w*2),a0             
  01c84  2208                  move.l   a0,d1                              
  01c86  83fc0015              divs.w   #$15,d1                            
  01c8a  9243                  sub.w    d3,d1                              
  01c8c  5341                  subq.w   #1,d1                              
  01c8e  6d42                  blt.s    L1cd2                              
  01c90  3039ffff883e          move.w   g_77c2,d0                          
  01c96  307003b0ffff8a2c      movea.w  (-$75d4,za0,d0.w*2),a0             
  01c9e  2208                  move.l   a0,d1                              
  01ca0  83fc0015              divs.w   #$15,d1                            
  01ca4  9243                  sub.w    d3,d1                              
  01ca6  c3fc0012              muls.w   #$12,d1                            
  01caa  307003b0ffff8ad4      movea.w  (-$752c,za0,d0.w*2),a0             
  01cb2  2408                  move.l   a0,d2                              
  01cb4  85fc0015              divs.w   #$15,d2                            
  01cb8  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  01cbe  3042                  movea.w  d2,a0                              
  01cc0  d1c8                  adda.l   a0,a0                              
  01cc2  4a701800              tst.w    $0(a0,d1.l)                        
  01cc6  660a                  bne.s    L1cd2                              
  01cc8  5246                  addq.w   #1,d6                              
  01cca  5243                  addq.w   #1,d3                              
L1ccc:
  01ccc  0c430003              cmpi.w   #3,d3                              
  01cd0  6fa4                  ble.s    L1c76                              
L1cd2:
  01cd2  3f06                  move.w   d6,-(a7)                           
  01cd4  4ead0242              jsr      f2_79a8                            
  01cd8  c1fc0015              muls.w   #$15,d0                            
  01cdc  3239ffff883e          move.w   g_77c2,d1                          
  01ce2  323013b0ffff8a2c      move.w   (-$75d4,za0,d1.w*2),d1             
  01cea  9240                  sub.w    d0,d1                              
  01cec  06410015              addi.w   #$15,d1                            
  01cf0  3039ffff883e          move.w   g_77c2,d0                          
  01cf6  318103b0ffff8afe      move.w   d1,(-$7502,za0,d0.w*2)             
  01cfe  7c00                  moveq    #0,d6                              
  01d00  7601                  moveq    #1,d3                              
  01d02  548f                  addq.l   #2,a7                              
  01d04  6058                  bra.s    L1d5e                              
L1d06:
  01d06  3039ffff883e          move.w   g_77c2,d0                          
  01d0c  307003b0ffff8a2c      movea.w  (-$75d4,za0,d0.w*2),a0             
  01d14  2208                  move.l   a0,d1                              
  01d16  83fc0015              divs.w   #$15,d1                            
  01d1a  d243                  add.w    d3,d1                              
  01d1c  0c410012              cmpi.w   #$12,d1                            
  01d20  6e42                  bgt.s    L1d64                              
  01d22  3039ffff883e          move.w   g_77c2,d0                          
  01d28  307003b0ffff8a2c      movea.w  (-$75d4,za0,d0.w*2),a0             
  01d30  2208                  move.l   a0,d1                              
  01d32  83fc0015              divs.w   #$15,d1                            
  01d36  d243                  add.w    d3,d1                              
  01d38  c3fc0012              muls.w   #$12,d1                            
  01d3c  307003b0ffff8ad4      movea.w  (-$752c,za0,d0.w*2),a0             
  01d44  2408                  move.l   a0,d2                              
  01d46  85fc0015              divs.w   #$15,d2                            
  01d4a  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  01d50  3042                  movea.w  d2,a0                              
  01d52  d1c8                  adda.l   a0,a0                              
  01d54  4a701800              tst.w    $0(a0,d1.l)                        
  01d58  660a                  bne.s    L1d64                              
  01d5a  5246                  addq.w   #1,d6                              
  01d5c  5243                  addq.w   #1,d3                              
L1d5e:
  01d5e  0c430003              cmpi.w   #3,d3                              
  01d62  6fa2                  ble.s    L1d06                              
L1d64:
  01d64  3f06                  move.w   d6,-(a7)                           
  01d66  4ead0242              jsr      f2_79a8                            
  01d6a  3239ffff883e          move.w   g_77c2,d1                          
  01d70  5340                  subq.w   #1,d0                              
  01d72  c1fc0015              muls.w   #$15,d0                            
  01d76  d07013b0ffff8a2c      add.w    (-$75d4,za0,d1.w*2),d0             
  01d7e  06400015              addi.w   #$15,d0                            
  01d82  318013b0ffff8b52      move.w   d0,(-$74ae,za0,d1.w*2)             
  01d8a  3a04                  move.w   d4,d5                              
  01d8c  3e81                  move.w   d1,(a7)                            
  01d8e  4eba028a              jsr      f4_201a                            
  01d92  3eb9ffff883e          move.w   g_77c2,(a7)                        
  01d98  4eba03f0              jsr      f4_218a                            
  01d9c  548f                  addq.l   #2,a7                              
  01d9e  6000fb7c              bra.w    L191c                              
L1da2:
  01da2  5244                  addq.w   #1,d4                              
L1da4:
  01da4  b879ffff883e          cmp.w    g_77c2,d4                          
  01daa  6f00fb76              ble.w    L1922                              
L1dae:
  01dae  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  01db2  4e5e                  unlk     a6                                 
  01db4  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_1db6   [jump table #121]
;----------------------------------------------------------------------
f4_1db6:
  01db6  4e56fffe              link     a6,#-2                             
  01dba  2f07                  move.l   d7,-(a7)                           
  01dbc  7e01                  moveq    #1,d7                              
  01dbe  60000190              bra.w    L1f50                              
L1dc2:
  01dc2  0c7000a873b0ffff8b28  cmpi.w   #$a8,(-$74d8,za0,d7.w*2)           
  01dcc  6e0000ba              bgt.w    L1e88                              
  01dd0  4a7073b0ffff8a80      tst.w    (-$7580,za0,d7.w*2)                
  01dd8  670000ae              beq.w    L1e88                              
  01ddc  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  01de4  2008                  move.l   a0,d0                              
  01de6  81fc0015              divs.w   #$15,d0                            
  01dea  c1fc0012              muls.w   #$12,d0                            
  01dee  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  01df6  2208                  move.l   a0,d1                              
  01df8  83fc0015              divs.w   #$15,d1                            
  01dfc  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01e02  3041                  movea.w  d1,a0                              
  01e04  d1c8                  adda.l   a0,a0                              
  01e06  4a700800              tst.w    $0(a0,d0.l)                        
  01e0a  677c                  beq.s    L1e88                              
  01e0c  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  01e14  2008                  move.l   a0,d0                              
  01e16  81fc0015              divs.w   #$15,d0                            
  01e1a  c1fc0012              muls.w   #$12,d0                            
  01e1e  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  01e26  2208                  move.l   a0,d1                              
  01e28  83fc0015              divs.w   #$15,d1                            
  01e2c  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01e32  3041                  movea.w  d1,a0                              
  01e34  d1c8                  adda.l   a0,a0                              
  01e36  30300800              move.w   $0(a0,d0.l),d0                     
  01e3a  303003b0ffff8a2c      move.w   (-$75d4,za0,d0.w*2),d0             
  01e42  b07073b0ffff8a80      cmp.w    (-$7580,za0,d7.w*2),d0             
  01e4a  673c                  beq.s    L1e88                              
  01e4c  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  01e54  2008                  move.l   a0,d0                              
  01e56  81fc0015              divs.w   #$15,d0                            
  01e5a  c1fc0012              muls.w   #$12,d0                            
  01e5e  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  01e66  2208                  move.l   a0,d1                              
  01e68  83fc0015              divs.w   #$15,d1                            
  01e6c  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01e72  3041                  movea.w  d1,a0                              
  01e74  d1c8                  adda.l   a0,a0                              
  01e76  30300800              move.w   $0(a0,d0.l),d0                     
  01e7a  31b073b0ffff8a8003b0  move.w   (-$7580,za0,d7.w*2),(-$75d4,za0,d0.w*2)
L1e88:
  01e88  0c70017a73b0ffff8b52  cmpi.w   #$17a,(-$74ae,za0,d7.w*2)          
  01e92  6e0000ba              bgt.w    L1f4e                              
  01e96  4a7073b0ffff8a56      tst.w    (-$75aa,za0,d7.w*2)                
  01e9e  670000ae              beq.w    L1f4e                              
  01ea2  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  01eaa  2008                  move.l   a0,d0                              
  01eac  81fc0015              divs.w   #$15,d0                            
  01eb0  c1fc0012              muls.w   #$12,d0                            
  01eb4  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  01ebc  2208                  move.l   a0,d1                              
  01ebe  83fc0015              divs.w   #$15,d1                            
  01ec2  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01ec8  3041                  movea.w  d1,a0                              
  01eca  d1c8                  adda.l   a0,a0                              
  01ecc  4a700800              tst.w    $0(a0,d0.l)                        
  01ed0  677c                  beq.s    L1f4e                              
  01ed2  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  01eda  2008                  move.l   a0,d0                              
  01edc  81fc0015              divs.w   #$15,d0                            
  01ee0  c1fc0012              muls.w   #$12,d0                            
  01ee4  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  01eec  2208                  move.l   a0,d1                              
  01eee  83fc0015              divs.w   #$15,d1                            
  01ef2  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01ef8  3041                  movea.w  d1,a0                              
  01efa  d1c8                  adda.l   a0,a0                              
  01efc  30300800              move.w   $0(a0,d0.l),d0                     
  01f00  303003b0ffff8aaa      move.w   (-$7556,za0,d0.w*2),d0             
  01f08  b07073b0ffff8a56      cmp.w    (-$75aa,za0,d7.w*2),d0             
  01f10  673c                  beq.s    L1f4e                              
  01f12  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  01f1a  2008                  move.l   a0,d0                              
  01f1c  81fc0015              divs.w   #$15,d0                            
  01f20  c1fc0012              muls.w   #$12,d0                            
  01f24  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  01f2c  2208                  move.l   a0,d1                              
  01f2e  83fc0015              divs.w   #$15,d1                            
  01f32  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01f38  3041                  movea.w  d1,a0                              
  01f3a  d1c8                  adda.l   a0,a0                              
  01f3c  30300800              move.w   $0(a0,d0.l),d0                     
  01f40  31b073b0ffff8a5603b0  move.w   (-$75aa,za0,d7.w*2),(-$7556,za0,d0.w*2)
L1f4e:
  01f4e  5247                  addq.w   #1,d7                              
L1f50:
  01f50  be79ffff883e          cmp.w    g_77c2,d7                          
  01f56  6f00fe6a              ble.w    L1dc2                              
  01f5a  7e01                  moveq    #1,d7                              
  01f5c  600000ac              bra.w    L200a                              
L1f60:
  01f60  0c70017a73b0ffff8b52  cmpi.w   #$17a,(-$74ae,za0,d7.w*2)          
  01f6a  6e48                  bgt.s    L1fb4                              
  01f6c  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  01f74  2008                  move.l   a0,d0                              
  01f76  81fc0015              divs.w   #$15,d0                            
  01f7a  c1fc0012              muls.w   #$12,d0                            
  01f7e  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  01f86  2208                  move.l   a0,d1                              
  01f88  83fc0015              divs.w   #$15,d1                            
  01f8c  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01f92  3041                  movea.w  d1,a0                              
  01f94  d1c8                  adda.l   a0,a0                              
  01f96  30300800              move.w   $0(a0,d0.l),d0                     
  01f9a  303003b0ffff8aaa      move.w   (-$7556,za0,d0.w*2),d0             
  01fa2  b07073b0ffff8a56      cmp.w    (-$75aa,za0,d7.w*2),d0             
  01faa  6708                  beq.s    L1fb4                              
  01fac  427073b0ffff8a56      clr.w    (-$75aa,za0,d7.w*2)                
L1fb4:
  01fb4  0c7000a873b0ffff8b28  cmpi.w   #$a8,(-$74d8,za0,d7.w*2)           
  01fbe  6e48                  bgt.s    L2008                              
  01fc0  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  01fc8  2008                  move.l   a0,d0                              
  01fca  81fc0015              divs.w   #$15,d0                            
  01fce  c1fc0012              muls.w   #$12,d0                            
  01fd2  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  01fda  2208                  move.l   a0,d1                              
  01fdc  83fc0015              divs.w   #$15,d1                            
  01fe0  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01fe6  3041                  movea.w  d1,a0                              
  01fe8  d1c8                  adda.l   a0,a0                              
  01fea  30300800              move.w   $0(a0,d0.l),d0                     
  01fee  303003b0ffff8a2c      move.w   (-$75d4,za0,d0.w*2),d0             
  01ff6  b07073b0ffff8a80      cmp.w    (-$7580,za0,d7.w*2),d0             
  01ffe  6708                  beq.s    L2008                              
  02000  427073b0ffff8a80      clr.w    (-$7580,za0,d7.w*2)                
L2008:
  02008  5247                  addq.w   #1,d7                              
L200a:
  0200a  be79ffff883e          cmp.w    g_77c2,d7                          
  02010  6f00ff4e              ble.w    L1f60                              
  02014  2e1f                  move.l   (a7)+,d7                           
  02016  4e5e                  unlk     a6                                 
  02018  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_201a
;----------------------------------------------------------------------
f4_201a:
  0201a  4e56fffc              link     a6,#-4                             
  0201e  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  02022  3e2e0008              move.w   $8(a6),d7                          
  02026  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  0202e  2c08                  move.l   a0,d6                              
  02030  8dfc0015              divs.w   #$15,d6                            
  02034  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  0203c  2a08                  move.l   a0,d5                              
  0203e  8bfc0015              divs.w   #$15,d5                            
  02042  5345                  subq.w   #1,d5                              
  02044  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  0204c  2808                  move.l   a0,d4                              
  0204e  89fc0015              divs.w   #$15,d4                            
  02052  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  0205a  2008                  move.l   a0,d0                              
  0205c  81fc0015              divs.w   #$15,d0                            
  02060  5340                  subq.w   #1,d0                              
  02062  3d40fffc              move.w   d0,-$4(a6)                         
L2066:
  02066  3606                  move.w   d6,d3                              
  02068  6030                  bra.s    L209a                              
L206a:
  0206a  7012                  moveq    #18,d0                             
  0206c  c1c3                  muls.w   d3,d0                              
  0206e  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02074  3044                  movea.w  d4,a0                              
  02076  d1c8                  adda.l   a0,a0                              
  02078  4a700800              tst.w    $0(a0,d0.l)                        
  0207c  671a                  beq.s    L2098                              
  0207e  0670001573b0ffff8ad4  addi.w   #$15,(-$752c,za0,d7.w*2)           
  02088  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  02090  2808                  move.l   a0,d4                              
  02092  89fc0015              divs.w   #$15,d4                            
  02096  60ce                  bra.s    L2066                              
L2098:
  02098  5243                  addq.w   #1,d3                              
L209a:
  0209a  ba43                  cmp.w    d3,d5                              
  0209c  6ccc                  bge.s    L206a                              
L209e:
  0209e  3606                  move.w   d6,d3                              
  020a0  6036                  bra.s    L20d8                              
L20a2:
  020a2  7012                  moveq    #18,d0                             
  020a4  c1c3                  muls.w   d3,d0                              
  020a6  2040                  movea.l  d0,a0                              
  020a8  302efffc              move.w   -$4(a6),d0                         
  020ac  4a700330ffff88b2      tst.w    (-$774e,a0,d0.w*2)                 
  020b4  6720                  beq.s    L20d6                              
  020b6  0470001573b0ffff8b28  subi.w   #$15,(-$74d8,za0,d7.w*2)           
  020c0  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  020c8  2008                  move.l   a0,d0                              
  020ca  81fc0015              divs.w   #$15,d0                            
  020ce  5340                  subq.w   #1,d0                              
  020d0  3d40fffc              move.w   d0,-$4(a6)                         
  020d4  60c8                  bra.s    L209e                              
L20d6:
  020d6  5243                  addq.w   #1,d3                              
L20d8:
  020d8  ba43                  cmp.w    d3,d5                              
  020da  6cc6                  bge.s    L20a2                              
L20dc:
  020dc  3604                  move.w   d4,d3                              
  020de  6030                  bra.s    L2110                              
L20e0:
  020e0  7012                  moveq    #18,d0                             
  020e2  c1c6                  muls.w   d6,d0                              
  020e4  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  020ea  3043                  movea.w  d3,a0                              
  020ec  d1c8                  adda.l   a0,a0                              
  020ee  4a700800              tst.w    $0(a0,d0.l)                        
  020f2  671a                  beq.s    L210e                              
  020f4  0670001573b0ffff8afe  addi.w   #$15,(-$7502,za0,d7.w*2)           
  020fe  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  02106  2c08                  move.l   a0,d6                              
  02108  8dfc0015              divs.w   #$15,d6                            
  0210c  60ce                  bra.s    L20dc                              
L210e:
  0210e  5243                  addq.w   #1,d3                              
L2110:
  02110  b66efffc              cmp.w    -$4(a6),d3                         
  02114  6fca                  ble.s    L20e0                              
L2116:
  02116  3604                  move.w   d4,d3                              
  02118  6032                  bra.s    L214c                              
L211a:
  0211a  7012                  moveq    #18,d0                             
  0211c  c1c5                  muls.w   d5,d0                              
  0211e  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02124  3043                  movea.w  d3,a0                              
  02126  d1c8                  adda.l   a0,a0                              
  02128  4a700800              tst.w    $0(a0,d0.l)                        
  0212c  671c                  beq.s    L214a                              
  0212e  0470001573b0ffff8b52  subi.w   #$15,(-$74ae,za0,d7.w*2)           
  02138  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  02140  2a08                  move.l   a0,d5                              
  02142  8bfc0015              divs.w   #$15,d5                            
  02146  5345                  subq.w   #1,d5                              
  02148  60cc                  bra.s    L2116                              
L214a:
  0214a  5243                  addq.w   #1,d3                              
L214c:
  0214c  b66efffc              cmp.w    -$4(a6),d3                         
  02150  6fc8                  ble.s    L211a                              
  02152  3606                  move.w   d6,d3                              
  02154  6028                  bra.s    L217e                              
L2156:
  02156  3d44fffe              move.w   d4,-$2(a6)                         
  0215a  6016                  bra.s    L2172                              
L215c:
  0215c  7012                  moveq    #18,d0                             
  0215e  c1c3                  muls.w   d3,d0                              
  02160  2040                  movea.l  d0,a0                              
  02162  302efffe              move.w   -$2(a6),d0                         
  02166  31870330ffff88b2      move.w   d7,(-$774e,a0,d0.w*2)              
  0216e  526efffe              addq.w   #1,-$2(a6)                         
L2172:
  02172  302efffe              move.w   -$2(a6),d0                         
  02176  b06efffc              cmp.w    -$4(a6),d0                         
  0217a  6fe0                  ble.s    L215c                              
  0217c  5243                  addq.w   #1,d3                              
L217e:
  0217e  ba43                  cmp.w    d3,d5                              
  02180  6cd4                  bge.s    L2156                              
  02182  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  02186  4e5e                  unlk     a6                                 
  02188  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_218a
;----------------------------------------------------------------------
f4_218a:
  0218a  4e56fffc              link     a6,#-4                             
  0218e  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  02192  3e2e0008              move.w   $8(a6),d7                          
  02196  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  0219e  2c08                  move.l   a0,d6                              
  021a0  8dfc0015              divs.w   #$15,d6                            
  021a4  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  021ac  2a08                  move.l   a0,d5                              
  021ae  8bfc0015              divs.w   #$15,d5                            
  021b2  5345                  subq.w   #1,d5                              
  021b4  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  021bc  2808                  move.l   a0,d4                              
  021be  89fc0015              divs.w   #$15,d4                            
  021c2  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  021ca  2008                  move.l   a0,d0                              
  021cc  81fc0015              divs.w   #$15,d0                            
  021d0  5340                  subq.w   #1,d0                              
  021d2  3d40fffc              move.w   d0,-$4(a6)                         
  021d6  0c7000a873b0ffff8b28  cmpi.w   #$a8,(-$74d8,za0,d7.w*2)           
  021e0  6e00013a              bgt.w    L231c                              
  021e4  3605                  move.w   d5,d3                              
  021e6  9646                  sub.w    d6,d3                              
  021e8  3f03                  move.w   d3,-(a7)                           
  021ea  4ead0242              jsr      f2_79a8                            
  021ee  5340                  subq.w   #1,d0                              
  021f0  c1fc0015              muls.w   #$15,d0                            
  021f4  d07073b0ffff8afe      add.w    (-$7502,za0,d7.w*2),d0             
  021fc  318073b0ffff8a80      move.w   d0,(-$7580,za0,d7.w*2)             
  02204  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  0220c  2008                  move.l   a0,d0                              
  0220e  81fc0015              divs.w   #$15,d0                            
  02212  c1fc0012              muls.w   #$12,d0                            
  02216  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  0221e  2208                  move.l   a0,d1                              
  02220  83fc0015              divs.w   #$15,d1                            
  02224  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0222a  3041                  movea.w  d1,a0                              
  0222c  d1c8                  adda.l   a0,a0                              
  0222e  4a700800              tst.w    $0(a0,d0.l)                        
  02232  548f                  addq.l   #2,a7                              
  02234  6776                  beq.s    L22ac                              
  02236  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  0223e  2008                  move.l   a0,d0                              
  02240  81fc0015              divs.w   #$15,d0                            
  02244  c1fc0012              muls.w   #$12,d0                            
  02248  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  02250  2208                  move.l   a0,d1                              
  02252  83fc0015              divs.w   #$15,d1                            
  02256  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0225c  3041                  movea.w  d1,a0                              
  0225e  d1c8                  adda.l   a0,a0                              
  02260  30300800              move.w   $0(a0,d0.l),d0                     
  02264  4a7003b0ffff8a2c      tst.w    (-$75d4,za0,d0.w*2)                
  0226c  663e                  bne.s    L22ac                              
  0226e  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  02276  2008                  move.l   a0,d0                              
  02278  81fc0015              divs.w   #$15,d0                            
  0227c  c1fc0012              muls.w   #$12,d0                            
  02280  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  02288  2208                  move.l   a0,d1                              
  0228a  83fc0015              divs.w   #$15,d1                            
  0228e  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02294  3041                  movea.w  d1,a0                              
  02296  d1c8                  adda.l   a0,a0                              
  02298  30300800              move.w   $0(a0,d0.l),d0                     
  0229c  31b073b0ffff8a8003b0  move.w   (-$7580,za0,d7.w*2),(-$75d4,za0,d0.w*2)
  022aa  6070                  bra.s    L231c                              
L22ac:
  022ac  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  022b4  2008                  move.l   a0,d0                              
  022b6  81fc0015              divs.w   #$15,d0                            
  022ba  c1fc0012              muls.w   #$12,d0                            
  022be  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  022c6  2208                  move.l   a0,d1                              
  022c8  83fc0015              divs.w   #$15,d1                            
  022cc  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  022d2  3041                  movea.w  d1,a0                              
  022d4  d1c8                  adda.l   a0,a0                              
  022d6  30300800              move.w   $0(a0,d0.l),d0                     
  022da  4a7003b0ffff8a2c      tst.w    (-$75d4,za0,d0.w*2)                
  022e2  6738                  beq.s    L231c                              
  022e4  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  022ec  2008                  move.l   a0,d0                              
  022ee  81fc0015              divs.w   #$15,d0                            
  022f2  c1fc0012              muls.w   #$12,d0                            
  022f6  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  022fe  2208                  move.l   a0,d1                              
  02300  83fc0015              divs.w   #$15,d1                            
  02304  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0230a  3041                  movea.w  d1,a0                              
  0230c  d1c8                  adda.l   a0,a0                              
  0230e  4a700800              tst.w    $0(a0,d0.l)                        
  02312  6708                  beq.s    L231c                              
  02314  427073b0ffff8a80      clr.w    (-$7580,za0,d7.w*2)                
L231c:
  0231c  0c70017a73b0ffff8b52  cmpi.w   #$17a,(-$74ae,za0,d7.w*2)          
  02326  6e00013c              bgt.w    L2464                              
  0232a  362efffc              move.w   -$4(a6),d3                         
  0232e  9644                  sub.w    d4,d3                              
  02330  3f03                  move.w   d3,-(a7)                           
  02332  4ead0242              jsr      f2_79a8                            
  02336  5340                  subq.w   #1,d0                              
  02338  c1fc0015              muls.w   #$15,d0                            
  0233c  d07073b0ffff8ad4      add.w    (-$752c,za0,d7.w*2),d0             
  02344  318073b0ffff8a56      move.w   d0,(-$75aa,za0,d7.w*2)             
  0234c  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  02354  2008                  move.l   a0,d0                              
  02356  81fc0015              divs.w   #$15,d0                            
  0235a  c1fc0012              muls.w   #$12,d0                            
  0235e  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  02366  2208                  move.l   a0,d1                              
  02368  83fc0015              divs.w   #$15,d1                            
  0236c  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02372  3041                  movea.w  d1,a0                              
  02374  d1c8                  adda.l   a0,a0                              
  02376  4a700800              tst.w    $0(a0,d0.l)                        
  0237a  548f                  addq.l   #2,a7                              
  0237c  6776                  beq.s    L23f4                              
  0237e  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  02386  2008                  move.l   a0,d0                              
  02388  81fc0015              divs.w   #$15,d0                            
  0238c  c1fc0012              muls.w   #$12,d0                            
  02390  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  02398  2208                  move.l   a0,d1                              
  0239a  83fc0015              divs.w   #$15,d1                            
  0239e  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  023a4  3041                  movea.w  d1,a0                              
  023a6  d1c8                  adda.l   a0,a0                              
  023a8  30300800              move.w   $0(a0,d0.l),d0                     
  023ac  4a7003b0ffff8aaa      tst.w    (-$7556,za0,d0.w*2)                
  023b4  663e                  bne.s    L23f4                              
  023b6  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  023be  2008                  move.l   a0,d0                              
  023c0  81fc0015              divs.w   #$15,d0                            
  023c4  c1fc0012              muls.w   #$12,d0                            
  023c8  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  023d0  2208                  move.l   a0,d1                              
  023d2  83fc0015              divs.w   #$15,d1                            
  023d6  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  023dc  3041                  movea.w  d1,a0                              
  023de  d1c8                  adda.l   a0,a0                              
  023e0  30300800              move.w   $0(a0,d0.l),d0                     
  023e4  31b073b0ffff8a5603b0  move.w   (-$75aa,za0,d7.w*2),(-$7556,za0,d0.w*2)
  023f2  6070                  bra.s    L2464                              
L23f4:
  023f4  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  023fc  2008                  move.l   a0,d0                              
  023fe  81fc0015              divs.w   #$15,d0                            
  02402  c1fc0012              muls.w   #$12,d0                            
  02406  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  0240e  2208                  move.l   a0,d1                              
  02410  83fc0015              divs.w   #$15,d1                            
  02414  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0241a  3041                  movea.w  d1,a0                              
  0241c  d1c8                  adda.l   a0,a0                              
  0241e  4a700800              tst.w    $0(a0,d0.l)                        
  02422  6740                  beq.s    L2464                              
  02424  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  0242c  2008                  move.l   a0,d0                              
  0242e  81fc0015              divs.w   #$15,d0                            
  02432  c1fc0012              muls.w   #$12,d0                            
  02436  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  0243e  2208                  move.l   a0,d1                              
  02440  83fc0015              divs.w   #$15,d1                            
  02444  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0244a  3041                  movea.w  d1,a0                              
  0244c  d1c8                  adda.l   a0,a0                              
  0244e  30300800              move.w   $0(a0,d0.l),d0                     
  02452  4a7003b0ffff8aaa      tst.w    (-$7556,za0,d0.w*2)                
  0245a  6708                  beq.s    L2464                              
  0245c  427073b0ffff8a56      clr.w    (-$75aa,za0,d7.w*2)                
L2464:
  02464  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  02468  4e5e                  unlk     a6                                 
  0246a  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_246c
;----------------------------------------------------------------------
f4_246c:
  0246c  4e560000              link     a6,#0                              
L2470:
  02470  4227                  clr.b    -(a7)                              
  02472  a974                  _Button                                     ; $a974
  02474  4a1f                  tst.b    (a7)+                              
  02476  67f8                  beq.s    L2470                              
L2478:
  02478  4227                  clr.b    -(a7)                              
  0247a  a974                  _Button                                     ; $a974
  0247c  4a1f                  tst.b    (a7)+                              
  0247e  66f8                  bne.s    L2478                              
  02480  4e5e                  unlk     a6                                 
  02482  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_2484   [jump table #122]
;----------------------------------------------------------------------
f4_2484:
  02484  4e56fd46              link     a6,#-698                           
  02488  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  0248c  3e2e0008              move.w   $8(a6),d7                          
  02490  1d7c0001fffb          move.b   #1,-$5(a6)                         
  02496  426efff8              clr.w    -$8(a6)                            
  0249a  426efffc              clr.w    -$4(a6)                            
  0249e  3807                  move.w   d7,d4                              
  024a0  7601                  moveq    #1,d3                              
  024a2  600e                  bra.s    L24b2                              
L24a4:
  024a4  be7033b0ffff8e0c      cmp.w    (-$71f4,za0,d3.w*2),d7             
  024ac  6602                  bne.s    L24b0                              
  024ae  3a03                  move.w   d3,d5                              
L24b0:
  024b0  5243                  addq.w   #1,d3                              
L24b2:
  024b2  b679ffff97e0          cmp.w    g_6820,d3                          
  024b8  6fea                  ble.s    L24a4                              
  024ba  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  024c2  4a7003b0ffff6f52      tst.w    (-$90ae,za0,d0.w*2)                
  024ca  67001034              beq.w    L3500                              
  024ce  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  024d6  363003b0ffff6f52      move.w   (-$90ae,za0,d0.w*2),d3             
  024de  0c43002a              cmpi.w   #$2a,d3                            
  024e2  6200100e              bhi.w    L34f2                              
  024e6  43fa1020              lea      L3508(pc),a1                       
  024ea  d2f13200              adda.w   $0(a1,d3.w*2),a1                   
  024ee  4ed1                  jmp      (a1)                               
  024f0  7c00                  moveq    #0,d6                              
  024f2  6010                  bra.s    L2504                              
L24f4:
  024f4  3f3c0004              move.w   #4,-(a7)                           
  024f8  4ead0242              jsr      f2_79a8                            
  024fc  d16efff8              add.w    d0,-$8(a6)                         
  02500  548f                  addq.l   #2,a7                              
  02502  5246                  addq.w   #1,d6                              
L2504:
  02504  bc79ffff8894          cmp.w    g_776c,d6                          
  0250a  6de8                  blt.s    L24f4                              
  0250c  302efff8              move.w   -$8(a6),d0                         
  02510  9179ffff8370          sub.w    d0,g_7c90                          
  02516  3f07                  move.w   d7,-(a7)                           
  02518  3f05                  move.w   d5,-(a7)                           
  0251a  4eba116c              jsr      f4_3688                            
  0251e  486efef8              pea      -$108(a6)                          
  02522  3f3c0096              move.w   #$96,-(a7)                         
  02526  3f03                  move.w   d3,-(a7)                           
  02528  4ebaf012              jsr      f4_153c                            
  0252c  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02534  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  0253c  486efef8              pea      -$108(a6)                          
  02540  2f3c000003f6          move.l   STR_03f6,-(a7)                     ; "?"
  02546  2f3c000003f8          move.l   STR_03f8,-(a7)                     ; "?"
  0254c  a98b                  _ParamText                                  ; $a98b
  0254e  4ead01da              jsr      f2_6c08                            
  02552  60000f9e              bra.w    L34f2                              
  02556  3f07                  move.w   d7,-(a7)                           
  02558  4ead02e2              jsr      f3_2f86                            
  0255c  486efef8              pea      -$108(a6)                          
  02560  3f3c0096              move.w   #$96,-(a7)                         
  02564  3f03                  move.w   d3,-(a7)                           
  02566  4ebaefd4              jsr      f4_153c                            
  0256a  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02572  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  0257a  486efef8              pea      -$108(a6)                          
  0257e  2f3c000003fa          move.l   STR_03fa,-(a7)                     ; "?"
  02584  2f3c000003fc          move.l   STR_03fc,-(a7)                     ; "?"
  0258a  a98b                  _ParamText                                  ; $a98b
  0258c  3e87                  move.w   d7,(a7)                            
  0258e  4ead02e2              jsr      f3_2f86                            
  02592  4ead01da              jsr      f2_6c08                            
  02596  548f                  addq.l   #2,a7                              
  02598  60000f58              bra.w    L34f2                              
  0259c  4a39ffff9851          tst.b    g_67af                             
  025a2  670e                  beq.s    L25b2                              
  025a4  3f03                  move.w   d3,-(a7)                           
  025a6  3f04                  move.w   d4,-(a7)                           
  025a8  4ead05f2              jsr      f5_0000                            
  025ac  588f                  addq.l   #4,a7                              
  025ae  60000f42              bra.w    L34f2                              
L25b2:
  025b2  7c00                  moveq    #0,d6                              
  025b4  6010                  bra.s    L25c6                              
L25b6:
  025b6  3f3c0003              move.w   #3,-(a7)                           
  025ba  4ead0242              jsr      f2_79a8                            
  025be  d16efff8              add.w    d0,-$8(a6)                         
  025c2  548f                  addq.l   #2,a7                              
  025c4  5246                  addq.w   #1,d6                              
L25c6:
  025c6  bc79ffff8894          cmp.w    g_776c,d6                          
  025cc  6de8                  blt.s    L25b6                              
  025ce  3f07                  move.w   d7,-(a7)                           
  025d0  3f05                  move.w   d5,-(a7)                           
  025d2  4eba10b4              jsr      f4_3688                            
  025d6  302efff8              move.w   -$8(a6),d0                         
  025da  9179ffff8370          sub.w    d0,g_7c90                          
  025e0  486efef8              pea      -$108(a6)                          
  025e4  3f3c0096              move.w   #$96,-(a7)                         
  025e8  3f03                  move.w   d3,-(a7)                           
  025ea  4ebaef50              jsr      f4_153c                            
  025ee  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  025f6  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  025fe  486efef8              pea      -$108(a6)                          
  02602  2f3c000003fe          move.l   STR_03fe,-(a7)                     ; "?"
  02608  2f3c00000400          move.l   STR_0400,-(a7)                     ; "?"
  0260e  a98b                  _ParamText                                  ; $a98b
  02610  4ead01da              jsr      f2_6c08                            
  02614  60000edc              bra.w    L34f2                              
  02618  5279ffff83ae          addq.w   #1,g_7c52                          
  0261e  486efef8              pea      -$108(a6)                          
  02622  3f3c0096              move.w   #$96,-(a7)                         
  02626  3f03                  move.w   d3,-(a7)                           
  02628  4ebaef12              jsr      f4_153c                            
  0262c  3f07                  move.w   d7,-(a7)                           
  0262e  3f05                  move.w   d5,-(a7)                           
  02630  4eba1056              jsr      f4_3688                            
  02634  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  0263c  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02644  486efef8              pea      -$108(a6)                          
  02648  2f3c00000402          move.l   STR_0402,-(a7)                     ; "?"
  0264e  2f3c00000404          move.l   STR_0404,-(a7)                     ; "?"
  02654  a98b                  _ParamText                                  ; $a98b
  02656  0c790002ffff83ae      cmpi.w   #2,g_7c52                          
  0265e  6f000e92              ble.w    L34f2                              
  02662  486d0432              pea      f4_45a2                            
  02666  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  0266c  3f3c000d              move.w   #$d,-(a7)                          
  02670  2f3cffff8378          move.l   #$ffff8378,-(a7)                   
  02676  4ead014a              jsr      f2_46ee                            
  0267a  4279ffff83ae          clr.w    g_7c52                             
  02680  4fef000e              lea      $e(a7),a7                          
  02684  60000e6c              bra.w    L34f2                              
  02688  4a39ffff8df4          tst.b    g_720c                             
  0268e  6708                  beq.s    L2698                              
  02690  422efffb              clr.b    -$5(a6)                            
  02694  60000e5c              bra.w    L34f2                              
L2698:
  02698  13fc0001ffff8dfa      move.b   #1,g_7206                          
  026a0  486efef8              pea      -$108(a6)                          
  026a4  3f3c0096              move.w   #$96,-(a7)                         
  026a8  3f03                  move.w   d3,-(a7)                           
  026aa  4ebaee90              jsr      f4_153c                            
  026ae  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  026b6  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  026be  486efef8              pea      -$108(a6)                          
  026c2  2f3c00000406          move.l   STR_0406,-(a7)                     ; "?"
  026c8  2f3c00000408          move.l   STR_0408,-(a7)                     ; "?"
  026ce  a98b                  _ParamText                                  ; $a98b
  026d0  60000e20              bra.w    L34f2                              
  026d4  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  026dc  6608                  bne.s    L26e6                              
  026de  422efffb              clr.b    -$5(a6)                            
  026e2  60000e0e              bra.w    L34f2                              
L26e6:
  026e6  3f03                  move.w   d3,-(a7)                           
  026e8  3f04                  move.w   d4,-(a7)                           
  026ea  2f3c00010000          move.l   #$10000,-(a7)                      
  026f0  4ead068a              jsr      f6_3356                            
  026f4  508f                  addq.l   #8,a7                              
  026f6  60000dfa              bra.w    L34f2                              
  026fa  5479ffff83ae          addq.w   #2,g_7c52                          
  02700  3f07                  move.w   d7,-(a7)                           
  02702  3f05                  move.w   d5,-(a7)                           
  02704  4eba0f82              jsr      f4_3688                            
  02708  486efef8              pea      -$108(a6)                          
  0270c  3f3c0096              move.w   #$96,-(a7)                         
  02710  3f03                  move.w   d3,-(a7)                           
  02712  4ebaee28              jsr      f4_153c                            
  02716  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  0271e  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02726  486efef8              pea      -$108(a6)                          
  0272a  2f3c0000040a          move.l   STR_040a,-(a7)                     ; "?"
  02730  2f3c0000040c          move.l   STR_040c,-(a7)                     ; "?"
  02736  a98b                  _ParamText                                  ; $a98b
  02738  0c790002ffff83ae      cmpi.w   #2,g_7c52                          
  02740  6f000db0              ble.w    L34f2                              
  02744  486d0432              pea      f4_45a2                            
  02748  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  0274e  3f3c000d              move.w   #$d,-(a7)                          
  02752  2f3cffff8378          move.l   #$ffff8378,-(a7)                   
  02758  4ead014a              jsr      f2_46ee                            
  0275c  3079ffff83ae          movea.w  g_7c52,a0                          
  02762  2008                  move.l   a0,d0                              
  02764  81fc0003              divs.w   #3,d0                              
  02768  4840                  swap     d0                                 
  0276a  33c0ffff83ae          move.w   d0,g_7c52                          
  02770  4fef000e              lea      $e(a7),a7                          
  02774  60000d7c              bra.w    L34f2                              
  02778  3f3c0005              move.w   #5,-(a7)                           
  0277c  4ead0242              jsr      f2_79a8                            
  02780  5a40                  addq.w   #5,d0                              
  02782  3d40fff8              move.w   d0,-$8(a6)                         
  02786  9179ffff8370          sub.w    d0,g_7c90                          
  0278c  3e87                  move.w   d7,(a7)                            
  0278e  3f05                  move.w   d5,-(a7)                           
  02790  4eba0ef6              jsr      f4_3688                            
  02794  486efef8              pea      -$108(a6)                          
  02798  3f3c0096              move.w   #$96,-(a7)                         
  0279c  3f03                  move.w   d3,-(a7)                           
  0279e  4ebaed9c              jsr      f4_153c                            
  027a2  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  027aa  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  027b2  486efef8              pea      -$108(a6)                          
  027b6  2f3c0000040e          move.l   STR_040e,-(a7)                     ; "?"
  027bc  2f3c00000410          move.l   STR_0410,-(a7)                     ; "?"
  027c2  a98b                  _ParamText                                  ; $a98b
  027c4  4ead01da              jsr      f2_6c08                            
  027c8  60000d28              bra.w    L34f2                              
  027cc  3f07                  move.w   d7,-(a7)                           
  027ce  3f05                  move.w   d5,-(a7)                           
  027d0  4eba0eb6              jsr      f4_3688                            
  027d4  486efef8              pea      -$108(a6)                          
  027d8  3f3c0096              move.w   #$96,-(a7)                         
  027dc  3f03                  move.w   d3,-(a7)                           
  027de  4ebaed5c              jsr      f4_153c                            
  027e2  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  027ea  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  027f2  486efef8              pea      -$108(a6)                          
  027f6  2f3c00000412          move.l   STR_0412,-(a7)                     ; "?"
  027fc  2f3c00000414          move.l   STR_0414,-(a7)                     ; "?"
  02802  a98b                  _ParamText                                  ; $a98b
  02804  3f07                  move.w   d7,-(a7)                           
  02806  4ead02e2              jsr      f3_2f86                            
  0280a  3e87                  move.w   d7,(a7)                            
  0280c  4ead02e2              jsr      f3_2f86                            
  02810  4ead01da              jsr      f2_6c08                            
  02814  548f                  addq.l   #2,a7                              
  02816  60000cda              bra.w    L34f2                              
  0281a  4a39ffff8df4          tst.b    g_720c                             
  02820  6610                  bne.s    L2832                              
  02822  3f3c0064              move.w   #$64,-(a7)                         
  02826  4ead0242              jsr      f2_79a8                            
  0282a  0c40003d              cmpi.w   #$3d,d0                            
  0282e  548f                  addq.l   #2,a7                              
  02830  6c08                  bge.s    L283a                              
L2832:
  02832  422efffb              clr.b    -$5(a6)                            
  02836  60000cba              bra.w    L34f2                              
L283a:
  0283a  4a39ffff8df7          tst.b    g_7209                             
  02840  671e                  beq.s    L2860                              
  02842  3f3c0064              move.w   #$64,-(a7)                         
  02846  4ead0242              jsr      f2_79a8                            
  0284a  0c400032              cmpi.w   #$32,d0                            
  0284e  548f                  addq.l   #2,a7                              
  02850  6f0e                  ble.s    L2860                              
  02852  3f03                  move.w   d3,-(a7)                           
  02854  3f04                  move.w   d4,-(a7)                           
  02856  4ead0382              jsr      f3_77ae                            
  0285a  588f                  addq.l   #4,a7                              
  0285c  60000c94              bra.w    L34f2                              
L2860:
  02860  486efef8              pea      -$108(a6)                          
  02864  3f3c0096              move.w   #$96,-(a7)                         
  02868  3f03                  move.w   d3,-(a7)                           
  0286a  4ebaecd0              jsr      f4_153c                            
  0286e  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02876  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  0287e  486efef8              pea      -$108(a6)                          
  02882  2f3c00000416          move.l   STR_0416,-(a7)                     ; "?"
  02888  2f3c00000418          move.l   STR_0418,-(a7)                     ; "?"
  0288e  a98b                  _ParamText                                  ; $a98b
  02890  3f3c36b0              move.w   #$36b0,-(a7)                       
  02894  4ead030a              jsr      f3_4238                            
  02898  33fcfff6ffff8370      move.w   #$fff6,g_7c90                      
  028a0  4ead01da              jsr      f2_6c08                            
  028a4  4ead0312              jsr      f3_4384                            
  028a8  548f                  addq.l   #2,a7                              
  028aa  60000c46              bra.w    L34f2                              
  028ae  4a39ffff9851          tst.b    g_67af                             
  028b4  670e                  beq.s    L28c4                              
  028b6  3f03                  move.w   d3,-(a7)                           
  028b8  3f04                  move.w   d4,-(a7)                           
  028ba  4ead05f2              jsr      f5_0000                            
  028be  588f                  addq.l   #4,a7                              
  028c0  60000c30              bra.w    L34f2                              
L28c4:
  028c4  3f07                  move.w   d7,-(a7)                           
  028c6  3f05                  move.w   d5,-(a7)                           
  028c8  4eba0dbe              jsr      f4_3688                            
  028cc  3ebc0003              move.w   #3,(a7)                            
  028d0  4ead0242              jsr      f2_79a8                            
  028d4  3d40fff8              move.w   d0,-$8(a6)                         
  028d8  720a                  moveq    #10,d1                             
  028da  2439ffff83a6          move.l   g_7c5a,d2                          
  028e0  4c412802              divs.l   d1,d2                              
  028e4  48c0                  ext.l    d0                                 
  028e6  4c020000              mulu.l   d2,d0                              
  028ea  91b9ffff83a6          sub.l    d0,g_7c5a                          
  028f0  486efef8              pea      -$108(a6)                          
  028f4  3f3c0096              move.w   #$96,-(a7)                         
  028f8  3f03                  move.w   d3,-(a7)                           
  028fa  4ebaec40              jsr      f4_153c                            
  028fe  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02906  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  0290e  486efef8              pea      -$108(a6)                          
  02912  2f3c0000041a          move.l   STR_041a,-(a7)                     ; "?"
  02918  2f3c0000041c          move.l   STR_041c,-(a7)                     ; "?"
  0291e  a98b                  _ParamText                                  ; $a98b
  02920  4ead01ba              jsr      f2_6a8c                            
  02924  60000bcc              bra.w    L34f2                              
  02928  4a39ffff8df7          tst.b    g_7209                             
  0292e  670e                  beq.s    L293e                              
  02930  3f03                  move.w   d3,-(a7)                           
  02932  3f04                  move.w   d4,-(a7)                           
  02934  4ead0382              jsr      f3_77ae                            
  02938  588f                  addq.l   #4,a7                              
  0293a  60000bb6              bra.w    L34f2                              
L293e:
  0293e  3f07                  move.w   d7,-(a7)                           
  02940  3f05                  move.w   d5,-(a7)                           
  02942  4eba0d44              jsr      f4_3688                            
  02946  7004                  moveq    #4,d0                              
  02948  2239ffff8384          move.l   g_7c7c,d1                          
  0294e  4c401801              divs.l   d0,d1                              
  02952  93b9ffff8388          sub.l    d1,g_7c78                          
  02958  3e84                  move.w   d4,(a7)                            
  0295a  3f03                  move.w   d3,-(a7)                           
  0295c  4ead0602              jsr      f6_024e                            
  02960  486efef8              pea      -$108(a6)                          
  02964  3f3c0096              move.w   #$96,-(a7)                         
  02968  3f03                  move.w   d3,-(a7)                           
  0296a  4ebaebd0              jsr      f4_153c                            
  0296e  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02976  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  0297e  486efef8              pea      -$108(a6)                          
  02982  2f3c0000041e          move.l   STR_041e,-(a7)                     ; "?"
  02988  2f3c00000420          move.l   STR_0420,-(a7)                     ; "?"
  0298e  a98b                  _ParamText                                  ; $a98b
  02990  548f                  addq.l   #2,a7                              
  02992  60000b5e              bra.w    L34f2                              
  02996  4a39ffff9851          tst.b    g_67af                             
  0299c  670e                  beq.s    L29ac                              
  0299e  3f03                  move.w   d3,-(a7)                           
  029a0  3f04                  move.w   d4,-(a7)                           
  029a2  4ead05f2              jsr      f5_0000                            
  029a6  588f                  addq.l   #4,a7                              
  029a8  60000b48              bra.w    L34f2                              
L29ac:
  029ac  3f07                  move.w   d7,-(a7)                           
  029ae  3f05                  move.w   d5,-(a7)                           
  029b0  4eba0cd6              jsr      f4_3688                            
  029b4  7c00                  moveq    #0,d6                              
  029b6  588f                  addq.l   #4,a7                              
  029b8  6010                  bra.s    L29ca                              
L29ba:
  029ba  3f3c0003              move.w   #3,-(a7)                           
  029be  4ead0242              jsr      f2_79a8                            
  029c2  d16efff8              add.w    d0,-$8(a6)                         
  029c6  548f                  addq.l   #2,a7                              
  029c8  5246                  addq.w   #1,d6                              
L29ca:
  029ca  bc79ffff8894          cmp.w    g_776c,d6                          
  029d0  6de8                  blt.s    L29ba                              
  029d2  486efef8              pea      -$108(a6)                          
  029d6  3f3c0096              move.w   #$96,-(a7)                         
  029da  3f03                  move.w   d3,-(a7)                           
  029dc  4ebaeb5e              jsr      f4_153c                            
  029e0  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  029e8  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  029f0  486efef8              pea      -$108(a6)                          
  029f4  2f3c00000422          move.l   STR_0422,-(a7)                     ; "?"
  029fa  2f3c00000424          move.l   STR_0424,-(a7)                     ; "?"
  02a00  a98b                  _ParamText                                  ; $a98b
  02a02  566efff8              addq.w   #3,-$8(a6)                         
  02a06  302efff8              move.w   -$8(a6),d0                         
  02a0a  9179ffff8370          sub.w    d0,g_7c90                          
  02a10  4ead01da              jsr      f2_6c08                            
  02a14  60000adc              bra.w    L34f2                              
  02a18  4a39ffff8df7          tst.b    g_7209                             
  02a1e  660a                  bne.s    L2a2a                              
  02a20  0c790001ffff8390      cmpi.w   #1,g_7c70                          
  02a28  660e                  bne.s    L2a38                              
L2a2a:
  02a2a  3f03                  move.w   d3,-(a7)                           
  02a2c  3f04                  move.w   d4,-(a7)                           
  02a2e  4ead0382              jsr      f3_77ae                            
  02a32  588f                  addq.l   #4,a7                              
  02a34  60000abc              bra.w    L34f2                              
L2a38:
  02a38  3f07                  move.w   d7,-(a7)                           
  02a3a  3f05                  move.w   d5,-(a7)                           
  02a3c  4eba0c4a              jsr      f4_3688                            
  02a40  7002                  moveq    #2,d0                              
  02a42  2239ffff8384          move.l   g_7c7c,d1                          
  02a48  4c401801              divs.l   d0,d1                              
  02a4c  23c1ffff8384          move.l   d1,g_7c7c                          
  02a52  5379ffff8390          subq.w   #1,g_7c70                          
  02a58  7002                  moveq    #2,d0                              
  02a5a  2239ffff8384          move.l   g_7c7c,d1                          
  02a60  4c401801              divs.l   d0,d1                              
  02a64  5481                  addq.l   #2,d1                              
  02a66  23c1ffff8388          move.l   d1,g_7c78                          
  02a6c  486efef8              pea      -$108(a6)                          
  02a70  3f3c0096              move.w   #$96,-(a7)                         
  02a74  3f03                  move.w   d3,-(a7)                           
  02a76  4ebaeac4              jsr      f4_153c                            
  02a7a  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02a82  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02a8a  486efef8              pea      -$108(a6)                          
  02a8e  2f3c00000426          move.l   STR_0426,-(a7)                     ; "?"
  02a94  2f3c00000428          move.l   STR_0428,-(a7)                     ; "?"
  02a9a  a98b                  _ParamText                                  ; $a98b
  02a9c  60000a54              bra.w    L34f2                              
  02aa0  486efef8              pea      -$108(a6)                          
  02aa4  3f3c0096              move.w   #$96,-(a7)                         
  02aa8  3f03                  move.w   d3,-(a7)                           
  02aaa  4ebaea90              jsr      f4_153c                            
  02aae  3f3c0019              move.w   #$19,-(a7)                         
  02ab2  4ead0242              jsr      f2_79a8                            
  02ab6  7219                  moveq    #25,d1                             
  02ab8  9279ffff8390          sub.w    g_7c70,d1                          
  02abe  d079ffff837c          add.w    g_7c84,d0                          
  02ac4  b240                  cmp.w    d0,d1                              
  02ac6  548f                  addq.l   #2,a7                              
  02ac8  6e10                  bgt.s    L2ada                              
  02aca  486efdf8              pea      -$208(a6)                          
  02ace  2f3c00010097          move.l   #$10097,-(a7)                      
  02ad4  4ebaea66              jsr      f4_153c                            
  02ad8  601a                  bra.s    L2af4                              
L2ada:
  02ada  486efdf8              pea      -$208(a6)                          
  02ade  2f3c00020097          move.l   #$20097,-(a7)                      
  02ae4  4ebaea56              jsr      f4_153c                            
  02ae8  33fcfff6ffff8370      move.w   #$fff6,g_7c90                      
  02af0  4ead01da              jsr      f2_6c08                            
L2af4:
  02af4  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02afc  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  02b04  486efef8              pea      -$108(a6)                          
  02b08  486efdf8              pea      -$208(a6)                          
  02b0c  2f3c0000042a          move.l   STR_042a,-(a7)                     ; "?"
  02b12  a98b                  _ParamText                                  ; $a98b
  02b14  600009dc              bra.w    L34f2                              
  02b18  4a39ffff8df7          tst.b    g_7209                             
  02b1e  670e                  beq.s    L2b2e                              
  02b20  3f03                  move.w   d3,-(a7)                           
  02b22  3f04                  move.w   d4,-(a7)                           
  02b24  4ead0382              jsr      f3_77ae                            
  02b28  588f                  addq.l   #4,a7                              
  02b2a  600009c6              bra.w    L34f2                              
L2b2e:
  02b2e  3f07                  move.w   d7,-(a7)                           
  02b30  3f05                  move.w   d5,-(a7)                           
  02b32  4eba0b54              jsr      f4_3688                            
  02b36  486efef8              pea      -$108(a6)                          
  02b3a  3f3c0096              move.w   #$96,-(a7)                         
  02b3e  3f03                  move.w   d3,-(a7)                           
  02b40  4ebae9fa              jsr      f4_153c                            
  02b44  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02b4c  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02b54  486efef8              pea      -$108(a6)                          
  02b58  2f3c0000042c          move.l   STR_042c,-(a7)                     ; "?"
  02b5e  2f3c0000042e          move.l   STR_042e,-(a7)                     ; "?"
  02b64  a98b                  _ParamText                                  ; $a98b
  02b66  3f3c0007              move.w   #7,-(a7)                           
  02b6a  4ead0242              jsr      f2_79a8                            
  02b6e  5640                  addq.w   #3,d0                              
  02b70  9179ffff8370          sub.w    d0,g_7c90                          
  02b76  700a                  moveq    #10,d0                             
  02b78  2239ffff8388          move.l   g_7c78,d1                          
  02b7e  4c401801              divs.l   d0,d1                              
  02b82  d281                  add.l    d1,d1                              
  02b84  93b9ffff8388          sub.l    d1,g_7c78                          
  02b8a  4ead01da              jsr      f2_6c08                            
  02b8e  548f                  addq.l   #2,a7                              
  02b90  60000960              bra.w    L34f2                              
  02b94  4a39ffff9851          tst.b    g_67af                             
  02b9a  670e                  beq.s    L2baa                              
  02b9c  3f03                  move.w   d3,-(a7)                           
  02b9e  3f04                  move.w   d4,-(a7)                           
  02ba0  4ead05f2              jsr      f5_0000                            
  02ba4  588f                  addq.l   #4,a7                              
  02ba6  6000094a              bra.w    L34f2                              
L2baa:
  02baa  3f07                  move.w   d7,-(a7)                           
  02bac  3f05                  move.w   d5,-(a7)                           
  02bae  4eba0ad8              jsr      f4_3688                            
  02bb2  7c00                  moveq    #0,d6                              
  02bb4  588f                  addq.l   #4,a7                              
  02bb6  6010                  bra.s    L2bc8                              
L2bb8:
  02bb8  3f3c0004              move.w   #4,-(a7)                           
  02bbc  4ead0242              jsr      f2_79a8                            
  02bc0  d16efff8              add.w    d0,-$8(a6)                         
  02bc4  548f                  addq.l   #2,a7                              
  02bc6  5246                  addq.w   #1,d6                              
L2bc8:
  02bc8  bc79ffff8894          cmp.w    g_776c,d6                          
  02bce  6de8                  blt.s    L2bb8                              
  02bd0  302efff8              move.w   -$8(a6),d0                         
  02bd4  9179ffff8370          sub.w    d0,g_7c90                          
  02bda  486efef8              pea      -$108(a6)                          
  02bde  3f3c0096              move.w   #$96,-(a7)                         
  02be2  3f03                  move.w   d3,-(a7)                           
  02be4  4ebae956              jsr      f4_153c                            
  02be8  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02bf0  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  02bf8  486efef8              pea      -$108(a6)                          
  02bfc  2f3c00000430          move.l   STR_0430,-(a7)                     ; "?"
  02c02  2f3c00000432          move.l   STR_0432,-(a7)                     ; "?"
  02c08  a98b                  _ParamText                                  ; $a98b
  02c0a  4ead01da              jsr      f2_6c08                            
  02c0e  600008e2              bra.w    L34f2                              
  02c12  3f07                  move.w   d7,-(a7)                           
  02c14  3f05                  move.w   d5,-(a7)                           
  02c16  4eba0a70              jsr      f4_3688                            
  02c1a  486efef8              pea      -$108(a6)                          
  02c1e  3f3c0096              move.w   #$96,-(a7)                         
  02c22  3f03                  move.w   d3,-(a7)                           
  02c24  4ebae916              jsr      f4_153c                            
  02c28  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02c30  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02c38  486efef8              pea      -$108(a6)                          
  02c3c  2f3c00000434          move.l   STR_0434,-(a7)                     ; "?"
  02c42  2f3c00000436          move.l   STR_0436,-(a7)                     ; "?"
  02c48  a98b                  _ParamText                                  ; $a98b
  02c4a  7c00                  moveq    #0,d6                              
  02c4c  601a                  bra.s    L2c68                              
L2c4e:
  02c4e  3f3c0064              move.w   #$64,-(a7)                         
  02c52  4ead0242              jsr      f2_79a8                            
  02c56  0c400019              cmpi.w   #$19,d0                            
  02c5a  548f                  addq.l   #2,a7                              
  02c5c  6f08                  ble.s    L2c66                              
  02c5e  3f07                  move.w   d7,-(a7)                           
  02c60  4ead02e2              jsr      f3_2f86                            
  02c64  548f                  addq.l   #2,a7                              
L2c66:
  02c66  5246                  addq.w   #1,d6                              
L2c68:
  02c68  0c460003              cmpi.w   #3,d6                              
  02c6c  6de0                  blt.s    L2c4e                              
  02c6e  4ead01da              jsr      f2_6c08                            
  02c72  6000087e              bra.w    L34f2                              
  02c76  3f03                  move.w   d3,-(a7)                           
  02c78  3f04                  move.w   d4,-(a7)                           
  02c7a  2f3c000a0100          move.l   #$a0100,-(a7)                      
  02c80  4ead068a              jsr      f6_3356                            
  02c84  508f                  addq.l   #8,a7                              
  02c86  6000086a              bra.w    L34f2                              
  02c8a  4a39ffff8df7          tst.b    g_7209                             
  02c90  671e                  beq.s    L2cb0                              
  02c92  3f3c0064              move.w   #$64,-(a7)                         
  02c96  4ead0242              jsr      f2_79a8                            
  02c9a  0c400032              cmpi.w   #$32,d0                            
  02c9e  548f                  addq.l   #2,a7                              
  02ca0  6f0e                  ble.s    L2cb0                              
  02ca2  3f03                  move.w   d3,-(a7)                           
  02ca4  3f04                  move.w   d4,-(a7)                           
  02ca6  4ead0382              jsr      f3_77ae                            
  02caa  588f                  addq.l   #4,a7                              
  02cac  60000844              bra.w    L34f2                              
L2cb0:
  02cb0  3f07                  move.w   d7,-(a7)                           
  02cb2  3f05                  move.w   d5,-(a7)                           
  02cb4  4eba09d2              jsr      f4_3688                            
  02cb8  486efef8              pea      -$108(a6)                          
  02cbc  3f3c0096              move.w   #$96,-(a7)                         
  02cc0  3f03                  move.w   d3,-(a7)                           
  02cc2  4ebae878              jsr      f4_153c                            
  02cc6  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02cce  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02cd6  486efef8              pea      -$108(a6)                          
  02cda  2f3c00000438          move.l   STR_0438,-(a7)                     ; "?"
  02ce0  2f3c0000043a          move.l   STR_043a,-(a7)                     ; "?"
  02ce6  a98b                  _ParamText                                  ; $a98b
  02ce8  3f3c0004              move.w   #4,-(a7)                           
  02cec  4ead0242              jsr      f2_79a8                            
  02cf0  3d40fff8              move.w   d0,-$8(a6)                         
  02cf4  7c00                  moveq    #0,d6                              
  02cf6  548f                  addq.l   #2,a7                              
  02cf8  600a                  bra.s    L2d04                              
L2cfa:
  02cfa  3f07                  move.w   d7,-(a7)                           
  02cfc  4ead02e2              jsr      f3_2f86                            
  02d00  548f                  addq.l   #2,a7                              
  02d02  5246                  addq.w   #1,d6                              
L2d04:
  02d04  bc6efff8              cmp.w    -$8(a6),d6                         
  02d08  6df0                  blt.s    L2cfa                              
  02d0a  4ead01da              jsr      f2_6c08                            
  02d0e  600007e2              bra.w    L34f2                              
  02d12  4a39ffff8df7          tst.b    g_7209                             
  02d18  671e                  beq.s    L2d38                              
  02d1a  3f3c0064              move.w   #$64,-(a7)                         
  02d1e  4ead0242              jsr      f2_79a8                            
  02d22  0c400032              cmpi.w   #$32,d0                            
  02d26  548f                  addq.l   #2,a7                              
  02d28  6f0e                  ble.s    L2d38                              
  02d2a  3f03                  move.w   d3,-(a7)                           
  02d2c  3f04                  move.w   d4,-(a7)                           
  02d2e  4ead0382              jsr      f3_77ae                            
  02d32  588f                  addq.l   #4,a7                              
  02d34  600007bc              bra.w    L34f2                              
L2d38:
  02d38  3f07                  move.w   d7,-(a7)                           
  02d3a  3f05                  move.w   d5,-(a7)                           
  02d3c  4eba094a              jsr      f4_3688                            
  02d40  486efef8              pea      -$108(a6)                          
  02d44  3f3c0096              move.w   #$96,-(a7)                         
  02d48  3f03                  move.w   d3,-(a7)                           
  02d4a  4ebae7f0              jsr      f4_153c                            
  02d4e  486efdf8              pea      -$208(a6)                          
  02d52  2f3c00070097          move.l   #$70097,-(a7)                      
  02d58  4ebae7e2              jsr      f4_153c                            
  02d5c  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02d64  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02d6c  486efef8              pea      -$108(a6)                          
  02d70  486efdf8              pea      -$208(a6)                          
  02d74  2f3c0000043c          move.l   STR_043c,-(a7)                     ; "?"
  02d7a  a98b                  _ParamText                                  ; $a98b
  02d7c  33fcfff6ffff8370      move.w   #$fff6,g_7c90                      
  02d84  4ead01da              jsr      f2_6c08                            
  02d88  60000768              bra.w    L34f2                              
  02d8c  4a39ffff8df7          tst.b    g_7209                             
  02d92  671e                  beq.s    L2db2                              
  02d94  3f3c0064              move.w   #$64,-(a7)                         
  02d98  4ead0242              jsr      f2_79a8                            
  02d9c  0c400032              cmpi.w   #$32,d0                            
  02da0  548f                  addq.l   #2,a7                              
  02da2  6f0e                  ble.s    L2db2                              
  02da4  3f03                  move.w   d3,-(a7)                           
  02da6  3f04                  move.w   d4,-(a7)                           
  02da8  4ead0382              jsr      f3_77ae                            
  02dac  588f                  addq.l   #4,a7                              
  02dae  60000742              bra.w    L34f2                              
L2db2:
  02db2  3f07                  move.w   d7,-(a7)                           
  02db4  3f05                  move.w   d5,-(a7)                           
  02db6  4eba08d0              jsr      f4_3688                            
  02dba  5679ffff83ae          addq.w   #3,g_7c52                          
  02dc0  486efef8              pea      -$108(a6)                          
  02dc4  3f3c0096              move.w   #$96,-(a7)                         
  02dc8  3f03                  move.w   d3,-(a7)                           
  02dca  4ebae770              jsr      f4_153c                            
  02dce  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02dd6  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02dde  486efef8              pea      -$108(a6)                          
  02de2  2f3c0000043e          move.l   STR_043e,-(a7)                     ; "?"
  02de8  2f3c00000440          move.l   STR_0440,-(a7)                     ; "?"
  02dee  a98b                  _ParamText                                  ; $a98b
  02df0  0c790002ffff83ae      cmpi.w   #2,g_7c52                          
  02df8  6f0006f8              ble.w    L34f2                              
  02dfc  486d0432              pea      f4_45a2                            
  02e00  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  02e06  3f3c000d              move.w   #$d,-(a7)                          
  02e0a  2f3cffff8378          move.l   #$ffff8378,-(a7)                   
  02e10  4ead014a              jsr      f2_46ee                            
  02e14  3079ffff83ae          movea.w  g_7c52,a0                          
  02e1a  2008                  move.l   a0,d0                              
  02e1c  81fc0003              divs.w   #3,d0                              
  02e20  4840                  swap     d0                                 
  02e22  33c0ffff83ae          move.w   d0,g_7c52                          
  02e28  4fef000e              lea      $e(a7),a7                          
  02e2c  600006c4              bra.w    L34f2                              
  02e30  486efef8              pea      -$108(a6)                          
  02e34  3f3c0096              move.w   #$96,-(a7)                         
  02e38  3f03                  move.w   d3,-(a7)                           
  02e3a  4ebae700              jsr      f4_153c                            
  02e3e  3f07                  move.w   d7,-(a7)                           
  02e40  3f05                  move.w   d5,-(a7)                           
  02e42  4eba0844              jsr      f4_3688                            
  02e46  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02e4e  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02e56  486efef8              pea      -$108(a6)                          
  02e5a  2f3c00000442          move.l   STR_0442,-(a7)                     ; "?"
  02e60  2f3c00000444          move.l   STR_0444,-(a7)                     ; "?"
  02e66  a98b                  _ParamText                                  ; $a98b
  02e68  3f07                  move.w   d7,-(a7)                           
  02e6a  4ead02e2              jsr      f3_2f86                            
  02e6e  4ead01da              jsr      f2_6c08                            
  02e72  548f                  addq.l   #2,a7                              
  02e74  6000067c              bra.w    L34f2                              
  02e78  5279ffff83b2          addq.w   #1,g_7c4e                          
  02e7e  3f07                  move.w   d7,-(a7)                           
  02e80  3f05                  move.w   d5,-(a7)                           
  02e82  4eba0804              jsr      f4_3688                            
  02e86  486efef8              pea      -$108(a6)                          
  02e8a  3f3c0096              move.w   #$96,-(a7)                         
  02e8e  3f03                  move.w   d3,-(a7)                           
  02e90  4ebae6aa              jsr      f4_153c                            
  02e94  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02e9c  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02ea4  486efef8              pea      -$108(a6)                          
  02ea8  2f3c00000446          move.l   STR_0446,-(a7)                     ; "?"
  02eae  2f3c00000448          move.l   STR_0448,-(a7)                     ; "?"
  02eb4  a98b                  _ParamText                                  ; $a98b
  02eb6  0c790002ffff83b2      cmpi.w   #2,g_7c4e                          
  02ebe  6f000632              ble.w    L34f2                              
  02ec2  486d041a              pea      f4_43d4                            
  02ec6  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  02ecc  3f3c000d              move.w   #$d,-(a7)                          
  02ed0  2f3cffff8376          move.l   #$ffff8376,-(a7)                   
  02ed6  4ead014a              jsr      f2_46ee                            
  02eda  3079ffff83b2          movea.w  g_7c4e,a0                          
  02ee0  2008                  move.l   a0,d0                              
  02ee2  81fc0003              divs.w   #3,d0                              
  02ee6  4840                  swap     d0                                 
  02ee8  33c0ffff83b2          move.w   d0,g_7c4e                          
  02eee  4fef000e              lea      $e(a7),a7                          
  02ef2  600005fe              bra.w    L34f2                              
  02ef6  3f3c0008              move.w   #8,-(a7)                           
  02efa  4ead0242              jsr      f2_79a8                            
  02efe  5440                  addq.w   #2,d0                              
  02f00  9179ffff8370          sub.w    d0,g_7c90                          
  02f06  3e87                  move.w   d7,(a7)                            
  02f08  3f05                  move.w   d5,-(a7)                           
  02f0a  4eba077c              jsr      f4_3688                            
  02f0e  486efef8              pea      -$108(a6)                          
  02f12  3f3c0096              move.w   #$96,-(a7)                         
  02f16  3f03                  move.w   d3,-(a7)                           
  02f18  4ebae622              jsr      f4_153c                            
  02f1c  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02f24  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02f2c  486efef8              pea      -$108(a6)                          
  02f30  2f3c0000044a          move.l   STR_044a,-(a7)                     ; "?"
  02f36  2f3c0000044c          move.l   STR_044c,-(a7)                     ; "?"
  02f3c  a98b                  _ParamText                                  ; $a98b
  02f3e  4ead01da              jsr      f2_6c08                            
  02f42  600005ae              bra.w    L34f2                              
  02f46  4a39ffff8df7          tst.b    g_7209                             
  02f4c  670e                  beq.s    L2f5c                              
  02f4e  3f03                  move.w   d3,-(a7)                           
  02f50  3f04                  move.w   d4,-(a7)                           
  02f52  4ead0382              jsr      f3_77ae                            
  02f56  588f                  addq.l   #4,a7                              
  02f58  60000598              bra.w    L34f2                              
L2f5c:
  02f5c  3f07                  move.w   d7,-(a7)                           
  02f5e  3f05                  move.w   d5,-(a7)                           
  02f60  4eba0726              jsr      f4_3688                            
  02f64  4eba28b6              jsr      f4_581c                            
  02f68  486efef8              pea      -$108(a6)                          
  02f6c  3f3c0096              move.w   #$96,-(a7)                         
  02f70  3f03                  move.w   d3,-(a7)                           
  02f72  4ebae5c8              jsr      f4_153c                            
  02f76  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02f7e  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02f86  486efef8              pea      -$108(a6)                          
  02f8a  2f3c0000044e          move.l   STR_044e,-(a7)                     ; "?"
  02f90  2f3c00000450          move.l   STR_0450,-(a7)                     ; "?"
  02f96  a98b                  _ParamText                                  ; $a98b
  02f98  60000558              bra.w    L34f2                              
  02f9c  5279ffff83b0          addq.w   #1,g_7c50                          
  02fa2  3f07                  move.w   d7,-(a7)                           
  02fa4  3f05                  move.w   d5,-(a7)                           
  02fa6  4eba06e0              jsr      f4_3688                            
  02faa  486efef8              pea      -$108(a6)                          
  02fae  3f3c0096              move.w   #$96,-(a7)                         
  02fb2  3f03                  move.w   d3,-(a7)                           
  02fb4  4ebae586              jsr      f4_153c                            
  02fb8  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  02fc0  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  02fc8  486efef8              pea      -$108(a6)                          
  02fcc  2f3c00000452          move.l   STR_0452,-(a7)                     ; "?"
  02fd2  2f3c00000454          move.l   STR_0454,-(a7)                     ; "?"
  02fd8  a98b                  _ParamText                                  ; $a98b
  02fda  0c790002ffff83b0      cmpi.w   #2,g_7c50                          
  02fe2  6f00050e              ble.w    L34f2                              
  02fe6  486d042a              pea      f4_4524                            
  02fea  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  02ff0  3f3c000d              move.w   #$d,-(a7)                          
  02ff4  2f3cffff837c          move.l   #$ffff837c,-(a7)                   
  02ffa  4ead014a              jsr      f2_46ee                            
  02ffe  3079ffff83b0          movea.w  g_7c50,a0                          
  03004  2008                  move.l   a0,d0                              
  03006  81fc0003              divs.w   #3,d0                              
  0300a  4840                  swap     d0                                 
  0300c  33c0ffff83b0          move.w   d0,g_7c50                          
  03012  4fef000e              lea      $e(a7),a7                          
  03016  600004da              bra.w    L34f2                              
  0301a  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  03022  6608                  bne.s    L302c                              
  03024  422efffb              clr.b    -$5(a6)                            
  03028  600004c8              bra.w    L34f2                              
L302c:
  0302c  3f07                  move.w   d7,-(a7)                           
  0302e  3f05                  move.w   d5,-(a7)                           
  03030  4eba0656              jsr      f4_3688                            
  03034  3e83                  move.w   d3,(a7)                            
  03036  3f04                  move.w   d4,-(a7)                           
  03038  2f3c00050000          move.l   #$50000,-(a7)                      
  0303e  4ead068a              jsr      f6_3356                            
  03042  3ebc0006              move.w   #6,(a7)                            
  03046  4ead0242              jsr      f2_79a8                            
  0304a  9179ffff8370          sub.w    d0,g_7c90                          
  03050  4fef000a              lea      $a(a7),a7                          
  03054  6000049c              bra.w    L34f2                              
  03058  4a39ffff8df7          tst.b    g_7209                             
  0305e  6712                  beq.s    L3072                              
  03060  3f03                  move.w   d3,-(a7)                           
  03062  3f04                  move.w   d4,-(a7)                           
  03064  4ead0382              jsr      f3_77ae                            
  03068  422efffb              clr.b    -$5(a6)                            
  0306c  588f                  addq.l   #4,a7                              
  0306e  60000482              bra.w    L34f2                              
L3072:
  03072  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  0307a  6608                  bne.s    L3084                              
  0307c  422efffb              clr.b    -$5(a6)                            
  03080  60000470              bra.w    L34f2                              
L3084:
  03084  3f07                  move.w   d7,-(a7)                           
  03086  3f05                  move.w   d5,-(a7)                           
  03088  4eba05fe              jsr      f4_3688                            
  0308c  3e83                  move.w   d3,(a7)                            
  0308e  3f04                  move.w   d4,-(a7)                           
  03090  2f3c00050000          move.l   #$50000,-(a7)                      
  03096  4ead068a              jsr      f6_3356                            
  0309a  4fef000a              lea      $a(a7),a7                          
  0309e  60000452              bra.w    L34f2                              
  030a2  5279ffff83b4          addq.w   #1,g_7c4c                          
  030a8  3f07                  move.w   d7,-(a7)                           
  030aa  3f05                  move.w   d5,-(a7)                           
  030ac  4eba05da              jsr      f4_3688                            
  030b0  486efef8              pea      -$108(a6)                          
  030b4  3f3c0096              move.w   #$96,-(a7)                         
  030b8  3f03                  move.w   d3,-(a7)                           
  030ba  4ebae480              jsr      f4_153c                            
  030be  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  030c6  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  030ce  486efef8              pea      -$108(a6)                          
  030d2  2f3c00000456          move.l   STR_0456,-(a7)                     ; "?"
  030d8  2f3c00000458          move.l   STR_0458,-(a7)                     ; "?"
  030de  a98b                  _ParamText                                  ; $a98b
  030e0  0c790002ffff83b4      cmpi.w   #2,g_7c4c                          
  030e8  6f000408              ble.w    L34f2                              
  030ec  486d0422              pea      f4_444c                            
  030f0  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  030f6  3f3c000d              move.w   #$d,-(a7)                          
  030fa  2f3cffff8382          move.l   #$ffff8382,-(a7)                   
  03100  4ead014a              jsr      f2_46ee                            
  03104  3079ffff83b4          movea.w  g_7c4c,a0                          
  0310a  2008                  move.l   a0,d0                              
  0310c  81fc0003              divs.w   #3,d0                              
  03110  4840                  swap     d0                                 
  03112  33c0ffff83b4          move.w   d0,g_7c4c                          
  03118  4fef000e              lea      $e(a7),a7                          
  0311c  600003d4              bra.w    L34f2                              
  03120  4a39ffff8df7          tst.b    g_7209                             
  03126  6712                  beq.s    L313a                              
  03128  3f03                  move.w   d3,-(a7)                           
  0312a  3f04                  move.w   d4,-(a7)                           
  0312c  4ead0382              jsr      f3_77ae                            
  03130  422efffb              clr.b    -$5(a6)                            
  03134  588f                  addq.l   #4,a7                              
  03136  600003ba              bra.w    L34f2                              
L313a:
  0313a  3f07                  move.w   d7,-(a7)                           
  0313c  3f05                  move.w   d5,-(a7)                           
  0313e  4eba0548              jsr      f4_3688                            
  03142  7c00                  moveq    #0,d6                              
  03144  588f                  addq.l   #4,a7                              
  03146  6010                  bra.s    L3158                              
L3148:
  03148  3f3c0003              move.w   #3,-(a7)                           
  0314c  4ead0242              jsr      f2_79a8                            
  03150  d16efff8              add.w    d0,-$8(a6)                         
  03154  548f                  addq.l   #2,a7                              
  03156  5246                  addq.w   #1,d6                              
L3158:
  03158  bc79ffff8894          cmp.w    g_776c,d6                          
  0315e  6de8                  blt.s    L3148                              
  03160  3f3c0006              move.w   #6,-(a7)                           
  03164  4ead0242              jsr      f2_79a8                            
  03168  06400009              addi.w   #9,d0                              
  0316c  d16efff8              add.w    d0,-$8(a6)                         
  03170  302efff8              move.w   -$8(a6),d0                         
  03174  9179ffff8370          sub.w    d0,g_7c90                          
  0317a  486efef8              pea      -$108(a6)                          
  0317e  3f3c0096              move.w   #$96,-(a7)                         
  03182  3f03                  move.w   d3,-(a7)                           
  03184  4ebae3b6              jsr      f4_153c                            
  03188  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  03190  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  03198  486efef8              pea      -$108(a6)                          
  0319c  2f3c0000045a          move.l   STR_045a,-(a7)                     ; "?"
  031a2  2f3c0000045c          move.l   STR_045c,-(a7)                     ; "?"
  031a8  a98b                  _ParamText                                  ; $a98b
  031aa  4ead01da              jsr      f2_6c08                            
  031ae  548f                  addq.l   #2,a7                              
  031b0  60000340              bra.w    L34f2                              
  031b4  4a39ffff9851          tst.b    g_67af                             
  031ba  670e                  beq.s    L31ca                              
  031bc  3f03                  move.w   d3,-(a7)                           
  031be  3f04                  move.w   d4,-(a7)                           
  031c0  4ead05f2              jsr      f5_0000                            
  031c4  588f                  addq.l   #4,a7                              
  031c6  6000032a              bra.w    L34f2                              
L31ca:
  031ca  7c00                  moveq    #0,d6                              
  031cc  6010                  bra.s    L31de                              
L31ce:
  031ce  3f3c0002              move.w   #2,-(a7)                           
  031d2  4ead0242              jsr      f2_79a8                            
  031d6  d16efff8              add.w    d0,-$8(a6)                         
  031da  548f                  addq.l   #2,a7                              
  031dc  5246                  addq.w   #1,d6                              
L31de:
  031de  bc79ffff8894          cmp.w    g_776c,d6                          
  031e4  6de8                  blt.s    L31ce                              
  031e6  3f07                  move.w   d7,-(a7)                           
  031e8  3f05                  move.w   d5,-(a7)                           
  031ea  4eba049c              jsr      f4_3688                            
  031ee  3ebc0007              move.w   #7,(a7)                            
  031f2  4ead0242              jsr      f2_79a8                            
  031f6  5a40                  addq.w   #5,d0                              
  031f8  d16efff8              add.w    d0,-$8(a6)                         
  031fc  302efff8              move.w   -$8(a6),d0                         
  03200  9179ffff8370          sub.w    d0,g_7c90                          
  03206  486efef8              pea      -$108(a6)                          
  0320a  3f3c0096              move.w   #$96,-(a7)                         
  0320e  3f03                  move.w   d3,-(a7)                           
  03210  4ebae32a              jsr      f4_153c                            
  03214  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  0321c  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  03224  486efef8              pea      -$108(a6)                          
  03228  2f3c0000045e          move.l   STR_045e,-(a7)                     ; "?"
  0322e  2f3c00000460          move.l   STR_0460,-(a7)                     ; "?"
  03234  a98b                  _ParamText                                  ; $a98b
  03236  600002ba              bra.w    L34f2                              
  0323a  4a39ffff9851          tst.b    g_67af                             
  03240  670e                  beq.s    L3250                              
  03242  3f03                  move.w   d3,-(a7)                           
  03244  3f04                  move.w   d4,-(a7)                           
  03246  4ead05f2              jsr      f5_0000                            
  0324a  588f                  addq.l   #4,a7                              
  0324c  600002a4              bra.w    L34f2                              
L3250:
  03250  3f07                  move.w   d7,-(a7)                           
  03252  3f05                  move.w   d5,-(a7)                           
  03254  4eba0432              jsr      f4_3688                            
  03258  3ebc0005              move.w   #5,(a7)                            
  0325c  4ead0242              jsr      f2_79a8                            
  03260  5a40                  addq.w   #5,d0                              
  03262  9179ffff8370          sub.w    d0,g_7c90                          
  03268  4ead01da              jsr      f2_6c08                            
  0326c  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  03274  588f                  addq.l   #4,a7                              
  03276  6608                  bne.s    L3280                              
  03278  422efffb              clr.b    -$5(a6)                            
  0327c  60000274              bra.w    L34f2                              
L3280:
  03280  3f03                  move.w   d3,-(a7)                           
  03282  3f04                  move.w   d4,-(a7)                           
  03284  2f3c00050000          move.l   #$50000,-(a7)                      
  0328a  4ead068a              jsr      f6_3356                            
  0328e  508f                  addq.l   #8,a7                              
  03290  60000260              bra.w    L34f2                              
  03294  3079ffff838c          movea.w  g_7c74,a0                          
  0329a  2008                  move.l   a0,d0                              
  0329c  81fc0003              divs.w   #3,d0                              
  032a0  3c39ffff838c          move.w   g_7c74,d6                          
  032a6  dc46                  add.w    d6,d6                              
  032a8  9c79ffff8836          sub.w    g_77ca,d6                          
  032ae  9c40                  sub.w    d0,d6                              
  032b0  3f07                  move.w   d7,-(a7)                           
  032b2  3f05                  move.w   d5,-(a7)                           
  032b4  4eba03d2              jsr      f4_3688                            
  032b8  3e86                  move.w   d6,(a7)                            
  032ba  4ead0242              jsr      f2_79a8                            
  032be  d079ffff8378          add.w    g_7c88,d0                          
  032c4  0640fff1              addi.w   #$fff1,d0                          
  032c8  d079ffff8380          add.w    g_7c80,d0                          
  032ce  3d40fff8              move.w   d0,-$8(a6)                         
  032d2  4a39ffff8df8          tst.b    g_7208                             
  032d8  588f                  addq.l   #4,a7                              
  032da  670a                  beq.s    L32e6                              
  032dc  7003                  moveq    #3,d0                              
  032de  c1eefff8              muls.w   -$8(a6),d0                         
  032e2  3d40fff8              move.w   d0,-$8(a6)                         
L32e6:
  032e6  302efff8              move.w   -$8(a6),d0                         
  032ea  9179ffff8370          sub.w    d0,g_7c90                          
  032f0  486efef8              pea      -$108(a6)                          
  032f4  3f3c0096              move.w   #$96,-(a7)                         
  032f8  3f03                  move.w   d3,-(a7)                           
  032fa  4ebae240              jsr      f4_153c                            
  032fe  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  03306  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  0330e  486efef8              pea      -$108(a6)                          
  03312  2f3c00000462          move.l   STR_0462,-(a7)                     ; "?"
  03318  2f3c00000464          move.l   STR_0464,-(a7)                     ; "?"
  0331e  a98b                  _ParamText                                  ; $a98b
  03320  600001d0              bra.w    L34f2                              
  03324  4a79ffff8da6          tst.w    g_725a                             
  0332a  6608                  bne.s    L3334                              
  0332c  422efffb              clr.b    -$5(a6)                            
  03330  600001c0              bra.w    L34f2                              
L3334:
  03334  3f07                  move.w   d7,-(a7)                           
  03336  3f05                  move.w   d5,-(a7)                           
  03338  4eba034e              jsr      f4_3688                            
  0333c  2eb9ffff8dd4          move.l   g_722c,(a7)                        
  03342  3f39ffff8da6          move.w   g_725a,-(a7)                       
  03348  a93a                  _DisableItem                                ; $a93a
  0334a  5379ffff8da6          subq.w   #1,g_725a                          
  03350  4a79ffff8da6          tst.w    g_725a                             
  03356  660a                  bne.s    L3362                              
  03358  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  0335e  4267                  clr.w    -(a7)                              
  03360  a93a                  _DisableItem                                ; $a93a
L3362:
  03362  486efef8              pea      -$108(a6)                          
  03366  3f3c0096              move.w   #$96,-(a7)                         
  0336a  3f03                  move.w   d3,-(a7)                           
  0336c  4ebae1ce              jsr      f4_153c                            
  03370  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  03378  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  03380  486efef8              pea      -$108(a6)                          
  03384  2f3c00000466          move.l   STR_0466,-(a7)                     ; "?"
  0338a  2f3c00000468          move.l   STR_0468,-(a7)                     ; "?"
  03390  a98b                  _ParamText                                  ; $a98b
  03392  6000015e              bra.w    L34f2                              
  03396  4a39ffff9851          tst.b    g_67af                             
  0339c  670e                  beq.s    L33ac                              
  0339e  3f03                  move.w   d3,-(a7)                           
  033a0  3f04                  move.w   d4,-(a7)                           
  033a2  4ead05f2              jsr      f5_0000                            
  033a6  588f                  addq.l   #4,a7                              
  033a8  60000148              bra.w    L34f2                              
L33ac:
  033ac  3f07                  move.w   d7,-(a7)                           
  033ae  3f05                  move.w   d5,-(a7)                           
  033b0  4eba02d6              jsr      f4_3688                            
  033b4  486efef8              pea      -$108(a6)                          
  033b8  3f3c0096              move.w   #$96,-(a7)                         
  033bc  3f03                  move.w   d3,-(a7)                           
  033be  4ebae17c              jsr      f4_153c                            
  033c2  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  033ca  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  033d2  486efef8              pea      -$108(a6)                          
  033d6  2f3c0000046a          move.l   STR_046a,-(a7)                     ; "?"
  033dc  2f3c0000046c          move.l   STR_046c,-(a7)                     ; "?"
  033e2  a98b                  _ParamText                                  ; $a98b
  033e4  4eba2616              jsr      f4_59fc                            
  033e8  60000108              bra.w    L34f2                              
  033ec  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  033f4  6608                  bne.s    L33fe                              
  033f6  422efffb              clr.b    -$5(a6)                            
  033fa  600000f6              bra.w    L34f2                              
L33fe:
  033fe  3f03                  move.w   d3,-(a7)                           
  03400  3f04                  move.w   d4,-(a7)                           
  03402  2f3c000a0000          move.l   #$a0000,-(a7)                      
  03408  4ead068a              jsr      f6_3356                            
  0340c  508f                  addq.l   #8,a7                              
  0340e  600000e2              bra.w    L34f2                              
  03412  4a39ffff9851          tst.b    g_67af                             
  03418  670e                  beq.s    L3428                              
  0341a  3f03                  move.w   d3,-(a7)                           
  0341c  3f04                  move.w   d4,-(a7)                           
  0341e  4ead05f2              jsr      f5_0000                            
  03422  588f                  addq.l   #4,a7                              
  03424  600000cc              bra.w    L34f2                              
L3428:
  03428  3f07                  move.w   d7,-(a7)                           
  0342a  3f05                  move.w   d5,-(a7)                           
  0342c  4eba025a              jsr      f4_3688                            
  03430  486efef8              pea      -$108(a6)                          
  03434  3f3c0096              move.w   #$96,-(a7)                         
  03438  3f03                  move.w   d3,-(a7)                           
  0343a  4ebae100              jsr      f4_153c                            
  0343e  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  03446  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  0344e  486efef8              pea      -$108(a6)                          
  03452  2f3c0000046e          move.l   STR_046e,-(a7)                     ; "?"
  03458  2f3c00000470          move.l   STR_0470,-(a7)                     ; "?"
  0345e  a98b                  _ParamText                                  ; $a98b
  03460  7c00                  moveq    #0,d6                              
  03462  6010                  bra.s    L3474                              
L3464:
  03464  3f3c000a              move.w   #$a,-(a7)                          
  03468  4ead0242              jsr      f2_79a8                            
  0346c  d16efff8              add.w    d0,-$8(a6)                         
  03470  548f                  addq.l   #2,a7                              
  03472  5246                  addq.w   #1,d6                              
L3474:
  03474  bc79ffff8894          cmp.w    g_776c,d6                          
  0347a  6de8                  blt.s    L3464                              
  0347c  306efff8              movea.w  -$8(a6),a0                         
  03480  2008                  move.l   a0,d0                              
  03482  81fc0003              divs.w   #3,d0                              
  03486  3d40fff8              move.w   d0,-$8(a6)                         
  0348a  9179ffff8370          sub.w    d0,g_7c90                          
  03490  4ead01da              jsr      f2_6c08                            
  03494  605c                  bra.s    L34f2                              
  03496  4a39ffff9851          tst.b    g_67af                             
  0349c  670c                  beq.s    L34aa                              
  0349e  3f03                  move.w   d3,-(a7)                           
  034a0  3f04                  move.w   d4,-(a7)                           
  034a2  4ead05f2              jsr      f5_0000                            
  034a6  588f                  addq.l   #4,a7                              
  034a8  6048                  bra.s    L34f2                              
L34aa:
  034aa  3f07                  move.w   d7,-(a7)                           
  034ac  3f05                  move.w   d5,-(a7)                           
  034ae  4eba01d8              jsr      f4_3688                            
  034b2  486efef8              pea      -$108(a6)                          
  034b6  3f3c0096              move.w   #$96,-(a7)                         
  034ba  3f03                  move.w   d3,-(a7)                           
  034bc  4ebae07e              jsr      f4_153c                            
  034c0  303043b0ffff8c78      move.w   (-$7388,za0,d4.w*2),d0             
  034c8  2eb005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),(a7)           
  034d0  486efef8              pea      -$108(a6)                          
  034d4  2f3c00000472          move.l   STR_0472,-(a7)                     ; "?"
  034da  2f3c00000474          move.l   STR_0474,-(a7)                     ; "?"
  034e0  a98b                  _ParamText                                  ; $a98b
  034e2  4eba2518              jsr      f4_59fc                            
  034e6  4eba25ae              jsr      f4_5a96                            
  034ea  4ead01a2              jsr      f2_68d4                            
  034ee  4ead01ea              jsr      f2_70c2                            
L34f2:
  034f2  4a2efffb              tst.b    -$5(a6)                            
  034f6  6708                  beq.s    L3500                              
  034f8  42a7                  clr.l    -(a7)                              
  034fa  4eba0062              jsr      f4_355e                            
  034fe  588f                  addq.l   #4,a7                              
L3500:
  03500  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  03504  4e5e                  unlk     a6                                 
  03506  4e75                  rts                                         
  03508  ffea                  dc.w     $ffea                              
  0350a  efe8f04ef094          bfins    d7,-$f6c(a0){1:14}                 
  03510  f110                  dc.w     $f110                              
  03512  f180                  dc.w     $f180                              
  03514  f1cc                  dc.w     $f1cc                              
  03516  f1f2                  dc.w     $f1f2                              
  03518  f270f2c4f312f3a6      fscc     ([$0,a0],a7.w*2,-$c5a)             
  03520  f420                  dc.w     $f420                              
  03522  f48e                  dc.w     $f48e                              
  03524  f510                  dc.w     $f510                              
  03526  f598                  dc.w     $f598                              
  03528  f610                  dc.w     $f610                              
  0352a  f68c                  dc.w     $f68c                              
  0352c  f70a                  dc.w     $f70a                              
  0352e  f76e                  dc.w     $f76e                              
  03530  f782                  dc.w     $f782                              
  03532  ffea                  dc.w     $ffea                              
  03534  f80a                  dc.w     $f80a                              
  03536  f884                  dc.w     $f884                              
  03538  f928                  dc.w     $f928                              
  0353a  f970                  dc.w     $f970                              
  0353c  f9ee                  dc.w     $f9ee                              
  0353e  fa3e                  dc.w     $fa3e                              
  03540  fa94                  dc.w     $fa94                              
  03542  fb12                  dc.w     $fb12                              
  03544  fb50                  dc.w     $fb50                              
  03546  f80a                  dc.w     $f80a                              
  03548  fb9a                  dc.w     $fb9a                              
  0354a  fc18                  dc.w     $fc18                              
  0354c  fcac                  dc.w     $fcac                              
  0354e  fd32                  dc.w     $fd32                              
  03550  fd8c                  dc.w     $fd8c                              
  03552  f782                  dc.w     $f782                              
  03554  fe1c                  dc.w     $fe1c                              
  03556  fe8e                  dc.w     $fe8e                              
  03558  fee4                  dc.w     $fee4                              
  0355a  ff0a                  dc.w     $ff0a                              
  0355c  ff8e                  dc.w     $ff8e                              

;----------------------------------------------------------------------
; f4_355e   [jump table #123]
;----------------------------------------------------------------------
f4_355e:
  0355e  4e56ff38              link     a6,#-200                           
  03562  48e70118              movem.l  d7/a3/a4,-(a7)                     
  03566  286e0008              movea.l  $8(a6),a4                          
  0356a  426efffe              clr.w    -$2(a6)                            
  0356e  2079ffff9382          movea.l  g_6c7e,a0                          
  03574  2d680010ff48          move.l   $10(a0),-$b8(a6)                   
  0357a  2d680014ff4c          move.l   $14(a0),-$b4(a6)                   
  03580  486eff50              pea      -$b0(a6)                           
  03584  a874                  _GetPort                                    ; $a874
  03586  200c                  move.l   a4,d0                              
  03588  6752                  beq.s    L35dc                              
  0358a  2f0c                  move.l   a4,-(a7)                           
  0358c  3f3c000b              move.w   #$b,-(a7)                          
  03590  a828                  _LayerDispatch                              ; $a828
  03592  2f0c                  move.l   a4,-(a7)                           
  03594  3f3c000e              move.w   #$e,-(a7)                          
  03598  a828                  _LayerDispatch                              ; $a828
  0359a  2f0c                  move.l   a4,-(a7)                           
  0359c  a981                  _DrawDialog                                 ; $a981
L359e:
  0359e  42a7                  clr.l    -(a7)                              
  035a0  486efffe              pea      -$2(a6)                            
  035a4  a991                  _ModalDialog                                ; $a991
  035a6  0c6e000efffe          cmpi.w   #$e,-$2(a6)                        
  035ac  66f0                  bne.s    L359e                              
  035ae  2f0c                  move.l   a4,-(a7)                           
  035b0  3f3c000b              move.w   #$b,-(a7)                          
  035b4  a827                  _ShowDialogItem                             ; $a827
  035b6  2f0c                  move.l   a4,-(a7)                           
  035b8  3f3c000e              move.w   #$e,-(a7)                          
  035bc  a827                  _ShowDialogItem                             ; $a827
  035be  2f3c00000476          move.l   STR_0476,-(a7)                     ; "?"
  035c4  2f3c00000478          move.l   STR_0478,-(a7)                     ; "?"
  035ca  2f3c0000047a          move.l   STR_047a,-(a7)                     ; "?"
  035d0  2f3c0000047c          move.l   STR_047c,-(a7)                     ; "?"
  035d6  a98b                  _ParamText                                  ; $a98b
  035d8  600000a6              bra.w    L3680                              
L35dc:
  035dc  42a7                  clr.l    -(a7)                              
  035de  3f3c07e5              move.w   #$7e5,-(a7)                        
  035e2  486eff54              pea      -$ac(a6)                           
  035e6  4878ffff              pea      ($ffff).w                          
  035ea  a97c                  _GetNewDialog                               ; $a97c
  035ec  265f                  movea.l  (a7)+,a3                           
  035ee  2f0b                  move.l   a3,-(a7)                           
  035f0  4ead06ba              jsr      f7_161c                            
  035f4  2e8b                  move.l   a3,(a7)                            
  035f6  a915                  _ShowWindow                                 ; $a915
  035f8  2f0b                  move.l   a3,-(a7)                           
  035fa  a981                  _DrawDialog                                 ; $a981
  035fc  42a7                  clr.l    -(a7)                              
  035fe  a975                  _TickCount                                  ; $a975
  03600  2e1f                  move.l   (a7)+,d7                           
  03602  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  03608  201f                  move.l   (a7)+,d0                           
  0360a  a032                  _FlushEvents                                ; $a032
L360c:
  0360c  42a7                  clr.l    -(a7)                              
  0360e  a975                  _TickCount                                  ; $a975
  03610  201f                  move.l   (a7)+,d0                           
  03612  9087                  sub.l    d7,d0                              
  03614  0c8000000258          cmpi.l   #$258,d0                           
  0361a  641c                  bcc.s    L3638                              
  0361c  4a6efffe              tst.w    -$2(a6)                            
  03620  6616                  bne.s    L3638                              
  03622  4227                  clr.b    -(a7)                              
  03624  3f3c0002              move.w   #2,-(a7)                           
  03628  486eff38              pea      -$c8(a6)                           
  0362c  a970                  _GetNextEvent                               ; $a970
  0362e  7000                  moveq    #0,d0                              
  03630  101f                  move.b   (a7)+,d0                           
  03632  3d40fffe              move.w   d0,-$2(a6)                         
  03636  60d4                  bra.s    L360c                              
L3638:
  03638  2f0b                  move.l   a3,-(a7)                           
  0363a  a983                  _DisposeDialog                              ; $a983
  0363c  2f3c0000047e          move.l   STR_047e,-(a7)                     ; "?"
  03642  2f3c00000480          move.l   STR_0480,-(a7)                     ; "?"
  03648  2f3c00000482          move.l   STR_0482,-(a7)                     ; "?"
  0364e  2f3c00000484          move.l   STR_0484,-(a7)                     ; "?"
  03654  a98b                  _ParamText                                  ; $a98b
  03656  2f2eff50              move.l   -$b0(a6),-(a7)                     
  0365a  a873                  _SetPort                                    ; $a873
  0365c  2079ffff99f8          movea.l  g_6608,a0                          
  03662  20680002              movea.l  $2(a0),a0                          
  03666  2f10                  move.l   (a0),-(a7)                         
  03668  2079ffff9382          movea.l  g_6c7e,a0                          
  0366e  48680002              pea      $2(a0)                             
  03672  486eff48              pea      -$b8(a6)                           
  03676  486eff48              pea      -$b8(a6)                           
  0367a  4267                  clr.w    -(a7)                              
  0367c  42a7                  clr.l    -(a7)                              
  0367e  a8ec                  _CopyBits                                   ; $a8ec
L3680:
  03680  4cdf1880              movem.l  (a7)+,d7/a3/a4                     
  03684  4e5e                  unlk     a6                                 
  03686  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_3688
;----------------------------------------------------------------------
f4_3688:
  03688  4e56ff9e              link     a6,#-98                            
  0368c  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  03690  3e2e0008              move.w   $8(a6),d7                          
  03694  2079ffff9382          movea.l  g_6c7e,a0                          
  0369a  2d680010ffd0          move.l   $10(a0),-$30(a6)                   
  036a0  2d680014ffd4          move.l   $14(a0),-$2c(a6)                   
  036a6  303077b0ffff96c8      move.w   (-$6938,za0,d7.w*8),d0             
  036ae  907077b0ffff96c4      sub.w    (-$693c,za0,d7.w*8),d0             
  036b6  48c0                  ext.l    d0                                 
  036b8  81fc0002              divs.w   #2,d0                              
  036bc  d07077b0ffff96c4      add.w    (-$693c,za0,d7.w*8),d0             
  036c4  3d40ffbc              move.w   d0,-$44(a6)                        
  036c8  323077b0ffff96c6      move.w   (-$693a,za0,d7.w*8),d1             
  036d0  927077b0ffff96c2      sub.w    (-$693e,za0,d7.w*8),d1             
  036d8  48c1                  ext.l    d1                                 
  036da  83fc0002              divs.w   #2,d1                              
  036de  d27077b0ffff96c2      add.w    (-$693e,za0,d7.w*8),d1             
  036e6  3d41ffbe              move.w   d1,-$42(a6)                        
  036ea  3d40ffc0              move.w   d0,-$40(a6)                        
  036ee  3d41ffc2              move.w   d1,-$3e(a6)                        
  036f2  2f39ffffac72          move.l   g_538e,-(a7)                       
  036f8  a873                  _SetPort                                    ; $a873
  036fa  486effe8              pea      -$18(a6)                           
  036fe  42a7                  clr.l    -(a7)                              
  03700  2f3c0020001e          move.l   #$20001e,-(a7)                     
  03706  a8a7                  _SetRect                                    ; $a8a7
  03708  2d6effe8fff0          move.l   -$18(a6),-$10(a6)                  
  0370e  2d6effecfff4          move.l   -$14(a6),-$c(a6)                   
  03714  2d6efff0fff8          move.l   -$10(a6),-$8(a6)                   
  0371a  2d6efff4fffc          move.l   -$c(a6),-$4(a6)                    
  03720  486efff0              pea      -$10(a6)                           
  03724  4878001e              pea      ($1e).w                            
  03728  a8a8                  _OffsetRect                                 ; $a8a8
  0372a  486efff8              pea      -$8(a6)                            
  0372e  4878003c              pea      ($3c).w                            
  03732  a8a8                  _OffsetRect                                 ; $a8a8
  03734  3d7c00c8ffba          move.w   #$c8,-$46(a6)                      
  0373a  7600                  moveq    #0,d3                              
  0373c  6022                  bra.s    L3760                              
L373e:
  0373e  42a7                  clr.l    -(a7)                              
  03740  302effba              move.w   -$46(a6),d0                        
  03744  d043                  add.w    d3,d0                              
  03746  3f00                  move.w   d0,-(a7)                           
  03748  a9bc                  _GetPicture                                 ; $a9bc
  0374a  2d9f34c4              move.l   (a7)+,-$3c(a6,d3.w*4)              
  0374e  2f3634c4              move.l   -$3c(a6,d3.w*4),-(a7)              
  03752  487636e8              pea      -$18(a6,d3.w*8)                    
  03756  a8f6                  _DrawPicture                                ; $a8f6
  03758  2f3634c4              move.l   -$3c(a6,d3.w*4),-(a7)              
  0375c  a9a3                  _ReleaseResource                            ; $a9a3
  0375e  5243                  addq.w   #1,d3                              
L3760:
  03760  0c430003              cmpi.w   #3,d3                              
  03764  6dd8                  blt.s    L373e                              
  03766  7008                  moveq    #8,d0                              
  03768  d07077b0ffff96c4      add.w    (-$693c,za0,d7.w*8),d0             
  03770  3d40ffe2              move.w   d0,-$1e(a6)                        
  03774  7008                  moveq    #8,d0                              
  03776  d07077b0ffff96c2      add.w    (-$693e,za0,d7.w*8),d0             
  0377e  3d40ffe0              move.w   d0,-$20(a6)                        
  03782  70f8                  moveq    #-8,d0                             
  03784  d07077b0ffff96c8      add.w    (-$6938,za0,d7.w*8),d0             
  0378c  3d40ffe6              move.w   d0,-$1a(a6)                        
  03790  70f8                  moveq    #-8,d0                             
  03792  d07077b0ffff96c6      add.w    (-$693a,za0,d7.w*8),d0             
  0379a  3d40ffe4              move.w   d0,-$1c(a6)                        
  0379e  303073b0ffff8e0c      move.w   (-$71f4,za0,d7.w*2),d0             
  037a6  3d7003b0ffff8c24ffb6  move.w   (-$73dc,za0,d0.w*2),-$4a(a6)       
  037b0  303073b0ffff8e0c      move.w   (-$71f4,za0,d7.w*2),d0             
  037b8  3d7003b0ffff8c4effb4  move.w   (-$73b2,za0,d0.w*2),-$4c(a6)       
  037c2  3a2effb6              move.w   -$4a(a6),d5                        
  037c6  382effb4              move.w   -$4c(a6),d4                        
  037ca  2079ffff9382          movea.l  g_6c7e,a0                          
  037d0  48680002              pea      $2(a0)                             
  037d4  2279ffff99f8          movea.l  g_6608,a1                          
  037da  22690002              movea.l  $2(a1),a1                          
  037de  2f11                  move.l   (a1),-(a7)                         
  037e0  486effd0              pea      -$30(a6)                           
  037e4  486effd0              pea      -$30(a6)                           
  037e8  4267                  clr.w    -(a7)                              
  037ea  42a7                  clr.l    -(a7)                              
  037ec  a8ec                  _CopyBits                                   ; $a8ec
  037ee  2079ffff9382          movea.l  g_6c7e,a0                          
  037f4  48680002              pea      $2(a0)                             
  037f8  2279ffff99fc          movea.l  g_6604,a1                          
  037fe  22690002              movea.l  $2(a1),a1                          
  03802  2f11                  move.l   (a1),-(a7)                         
  03804  486effd0              pea      -$30(a6)                           
  03808  486effd0              pea      -$30(a6)                           
  0380c  4267                  clr.w    -(a7)                              
  0380e  42a7                  clr.l    -(a7)                              
  03810  a8ec                  _CopyBits                                   ; $a8ec
  03812  7600                  moveq    #0,d3                              
  03814  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  0381a  a873                  _SetPort                                    ; $a873
  0381c  486effa6              pea      -$5a(a6)                           
  03820  3f2effe2              move.w   -$1e(a6),-(a7)                     
  03824  3f2effe0              move.w   -$20(a6),-(a7)                     
  03828  a880                  _SetPt                                      ; $a880
  0382a  486effa2              pea      -$5e(a6)                           
  0382e  3f2effe6              move.w   -$1a(a6),-(a7)                     
  03832  3f2effe4              move.w   -$1c(a6),-(a7)                     
  03836  a880                  _SetPt                                      ; $a880
  03838  302effe6              move.w   -$1a(a6),d0                        
  0383c  906effe2              sub.w    -$1e(a6),d0                        
  03840  48c0                  ext.l    d0                                 
  03842  81fc0002              divs.w   #2,d0                              
  03846  d06effe2              add.w    -$1e(a6),d0                        
  0384a  3d40ffb8              move.w   d0,-$48(a6)                        
  0384e  3c2effe4              move.w   -$1c(a6),d6                        
  03852  9c6effe0              sub.w    -$20(a6),d6                        
  03856  48c6                  ext.l    d6                                 
  03858  8dfc0002              divs.w   #2,d6                              
  0385c  dc6effe0              add.w    -$20(a6),d6                        
L3860:
  03860  3039ffff836c          move.w   g_7c94,d0                          
  03866  9045                  sub.w    d5,d0                              
  03868  3f00                  move.w   d0,-(a7)                           
  0386a  4ead024a              jsr      f2_7a2c                            
  0386e  5740                  subq.w   #3,d0                              
  03870  548f                  addq.l   #2,a7                              
  03872  6e16                  bgt.s    L388a                              
  03874  3039ffff836e          move.w   g_7c92,d0                          
  0387a  9044                  sub.w    d4,d0                              
  0387c  3f00                  move.w   d0,-(a7)                           
  0387e  4ead024a              jsr      f2_7a2c                            
  03882  5740                  subq.w   #3,d0                              
  03884  548f                  addq.l   #2,a7                              
  03886  6f000170              ble.w    L39f8                              
L388a:
  0388a  3003                  move.w   d3,d0                              
  0388c  5243                  addq.w   #1,d3                              
  0388e  48c0                  ext.l    d0                                 
  03890  81fc0003              divs.w   #3,d0                              
  03894  4840                  swap     d0                                 
  03896  3d40ffb2              move.w   d0,-$4e(a6)                        
  0389a  720a                  moveq    #10,d1                             
  0389c  2439ffff9828          move.l   g_67d8,d2                          
  038a2  4c412802              divs.l   d1,d2                              
  038a6  43eeff9e              lea      -$62(a6),a1                        
  038aa  2042                  movea.l  d2,a0                              
  038ac  a03b                  _Delay                                      ; $a03b
  038ae  2280                  move.l   d0,(a1)                            
  038b0  ba79ffff836c          cmp.w    g_7c94,d5                          
  038b6  6c04                  bge.s    L38bc                              
  038b8  7001                  moveq    #1,d0                              
  038ba  600e                  bra.s    L38ca                              
L38bc:
  038bc  ba79ffff836c          cmp.w    g_7c94,d5                          
  038c2  6f04                  ble.s    L38c8                              
  038c4  70ff                  moveq    #-1,d0                             
  038c6  6002                  bra.s    L38ca                              
L38c8:
  038c8  7000                  moveq    #0,d0                              
L38ca:
  038ca  3d40ffb0              move.w   d0,-$50(a6)                        
  038ce  b879ffff836e          cmp.w    g_7c92,d4                          
  038d4  6c04                  bge.s    L38da                              
  038d6  7001                  moveq    #1,d0                              
  038d8  600e                  bra.s    L38e8                              
L38da:
  038da  b879ffff836e          cmp.w    g_7c92,d4                          
  038e0  6f04                  ble.s    L38e6                              
  038e2  70ff                  moveq    #-1,d0                             
  038e4  6002                  bra.s    L38e8                              
L38e6:
  038e6  7000                  moveq    #0,d0                              
L38e8:
  038e8  3d40ffae              move.w   d0,-$52(a6)                        
  038ec  da6effb0              add.w    -$50(a6),d5                        
  038f0  d840                  add.w    d0,d4                              
  038f2  2079ffffac72          movea.l  g_538e,a0                          
  038f8  20680002              movea.l  $2(a0),a0                          
  038fc  2f10                  move.l   (a0),-(a7)                         
  038fe  2079ffff99f8          movea.l  g_6608,a0                          
  03904  20680002              movea.l  $2(a0),a0                          
  03908  2f10                  move.l   (a0),-(a7)                         
  0390a  322effb2              move.w   -$4e(a6),d1                        
  0390e  487616e8              pea      -$18(a6,d1.w*8)                    
  03912  486effe0              pea      -$20(a6)                           
  03916  3f3c0024              move.w   #$24,-(a7)                         
  0391a  42a7                  clr.l    -(a7)                              
  0391c  a8ec                  _CopyBits                                   ; $a8ec
  0391e  2079ffff99f8          movea.l  g_6608,a0                          
  03924  20680002              movea.l  $2(a0),a0                          
  03928  2f10                  move.l   (a0),-(a7)                         
  0392a  2079ffff9382          movea.l  g_6c7e,a0                          
  03930  48680002              pea      $2(a0)                             
  03934  486effd0              pea      -$30(a6)                           
  03938  486effd0              pea      -$30(a6)                           
  0393c  4267                  clr.w    -(a7)                              
  0393e  42a7                  clr.l    -(a7)                              
  03940  a8ec                  _CopyBits                                   ; $a8ec
  03942  2079ffff99fc          movea.l  g_6604,a0                          
  03948  20680002              movea.l  $2(a0),a0                          
  0394c  2f10                  move.l   (a0),-(a7)                         
  0394e  2079ffff99f8          movea.l  g_6608,a0                          
  03954  20680002              movea.l  $2(a0),a0                          
  03958  2f10                  move.l   (a0),-(a7)                         
  0395a  486effe0              pea      -$20(a6)                           
  0395e  486effe0              pea      -$20(a6)                           
  03962  4267                  clr.w    -(a7)                              
  03964  42a7                  clr.l    -(a7)                              
  03966  a8ec                  _CopyBits                                   ; $a8ec
  03968  302effe4              move.w   -$1c(a6),d0                        
  0396c  906effe0              sub.w    -$20(a6),d0                        
  03970  5b40                  subq.w   #5,d0                              
  03972  6f14                  ble.s    L3988                              
  03974  0c6e0002ffb2          cmpi.w   #2,-$4e(a6)                        
  0397a  660c                  bne.s    L3988                              
  0397c  486effe0              pea      -$20(a6)                           
  03980  2f3cfff5ffff          move.l   #$fff5ffff,-(a7)                   
  03986  a8a9                  _InsetRect                                  ; $a8a9
L3988:
  03988  0c6e0064ffb8          cmpi.w   #$64,-$48(a6)                      
  0398e  6f04                  ble.s    L3994                              
  03990  70fd                  moveq    #-3,d0                             
  03992  600e                  bra.s    L39a2                              
L3994:
  03994  0c6e0064ffb8          cmpi.w   #$64,-$48(a6)                      
  0399a  6c04                  bge.s    L39a0                              
  0399c  7003                  moveq    #3,d0                              
  0399e  6002                  bra.s    L39a2                              
L39a0:
  039a0  7000                  moveq    #0,d0                              
L39a2:
  039a2  3d40ffb0              move.w   d0,-$50(a6)                        
  039a6  0c460078              cmpi.w   #$78,d6                            
  039aa  6f04                  ble.s    L39b0                              
  039ac  70fd                  moveq    #-3,d0                             
  039ae  600c                  bra.s    L39bc                              
L39b0:
  039b0  0c460078              cmpi.w   #$78,d6                            
  039b4  6c04                  bge.s    L39ba                              
  039b6  7003                  moveq    #3,d0                              
  039b8  6002                  bra.s    L39bc                              
L39ba:
  039ba  7000                  moveq    #0,d0                              
L39bc:
  039bc  3d40ffae              move.w   d0,-$52(a6)                        
  039c0  486effe0              pea      -$20(a6)                           
  039c4  3f2effb0              move.w   -$50(a6),-(a7)                     
  039c8  3f00                  move.w   d0,-(a7)                           
  039ca  a8a8                  _OffsetRect                                 ; $a8a8
  039cc  302effe6              move.w   -$1a(a6),d0                        
  039d0  906effe2              sub.w    -$1e(a6),d0                        
  039d4  48c0                  ext.l    d0                                 
  039d6  81fc0002              divs.w   #2,d0                              
  039da  d06effe2              add.w    -$1e(a6),d0                        
  039de  3d40ffb8              move.w   d0,-$48(a6)                        
  039e2  3c2effe4              move.w   -$1c(a6),d6                        
  039e6  9c6effe0              sub.w    -$20(a6),d6                        
  039ea  48c6                  ext.l    d6                                 
  039ec  8dfc0002              divs.w   #2,d6                              
  039f0  dc6effe0              add.w    -$20(a6),d6                        
  039f4  6000fe6a              bra.w    L3860                              
L39f8:
  039f8  a89e                  _PenNormal                                  ; $a89e
  039fa  3f3c0003              move.w   #3,-(a7)                           
  039fe  4ead0242              jsr      f2_79a8                            
  03a02  4a40                  tst.w    d0                                 
  03a04  548f                  addq.l   #2,a7                              
  03a06  672e                  beq.s    L3a36                              
  03a08  6b2c                  bmi.s    L3a36                              
  03a0a  5740                  subq.w   #3,d0                              
  03a0c  671e                  beq.s    L3a2c                              
  03a0e  6a26                  bpl.s    L3a36                              
  03a10  5240                  addq.w   #1,d0                              
  03a12  6a0c                  bpl.s    L3a20                              
  03a14  3f3c07f8              move.w   #$7f8,-(a7)                        
  03a18  4ead030a              jsr      f3_4238                            
  03a1c  548f                  addq.l   #2,a7                              
  03a1e  6016                  bra.s    L3a36                              
L3a20:
  03a20  3f3c5c26              move.w   #$5c26,-(a7)                       
  03a24  4ead030a              jsr      f3_4238                            
  03a28  548f                  addq.l   #2,a7                              
  03a2a  600a                  bra.s    L3a36                              
L3a2c:
  03a2c  3f3c5bec              move.w   #$5bec,-(a7)                       
  03a30  4ead030a              jsr      f3_4238                            
  03a34  548f                  addq.l   #2,a7                              
L3a36:
  03a36  4ead031a              jsr      f3_4424                            
  03a3a  302effba              move.w   -$46(a6),d0                        
  03a3e  6b44                  bmi.s    L3a84                              
  03a40  04400088              subi.w   #$88,d0                            
  03a44  6720                  beq.s    L3a66                              
  03a46  6a06                  bpl.s    L3a4e                              
  03a48  5c40                  addq.w   #6,d0                              
  03a4a  670a                  beq.s    L3a56                              
  03a4c  6036                  bra.s    L3a84                              
L3a4e:
  03a4e  04400040              subi.w   #$40,d0                            
  03a52  6722                  beq.s    L3a76                              
  03a54  602e                  bra.s    L3a84                              
L3a56:
  03a56  3f3c4e20              move.w   #$4e20,-(a7)                       
  03a5a  486effd0              pea      -$30(a6)                           
  03a5e  4ead06d2              jsr      f7_1a72                            
  03a62  5c8f                  addq.l   #6,a7                              
  03a64  601e                  bra.s    L3a84                              
L3a66:
  03a66  3f3c4e21              move.w   #$4e21,-(a7)                       
  03a6a  486effd0              pea      -$30(a6)                           
  03a6e  4ead06d2              jsr      f7_1a72                            
  03a72  5c8f                  addq.l   #6,a7                              
  03a74  600e                  bra.s    L3a84                              
L3a76:
  03a76  3f3c4e22              move.w   #$4e22,-(a7)                       
  03a7a  486effd0              pea      -$30(a6)                           
  03a7e  4ead06d2              jsr      f7_1a72                            
  03a82  5c8f                  addq.l   #6,a7                              
L3a84:
  03a84  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  03a88  4e5e                  unlk     a6                                 
  03a8a  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_3a8c   [jump table #124]
;----------------------------------------------------------------------
f4_3a8c:
  03a8c  4e56fe82              link     a6,#-382                           
  03a90  48e70f38              movem.l  d4/d5/d6/d7/a2/a3/a4,-(a7)         
  03a94  3e2e0008              move.w   $8(a6),d7                          
  03a98  286e000a              movea.l  $a(a6),a4                          
  03a9c  7a00                  moveq    #0,d5                              
  03a9e  7800                  moveq    #0,d4                              
  03aa0  486eff36              pea      -$ca(a6)                           
  03aa4  a874                  _GetPort                                    ; $a874
  03aa6  4a54                  tst.w    (a4)                               
  03aa8  67000178              beq.w    L3c22                              
  03aac  0c470009              cmpi.w   #9,d7                              
  03ab0  622c                  bhi.s    L3ade                              
  03ab2  43fa0176              lea      L3c2a(pc),a1                       
  03ab6  d2f17200              adda.w   $0(a1,d7.w*2),a1                   
  03aba  4ed1                  jmp      (a1)                               
  03abc  45ed03ba              lea      f3_5b6c,a2                         
  03ac0  601c                  bra.s    L3ade                              
  03ac2  45ed0452              lea      f4_5288,a2                         
  03ac6  6016                  bra.s    L3ade                              
  03ac8  45ed02aa              lea      f3_22ac,a2                         
  03acc  6010                  bra.s    L3ade                              
  03ace  45ed05e2              lea      f5_3f4c,a2                         
  03ad2  600a                  bra.s    L3ade                              
  03ad4  45ed05d2              lea      f5_3dd0,a2                         
  03ad8  6004                  bra.s    L3ade                              
  03ada  45ed05ca              lea      f5_3c54,a2                         
L3ade:
  03ade  3f3c02bc              move.w   #$2bc,-(a7)                        
  03ae2  486efebe              pea      -$142(a6)                          
  03ae6  486eff4e              pea      -$b2(a6)                           
  03aea  4ead025a              jsr      f2_194e                            
  03aee  3ebc02c6              move.w   #$2c6,(a7)                         
  03af2  486efe82              pea      -$17e(a6)                          
  03af6  486eff50              pea      -$b0(a6)                           
  03afa  4ead025a              jsr      f2_194e                            
  03afe  2eb67520feee          move.l   (-$112,a6,d7.w*4),(a7)             
  03b04  2f3c00000486          move.l   STR_0486,-(a7)                     ; "?"
  03b0a  2f3c00000488          move.l   STR_0488,-(a7)                     ; "?"
  03b10  2f3c0000048a          move.l   STR_048a,-(a7)                     ; "?"
  03b16  a98b                  _ParamText                                  ; $a98b
  03b18  4297                  clr.l    (a7)                               
  03b1a  3f3c0104              move.w   #$104,-(a7)                        
  03b1e  486eff56              pea      -$aa(a6)                           
  03b22  4878ffff              pea      ($ffff).w                          
  03b26  a97c                  _GetNewDialog                               ; $a97c
  03b28  265f                  movea.l  (a7)+,a3                           
  03b2a  2e8b                  move.l   a3,(a7)                            
  03b2c  4ead06ba              jsr      f7_161c                            
  03b30  2e8b                  move.l   a3,(a7)                            
  03b32  a873                  _SetPort                                    ; $a873
  03b34  2e8b                  move.l   a3,(a7)                            
  03b36  3f3c0006              move.w   #6,-(a7)                           
  03b3a  486eff52              pea      -$ae(a6)                           
  03b3e  486eff46              pea      -$ba(a6)                           
  03b42  486eff3a              pea      -$c6(a6)                           
  03b46  a98d                  _GetDialogItem                              ; $a98d
  03b48  2f2eff46              move.l   -$ba(a6),-(a7)                     
  03b4c  2f367520fe82          move.l   (-$17e,a6,d7.w*4),-(a7)            
  03b52  a95f                  _SetCTitle                                  ; $a95f
  03b54  2f2eff46              move.l   -$ba(a6),-(a7)                     
  03b58  3f3c00ff              move.w   #$ff,-(a7)                         
  03b5c  a95d                  _HiliteControl                              ; $a95d
  03b5e  0c470003              cmpi.w   #3,d7                              
  03b62  548f                  addq.l   #2,a7                              
  03b64  6608                  bne.s    L3b6e                              
  03b66  2f0b                  move.l   a3,-(a7)                           
  03b68  3f3c0006              move.w   #6,-(a7)                           
  03b6c  a827                  _ShowDialogItem                             ; $a827
L3b6e:
  03b6e  2f0b                  move.l   a3,-(a7)                           
  03b70  3f3c0007              move.w   #7,-(a7)                           
  03b74  486eff52              pea      -$ae(a6)                           
  03b78  486eff42              pea      -$be(a6)                           
  03b7c  486eff3a              pea      -$c6(a6)                           
  03b80  a98d                  _GetDialogItem                              ; $a98d
  03b82  2f2eff42              move.l   -$be(a6),-(a7)                     
  03b86  3f3c00ff              move.w   #$ff,-(a7)                         
  03b8a  a95d                  _HiliteControl                              ; $a95d
L3b8c:
  03b8c  2f2e000e              move.l   $e(a6),-(a7)                       
  03b90  2f0c                  move.l   a4,-(a7)                           
  03b92  2f0b                  move.l   a3,-(a7)                           
  03b94  4ead00fa              jsr      f2_332e                            
  03b98  2e8a                  move.l   a2,(a7)                            
  03b9a  2f2e000e              move.l   $e(a6),-(a7)                       
  03b9e  2f0c                  move.l   a4,-(a7)                           
  03ba0  2f0b                  move.l   a3,-(a7)                           
  03ba2  3f07                  move.w   d7,-(a7)                           
  03ba4  4eba0098              jsr      f4_3c3e                            
  03ba8  1800                  move.b   d0,d4                              
  03baa  0c470003              cmpi.w   #3,d7                              
  03bae  4fef001a              lea      $1a(a7),a7                         
  03bb2  6604                  bne.s    L3bb8                              
  03bb4  4ead075a              jsr      f7_31f0                            
L3bb8:
  03bb8  2f367520feee          move.l   (-$112,a6,d7.w*4),-(a7)            
  03bbe  2f3c0000048c          move.l   STR_048c,-(a7)                     ; "?"
  03bc4  2f3c0000048e          move.l   STR_048e,-(a7)                     ; "?"
  03bca  2f3c00000490          move.l   STR_0490,-(a7)                     ; "?"
  03bd0  a98b                  _ParamText                                  ; $a98b
  03bd2  4a04                  tst.b    d4                                 
  03bd4  67b6                  beq.s    L3b8c                              
  03bd6  2f0b                  move.l   a3,-(a7)                           
  03bd8  a983                  _DisposeDialog                              ; $a983
  03bda  206eff46              movea.l  -$ba(a6),a0                        
  03bde  a023                  _DisposeHandle                              ; $a023
  03be0  206eff42              movea.l  -$be(a6),a0                        
  03be4  a023                  _DisposeHandle                              ; $a023
  03be6  7c01                  moveq    #1,d6                              
  03be8  600a                  bra.s    L3bf4                              
L3bea:
  03bea  20766520febe          movea.l  (-$142,a6,d6.w*4),a0               
  03bf0  a01f                  _DisposePtr                                 ; $a01f
  03bf2  5246                  addq.w   #1,d6                              
L3bf4:
  03bf4  bc6eff4e              cmp.w    -$b2(a6),d6                        
  03bf8  6ff0                  ble.s    L3bea                              
  03bfa  7c01                  moveq    #1,d6                              
  03bfc  600a                  bra.s    L3c08                              
L3bfe:
  03bfe  20766520fe82          movea.l  (-$17e,a6,d6.w*4),a0               
  03c04  a01f                  _DisposePtr                                 ; $a01f
  03c06  5246                  addq.w   #1,d6                              
L3c08:
  03c08  bc6eff50              cmp.w    -$b0(a6),d6                        
  03c0c  6ff0                  ble.s    L3bfe                              
  03c0e  1f3c0001              move.b   #1,-(a7)                           
  03c12  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  03c18  4ead016a              jsr      f2_549e                            
  03c1c  2eaeff36              move.l   -$ca(a6),(a7)                      
  03c20  a873                  _SetPort                                    ; $a873
L3c22:
  03c22  4cdf1cf0              movem.l  (a7)+,d4/d5/d6/d7/a2/a3/a4         
  03c26  4e5e                  unlk     a6                                 
  03c28  4e75                  rts                                         
  03c2a  feb4                  dc.w     $feb4                              
  03c2c  fe92                  dc.w     $fe92                              
  03c2e  fe98                  dc.w     $fe98                              
  03c30  fe9e                  dc.w     $fe9e                              
  03c32  feb4                  dc.w     $feb4                              
  03c34  feb4                  dc.w     $feb4                              
  03c36  feb4                  dc.w     $feb4                              
  03c38  fea4                  dc.w     $fea4                              
  03c3a  feaa                  dc.w     $feaa                              
  03c3c  feb0                  dc.w     $feb0                              

;----------------------------------------------------------------------
; f4_3c3e
;----------------------------------------------------------------------
f4_3c3e:
  03c3e  4e56fde8              link     a6,#-536                           
  03c42  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  03c46  286e000a              movea.l  $a(a6),a4                          
  03c4a  3e2e0008              move.w   $8(a6),d7                          
  03c4e  7c00                  moveq    #0,d6                              
  03c50  2f0c                  move.l   a4,-(a7)                           
  03c52  3f3c0006              move.w   #6,-(a7)                           
  03c56  486efffc              pea      -$4(a6)                            
  03c5a  486effec              pea      -$14(a6)                           
  03c5e  486efff4              pea      -$c(a6)                            
  03c62  a98d                  _GetDialogItem                              ; $a98d
  03c64  2f0c                  move.l   a4,-(a7)                           
  03c66  3f3c0007              move.w   #7,-(a7)                           
  03c6a  486efffc              pea      -$4(a6)                            
  03c6e  486effe8              pea      -$18(a6)                           
  03c72  486efff4              pea      -$c(a6)                            
  03c76  a98d                  _GetDialogItem                              ; $a98d
  03c78  486efde8              pea      -$218(a6)                          
  03c7c  2f3c000902c6          move.l   #$902c6,-(a7)                      
  03c82  4ebad8b8              jsr      f4_153c                            
  03c86  486efee8              pea      -$118(a6)                          
  03c8a  2f3c000a02c6          move.l   #$a02c6,-(a7)                      
  03c90  4ebad8aa              jsr      f4_153c                            
L3c94:
  03c94  42a7                  clr.l    -(a7)                              
  03c96  486efffe              pea      -$2(a6)                            
  03c9a  a991                  _ModalDialog                                ; $a991
  03c9c  302efffe              move.w   -$2(a6),d0                         
  03ca0  670001ac              beq.w    L3e4e                              
  03ca4  6b0001a8              bmi.w    L3e4e                              
  03ca8  5f40                  subq.w   #7,d0                              
  03caa  6700017a              beq.w    L3e26                              
  03cae  6a08                  bpl.s    L3cb8                              
  03cb0  5240                  addq.w   #1,d0                              
  03cb2  6a000146              bpl.w    L3dfa                              
  03cb6  6006                  bra.s    L3cbe                              
L3cb8:
  03cb8  5540                  subq.w   #2,d0                              
  03cba  60000192              bra.w    L3e4e                              
L3cbe:
  03cbe  4a46                  tst.w    d6                                 
  03cc0  671a                  beq.s    L3cdc                              
  03cc2  2f0c                  move.l   a4,-(a7)                           
  03cc4  3f06                  move.w   d6,-(a7)                           
  03cc6  486efffc              pea      -$4(a6)                            
  03cca  486efff0              pea      -$10(a6)                           
  03cce  486efff4              pea      -$c(a6)                            
  03cd2  a98d                  _GetDialogItem                              ; $a98d
  03cd4  2f2efff0              move.l   -$10(a6),-(a7)                     
  03cd8  4267                  clr.w    -(a7)                              
  03cda  a963                  _SetCtlValue                                ; $a963
L3cdc:
  03cdc  3c2efffe              move.w   -$2(a6),d6                         
  03ce0  2f0c                  move.l   a4,-(a7)                           
  03ce2  3f2efffe              move.w   -$2(a6),-(a7)                      
  03ce6  486efffc              pea      -$4(a6)                            
  03cea  486efff0              pea      -$10(a6)                           
  03cee  486efff4              pea      -$c(a6)                            
  03cf2  a98d                  _GetDialogItem                              ; $a98d
  03cf4  2f2efff0              move.l   -$10(a6),-(a7)                     
  03cf8  3f3c0001              move.w   #1,-(a7)                           
  03cfc  a963                  _SetCtlValue                                ; $a963
  03cfe  2f2effec              move.l   -$14(a6),-(a7)                     
  03d02  4267                  clr.w    -(a7)                              
  03d04  a95d                  _HiliteControl                              ; $a95d
  03d06  2f2effe8              move.l   -$18(a6),-(a7)                     
  03d0a  4267                  clr.w    -(a7)                              
  03d0c  a95d                  _HiliteControl                              ; $a95d
  03d0e  0c470006              cmpi.w   #6,d7                              
  03d12  6f00013a              ble.w    L3e4e                              
  03d16  0c47000a              cmpi.w   #$a,d7                             
  03d1a  6c000132              bge.w    L3e4e                              
  03d1e  3007                  move.w   d7,d0                              
  03d20  6b00012c              bmi.w    L3e4e                              
  03d24  5140                  subq.w   #8,d0                              
  03d26  67000096              beq.w    L3dbe                              
  03d2a  6a08                  bpl.s    L3d34                              
  03d2c  5240                  addq.w   #1,d0                              
  03d2e  6a0c                  bpl.s    L3d3c                              
  03d30  6000011c              bra.w    L3e4e                              
L3d34:
  03d34  5540                  subq.w   #2,d0                              
  03d36  6a000116              bpl.w    L3e4e                              
  03d3a  6042                  bra.s    L3d7e                              
L3d3c:
  03d3c  7ac8                  moveq    #-56,d5                            
  03d3e  da7063b0ffff8e4a      add.w    (-$71b6,za0,d6.w*2),d5             
  03d46  4a3051b0ffff9858      tst.b    (-$67a8,za0,d5.w)                  
  03d4e  6718                  beq.s    L3d68                              
  03d50  2f2effec              move.l   -$14(a6),-(a7)                     
  03d54  486efee8              pea      -$118(a6)                          
  03d58  a95f                  _SetCTitle                                  ; $a95f
  03d5a  2f2effe8              move.l   -$18(a6),-(a7)                     
  03d5e  3f3c00ff              move.w   #$ff,-(a7)                         
  03d62  a95d                  _HiliteControl                              ; $a95d
  03d64  600000e8              bra.w    L3e4e                              
L3d68:
  03d68  2f2effec              move.l   -$14(a6),-(a7)                     
  03d6c  486efde8              pea      -$218(a6)                          
  03d70  a95f                  _SetCTitle                                  ; $a95f
  03d72  2f2effe8              move.l   -$18(a6),-(a7)                     
  03d76  4267                  clr.w    -(a7)                              
  03d78  a95d                  _HiliteControl                              ; $a95d
  03d7a  600000d2              bra.w    L3e4e                              
L3d7e:
  03d7e  307063b0ffff97d2      movea.w  (-$682e,za0,d6.w*2),a0             
  03d86  d1fcffff980f          adda.l   #$ffff980f,a0                      
  03d8c  4a10                  tst.b    (a0)                               
  03d8e  6718                  beq.s    L3da8                              
  03d90  2f2effec              move.l   -$14(a6),-(a7)                     
  03d94  486efee8              pea      -$118(a6)                          
  03d98  a95f                  _SetCTitle                                  ; $a95f
  03d9a  2f2effe8              move.l   -$18(a6),-(a7)                     
  03d9e  3f3c00ff              move.w   #$ff,-(a7)                         
  03da2  a95d                  _HiliteControl                              ; $a95d
  03da4  600000a8              bra.w    L3e4e                              
L3da8:
  03da8  2f2effec              move.l   -$14(a6),-(a7)                     
  03dac  486efde8              pea      -$218(a6)                          
  03db0  a95f                  _SetCTitle                                  ; $a95f
  03db2  2f2effe8              move.l   -$18(a6),-(a7)                     
  03db6  4267                  clr.w    -(a7)                              
  03db8  a95d                  _HiliteControl                              ; $a95d
  03dba  60000092              bra.w    L3e4e                              
L3dbe:
  03dbe  307063b0ffff8e56      movea.w  (-$71aa,za0,d6.w*2),a0             
  03dc6  d1fcffff8db8          adda.l   #$ffff8db8,a0                      
  03dcc  4a10                  tst.b    (a0)                               
  03dce  6716                  beq.s    L3de6                              
  03dd0  2f2effec              move.l   -$14(a6),-(a7)                     
  03dd4  486efee8              pea      -$118(a6)                          
  03dd8  a95f                  _SetCTitle                                  ; $a95f
  03dda  2f2effe8              move.l   -$18(a6),-(a7)                     
  03dde  3f3c00ff              move.w   #$ff,-(a7)                         
  03de2  a95d                  _HiliteControl                              ; $a95d
  03de4  6068                  bra.s    L3e4e                              
L3de6:
  03de6  2f2effec              move.l   -$14(a6),-(a7)                     
  03dea  486efde8              pea      -$218(a6)                          
  03dee  a95f                  _SetCTitle                                  ; $a95f
  03df0  2f2effe8              move.l   -$18(a6),-(a7)                     
  03df4  4267                  clr.w    -(a7)                              
  03df6  a95d                  _HiliteControl                              ; $a95d
  03df8  6054                  bra.s    L3e4e                              
L3dfa:
  03dfa  4a46                  tst.w    d6                                 
  03dfc  6f22                  ble.s    L3e20                              
  03dfe  1f3c0001              move.b   #1,-(a7)                           
  03e02  3f06                  move.w   d6,-(a7)                           
  03e04  206e0016              movea.l  $16(a6),a0                         
  03e08  4e90                  jsr      (a0)                               
  03e0a  2eaeffec              move.l   -$14(a6),(a7)                      
  03e0e  3f3c00ff              move.w   #$ff,-(a7)                         
  03e12  a95d                  _HiliteControl                              ; $a95d
  03e14  2f2effe8              move.l   -$18(a6),-(a7)                     
  03e18  3f3c00ff              move.w   #$ff,-(a7)                         
  03e1c  a95d                  _HiliteControl                              ; $a95d
  03e1e  602e                  bra.s    L3e4e                              
L3e20:
  03e20  426efffe              clr.w    -$2(a6)                            
  03e24  6028                  bra.s    L3e4e                              
L3e26:
  03e26  4a46                  tst.w    d6                                 
  03e28  6f20                  ble.s    L3e4a                              
  03e2a  4227                  clr.b    -(a7)                              
  03e2c  3f06                  move.w   d6,-(a7)                           
  03e2e  206e0016              movea.l  $16(a6),a0                         
  03e32  4e90                  jsr      (a0)                               
  03e34  2eaeffec              move.l   -$14(a6),(a7)                      
  03e38  3f3c00ff              move.w   #$ff,-(a7)                         
  03e3c  a95d                  _HiliteControl                              ; $a95d
  03e3e  2f2effe8              move.l   -$18(a6),-(a7)                     
  03e42  3f3c00ff              move.w   #$ff,-(a7)                         
  03e46  a95d                  _HiliteControl                              ; $a95d
  03e48  6004                  bra.s    L3e4e                              
L3e4a:
  03e4a  426efffe              clr.w    -$2(a6)                            
L3e4e:
  03e4e  0c6e0006fffe          cmpi.w   #6,-$2(a6)                         
  03e54  6d00fe3e              blt.w    L3c94                              
  03e58  206e000e              movea.l  $e(a6),a0                          
  03e5c  4a50                  tst.w    (a0)                               
  03e5e  6708                  beq.s    L3e68                              
  03e60  0c6e0008fffe          cmpi.w   #8,-$2(a6)                         
  03e66  6604                  bne.s    L3e6c                              
L3e68:
  03e68  7001                  moveq    #1,d0                              
  03e6a  6002                  bra.s    L3e6e                              
L3e6c:
  03e6c  7000                  moveq    #0,d0                              
L3e6e:
  03e6e  4cdf10e0              movem.l  (a7)+,d5/d6/d7/a4                  
  03e72  4e5e                  unlk     a6                                 
  03e74  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_3e76
;----------------------------------------------------------------------
f4_3e76:
  03e76  4e56fff6              link     a6,#-10                            
  03e7a  48e70300              movem.l  d6/d7,-(a7)                        
  03e7e  7e01                  moveq    #1,d7                              
  03e80  6000016e              bra.w    L3ff0                              
L3e84:
  03e84  3f07                  move.w   d7,-(a7)                           
  03e86  486efff6              pea      -$a(a6)                            
  03e8a  486efff8              pea      -$8(a6)                            
  03e8e  486efffa              pea      -$6(a6)                            
  03e92  486efffc              pea      -$4(a6)                            
  03e96  4eba28bc              jsr      f4_6754                            
  03e9a  3ebc0064              move.w   #$64,(a7)                          
  03e9e  4ead0242              jsr      f2_79a8                            
  03ea2  0c400041              cmpi.w   #$41,d0                            
  03ea6  4fef0012              lea      $12(a7),a7                         
  03eaa  6f00013a              ble.w    L3fe6                              
  03eae  be79ffff8888          cmp.w    g_7778,d7                          
  03eb4  67000130              beq.w    L3fe6                              
  03eb8  0c79000affff8894      cmpi.w   #$a,g_776c                         
  03ec0  6e22                  bgt.s    L3ee4                              
  03ec2  3f3c000a              move.w   #$a,-(a7)                          
  03ec6  4ead0242              jsr      f2_79a8                            
  03eca  72ff                  moveq    #-1,d1                             
  03ecc  d279ffff8894          add.w    g_776c,d1                          
  03ed2  c3fc000a              muls.w   #$a,d1                             
  03ed6  d041                  add.w    d1,d0                              
  03ed8  318073b0ffff8c78      move.w   d0,(-$7388,za0,d7.w*2)             
  03ee0  548f                  addq.l   #2,a7                              
  03ee2  6012                  bra.s    L3ef6                              
L3ee4:
  03ee4  3f3c0064              move.w   #$64,-(a7)                         
  03ee8  4ead0242              jsr      f2_79a8                            
  03eec  318073b0ffff8c78      move.w   d0,(-$7388,za0,d7.w*2)             
  03ef4  548f                  addq.l   #2,a7                              
L3ef6:
  03ef6  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  03efe  3f3003b0ffff7156      move.w   (-$8eaa,za0,d0.w*2),-(a7)          
  03f06  4ead0242              jsr      f2_79a8                            
  03f0a  318073b0ffff8ca2      move.w   d0,(-$735e,za0,d7.w*2)             
  03f12  0c79000affff8894      cmpi.w   #$a,g_776c                         
  03f1a  548f                  addq.l   #2,a7                              
  03f1c  6f14                  ble.s    L3f32                              
  03f1e  3f3c0006              move.w   #6,-(a7)                           
  03f22  4ead0242              jsr      f2_79a8                            
  03f26  5340                  subq.w   #1,d0                              
  03f28  917073b0ffff8ca2      sub.w    d0,(-$735e,za0,d7.w*2)             
  03f30  548f                  addq.l   #2,a7                              
L3f32:
  03f32  7c01                  moveq    #1,d6                              
  03f34  6020                  bra.s    L3f56                              
L3f36:
  03f36  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  03f3e  3f3003b0ffff7258      move.w   (-$8da8,za0,d0.w*2),-(a7)          
  03f46  4ead0242              jsr      f2_79a8                            
  03f4a  d17073b0ffff8ccc      add.w    d0,(-$7334,za0,d7.w*2)             
  03f52  548f                  addq.l   #2,a7                              
  03f54  5246                  addq.w   #1,d6                              
L3f56:
  03f56  bc79ffff8894          cmp.w    g_776c,d6                          
  03f5c  6fd8                  ble.s    L3f36                              
  03f5e  0c79000affff8894      cmpi.w   #$a,g_776c                         
  03f66  6f44                  ble.s    L3fac                              
  03f68  3f3c0064              move.w   #$64,-(a7)                         
  03f6c  4ead0242              jsr      f2_79a8                            
  03f70  0c400050              cmpi.w   #$50,d0                            
  03f74  548f                  addq.l   #2,a7                              
  03f76  6f34                  ble.s    L3fac                              
  03f78  7c01                  moveq    #1,d6                              
  03f7a  6020                  bra.s    L3f9c                              
L3f7c:
  03f7c  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  03f84  3f3003b0ffff7258      move.w   (-$8da8,za0,d0.w*2),-(a7)          
  03f8c  4ead0242              jsr      f2_79a8                            
  03f90  d17073b0ffff8ccc      add.w    d0,(-$7334,za0,d7.w*2)             
  03f98  548f                  addq.l   #2,a7                              
  03f9a  5246                  addq.w   #1,d6                              
L3f9c:
  03f9c  3079ffff8894          movea.w  g_776c,a0                          
  03fa2  2008                  move.l   a0,d0                              
  03fa4  81fc0002              divs.w   #2,d0                              
  03fa8  b046                  cmp.w    d6,d0                              
  03faa  6cd0                  bge.s    L3f7c                              
L3fac:
  03fac  31b073b0ffff8ccc73b0  move.w   (-$7334,za0,d7.w*2),(-$730a,za0,d7.w*2)
  03fba  3f2efff6              move.w   -$a(a6),-(a7)                      
  03fbe  3f2efff8              move.w   -$8(a6),-(a7)                      
  03fc2  3f2efffa              move.w   -$6(a6),-(a7)                      
  03fc6  3f2efffc              move.w   -$4(a6),-(a7)                      
  03fca  3f07                  move.w   d7,-(a7)                           
  03fcc  487073b0ffff8c4e      pea      (-$73b2,za0,d7.w*2)                
  03fd4  487073b0ffff8c24      pea      (-$73dc,za0,d7.w*2)                
  03fdc  4eba271c              jsr      f4_66fa                            
  03fe0  4fef0012              lea      $12(a7),a7                         
  03fe4  6008                  bra.s    L3fee                              
L3fe6:
  03fe6  427073b0ffff8c78      clr.w    (-$7388,za0,d7.w*2)                
L3fee:
  03fee  5247                  addq.w   #1,d7                              
L3ff0:
  03ff0  be79ffff883e          cmp.w    g_77c2,d7                          
  03ff6  6f00fe8c              ble.w    L3e84                              
  03ffa  4cdf00c0              movem.l  (a7)+,d6/d7                        
  03ffe  4e5e                  unlk     a6                                 
  04000  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_4002   [jump table #125]
;----------------------------------------------------------------------
f4_4002:
  04002  4e560000              link     a6,#0                              
  04006  2f07                  move.l   d7,-(a7)                           
  04008  7e00                  moveq    #0,d7                              
  0400a  4279ffff8894          clr.w    g_776c                             
  04010  4eba002e              jsr      f4_4040                            
  04014  7e01                  moveq    #1,d7                              
  04016  601c                  bra.s    L4034                              
L4018:
  04018  5279ffff8894          addq.w   #1,g_776c                          
  0401e  1f3c0001              move.b   #1,-(a7)                           
  04022  4ead027a              jsr      f3_071e                            
  04026  3eb9ffff8894          move.w   g_776c,(a7)                        
  0402c  4eba05e0              jsr      f4_460e                            
  04030  548f                  addq.l   #2,a7                              
  04032  5247                  addq.w   #1,d7                              
L4034:
  04034  0c470015              cmpi.w   #$15,d7                            
  04038  6dde                  blt.s    L4018                              
  0403a  2e1f                  move.l   (a7)+,d7                           
  0403c  4e5e                  unlk     a6                                 
  0403e  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_4040
;----------------------------------------------------------------------
f4_4040:
  04040  4e560000              link     a6,#0                              
  04044  2f07                  move.l   d7,-(a7)                           
  04046  7e00                  moveq    #0,d7                              
  04048  3f3c0002              move.w   #2,-(a7)                           
  0404c  4ead0242              jsr      f2_79a8                            
  04050  5640                  addq.w   #3,d0                              
  04052  318073b0ffff3b00      move.w   d0,(-$c500,za0,d7.w*2)             
  0405a  7e01                  moveq    #1,d7                              
  0405c  548f                  addq.l   #2,a7                              
  0405e  601e                  bra.s    L407e                              
L4060:
  04060  3f3c0002              move.w   #2,-(a7)                           
  04064  4ead0242              jsr      f2_79a8                            
  04068  d07073b0ffff3afe      add.w    (-$c502,za0,d7.w*2),d0             
  04070  5640                  addq.w   #3,d0                              
  04072  318073b0ffff3b00      move.w   d0,(-$c500,za0,d7.w*2)             
  0407a  548f                  addq.l   #2,a7                              
  0407c  5247                  addq.w   #1,d7                              
L407e:
  0407e  0c470004              cmpi.w   #4,d7                              
  04082  6ddc                  blt.s    L4060                              
  04084  2e1f                  move.l   (a7)+,d7                           
  04086  4e5e                  unlk     a6                                 
  04088  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_408a
;----------------------------------------------------------------------
f4_408a:
  0408a  4e56fff6              link     a6,#-10                            
  0408e  48e70700              movem.l  d5/d6/d7,-(a7)                     
  04092  7a00                  moveq    #0,d5                              
  04094  7c00                  moveq    #0,d6                              
  04096  6076                  bra.s    L410e                              
L4098:
  04098  3f39ffff883e          move.w   g_77c2,-(a7)                       
  0409e  4ead0242              jsr      f2_79a8                            
  040a2  3e00                  move.w   d0,d7                              
  040a4  548f                  addq.l   #2,a7                              
  040a6  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  040ae  66e8                  bne.s    L4098                              
  040b0  3006                  move.w   d6,d0                              
  040b2  06401f40              addi.w   #$1f40,d0                          
  040b6  318073b0ffff8b7c      move.w   d0,(-$7484,za0,d7.w*2)             
  040be  7048                  moveq    #72,d0                             
  040c0  d046                  add.w    d6,d0                              
  040c2  318073b0ffff8ba6      move.w   d0,(-$745a,za0,d7.w*2)             
  040ca  3f07                  move.w   d7,-(a7)                           
  040cc  486efff6              pea      -$a(a6)                            
  040d0  486efff8              pea      -$8(a6)                            
  040d4  486efffa              pea      -$6(a6)                            
  040d8  486efffc              pea      -$4(a6)                            
  040dc  4eba2676              jsr      f4_6754                            
  040e0  3eaefff6              move.w   -$a(a6),(a7)                       
  040e4  3f2efff8              move.w   -$8(a6),-(a7)                      
  040e8  3f2efffa              move.w   -$6(a6),-(a7)                      
  040ec  3f2efffc              move.w   -$4(a6),-(a7)                      
  040f0  3f07                  move.w   d7,-(a7)                           
  040f2  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  040fa  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  04102  4eba25f6              jsr      f4_66fa                            
  04106  7a01                  moveq    #1,d5                              
  04108  4fef0022              lea      $22(a7),a7                         
  0410c  5246                  addq.w   #1,d6                              
L410e:
  0410e  0c460004              cmpi.w   #4,d6                              
  04112  6d84                  blt.s    L4098                              
  04114  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  04118  4e5e                  unlk     a6                                 
  0411a  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_411c   [jump table #126]
;----------------------------------------------------------------------
f4_411c:
  0411c  4e560000              link     a6,#0                              
  04120  48e70700              movem.l  d5/d6/d7,-(a7)                     
  04124  3e2e0008              move.w   $8(a6),d7                          
  04128  4ead0072              jsr      f2_0404                            
  0412c  303c0228              move.w   #$228,d0                           
  04130  c1c7                  muls.w   d7,d0                              
  04132  33f009b0ffff3b20ffff  move.w   (-$c4e0,za0,d0.l),g_77c2           
  0413e  7c01                  moveq    #1,d6                              
  04140  60000196              bra.w    L42d8                              
L4144:
  04144  303c0228              move.w   #$228,d0                           
  04148  c1c7                  muls.w   d7,d0                              
  0414a  0680ffff3b22          addi.l   #$ffff3b22,d0                      
  04150  41f06790              lea      ($0,za0,d6.w*8),a0                 
  04154  31b0080063b0ffff8ad4  move.w   $0(a0,d0.l),(-$752c,za0,d6.w*2)    
  0415e  303c0228              move.w   #$228,d0                           
  04162  c1c7                  muls.w   d7,d0                              
  04164  0680ffff3b22          addi.l   #$ffff3b22,d0                      
  0416a  41f06790              lea      ($0,za0,d6.w*8),a0                 
  0416e  31b0080263b0ffff8afe  move.w   $2(a0,d0.l),(-$7502,za0,d6.w*2)    
  04178  303c0228              move.w   #$228,d0                           
  0417c  c1c7                  muls.w   d7,d0                              
  0417e  0680ffff3b22          addi.l   #$ffff3b22,d0                      
  04184  41f06790              lea      ($0,za0,d6.w*8),a0                 
  04188  31b0080463b0ffff8b28  move.w   $4(a0,d0.l),(-$74d8,za0,d6.w*2)    
  04192  303c0228              move.w   #$228,d0                           
  04196  c1c7                  muls.w   d7,d0                              
  04198  0680ffff3b22          addi.l   #$ffff3b22,d0                      
  0419e  41f06790              lea      ($0,za0,d6.w*8),a0                 
  041a2  31b0080663b0ffff8b52  move.w   $6(a0,d0.l),(-$74ae,za0,d6.w*2)    
  041ac  7a00                  moveq    #0,d5                              
  041ae  602c                  bra.s    L41dc                              
L41b0:
  041b0  303c0228              move.w   #$228,d0                           
  041b4  c1c7                  muls.w   d7,d0                              
  041b6  722a                  moveq    #42,d1                             
  041b8  c3c5                  muls.w   d5,d1                              
  041ba  0680ffff3be0          addi.l   #$ffff3be0,d0                      
  041c0  d081                  add.l    d1,d0                              
  041c2  3046                  movea.w  d6,a0                              
  041c4  d1c8                  adda.l   a0,a0                              
  041c6  722a                  moveq    #42,d1                             
  041c8  c3c5                  muls.w   d5,d1                              
  041ca  0681ffff8a2c          addi.l   #$ffff8a2c,d1                      
  041d0  3246                  movea.w  d6,a1                              
  041d2  d3c9                  adda.l   a1,a1                              
  041d4  33b008001800          move.w   $0(a0,d0.l),$0(a1,d1.l)            
  041da  5245                  addq.w   #1,d5                              
L41dc:
  041dc  0c450004              cmpi.w   #4,d5                              
  041e0  6dce                  blt.s    L41b0                              
  041e2  7a00                  moveq    #0,d5                              
  041e4  6056                  bra.s    L423c                              
L41e6:
  041e6  303c0228              move.w   #$228,d0                           
  041ea  c1c7                  muls.w   d7,d0                              
  041ec  722a                  moveq    #42,d1                             
  041ee  c3c5                  muls.w   d5,d1                              
  041f0  0680ffff3c88          addi.l   #$ffff3c88,d0                      
  041f6  d081                  add.l    d1,d0                              
  041f8  3046                  movea.w  d6,a0                              
  041fa  d1c8                  adda.l   a0,a0                              
  041fc  722a                  moveq    #42,d1                             
  041fe  c3c5                  muls.w   d5,d1                              
  04200  0681ffff8d4a          addi.l   #$ffff8d4a,d1                      
  04206  3246                  movea.w  d6,a1                              
  04208  d3c9                  adda.l   a1,a1                              
  0420a  33b008001800          move.w   $0(a0,d0.l),$0(a1,d1.l)            
  04210  303c0228              move.w   #$228,d0                           
  04214  c1c7                  muls.w   d7,d0                              
  04216  722a                  moveq    #42,d1                             
  04218  c3c5                  muls.w   d5,d1                              
  0421a  0680ffff3cdc          addi.l   #$ffff3cdc,d0                      
  04220  d081                  add.l    d1,d0                              
  04222  3046                  movea.w  d6,a0                              
  04224  d1c8                  adda.l   a0,a0                              
  04226  722a                  moveq    #42,d1                             
  04228  c3c5                  muls.w   d5,d1                              
  0422a  0681ffff8b7c          addi.l   #$ffff8b7c,d1                      
  04230  3246                  movea.w  d6,a1                              
  04232  d3c9                  adda.l   a1,a1                              
  04234  33b008001800          move.w   $0(a0,d0.l),$0(a1,d1.l)            
  0423a  5245                  addq.w   #1,d5                              
L423c:
  0423c  0c450002              cmpi.w   #2,d5                              
  04240  6da4                  blt.s    L41e6                              
  04242  303c0228              move.w   #$228,d0                           
  04246  c1c7                  muls.w   d7,d0                              
  04248  33f009b0ffff3d30ffff  move.w   (-$c2d0,za0,d0.l),g_7778           
  04254  303c0228              move.w   #$228,d0                           
  04258  c1c7                  muls.w   d7,d0                              
  0425a  33f009b0ffff3d32ffff  move.w   (-$c2ce,za0,d0.l),g_776e           
  04266  7a00                  moveq    #0,d5                              
  04268  601c                  bra.s    L4286                              
L426a:
  0426a  303c0228              move.w   #$228,d0                           
  0426e  c1c7                  muls.w   d7,d0                              
  04270  0680ffff3d34          addi.l   #$ffff3d34,d0                      
  04276  3045                  movea.w  d5,a0                              
  04278  d1c8                  adda.l   a0,a0                              
  0427a  31b0080053b0ffff888a  move.w   $0(a0,d0.l),(-$7776,za0,d5.w*2)    
  04284  5245                  addq.w   #1,d5                              
L4286:
  04286  0c450004              cmpi.w   #4,d5                              
  0428a  6dde                  blt.s    L426a                              
  0428c  303c0228              move.w   #$228,d0                           
  04290  c1c7                  muls.w   d7,d0                              
  04292  33f009b0ffff3d3cffff  move.w   (-$c2c4,za0,d0.l),g_77b4           
  0429e  303c0228              move.w   #$228,d0                           
  042a2  c1c7                  muls.w   d7,d0                              
  042a4  33f009b0ffff3d3effff  move.w   (-$c2c2,za0,d0.l),g_77b2           
  042b0  7a00                  moveq    #0,d5                              
  042b2  601c                  bra.s    L42d0                              
L42b4:
  042b4  303c0228              move.w   #$228,d0                           
  042b8  c1c7                  muls.w   d7,d0                              
  042ba  0680ffff3d40          addi.l   #$ffff3d40,d0                      
  042c0  3045                  movea.w  d5,a0                              
  042c2  d1c8                  adda.l   a0,a0                              
  042c4  31b0080053b0ffff8850  move.w   $0(a0,d0.l),(-$77b0,za0,d5.w*2)    
  042ce  5245                  addq.w   #1,d5                              
L42d0:
  042d0  0c450004              cmpi.w   #4,d5                              
  042d4  6dde                  blt.s    L42b4                              
  042d6  5246                  addq.w   #1,d6                              
L42d8:
  042d8  bc79ffff883e          cmp.w    g_77c2,d6                          
  042de  6f00fe64              ble.w    L4144                              
  042e2  3f07                  move.w   d7,-(a7)                           
  042e4  4eba003a              jsr      f4_4320                            
  042e8  4a2e000a              tst.b    $a(a6)                             
  042ec  548f                  addq.l   #2,a7                              
  042ee  660c                  bne.s    L42fc                              
  042f0  4ebafb84              jsr      f4_3e76                            
  042f4  4227                  clr.b    -(a7)                              
  042f6  4ebac722              jsr      f4_0a1a                            
  042fa  548f                  addq.l   #2,a7                              
L42fc:
  042fc  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  04302  a915                  _ShowWindow                                 ; $a915
  04304  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  0430a  a915                  _ShowWindow                                 ; $a915
  0430c  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  04312  a915                  _ShowWindow                                 ; $a915
  04314  4eba01ae              jsr      f4_44c4                            
  04318  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  0431c  4e5e                  unlk     a6                                 
  0431e  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_4320
;----------------------------------------------------------------------
f4_4320:
  04320  4e56fffa              link     a6,#-6                             
  04324  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  04328  7601                  moveq    #1,d3                              
  0432a  60000096              bra.w    L43c2                              
L432e:
  0432e  303c0228              move.w   #$228,d0                           
  04332  c1ee0008              muls.w   $8(a6),d0                          
  04336  0680ffff3bca          addi.l   #$ffff3bca,d0                      
  0433c  3043                  movea.w  d3,a0                              
  0433e  4a300800              tst.b    $0(a0,d0.l)                        
  04342  6706                  beq.s    L434a                              
  04344  3c03                  move.w   d3,d6                              
  04346  4446                  neg.w    d6                                 
  04348  6002                  bra.s    L434c                              
L434a:
  0434a  3c03                  move.w   d3,d6                              
L434c:
  0434c  307033b0ffff8afe      movea.w  (-$7502,za0,d3.w*2),a0             
  04354  2e08                  move.l   a0,d7                              
  04356  8ffc0015              divs.w   #$15,d7                            
  0435a  307033b0ffff8b52      movea.w  (-$74ae,za0,d3.w*2),a0             
  04362  2008                  move.l   a0,d0                              
  04364  81fc0015              divs.w   #$15,d0                            
  04368  5340                  subq.w   #1,d0                              
  0436a  3d40fffa              move.w   d0,-$6(a6)                         
  0436e  307033b0ffff8ad4      movea.w  (-$752c,za0,d3.w*2),a0             
  04376  2208                  move.l   a0,d1                              
  04378  83fc0015              divs.w   #$15,d1                            
  0437c  3d41fffc              move.w   d1,-$4(a6)                         
  04380  307033b0ffff8b28      movea.w  (-$74d8,za0,d3.w*2),a0             
  04388  2408                  move.l   a0,d2                              
  0438a  85fc0015              divs.w   #$15,d2                            
  0438e  5342                  subq.w   #1,d2                              
  04390  3d42fffe              move.w   d2,-$2(a6)                         
  04394  3807                  move.w   d7,d4                              
  04396  6022                  bra.s    L43ba                              
L4398:
  04398  3a2efffc              move.w   -$4(a6),d5                         
  0439c  6014                  bra.s    L43b2                              
L439e:
  0439e  7012                  moveq    #18,d0                             
  043a0  c1c4                  muls.w   d4,d0                              
  043a2  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  043a8  3045                  movea.w  d5,a0                              
  043aa  d1c8                  adda.l   a0,a0                              
  043ac  31860800              move.w   d6,$0(a0,d0.l)                     
  043b0  5245                  addq.w   #1,d5                              
L43b2:
  043b2  ba6efffe              cmp.w    -$2(a6),d5                         
  043b6  6fe6                  ble.s    L439e                              
  043b8  5244                  addq.w   #1,d4                              
L43ba:
  043ba  b86efffa              cmp.w    -$6(a6),d4                         
  043be  6fd8                  ble.s    L4398                              
  043c0  5243                  addq.w   #1,d3                              
L43c2:
  043c2  b679ffff883e          cmp.w    g_77c2,d3                          
  043c8  6f00ff64              ble.w    L432e                              
  043cc  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  043d0  4e5e                  unlk     a6                                 
  043d2  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_43d4   [jump table #127]
;----------------------------------------------------------------------
f4_43d4:
  043d4  4e56fff2              link     a6,#-14                            
  043d8  486efff2              pea      -$e(a6)                            
  043dc  a874                  _GetPort                                    ; $a874
  043de  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  043e4  a873                  _SetPort                                    ; $a873
  043e6  486efff8              pea      -$8(a6)                            
  043ea  2f3c00050005          move.l   #$50005,-(a7)                      
  043f0  2f3c00250025          move.l   #$250025,-(a7)                     
  043f6  a8a7                  _SetRect                                    ; $a8a7
  043f8  486efff8              pea      -$8(a6)                            
  043fc  2f3c00250000          move.l   #$250000,-(a7)                     
  04402  a8a8                  _OffsetRect                                 ; $a8a8
  04404  3f3c0003              move.w   #3,-(a7)                           
  04408  a887                  _TextFont                                   ; $a887
  0440a  3f3c000a              move.w   #$a,-(a7)                          
  0440e  a88a                  _TextSize                                   ; $a88a
  04410  3f3c0001              move.w   #1,-(a7)                           
  04414  a888                  _TextFace                                   ; $a888
  04416  4267                  clr.w    -(a7)                              
  04418  a889                  _TextMode                                   ; $a889
  0441a  3f3c00ca              move.w   #$ca,-(a7)                         
  0441e  486efff8              pea      -$8(a6)                            
  04422  4ead06d2              jsr      f7_1a72                            
  04426  7005                  moveq    #5,d0                              
  04428  d06efffe              add.w    -$2(a6),d0                         
  0442c  3e80                  move.w   d0,(a7)                            
  0442e  70fb                  moveq    #-5,d0                             
  04430  d06efffc              add.w    -$4(a6),d0                         
  04434  3f00                  move.w   d0,-(a7)                           
  04436  a893                  _MoveTo                                     ; $a893
  04438  3eb9ffff8376          move.w   g_7c8a,(a7)                        
  0443e  4ead0252              jsr      f2_79f6                            
  04442  2eaefff2              move.l   -$e(a6),(a7)                       
  04446  a873                  _SetPort                                    ; $a873
  04448  4e5e                  unlk     a6                                 
  0444a  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_444c   [jump table #128]
;----------------------------------------------------------------------
f4_444c:
  0444c  4e56fff2              link     a6,#-14                            
  04450  486efff2              pea      -$e(a6)                            
  04454  a874                  _GetPort                                    ; $a874
  04456  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  0445c  a873                  _SetPort                                    ; $a873
  0445e  486efff8              pea      -$8(a6)                            
  04462  2f3c00050005          move.l   #$50005,-(a7)                      
  04468  2f3c00250025          move.l   #$250025,-(a7)                     
  0446e  a8a7                  _SetRect                                    ; $a8a7
  04470  486efff8              pea      -$8(a6)                            
  04474  2f3c004a0000          move.l   #$4a0000,-(a7)                     
  0447a  a8a8                  _OffsetRect                                 ; $a8a8
  0447c  3f3c0003              move.w   #3,-(a7)                           
  04480  a887                  _TextFont                                   ; $a887
  04482  3f3c000a              move.w   #$a,-(a7)                          
  04486  a88a                  _TextSize                                   ; $a88a
  04488  3f3c0001              move.w   #1,-(a7)                           
  0448c  a888                  _TextFace                                   ; $a888
  0448e  4267                  clr.w    -(a7)                              
  04490  a889                  _TextMode                                   ; $a889
  04492  3f3c00cb              move.w   #$cb,-(a7)                         
  04496  486efff8              pea      -$8(a6)                            
  0449a  4ead06d2              jsr      f7_1a72                            
  0449e  7005                  moveq    #5,d0                              
  044a0  d06efffe              add.w    -$2(a6),d0                         
  044a4  3e80                  move.w   d0,(a7)                            
  044a6  70fb                  moveq    #-5,d0                             
  044a8  d06efffc              add.w    -$4(a6),d0                         
  044ac  3f00                  move.w   d0,-(a7)                           
  044ae  a893                  _MoveTo                                     ; $a893
  044b0  3eb9ffff8382          move.w   g_7c7e,(a7)                        
  044b6  4ead0252              jsr      f2_79f6                            
  044ba  2eaefff2              move.l   -$e(a6),(a7)                       
  044be  a873                  _SetPort                                    ; $a873
  044c0  4e5e                  unlk     a6                                 
  044c2  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_44c4
;----------------------------------------------------------------------
f4_44c4:
  044c4  4e56fe00              link     a6,#-512                           
  044c8  48e70300              movem.l  d6/d7,-(a7)                        
  044cc  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  044d2  486eff00              pea      -$100(a6)                          
  044d6  a919                  _GetWTitle                                  ; $a919
  044d8  3079ffff8894          movea.w  g_776c,a0                          
  044de  2f08                  move.l   a0,-(a7)                           
  044e0  486efe00              pea      -$200(a6)                          
  044e4  4ebad028              jsr      f4_150e                            
  044e8  7e01                  moveq    #1,d7                              
  044ea  600c                  bra.s    L44f8                              
L44ec:
  044ec  1db67120fe007120ff16  move.b   (-$200,a6,d7.w),(-$ea,a6,d7.w)     
  044f6  5247                  addq.w   #1,d7                              
L44f8:
  044f8  7000                  moveq    #0,d0                              
  044fa  102efe00              move.b   -$200(a6),d0                       
  044fe  b047                  cmp.w    d7,d0                              
  04500  6cea                  bge.s    L44ec                              
  04502  7c00                  moveq    #0,d6                              
  04504  1c2efe00              move.b   -$200(a6),d6                       
  04508  06460016              addi.w   #$16,d6                            
  0450c  1d46ff00              move.b   d6,-$100(a6)                       
  04510  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  04516  486eff00              pea      -$100(a6)                          
  0451a  a91a                  _SetWTitle                                  ; $a91a
  0451c  4cdf00c0              movem.l  (a7)+,d6/d7                        
  04520  4e5e                  unlk     a6                                 
  04522  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_4524   [jump table #129]
;----------------------------------------------------------------------
f4_4524:
  04524  4e56fff2              link     a6,#-14                            
  04528  2f07                  move.l   d7,-(a7)                           
  0452a  486efff2              pea      -$e(a6)                            
  0452e  a874                  _GetPort                                    ; $a874
  04530  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  04536  a873                  _SetPort                                    ; $a873
  04538  486efff8              pea      -$8(a6)                            
  0453c  2f3c00050005          move.l   #$50005,-(a7)                      
  04542  2f3c00250025          move.l   #$250025,-(a7)                     
  04548  a8a7                  _SetRect                                    ; $a8a7
  0454a  486efff8              pea      -$8(a6)                            
  0454e  2f3c006f0000          move.l   #$6f0000,-(a7)                     
  04554  a8a8                  _OffsetRect                                 ; $a8a8
  04556  3f3c0003              move.w   #3,-(a7)                           
  0455a  a887                  _TextFont                                   ; $a887
  0455c  3f3c000a              move.w   #$a,-(a7)                          
  04560  a88a                  _TextSize                                   ; $a88a
  04562  3f3c0001              move.w   #1,-(a7)                           
  04566  a888                  _TextFace                                   ; $a888
  04568  4267                  clr.w    -(a7)                              
  0456a  a889                  _TextMode                                   ; $a889
  0456c  3e3c00cc              move.w   #$cc,d7                            
  04570  3f07                  move.w   d7,-(a7)                           
  04572  486efff8              pea      -$8(a6)                            
  04576  4ead06d2              jsr      f7_1a72                            
  0457a  7005                  moveq    #5,d0                              
  0457c  d06efffe              add.w    -$2(a6),d0                         
  04580  3e80                  move.w   d0,(a7)                            
  04582  70fb                  moveq    #-5,d0                             
  04584  d06efffc              add.w    -$4(a6),d0                         
  04588  3f00                  move.w   d0,-(a7)                           
  0458a  a893                  _MoveTo                                     ; $a893
  0458c  3eb9ffff837c          move.w   g_7c84,(a7)                        
  04592  4ead0252              jsr      f2_79f6                            
  04596  2eaefff2              move.l   -$e(a6),(a7)                       
  0459a  a873                  _SetPort                                    ; $a873
  0459c  2e1f                  move.l   (a7)+,d7                           
  0459e  4e5e                  unlk     a6                                 
  045a0  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_45a2   [jump table #130]
;----------------------------------------------------------------------
f4_45a2:
  045a2  4e56fff2              link     a6,#-14                            
  045a6  486efff2              pea      -$e(a6)                            
  045aa  a874                  _GetPort                                    ; $a874
  045ac  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  045b2  a873                  _SetPort                                    ; $a873
  045b4  486efff8              pea      -$8(a6)                            
  045b8  2f3c00050005          move.l   #$50005,-(a7)                      
  045be  2f3c00250025          move.l   #$250025,-(a7)                     
  045c4  a8a7                  _SetRect                                    ; $a8a7
  045c6  3f3c0003              move.w   #3,-(a7)                           
  045ca  a887                  _TextFont                                   ; $a887
  045cc  3f3c000a              move.w   #$a,-(a7)                          
  045d0  a88a                  _TextSize                                   ; $a88a
  045d2  3f3c0001              move.w   #1,-(a7)                           
  045d6  a888                  _TextFace                                   ; $a888
  045d8  4267                  clr.w    -(a7)                              
  045da  a889                  _TextMode                                   ; $a889
  045dc  3f3c00c9              move.w   #$c9,-(a7)                         
  045e0  486efff8              pea      -$8(a6)                            
  045e4  4ead06d2              jsr      f7_1a72                            
  045e8  7005                  moveq    #5,d0                              
  045ea  d06efffe              add.w    -$2(a6),d0                         
  045ee  3e80                  move.w   d0,(a7)                            
  045f0  70fb                  moveq    #-5,d0                             
  045f2  d06efffc              add.w    -$4(a6),d0                         
  045f6  3f00                  move.w   d0,-(a7)                           
  045f8  a893                  _MoveTo                                     ; $a893
  045fa  3eb9ffff8378          move.w   g_7c88,(a7)                        
  04600  4ead0252              jsr      f2_79f6                            
  04604  2eaefff2              move.l   -$e(a6),(a7)                       
  04608  a873                  _SetPort                                    ; $a873
  0460a  4e5e                  unlk     a6                                 
  0460c  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_460e   [jump table #131]
;----------------------------------------------------------------------
f4_460e:
  0460e  4e56fffe              link     a6,#-2                             
  04612  48e70700              movem.l  d5/d6/d7,-(a7)                     
  04616  3e2e0008              move.w   $8(a6),d7                          
  0461a  303c0228              move.w   #$228,d0                           
  0461e  c1c7                  muls.w   d7,d0                              
  04620  31b9ffff883e09b0ffff  move.w   g_77c2,(-$c4e0,za0,d0.l)           
  0462c  7c01                  moveq    #1,d6                              
  0462e  60000128              bra.w    L4758                              
L4632:
  04632  303c0228              move.w   #$228,d0                           
  04636  c1c7                  muls.w   d7,d0                              
  04638  0680ffff3b22          addi.l   #$ffff3b22,d0                      
  0463e  41f06790              lea      ($0,za0,d6.w*8),a0                 
  04642  d088                  add.l    a0,d0                              
  04644  2f00                  move.l   d0,-(a7)                           
  04646  3f3063b0ffff8afe      move.w   (-$7502,za0,d6.w*2),-(a7)          
  0464e  3f3063b0ffff8ad4      move.w   (-$752c,za0,d6.w*2),-(a7)          
  04656  3f3063b0ffff8b52      move.w   (-$74ae,za0,d6.w*2),-(a7)          
  0465e  3f3063b0ffff8b28      move.w   (-$74d8,za0,d6.w*2),-(a7)          
  04666  a8a7                  _SetRect                                    ; $a8a7
  04668  307063b0ffff8afe      movea.w  (-$7502,za0,d6.w*2),a0             
  04670  2008                  move.l   a0,d0                              
  04672  81fc0015              divs.w   #$15,d0                            
  04676  c1fc0012              muls.w   #$12,d0                            
  0467a  307063b0ffff8ad4      movea.w  (-$752c,za0,d6.w*2),a0             
  04682  2208                  move.l   a0,d1                              
  04684  83fc0015              divs.w   #$15,d1                            
  04688  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0468e  3041                  movea.w  d1,a0                              
  04690  d1c8                  adda.l   a0,a0                              
  04692  4a700800              tst.w    $0(a0,d0.l)                        
  04696  6f14                  ble.s    L46ac                              
  04698  303c0228              move.w   #$228,d0                           
  0469c  c1c7                  muls.w   d7,d0                              
  0469e  0680ffff3bca          addi.l   #$ffff3bca,d0                      
  046a4  3046                  movea.w  d6,a0                              
  046a6  42300800              clr.b    $0(a0,d0.l)                        
  046aa  6014                  bra.s    L46c0                              
L46ac:
  046ac  303c0228              move.w   #$228,d0                           
  046b0  c1c7                  muls.w   d7,d0                              
  046b2  0680ffff3bca          addi.l   #$ffff3bca,d0                      
  046b8  3046                  movea.w  d6,a0                              
  046ba  11bc00010800          move.b   #1,$0(a0,d0.l)                     
L46c0:
  046c0  7a00                  moveq    #0,d5                              
  046c2  6056                  bra.s    L471a                              
L46c4:
  046c4  702a                  moveq    #42,d0                             
  046c6  c1c5                  muls.w   d5,d0                              
  046c8  0680ffff8d4a          addi.l   #$ffff8d4a,d0                      
  046ce  3046                  movea.w  d6,a0                              
  046d0  d1c8                  adda.l   a0,a0                              
  046d2  323c0228              move.w   #$228,d1                           
  046d6  c3c7                  muls.w   d7,d1                              
  046d8  742a                  moveq    #42,d2                             
  046da  c5c5                  muls.w   d5,d2                              
  046dc  0681ffff3c88          addi.l   #$ffff3c88,d1                      
  046e2  d282                  add.l    d2,d1                              
  046e4  3246                  movea.w  d6,a1                              
  046e6  d3c9                  adda.l   a1,a1                              
  046e8  33b008001800          move.w   $0(a0,d0.l),$0(a1,d1.l)            
  046ee  702a                  moveq    #42,d0                             
  046f0  c1c5                  muls.w   d5,d0                              
  046f2  0680ffff8b7c          addi.l   #$ffff8b7c,d0                      
  046f8  3046                  movea.w  d6,a0                              
  046fa  d1c8                  adda.l   a0,a0                              
  046fc  323c0228              move.w   #$228,d1                           
  04700  c3c7                  muls.w   d7,d1                              
  04702  742a                  moveq    #42,d2                             
  04704  c5c5                  muls.w   d5,d2                              
  04706  0681ffff3cdc          addi.l   #$ffff3cdc,d1                      
  0470c  d282                  add.l    d2,d1                              
  0470e  3246                  movea.w  d6,a1                              
  04710  d3c9                  adda.l   a1,a1                              
  04712  33b008001800          move.w   $0(a0,d0.l),$0(a1,d1.l)            
  04718  5245                  addq.w   #1,d5                              
L471a:
  0471a  0c450002              cmpi.w   #2,d5                              
  0471e  6da4                  blt.s    L46c4                              
  04720  7a00                  moveq    #0,d5                              
  04722  602c                  bra.s    L4750                              
L4724:
  04724  702a                  moveq    #42,d0                             
  04726  c1c5                  muls.w   d5,d0                              
  04728  0680ffff8a2c          addi.l   #$ffff8a2c,d0                      
  0472e  3046                  movea.w  d6,a0                              
  04730  d1c8                  adda.l   a0,a0                              
  04732  323c0228              move.w   #$228,d1                           
  04736  c3c7                  muls.w   d7,d1                              
  04738  742a                  moveq    #42,d2                             
  0473a  c5c5                  muls.w   d5,d2                              
  0473c  0681ffff3be0          addi.l   #$ffff3be0,d1                      
  04742  d282                  add.l    d2,d1                              
  04744  3246                  movea.w  d6,a1                              
  04746  d3c9                  adda.l   a1,a1                              
  04748  33b008001800          move.w   $0(a0,d0.l),$0(a1,d1.l)            
  0474e  5245                  addq.w   #1,d5                              
L4750:
  04750  0c450004              cmpi.w   #4,d5                              
  04754  6dce                  blt.s    L4724                              
  04756  5246                  addq.w   #1,d6                              
L4758:
  04758  bc79ffff883e          cmp.w    g_77c2,d6                          
  0475e  6f00fed2              ble.w    L4632                              
  04762  303c0228              move.w   #$228,d0                           
  04766  c1c7                  muls.w   d7,d0                              
  04768  31b9ffff888809b0ffff  move.w   g_7778,(-$c2d0,za0,d0.l)           
  04774  303c0228              move.w   #$228,d0                           
  04778  c1c7                  muls.w   d7,d0                              
  0477a  31b9ffff889209b0ffff  move.w   g_776e,(-$c2ce,za0,d0.l)           
  04786  7a00                  moveq    #0,d5                              
  04788  601c                  bra.s    L47a6                              
L478a:
  0478a  303c0228              move.w   #$228,d0                           
  0478e  c1c7                  muls.w   d7,d0                              
  04790  0680ffff3d34          addi.l   #$ffff3d34,d0                      
  04796  3045                  movea.w  d5,a0                              
  04798  d1c8                  adda.l   a0,a0                              
  0479a  31b053b0ffff888a0800  move.w   (-$7776,za0,d5.w*2),$0(a0,d0.l)    
  047a4  5245                  addq.w   #1,d5                              
L47a6:
  047a6  0c450004              cmpi.w   #4,d5                              
  047aa  6dde                  blt.s    L478a                              
  047ac  303c0228              move.w   #$228,d0                           
  047b0  c1c7                  muls.w   d7,d0                              
  047b2  31b9ffff884c09b0ffff  move.w   g_77b4,(-$c2c4,za0,d0.l)           
  047be  303c0228              move.w   #$228,d0                           
  047c2  c1c7                  muls.w   d7,d0                              
  047c4  31b9ffff884e09b0ffff  move.w   g_77b2,(-$c2c2,za0,d0.l)           
  047d0  7a00                  moveq    #0,d5                              
  047d2  601c                  bra.s    L47f0                              
L47d4:
  047d4  303c0228              move.w   #$228,d0                           
  047d8  c1c7                  muls.w   d7,d0                              
  047da  0680ffff3d40          addi.l   #$ffff3d40,d0                      
  047e0  3045                  movea.w  d5,a0                              
  047e2  d1c8                  adda.l   a0,a0                              
  047e4  31b053b0ffff88500800  move.w   (-$77b0,za0,d5.w*2),$0(a0,d0.l)    
  047ee  5245                  addq.w   #1,d5                              
L47f0:
  047f0  0c450004              cmpi.w   #4,d5                              
  047f4  6dde                  blt.s    L47d4                              
  047f6  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  047fa  4e5e                  unlk     a6                                 
  047fc  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_47fe   [jump table #132]
;----------------------------------------------------------------------
f4_47fe:
  047fe  4e56fe28              link     a6,#-472                           
  04802  48e70f08              movem.l  d4/d5/d6/d7/a4,-(a7)               
  04806  7e00                  moveq    #0,d7                              
  04808  7a00                  moveq    #0,d5                              
  0480a  7800                  moveq    #0,d4                              
  0480c  3f3c00fb              move.w   #$fb,-(a7)                         
  04810  486efe28              pea      -$1d8(a6)                          
  04814  486eff50              pea      -$b0(a6)                           
  04818  4ead025a              jsr      f2_194e                            
  0481c  0cb9000000c8ffff83a6  cmpi.l   #$c8,g_7c5a                        
  04826  4fef000a              lea      $a(a7),a7                          
  0482a  6c1a                  bge.s    L4846                              
  0482c  2f2efe30              move.l   -$1d0(a6),-(a7)                    
  04830  2f3c00000602          move.l   STR_0602,-(a7)                     ; "?"
  04836  2f3c00000604          move.l   STR_0604,-(a7)                     ; "?"
  0483c  2f3c00000606          move.l   STR_0606,-(a7)                     ; "?"
  04842  a98b                  _ParamText                                  ; $a98b
  04844  6018                  bra.s    L485e                              
L4846:
  04846  2f2efe2c              move.l   -$1d4(a6),-(a7)                    
  0484a  2f3c00000608          move.l   STR_0608,-(a7)                     ; "?"
  04850  2f3c0000060a          move.l   STR_060a,-(a7)                     ; "?"
  04856  2f3c0000060c          move.l   STR_060c,-(a7)                     ; "?"
  0485c  a98b                  _ParamText                                  ; $a98b
L485e:
  0485e  42a7                  clr.l    -(a7)                              
  04860  3f3c00fb              move.w   #$fb,-(a7)                         
  04864  486eff56              pea      -$aa(a6)                           
  04868  4878ffff              pea      ($ffff).w                          
  0486c  a97c                  _GetNewDialog                               ; $a97c
  0486e  285f                  movea.l  (a7)+,a4                           
  04870  2f0c                  move.l   a4,-(a7)                           
  04872  4ead06ba              jsr      f7_161c                            
  04876  2e8c                  move.l   a4,(a7)                            
  04878  a915                  _ShowWindow                                 ; $a915
  0487a  3f39ffff8378          move.w   g_7c88,-(a7)                       
  04880  3f3c0001              move.w   #1,-(a7)                           
  04884  2f0c                  move.l   a4,-(a7)                           
  04886  4eba04ac              jsr      f4_4d34                            
  0488a  3eb9ffff8376          move.w   g_7c8a,(a7)                        
  04890  3f3c0002              move.w   #2,-(a7)                           
  04894  2f0c                  move.l   a4,-(a7)                           
  04896  4eba049c              jsr      f4_4d34                            
  0489a  3eb9ffff8382          move.w   g_7c7e,(a7)                        
  048a0  3f3c0003              move.w   #3,-(a7)                           
  048a4  2f0c                  move.l   a4,-(a7)                           
  048a6  4eba048c              jsr      f4_4d34                            
  048aa  3eb9ffff837c          move.w   g_7c84,(a7)                        
  048b0  3f3c0004              move.w   #4,-(a7)                           
  048b4  2f0c                  move.l   a4,-(a7)                           
  048b6  4eba047c              jsr      f4_4d34                            
  048ba  3eb9ffff8370          move.w   g_7c90,(a7)                        
  048c0  3f3c0005              move.w   #5,-(a7)                           
  048c4  2f0c                  move.l   a4,-(a7)                           
  048c6  4eba046c              jsr      f4_4d34                            
  048ca  4fef0020              lea      $20(a7),a7                         
L48ce:
  048ce  42a7                  clr.l    -(a7)                              
  048d0  486eff54              pea      -$ac(a6)                           
  048d4  a991                  _ModalDialog                                ; $a991
  048d6  4a6eff54              tst.w    -$ac(a6)                           
  048da  6f0003c6              ble.w    L4ca2                              
  048de  302eff54              move.w   -$ac(a6),d0                        
  048e2  0c400012              cmpi.w   #$12,d0                            
  048e6  620003ba              bhi.w    L4ca2                              
  048ea  43fa0422              lea      L4d0e(pc),a1                       
  048ee  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  048f2  4ed1                  jmp      (a1)                               
  048f4  2f0c                  move.l   a4,-(a7)                           
  048f6  7006                  moveq    #6,d0                              
  048f8  d06eff54              add.w    -$ac(a6),d0                        
  048fc  3f00                  move.w   d0,-(a7)                           
  048fe  486eff52              pea      -$ae(a6)                           
  04902  486eff34              pea      -$cc(a6)                           
  04906  486eff48              pea      -$b8(a6)                           
  0490a  a98d                  _GetDialogItem                              ; $a98d
  0490c  2f2eff34              move.l   -$cc(a6),-(a7)                     
  04910  486efe34              pea      -$1cc(a6)                          
  04914  a990                  _GetDialogItemText                          ; $a990
  04916  0cb9000003e8ffff83a6  cmpi.l   #$3e8,g_7c5a                       
  04920  6c14                  bge.s    L4936                              
  04922  3f3c03e8              move.w   #$3e8,-(a7)                        
  04926  2f39ffff735e          move.l   g_8ca2,-(a7)                       
  0492c  4ead020a              jsr      f2_765a                            
  04930  5c8f                  addq.l   #6,a7                              
  04932  6000036e              bra.w    L4ca2                              
L4936:
  04936  3f3c0001              move.w   #1,-(a7)                           
  0493a  3f39ffff8da2          move.w   g_725e,-(a7)                       
  04940  3f3c03e8              move.w   #$3e8,-(a7)                        
  04944  2f39ffff735e          move.l   g_8ca2,-(a7)                       
  0494a  4ead06aa              jsr      f6_0032                            
  0494e  1800                  move.b   d0,d4                              
  04950  4a04                  tst.b    d4                                 
  04952  4fef000a              lea      $a(a7),a7                          
  04956  6700034a              beq.w    L4ca2                              
  0495a  23f9ffff735effff75ce  move.l   g_8ca2,g_8a32                      
  04964  33fc0001ffff83c0      move.w   #1,g_7c40                          
  0496c  2f3c00030001          move.l   #$30001,-(a7)                      
  04972  4267                  clr.w    -(a7)                              
  04974  42a7                  clr.l    -(a7)                              
  04976  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  0497c  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  04982  48780001              pea      ($1).w                             
  04986  4ead0232              jsr      f2_7ad6                            
  0498a  04b9000003e8ffff83a6  subi.l   #$3e8,g_7c5a                       
  04994  2e8c                  move.l   a4,(a7)                            
  04996  a920                  _BringToFront                               ; $a920
  04998  4fef0012              lea      $12(a7),a7                         
  0499c  60000304              bra.w    L4ca2                              
  049a0  2f0c                  move.l   a4,-(a7)                           
  049a2  7006                  moveq    #6,d0                              
  049a4  d06eff54              add.w    -$ac(a6),d0                        
  049a8  3f00                  move.w   d0,-(a7)                           
  049aa  486eff52              pea      -$ae(a6)                           
  049ae  486eff34              pea      -$cc(a6)                           
  049b2  486eff48              pea      -$b8(a6)                           
  049b6  a98d                  _GetDialogItem                              ; $a98d
  049b8  2f2eff34              move.l   -$cc(a6),-(a7)                     
  049bc  486efe34              pea      -$1cc(a6)                          
  049c0  a990                  _GetDialogItemText                          ; $a990
  049c2  0cb9000003e8ffff83a6  cmpi.l   #$3e8,g_7c5a                       
  049cc  6c14                  bge.s    L49e2                              
  049ce  3f3c03e8              move.w   #$3e8,-(a7)                        
  049d2  2f39ffff7366          move.l   g_8c9a,-(a7)                       
  049d8  4ead020a              jsr      f2_765a                            
  049dc  5c8f                  addq.l   #6,a7                              
  049de  600002c2              bra.w    L4ca2                              
L49e2:
  049e2  3f3c0001              move.w   #1,-(a7)                           
  049e6  3f39ffff8da2          move.w   g_725e,-(a7)                       
  049ec  3f3c03e8              move.w   #$3e8,-(a7)                        
  049f0  2f39ffff7366          move.l   g_8c9a,-(a7)                       
  049f6  4ead06aa              jsr      f6_0032                            
  049fa  1800                  move.b   d0,d4                              
  049fc  4a04                  tst.b    d4                                 
  049fe  4fef000a              lea      $a(a7),a7                          
  04a02  6700029e              beq.w    L4ca2                              
  04a06  23f9ffff7366ffff75d6  move.l   g_8c9a,g_8a2a                      
  04a10  33fc0003ffff83c4      move.w   #3,g_7c3c                          
  04a18  2f3c00030001          move.l   #$30001,-(a7)                      
  04a1e  4267                  clr.w    -(a7)                              
  04a20  42a7                  clr.l    -(a7)                              
  04a22  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  04a28  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  04a2e  48780003              pea      ($3).w                             
  04a32  4ead0232              jsr      f2_7ad6                            
  04a36  04b9000003e8ffff83a6  subi.l   #$3e8,g_7c5a                       
  04a40  2e8c                  move.l   a4,(a7)                            
  04a42  a920                  _BringToFront                               ; $a920
  04a44  4fef0012              lea      $12(a7),a7                         
  04a48  60000258              bra.w    L4ca2                              
  04a4c  2f0c                  move.l   a4,-(a7)                           
  04a4e  7006                  moveq    #6,d0                              
  04a50  d06eff54              add.w    -$ac(a6),d0                        
  04a54  3f00                  move.w   d0,-(a7)                           
  04a56  486eff52              pea      -$ae(a6)                           
  04a5a  486eff34              pea      -$cc(a6)                           
  04a5e  486eff48              pea      -$b8(a6)                           
  04a62  a98d                  _GetDialogItem                              ; $a98d
  04a64  2f2eff34              move.l   -$cc(a6),-(a7)                     
  04a68  486efe34              pea      -$1cc(a6)                          
  04a6c  a990                  _GetDialogItemText                          ; $a990
  04a6e  0cb9000002eeffff83a6  cmpi.l   #$2ee,g_7c5a                       
  04a78  6c14                  bge.s    L4a8e                              
  04a7a  3f3c02ee              move.w   #$2ee,-(a7)                        
  04a7e  2f39ffff738a          move.l   g_8c76,-(a7)                       
  04a84  4ead020a              jsr      f2_765a                            
  04a88  5c8f                  addq.l   #6,a7                              
  04a8a  60000216              bra.w    L4ca2                              
L4a8e:
  04a8e  3f3c0001              move.w   #1,-(a7)                           
  04a92  3f39ffff8da2          move.w   g_725e,-(a7)                       
  04a98  3f3c02ee              move.w   #$2ee,-(a7)                        
  04a9c  2f39ffff738a          move.l   g_8c76,-(a7)                       
  04aa2  4ead06aa              jsr      f6_0032                            
  04aa6  1800                  move.b   d0,d4                              
  04aa8  4a04                  tst.b    d4                                 
  04aaa  4fef000a              lea      $a(a7),a7                          
  04aae  670001f2              beq.w    L4ca2                              
  04ab2  23f9ffff738affff75fa  move.l   g_8c76,g_8a06                      
  04abc  33fc000cffff83d6      move.w   #$c,g_7c2a                         
  04ac4  2f3c00030001          move.l   #$30001,-(a7)                      
  04aca  4267                  clr.w    -(a7)                              
  04acc  42a7                  clr.l    -(a7)                              
  04ace  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  04ad4  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  04ada  4878000c              pea      ($c).w                             
  04ade  4ead0232              jsr      f2_7ad6                            
  04ae2  04b9000002eeffff83a6  subi.l   #$2ee,g_7c5a                       
  04aec  2e8c                  move.l   a4,(a7)                            
  04aee  a920                  _BringToFront                               ; $a920
  04af0  4fef0012              lea      $12(a7),a7                         
  04af4  600001ac              bra.w    L4ca2                              
  04af8  2f0c                  move.l   a4,-(a7)                           
  04afa  7006                  moveq    #6,d0                              
  04afc  d06eff54              add.w    -$ac(a6),d0                        
  04b00  3f00                  move.w   d0,-(a7)                           
  04b02  486eff52              pea      -$ae(a6)                           
  04b06  486eff34              pea      -$cc(a6)                           
  04b0a  486eff48              pea      -$b8(a6)                           
  04b0e  a98d                  _GetDialogItem                              ; $a98d
  04b10  2f2eff34              move.l   -$cc(a6),-(a7)                     
  04b14  486efe34              pea      -$1cc(a6)                          
  04b18  a990                  _GetDialogItemText                          ; $a990
  04b1a  0cb9000002eeffff83a6  cmpi.l   #$2ee,g_7c5a                       
  04b24  6c14                  bge.s    L4b3a                              
  04b26  3f3c02ee              move.w   #$2ee,-(a7)                        
  04b2a  2f39ffff7382          move.l   g_8c7e,-(a7)                       
  04b30  4ead020a              jsr      f2_765a                            
  04b34  5c8f                  addq.l   #6,a7                              
  04b36  6000016a              bra.w    L4ca2                              
L4b3a:
  04b3a  3f3c0001              move.w   #1,-(a7)                           
  04b3e  3f39ffff8da2          move.w   g_725e,-(a7)                       
  04b44  3f3c02ee              move.w   #$2ee,-(a7)                        
  04b48  2f39ffff7382          move.l   g_8c7e,-(a7)                       
  04b4e  4ead06aa              jsr      f6_0032                            
  04b52  1800                  move.b   d0,d4                              
  04b54  4a04                  tst.b    d4                                 
  04b56  4fef000a              lea      $a(a7),a7                          
  04b5a  67000146              beq.w    L4ca2                              
  04b5e  23f9ffff7382ffff75f2  move.l   g_8c7e,g_8a0e                      
  04b68  33fc000affff83d2      move.w   #$a,g_7c2e                         
  04b70  2f3c00030001          move.l   #$30001,-(a7)                      
  04b76  4267                  clr.w    -(a7)                              
  04b78  42a7                  clr.l    -(a7)                              
  04b7a  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  04b80  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  04b86  4878000a              pea      ($a).w                             
  04b8a  4ead0232              jsr      f2_7ad6                            
  04b8e  04b9000002eeffff83a6  subi.l   #$2ee,g_7c5a                       
  04b98  2e8c                  move.l   a4,(a7)                            
  04b9a  a920                  _BringToFront                               ; $a920
  04b9c  4fef0012              lea      $12(a7),a7                         
  04ba0  60000100              bra.w    L4ca2                              
  04ba4  2f0c                  move.l   a4,-(a7)                           
  04ba6  7006                  moveq    #6,d0                              
  04ba8  d06eff54              add.w    -$ac(a6),d0                        
  04bac  3f00                  move.w   d0,-(a7)                           
  04bae  486eff52              pea      -$ae(a6)                           
  04bb2  486eff34              pea      -$cc(a6)                           
  04bb6  486eff48              pea      -$b8(a6)                           
  04bba  a98d                  _GetDialogItem                              ; $a98d
  04bbc  2f2eff34              move.l   -$cc(a6),-(a7)                     
  04bc0  486efe34              pea      -$1cc(a6)                          
  04bc4  a990                  _GetDialogItemText                          ; $a990
  04bc6  0cb9000001f4ffff83a6  cmpi.l   #$1f4,g_7c5a                       
  04bd0  6c14                  bge.s    L4be6                              
  04bd2  3f3c01f4              move.w   #$1f4,-(a7)                        
  04bd6  2f39ffff7372          move.l   g_8c8e,-(a7)                       
  04bdc  4ead020a              jsr      f2_765a                            
  04be0  5c8f                  addq.l   #6,a7                              
  04be2  600000be              bra.w    L4ca2                              
L4be6:
  04be6  3f3c0001              move.w   #1,-(a7)                           
  04bea  3f39ffff8da2          move.w   g_725e,-(a7)                       
  04bf0  3f3c01f4              move.w   #$1f4,-(a7)                        
  04bf4  2f39ffff7372          move.l   g_8c8e,-(a7)                       
  04bfa  4ead06aa              jsr      f6_0032                            
  04bfe  1800                  move.b   d0,d4                              
  04c00  4a04                  tst.b    d4                                 
  04c02  4fef000a              lea      $a(a7),a7                          
  04c06  6700009a              beq.w    L4ca2                              
  04c0a  23f9ffff7372ffff75e2  move.l   g_8c8e,g_8a1e                      
  04c14  33fc0006ffff83ca      move.w   #6,g_7c36                          
  04c1c  2f3c00030001          move.l   #$30001,-(a7)                      
  04c22  4267                  clr.w    -(a7)                              
  04c24  42a7                  clr.l    -(a7)                              
  04c26  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  04c2c  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  04c32  48780006              pea      ($6).w                             
  04c36  4ead0232              jsr      f2_7ad6                            
  04c3a  04b9000001f4ffff83a6  subi.l   #$1f4,g_7c5a                       
  04c44  2e8c                  move.l   a4,(a7)                            
  04c46  a920                  _BringToFront                               ; $a920
  04c48  4fef0012              lea      $12(a7),a7                         
  04c4c  6054                  bra.s    L4ca2                              
  04c4e  7a01                  moveq    #1,d5                              
  04c50  6050                  bra.s    L4ca2                              
  04c52  0cb9000000c8ffff83a6  cmpi.l   #$c8,g_7c5a                        
  04c5c  6c12                  bge.s    L4c70                              
  04c5e  3f3c00c8              move.w   #$c8,-(a7)                         
  04c62  2f39ffff748e          move.l   g_8b72,-(a7)                       
  04c68  4ead020a              jsr      f2_765a                            
  04c6c  5c8f                  addq.l   #6,a7                              
  04c6e  6032                  bra.s    L4ca2                              
L4c70:
  04c70  3f3c000a              move.w   #$a,-(a7)                          
  04c74  3f39ffff8da6          move.w   g_725a,-(a7)                       
  04c7a  3f3c00c8              move.w   #$c8,-(a7)                         
  04c7e  2f39ffff748e          move.l   g_8b72,-(a7)                       
  04c84  4ead06aa              jsr      f6_0032                            
  04c88  1800                  move.b   d0,d4                              
  04c8a  4a04                  tst.b    d4                                 
  04c8c  4fef000a              lea      $a(a7),a7                          
  04c90  6710                  beq.s    L4ca2                              
  04c92  5279ffff8da6          addq.w   #1,g_725a                          
  04c98  04b9000000c8ffff83a6  subi.l   #$c8,g_7c5a                        
L4ca2:
  04ca2  4ead01ba              jsr      f2_6a8c                            
  04ca6  0cb9000000c8ffff83a6  cmpi.l   #$c8,g_7c5a                        
  04cb0  6c1a                  bge.s    L4ccc                              
  04cb2  2f2efe30              move.l   -$1d0(a6),-(a7)                    
  04cb6  2f3c0000060e          move.l   STR_060e,-(a7)                     ; "?"
  04cbc  2f3c00000610          move.l   STR_0610,-(a7)                     ; "?"
  04cc2  2f3c00000612          move.l   STR_0612,-(a7)                     ; "?"
  04cc8  a98b                  _ParamText                                  ; $a98b
  04cca  6018                  bra.s    L4ce4                              
L4ccc:
  04ccc  2f2efe2c              move.l   -$1d4(a6),-(a7)                    
  04cd0  2f3c00000614          move.l   STR_0614,-(a7)                     ; "?"
  04cd6  2f3c00000616          move.l   STR_0616,-(a7)                     ; "?"
  04cdc  2f3c00000618          move.l   STR_0618,-(a7)                     ; "?"
  04ce2  a98b                  _ParamText                                  ; $a98b
L4ce4:
  04ce4  4a05                  tst.b    d5                                 
  04ce6  6700fbe6              beq.w    L48ce                              
  04cea  2f0c                  move.l   a4,-(a7)                           
  04cec  a983                  _DisposeDialog                              ; $a983
  04cee  7c01                  moveq    #1,d6                              
  04cf0  600a                  bra.s    L4cfc                              
L4cf2:
  04cf2  20766520fe28          movea.l  (-$1d8,a6,d6.w*4),a0               
  04cf8  a01f                  _DisposePtr                                 ; $a01f
  04cfa  5246                  addq.w   #1,d6                              
L4cfc:
  04cfc  bc6eff50              cmp.w    -$b0(a6),d6                        
  04d00  6ff0                  ble.s    L4cf2                              
  04d02  4ead05c2              jsr      f5_3984                            
  04d06  4cdf10f0              movem.l  (a7)+,d4/d5/d6/d7/a4               
  04d0a  4e5e                  unlk     a6                                 
  04d0c  4e75                  rts                                         
  04d0e  ff94                  dc.w     $ff94                              
  04d10  fbe6                  dc.w     $fbe6                              
  04d12  fc92                  dc.w     $fc92                              
  04d14  fd3e                  dc.w     $fd3e                              
  04d16  fdea                  dc.w     $fdea                              
  04d18  fe96                  dc.w     $fe96                              
  04d1a  ff40                  dc.w     $ff40                              
  04d1c  ff94                  dc.w     $ff94                              
  04d1e  ff94                  dc.w     $ff94                              
  04d20  ff94                  dc.w     $ff94                              
  04d22  ff94                  dc.w     $ff94                              
  04d24  ff94                  dc.w     $ff94                              
  04d26  ff94                  dc.w     $ff94                              
  04d28  ff94                  dc.w     $ff94                              
  04d2a  ff94                  dc.w     $ff94                              
  04d2c  ff94                  dc.w     $ff94                              
  04d2e  ff94                  dc.w     $ff94                              
  04d30  ff94                  dc.w     $ff94                              
  04d32  ff44                  dc.w     $ff44                              

;----------------------------------------------------------------------
; f4_4d34
;----------------------------------------------------------------------
f4_4d34:
  04d34  4e56fef0              link     a6,#-272                           
  04d38  2f2e0008              move.l   $8(a6),-(a7)                       
  04d3c  7006                  moveq    #6,d0                              
  04d3e  d06e000c              add.w    $c(a6),d0                          
  04d42  3f00                  move.w   d0,-(a7)                           
  04d44  486efffc              pea      -$4(a6)                            
  04d48  486efff8              pea      -$8(a6)                            
  04d4c  486efff0              pea      -$10(a6)                           
  04d50  a98d                  _GetDialogItem                              ; $a98d
  04d52  2f2efff8              move.l   -$8(a6),-(a7)                      
  04d56  486efef0              pea      -$110(a6)                          
  04d5a  a990                  _GetDialogItemText                          ; $a990
  04d5c  306e000e              movea.w  $e(a6),a0                          
  04d60  2f08                  move.l   a0,-(a7)                           
  04d62  486efef0              pea      -$110(a6)                          
  04d66  4ebac7a6              jsr      f4_150e                            
  04d6a  2f2efff8              move.l   -$8(a6),-(a7)                      
  04d6e  486efef0              pea      -$110(a6)                          
  04d72  a98f                  _SetDialogItemText                          ; $a98f
  04d74  4e5e                  unlk     a6                                 
  04d76  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_4d78   [jump table #133]
;----------------------------------------------------------------------
f4_4d78:
  04d78  4e56fae6              link     a6,#-1306                          
  04d7c  48e71f18              movem.l  d3/d4/d5/d6/d7/a3/a4,-(a7)         
  04d80  7600                  moveq    #0,d3                              
  04d82  7a00                  moveq    #0,d5                              
  04d84  422efb25              clr.b    -$4db(a6)                          
  04d88  422efb23              clr.b    -$4dd(a6)                          
  04d8c  4eba02f0              jsr      f4_507e                            
  04d90  3c00                  move.w   d0,d6                              
  04d92  4a39ffff9815          tst.b    g_67eb                             
  04d98  6612                  bne.s    L4dac                              
  04d9a  4a39ffff9816          tst.b    g_67ea                             
  04da0  660a                  bne.s    L4dac                              
  04da2  4a39ffff9817          tst.b    g_67e9                             
  04da8  670002cc              beq.w    L5076                              
L4dac:
  04dac  4a2e0008              tst.b    $8(a6)                             
  04db0  6738                  beq.s    L4dea                              
  04db2  303c0276              move.w   #$276,d0                           
  04db6  c1ee000c              muls.w   $c(a6),d0                          
  04dba  721e                  moveq    #30,d1                             
  04dbc  c3ee000e              muls.w   $e(a6),d1                          
  04dc0  0680ffff7892          addi.l   #$ffff7892,d0                      
  04dc6  d081                  add.l    d1,d0                              
  04dc8  2040                  movea.l  d0,a0                              
  04dca  3c10                  move.w   (a0),d6                            
  04dcc  303c0276              move.w   #$276,d0                           
  04dd0  c1ee000c              muls.w   $c(a6),d0                          
  04dd4  721e                  moveq    #30,d1                             
  04dd6  c3ee000e              muls.w   $e(a6),d1                          
  04dda  0680ffff7892          addi.l   #$ffff7892,d0                      
  04de0  d081                  add.l    d1,d0                              
  04de2  2040                  movea.l  d0,a0                              
  04de4  3e280002              move.w   $2(a0),d7                          
  04de8  605a                  bra.s    L4e44                              
L4dea:
  04dea  303c0276              move.w   #$276,d0                           
  04dee  c1ee000c              muls.w   $c(a6),d0                          
  04df2  721e                  moveq    #30,d1                             
  04df4  c3ee000e              muls.w   $e(a6),d1                          
  04df8  0680ffff7892          addi.l   #$ffff7892,d0                      
  04dfe  d081                  add.l    d1,d0                              
  04e00  2040                  movea.l  d0,a0                              
  04e02  3086                  move.w   d6,(a0)                            
  04e04  42a7                  clr.l    -(a7)                              
  04e06  2f3c53545223          move.l   #$53545223,-(a7)                   
  04e0c  3f06                  move.w   d6,-(a7)                           
  04e0e  a9a0                  _GetResource                                ; $a9a0
  04e10  265f                  movea.l  (a7)+,a3                           
  04e12  43eeff32              lea      -$ce(a6),a1                        
  04e16  7002                  moveq    #2,d0                              
  04e18  2053                  movea.l  (a3),a0                            
  04e1a  a02e                  _BlockMove                                  ; $a02e
  04e1c  3f2eff32              move.w   -$ce(a6),-(a7)                     
  04e20  4ead0242              jsr      f2_79a8                            
  04e24  3e00                  move.w   d0,d7                              
  04e26  303c0276              move.w   #$276,d0                           
  04e2a  c1ee000c              muls.w   $c(a6),d0                          
  04e2e  721e                  moveq    #30,d1                             
  04e30  c3ee000e              muls.w   $e(a6),d1                          
  04e34  0680ffff7892          addi.l   #$ffff7892,d0                      
  04e3a  d081                  add.l    d1,d0                              
  04e3c  2040                  movea.l  d0,a0                              
  04e3e  31470002              move.w   d7,$2(a0)                          
  04e42  548f                  addq.l   #2,a7                              
L4e44:
  04e44  486efe26              pea      -$1da(a6)                          
  04e48  3f06                  move.w   d6,-(a7)                           
  04e4a  3f07                  move.w   d7,-(a7)                           
  04e4c  4ebac6ee              jsr      f4_153c                            
  04e50  1d6efe26fd26          move.b   -$1da(a6),-$2da(a6)                
  04e56  6032                  bra.s    L4e8a                              
L4e58:
  04e58  486efe26              pea      -$1da(a6)                          
  04e5c  486efd26              pea      -$2da(a6)                          
  04e60  4eba03c2              jsr      f4_5224                            
  04e64  7801                  moveq    #1,d4                              
  04e66  508f                  addq.l   #8,a7                              
  04e68  6016                  bra.s    L4e80                              
L4e6a:
  04e6a  10364120fd26          move.b   (-$2da,a6,d4.w),d0                 
  04e70  b0364120fe26          cmp.b    (-$1da,a6,d4.w),d0                 
  04e76  6706                  beq.s    L4e7e                              
  04e78  1d7c0001fb23          move.b   #1,-$4dd(a6)                       
L4e7e:
  04e7e  5244                  addq.w   #1,d4                              
L4e80:
  04e80  7000                  moveq    #0,d0                              
  04e82  102efe26              move.b   -$1da(a6),d0                       
  04e86  b044                  cmp.w    d4,d0                              
  04e88  6ce0                  bge.s    L4e6a                              
L4e8a:
  04e8a  4a2efb23              tst.b    -$4dd(a6)                          
  04e8e  67c8                  beq.s    L4e58                              
  04e90  3f3c03e8              move.w   #$3e8,-(a7)                        
  04e94  486efae6              pea      -$51a(a6)                          
  04e98  486eff36              pea      -$ca(a6)                           
  04e9c  4ead025a              jsr      f2_194e                            
  04ea0  4a2e0008              tst.b    $8(a6)                             
  04ea4  4fef000a              lea      $a(a7),a7                          
  04ea8  6706                  beq.s    L4eb0                              
  04eaa  2d6efb06fb0a          move.l   -$4fa(a6),-$4f6(a6)                
L4eb0:
  04eb0  4a2e000a              tst.b    $a(a6)                             
  04eb4  6706                  beq.s    L4ebc                              
  04eb6  2d6efb0efb0a          move.l   -$4f2(a6),-$4f6(a6)                
L4ebc:
  04ebc  4a2e000a              tst.b    $a(a6)                             
  04ec0  660c                  bne.s    L4ece                              
  04ec2  4a2e0008              tst.b    $8(a6)                             
  04ec6  6606                  bne.s    L4ece                              
  04ec8  2d6efb12fb0a          move.l   -$4ee(a6),-$4f6(a6)                
L4ece:
  04ece  2f2efb0a              move.l   -$4f6(a6),-(a7)                    
  04ed2  2f3c0000061a          move.l   STR_061a,-(a7)                     ; "?"
  04ed8  2f3c0000061c          move.l   STR_061c,-(a7)                     ; "?"
  04ede  2f3c0000061e          move.l   STR_061e,-(a7)                     ; "?"
  04ee4  a98b                  _ParamText                                  ; $a98b
  04ee6  42a7                  clr.l    -(a7)                              
  04ee8  3f3c0bb8              move.w   #$bb8,-(a7)                        
  04eec  486eff56              pea      -$aa(a6)                           
  04ef0  4878ffff              pea      ($ffff).w                          
  04ef4  a97c                  _GetNewDialog                               ; $a97c
  04ef6  285f                  movea.l  (a7)+,a4                           
  04ef8  2f0c                  move.l   a4,-(a7)                           
  04efa  4ead06ba              jsr      f7_161c                            
  04efe  2e8c                  move.l   a4,(a7)                            
  04f00  a915                  _ShowWindow                                 ; $a915
  04f02  0c790004ffff8894      cmpi.w   #4,g_776c                          
  04f0a  6f12                  ble.s    L4f1e                              
  04f0c  0c790009ffff8894      cmpi.w   #9,g_776c                          
  04f14  6c08                  bge.s    L4f1e                              
  04f16  2f0c                  move.l   a4,-(a7)                           
  04f18  3f3c0006              move.w   #6,-(a7)                           
  04f1c  a827                  _ShowDialogItem                             ; $a827
L4f1e:
  04f1e  0c79000cffff8894      cmpi.w   #$c,g_776c                         
  04f26  6f12                  ble.s    L4f3a                              
  04f28  0c790011ffff8894      cmpi.w   #$11,g_776c                        
  04f30  6c08                  bge.s    L4f3a                              
  04f32  2f0c                  move.l   a4,-(a7)                           
  04f34  3f3c0006              move.w   #6,-(a7)                           
  04f38  a827                  _ShowDialogItem                             ; $a827
L4f3a:
  04f3a  2f0c                  move.l   a4,-(a7)                           
  04f3c  3f3c0004              move.w   #4,-(a7)                           
  04f40  486eff50              pea      -$b0(a6)                           
  04f44  486eff2e              pea      -$d2(a6)                           
  04f48  486eff26              pea      -$da(a6)                           
  04f4c  a98d                  _GetDialogItem                              ; $a98d
  04f4e  2f2eff2e              move.l   -$d2(a6),-(a7)                     
  04f52  486efd26              pea      -$2da(a6)                          
  04f56  a98f                  _SetDialogItemText                          ; $a98f
L4f58:
  04f58  42a7                  clr.l    -(a7)                              
  04f5a  486eff54              pea      -$ac(a6)                           
  04f5e  a991                  _ModalDialog                                ; $a991
  04f60  4a6eff54              tst.w    -$ac(a6)                           
  04f64  67f2                  beq.s    L4f58                              
  04f66  302eff54              move.w   -$ac(a6),d0                        
  04f6a  670000e4              beq.w    L5050                              
  04f6e  6b0000e0              bmi.w    L5050                              
  04f72  5d40                  subq.w   #6,d0                              
  04f74  67000088              beq.w    L4ffe                              
  04f78  6a0000d6              bpl.w    L5050                              
  04f7c  5840                  addq.w   #4,d0                              
  04f7e  6776                  beq.s    L4ff6                              
  04f80  6a0000ce              bpl.w    L5050                              
  04f84  2f0c                  move.l   a4,-(a7)                           
  04f86  3f3c0003              move.w   #3,-(a7)                           
  04f8a  486eff50              pea      -$b0(a6)                           
  04f8e  486eff2e              pea      -$d2(a6)                           
  04f92  486eff26              pea      -$da(a6)                           
  04f96  a98d                  _GetDialogItem                              ; $a98d
  04f98  2f2eff2e              move.l   -$d2(a6),-(a7)                     
  04f9c  486efc26              pea      -$3da(a6)                          
  04fa0  a990                  _GetDialogItemText                          ; $a990
  04fa2  102efc26              move.b   -$3da(a6),d0                       
  04fa6  b02efe26              cmp.b    -$1da(a6),d0                       
  04faa  670a                  beq.s    L4fb6                              
  04fac  3f3c0001              move.w   #1,-(a7)                           
  04fb0  a9c8                  _SysBeep                                    ; $a9c8
  04fb2  6000009c              bra.w    L5050                              
L4fb6:
  04fb6  7a01                  moveq    #1,d5                              
  04fb8  7801                  moveq    #1,d4                              
  04fba  6024                  bra.s    L4fe0                              
L4fbc:
  04fbc  0c3600614120fc26      cmpi.b   #$61,(-$3da,a6,d4.w)               
  04fc4  6408                  bcc.s    L4fce                              
  04fc6  063600204120fc26      addi.b   #$20,(-$3da,a6,d4.w)               
L4fce:
  04fce  10364120fc26          move.b   (-$3da,a6,d4.w),d0                 
  04fd4  b0364120fe26          cmp.b    (-$1da,a6,d4.w),d0                 
  04fda  6702                  beq.s    L4fde                              
  04fdc  7a00                  moveq    #0,d5                              
L4fde:
  04fde  5244                  addq.w   #1,d4                              
L4fe0:
  04fe0  7000                  moveq    #0,d0                              
  04fe2  102efe26              move.b   -$1da(a6),d0                       
  04fe6  b044                  cmp.w    d4,d0                              
  04fe8  6ed2                  bgt.s    L4fbc                              
  04fea  4a05                  tst.b    d5                                 
  04fec  6662                  bne.s    L5050                              
  04fee  3f3c0001              move.w   #1,-(a7)                           
  04ff2  a9c8                  _SysBeep                                    ; $a9c8
  04ff4  605a                  bra.s    L5050                              
L4ff6:
  04ff6  1d7c0001fb25          move.b   #1,-$4db(a6)                       
  04ffc  6052                  bra.s    L5050                              
L4ffe:
  04ffe  5243                  addq.w   #1,d3                              
  05000  2f0c                  move.l   a4,-(a7)                           
  05002  3f3c0003              move.w   #3,-(a7)                           
  05006  486eff50              pea      -$b0(a6)                           
  0500a  486eff2e              pea      -$d2(a6)                           
  0500e  486eff26              pea      -$da(a6)                           
  05012  a98d                  _GetDialogItem                              ; $a98d
  05014  1d43fd26              move.b   d3,-$2da(a6)                       
  05018  7801                  moveq    #1,d4                              
  0501a  600c                  bra.s    L5028                              
L501c:
  0501c  1db63120fe263120fd26  move.b   (-$1da,a6,d3.w),(-$2da,a6,d3.w)    
  05026  5244                  addq.w   #1,d4                              
L5028:
  05028  b644                  cmp.w    d4,d3                              
  0502a  6cf0                  bge.s    L501c                              
  0502c  2f2eff2e              move.l   -$d2(a6),-(a7)                     
  05030  486efd26              pea      -$2da(a6)                          
  05034  a98f                  _SetDialogItemText                          ; $a98f
  05036  2f0c                  move.l   a4,-(a7)                           
  05038  3f3c0003              move.w   #3,-(a7)                           
  0503c  3f03                  move.w   d3,-(a7)                           
  0503e  3f3c0063              move.w   #$63,-(a7)                         
  05042  a97e                  _SelectDialogItemText                       ; $a97e
  05044  4a43                  tst.w    d3                                 
  05046  6f08                  ble.s    L5050                              
  05048  2f0c                  move.l   a4,-(a7)                           
  0504a  3f3c0006              move.w   #6,-(a7)                           
  0504e  a827                  _ShowDialogItem                             ; $a827
L5050:
  05050  4a05                  tst.b    d5                                 
  05052  6608                  bne.s    L505c                              
  05054  4a2efb25              tst.b    -$4db(a6)                          
  05058  6700fefe              beq.w    L4f58                              
L505c:
  0505c  2f0c                  move.l   a4,-(a7)                           
  0505e  a983                  _DisposeDialog                              ; $a983
  05060  7801                  moveq    #1,d4                              
  05062  600a                  bra.s    L506e                              
L5064:
  05064  20764520fae6          movea.l  (-$51a,a6,d4.w*4),a0               
  0506a  a01f                  _DisposePtr                                 ; $a01f
  0506c  5244                  addq.w   #1,d4                              
L506e:
  0506e  b86eff36              cmp.w    -$ca(a6),d4                        
  05072  6ff0                  ble.s    L5064                              
  05074  1005                  move.b   d5,d0                              
L5076:
  05076  4cdf18f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a3/a4         
  0507a  4e5e                  unlk     a6                                 
  0507c  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_507e
;----------------------------------------------------------------------
f4_507e:
  0507e  4e560000              link     a6,#0                              
  05082  48e70300              movem.l  d6/d7,-(a7)                        
  05086  4a39ffff9815          tst.b    g_67eb                             
  0508c  6714                  beq.s    L50a2                              
  0508e  4a39ffff9816          tst.b    g_67ea                             
  05094  670c                  beq.s    L50a2                              
  05096  4a39ffff9817          tst.b    g_67e9                             
  0509c  6704                  beq.s    L50a2                              
  0509e  7c01                  moveq    #1,d6                              
  050a0  6002                  bra.s    L50a4                              
L50a2:
  050a2  7c00                  moveq    #0,d6                              
L50a4:
  050a4  4a06                  tst.b    d6                                 
  050a6  670a                  beq.s    L50b2                              
  050a8  0c790009ffff8894      cmpi.w   #9,g_776c                          
  050b0  6d64                  blt.s    L5116                              
L50b2:
  050b2  4a39ffff9815          tst.b    g_67eb                             
  050b8  6710                  beq.s    L50ca                              
  050ba  4a39ffff9816          tst.b    g_67ea                             
  050c0  6608                  bne.s    L50ca                              
  050c2  4a39ffff9817          tst.b    g_67e9                             
  050c8  674c                  beq.s    L5116                              
L50ca:
  050ca  4a39ffff9815          tst.b    g_67eb                             
  050d0  6722                  beq.s    L50f4                              
  050d2  7000                  moveq    #0,d0                              
  050d4  1039ffff9816          move.b   g_67ea,d0                          
  050da  0c790009ffff8894      cmpi.w   #9,g_776c                          
  050e2  5dc1                  slt      d1                                 
  050e4  4401                  neg.b    d1                                 
  050e6  49c1                  extb.l   d1                                 
  050e8  c041                  and.w    d1,d0                              
  050ea  6708                  beq.s    L50f4                              
  050ec  4a39ffff9817          tst.b    g_67e9                             
  050f2  6722                  beq.s    L5116                              
L50f4:
  050f4  4a39ffff9815          tst.b    g_67eb                             
  050fa  6722                  beq.s    L511e                              
  050fc  4a39ffff9816          tst.b    g_67ea                             
  05102  661a                  bne.s    L511e                              
  05104  4a39ffff9817          tst.b    g_67e9                             
  0510a  6712                  beq.s    L511e                              
  0510c  0c790009ffff8894      cmpi.w   #9,g_776c                          
  05114  6c08                  bge.s    L511e                              
L5116:
  05116  3e3c0bb8              move.w   #$bb8,d7                           
  0511a  600000fe              bra.w    L521a                              
L511e:
  0511e  4a06                  tst.b    d6                                 
  05120  6714                  beq.s    L5136                              
  05122  0c790008ffff8894      cmpi.w   #8,g_776c                          
  0512a  6f0a                  ble.s    L5136                              
  0512c  0c790011ffff8894      cmpi.w   #$11,g_776c                        
  05134  6d70                  blt.s    L51a6                              
L5136:
  05136  4a39ffff9816          tst.b    g_67ea                             
  0513c  6710                  beq.s    L514e                              
  0513e  4a39ffff9815          tst.b    g_67eb                             
  05144  6608                  bne.s    L514e                              
  05146  4a39ffff9817          tst.b    g_67e9                             
  0514c  6758                  beq.s    L51a6                              
L514e:
  0514e  4a39ffff9816          tst.b    g_67ea                             
  05154  6724                  beq.s    L517a                              
  05156  4a39ffff9817          tst.b    g_67e9                             
  0515c  671c                  beq.s    L517a                              
  0515e  0c790008ffff8894      cmpi.w   #8,g_776c                          
  05166  6f12                  ble.s    L517a                              
  05168  0c790011ffff8894      cmpi.w   #$11,g_776c                        
  05170  6c08                  bge.s    L517a                              
  05172  4a39ffff9815          tst.b    g_67eb                             
  05178  672c                  beq.s    L51a6                              
L517a:
  0517a  4a39ffff9816          tst.b    g_67ea                             
  05180  672a                  beq.s    L51ac                              
  05182  4a39ffff9815          tst.b    g_67eb                             
  05188  6722                  beq.s    L51ac                              
  0518a  0c790008ffff8894      cmpi.w   #8,g_776c                          
  05192  6f18                  ble.s    L51ac                              
  05194  0c790011ffff8894      cmpi.w   #$11,g_776c                        
  0519c  6c0e                  bge.s    L51ac                              
  0519e  4a39ffff9817          tst.b    g_67e9                             
  051a4  6606                  bne.s    L51ac                              
L51a6:
  051a6  3e3c0bb9              move.w   #$bb9,d7                           
  051aa  606e                  bra.s    L521a                              
L51ac:
  051ac  4a06                  tst.b    d6                                 
  051ae  670a                  beq.s    L51ba                              
  051b0  0c790010ffff8894      cmpi.w   #$10,g_776c                        
  051b8  6e5c                  bgt.s    L5216                              
L51ba:
  051ba  4a39ffff9817          tst.b    g_67e9                             
  051c0  6710                  beq.s    L51d2                              
  051c2  4a39ffff9815          tst.b    g_67eb                             
  051c8  6608                  bne.s    L51d2                              
  051ca  4a39ffff9816          tst.b    g_67ea                             
  051d0  6744                  beq.s    L5216                              
L51d2:
  051d2  4a39ffff9817          tst.b    g_67e9                             
  051d8  671a                  beq.s    L51f4                              
  051da  4a39ffff9816          tst.b    g_67ea                             
  051e0  6712                  beq.s    L51f4                              
  051e2  0c790010ffff8894      cmpi.w   #$10,g_776c                        
  051ea  6f08                  ble.s    L51f4                              
  051ec  4a39ffff9815          tst.b    g_67eb                             
  051f2  6722                  beq.s    L5216                              
L51f4:
  051f4  4a39ffff9817          tst.b    g_67e9                             
  051fa  671e                  beq.s    L521a                              
  051fc  4a39ffff9815          tst.b    g_67eb                             
  05202  6716                  beq.s    L521a                              
  05204  4a39ffff9816          tst.b    g_67ea                             
  0520a  660e                  bne.s    L521a                              
  0520c  0c790010ffff8894      cmpi.w   #$10,g_776c                        
  05214  6f04                  ble.s    L521a                              
L5216:
  05216  3e3c0bba              move.w   #$bba,d7                           
L521a:
  0521a  3007                  move.w   d7,d0                              
  0521c  4cdf00c0              movem.l  (a7)+,d6/d7                        
  05220  4e5e                  unlk     a6                                 
  05222  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5224
;----------------------------------------------------------------------
f4_5224:
  05224  4e56ffec              link     a6,#-20                            
  05228  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  0522c  206e000c              movea.l  $c(a6),a0                          
  05230  7c00                  moveq    #0,d6                              
  05232  1c10                  move.b   (a0),d6                            
  05234  7a01                  moveq    #1,d5                              
  05236  6006                  bra.s    L523e                              
L5238:
  05238  3d8552ec              move.w   d5,-$14(a6,d5.w*2)                 
  0523c  5245                  addq.w   #1,d5                              
L523e:
  0523e  7001                  moveq    #1,d0                              
  05240  d046                  add.w    d6,d0                              
  05242  b045                  cmp.w    d5,d0                              
  05244  6ef2                  bgt.s    L5238                              
  05246  3e06                  move.w   d6,d7                              
  05248  7a01                  moveq    #1,d5                              
  0524a  602c                  bra.s    L5278                              
L524c:
  0524c  3f07                  move.w   d7,-(a7)                           
  0524e  4ead0242              jsr      f2_79a8                            
  05252  3800                  move.w   d0,d4                              
  05254  363642ec              move.w   -$14(a6,d4.w*2),d3                 
  05258  1db63125000c51250008  move.b   ([$c,a6],d3.w,$0),([$8,a6],d5.w,$0)
  05262  3604                  move.w   d4,d3                              
  05264  548f                  addq.l   #2,a7                              
  05266  6008                  bra.s    L5270                              
L5268:
  05268  3db632ee32ec          move.w   -$12(a6,d3.w*2),-$14(a6,d3.w*2)    
  0526e  5243                  addq.w   #1,d3                              
L5270:
  05270  be43                  cmp.w    d3,d7                              
  05272  6ef4                  bgt.s    L5268                              
  05274  5347                  subq.w   #1,d7                              
  05276  5245                  addq.w   #1,d5                              
L5278:
  05278  7001                  moveq    #1,d0                              
  0527a  d046                  add.w    d6,d0                              
  0527c  b045                  cmp.w    d5,d0                              
  0527e  6ecc                  bgt.s    L524c                              
  05280  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  05284  4e5e                  unlk     a6                                 
  05286  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5288   [jump table #134]
;----------------------------------------------------------------------
f4_5288:
  05288  4e56fd5e              link     a6,#-674                           
  0528c  48e70f08              movem.l  d4/d5/d6/d7/a4,-(a7)               
  05290  3e2e0008              move.w   $8(a6),d7                          
  05294  1c2e000a              move.b   $a(a6),d6                          
  05298  7a00                  moveq    #0,d5                              
  0529a  7800                  moveq    #0,d4                              
  0529c  4a06                  tst.b    d6                                 
  0529e  6628                  bne.s    L52c8                              
  052a0  3f3c00e9              move.w   #$e9,-(a7)                         
  052a4  1f06                  move.b   d6,-(a7)                           
  052a6  3f3c0002              move.w   #2,-(a7)                           
  052aa  42a7                  clr.l    -(a7)                              
  052ac  42a7                  clr.l    -(a7)                              
  052ae  42a7                  clr.l    -(a7)                              
  052b0  42a7                  clr.l    -(a7)                              
  052b2  2f3cffff8864          move.l   #$ffff8864,-(a7)                   
  052b8  2f3cffff8da0          move.l   #$ffff8da0,-(a7)                   
  052be  3f07                  move.w   d7,-(a7)                           
  052c0  4ead0082              jsr      f2_0b70                            
  052c4  600002bc              bra.w    L5582                              
L52c8:
  052c8  3f3c02bc              move.w   #$2bc,-(a7)                        
  052cc  486efec6              pea      -$13a(a6)                          
  052d0  486eff4a              pea      -$b6(a6)                           
  052d4  4ead025a              jsr      f2_194e                            
  052d8  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  052e0  2eb005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),(a7)           
  052e8  4ead05fa              jsr      f6_0130                            
  052ec  1800                  move.b   d0,d4                              
  052ee  4a04                  tst.b    d4                                 
  052f0  4fef000a              lea      $a(a7),a7                          
  052f4  6710                  beq.s    L5306                              
  052f6  486efd5e              pea      -$2a2(a6)                          
  052fa  2f3c000202bb          move.l   #$202bb,-(a7)                      
  05300  4ebac23a              jsr      f4_153c                            
  05304  600e                  bra.s    L5314                              
L5306:
  05306  486efd5e              pea      -$2a2(a6)                          
  0530a  2f3c000102bb          move.l   #$102bb,-(a7)                      
  05310  4ebac22a              jsr      f4_153c                            
L5314:
  05314  486efd5e              pea      -$2a2(a6)                          
  05318  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  05320  2f3005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),-(a7)          
  05328  2f2efece              move.l   -$132(a6),-(a7)                    
  0532c  2f3c0000039a          move.l   STR_039a,-(a7)                     ; "?"
  05332  a98b                  _ParamText                                  ; $a98b
  05334  42a7                  clr.l    -(a7)                              
  05336  3f3c02c7              move.w   #$2c7,-(a7)                        
  0533a  486eff54              pea      -$ac(a6)                           
  0533e  4878ffff              pea      ($ffff).w                          
  05342  a97c                  _GetNewDialog                               ; $a97c
  05344  285f                  movea.l  (a7)+,a4                           
  05346  2f0c                  move.l   a4,-(a7)                           
  05348  4ead06ba              jsr      f7_161c                            
  0534c  2e8c                  move.l   a4,(a7)                            
  0534e  a981                  _DrawDialog                                 ; $a981
  05350  3f3c0003              move.w   #3,-(a7)                           
  05354  4ead0242              jsr      f2_79a8                            
  05358  4a40                  tst.w    d0                                 
  0535a  548f                  addq.l   #2,a7                              
  0535c  672e                  beq.s    L538c                              
  0535e  6b2c                  bmi.s    L538c                              
  05360  5740                  subq.w   #3,d0                              
  05362  671e                  beq.s    L5382                              
  05364  6a26                  bpl.s    L538c                              
  05366  5240                  addq.w   #1,d0                              
  05368  6a0c                  bpl.s    L5376                              
  0536a  3f3c5bd4              move.w   #$5bd4,-(a7)                       
  0536e  4ead030a              jsr      f3_4238                            
  05372  548f                  addq.l   #2,a7                              
  05374  6016                  bra.s    L538c                              
L5376:
  05376  3f3c5be7              move.w   #$5be7,-(a7)                       
  0537a  4ead030a              jsr      f3_4238                            
  0537e  548f                  addq.l   #2,a7                              
  05380  600a                  bra.s    L538c                              
L5382:
  05382  3f3c5bf5              move.w   #$5bf5,-(a7)                       
  05386  4ead030a              jsr      f3_4238                            
  0538a  548f                  addq.l   #2,a7                              
L538c:
  0538c  43eefe5e              lea      -$1a2(a6),a1                       
  05390  307c00b4              movea.w  #$b4,a0                            
  05394  a03b                  _Delay                                      ; $a03b
  05396  2280                  move.l   d0,(a1)                            
  05398  2f0c                  move.l   a4,-(a7)                           
  0539a  a983                  _DisposeDialog                              ; $a983
  0539c  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  053a4  323073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d1             
  053ac  21b005b0ffff735a15b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d1.w*4)
  053ba  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  053c2  31b073b0ffff886403b0  move.w   (-$779c,za0,d7.w*2),(-$7c42,za0,d0.w*2)
  053d0  3f3c02c8              move.w   #$2c8,-(a7)                        
  053d4  486efe62              pea      -$19e(a6)                          
  053d8  486eff4c              pea      -$b4(a6)                           
  053dc  4ead025a              jsr      f2_194e                            
  053e0  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  053e8  04400014              subi.w   #$14,d0                            
  053ec  0c400015              cmpi.w   #$15,d0                            
  053f0  4fef000a              lea      $a(a7),a7                          
  053f4  6200012c              bhi.w    L5522                              
  053f8  43fa0192              lea      L558c(pc),a1                       
  053fc  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  05400  4ed1                  jmp      (a1)                               
  05402  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  0540a  2f360520fe16          move.l   (-$1ea,a6,d0.w*4),-(a7)            
  05410  4eba01a6              jsr      f4_55b8                            
  05414  588f                  addq.l   #4,a7                              
  05416  6000010a              bra.w    L5522                              
  0541a  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  05422  2f360520fe16          move.l   (-$1ea,a6,d0.w*4),-(a7)            
  05428  4ead00ea              jsr      f2_2b18                            
  0542c  588f                  addq.l   #4,a7                              
  0542e  600000f2              bra.w    L5522                              
  05432  4eba0266              jsr      f4_569a                            
  05436  600000ea              bra.w    L5522                              
  0543a  4eba0394              jsr      f4_57d0                            
  0543e  600000e2              bra.w    L5522                              
  05442  4eba03d8              jsr      f4_581c                            
  05446  600000da              bra.w    L5522                              
  0544a  4eba03aa              jsr      f4_57f6                            
  0544e  600000d2              bra.w    L5522                              
  05452  4eba040e              jsr      f4_5862                            
  05456  600000ca              bra.w    L5522                              
  0545a  4ead01c2              jsr      f2_6b24                            
  0545e  600000c2              bra.w    L5522                              
  05462  4eba0444              jsr      f4_58a8                            
  05466  600000ba              bra.w    L5522                              
  0546a  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  05472  2f360520fe16          move.l   (-$1ea,a6,d0.w*4),-(a7)            
  05478  4eba045e              jsr      f4_58d8                            
  0547c  588f                  addq.l   #4,a7                              
  0547e  600000a2              bra.w    L5522                              
  05482  4eba046c              jsr      f4_58f0                            
  05486  6000009a              bra.w    L5522                              
  0548a  4eba049c              jsr      f4_5928                            
  0548e  60000092              bra.w    L5522                              
  05492  4eba0558              jsr      f4_59ec                            
  05496  6000008a              bra.w    L5522                              
  0549a  4eba05fa              jsr      f4_5a96                            
  0549e  60000082              bra.w    L5522                              
  054a2  4eba0558              jsr      f4_59fc                            
  054a6  607a                  bra.s    L5522                              
  054a8  4eba063e              jsr      f4_5ae8                            
  054ac  6074                  bra.s    L5522                              
  054ae  4eba065c              jsr      f4_5b0c                            
  054b2  606e                  bra.s    L5522                              
  054b4  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  054bc  2f360520fe16          move.l   (-$1ea,a6,d0.w*4),-(a7)            
  054c2  4eba066c              jsr      f4_5b30                            
  054c6  588f                  addq.l   #4,a7                              
  054c8  6058                  bra.s    L5522                              
  054ca  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  054d2  2f360520fe16          move.l   (-$1ea,a6,d0.w*4),-(a7)            
  054d8  4eba068a              jsr      f4_5b64                            
  054dc  588f                  addq.l   #4,a7                              
  054de  6042                  bra.s    L5522                              
  054e0  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  054e8  2f360520fe16          move.l   (-$1ea,a6,d0.w*4),-(a7)            
  054ee  4eba06e0              jsr      f4_5bd0                            
  054f2  588f                  addq.l   #4,a7                              
  054f4  602c                  bra.s    L5522                              
  054f6  303073b0ffff8864      move.w   (-$779c,za0,d7.w*2),d0             
  054fe  2f360520fe16          move.l   (-$1ea,a6,d0.w*4),-(a7)            
  05504  4eba0710              jsr      f4_5c16                            
  05508  588f                  addq.l   #4,a7                              
  0550a  6016                  bra.s    L5522                              
  0550c  3f39ffff8da4          move.w   g_725c,-(a7)                       
  05512  2f3cffff887c          move.l   #$ffff887c,-(a7)                   
  05518  3f3c0003              move.w   #3,-(a7)                           
  0551c  4ead00e2              jsr      f2_2944                            
  05520  508f                  addq.l   #8,a7                              
L5522:
  05522  4ead0312              jsr      f3_4384                            
  05526  3f3c00e9              move.w   #$e9,-(a7)                         
  0552a  1f06                  move.b   d6,-(a7)                           
  0552c  3f3c0002              move.w   #2,-(a7)                           
  05530  42a7                  clr.l    -(a7)                              
  05532  42a7                  clr.l    -(a7)                              
  05534  42a7                  clr.l    -(a7)                              
  05536  42a7                  clr.l    -(a7)                              
  05538  2f3cffff8864          move.l   #$ffff8864,-(a7)                   
  0553e  2f3cffff8da0          move.l   #$ffff8da0,-(a7)                   
  05544  3f07                  move.w   d7,-(a7)                           
  05546  4ead0082              jsr      f2_0b70                            
  0554a  7e01                  moveq    #1,d7                              
  0554c  4fef0020              lea      $20(a7),a7                         
  05550  600a                  bra.s    L555c                              
L5552:
  05552  20767520fec6          movea.l  (-$13a,a6,d7.w*4),a0               
  05558  a01f                  _DisposePtr                                 ; $a01f
  0555a  5247                  addq.w   #1,d7                              
L555c:
  0555c  be6eff4a              cmp.w    -$b6(a6),d7                        
  05560  6ff0                  ble.s    L5552                              
  05562  7e01                  moveq    #1,d7                              
  05564  600a                  bra.s    L5570                              
L5566:
  05566  20767520fe62          movea.l  (-$19e,a6,d7.w*4),a0               
  0556c  a01f                  _DisposePtr                                 ; $a01f
  0556e  5247                  addq.w   #1,d7                              
L5570:
  05570  be6eff4c              cmp.w    -$b4(a6),d7                        
  05574  6ff0                  ble.s    L5566                              
  05576  4a39ffff8dfb          tst.b    g_7205                             
  0557c  6604                  bne.s    L5582                              
  0557e  4ead032a              jsr      f3_44be                            
L5582:
  05582  4cee10f0fd4a          movem.l  -$2b6(a6),d4/d5/d6/d7/a4           
  05588  4e5e                  unlk     a6                                 
  0558a  4e75                  rts                                         
  0558c  fe76                  dc.w     $fe76                              
  0558e  fe8e                  dc.w     $fe8e                              
  05590  fea6                  dc.w     $fea6                              
  05592  feae                  dc.w     $feae                              
  05594  feb6                  dc.w     $feb6                              
  05596  febe                  dc.w     $febe                              
  05598  fec6                  dc.w     $fec6                              
  0559a  fece                  dc.w     $fece                              
  0559c  fed6                  dc.w     $fed6                              
  0559e  fede                  dc.w     $fede                              
  055a0  fef6                  dc.w     $fef6                              
  055a2  fefe                  dc.w     $fefe                              
  055a4  ff06                  dc.w     $ff06                              
  055a6  ff0e                  dc.w     $ff0e                              
  055a8  ff16                  dc.w     $ff16                              
  055aa  ff1c                  dc.w     $ff1c                              
  055ac  ff22                  dc.w     $ff22                              
  055ae  ff28                  dc.w     $ff28                              
  055b0  ff3e                  dc.w     $ff3e                              
  055b2  ff54                  dc.w     $ff54                              
  055b4  ff6a                  dc.w     $ff6a                              
  055b6  ff80                  dc.w     $ff80                              

;----------------------------------------------------------------------
; f4_55b8   [jump table #135]
;----------------------------------------------------------------------
f4_55b8:
  055b8  4e56fffc              link     a6,#-4                             
  055bc  2f07                  move.l   d7,-(a7)                           
  055be  486efffc              pea      -$4(a6)                            
  055c2  a874                  _GetPort                                    ; $a874
  055c4  202efffc              move.l   -$4(a6),d0                         
  055c8  b0b9ffff9382          cmp.l    g_6c7e,d0                          
  055ce  6706                  beq.s    L55d6                              
  055d0  2f2efffc              move.l   -$4(a6),-(a7)                      
  055d4  a916                  _HideWindow                                 ; $a916
L55d6:
  055d6  2f2e0008              move.l   $8(a6),-(a7)                       
  055da  4ead021a              jsr      f2_7908                            
  055de  3eb9ffff8894          move.w   g_776c,(a7)                        
  055e4  4ebaf028              jsr      f4_460e                            
  055e8  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  055ee  4ead0532              jsr      f5_146e                            
  055f2  2eb9ffff8fb6          move.l   g_704a,(a7)                        
  055f8  4ead0532              jsr      f5_146e                            
  055fc  2eb9ffff8fd2          move.l   g_702e,(a7)                        
  05602  4ead0532              jsr      f5_146e                            
  05606  4eba06c8              jsr      f4_5cd0                            
  0560a  3ebc0003              move.w   #3,(a7)                            
  0560e  4ead0242              jsr      f2_79a8                            
  05612  3e00                  move.w   d0,d7                              
  05614  3ebc0002              move.w   #2,(a7)                            
  05618  4ead0242              jsr      f2_79a8                            
  0561c  5540                  subq.w   #2,d0                              
  0561e  588f                  addq.l   #4,a7                              
  05620  6c02                  bge.s    L5624                              
  05622  4447                  neg.w    d7                                 
L5624:
  05624  df79ffff8894          add.w    d7,g_776c                          
  0562a  0c790001ffff8894      cmpi.w   #1,g_776c                          
  05632  6c08                  bge.s    L563c                              
  05634  33fc0001ffff8894      move.w   #1,g_776c                          
L563c:
  0563c  0c790014ffff8894      cmpi.w   #$14,g_776c                        
  05644  6f08                  ble.s    L564e                              
  05646  33fc0014ffff8894      move.w   #$14,g_776c                        
L564e:
  0564e  4227                  clr.b    -(a7)                              
  05650  3f39ffff8894          move.w   g_776c,-(a7)                       
  05656  4ebaeac4              jsr      f4_411c                            
  0565a  4a47                  tst.w    d7                                 
  0565c  588f                  addq.l   #4,a7                              
  0565e  6c0a                  bge.s    L566a                              
  05660  4227                  clr.b    -(a7)                              
  05662  4ead039a              jsr      f3_5578                            
  05666  548f                  addq.l   #2,a7                              
  05668  600a                  bra.s    L5674                              
L566a:
  0566a  1f3c0001              move.b   #1,-(a7)                           
  0566e  4ead039a              jsr      f3_5578                            
  05672  548f                  addq.l   #2,a7                              
L5674:
  05674  4239ffff8ded          clr.b    g_7213                             
  0567a  4239ffff8df4          clr.b    g_720c                             
  05680  33fc0002ffff883a      move.w   #2,g_77c6                          
  05688  4279ffff883c          clr.w    g_77c4                             
  0568e  2f2efffc              move.l   -$4(a6),-(a7)                      
  05692  a915                  _ShowWindow                                 ; $a915
  05694  2e1f                  move.l   (a7)+,d7                           
  05696  4e5e                  unlk     a6                                 
  05698  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_569a
;----------------------------------------------------------------------
f4_569a:
  0569a  4e56ff46              link     a6,#-186                           
  0569e  48e70108              movem.l  d7/a4,-(a7)                        
  056a2  7e00                  moveq    #0,d7                              
  056a4  4a79ffff8380          tst.w    g_7c80                             
  056aa  6d12                  blt.s    L56be                              
  056ac  4a79ffff838e          tst.w    g_7c72                             
  056b2  6d0a                  blt.s    L56be                              
  056b4  4a79ffff837e          tst.w    g_7c82                             
  056ba  6c00010c              bge.w    L57c8                              
L56be:
  056be  42a7                  clr.l    -(a7)                              
  056c0  3f3c02cc              move.w   #$2cc,-(a7)                        
  056c4  486eff56              pea      -$aa(a6)                           
  056c8  4878ffff              pea      ($ffff).w                          
  056cc  a97c                  _GetNewDialog                               ; $a97c
  056ce  285f                  movea.l  (a7)+,a4                           
  056d0  4a79ffff8380          tst.w    g_7c80                             
  056d6  6d08                  blt.s    L56e0                              
  056d8  2f0c                  move.l   a4,-(a7)                           
  056da  3f3c0001              move.w   #1,-(a7)                           
  056de  a827                  _ShowDialogItem                             ; $a827
L56e0:
  056e0  4a79ffff837e          tst.w    g_7c82                             
  056e6  6d08                  blt.s    L56f0                              
  056e8  2f0c                  move.l   a4,-(a7)                           
  056ea  3f3c0002              move.w   #2,-(a7)                           
  056ee  a827                  _ShowDialogItem                             ; $a827
L56f0:
  056f0  4a79ffff838e          tst.w    g_7c72                             
  056f6  6d08                  blt.s    L5700                              
  056f8  2f0c                  move.l   a4,-(a7)                           
  056fa  3f3c0003              move.w   #3,-(a7)                           
  056fe  a827                  _ShowDialogItem                             ; $a827
L5700:
  05700  2f0c                  move.l   a4,-(a7)                           
  05702  a915                  _ShowWindow                                 ; $a915
  05704  2f0c                  move.l   a4,-(a7)                           
  05706  a981                  _DrawDialog                                 ; $a981
L5708:
  05708  42a7                  clr.l    -(a7)                              
  0570a  486eff54              pea      -$ac(a6)                           
  0570e  a991                  _ModalDialog                                ; $a991
  05710  302eff54              move.w   -$ac(a6),d0                        
  05714  674c                  beq.s    L5762                              
  05716  6b4a                  bmi.s    L5762                              
  05718  5140                  subq.w   #8,d0                              
  0571a  6746                  beq.s    L5762                              
  0571c  6a44                  bpl.s    L5762                              
  0571e  5840                  addq.w   #4,d0                              
  05720  6a40                  bpl.s    L5762                              
  05722  4a47                  tst.w    d7                                 
  05724  671a                  beq.s    L5740                              
  05726  2f0c                  move.l   a4,-(a7)                           
  05728  3f07                  move.w   d7,-(a7)                           
  0572a  486eff52              pea      -$ae(a6)                           
  0572e  486eff4e              pea      -$b2(a6)                           
  05732  486eff46              pea      -$ba(a6)                           
  05736  a98d                  _GetDialogItem                              ; $a98d
  05738  2f2eff4e              move.l   -$b2(a6),-(a7)                     
  0573c  4267                  clr.w    -(a7)                              
  0573e  a963                  _SetCtlValue                                ; $a963
L5740:
  05740  2f0c                  move.l   a4,-(a7)                           
  05742  3f2eff54              move.w   -$ac(a6),-(a7)                     
  05746  486eff52              pea      -$ae(a6)                           
  0574a  486eff4e              pea      -$b2(a6)                           
  0574e  486eff46              pea      -$ba(a6)                           
  05752  a98d                  _GetDialogItem                              ; $a98d
  05754  2f2eff4e              move.l   -$b2(a6),-(a7)                     
  05758  3f3c0001              move.w   #1,-(a7)                           
  0575c  a963                  _SetCtlValue                                ; $a963
  0575e  3e2eff54              move.w   -$ac(a6),d7                        
L5762:
  05762  0c6e0004ff54          cmpi.w   #4,-$ac(a6)                        
  05768  6d9e                  blt.s    L5708                              
  0576a  4a47                  tst.w    d7                                 
  0576c  679a                  beq.s    L5708                              
  0576e  2f0c                  move.l   a4,-(a7)                           
  05770  a982                  _CloseDialog                                ; $a982
  05772  3007                  move.w   d7,d0                              
  05774  6752                  beq.s    L57c8                              
  05776  6b50                  bmi.s    L57c8                              
  05778  5740                  subq.w   #3,d0                              
  0577a  6730                  beq.s    L57ac                              
  0577c  6a4a                  bpl.s    L57c8                              
  0577e  5240                  addq.w   #1,d0                              
  05780  6a0c                  bpl.s    L578e                              
  05782  4279ffff8380          clr.w    g_7c80                             
  05788  4ead01ea              jsr      f2_70c2                            
  0578c  603a                  bra.s    L57c8                              
L578e:
  0578e  3039ffff8374          move.w   g_7c8c,d0                          
  05794  d079ffff837e          add.w    g_7c82,d0                          
  0579a  33c0ffff8374          move.w   d0,g_7c8c                          
  057a0  4279ffff837e          clr.w    g_7c82                             
  057a6  4ead01a2              jsr      f2_68d4                            
  057aa  601c                  bra.s    L57c8                              
L57ac:
  057ac  3039ffff8374          move.w   g_7c8c,d0                          
  057b2  d079ffff838e          add.w    g_7c72,d0                          
  057b8  33c0ffff8374          move.w   d0,g_7c8c                          
  057be  4279ffff838e          clr.w    g_7c72                             
  057c4  4ead01a2              jsr      f2_68d4                            
L57c8:
  057c8  4cdf1080              movem.l  (a7)+,d7/a4                        
  057cc  4e5e                  unlk     a6                                 
  057ce  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_57d0
;----------------------------------------------------------------------
f4_57d0:
  057d0  4e560000              link     a6,#0                              
  057d4  0c790008ffff837e      cmpi.w   #8,g_7c82                          
  057dc  6c14                  bge.s    L57f2                              
  057de  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  057e6  670a                  beq.s    L57f2                              
  057e8  5279ffff837e          addq.w   #1,g_7c82                          
  057ee  4ead01a2              jsr      f2_68d4                            
L57f2:
  057f2  4e5e                  unlk     a6                                 
  057f4  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_57f6
;----------------------------------------------------------------------
f4_57f6:
  057f6  4e560000              link     a6,#0                              
  057fa  0c790008ffff8380      cmpi.w   #8,g_7c80                          
  05802  6c14                  bge.s    L5818                              
  05804  0c790006ffff83a2      cmpi.w   #6,g_7c5e                          
  0580c  670a                  beq.s    L5818                              
  0580e  5279ffff8380          addq.w   #1,g_7c80                          
  05814  4ead01ea              jsr      f2_70c2                            
L5818:
  05818  4e5e                  unlk     a6                                 
  0581a  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_581c
;----------------------------------------------------------------------
f4_581c:
  0581c  4e560000              link     a6,#0                              
  05820  2f07                  move.l   d7,-(a7)                           
  05822  4a39ffff9852          tst.b    g_67ae                             
  05828  6704                  beq.s    L582e                              
  0582a  7000                  moveq    #0,d0                              
  0582c  600e                  bra.s    L583c                              
L582e:
  0582e  4a39ffff9856          tst.b    g_67aa                             
  05834  6704                  beq.s    L583a                              
  05836  7003                  moveq    #3,d0                              
  05838  6002                  bra.s    L583c                              
L583a:
  0583a  7001                  moveq    #1,d0                              
L583c:
  0583c  3e00                  move.w   d0,d7                              
  0583e  0c79fffcffff837e      cmpi.w   #$fffc,g_7c82                      
  05846  6f14                  ble.s    L585c                              
  05848  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  05850  670a                  beq.s    L585c                              
  05852  9f79ffff837e          sub.w    d7,g_7c82                          
  05858  4ead01a2              jsr      f2_68d4                            
L585c:
  0585c  2e1f                  move.l   (a7)+,d7                           
  0585e  4e5e                  unlk     a6                                 
  05860  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5862
;----------------------------------------------------------------------
f4_5862:
  05862  4e560000              link     a6,#0                              
  05866  2f07                  move.l   d7,-(a7)                           
  05868  4a39ffff9852          tst.b    g_67ae                             
  0586e  6704                  beq.s    L5874                              
  05870  7000                  moveq    #0,d0                              
  05872  600e                  bra.s    L5882                              
L5874:
  05874  4a39ffff9856          tst.b    g_67aa                             
  0587a  6704                  beq.s    L5880                              
  0587c  7003                  moveq    #3,d0                              
  0587e  6002                  bra.s    L5882                              
L5880:
  05880  7001                  moveq    #1,d0                              
L5882:
  05882  3e00                  move.w   d0,d7                              
  05884  0c79fffcffff8380      cmpi.w   #$fffc,g_7c80                      
  0588c  6f14                  ble.s    L58a2                              
  0588e  0c790006ffff83a2      cmpi.w   #6,g_7c5e                          
  05896  670a                  beq.s    L58a2                              
  05898  9f79ffff8380          sub.w    d7,g_7c80                          
  0589e  4ead01ea              jsr      f2_70c2                            
L58a2:
  058a2  2e1f                  move.l   (a7)+,d7                           
  058a4  4e5e                  unlk     a6                                 
  058a6  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_58a8
;----------------------------------------------------------------------
f4_58a8:
  058a8  4e560000              link     a6,#0                              
  058ac  2f07                  move.l   d7,-(a7)                           
  058ae  7002                  moveq    #2,d0                              
  058b0  2e39ffff83a6          move.l   g_7c5a,d7                          
  058b6  4c407807              divs.l   d0,d7                              
  058ba  0c47012c              cmpi.w   #$12c,d7                           
  058be  6c04                  bge.s    L58c4                              
  058c0  3e3c012c              move.w   #$12c,d7                           
L58c4:
  058c4  3047                  movea.w  d7,a0                              
  058c6  2008                  move.l   a0,d0                              
  058c8  d1b9ffff83a6          add.l    d0,g_7c5a                          
  058ce  4ead01ba              jsr      f2_6a8c                            
  058d2  2e1f                  move.l   (a7)+,d7                           
  058d4  4e5e                  unlk     a6                                 
  058d6  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_58d8
;----------------------------------------------------------------------
f4_58d8:
  058d8  4e560000              link     a6,#0                              
  058dc  2f2e0008              move.l   $8(a6),-(a7)                       
  058e0  4ead021a              jsr      f2_7908                            
  058e4  13fc0001ffff8df4      move.b   #1,g_720c                          
  058ec  4e5e                  unlk     a6                                 
  058ee  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_58f0
;----------------------------------------------------------------------
f4_58f0:
  058f0  4e560000              link     a6,#0                              
  058f4  486d0432              pea      f4_45a2                            
  058f8  2f3c00190001          move.l   #$190001,-(a7)                     
  058fe  3f3c000c              move.w   #$c,-(a7)                          
  05902  2f3cffff8378          move.l   #$ffff8378,-(a7)                   
  05908  4ead014a              jsr      f2_46ee                            
  0590c  486d041a              pea      f4_43d4                            
  05910  2f3c00190001          move.l   #$190001,-(a7)                     
  05916  3f3c000c              move.w   #$c,-(a7)                          
  0591a  2f3cffff8376          move.l   #$ffff8376,-(a7)                   
  05920  4ead014a              jsr      f2_46ee                            
  05924  4e5e                  unlk     a6                                 
  05926  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5928
;----------------------------------------------------------------------
f4_5928:
  05928  4e560000              link     a6,#0                              
  0592c  2f07                  move.l   d7,-(a7)                           
  0592e  3039ffff8374          move.w   g_7c8c,d0                          
  05934  d079ffff838e          add.w    g_7c72,d0                          
  0593a  d079ffff837e          add.w    g_7c82,d0                          
  05940  33c0ffff8374          move.w   d0,g_7c8c                          
  05946  4279ffff837e          clr.w    g_7c82                             
  0594c  4279ffff838e          clr.w    g_7c72                             
  05952  0c390001ffff9850      cmpi.b   #1,g_67b0                          
  0595a  6608                  bne.s    L5964                              
  0595c  33fc0005ffff837e      move.w   #5,g_7c82                          
L5964:
  05964  3039ffff8374          move.w   g_7c8c,d0                          
  0596a  9179ffff8374          sub.w    d0,g_7c8c                          
  05970  4a79ffff8dba          tst.w    g_7246                             
  05976  6f32                  ble.s    L59aa                              
  05978  7e01                  moveq    #1,d7                              
  0597a  6026                  bra.s    L59a2                              
L597c:
  0597c  4a7073b0ffff98cc      tst.w    (-$6734,za0,d7.w*2)                
  05984  671a                  beq.s    L59a0                              
  05986  70b9                  moveq    #-71,d0                            
  05988  d07073b0ffff8e56      add.w    (-$71aa,za0,d7.w*2),d0             
  05990  660e                  bne.s    L59a0                              
  05992  303073b0ffff8840      move.w   (-$77c0,za0,d7.w*2),d0             
  0599a  9179ffff8374          sub.w    d0,g_7c8c                          
L59a0:
  059a0  5247                  addq.w   #1,d7                              
L59a2:
  059a2  be79ffff8dba          cmp.w    g_7246,d7                          
  059a8  6fd2                  ble.s    L597c                              
L59aa:
  059aa  4ead01a2              jsr      f2_68d4                            
  059ae  4279ffff8380          clr.w    g_7c80                             
  059b4  0c390002ffff9850      cmpi.b   #2,g_67b0                          
  059bc  6608                  bne.s    L59c6                              
  059be  33fc0005ffff8380      move.w   #5,g_7c80                          
L59c6:
  059c6  4ead01ea              jsr      f2_70c2                            
  059ca  4a79ffff8dac          tst.w    g_7254                             
  059d0  6f06                  ble.s    L59d8                              
  059d2  4279ffff8db0          clr.w    g_7250                             
L59d8:
  059d8  4a79ffff8db2          tst.w    g_724e                             
  059de  6f06                  ble.s    L59e6                              
  059e0  4279ffff8db6          clr.w    g_724a                             
L59e6:
  059e6  2e1f                  move.l   (a7)+,d7                           
  059e8  4e5e                  unlk     a6                                 
  059ea  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_59ec
;----------------------------------------------------------------------
f4_59ec:
  059ec  4e560000              link     a6,#0                              
  059f0  4ebafdde              jsr      f4_57d0                            
  059f4  4ebafe00              jsr      f4_57f6                            
  059f8  4e5e                  unlk     a6                                 
  059fa  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_59fc
;----------------------------------------------------------------------
f4_59fc:
  059fc  4e560000              link     a6,#0                              
  05a00  2f07                  move.l   d7,-(a7)                           
  05a02  3f3c0005              move.w   #5,-(a7)                           
  05a06  4ead0242              jsr      f2_79a8                            
  05a0a  3e00                  move.w   d0,d7                              
  05a0c  23f075b0ffff69a8ffff  move.l   (-$9658,za0,d7.w*4),g_7c68         
  05a18  33c7ffff83a0          move.w   d7,g_7c60                          
  05a1e  4279ffff837e          clr.w    g_7c82                             
  05a24  0c390001ffff9850      cmpi.b   #1,g_67b0                          
  05a2c  548f                  addq.l   #2,a7                              
  05a2e  6608                  bne.s    L5a38                              
  05a30  33fc0005ffff837e      move.w   #5,g_7c82                          
L5a38:
  05a38  303073b0ffff3ae2      move.w   (-$c51e,za0,d7.w*2),d0             
  05a40  9079ffff838e          sub.w    g_7c72,d0                          
  05a46  9079ffff8392          sub.w    g_7c6e,d0                          
  05a4c  9079ffff837e          sub.w    g_7c82,d0                          
  05a52  33c0ffff8374          move.w   d0,g_7c8c                          
  05a58  4a39ffff8df5          tst.b    g_720b                             
  05a5e  6726                  beq.s    L5a86                              
  05a60  7e01                  moveq    #1,d7                              
  05a62  601a                  bra.s    L5a7e                              
L5a64:
  05a64  4a7073b0ffff8e56      tst.w    (-$71aa,za0,d7.w*2)                
  05a6c  660e                  bne.s    L5a7c                              
  05a6e  303073b0ffff8840      move.w   (-$77c0,za0,d7.w*2),d0             
  05a76  9179ffff8374          sub.w    d0,g_7c8c                          
L5a7c:
  05a7c  5247                  addq.w   #1,d7                              
L5a7e:
  05a7e  be79ffff8dba          cmp.w    g_7246,d7                          
  05a84  6fde                  ble.s    L5a64                              
L5a86:
  05a86  4279ffff8838          clr.w    g_77c8                             
  05a8c  4ead01a2              jsr      f2_68d4                            
  05a90  2e1f                  move.l   (a7)+,d7                           
  05a92  4e5e                  unlk     a6                                 
  05a94  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5a96
;----------------------------------------------------------------------
f4_5a96:
  05a96  4e560000              link     a6,#0                              
  05a9a  2f07                  move.l   d7,-(a7)                           
  05a9c  3f3c0005              move.w   #5,-(a7)                           
  05aa0  4ead0242              jsr      f2_79a8                            
  05aa4  3e00                  move.w   d0,d7                              
  05aa6  23f075b0ffff69f8ffff  move.l   (-$9608,za0,d7.w*4),g_7c64         
  05ab2  33c7ffff83a2          move.w   d7,g_7c5e                          
  05ab8  33c7ffff838c          move.w   d7,g_7c74                          
  05abe  4279ffff8380          clr.w    g_7c80                             
  05ac4  0c390002ffff9850      cmpi.b   #2,g_67b0                          
  05acc  548f                  addq.l   #2,a7                              
  05ace  6608                  bne.s    L5ad8                              
  05ad0  33fc0005ffff8380      move.w   #5,g_7c80                          
L5ad8:
  05ad8  4ead01ea              jsr      f2_70c2                            
  05adc  4279ffff83ac          clr.w    g_7c54                             
  05ae2  2e1f                  move.l   (a7)+,d7                           
  05ae4  4e5e                  unlk     a6                                 
  05ae6  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5ae8
;----------------------------------------------------------------------
f4_5ae8:
  05ae8  4e560000              link     a6,#0                              
  05aec  0c790008ffff838e      cmpi.w   #8,g_7c72                          
  05af4  6c12                  bge.s    L5b08                              
  05af6  4a79ffff8392          tst.w    g_7c6e                             
  05afc  670a                  beq.s    L5b08                              
  05afe  5279ffff838e          addq.w   #1,g_7c72                          
  05b04  4ead01a2              jsr      f2_68d4                            
L5b08:
  05b08  4e5e                  unlk     a6                                 
  05b0a  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5b0c
;----------------------------------------------------------------------
f4_5b0c:
  05b0c  4e560000              link     a6,#0                              
  05b10  0c79fffcffff838e      cmpi.w   #$fffc,g_7c72                      
  05b18  6f12                  ble.s    L5b2c                              
  05b1a  4a79ffff8392          tst.w    g_7c6e                             
  05b20  670a                  beq.s    L5b2c                              
  05b22  5379ffff838e          subq.w   #1,g_7c72                          
  05b28  4ead01a2              jsr      f2_68d4                            
L5b2c:
  05b2c  4e5e                  unlk     a6                                 
  05b2e  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5b30
;----------------------------------------------------------------------
f4_5b30:
  05b30  4e560000              link     a6,#0                              
  05b34  4a79ffff8da4          tst.w    g_725c                             
  05b3a  6f0a                  ble.s    L5b46                              
  05b3c  2f2e0008              move.l   $8(a6),-(a7)                       
  05b40  4ead021a              jsr      f2_7908                            
  05b44  588f                  addq.l   #4,a7                              
L5b46:
  05b46  4279ffff8da4          clr.w    g_725c                             
  05b4c  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  05b52  3f3c0003              move.w   #3,-(a7)                           
  05b56  a93a                  _DisableItem                                ; $a93a
  05b58  4ead075a              jsr      f7_31f0                            
  05b5c  4ead073a              jsr      f7_2bb6                            
  05b60  4e5e                  unlk     a6                                 
  05b62  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5b64
;----------------------------------------------------------------------
f4_5b64:
  05b64  4e560000              link     a6,#0                              
  05b68  4a79ffff8392          tst.w    g_7c6e                             
  05b6e  6608                  bne.s    L5b78                              
  05b70  4a79ffff8da8          tst.w    g_7258                             
  05b76  6754                  beq.s    L5bcc                              
L5b78:
  05b78  2f2e0008              move.l   $8(a6),-(a7)                       
  05b7c  4ead021a              jsr      f2_7908                            
  05b80  3039ffff83a0          move.w   g_7c60,d0                          
  05b86  303003b0ffff3ae2      move.w   (-$c51e,za0,d0.w*2),d0             
  05b8e  9079ffff837e          sub.w    g_7c82,d0                          
  05b94  33c0ffff8374          move.w   d0,g_7c8c                          
  05b9a  4279ffff838e          clr.w    g_7c72                             
  05ba0  4279ffff8392          clr.w    g_7c6e                             
  05ba6  4ead01a2              jsr      f2_68d4                            
  05baa  2eb9ffff8dc8          move.l   g_7238,(a7)                        
  05bb0  3f3c0006              move.w   #6,-(a7)                           
  05bb4  a93a                  _DisableItem                                ; $a93a
  05bb6  3f39ffff836e          move.w   g_7c92,-(a7)                       
  05bbc  3f39ffff836c          move.w   g_7c94,-(a7)                       
  05bc2  4ead008a              jsr      f2_0c6e                            
  05bc6  4ead013a              jsr      f2_4410                            
  05bca  588f                  addq.l   #4,a7                              
L5bcc:
  05bcc  4e5e                  unlk     a6                                 
  05bce  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5bd0
;----------------------------------------------------------------------
f4_5bd0:
  05bd0  4e560000              link     a6,#0                              
  05bd4  4a79ffff8dac          tst.w    g_7254                             
  05bda  6608                  bne.s    L5be4                              
  05bdc  4a79ffff8db2          tst.w    g_724e                             
  05be2  670a                  beq.s    L5bee                              
L5be4:
  05be4  2f2e0008              move.l   $8(a6),-(a7)                       
  05be8  4ead021a              jsr      f2_7908                            
  05bec  588f                  addq.l   #4,a7                              
L5bee:
  05bee  4279ffff8db2          clr.w    g_724e                             
  05bf4  4279ffff8dac          clr.w    g_7254                             
  05bfa  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  05c00  3f3c0004              move.w   #4,-(a7)                           
  05c04  a93a                  _DisableItem                                ; $a93a
  05c06  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  05c0c  3f3c0005              move.w   #5,-(a7)                           
  05c10  a93a                  _DisableItem                                ; $a93a
  05c12  4e5e                  unlk     a6                                 
  05c14  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5c16
;----------------------------------------------------------------------
f4_5c16:
  05c16  4e560000              link     a6,#0                              
  05c1a  48e70300              movem.l  d6/d7,-(a7)                        
  05c1e  4279ffff8da0          clr.w    g_7260                             
  05c24  4279ffff8da2          clr.w    g_725e                             
  05c2a  4279ffff8da4          clr.w    g_725c                             
  05c30  4279ffff8dac          clr.w    g_7254                             
  05c36  4279ffff8db2          clr.w    g_724e                             
  05c3c  4279ffff8db8          clr.w    g_7248                             
  05c42  4279ffff8dba          clr.w    g_7246                             
  05c48  4279ffff8dbc          clr.w    g_7244                             
  05c4e  4279ffff8da8          clr.w    g_7258                             
  05c54  7c00                  moveq    #0,d6                              
  05c56  601a                  bra.s    L5c72                              
L5c58:
  05c58  427063b0ffff8864      clr.w    (-$779c,za0,d6.w*2)                
  05c60  427063b0ffff8858      clr.w    (-$77a8,za0,d6.w*2)                
  05c68  423061b0ffff9858      clr.b    (-$67a8,za0,d6.w)                  
  05c70  5246                  addq.w   #1,d6                              
L5c72:
  05c72  0c460005              cmpi.w   #5,d6                              
  05c76  6de0                  blt.s    L5c58                              
  05c78  7c00                  moveq    #0,d6                              
  05c7a  600a                  bra.s    L5c86                              
L5c7c:
  05c7c  423061b0ffff8df5      clr.b    (-$720b,za0,d6.w)                  
  05c84  5246                  addq.w   #1,d6                              
L5c86:
  05c86  0c460004              cmpi.w   #4,d6                              
  05c8a  6df0                  blt.s    L5c7c                              
  05c8c  7c00                  moveq    #0,d6                              
  05c8e  600a                  bra.s    L5c9a                              
L5c90:
  05c90  423061b0ffff9850      clr.b    (-$67b0,za0,d6.w)                  
  05c98  5246                  addq.w   #1,d6                              
L5c9a:
  05c9a  0c460009              cmpi.w   #9,d6                              
  05c9e  6df0                  blt.s    L5c90                              
  05ca0  4ead01a2              jsr      f2_68d4                            
  05ca4  4ead01ea              jsr      f2_70c2                            
  05ca8  7e01                  moveq    #1,d7                              
  05caa  600c                  bra.s    L5cb8                              
L5cac:
  05cac  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  05cb2  3f07                  move.w   d7,-(a7)                           
  05cb4  a93a                  _DisableItem                                ; $a93a
  05cb6  5247                  addq.w   #1,d7                              
L5cb8:
  05cb8  0c470007              cmpi.w   #7,d7                              
  05cbc  6dee                  blt.s    L5cac                              
  05cbe  2f2e0008              move.l   $8(a6),-(a7)                       
  05cc2  4ead021a              jsr      f2_7908                            
  05cc6  4cee00c0fff8          movem.l  -$8(a6),d6/d7                      
  05ccc  4e5e                  unlk     a6                                 
  05cce  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5cd0   [jump table #136]
;----------------------------------------------------------------------
f4_5cd0:
  05cd0  4e56fff8              link     a6,#-8                             
  05cd4  2f07                  move.l   d7,-(a7)                           
  05cd6  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  05cdc  a873                  _SetPort                                    ; $a873
  05cde  2f3c00040004          move.l   #$40004,-(a7)                      
  05ce4  a89b                  _PenSize                                    ; $a89b
  05ce6  2079ffff9382          movea.l  g_6c7e,a0                          
  05cec  2d680010fff8          move.l   $10(a0),-$8(a6)                    
  05cf2  2d680014fffc          move.l   $14(a0),-$4(a6)                    
  05cf8  7e00                  moveq    #0,d7                              
  05cfa  6028                  bra.s    L5d24                              
L5cfc:
  05cfc  486efff8              pea      -$8(a6)                            
  05d00  a8b7                  _FrameOval                                  ; $a8b7
  05d02  3f3c5bd3              move.w   #$5bd3,-(a7)                       
  05d06  4ead030a              jsr      f3_4238                            
  05d0a  486efff8              pea      -$8(a6)                            
  05d0e  a8ba                  _InvertOval                                 ; $a8ba
  05d10  486efff8              pea      -$8(a6)                            
  05d14  2f3c000a000a          move.l   #$a000a,-(a7)                      
  05d1a  a8a9                  _InsetRect                                  ; $a8a9
  05d1c  4ead0312              jsr      f3_4384                            
  05d20  548f                  addq.l   #2,a7                              
  05d22  5247                  addq.w   #1,d7                              
L5d24:
  05d24  0c47000a              cmpi.w   #$a,d7                             
  05d28  6dd2                  blt.s    L5cfc                              
  05d2a  2f3c00010001          move.l   #$10001,-(a7)                      
  05d30  a89b                  _PenSize                                    ; $a89b
  05d32  4a39ffff8dfb          tst.b    g_7205                             
  05d38  6604                  bne.s    L5d3e                              
  05d3a  4ead032a              jsr      f3_44be                            
L5d3e:
  05d3e  2e1f                  move.l   (a7)+,d7                           
  05d40  4e5e                  unlk     a6                                 
  05d42  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_5d44   [jump table #138]
;----------------------------------------------------------------------
f4_5d44:
  05d44  4e56fff2              link     a6,#-14                            
  05d48  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  05d4c  7800                  moveq    #0,d4                              
  05d4e  422efff2              clr.b    -$e(a6)                            
  05d52  422efff7              clr.b    -$9(a6)                            
  05d56  422efff6              clr.b    -$a(a6)                            
  05d5a  422efff5              clr.b    -$b(a6)                            
  05d5e  422efff4              clr.b    -$c(a6)                            
  05d62  422efff3              clr.b    -$d(a6)                            
  05d66  7600                  moveq    #0,d3                              
L5d68:
  05d68  2f3cffff8890          move.l   #$ffff8890,-(a7)                   
  05d6e  2f3cffff888e          move.l   #$ffff888e,-(a7)                   
  05d74  2f3cffff888c          move.l   #$ffff888c,-(a7)                   
  05d7a  2f3cffff888a          move.l   #$ffff888a,-(a7)                   
  05d80  2f3cffff8892          move.l   #$ffff8892,-(a7)                   
  05d86  2f3cffff8888          move.l   #$ffff8888,-(a7)                   
  05d8c  4eba06fa              jsr      f4_6488                            
  05d90  1d40fff6              move.b   d0,-$a(a6)                         
  05d94  4fef0018              lea      $18(a7),a7                         
  05d98  4a2efff6              tst.b    -$a(a6)                            
  05d9c  67ca                  beq.s    L5d68                              
L5d9e:
  05d9e  2f3cffff8856          move.l   #$ffff8856,-(a7)                   
  05da4  2f3cffff8854          move.l   #$ffff8854,-(a7)                   
  05daa  2f3cffff8852          move.l   #$ffff8852,-(a7)                   
  05db0  2f3cffff8850          move.l   #$ffff8850,-(a7)                   
  05db6  2f3cffff884e          move.l   #$ffff884e,-(a7)                   
  05dbc  2f3cffff884c          move.l   #$ffff884c,-(a7)                   
  05dc2  4eba06c4              jsr      f4_6488                            
  05dc6  1d40fff5              move.b   d0,-$b(a6)                         
  05dca  4fef0018              lea      $18(a7),a7                         
  05dce  4a2efff5              tst.b    -$b(a6)                            
  05dd2  67ca                  beq.s    L5d9e                              
  05dd4  3039ffff884c          move.w   g_77b4,d0                          
  05dda  b079ffff8888          cmp.w    g_7778,d0                          
  05de0  67bc                  beq.s    L5d9e                              
  05de2  7e00                  moveq    #0,d7                              
  05de4  6074                  bra.s    L5e5a                              
L5de6:
  05de6  3039ffff8894          move.w   g_776c,d0                          
  05dec  b07073b0ffff3ad4      cmp.w    (-$c52c,za0,d7.w*2),d0             
  05df4  6662                  bne.s    L5e58                              
L5df6:
  05df6  487077b0ffff7868      pea      (-$8798,za0,d7.w*8)                
  05dfe  487077b0ffff7866      pea      (-$879a,za0,d7.w*8)                
  05e06  487077b0ffff7864      pea      (-$879c,za0,d7.w*8)                
  05e0e  487077b0ffff7862      pea      (-$879e,za0,d7.w*8)                
  05e16  487073b0ffff7856      pea      (-$87aa,za0,d7.w*2)                
  05e1e  487073b0ffff784a      pea      (-$87b6,za0,d7.w*2)                
  05e26  4eba0660              jsr      f4_6488                            
  05e2a  1d40fff3              move.b   d0,-$d(a6)                         
  05e2e  4fef0018              lea      $18(a7),a7                         
  05e32  4a2efff3              tst.b    -$d(a6)                            
  05e36  67be                  beq.s    L5df6                              
  05e38  303073b0ffff784a      move.w   (-$87b6,za0,d7.w*2),d0             
  05e40  b079ffff8888          cmp.w    g_7778,d0                          
  05e46  67ae                  beq.s    L5df6                              
  05e48  303073b0ffff784a      move.w   (-$87b6,za0,d7.w*2),d0             
  05e50  b079ffff884c          cmp.w    g_77b4,d0                          
  05e56  679e                  beq.s    L5df6                              
L5e58:
  05e58  5247                  addq.w   #1,d7                              
L5e5a:
  05e5a  0c470006              cmpi.w   #6,d7                              
  05e5e  6d86                  blt.s    L5de6                              
  05e60  7e01                  moveq    #1,d7                              
  05e62  6000056e              bra.w    L63d2                              
L5e66:
  05e66  3f07                  move.w   d7,-(a7)                           
  05e68  486efffc              pea      -$4(a6)                            
  05e6c  486efffa              pea      -$6(a6)                            
  05e70  486efffe              pea      -$2(a6)                            
  05e74  486efff8              pea      -$8(a6)                            
  05e78  4eba08da              jsr      f4_6754                            
  05e7c  3ebc0064              move.w   #$64,(a7)                          
  05e80  4ead0242              jsr      f2_79a8                            
  05e84  0c400032              cmpi.w   #$32,d0                            
  05e88  4fef0012              lea      $12(a7),a7                         
  05e8c  6f3e                  ble.s    L5ecc                              
  05e8e  3f3c0064              move.w   #$64,-(a7)                         
  05e92  4ead0242              jsr      f2_79a8                            
  05e96  0c40000a              cmpi.w   #$a,d0                             
  05e9a  548f                  addq.l   #2,a7                              
  05e9c  6c16                  bge.s    L5eb4                              
  05e9e  31bc00e473b0ffff8b7c  move.w   #$e4,(-$7484,za0,d7.w*2)           
  05ea8  31bc006173b0ffff8ba6  move.w   #$61,(-$745a,za0,d7.w*2)           
  05eb2  6018                  bra.s    L5ecc                              
L5eb4:
  05eb4  3f3c0047              move.w   #$47,-(a7)                         
  05eb8  4ead0242              jsr      f2_79a8                            
  05ebc  318073b0ffff8ba6      move.w   d0,(-$745a,za0,d7.w*2)             
  05ec4  3e87                  move.w   d7,(a7)                            
  05ec6  4ead0692              jsr      f6_349a                            
  05eca  548f                  addq.l   #2,a7                              
L5ecc:
  05ecc  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  05ed4  6f2a                  ble.s    L5f00                              
  05ed6  3f2efffc              move.w   -$4(a6),-(a7)                      
  05eda  3f2efffa              move.w   -$6(a6),-(a7)                      
  05ede  3f2efffe              move.w   -$2(a6),-(a7)                      
  05ee2  3f2efff8              move.w   -$8(a6),-(a7)                      
  05ee6  3f07                  move.w   d7,-(a7)                           
  05ee8  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  05ef0  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  05ef8  4eba0800              jsr      f4_66fa                            
  05efc  4fef0012              lea      $12(a7),a7                         
L5f00:
  05f00  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  05f08  665a                  bne.s    L5f64                              
  05f0a  3f3c0064              move.w   #$64,-(a7)                         
  05f0e  4ead0242              jsr      f2_79a8                            
  05f12  0c400055              cmpi.w   #$55,d0                            
  05f16  548f                  addq.l   #2,a7                              
  05f18  6f4a                  ble.s    L5f64                              
  05f1a  7014                  moveq    #20,d0                             
  05f1c  c1f9ffff8894          muls.w   g_776c,d0                          
  05f22  3f00                  move.w   d0,-(a7)                           
  05f24  4ead0242              jsr      f2_79a8                            
  05f28  318073b0ffff8ba6      move.w   d0,(-$745a,za0,d7.w*2)             
  05f30  31bc00ee73b0ffff8b7c  move.w   #$ee,(-$7484,za0,d7.w*2)           
  05f3a  3eaefffc              move.w   -$4(a6),(a7)                       
  05f3e  3f2efffa              move.w   -$6(a6),-(a7)                      
  05f42  3f2efffe              move.w   -$2(a6),-(a7)                      
  05f46  3f2efff8              move.w   -$8(a6),-(a7)                      
  05f4a  3f07                  move.w   d7,-(a7)                           
  05f4c  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  05f54  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  05f5c  4eba079c              jsr      f4_66fa                            
  05f60  4fef0012              lea      $12(a7),a7                         
L5f64:
  05f64  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  05f6c  6678                  bne.s    L5fe6                              
  05f6e  4a7073b0ffff8d20      tst.w    (-$72e0,za0,d7.w*2)                
  05f76  666e                  bne.s    L5fe6                              
  05f78  0c790007ffff8894      cmpi.w   #7,g_776c                          
  05f80  6f64                  ble.s    L5fe6                              
  05f82  3f3c0064              move.w   #$64,-(a7)                         
  05f86  4ead0242              jsr      f2_79a8                            
  05f8a  0c400055              cmpi.w   #$55,d0                            
  05f8e  548f                  addq.l   #2,a7                              
  05f90  6f54                  ble.s    L5fe6                              
  05f92  0c790002ffff978e      cmpi.w   #2,g_6872                          
  05f9a  6c4a                  bge.s    L5fe6                              
  05f9c  4a03                  tst.b    d3                                 
  05f9e  6646                  bne.s    L5fe6                              
  05fa0  31bc04e273b0ffff8ba6  move.w   #$4e2,(-$745a,za0,d7.w*2)          
  05faa  31bc04e273b0ffff8b7c  move.w   #$4e2,(-$7484,za0,d7.w*2)          
  05fb4  3f2efffc              move.w   -$4(a6),-(a7)                      
  05fb8  3f2efffa              move.w   -$6(a6),-(a7)                      
  05fbc  3f2efffe              move.w   -$2(a6),-(a7)                      
  05fc0  3f2efff8              move.w   -$8(a6),-(a7)                      
  05fc4  3f07                  move.w   d7,-(a7)                           
  05fc6  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  05fce  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  05fd6  4eba0722              jsr      f4_66fa                            
  05fda  5279ffff978e          addq.w   #1,g_6872                          
  05fe0  7601                  moveq    #1,d3                              
  05fe2  4fef0012              lea      $12(a7),a7                         
L5fe6:
  05fe6  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  05fee  6678                  bne.s    L6068                              
  05ff0  4a7073b0ffff8d20      tst.w    (-$72e0,za0,d7.w*2)                
  05ff8  666e                  bne.s    L6068                              
  05ffa  0c790007ffff8894      cmpi.w   #7,g_776c                          
  06002  6f64                  ble.s    L6068                              
  06004  3f3c0064              move.w   #$64,-(a7)                         
  06008  4ead0242              jsr      f2_79a8                            
  0600c  0c400055              cmpi.w   #$55,d0                            
  06010  548f                  addq.l   #2,a7                              
  06012  6f54                  ble.s    L6068                              
  06014  0c790002ffff9790      cmpi.w   #2,g_6870                          
  0601c  6c4a                  bge.s    L6068                              
  0601e  4a03                  tst.b    d3                                 
  06020  6646                  bne.s    L6068                              
  06022  31bc04ec73b0ffff8ba6  move.w   #$4ec,(-$745a,za0,d7.w*2)          
  0602c  31bc04ec73b0ffff8b7c  move.w   #$4ec,(-$7484,za0,d7.w*2)          
  06036  3f2efffc              move.w   -$4(a6),-(a7)                      
  0603a  3f2efffa              move.w   -$6(a6),-(a7)                      
  0603e  3f2efffe              move.w   -$2(a6),-(a7)                      
  06042  3f2efff8              move.w   -$8(a6),-(a7)                      
  06046  3f07                  move.w   d7,-(a7)                           
  06048  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  06050  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  06058  4eba06a0              jsr      f4_66fa                            
  0605c  5279ffff9790          addq.w   #1,g_6870                          
  06062  7601                  moveq    #1,d3                              
  06064  4fef0012              lea      $12(a7),a7                         
L6068:
  06068  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  06070  666e                  bne.s    L60e0                              
  06072  4a7073b0ffff8d20      tst.w    (-$72e0,za0,d7.w*2)                
  0607a  6664                  bne.s    L60e0                              
  0607c  0c790003ffff8894      cmpi.w   #3,g_776c                          
  06084  6f5a                  ble.s    L60e0                              
  06086  3f3c0064              move.w   #$64,-(a7)                         
  0608a  4ead0242              jsr      f2_79a8                            
  0608e  0c40005c              cmpi.w   #$5c,d0                            
  06092  548f                  addq.l   #2,a7                              
  06094  6f4a                  ble.s    L60e0                              
  06096  4a2efff2              tst.b    -$e(a6)                            
  0609a  6644                  bne.s    L60e0                              
  0609c  31bc004b73b0ffff8ba6  move.w   #$4b,(-$745a,za0,d7.w*2)           
  060a6  31bc00fa73b0ffff8b7c  move.w   #$fa,(-$7484,za0,d7.w*2)           
  060b0  1d7c0001fff2          move.b   #1,-$e(a6)                         
  060b6  3f2efffc              move.w   -$4(a6),-(a7)                      
  060ba  3f2efffa              move.w   -$6(a6),-(a7)                      
  060be  3f2efffe              move.w   -$2(a6),-(a7)                      
  060c2  3f2efff8              move.w   -$8(a6),-(a7)                      
  060c6  3f07                  move.w   d7,-(a7)                           
  060c8  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  060d0  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  060d8  4eba0620              jsr      f4_66fa                            
  060dc  4fef0012              lea      $12(a7),a7                         
L60e0:
  060e0  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  060e8  6672                  bne.s    L615c                              
  060ea  4a7073b0ffff8d20      tst.w    (-$72e0,za0,d7.w*2)                
  060f2  6668                  bne.s    L615c                              
  060f4  0c79000dffff8894      cmpi.w   #$d,g_776c                         
  060fc  6f5e                  ble.s    L615c                              
  060fe  4a39ffffa794          tst.b    g_586c                             
  06104  6656                  bne.s    L615c                              
  06106  3f3c0064              move.w   #$64,-(a7)                         
  0610a  4ead0242              jsr      f2_79a8                            
  0610e  0c400055              cmpi.w   #$55,d0                            
  06112  548f                  addq.l   #2,a7                              
  06114  6f46                  ble.s    L615c                              
  06116  31bc006773b0ffff8ba6  move.w   #$67,(-$745a,za0,d7.w*2)           
  06120  31bc00fd73b0ffff8b7c  move.w   #$fd,(-$7484,za0,d7.w*2)           
  0612a  3f2efffc              move.w   -$4(a6),-(a7)                      
  0612e  3f2efffa              move.w   -$6(a6),-(a7)                      
  06132  3f2efffe              move.w   -$2(a6),-(a7)                      
  06136  3f2efff8              move.w   -$8(a6),-(a7)                      
  0613a  3f07                  move.w   d7,-(a7)                           
  0613c  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  06144  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  0614c  4eba05ac              jsr      f4_66fa                            
  06150  13fc0001ffffa794      move.b   #1,g_586c                          
  06158  4fef0012              lea      $12(a7),a7                         
L615c:
  0615c  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  06164  6672                  bne.s    L61d8                              
  06166  4a7073b0ffff8d20      tst.w    (-$72e0,za0,d7.w*2)                
  0616e  6668                  bne.s    L61d8                              
  06170  0c79000fffff8894      cmpi.w   #$f,g_776c                         
  06178  6f5e                  ble.s    L61d8                              
  0617a  4a39ffffa795          tst.b    g_586b                             
  06180  6656                  bne.s    L61d8                              
  06182  3f3c0064              move.w   #$64,-(a7)                         
  06186  4ead0242              jsr      f2_79a8                            
  0618a  0c400055              cmpi.w   #$55,d0                            
  0618e  548f                  addq.l   #2,a7                              
  06190  6f46                  ble.s    L61d8                              
  06192  31bc006873b0ffff8ba6  move.w   #$68,(-$745a,za0,d7.w*2)           
  0619c  31bc00fe73b0ffff8b7c  move.w   #$fe,(-$7484,za0,d7.w*2)           
  061a6  3f2efffc              move.w   -$4(a6),-(a7)                      
  061aa  3f2efffa              move.w   -$6(a6),-(a7)                      
  061ae  3f2efffe              move.w   -$2(a6),-(a7)                      
  061b2  3f2efff8              move.w   -$8(a6),-(a7)                      
  061b6  3f07                  move.w   d7,-(a7)                           
  061b8  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  061c0  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  061c8  4eba0530              jsr      f4_66fa                            
  061cc  13fc0001ffffa795      move.b   #1,g_586b                          
  061d4  4fef0012              lea      $12(a7),a7                         
L61d8:
  061d8  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  061e0  6672                  bne.s    L6254                              
  061e2  4a7073b0ffff8d20      tst.w    (-$72e0,za0,d7.w*2)                
  061ea  6668                  bne.s    L6254                              
  061ec  0c790011ffff8894      cmpi.w   #$11,g_776c                        
  061f4  6f5e                  ble.s    L6254                              
  061f6  4a39ffffa796          tst.b    g_586a                             
  061fc  6656                  bne.s    L6254                              
  061fe  3f3c0064              move.w   #$64,-(a7)                         
  06202  4ead0242              jsr      f2_79a8                            
  06206  0c400055              cmpi.w   #$55,d0                            
  0620a  548f                  addq.l   #2,a7                              
  0620c  6f46                  ble.s    L6254                              
  0620e  31bc006973b0ffff8ba6  move.w   #$69,(-$745a,za0,d7.w*2)           
  06218  31bc00ff73b0ffff8b7c  move.w   #$ff,(-$7484,za0,d7.w*2)           
  06222  3f2efffc              move.w   -$4(a6),-(a7)                      
  06226  3f2efffa              move.w   -$6(a6),-(a7)                      
  0622a  3f2efffe              move.w   -$2(a6),-(a7)                      
  0622e  3f2efff8              move.w   -$8(a6),-(a7)                      
  06232  3f07                  move.w   d7,-(a7)                           
  06234  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  0623c  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  06244  4eba04b4              jsr      f4_66fa                            
  06248  13fc0001ffffa796      move.b   #1,g_586a                          
  06250  4fef0012              lea      $12(a7),a7                         
L6254:
  06254  0c790008ffff8894      cmpi.w   #8,g_776c                          
  0625c  6f6e                  ble.s    L62cc                              
  0625e  4a7073b0ffff8d20      tst.w    (-$72e0,za0,d7.w*2)                
  06266  6664                  bne.s    L62cc                              
  06268  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  06270  665a                  bne.s    L62cc                              
  06272  4a04                  tst.b    d4                                 
  06274  6656                  bne.s    L62cc                              
  06276  3f3c0064              move.w   #$64,-(a7)                         
  0627a  4ead0242              jsr      f2_79a8                            
  0627e  0c40005f              cmpi.w   #$5f,d0                            
  06282  548f                  addq.l   #2,a7                              
  06284  6f46                  ble.s    L62cc                              
  06286  31bc00f673b0ffff8b7c  move.w   #$f6,(-$7484,za0,d7.w*2)           
  06290  3f3c0005              move.w   #5,-(a7)                           
  06294  4ead0242              jsr      f2_79a8                            
  06298  318073b0ffff8ba6      move.w   d0,(-$745a,za0,d7.w*2)             
  062a0  7801                  moveq    #1,d4                              
  062a2  3eaefffc              move.w   -$4(a6),(a7)                       
  062a6  3f2efffa              move.w   -$6(a6),-(a7)                      
  062aa  3f2efffe              move.w   -$2(a6),-(a7)                      
  062ae  3f2efff8              move.w   -$8(a6),-(a7)                      
  062b2  3f07                  move.w   d7,-(a7)                           
  062b4  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  062bc  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  062c4  4eba0434              jsr      f4_66fa                            
  062c8  4fef0012              lea      $12(a7),a7                         
L62cc:
  062cc  0c7000e573b0ffff8b7c  cmpi.w   #$e5,(-$7484,za0,d7.w*2)           
  062d6  6718                  beq.s    L62f0                              
  062d8  0c7000e673b0ffff8b7c  cmpi.w   #$e6,(-$7484,za0,d7.w*2)           
  062e2  670c                  beq.s    L62f0                              
  062e4  0c7000f473b0ffff8b7c  cmpi.w   #$f4,(-$7484,za0,d7.w*2)           
  062ee  6610                  bne.s    L6300                              
L62f0:
  062f0  487073b0ffff973a      pea      (-$68c6,za0,d7.w*2)                
  062f8  4eba04ba              jsr      f4_67b4                            
  062fc  588f                  addq.l   #4,a7                              
  062fe  6040                  bra.s    L6340                              
L6300:
  06300  0c7000e773b0ffff8b7c  cmpi.w   #$e7,(-$7484,za0,d7.w*2)           
  0630a  6610                  bne.s    L631c                              
  0630c  487073b0ffff973a      pea      (-$68c6,za0,d7.w*2)                
  06314  4eba04ee              jsr      f4_6804                            
  06318  588f                  addq.l   #4,a7                              
  0631a  6024                  bra.s    L6340                              
L631c:
  0631c  0c7000f273b0ffff8b7c  cmpi.w   #$f2,(-$7484,za0,d7.w*2)           
  06326  6610                  bne.s    L6338                              
  06328  487073b0ffff973a      pea      (-$68c6,za0,d7.w*2)                
  06330  4eba04e8              jsr      f4_681a                            
  06334  588f                  addq.l   #4,a7                              
  06336  6008                  bra.s    L6340                              
L6338:
  06338  427073b0ffff973a      clr.w    (-$68c6,za0,d7.w*2)                
L6340:
  06340  0c790006ffff8894      cmpi.w   #6,g_776c                          
  06348  6f000086              ble.w    L63d0                              
  0634c  4a7073b0ffff8d20      tst.w    (-$72e0,za0,d7.w*2)                
  06354  667a                  bne.s    L63d0                              
  06356  4a7073b0ffff8ba6      tst.w    (-$745a,za0,d7.w*2)                
  0635e  6670                  bne.s    L63d0                              
  06360  4a2efff7              tst.b    -$9(a6)                            
  06364  666a                  bne.s    L63d0                              
  06366  3f3c0064              move.w   #$64,-(a7)                         
  0636a  4ead0242              jsr      f2_79a8                            
  0636e  0c400060              cmpi.w   #$60,d0                            
  06372  548f                  addq.l   #2,a7                              
  06374  6f5a                  ble.s    L63d0                              
  06376  0c790002ffff3b10      cmpi.w   #2,g_c4f0                          
  0637e  6c50                  bge.s    L63d0                              
  06380  31bc006573b0ffff8b7c  move.w   #$65,(-$7484,za0,d7.w*2)           
  0638a  3f3c0005              move.w   #5,-(a7)                           
  0638e  4ead0242              jsr      f2_79a8                            
  06392  318073b0ffff8ba6      move.w   d0,(-$745a,za0,d7.w*2)             
  0639a  5279ffff3b10          addq.w   #1,g_c4f0                          
  063a0  1d7c0001fff7          move.b   #1,-$9(a6)                         
  063a6  3eaefffc              move.w   -$4(a6),(a7)                       
  063aa  3f2efffa              move.w   -$6(a6),-(a7)                      
  063ae  3f2efffe              move.w   -$2(a6),-(a7)                      
  063b2  3f2efff8              move.w   -$8(a6),-(a7)                      
  063b6  3f07                  move.w   d7,-(a7)                           
  063b8  487073b0ffff8d74      pea      (-$728c,za0,d7.w*2)                
  063c0  487073b0ffff8d4a      pea      (-$72b6,za0,d7.w*2)                
  063c8  4eba0330              jsr      f4_66fa                            
  063cc  4fef0012              lea      $12(a7),a7                         
L63d0:
  063d0  5247                  addq.w   #1,d7                              
L63d2:
  063d2  be79ffff883e          cmp.w    g_77c2,d7                          
  063d8  6f00fa8c              ble.w    L5e66                              
  063dc  7c00                  moveq    #0,d6                              
  063de  60000094              bra.w    L6474                              
L63e2:
  063e2  3039ffff8894          move.w   g_776c,d0                          
  063e8  b07063b0ffff3b00      cmp.w    (-$c500,za0,d6.w*2),d0             
  063f0  66000080              bne.w    L6472                              
  063f4  4a2efff4              tst.b    -$c(a6)                            
  063f8  6678                  bne.s    L6472                              
L63fa:
  063fa  3f39ffff883e          move.w   g_77c2,-(a7)                       
  06400  4ead0242              jsr      f2_79a8                            
  06404  3a00                  move.w   d0,d5                              
  06406  548f                  addq.l   #2,a7                              
  06408  4a7053b0ffff8ba6      tst.w    (-$745a,za0,d5.w*2)                
  06410  66e8                  bne.s    L63fa                              
  06412  3006                  move.w   d6,d0                              
  06414  06401f40              addi.w   #$1f40,d0                          
  06418  318053b0ffff8b7c      move.w   d0,(-$7484,za0,d5.w*2)             
  06420  7048                  moveq    #72,d0                             
  06422  d046                  add.w    d6,d0                              
  06424  318053b0ffff8ba6      move.w   d0,(-$745a,za0,d5.w*2)             
  0642c  3f05                  move.w   d5,-(a7)                           
  0642e  486efffc              pea      -$4(a6)                            
  06432  486efffa              pea      -$6(a6)                            
  06436  486efffe              pea      -$2(a6)                            
  0643a  486efff8              pea      -$8(a6)                            
  0643e  4eba0314              jsr      f4_6754                            
  06442  3eaefffc              move.w   -$4(a6),(a7)                       
  06446  3f2efffa              move.w   -$6(a6),-(a7)                      
  0644a  3f2efffe              move.w   -$2(a6),-(a7)                      
  0644e  3f2efff8              move.w   -$8(a6),-(a7)                      
  06452  3f05                  move.w   d5,-(a7)                           
  06454  487053b0ffff8d74      pea      (-$728c,za0,d5.w*2)                
  0645c  487053b0ffff8d4a      pea      (-$72b6,za0,d5.w*2)                
  06464  4eba0294              jsr      f4_66fa                            
  06468  1d7c0001fff4          move.b   #1,-$c(a6)                         
  0646e  4fef0022              lea      $22(a7),a7                         
L6472:
  06472  5246                  addq.w   #1,d6                              
L6474:
  06474  0c460004              cmpi.w   #4,d6                              
  06478  6d00ff68              blt.w    L63e2                              
  0647c  4eba0226              jsr      f4_66a4                            
  06480  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  06484  4e5e                  unlk     a6                                 
  06486  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_6488   [jump table #139]
;----------------------------------------------------------------------
f4_6488:
  06488  4e56fff6              link     a6,#-10                            
  0648c  48e70308              movem.l  d6/d7/a4,-(a7)                     
  06490  286e0008              movea.l  $8(a6),a4                          
  06494  7c00                  moveq    #0,d6                              
  06496  3f39ffff883e          move.w   g_77c2,-(a7)                       
  0649c  4ead0242              jsr      f2_79a8                            
  064a0  3880                  move.w   d0,(a4)                            
  064a2  3ebc0004              move.w   #4,(a7)                            
  064a6  4ead0242              jsr      f2_79a8                            
  064aa  5340                  subq.w   #1,d0                              
  064ac  206e000c              movea.l  $c(a6),a0                          
  064b0  3080                  move.w   d0,(a0)                            
  064b2  226e0010              movea.l  $10(a6),a1                         
  064b6  4251                  clr.w    (a1)                               
  064b8  206e0014              movea.l  $14(a6),a0                         
  064bc  4250                  clr.w    (a0)                               
  064be  206e0018              movea.l  $18(a6),a0                         
  064c2  4250                  clr.w    (a0)                               
  064c4  206e001c              movea.l  $1c(a6),a0                         
  064c8  4250                  clr.w    (a0)                               
  064ca  3e94                  move.w   (a4),(a7)                          
  064cc  486efff8              pea      -$8(a6)                            
  064d0  486efff6              pea      -$a(a6)                            
  064d4  486efffa              pea      -$6(a6)                            
  064d8  486efffc              pea      -$4(a6)                            
  064dc  4eba0276              jsr      f4_6754                            
  064e0  206e000c              movea.l  $c(a6),a0                          
  064e4  3010                  move.w   (a0),d0                            
  064e6  4fef0012              lea      $12(a7),a7                         
  064ea  6716                  beq.s    L6502                              
  064ec  6b0001ac              bmi.w    L669a                              
  064f0  5740                  subq.w   #3,d0                              
  064f2  67000140              beq.w    L6634                              
  064f6  6a0001a2              bpl.w    L669a                              
  064fa  5240                  addq.w   #1,d0                              
  064fc  6a68                  bpl.s    L6566                              
  064fe  600000ca              bra.w    L65ca                              
L6502:
  06502  302efffa              move.w   -$6(a6),d0                         
  06506  906efffc              sub.w    -$4(a6),d0                         
  0650a  3f00                  move.w   d0,-(a7)                           
  0650c  4ead0242              jsr      f2_79a8                            
  06510  5340                  subq.w   #1,d0                              
  06512  3e00                  move.w   d0,d7                              
  06514  302efffc              move.w   -$4(a6),d0                         
  06518  d047                  add.w    d7,d0                              
  0651a  c1fc0012              muls.w   #$12,d0                            
  0651e  2040                  movea.l  d0,a0                              
  06520  302efff6              move.w   -$a(a6),d0                         
  06524  4a700330ffff88b0      tst.w    (-$7750,a0,d0.w*2)                 
  0652c  548f                  addq.l   #2,a7                              
  0652e  6600016a              bne.w    L669a                              
  06532  7015                  moveq    #21,d0                             
  06534  c1c7                  muls.w   d7,d0                              
  06536  3214                  move.w   (a4),d1                            
  06538  d07013b0ffff8afe      add.w    (-$7502,za0,d1.w*2),d0             
  06540  206e0010              movea.l  $10(a6),a0                         
  06544  3080                  move.w   d0,(a0)                            
  06546  7c01                  moveq    #1,d6                              
  06548  302efffc              move.w   -$4(a6),d0                         
  0654c  d047                  add.w    d7,d0                              
  0654e  c1fc0012              muls.w   #$12,d0                            
  06552  2240                  movea.l  d0,a1                              
  06554  302efff6              move.w   -$a(a6),d0                         
  06558  33bcffeb0330ffff88b0  move.w   #$ffeb,(-$7750,a1,d0.w*2)          
  06562  60000136              bra.w    L669a                              
L6566:
  06566  302efffa              move.w   -$6(a6),d0                         
  0656a  906efffc              sub.w    -$4(a6),d0                         
  0656e  3f00                  move.w   d0,-(a7)                           
  06570  4ead0242              jsr      f2_79a8                            
  06574  5340                  subq.w   #1,d0                              
  06576  3e00                  move.w   d0,d7                              
  06578  302efffc              move.w   -$4(a6),d0                         
  0657c  d047                  add.w    d7,d0                              
  0657e  c1fc0012              muls.w   #$12,d0                            
  06582  2040                  movea.l  d0,a0                              
  06584  302efff6              move.w   -$a(a6),d0                         
  06588  4a700330ffff88b4      tst.w    (-$774c,a0,d0.w*2)                 
  06590  548f                  addq.l   #2,a7                              
  06592  66000106              bne.w    L669a                              
  06596  7015                  moveq    #21,d0                             
  06598  c1c7                  muls.w   d7,d0                              
  0659a  3214                  move.w   (a4),d1                            
  0659c  d07013b0ffff8afe      add.w    (-$7502,za0,d1.w*2),d0             
  065a4  206e0018              movea.l  $18(a6),a0                         
  065a8  3080                  move.w   d0,(a0)                            
  065aa  7c01                  moveq    #1,d6                              
  065ac  302efffc              move.w   -$4(a6),d0                         
  065b0  d047                  add.w    d7,d0                              
  065b2  c1fc0012              muls.w   #$12,d0                            
  065b6  2240                  movea.l  d0,a1                              
  065b8  302efff6              move.w   -$a(a6),d0                         
  065bc  33bcffeb0330ffff88b4  move.w   #$ffeb,(-$774c,a1,d0.w*2)          
  065c6  600000d2              bra.w    L669a                              
L65ca:
  065ca  302efff8              move.w   -$8(a6),d0                         
  065ce  906efff6              sub.w    -$a(a6),d0                         
  065d2  3f00                  move.w   d0,-(a7)                           
  065d4  4ead0242              jsr      f2_79a8                            
  065d8  5340                  subq.w   #1,d0                              
  065da  3e00                  move.w   d0,d7                              
  065dc  7001                  moveq    #1,d0                              
  065de  d06efffc              add.w    -$4(a6),d0                         
  065e2  c1fc0012              muls.w   #$12,d0                            
  065e6  306efff6              movea.w  -$a(a6),a0                         
  065ea  d0c7                  adda.w   d7,a0                              
  065ec  d1c8                  adda.l   a0,a0                              
  065ee  d1fcffff88b2          adda.l   #$ffff88b2,a0                      
  065f4  4a700800              tst.w    $0(a0,d0.l)                        
  065f8  548f                  addq.l   #2,a7                              
  065fa  6600009e              bne.w    L669a                              
  065fe  7015                  moveq    #21,d0                             
  06600  c1c7                  muls.w   d7,d0                              
  06602  3214                  move.w   (a4),d1                            
  06604  d07013b0ffff8ad4      add.w    (-$752c,za0,d1.w*2),d0             
  0660c  206e0014              movea.l  $14(a6),a0                         
  06610  3080                  move.w   d0,(a0)                            
  06612  7c01                  moveq    #1,d6                              
  06614  7001                  moveq    #1,d0                              
  06616  d06efffc              add.w    -$4(a6),d0                         
  0661a  c1fc0012              muls.w   #$12,d0                            
  0661e  326efff6              movea.w  -$a(a6),a1                         
  06622  d2c7                  adda.w   d7,a1                              
  06624  d3c9                  adda.l   a1,a1                              
  06626  d3fcffff88b2          adda.l   #$ffff88b2,a1                      
  0662c  33bcffeb0800          move.w   #$ffeb,$0(a1,d0.l)                 
  06632  6066                  bra.s    L669a                              
L6634:
  06634  302efff8              move.w   -$8(a6),d0                         
  06638  906efff6              sub.w    -$a(a6),d0                         
  0663c  3f00                  move.w   d0,-(a7)                           
  0663e  4ead0242              jsr      f2_79a8                            
  06642  5340                  subq.w   #1,d0                              
  06644  3e00                  move.w   d0,d7                              
  06646  70ff                  moveq    #-1,d0                             
  06648  d06efffc              add.w    -$4(a6),d0                         
  0664c  c1fc0012              muls.w   #$12,d0                            
  06650  306efff6              movea.w  -$a(a6),a0                         
  06654  d0c7                  adda.w   d7,a0                              
  06656  d1c8                  adda.l   a0,a0                              
  06658  d1fcffff88b2          adda.l   #$ffff88b2,a0                      
  0665e  4a700800              tst.w    $0(a0,d0.l)                        
  06662  548f                  addq.l   #2,a7                              
  06664  6634                  bne.s    L669a                              
  06666  7015                  moveq    #21,d0                             
  06668  c1c7                  muls.w   d7,d0                              
  0666a  3214                  move.w   (a4),d1                            
  0666c  d07013b0ffff8ad4      add.w    (-$752c,za0,d1.w*2),d0             
  06674  206e001c              movea.l  $1c(a6),a0                         
  06678  3080                  move.w   d0,(a0)                            
  0667a  7c01                  moveq    #1,d6                              
  0667c  70ff                  moveq    #-1,d0                             
  0667e  d06efffc              add.w    -$4(a6),d0                         
  06682  c1fc0012              muls.w   #$12,d0                            
  06686  326efff6              movea.w  -$a(a6),a1                         
  0668a  d2c7                  adda.w   d7,a1                              
  0668c  d3c9                  adda.l   a1,a1                              
  0668e  d3fcffff88b2          adda.l   #$ffff88b2,a1                      
  06694  33bcffeb0800          move.w   #$ffeb,$0(a1,d0.l)                 
L669a:
  0669a  1006                  move.b   d6,d0                              
  0669c  4cdf10c0              movem.l  (a7)+,d6/d7/a4                     
  066a0  4e5e                  unlk     a6                                 
  066a2  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_66a4
;----------------------------------------------------------------------
f4_66a4:
  066a4  4e560000              link     a6,#0                              
  066a8  2f07                  move.l   d7,-(a7)                           
  066aa  7e01                  moveq    #1,d7                              
  066ac  603e                  bra.s    L66ec                              
L66ae:
  066ae  7000                  moveq    #0,d0                              
  066b0  1039ffff3b0e          move.b   g_c4f2,d0                          
  066b6  b07073b0ffff8c78      cmp.w    (-$7388,za0,d7.w*2),d0             
  066be  6608                  bne.s    L66c8                              
  066c0  427073b0ffff8c78      clr.w    (-$7388,za0,d7.w*2)                
L66c8:
  066c8  3f3073b0ffff8d20      move.w   (-$72e0,za0,d7.w*2),-(a7)          
  066d0  4ead024a              jsr      f2_7a2c                            
  066d4  7200                  moveq    #0,d1                              
  066d6  1239ffff3b0f          move.b   g_c4f1,d1                          
  066dc  b240                  cmp.w    d0,d1                              
  066de  548f                  addq.l   #2,a7                              
  066e0  6608                  bne.s    L66ea                              
  066e2  427073b0ffff8d20      clr.w    (-$72e0,za0,d7.w*2)                
L66ea:
  066ea  5247                  addq.w   #1,d7                              
L66ec:
  066ec  be79ffff883e          cmp.w    g_77c2,d7                          
  066f2  6fba                  ble.s    L66ae                              
  066f4  2e1f                  move.l   (a7)+,d7                           
  066f6  4e5e                  unlk     a6                                 
  066f8  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_66fa   [jump table #140]
;----------------------------------------------------------------------
f4_66fa:
  066fa  4e560000              link     a6,#0                              
  066fe  302e0014              move.w   $14(a6),d0                         
  06702  906e0012              sub.w    $12(a6),d0                         
  06706  3f00                  move.w   d0,-(a7)                           
  06708  4ead0242              jsr      f2_79a8                            
  0670c  5340                  subq.w   #1,d0                              
  0670e  c1fc0015              muls.w   #$15,d0                            
  06712  322e0010              move.w   $10(a6),d1                         
  06716  d07013b0ffff8afe      add.w    (-$7502,za0,d1.w*2),d0             
  0671e  5240                  addq.w   #1,d0                              
  06720  206e0008              movea.l  $8(a6),a0                          
  06724  3080                  move.w   d0,(a0)                            
  06726  302e0018              move.w   $18(a6),d0                         
  0672a  906e0016              sub.w    $16(a6),d0                         
  0672e  3e80                  move.w   d0,(a7)                            
  06730  4ead0242              jsr      f2_79a8                            
  06734  5340                  subq.w   #1,d0                              
  06736  c1fc0015              muls.w   #$15,d0                            
  0673a  322e0010              move.w   $10(a6),d1                         
  0673e  d07013b0ffff8ad4      add.w    (-$752c,za0,d1.w*2),d0             
  06746  0640000f              addi.w   #$f,d0                             
  0674a  206e000c              movea.l  $c(a6),a0                          
  0674e  3080                  move.w   d0,(a0)                            
  06750  4e5e                  unlk     a6                                 
  06752  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_6754   [jump table #143]
;----------------------------------------------------------------------
f4_6754:
  06754  4e560000              link     a6,#0                              
  06758  2f07                  move.l   d7,-(a7)                           
  0675a  3e2e0018              move.w   $18(a6),d7                         
  0675e  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  06766  2008                  move.l   a0,d0                              
  06768  81fc0015              divs.w   #$15,d0                            
  0676c  206e0008              movea.l  $8(a6),a0                          
  06770  3080                  move.w   d0,(a0)                            
  06772  327073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a1             
  0677a  2009                  move.l   a1,d0                              
  0677c  81fc0015              divs.w   #$15,d0                            
  06780  226e000c              movea.l  $c(a6),a1                          
  06784  3280                  move.w   d0,(a1)                            
  06786  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  0678e  2008                  move.l   a0,d0                              
  06790  81fc0015              divs.w   #$15,d0                            
  06794  206e0010              movea.l  $10(a6),a0                         
  06798  3080                  move.w   d0,(a0)                            
  0679a  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  067a2  2008                  move.l   a0,d0                              
  067a4  81fc0015              divs.w   #$15,d0                            
  067a8  206e0014              movea.l  $14(a6),a0                         
  067ac  3080                  move.w   d0,(a0)                            
  067ae  2e1f                  move.l   (a7)+,d7                           
  067b0  4e5e                  unlk     a6                                 
  067b2  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_67b4   [jump table #137]
;----------------------------------------------------------------------
f4_67b4:
  067b4  4e560000              link     a6,#0                              
  067b8  3f3c000a              move.w   #$a,-(a7)                          
  067bc  4ead0242              jsr      f2_79a8                            
  067c0  5940                  subq.w   #4,d0                              
  067c2  548f                  addq.l   #2,a7                              
  067c4  6d3a                  blt.s    L6800                              
  067c6  0c790004ffff8894      cmpi.w   #4,g_776c                          
  067ce  6d30                  blt.s    L6800                              
  067d0  3079ffff8894          movea.w  g_776c,a0                          
  067d6  2008                  move.l   a0,d0                              
  067d8  81fc0004              divs.w   #4,d0                              
  067dc  3f00                  move.w   d0,-(a7)                           
  067de  4ead0242              jsr      f2_79a8                            
  067e2  206e0008              movea.l  $8(a6),a0                          
  067e6  3080                  move.w   d0,(a0)                            
  067e8  3ebc0004              move.w   #4,(a7)                            
  067ec  4ead0242              jsr      f2_79a8                            
  067f0  5340                  subq.w   #1,d0                              
  067f2  548f                  addq.l   #2,a7                              
  067f4  660a                  bne.s    L6800                              
  067f6  206e0008              movea.l  $8(a6),a0                          
  067fa  3010                  move.w   (a0),d0                            
  067fc  4440                  neg.w    d0                                 
  067fe  3080                  move.w   d0,(a0)                            
L6800:
  06800  4e5e                  unlk     a6                                 
  06802  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_6804   [jump table #142]
;----------------------------------------------------------------------
f4_6804:
  06804  4e560000              link     a6,#0                              
  06808  3f3c0005              move.w   #5,-(a7)                           
  0680c  4ead0242              jsr      f2_79a8                            
  06810  206e0008              movea.l  $8(a6),a0                          
  06814  3080                  move.w   d0,(a0)                            
  06816  4e5e                  unlk     a6                                 
  06818  4e75                  rts                                         

;----------------------------------------------------------------------
; f4_681a   [jump table #141]
;----------------------------------------------------------------------
f4_681a:
  0681a  4e560000              link     a6,#0                              
  0681e  3f3c0005              move.w   #5,-(a7)                           
  06822  4ead0242              jsr      f2_79a8                            
  06826  5440                  addq.w   #2,d0                              
  06828  206e0008              movea.l  $8(a6),a0                          
  0682c  3080                  move.w   d0,(a0)                            
  0682e  4e5e                  unlk     a6                                 
  06830  4e75                  rts                                         
