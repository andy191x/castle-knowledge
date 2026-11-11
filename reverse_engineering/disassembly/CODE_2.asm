; Castle Knowledge 2.6 - CODE segment 2 (32308 bytes)
; Disassembled & annotated. Globals g_XXXX = A5-XXXX; STR_XXXX = STRS literal offset.


;----------------------------------------------------------------------
; f2_0000   [jump table #72]
;----------------------------------------------------------------------
f2_0000:
  00000  4e56fd48              link     a6,#-696                           
  00004  48e70738              movem.l  d5/d6/d7/a2/a3/a4,-(a7)            
  00008  3e2e0008              move.w   $8(a6),d7                          
  0000c  286e000a              movea.l  $a(a6),a4                          
  00010  266e000e              movea.l  $e(a6),a3                          
  00014  426efd4c              clr.w    -$2b4(a6)                          
  00018  486efd48              pea      -$2b8(a6)                          
  0001c  a874                  _GetPort                                    ; $a874
  0001e  486efd4e              pea      -$2b2(a6)                          
  00022  2f3c00640014          move.l   #$640014,-(a7)                     
  00028  2f3c00840034          move.l   #$840034,-(a7)                     
  0002e  a8a7                  _SetRect                                    ; $a8a7
  00030  3c2e0012              move.w   $12(a6),d6                         
  00034  3047                  movea.w  d7,a0                              
  00036  2f08                  move.l   a0,-(a7)                           
  00038  486eff00              pea      -$100(a6)                          
  0003c  4ead0512              jsr      f4_150e                            
  00040  2f39ffff83a6          move.l   g_7c5a,-(a7)                       
  00046  486efe00              pea      -$200(a6)                          
  0004a  4ead0512              jsr      f4_150e                            
  0004e  3047                  movea.w  d7,a0                              
  00050  b1f9ffff83a6          cmpa.l   g_7c5a,a0                          
  00056  6f3e                  ble.s    L0096                              
  00058  302e0014              move.w   $14(a6),d0                         
  0005c  b06e0016              cmp.w    $16(a6),d0                         
  00060  6d34                  blt.s    L0096                              
  00062  486efe00              pea      -$200(a6)                          
  00066  2f0b                  move.l   a3,-(a7)                           
  00068  486eff00              pea      -$100(a6)                          
  0006c  2f2c0010              move.l   $10(a4),-(a7)                      
  00070  a98b                  _ParamText                                  ; $a98b
  00072  42a7                  clr.l    -(a7)                              
  00074  3f3c00d2              move.w   #$d2,-(a7)                         
  00078  486efd56              pea      -$2aa(a6)                          
  0007c  4878ffff              pea      ($ffff).w                          
  00080  a97c                  _GetNewDialog                               ; $a97c
  00082  245f                  movea.l  (a7)+,a2                           
  00084  2f0a                  move.l   a2,-(a7)                           
  00086  4ead06ba              jsr      f7_161c                            
  0008a  2e8a                  move.l   a2,(a7)                            
  0008c  3f3c0002              move.w   #2,-(a7)                           
  00090  a827                  _ShowDialogItem                             ; $a827
  00092  600000a4              bra.w    L0138                              
L0096:
  00096  3047                  movea.w  d7,a0                              
  00098  b1f9ffff83a6          cmpa.l   g_7c5a,a0                          
  0009e  6f32                  ble.s    L00d2                              
  000a0  486efe00              pea      -$200(a6)                          
  000a4  2f0b                  move.l   a3,-(a7)                           
  000a6  486eff00              pea      -$100(a6)                          
  000aa  2f2c0008              move.l   $8(a4),-(a7)                       
  000ae  a98b                  _ParamText                                  ; $a98b
  000b0  42a7                  clr.l    -(a7)                              
  000b2  3f3c00d2              move.w   #$d2,-(a7)                         
  000b6  486efd56              pea      -$2aa(a6)                          
  000ba  4878ffff              pea      ($ffff).w                          
  000be  a97c                  _GetNewDialog                               ; $a97c
  000c0  245f                  movea.l  (a7)+,a2                           
  000c2  2f0a                  move.l   a2,-(a7)                           
  000c4  4ead06ba              jsr      f7_161c                            
  000c8  2e8a                  move.l   a2,(a7)                            
  000ca  3f3c0002              move.w   #2,-(a7)                           
  000ce  a827                  _ShowDialogItem                             ; $a827
  000d0  6066                  bra.s    L0138                              
L00d2:
  000d2  302e0014              move.w   $14(a6),d0                         
  000d6  b06e0016              cmp.w    $16(a6),d0                         
  000da  6d32                  blt.s    L010e                              
  000dc  486efe00              pea      -$200(a6)                          
  000e0  2f0b                  move.l   a3,-(a7)                           
  000e2  486eff00              pea      -$100(a6)                          
  000e6  2f2c000c              move.l   $c(a4),-(a7)                       
  000ea  a98b                  _ParamText                                  ; $a98b
  000ec  42a7                  clr.l    -(a7)                              
  000ee  3f3c00d2              move.w   #$d2,-(a7)                         
  000f2  486efd56              pea      -$2aa(a6)                          
  000f6  4878ffff              pea      ($ffff).w                          
  000fa  a97c                  _GetNewDialog                               ; $a97c
  000fc  245f                  movea.l  (a7)+,a2                           
  000fe  2f0a                  move.l   a2,-(a7)                           
  00100  4ead06ba              jsr      f7_161c                            
  00104  2e8a                  move.l   a2,(a7)                            
  00106  3f3c0002              move.w   #2,-(a7)                           
  0010a  a827                  _ShowDialogItem                             ; $a827
  0010c  602a                  bra.s    L0138                              
L010e:
  0010e  486efe00              pea      -$200(a6)                          
  00112  2f0b                  move.l   a3,-(a7)                           
  00114  486eff00              pea      -$100(a6)                          
  00118  2f2c0004              move.l   $4(a4),-(a7)                       
  0011c  a98b                  _ParamText                                  ; $a98b
  0011e  42a7                  clr.l    -(a7)                              
  00120  3f3c00d2              move.w   #$d2,-(a7)                         
  00124  486efd56              pea      -$2aa(a6)                          
  00128  4878ffff              pea      ($ffff).w                          
  0012c  a97c                  _GetNewDialog                               ; $a97c
  0012e  245f                  movea.l  (a7)+,a2                           
  00130  2f0a                  move.l   a2,-(a7)                           
  00132  4ead06ba              jsr      f7_161c                            
  00136  588f                  addq.l   #4,a7                              
L0138:
  00138  2f0a                  move.l   a2,-(a7)                           
  0013a  a915                  _ShowWindow                                 ; $a915
  0013c  2f0a                  move.l   a2,-(a7)                           
  0013e  a873                  _SetPort                                    ; $a873
  00140  3f06                  move.w   d6,-(a7)                           
  00142  486efd4e              pea      -$2b2(a6)                          
  00146  4ead06d2              jsr      f7_1a72                            
  0014a  5c8f                  addq.l   #6,a7                              
L014c:
  0014c  42a7                  clr.l    -(a7)                              
  0014e  486efd4c              pea      -$2b4(a6)                          
  00152  a991                  _ModalDialog                                ; $a991
  00154  4a6efd4c              tst.w    -$2b4(a6)                          
  00158  67f2                  beq.s    L014c                              
  0015a  302efd4c              move.w   -$2b4(a6),d0                       
  0015e  6b1a                  bmi.s    L017a                              
  00160  5740                  subq.w   #3,d0                              
  00162  6714                  beq.s    L0178                              
  00164  6a14                  bpl.s    L017a                              
  00166  5240                  addq.w   #1,d0                              
  00168  6b10                  bmi.s    L017a                              
  0016a  3047                  movea.w  d7,a0                              
  0016c  2008                  move.l   a0,d0                              
  0016e  91b9ffff83a6          sub.l    d0,g_7c5a                          
  00174  7a01                  moveq    #1,d5                              
  00176  6002                  bra.s    L017a                              
L0178:
  00178  7a00                  moveq    #0,d5                              
L017a:
  0017a  2f0a                  move.l   a2,-(a7)                           
  0017c  a983                  _DisposeDialog                              ; $a983
  0017e  2f2efd48              move.l   -$2b8(a6),-(a7)                    
  00182  a873                  _SetPort                                    ; $a873
  00184  1005                  move.b   d5,d0                              
  00186  4cdf1ce0              movem.l  (a7)+,d5/d6/d7/a2/a3/a4            
  0018a  4e5e                  unlk     a6                                 
  0018c  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_018e
;----------------------------------------------------------------------
f2_018e:
  0018e  4e560000              link     a6,#0                              
  00192  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  00198  4267                  clr.w    -(a7)                              
  0019a  a939                  _EnableItem                                 ; $a939
  0019c  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  001a2  3f2e0008              move.w   $8(a6),-(a7)                       
  001a6  a939                  _EnableItem                                 ; $a939
  001a8  a937                  _DrawMenuBar                                ; $a937
  001aa  4e5e                  unlk     a6                                 
  001ac  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_01ae
;----------------------------------------------------------------------
f2_01ae:
  001ae  4e56fffc              link     a6,#-4                             
  001b2  48e70308              movem.l  d6/d7/a4,-(a7)                     
  001b6  286e0008              movea.l  $8(a6),a4                          
  001ba  486efffc              pea      -$4(a6)                            
  001be  a972                  _GetMouse                                   ; $a972
  001c0  4a79ffff836c          tst.w    g_7c94                             
  001c6  6f000152              ble.w    L031a                              
  001ca  4a79ffff8894          tst.w    g_776c                             
  001d0  6f000148              ble.w    L031a                              
  001d4  4a79ffff97aa          tst.w    g_6856                             
  001da  6718                  beq.s    L01f4                              
  001dc  4227                  clr.b    -(a7)                              
  001de  2f2efffc              move.l   -$4(a6),-(a7)                      
  001e2  2f3cffff9622          move.l   #$ffff9622,-(a7)                   
  001e8  a8ad                  _PtInRect                                   ; $a8ad
  001ea  4a1f                  tst.b    (a7)+                              
  001ec  6706                  beq.s    L01f4                              
  001ee  18bc0053              move.b   #$53,(a4)                          
  001f2  6064                  bra.s    L0258                              
L01f4:
  001f4  4227                  clr.b    -(a7)                              
  001f6  2f2efffc              move.l   -$4(a6),-(a7)                      
  001fa  2f3cffff971a          move.l   #$ffff971a,-(a7)                   
  00200  a8ad                  _PtInRect                                   ; $a8ad
  00202  4a1f                  tst.b    (a7)+                              
  00204  6706                  beq.s    L020c                              
  00206  18bc004c              move.b   #$4c,(a4)                          
  0020a  604c                  bra.s    L0258                              
L020c:
  0020c  4227                  clr.b    -(a7)                              
  0020e  2f2efffc              move.l   -$4(a6),-(a7)                      
  00212  2f3cffff9722          move.l   #$ffff9722,-(a7)                   
  00218  a8ad                  _PtInRect                                   ; $a8ad
  0021a  4a1f                  tst.b    (a7)+                              
  0021c  6706                  beq.s    L0224                              
  0021e  18bc0052              move.b   #$52,(a4)                          
  00222  6034                  bra.s    L0258                              
L0224:
  00224  4227                  clr.b    -(a7)                              
  00226  2f2efffc              move.l   -$4(a6),-(a7)                      
  0022a  2f3cffff972a          move.l   #$ffff972a,-(a7)                   
  00230  a8ad                  _PtInRect                                   ; $a8ad
  00232  4a1f                  tst.b    (a7)+                              
  00234  6706                  beq.s    L023c                              
  00236  18bc0046              move.b   #$46,(a4)                          
  0023a  601c                  bra.s    L0258                              
L023c:
  0023c  4227                  clr.b    -(a7)                              
  0023e  2f2efffc              move.l   -$4(a6),-(a7)                      
  00242  2f3cffff9732          move.l   #$ffff9732,-(a7)                   
  00248  a8ad                  _PtInRect                                   ; $a8ad
  0024a  4a1f                  tst.b    (a7)+                              
  0024c  6706                  beq.s    L0254                              
  0024e  18bc0056              move.b   #$56,(a4)                          
  00252  6004                  bra.s    L0258                              
L0254:
  00254  18bc002b              move.b   #$2b,(a4)                          
L0258:
  00258  4a79ffff8e08          tst.w    g_71f8                             
  0025e  6f6a                  ble.s    L02ca                              
  00260  4227                  clr.b    -(a7)                              
  00262  2f2efffc              move.l   -$4(a6),-(a7)                      
  00266  2079ffff9382          movea.l  g_6c7e,a0                          
  0026c  48680010              pea      $10(a0)                            
  00270  a8ad                  _PtInRect                                   ; $a8ad
  00272  4a1f                  tst.b    (a7)+                              
  00274  6754                  beq.s    L02ca                              
  00276  7e01                  moveq    #1,d7                              
  00278  6048                  bra.s    L02c2                              
L027a:
  0027a  4a7073b0ffff97aa      tst.w    (-$6856,za0,d7.w*2)                
  00282  673c                  beq.s    L02c0                              
  00284  4227                  clr.b    -(a7)                              
  00286  2f2efffc              move.l   -$4(a6),-(a7)                      
  0028a  487077b0ffff9622      pea      (-$69de,za0,d7.w*8)                
  00292  a8ad                  _PtInRect                                   ; $a8ad
  00294  4a1f                  tst.b    (a7)+                              
  00296  6728                  beq.s    L02c0                              
  00298  3f3073b0ffff97aa      move.w   (-$6856,za0,d7.w*2),-(a7)          
  002a0  4eba778a              jsr      f2_7a2c                            
  002a4  0c7000ff03b0ffff8b7c  cmpi.w   #$ff,(-$7484,za0,d0.w*2)           
  002ae  548f                  addq.l   #2,a7                              
  002b0  6608                  bne.s    L02ba                              
  002b2  18bc0043              move.b   #$43,(a4)                          
  002b6  1c07                  move.b   d7,d6                              
  002b8  6006                  bra.s    L02c0                              
L02ba:
  002ba  18bc0048              move.b   #$48,(a4)                          
  002be  1c07                  move.b   d7,d6                              
L02c0:
  002c0  5247                  addq.w   #1,d7                              
L02c2:
  002c2  be79ffff8e08          cmp.w    g_71f8,d7                          
  002c8  6fb0                  ble.s    L027a                              
L02ca:
  002ca  4a79ffff8e0a          tst.w    g_71f6                             
  002d0  6f48                  ble.s    L031a                              
  002d2  4227                  clr.b    -(a7)                              
  002d4  2f2efffc              move.l   -$4(a6),-(a7)                      
  002d8  2079ffff9382          movea.l  g_6c7e,a0                          
  002de  48680010              pea      $10(a0)                            
  002e2  a8ad                  _PtInRect                                   ; $a8ad
  002e4  4a1f                  tst.b    (a7)+                              
  002e6  6732                  beq.s    L031a                              
  002e8  7e01                  moveq    #1,d7                              
  002ea  6026                  bra.s    L0312                              
L02ec:
  002ec  4a7073b0ffff97be      tst.w    (-$6842,za0,d7.w*2)                
  002f4  671a                  beq.s    L0310                              
  002f6  4227                  clr.b    -(a7)                              
  002f8  2f2efffc              move.l   -$4(a6),-(a7)                      
  002fc  487077b0ffff9672      pea      (-$698e,za0,d7.w*8)                
  00304  a8ad                  _PtInRect                                   ; $a8ad
  00306  4a1f                  tst.b    (a7)+                              
  00308  6706                  beq.s    L0310                              
  0030a  18bc0042              move.b   #$42,(a4)                          
  0030e  1c07                  move.b   d7,d6                              
L0310:
  00310  5247                  addq.w   #1,d7                              
L0312:
  00312  be79ffff8e0a          cmp.w    g_71f6,d7                          
  00318  6fd2                  ble.s    L02ec                              
L031a:
  0031a  1014                  move.b   (a4),d0                            
  0031c  49c0                  extb.l   d0                                 
  0031e  0440002b              subi.w   #$2b,d0                            
  00322  0c40002b              cmpi.w   #$2b,d0                            
  00326  627c                  bhi.s    L03a4                              
  00328  43fa0082              lea      L03ac(pc),a1                       
  0032c  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  00330  4ed1                  jmp      (a1)                               
  00332  2079ffff8e6a          movea.l  g_7196,a0                          
  00338  2f10                  move.l   (a0),-(a7)                         
  0033a  a851                  _SetCursor                                  ; $a851
  0033c  6066                  bra.s    L03a4                              
  0033e  2079ffff8e62          movea.l  g_719e,a0                          
  00344  2f10                  move.l   (a0),-(a7)                         
  00346  a851                  _SetCursor                                  ; $a851
  00348  605a                  bra.s    L03a4                              
  0034a  2079ffff8e66          movea.l  g_719a,a0                          
  00350  2f10                  move.l   (a0),-(a7)                         
  00352  a851                  _SetCursor                                  ; $a851
  00354  604e                  bra.s    L03a4                              
  00356  2079ffff8e6a          movea.l  g_7196,a0                          
  0035c  2f10                  move.l   (a0),-(a7)                         
  0035e  a851                  _SetCursor                                  ; $a851
  00360  6042                  bra.s    L03a4                              
  00362  2079ffff8e6e          movea.l  g_7192,a0                          
  00368  2f10                  move.l   (a0),-(a7)                         
  0036a  a851                  _SetCursor                                  ; $a851
  0036c  6036                  bra.s    L03a4                              
  0036e  2079ffff8e72          movea.l  g_718e,a0                          
  00374  2f10                  move.l   (a0),-(a7)                         
  00376  a851                  _SetCursor                                  ; $a851
  00378  1886                  move.b   d6,(a4)                            
  0037a  6028                  bra.s    L03a4                              
  0037c  2079ffff8e76          movea.l  g_718a,a0                          
  00382  2f10                  move.l   (a0),-(a7)                         
  00384  a851                  _SetCursor                                  ; $a851
  00386  700a                  moveq    #10,d0                             
  00388  d006                  add.b    d6,d0                              
  0038a  1880                  move.b   d0,(a4)                            
  0038c  6016                  bra.s    L03a4                              
  0038e  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  00394  a851                  _SetCursor                                  ; $a851
  00396  600c                  bra.s    L03a4                              
  00398  2079ffff8e7a          movea.l  g_7186,a0                          
  0039e  2f10                  move.l   (a0),-(a7)                         
  003a0  a851                  _SetCursor                                  ; $a851
  003a2  1886                  move.b   d6,(a4)                            
L03a4:
  003a4  4cdf10c0              movem.l  (a7)+,d6/d7/a4                     
  003a8  4e5e                  unlk     a6                                 
  003aa  4e75                  rts                                         
  003ac  ffe2                  dc.w     $ffe2                              
  003ae  fff8                  dc.w     $fff8                              
  003b0  fff8                  dc.w     $fff8                              
  003b2  fff8                  dc.w     $fff8                              
  003b4  fff8                  dc.w     $fff8                              
  003b6  fff8                  dc.w     $fff8                              
  003b8  fff8                  dc.w     $fff8                              
  003ba  fff8                  dc.w     $fff8                              
  003bc  fff8                  dc.w     $fff8                              
  003be  fff8                  dc.w     $fff8                              
  003c0  fff8                  dc.w     $fff8                              
  003c2  fff8                  dc.w     $fff8                              
  003c4  fff8                  dc.w     $fff8                              
  003c6  fff8                  dc.w     $fff8                              
  003c8  fff8                  dc.w     $fff8                              
  003ca  fff8                  dc.w     $fff8                              
  003cc  fff8                  dc.w     $fff8                              
  003ce  fff8                  dc.w     $fff8                              
  003d0  fff8                  dc.w     $fff8                              
  003d2  fff8                  dc.w     $fff8                              
  003d4  fff8                  dc.w     $fff8                              
  003d6  fff8                  dc.w     $fff8                              
  003d8  fff8                  dc.w     $fff8                              
  003da  ffd0                  dc.w     $ffd0                              
  003dc  ffec                  dc.w     $ffec                              
  003de  ff86                  dc.w     $ff86                              
  003e0  fff8                  dc.w     $fff8                              
  003e2  ffaa                  dc.w     $ffaa                              
  003e4  fff8                  dc.w     $fff8                              
  003e6  ffc2                  dc.w     $ffc2                              
  003e8  fff8                  dc.w     $fff8                              
  003ea  fff8                  dc.w     $fff8                              
  003ec  fff8                  dc.w     $fff8                              
  003ee  ff92                  dc.w     $ff92                              
  003f0  fff8                  dc.w     $fff8                              
  003f2  fff8                  dc.w     $fff8                              
  003f4  fff8                  dc.w     $fff8                              
  003f6  fff8                  dc.w     $fff8                              
  003f8  fff8                  dc.w     $fff8                              
  003fa  ff9e                  dc.w     $ff9e                              
  003fc  fff8                  dc.w     $fff8                              
  003fe  fff8                  dc.w     $fff8                              
  00400  fff8                  dc.w     $fff8                              
  00402  ffb6                  dc.w     $ffb6                              

;----------------------------------------------------------------------
; f2_0404   [jump table #10]
;----------------------------------------------------------------------
f2_0404:
  00404  4e56fff2              link     a6,#-14                            
  00408  48e70300              movem.l  d6/d7,-(a7)                        
  0040c  4239ffff8ded          clr.b    g_7213                             
  00412  4279ffff883c          clr.w    g_77c4                             
  00418  4239ffff8df4          clr.b    g_720c                             
  0041e  33fc0002ffff883a      move.w   #2,g_77c6                          
  00426  7e00                  moveq    #0,d7                              
  00428  600000be              bra.w    L04e8                              
L042c:
  0042c  7c00                  moveq    #0,d6                              
  0042e  6014                  bra.s    L0444                              
L0430:
  00430  7012                  moveq    #18,d0                             
  00432  c1c7                  muls.w   d7,d0                              
  00434  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0043a  3046                  movea.w  d6,a0                              
  0043c  d1c8                  adda.l   a0,a0                              
  0043e  42700800              clr.w    $0(a0,d0.l)                        
  00442  5246                  addq.w   #1,d6                              
L0444:
  00444  0c460008              cmpi.w   #8,d6                              
  00448  6fe6                  ble.s    L0430                              
  0044a  427073b0ffff8a80      clr.w    (-$7580,za0,d7.w*2)                
  00452  427073b0ffff8a2c      clr.w    (-$75d4,za0,d7.w*2)                
  0045a  427073b0ffff8aaa      clr.w    (-$7556,za0,d7.w*2)                
  00462  427073b0ffff8a56      clr.w    (-$75aa,za0,d7.w*2)                
  0046a  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  00472  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  0047a  427073b0ffff8d4a      clr.w    (-$72b6,za0,d7.w*2)                
  00482  427073b0ffff8d74      clr.w    (-$728c,za0,d7.w*2)                
  0048a  427073b0ffff8d20      clr.w    (-$72e0,za0,d7.w*2)                
  00492  427073b0ffff8c78      clr.w    (-$7388,za0,d7.w*2)                
  0049a  427073b0ffff8ccc      clr.w    (-$7334,za0,d7.w*2)                
  004a2  4a39ffff985b          tst.b    g_67a5                             
  004a8  670c                  beq.s    L04b6                              
  004aa  11bc000171b0ffff97e4  move.b   #1,(-$681c,za0,d7.w)               
  004b4  6008                  bra.s    L04be                              
L04b6:
  004b6  423071b0ffff97e4      clr.b    (-$681c,za0,d7.w)                  
L04be:
  004be  423071b0ffff97f9      clr.b    (-$6807,za0,d7.w)                  
  004c6  427073b0ffff8ad4      clr.w    (-$752c,za0,d7.w*2)                
  004ce  427073b0ffff8afe      clr.w    (-$7502,za0,d7.w*2)                
  004d6  427073b0ffff8b28      clr.w    (-$74d8,za0,d7.w*2)                
  004de  427073b0ffff8b52      clr.w    (-$74ae,za0,d7.w*2)                
  004e6  5247                  addq.w   #1,d7                              
L04e8:
  004e8  0c470014              cmpi.w   #$14,d7                            
  004ec  6f00ff3e              ble.w    L042c                              
  004f0  4279ffff8888          clr.w    g_7778                             
  004f6  4279ffff8892          clr.w    g_776e                             
  004fc  4279ffff884c          clr.w    g_77b4                             
  00502  4279ffff884e          clr.w    g_77b2                             
  00508  7e00                  moveq    #0,d7                              
  0050a  6012                  bra.s    L051e                              
L050c:
  0050c  427073b0ffff888a      clr.w    (-$7776,za0,d7.w*2)                
  00514  427073b0ffff8850      clr.w    (-$77b0,za0,d7.w*2)                
  0051c  5247                  addq.w   #1,d7                              
L051e:
  0051e  0c470004              cmpi.w   #4,d7                              
  00522  6de8                  blt.s    L050c                              
  00524  7e00                  moveq    #0,d7                              
  00526  600a                  bra.s    L0532                              
L0528:
  00528  427073b0ffff97aa      clr.w    (-$6856,za0,d7.w*2)                
  00530  5247                  addq.w   #1,d7                              
L0532:
  00532  0c47000a              cmpi.w   #$a,d7                             
  00536  6df0                  blt.s    L0528                              
  00538  4cdf00c0              movem.l  (a7)+,d6/d7                        
  0053c  4e5e                  unlk     a6                                 
  0053e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0540
;----------------------------------------------------------------------
f2_0540:
  00540  4e56fece              link     a6,#-306                           
  00544  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  00548  99cc                  suba.l   a4,a4                              
  0054a  2e2e0008              move.l   $8(a6),d7                          
  0054e  7010                  moveq    #16,d0                             
  00550  e0a7                  asr.l    d0,d7                              
  00552  3c2e000a              move.w   $a(a6),d6                          
  00556  3007                  move.w   d7,d0                              
  00558  67000222              beq.w    L077c                              
  0055c  6b00021e              bmi.w    L077c                              
  00560  5b40                  subq.w   #5,d0                              
  00562  670001c0              beq.w    L0724                              
  00566  6a12                  bpl.s    L057a                              
  00568  5440                  addq.w   #2,d0                              
  0056a  67000148              beq.w    L06b4                              
  0056e  6a00018c              bpl.w    L06fc                              
  00572  5240                  addq.w   #1,d0                              
  00574  6a0000d0              bpl.w    L0646                              
  00578  607a                  bra.s    L05f4                              
L057a:
  0057a  0440007b              subi.w   #$7b,d0                            
  0057e  6710                  beq.s    L0590                              
  00580  6a0001fa              bpl.w    L077c                              
  00584  0440ff87              subi.w   #$ff87,d0                          
  00588  6a0001f2              bpl.w    L077c                              
  0058c  600001ae              bra.w    L073c                              
L0590:
  00590  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  00596  a851                  _SetCursor                                  ; $a851
  00598  3006                  move.w   d6,d0                              
  0059a  6734                  beq.s    L05d0                              
  0059c  6b32                  bmi.s    L05d0                              
  0059e  5740                  subq.w   #3,d0                              
  005a0  671e                  beq.s    L05c0                              
  005a2  6a06                  bpl.s    L05aa                              
  005a4  5240                  addq.w   #1,d0                              
  005a6  6a10                  bpl.s    L05b8                              
  005a8  6006                  bra.s    L05b0                              
L05aa:
  005aa  5540                  subq.w   #2,d0                              
  005ac  6a22                  bpl.s    L05d0                              
  005ae  6018                  bra.s    L05c8                              
L05b0:
  005b0  4ead03ca              jsr      f4_0000                            
  005b4  600001c6              bra.w    L077c                              
L05b8:
  005b8  4ead06c2              jsr      f7_1666                            
  005bc  600001be              bra.w    L077c                              
L05c0:
  005c0  4eba5ca2              jsr      f2_6264                            
  005c4  600001b6              bra.w    L077c                              
L05c8:
  005c8  4eba21e4              jsr      f2_27ae                            
  005cc  600001ae              bra.w    L077c                              
L05d0:
  005d0  2f39ffff8dc0          move.l   g_7240,-(a7)                       
  005d6  3f06                  move.w   d6,-(a7)                           
  005d8  486eff00              pea      -$100(a6)                          
  005dc  a946                  _GetMenuItemText                            ; $a946
  005de  4267                  clr.w    -(a7)                              
  005e0  486eff00              pea      -$100(a6)                          
  005e4  a9b6                  _OpenDeskAcc                                ; $a9b6
  005e6  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  005ec  a873                  _SetPort                                    ; $a873
  005ee  548f                  addq.l   #2,a7                              
  005f0  6000018a              bra.w    L077c                              
L05f4:
  005f4  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  005fa  a851                  _SetCursor                                  ; $a851
  005fc  3006                  move.w   d6,d0                              
  005fe  6700017c              beq.w    L077c                              
  00602  6b000178              bmi.w    L077c                              
  00606  5940                  subq.w   #4,d0                              
  00608  672a                  beq.s    L0634                              
  0060a  6a08                  bpl.s    L0614                              
  0060c  5440                  addq.w   #2,d0                              
  0060e  6714                  beq.s    L0624                              
  00610  6a1a                  bpl.s    L062c                              
  00612  6008                  bra.s    L061c                              
L0614:
  00614  5540                  subq.w   #2,d0                              
  00616  6a000164              bpl.w    L077c                              
  0061a  6020                  bra.s    L063c                              
L061c:
  0061c  4eba33de              jsr      f2_39fc                            
  00620  6000015a              bra.w    L077c                              
L0624:
  00624  4eba34e4              jsr      f2_3b0a                            
  00628  60000152              bra.w    L077c                              
L062c:
  0062c  4eba35a6              jsr      f2_3bd4                            
  00630  6000014a              bra.w    L077c                              
L0634:
  00634  4eba35ba              jsr      f2_3bf0                            
  00638  60000142              bra.w    L077c                              
L063c:
  0063c  4ead05ba              jsr      f5_36ba                            
  00640  1a00                  move.b   d0,d5                              
  00642  60000138              bra.w    L077c                              
L0646:
  00646  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  0064c  a851                  _SetCursor                                  ; $a851
  0064e  0c46000a              cmpi.w   #$a,d6                             
  00652  6244                  bhi.s    L0698                              
  00654  43fa0146              lea      L079c(pc),a1                       
  00658  d2f16200              adda.w   $0(a1,d6.w*2),a1                   
  0065c  4ed1                  jmp      (a1)                               
  0065e  4eba3656              jsr      f2_3cb6                            
  00662  6034                  bra.s    L0698                              
  00664  4eba3670              jsr      f2_3cd6                            
  00668  602e                  bra.s    L0698                              
  0066a  4eba367a              jsr      f2_3ce6                            
  0066e  6028                  bra.s    L0698                              
  00670  4eba3684              jsr      f2_3cf6                            
  00674  6022                  bra.s    L0698                              
  00676  4eba368e              jsr      f2_3d06                            
  0067a  601c                  bra.s    L0698                              
  0067c  4eba3698              jsr      f2_3d16                            
  00680  6016                  bra.s    L0698                              
  00682  4eba36a2              jsr      f2_3d26                            
  00686  6010                  bra.s    L0698                              
  00688  4eba36ac              jsr      f2_3d36                            
  0068c  600a                  bra.s    L0698                              
  0068e  4eba36b6              jsr      f2_3d46                            
  00692  6004                  bra.s    L0698                              
  00694  4eba3630              jsr      f2_3cc6                            
L0698:
  00698  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  006a0  1f3c0001              move.b   #1,-(a7)                           
  006a4  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  006aa  4eba4df2              jsr      f2_549e                            
  006ae  588f                  addq.l   #4,a7                              
  006b0  600000ca              bra.w    L077c                              
L06b4:
  006b4  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  006ba  a851                  _SetCursor                                  ; $a851
  006bc  3006                  move.w   d6,d0                              
  006be  672a                  beq.s    L06ea                              
  006c0  6b28                  bmi.s    L06ea                              
  006c2  5740                  subq.w   #3,d0                              
  006c4  671a                  beq.s    L06e0                              
  006c6  6a06                  bpl.s    L06ce                              
  006c8  5240                  addq.w   #1,d0                              
  006ca  6a0e                  bpl.s    L06da                              
  006cc  6006                  bra.s    L06d4                              
L06ce:
  006ce  5540                  subq.w   #2,d0                              
  006d0  6a18                  bpl.s    L06ea                              
  006d2  6012                  bra.s    L06e6                              
L06d4:
  006d4  4eba3680              jsr      f2_3d56                            
  006d8  6010                  bra.s    L06ea                              
L06da:
  006da  4eba3686              jsr      f2_3d62                            
  006de  600a                  bra.s    L06ea                              
L06e0:
  006e0  4ead02d2              jsr      f3_2dce                            
  006e4  6004                  bra.s    L06ea                              
L06e6:
  006e6  4eba36a0              jsr      f2_3d88                            
L06ea:
  006ea  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  006f2  5279ffff3ace          addq.w   #1,g_c532                          
  006f8  60000082              bra.w    L077c                              
L06fc:
  006fc  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  00702  a851                  _SetCursor                                  ; $a851
  00704  3006                  move.w   d6,d0                              
  00706  6712                  beq.s    L071a                              
  00708  6b10                  bmi.s    L071a                              
  0070a  5540                  subq.w   #2,d0                              
  0070c  6708                  beq.s    L0716                              
  0070e  6a0a                  bpl.s    L071a                              
  00710  4eba3682              jsr      f2_3d94                            
  00714  6004                  bra.s    L071a                              
L0716:
  00716  4eba3688              jsr      f2_3da0                            
L071a:
  0071a  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  00722  6058                  bra.s    L077c                              
L0724:
  00724  3006                  move.w   d6,d0                              
  00726  670a                  beq.s    L0732                              
  00728  6b08                  bmi.s    L0732                              
  0072a  5d40                  subq.w   #6,d0                              
  0072c  6a04                  bpl.s    L0732                              
  0072e  4ead0652              jsr      f6_1d16                            
L0732:
  00732  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  0073a  6040                  bra.s    L077c                              
L073c:
  0073c  0c460007              cmpi.w   #7,d6                              
  00740  6232                  bhi.s    L0774                              
  00742  43fa0048              lea      L078c(pc),a1                       
  00746  d2f16200              adda.w   $0(a1,d6.w*2),a1                   
  0074a  4ed1                  jmp      (a1)                               
  0074c  4eba365e              jsr      f2_3dac                            
  00750  6022                  bra.s    L0774                              
  00752  4eba3660              jsr      f2_3db4                            
  00756  601c                  bra.s    L0774                              
  00758  4eba3694              jsr      f2_3dee                            
  0075c  6016                  bra.s    L0774                              
  0075e  4eba3742              jsr      f2_3ea2                            
  00762  6010                  bra.s    L0774                              
  00764  4ead02da              jsr      f3_2dda                            
  00768  600a                  bra.s    L0774                              
  0076a  4ead0592              jsr      f5_323e                            
  0076e  6004                  bra.s    L0774                              
  00770  4ead059a              jsr      f5_3256                            
L0774:
  00774  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
L077c:
  0077c  4ead05c2              jsr      f5_3984                            
  00780  4267                  clr.w    -(a7)                              
  00782  a938                  _HiliteMenu                                 ; $a938
  00784  4cdf10e0              movem.l  (a7)+,d5/d6/d7/a4                  
  00788  4e5e                  unlk     a6                                 
  0078a  4e75                  rts                                         
  0078c  ffe8                  dc.w     $ffe8                              
  0078e  ffc0                  dc.w     $ffc0                              
  00790  ffc6                  dc.w     $ffc6                              
  00792  ffcc                  dc.w     $ffcc                              
  00794  ffd2                  dc.w     $ffd2                              
  00796  ffd8                  dc.w     $ffd8                              
  00798  ffde                  dc.w     $ffde                              
  0079a  ffe4                  dc.w     $ffe4                              
  0079c  fefc                  dc.w     $fefc                              
  0079e  fec2                  dc.w     $fec2                              
  007a0  fec8                  dc.w     $fec8                              
  007a2  fece                  dc.w     $fece                              
  007a4  fed4                  dc.w     $fed4                              
  007a6  feda                  dc.w     $feda                              
  007a8  fee0                  dc.w     $fee0                              
  007aa  fee6                  dc.w     $fee6                              
  007ac  feec                  dc.w     $feec                              
  007ae  fef2                  dc.w     $fef2                              
  007b0  fef8                  dc.w     $fef8                              

;----------------------------------------------------------------------
; f2_07b2
;----------------------------------------------------------------------
f2_07b2:
  007b2  4e56fff8              link     a6,#-8                             
  007b6  48e70700              movem.l  d5/d6/d7,-(a7)                     
  007ba  3e2e000c              move.w   $c(a6),d7                          
  007be  486efff8              pea      -$8(a6)                            
  007c2  3f3c0064              move.w   #$64,-(a7)                         
  007c6  70f2                  moveq    #-14,d0                            
  007c8  d047                  add.w    d7,d0                              
  007ca  3f00                  move.w   d0,-(a7)                           
  007cc  3f3c00be              move.w   #$be,-(a7)                         
  007d0  700a                  moveq    #10,d0                             
  007d2  d047                  add.w    d7,d0                              
  007d4  3f00                  move.w   d0,-(a7)                           
  007d6  a8a7                  _SetRect                                    ; $a8a7
  007d8  4267                  clr.w    -(a7)                              
  007da  a994                  _CurResFile                                 ; $a994
  007dc  3a1f                  move.w   (a7)+,d5                           
  007de  3f39ffff98e6          move.w   g_671a,-(a7)                       
  007e4  a998                  _UseResFile                                 ; $a998
  007e6  3f3c030d              move.w   #$30d,-(a7)                        
  007ea  a887                  _TextFont                                   ; $a887
  007ec  3f3c0001              move.w   #1,-(a7)                           
  007f0  a888                  _TextFace                                   ; $a888
  007f2  4267                  clr.w    -(a7)                              
  007f4  a889                  _TextMode                                   ; $a889
  007f6  3f3c0012              move.w   #$12,-(a7)                         
  007fa  a88a                  _TextSize                                   ; $a88a
  007fc  4227                  clr.b    -(a7)                              
  007fe  2f3c0012030d          move.l   #$12030d,-(a7)                     
  00804  a902                  _RealFont                                   ; $a902
  00806  4a1f                  tst.b    (a7)+                              
  00808  6640                  bne.s    L084a                              
  0080a  4227                  clr.b    -(a7)                              
  0080c  2f3c00120003          move.l   #$120003,-(a7)                     
  00812  a902                  _RealFont                                   ; $a902
  00814  4a1f                  tst.b    (a7)+                              
  00816  6708                  beq.s    L0820                              
  00818  3f3c0003              move.w   #3,-(a7)                           
  0081c  a887                  _TextFont                                   ; $a887
  0081e  602a                  bra.s    L084a                              
L0820:
  00820  4227                  clr.b    -(a7)                              
  00822  2f3c000e0015          move.l   #$e0015,-(a7)                      
  00828  a902                  _RealFont                                   ; $a902
  0082a  4a1f                  tst.b    (a7)+                              
  0082c  670e                  beq.s    L083c                              
  0082e  3f3c0015              move.w   #$15,-(a7)                         
  00832  a887                  _TextFont                                   ; $a887
  00834  3f3c000e              move.w   #$e,-(a7)                          
  00838  a88a                  _TextSize                                   ; $a88a
  0083a  600e                  bra.s    L084a                              
L083c:
  0083c  4267                  clr.w    -(a7)                              
  0083e  a887                  _TextFont                                   ; $a887
  00840  4267                  clr.w    -(a7)                              
  00842  a888                  _TextFace                                   ; $a888
  00844  3f3c000c              move.w   #$c,-(a7)                          
  00848  a88a                  _TextSize                                   ; $a88a
L084a:
  0084a  486efff8              pea      -$8(a6)                            
  0084e  a8a3                  _EraseRect                                  ; $a8a3
  00850  4267                  clr.w    -(a7)                              
  00852  2f2e0008              move.l   $8(a6),-(a7)                       
  00856  a88c                  _StringWidth                                ; $a88c
  00858  3c1f                  move.w   (a7)+,d6                           
  0085a  303c00af              move.w   #$af,d0                            
  0085e  9046                  sub.w    d6,d0                              
  00860  3f00                  move.w   d0,-(a7)                           
  00862  3f07                  move.w   d7,-(a7)                           
  00864  a893                  _MoveTo                                     ; $a893
  00866  2f2e0008              move.l   $8(a6),-(a7)                       
  0086a  a884                  _DrawString                                 ; $a884
  0086c  3f05                  move.w   d5,-(a7)                           
  0086e  a998                  _UseResFile                                 ; $a998
  00870  3f3c000c              move.w   #$c,-(a7)                          
  00874  a88a                  _TextSize                                   ; $a88a
  00876  4267                  clr.w    -(a7)                              
  00878  a888                  _TextFace                                   ; $a888
  0087a  4267                  clr.w    -(a7)                              
  0087c  a887                  _TextFont                                   ; $a887
  0087e  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  00882  4e5e                  unlk     a6                                 
  00884  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0886
;----------------------------------------------------------------------
f2_0886:
  00886  4e56ff00              link     a6,#-256                           
  0088a  48e70700              movem.l  d5/d6/d7,-(a7)                     
  0088e  1e2e0008              move.b   $8(a6),d7                          
  00892  4267                  clr.w    -(a7)                              
  00894  a994                  _CurResFile                                 ; $a994
  00896  3a1f                  move.w   (a7)+,d5                           
  00898  3f39ffff98e6          move.w   g_671a,-(a7)                       
  0089e  a998                  _UseResFile                                 ; $a998
  008a0  3f3c0001              move.w   #1,-(a7)                           
  008a4  a888                  _TextFace                                   ; $a888
  008a6  3f3c030d              move.w   #$30d,-(a7)                        
  008aa  a887                  _TextFont                                   ; $a887
  008ac  3f3c0012              move.w   #$12,-(a7)                         
  008b0  a88a                  _TextSize                                   ; $a88a
  008b2  4227                  clr.b    -(a7)                              
  008b4  2f3c0012030d          move.l   #$12030d,-(a7)                     
  008ba  a902                  _RealFont                                   ; $a902
  008bc  4a1f                  tst.b    (a7)+                              
  008be  6640                  bne.s    L0900                              
  008c0  4227                  clr.b    -(a7)                              
  008c2  2f3c00120003          move.l   #$120003,-(a7)                     
  008c8  a902                  _RealFont                                   ; $a902
  008ca  4a1f                  tst.b    (a7)+                              
  008cc  6708                  beq.s    L08d6                              
  008ce  3f3c0003              move.w   #3,-(a7)                           
  008d2  a887                  _TextFont                                   ; $a887
  008d4  602a                  bra.s    L0900                              
L08d6:
  008d6  4227                  clr.b    -(a7)                              
  008d8  2f3c000e0015          move.l   #$e0015,-(a7)                      
  008de  a902                  _RealFont                                   ; $a902
  008e0  4a1f                  tst.b    (a7)+                              
  008e2  670e                  beq.s    L08f2                              
  008e4  3f3c0015              move.w   #$15,-(a7)                         
  008e8  a887                  _TextFont                                   ; $a887
  008ea  3f3c000e              move.w   #$e,-(a7)                          
  008ee  a88a                  _TextSize                                   ; $a88a
  008f0  600e                  bra.s    L0900                              
L08f2:
  008f2  4267                  clr.w    -(a7)                              
  008f4  a887                  _TextFont                                   ; $a887
  008f6  4267                  clr.w    -(a7)                              
  008f8  a888                  _TextFace                                   ; $a888
  008fa  3f3c000c              move.w   #$c,-(a7)                          
  008fe  a88a                  _TextSize                                   ; $a88a
L0900:
  00900  306e000a              movea.w  $a(a6),a0                          
  00904  2f08                  move.l   a0,-(a7)                           
  00906  486eff00              pea      -$100(a6)                          
  0090a  4ead0512              jsr      f4_150e                            
  0090e  486eff00              pea      -$100(a6)                          
  00912  4eba70cc              jsr      f2_79e0                            
  00916  3c00                  move.w   d0,d6                              
  00918  1d876120ff01          move.b   d7,(-$ff,a6,d6.w)                  
  0091e  7001                  moveq    #1,d0                              
  00920  d02eff00              add.b    -$100(a6),d0                       
  00924  1d40ff00              move.b   d0,-$100(a6)                       
  00928  4257                  clr.w    (a7)                               
  0092a  1007                  move.b   d7,d0                              
  0092c  49c0                  extb.l   d0                                 
  0092e  3f00                  move.w   d0,-(a7)                           
  00930  a88d                  _CharWidth                                  ; $a88d
  00932  3c1f                  move.w   (a7)+,d6                           
  00934  302e000a              move.w   $a(a6),d0                          
  00938  9046                  sub.w    d6,d0                              
  0093a  3e80                  move.w   d0,(a7)                            
  0093c  3f2e000c              move.w   $c(a6),-(a7)                       
  00940  a893                  _MoveTo                                     ; $a893
  00942  1007                  move.b   d7,d0                              
  00944  49c0                  extb.l   d0                                 
  00946  3f00                  move.w   d0,-(a7)                           
  00948  a883                  _DrawChar                                   ; $a883
  0094a  3f05                  move.w   d5,-(a7)                           
  0094c  a998                  _UseResFile                                 ; $a998
  0094e  4267                  clr.w    -(a7)                              
  00950  a887                  _TextFont                                   ; $a887
  00952  3f3c000c              move.w   #$c,-(a7)                          
  00956  a88a                  _TextSize                                   ; $a88a
  00958  4267                  clr.w    -(a7)                              
  0095a  a888                  _TextFace                                   ; $a888
  0095c  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  00960  4e5e                  unlk     a6                                 
  00962  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0964
;----------------------------------------------------------------------
f2_0964:
  00964  4e56ff00              link     a6,#-256                           
  00968  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  0096c  383c0384              move.w   #$384,d4                           
  00970  4267                  clr.w    -(a7)                              
  00972  a994                  _CurResFile                                 ; $a994
  00974  361f                  move.w   (a7)+,d3                           
  00976  3f39ffff98e6          move.w   g_671a,-(a7)                       
  0097c  a998                  _UseResFile                                 ; $a998
  0097e  3f3c030d              move.w   #$30d,-(a7)                        
  00982  a887                  _TextFont                                   ; $a887
  00984  3f3c0001              move.w   #1,-(a7)                           
  00988  a888                  _TextFace                                   ; $a888
  0098a  4267                  clr.w    -(a7)                              
  0098c  a889                  _TextMode                                   ; $a889
  0098e  3f3c0012              move.w   #$12,-(a7)                         
  00992  a88a                  _TextSize                                   ; $a88a
  00994  4227                  clr.b    -(a7)                              
  00996  2f3c0012030d          move.l   #$12030d,-(a7)                     
  0099c  a902                  _RealFont                                   ; $a902
  0099e  4a1f                  tst.b    (a7)+                              
  009a0  6640                  bne.s    L09e2                              
  009a2  4227                  clr.b    -(a7)                              
  009a4  2f3c00120003          move.l   #$120003,-(a7)                     
  009aa  a902                  _RealFont                                   ; $a902
  009ac  4a1f                  tst.b    (a7)+                              
  009ae  6708                  beq.s    L09b8                              
  009b0  3f3c0003              move.w   #3,-(a7)                           
  009b4  a887                  _TextFont                                   ; $a887
  009b6  602a                  bra.s    L09e2                              
L09b8:
  009b8  4227                  clr.b    -(a7)                              
  009ba  2f3c000e0015          move.l   #$e0015,-(a7)                      
  009c0  a902                  _RealFont                                   ; $a902
  009c2  4a1f                  tst.b    (a7)+                              
  009c4  670e                  beq.s    L09d4                              
  009c6  3f3c0015              move.w   #$15,-(a7)                         
  009ca  a887                  _TextFont                                   ; $a887
  009cc  3f3c000e              move.w   #$e,-(a7)                          
  009d0  a88a                  _TextSize                                   ; $a88a
  009d2  600e                  bra.s    L09e2                              
L09d4:
  009d4  4267                  clr.w    -(a7)                              
  009d6  a887                  _TextFont                                   ; $a887
  009d8  4267                  clr.w    -(a7)                              
  009da  a888                  _TextFace                                   ; $a888
  009dc  3f3c000c              move.w   #$c,-(a7)                          
  009e0  a88a                  _TextSize                                   ; $a88a
L09e2:
  009e2  7c01                  moveq    #1,d6                              
  009e4  604a                  bra.s    L0a30                              
L09e6:
  009e6  7aff                  moveq    #-1,d5                             
  009e8  da46                  add.w    d6,d5                              
  009ea  cbfc0019              muls.w   #$19,d5                            
  009ee  06450050              addi.w   #$50,d5                            
  009f2  307663250008          movea.w  ([$8,a6],d6.w*2,$0),a0             
  009f8  2f08                  move.l   a0,-(a7)                           
  009fa  486eff00              pea      -$100(a6)                          
  009fe  4ead0512              jsr      f4_150e                            
  00a02  4267                  clr.w    -(a7)                              
  00a04  486eff00              pea      -$100(a6)                          
  00a08  a88c                  _StringWidth                                ; $a88c
  00a0a  3e1f                  move.w   (a7)+,d7                           
  00a0c  303c00af              move.w   #$af,d0                            
  00a10  9047                  sub.w    d7,d0                              
  00a12  3f00                  move.w   d0,-(a7)                           
  00a14  3f05                  move.w   d5,-(a7)                           
  00a16  a893                  _MoveTo                                     ; $a893
  00a18  486eff00              pea      -$100(a6)                          
  00a1c  a884                  _DrawString                                 ; $a884
  00a1e  303c00af              move.w   #$af,d0                            
  00a22  9047                  sub.w    d7,d0                              
  00a24  b840                  cmp.w    d0,d4                              
  00a26  6f06                  ble.s    L0a2e                              
  00a28  383c00af              move.w   #$af,d4                            
  00a2c  9847                  sub.w    d7,d4                              
L0a2e:
  00a2e  5246                  addq.w   #1,d6                              
L0a30:
  00a30  0c460003              cmpi.w   #3,d6                              
  00a34  6db0                  blt.s    L09e6                              
  00a36  302e000c              move.w   $c(a6),d0                          
  00a3a  6752                  beq.s    L0a8e                              
  00a3c  6b50                  bmi.s    L0a8e                              
  00a3e  5740                  subq.w   #3,d0                              
  00a40  672e                  beq.s    L0a70                              
  00a42  6a06                  bpl.s    L0a4a                              
  00a44  5240                  addq.w   #1,d0                              
  00a46  6a18                  bpl.s    L0a60                              
  00a48  6006                  bra.s    L0a50                              
L0a4a:
  00a4a  5540                  subq.w   #2,d0                              
  00a4c  6a40                  bpl.s    L0a8e                              
  00a4e  6030                  bra.s    L0a80                              
L0a50:
  00a50  3f05                  move.w   d5,-(a7)                           
  00a52  3f04                  move.w   d4,-(a7)                           
  00a54  1f3c002b              move.b   #$2b,-(a7)                         
  00a58  4ebafe2c              jsr      f2_0886                            
  00a5c  5c8f                  addq.l   #6,a7                              
  00a5e  602e                  bra.s    L0a8e                              
L0a60:
  00a60  3f05                  move.w   d5,-(a7)                           
  00a62  3f04                  move.w   d4,-(a7)                           
  00a64  1f3c002d              move.b   #$2d,-(a7)                         
  00a68  4ebafe1c              jsr      f2_0886                            
  00a6c  5c8f                  addq.l   #6,a7                              
  00a6e  601e                  bra.s    L0a8e                              
L0a70:
  00a70  3f05                  move.w   d5,-(a7)                           
  00a72  3f04                  move.w   d4,-(a7)                           
  00a74  1f3c0058              move.b   #$58,-(a7)                         
  00a78  4ebafe0c              jsr      f2_0886                            
  00a7c  5c8f                  addq.l   #6,a7                              
  00a7e  600e                  bra.s    L0a8e                              
L0a80:
  00a80  3f05                  move.w   d5,-(a7)                           
  00a82  3f04                  move.w   d4,-(a7)                           
  00a84  1f3c00d6              move.b   #$d6,-(a7)                         
  00a88  4ebafdfc              jsr      f2_0886                            
  00a8c  5c8f                  addq.l   #6,a7                              
L0a8e:
  00a8e  3f03                  move.w   d3,-(a7)                           
  00a90  a998                  _UseResFile                                 ; $a998
  00a92  3f3c000c              move.w   #$c,-(a7)                          
  00a96  a88a                  _TextSize                                   ; $a88a
  00a98  4267                  clr.w    -(a7)                              
  00a9a  a888                  _TextFace                                   ; $a888
  00a9c  4267                  clr.w    -(a7)                              
  00a9e  a887                  _TextFont                                   ; $a887
  00aa0  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  00aa4  4e5e                  unlk     a6                                 
  00aa6  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0aa8   [jump table #11]
;----------------------------------------------------------------------
f2_0aa8:
  00aa8  4e560000              link     a6,#0                              
  00aac  48e70338              movem.l  d6/d7/a2/a3/a4,-(a7)               
  00ab0  286e0008              movea.l  $8(a6),a4                          
  00ab4  266e000c              movea.l  $c(a6),a3                          
  00ab8  246e0010              movea.l  $10(a6),a2                         
  00abc  7e00                  moveq    #0,d7                              
  00abe  7c01                  moveq    #1,d6                              
  00ac0  302e0016              move.w   $16(a6),d0                         
  00ac4  6b26                  bmi.s    L0aec                              
  00ac6  044000e6              subi.w   #$e6,d0                            
  00aca  6716                  beq.s    L0ae2                              
  00acc  6a06                  bpl.s    L0ad4                              
  00ace  5240                  addq.w   #1,d0                              
  00ad0  6a0a                  bpl.s    L0adc                              
  00ad2  6018                  bra.s    L0aec                              
L0ad4:
  00ad4  0440000e              subi.w   #$e,d0                             
  00ad8  670e                  beq.s    L0ae8                              
  00ada  6010                  bra.s    L0aec                              
L0adc:
  00adc  06540038              addi.w   #$38,(a4)                          
  00ae0  600a                  bra.s    L0aec                              
L0ae2:
  00ae2  0654003d              addi.w   #$3d,(a4)                          
  00ae6  6004                  bra.s    L0aec                              
L0ae8:
  00ae8  06540042              addi.w   #$42,(a4)                          
L0aec:
  00aec  4a7063b0ffff8ba6      tst.w    (-$745a,za0,d6.w*2)                
  00af4  663e                  bne.s    L0b34                              
  00af6  319463b0ffff8ba6      move.w   (a4),(-$745a,za0,d6.w*2)           
  00afe  31ae001663b0ffff8b7c  move.w   $16(a6),(-$7484,za0,d6.w*2)        
  00b08  31b9ffff836c63b0ffff  move.w   g_7c94,(-$72b6,za0,d6.w*2)         
  00b14  31b9ffff836e63b0ffff  move.w   g_7c92,(-$728c,za0,d6.w*2)         
  00b20  319363b0ffff973a      move.w   (a3),(-$68c6,za0,d6.w*2)           
  00b28  319263b0ffff9764      move.w   (a2),(-$689c,za0,d6.w*2)           
  00b30  7e01                  moveq    #1,d7                              
  00b32  6002                  bra.s    L0b36                              
L0b34:
  00b34  5246                  addq.w   #1,d6                              
L0b36:
  00b36  4a07                  tst.b    d7                                 
  00b38  6608                  bne.s    L0b42                              
  00b3a  bc79ffff883e          cmp.w    g_77c2,d6                          
  00b40  6daa                  blt.s    L0aec                              
L0b42:
  00b42  102e0014              move.b   $14(a6),d0                         
  00b46  671a                  beq.s    L0b62                              
  00b48  6b1e                  bmi.s    L0b68                              
  00b4a  5500                  subq.b   #2,d0                              
  00b4c  6a1a                  bpl.s    L0b68                              
  00b4e  38bc0006              move.w   #6,(a4)                            
  00b52  b9fcffff8392          cmpa.l   #$ffff8392,a4                      
  00b58  6602                  bne.s    L0b5c                              
  00b5a  4254                  clr.w    (a4)                               
L0b5c:
  00b5c  4253                  clr.w    (a3)                               
  00b5e  4252                  clr.w    (a2)                               
  00b60  6006                  bra.s    L0b68                              
L0b62:
  00b62  4254                  clr.w    (a4)                               
  00b64  4253                  clr.w    (a3)                               
  00b66  4252                  clr.w    (a2)                               
L0b68:
  00b68  4cdf1cc0              movem.l  (a7)+,d6/d7/a2/a3/a4               
  00b6c  4e5e                  unlk     a6                                 
  00b6e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0b70   [jump table #12]
;----------------------------------------------------------------------
f2_0b70:
  00b70  4e56ffec              link     a6,#-20                            
  00b74  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  00b78  286e000a              movea.l  $a(a6),a4                          
  00b7c  3e2e0008              move.w   $8(a6),d7                          
  00b80  2c2e0016              move.l   $16(a6),d6                         
  00b84  2a2e001a              move.l   $1a(a6),d5                         
  00b88  266e000e              movea.l  $e(a6),a3                          
  00b8c  246e0012              movea.l  $12(a6),a2                         
  00b90  7800                  moveq    #0,d4                              
  00b92  4a2e0024              tst.b    $24(a6)                            
  00b96  664a                  bne.s    L0be2                              
  00b98  7601                  moveq    #1,d3                              
L0b9a:
  00b9a  4a7033b0ffff8ba6      tst.w    (-$745a,za0,d3.w*2)                
  00ba2  6630                  bne.s    L0bd4                              
  00ba4  31b3720033b0ffff8ba6  move.w   $0(a3,d7.w*2),(-$745a,za0,d3.w*2)  
  00bae  31ae002633b0ffff8b7c  move.w   $26(a6),(-$7484,za0,d3.w*2)        
  00bb8  31b9ffff836c33b0ffff  move.w   g_7c94,(-$72b6,za0,d3.w*2)         
  00bc4  31b9ffff836e33b0ffff  move.w   g_7c92,(-$728c,za0,d3.w*2)         
  00bd0  7801                  moveq    #1,d4                              
  00bd2  6002                  bra.s    L0bd6                              
L0bd4:
  00bd4  5243                  addq.w   #1,d3                              
L0bd6:
  00bd6  4a04                  tst.b    d4                                 
  00bd8  6608                  bne.s    L0be2                              
  00bda  b679ffff883e          cmp.w    g_77c2,d3                          
  00be0  6db8                  blt.s    L0b9a                              
L0be2:
  00be2  be54                  cmp.w    (a4),d7                            
  00be4  6c4e                  bge.s    L0c34                              
  00be6  3607                  move.w   d7,d3                              
  00be8  6046                  bra.s    L0c30                              
L0bea:
  00bea  37b332023200          move.w   $2(a3,d3.w*2),$0(a3,d3.w*2)        
  00bf0  200a                  move.l   a2,d0                              
  00bf2  6706                  beq.s    L0bfa                              
  00bf4  35b232023200          move.w   $2(a2,d3.w*2),$0(a2,d3.w*2)        
L0bfa:
  00bfa  4a86                  tst.l    d6                                 
  00bfc  670e                  beq.s    L0c0c                              
  00bfe  3043                  movea.w  d3,a0                              
  00c00  d1c8                  adda.l   a0,a0                              
  00c02  3243                  movea.w  d3,a1                              
  00c04  d3c9                  adda.l   a1,a1                              
  00c06  33b068026800          move.w   $2(a0,d6.l),$0(a1,d6.l)            
L0c0c:
  00c0c  4a85                  tst.l    d5                                 
  00c0e  670e                  beq.s    L0c1e                              
  00c10  3043                  movea.w  d3,a0                              
  00c12  d1c8                  adda.l   a0,a0                              
  00c14  3243                  movea.w  d3,a1                              
  00c16  d3c9                  adda.l   a1,a1                              
  00c18  33b058025800          move.w   $2(a0,d5.l),$0(a1,d5.l)            
L0c1e:
  00c1e  4aae001e              tst.l    $1e(a6)                            
  00c22  670a                  beq.s    L0c2e                              
  00c24  206e001e              movea.l  $1e(a6),a0                         
  00c28  21b034043400          move.l   $4(a0,d3.w*4),$0(a0,d3.w*4)        
L0c2e:
  00c2e  5243                  addq.w   #1,d3                              
L0c30:
  00c30  b654                  cmp.w    (a4),d3                            
  00c32  6db6                  blt.s    L0bea                              
L0c34:
  00c34  5354                  subq.w   #1,(a4)                            
  00c36  4a54                  tst.w    (a4)                               
  00c38  660c                  bne.s    L0c46                              
  00c3a  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  00c40  3f2e0022              move.w   $22(a6),-(a7)                      
  00c44  a93a                  _DisableItem                                ; $a93a
L0c46:
  00c46  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  00c4a  4e5e                  unlk     a6                                 
  00c4c  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0c4e
;----------------------------------------------------------------------
f2_0c4e:
  00c4e  4e56fff8              link     a6,#-8                             
  00c52  486efff8              pea      -$8(a6)                            
  00c56  2f3c003c0078          move.l   #$3c0078,-(a7)                     
  00c5c  2f3c007000b9          move.l   #$7000b9,-(a7)                     
  00c62  a8a7                  _SetRect                                    ; $a8a7
  00c64  486efff8              pea      -$8(a6)                            
  00c68  a8a3                  _EraseRect                                  ; $a8a3
  00c6a  4e5e                  unlk     a6                                 
  00c6c  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0c6e   [jump table #13]
;----------------------------------------------------------------------
f2_0c6e:
  00c6e  4e56fff4              link     a6,#-12                            
  00c72  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  00c76  3e2e0008              move.w   $8(a6),d7                          
  00c7a  3c2e000a              move.w   $a(a6),d6                          
  00c7e  486efff4              pea      -$c(a6)                            
  00c82  a874                  _GetPort                                    ; $a874
  00c84  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  00c8a  a873                  _SetPort                                    ; $a873
  00c8c  4a39ffff9853          tst.b    g_67ad                             
  00c92  6720                  beq.s    L0cb4                              
  00c94  3f3c0008              move.w   #8,-(a7)                           
  00c98  a89c                  _PenMode                                    ; $a89c
  00c9a  2079ffff8fb6          movea.l  g_704a,a0                          
  00ca0  48680010              pea      $10(a0)                            
  00ca4  2f3cffffac52          move.l   #$ffffac52,-(a7)                   
  00caa  a8a5                  _FillRect                                   ; $a8a5
  00cac  2f2efff4              move.l   -$c(a6),-(a7)                      
  00cb0  a873                  _SetPort                                    ; $a873
  00cb2  6052                  bra.s    L0d06                              
L0cb4:
  00cb4  3047                  movea.w  d7,a0                              
  00cb6  78ff                  moveq    #-1,d4                             
  00cb8  d888                  add.l    a0,d4                              
  00cba  89fc0015              divs.w   #$15,d4                            
  00cbe  3046                  movea.w  d6,a0                              
  00cc0  7af1                  moveq    #-15,d5                            
  00cc2  da88                  add.l    a0,d5                              
  00cc4  8bfc0015              divs.w   #$15,d5                            
  00cc8  7012                  moveq    #18,d0                             
  00cca  c1c4                  muls.w   d4,d0                              
  00ccc  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  00cd2  3045                  movea.w  d5,a0                              
  00cd4  d1c8                  adda.l   a0,a0                              
  00cd6  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  00cda  4eba6d50              jsr      f2_7a2c                            
  00cde  3a00                  move.w   d0,d5                              
  00ce0  486efff8              pea      -$8(a6)                            
  00ce4  3f07                  move.w   d7,-(a7)                           
  00ce6  70f2                  moveq    #-14,d0                            
  00ce8  d046                  add.w    d6,d0                              
  00cea  3f00                  move.w   d0,-(a7)                           
  00cec  7013                  moveq    #19,d0                             
  00cee  d047                  add.w    d7,d0                              
  00cf0  3f00                  move.w   d0,-(a7)                           
  00cf2  7004                  moveq    #4,d0                              
  00cf4  d046                  add.w    d6,d0                              
  00cf6  3f00                  move.w   d0,-(a7)                           
  00cf8  a8a7                  _SetRect                                    ; $a8a7
  00cfa  486efff8              pea      -$8(a6)                            
  00cfe  a8a3                  _EraseRect                                  ; $a8a3
  00d00  2f2efff4              move.l   -$c(a6),-(a7)                      
  00d04  a873                  _SetPort                                    ; $a873
L0d06:
  00d06  4cee00f0ffe4          movem.l  -$1c(a6),d4/d5/d6/d7               
  00d0c  4e5e                  unlk     a6                                 
  00d0e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0d10
;----------------------------------------------------------------------
f2_0d10:
  00d10  4e56fff4              link     a6,#-12                            
  00d14  486efff4              pea      -$c(a6)                            
  00d18  a874                  _GetPort                                    ; $a874
  00d1a  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  00d20  a873                  _SetPort                                    ; $a873
  00d22  4a39ffff9853          tst.b    g_67ad                             
  00d28  6720                  beq.s    L0d4a                              
  00d2a  3f3c0008              move.w   #8,-(a7)                           
  00d2e  a89c                  _PenMode                                    ; $a89c
  00d30  2079ffff8fb6          movea.l  g_704a,a0                          
  00d36  48680010              pea      $10(a0)                            
  00d3a  2f3cffffac52          move.l   #$ffffac52,-(a7)                   
  00d40  a8a5                  _FillRect                                   ; $a8a5
  00d42  2f2efff4              move.l   -$c(a6),-(a7)                      
  00d46  a873                  _SetPort                                    ; $a873
  00d48  602e                  bra.s    L0d78                              
L0d4a:
  00d4a  486efff8              pea      -$8(a6)                            
  00d4e  3f2e0008              move.w   $8(a6),-(a7)                       
  00d52  70f2                  moveq    #-14,d0                            
  00d54  d06e000a              add.w    $a(a6),d0                          
  00d58  3f00                  move.w   d0,-(a7)                           
  00d5a  7013                  moveq    #19,d0                             
  00d5c  d06e0008              add.w    $8(a6),d0                          
  00d60  3f00                  move.w   d0,-(a7)                           
  00d62  7004                  moveq    #4,d0                              
  00d64  d06e000a              add.w    $a(a6),d0                          
  00d68  3f00                  move.w   d0,-(a7)                           
  00d6a  a8a7                  _SetRect                                    ; $a8a7
  00d6c  486efff8              pea      -$8(a6)                            
  00d70  a8a3                  _EraseRect                                  ; $a8a3
  00d72  2f2efff4              move.l   -$c(a6),-(a7)                      
  00d76  a873                  _SetPort                                    ; $a873
L0d78:
  00d78  4e5e                  unlk     a6                                 
  00d7a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0d7c   [jump table #14]
;----------------------------------------------------------------------
f2_0d7c:
  00d7c  4e56fff6              link     a6,#-10                            
  00d80  48e70318              movem.l  d6/d7/a3/a4,-(a7)                  
  00d84  3e2e0008              move.w   $8(a6),d7                          
  00d88  286e000a              movea.l  $a(a6),a4                          
  00d8c  266e000e              movea.l  $e(a6),a3                          
  00d90  486efffc              pea      -$4(a6)                            
  00d94  a874                  _GetPort                                    ; $a874
  00d96  42a7                  clr.l    -(a7)                              
  00d98  2f0c                  move.l   a4,-(a7)                           
  00d9a  48780013              pea      ($13).w                            
  00d9e  4227                  clr.b    -(a7)                              
  00da0  3f39ffff8da2          move.w   g_725e,-(a7)                       
  00da6  2f3c0005003c          move.l   #$5003c,-(a7)                      
  00dac  3f07                  move.w   d7,-(a7)                           
  00dae  4eba0204              jsr      f2_0fb4                            
  00db2  4297                  clr.l    (a7)                               
  00db4  486c0002              pea      $2(a4)                             
  00db8  2f3c00130016          move.l   #$130016,-(a7)                     
  00dbe  4227                  clr.b    -(a7)                              
  00dc0  3f39ffff8da0          move.w   g_7260,-(a7)                       
  00dc6  2f3c00050032          move.l   #$50032,-(a7)                      
  00dcc  3f07                  move.w   d7,-(a7)                           
  00dce  4eba01e4              jsr      f2_0fb4                            
  00dd2  486b0004              pea      $4(a3)                             
  00dd6  486c0004              pea      $4(a4)                             
  00dda  2f3c0029000f          move.l   #$29000f,-(a7)                     
  00de0  1f3c0001              move.b   #1,-(a7)                           
  00de4  3f39ffff8da4          move.w   g_725c,-(a7)                       
  00dea  2f3c00050028          move.l   #$50028,-(a7)                      
  00df0  3f07                  move.w   d7,-(a7)                           
  00df2  4eba01c0              jsr      f2_0fb4                            
  00df6  4a6c0004              tst.w    $4(a4)                             
  00dfa  4fef003e              lea      $3e(a7),a7                         
  00dfe  670a                  beq.s    L0e0a                              
  00e00  486b0004              pea      $4(a3)                             
  00e04  4ead0492              jsr      f4_6804                            
  00e08  588f                  addq.l   #4,a7                              
L0e0a:
  00e0a  486b0006              pea      $6(a3)                             
  00e0e  486c0006              pea      $6(a4)                             
  00e12  48780005              pea      ($5).w                             
  00e16  1f3c0001              move.b   #1,-(a7)                           
  00e1a  3f39ffff8dac          move.w   g_7254,-(a7)                       
  00e20  2f3c0001001e          move.l   #$1001e,-(a7)                      
  00e26  3f07                  move.w   d7,-(a7)                           
  00e28  4eba018a              jsr      f2_0fb4                            
  00e2c  4a6c0006              tst.w    $6(a4)                             
  00e30  4fef0016              lea      $16(a7),a7                         
  00e34  670a                  beq.s    L0e40                              
  00e36  486b0006              pea      $6(a3)                             
  00e3a  4ead046a              jsr      f4_67b4                            
  00e3e  588f                  addq.l   #4,a7                              
L0e40:
  00e40  486b0008              pea      $8(a3)                             
  00e44  486c0008              pea      $8(a4)                             
  00e48  48780005              pea      ($5).w                             
  00e4c  1f3c0001              move.b   #1,-(a7)                           
  00e50  3f39ffff8db2          move.w   g_724e,-(a7)                       
  00e56  2f3c0001001e          move.l   #$1001e,-(a7)                      
  00e5c  3f07                  move.w   d7,-(a7)                           
  00e5e  4eba0154              jsr      f2_0fb4                            
  00e62  4a6c0008              tst.w    $8(a4)                             
  00e66  4fef0016              lea      $16(a7),a7                         
  00e6a  670a                  beq.s    L0e76                              
  00e6c  486b0008              pea      $8(a3)                             
  00e70  4ead046a              jsr      f4_67b4                            
  00e74  588f                  addq.l   #4,a7                              
L0e76:
  00e76  0c790006ffff8894      cmpi.w   #6,g_776c                          
  00e7e  6f24                  ble.s    L0ea4                              
  00e80  42a7                  clr.l    -(a7)                              
  00e82  486c000a              pea      $a(a4)                             
  00e86  2f3c00380005          move.l   #$380005,-(a7)                     
  00e8c  4227                  clr.b    -(a7)                              
  00e8e  3f39ffff8db8          move.w   g_7248,-(a7)                       
  00e94  2f3c0005000f          move.l   #$5000f,-(a7)                      
  00e9a  3f07                  move.w   d7,-(a7)                           
  00e9c  4eba0116              jsr      f2_0fb4                            
  00ea0  4fef0016              lea      $16(a7),a7                         
L0ea4:
  00ea4  0c790008ffff8894      cmpi.w   #8,g_776c                          
  00eac  6f26                  ble.s    L0ed4                              
  00eae  42a7                  clr.l    -(a7)                              
  00eb0  486c000c              pea      $c(a4)                             
  00eb4  2f3c003d0004          move.l   #$3d0004,-(a7)                     
  00eba  1f3c0001              move.b   #1,-(a7)                           
  00ebe  3f39ffff8dba          move.w   g_7246,-(a7)                       
  00ec4  2f3c0005000f          move.l   #$5000f,-(a7)                      
  00eca  3f07                  move.w   d7,-(a7)                           
  00ecc  4eba00e6              jsr      f2_0fb4                            
  00ed0  4fef0016              lea      $16(a7),a7                         
L0ed4:
  00ed4  0c79000affff8894      cmpi.w   #$a,g_776c                         
  00edc  6f24                  ble.s    L0f02                              
  00ede  42a7                  clr.l    -(a7)                              
  00ee0  486c000e              pea      $e(a4)                             
  00ee4  2f3c00410006          move.l   #$410006,-(a7)                     
  00eea  4227                  clr.b    -(a7)                              
  00eec  3f39ffff8dbc          move.w   g_7244,-(a7)                       
  00ef2  2f3c0005000f          move.l   #$5000f,-(a7)                      
  00ef8  3f07                  move.w   d7,-(a7)                           
  00efa  4eba00b8              jsr      f2_0fb4                            
  00efe  4fef0016              lea      $16(a7),a7                         
L0f02:
  00f02  4a6c000e              tst.w    $e(a4)                             
  00f06  670a                  beq.s    L0f12                              
  00f08  486b000e              pea      $e(a3)                             
  00f0c  4ead048a              jsr      f4_681a                            
  00f10  588f                  addq.l   #4,a7                              
L0f12:
  00f12  42a7                  clr.l    -(a7)                              
  00f14  486c0010              pea      $10(a4)                            
  00f18  48780001              pea      ($1).w                             
  00f1c  4227                  clr.b    -(a7)                              
  00f1e  3f39ffff8da6          move.w   g_725a,-(a7)                       
  00f24  2f3c0005001e          move.l   #$5001e,-(a7)                      
  00f2a  3f07                  move.w   d7,-(a7)                           
  00f2c  4eba0086              jsr      f2_0fb4                            
  00f30  3ebc0064              move.w   #$64,(a7)                          
  00f34  4eba6a72              jsr      f2_79a8                            
  00f38  0c40003c              cmpi.w   #$3c,d0                            
  00f3c  4fef0016              lea      $16(a7),a7                         
  00f40  6f6a                  ble.s    L0fac                              
  00f42  3f3c0064              move.w   #$64,-(a7)                         
  00f46  4eba6a60              jsr      f2_79a8                            
  00f4a  3d40fff6              move.w   d0,-$a(a6)                         
  00f4e  3ebc0064              move.w   #$64,(a7)                          
  00f52  4eba6a54              jsr      f2_79a8                            
  00f56  720a                  moveq    #10,d1                             
  00f58  c3eefff6              muls.w   -$a(a6),d1                         
  00f5c  7c64                  moveq    #100,d6                            
  00f5e  cdf9ffff8894          muls.w   g_776c,d6                          
  00f64  dc41                  add.w    d1,d6                              
  00f66  dc40                  add.w    d0,d6                              
  00f68  3ebc0064              move.w   #$64,(a7)                          
  00f6c  4eba6a3a              jsr      f2_79a8                            
  00f70  0c40004b              cmpi.w   #$4b,d0                            
  00f74  548f                  addq.l   #2,a7                              
  00f76  6f10                  ble.s    L0f88                              
  00f78  3f3c0005              move.w   #5,-(a7)                           
  00f7c  4eba6a2a              jsr      f2_79a8                            
  00f80  c1fc00fa              muls.w   #$fa,d0                            
  00f84  dc40                  add.w    d0,d6                              
  00f86  548f                  addq.l   #2,a7                              
L0f88:
  00f88  3f3c0064              move.w   #$64,-(a7)                         
  00f8c  4eba6a1a              jsr      f2_79a8                            
  00f90  0c40005a              cmpi.w   #$5a,d0                            
  00f94  548f                  addq.l   #2,a7                              
  00f96  6f10                  ble.s    L0fa8                              
  00f98  3f3c0003              move.w   #3,-(a7)                           
  00f9c  4eba6a0a              jsr      f2_79a8                            
  00fa0  c1fc01f4              muls.w   #$1f4,d0                           
  00fa4  dc40                  add.w    d0,d6                              
  00fa6  548f                  addq.l   #2,a7                              
L0fa8:
  00fa8  39460012              move.w   d6,$12(a4)                         
L0fac:
  00fac  4cdf18c0              movem.l  (a7)+,d6/d7/a3/a4                  
  00fb0  4e5e                  unlk     a6                                 
  00fb2  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_0fb4
;----------------------------------------------------------------------
f2_0fb4:
  00fb4  4e56fff4              link     a6,#-12                            
  00fb8  2f07                  move.l   d7,-(a7)                           
  00fba  1e39ffff981f          move.b   g_67e1,d7                          
  00fc0  486efff8              pea      -$8(a6)                            
  00fc4  a874                  _GetPort                                    ; $a874
  00fc6  13fc0001ffff981f      move.b   #1,g_67e1                          
  00fce  302e000e              move.w   $e(a6),d0                          
  00fd2  b06e000a              cmp.w    $a(a6),d0                          
  00fd6  6c2c                  bge.s    L1004                              
  00fd8  3f3c0064              move.w   #$64,-(a7)                         
  00fdc  4eba69ca              jsr      f2_79a8                            
  00fe0  b06e000c              cmp.w    $c(a6),d0                          
  00fe4  548f                  addq.l   #2,a7                              
  00fe6  6c16                  bge.s    L0ffe                              
  00fe8  3f2e0014              move.w   $14(a6),-(a7)                      
  00fec  4eba69ba              jsr      f2_79a8                            
  00ff0  d06e0012              add.w    $12(a6),d0                         
  00ff4  206e0016              movea.l  $16(a6),a0                         
  00ff8  3080                  move.w   d0,(a0)                            
  00ffa  548f                  addq.l   #2,a7                              
  00ffc  6006                  bra.s    L1004                              
L0ffe:
  00ffe  206e0016              movea.l  $16(a6),a0                         
  01002  4250                  clr.w    (a0)                               
L1004:
  01004  13c7ffff981f          move.b   d7,g_67e1                          
  0100a  2e1f                  move.l   (a7)+,d7                           
  0100c  4e5e                  unlk     a6                                 
  0100e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1010   [jump table #15]
;----------------------------------------------------------------------
f2_1010:
  01010  4e56fe4c              link     a6,#-436                           
  01014  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  01018  7a00                  moveq    #0,d5                              
  0101a  2f2e0010              move.l   $10(a6),-(a7)                      
  0101e  4ead05fa              jsr      f6_0130                            
  01022  1a00                  move.b   d0,d5                              
  01024  4a05                  tst.b    d5                                 
  01026  588f                  addq.l   #4,a7                              
  01028  6710                  beq.s    L103a                              
  0102a  486efe4c              pea      -$1b4(a6)                          
  0102e  2f3c000202bb          move.l   #$202bb,-(a7)                      
  01034  4ead0522              jsr      f4_153c                            
  01038  600e                  bra.s    L1048                              
L103a:
  0103a  486efe4c              pea      -$1b4(a6)                          
  0103e  2f3c000102bb          move.l   #$102bb,-(a7)                      
  01044  4ead0522              jsr      f4_153c                            
L1048:
  01048  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  0104e  a851                  _SetCursor                                  ; $a851
  01050  206e000c              movea.l  $c(a6),a0                          
  01054  3f10                  move.w   (a0),-(a7)                         
  01056  4eba69d4              jsr      f2_7a2c                            
  0105a  5d40                  subq.w   #6,d0                              
  0105c  548f                  addq.l   #2,a7                              
  0105e  6c3a                  bge.s    L109a                              
  01060  206e000c              movea.l  $c(a6),a0                          
  01064  3f10                  move.w   (a0),-(a7)                         
  01066  4eba69c4              jsr      f2_7a2c                            
  0106a  4a40                  tst.w    d0                                 
  0106c  548f                  addq.l   #2,a7                              
  0106e  6f2a                  ble.s    L109a                              
  01070  2f2e0014              move.l   $14(a6),-(a7)                      
  01074  2f3c00000000          move.l   STR_0000,-(a7)                     ; "?"
  0107a  2f3c00000002          move.l   STR_0002,-(a7)                     ; "?"
  01080  2f3c00000004          move.l   STR_0004,-(a7)                     ; "?"
  01086  a98b                  _ParamText                                  ; $a98b
  01088  4267                  clr.w    -(a7)                              
  0108a  3f3c04e0              move.w   #$4e0,-(a7)                        
  0108e  42a7                  clr.l    -(a7)                              
  01090  a986                  _StopAlert                                  ; $a986
  01092  3e1f                  move.w   (a7)+,d7                           
  01094  7000                  moveq    #0,d0                              
  01096  600000a4              bra.w    L113c                              
L109a:
  0109a  486efe4c              pea      -$1b4(a6)                          
  0109e  2f2e0010              move.l   $10(a6),-(a7)                      
  010a2  2f3c00000006          move.l   STR_0006,-(a7)                     ; "?"
  010a8  2f3c00000008          move.l   STR_0008,-(a7)                     ; "?"
  010ae  a98b                  _ParamText                                  ; $a98b
  010b0  4a39ffff981f          tst.b    g_67e1                             
  010b6  6734                  beq.s    L10ec                              
  010b8  42a7                  clr.l    -(a7)                              
  010ba  3f3c00fd              move.w   #$fd,-(a7)                         
  010be  486eff54              pea      -$ac(a6)                           
  010c2  4878ffff              pea      ($ffff).w                          
  010c6  a97c                  _GetNewDialog                               ; $a97c
  010c8  285f                  movea.l  (a7)+,a4                           
  010ca  2f0c                  move.l   a4,-(a7)                           
  010cc  4ead06ba              jsr      f7_161c                            
  010d0  2e8c                  move.l   a4,(a7)                            
  010d2  a915                  _ShowWindow                                 ; $a915
  010d4  2f0c                  move.l   a4,-(a7)                           
  010d6  a981                  _DrawDialog                                 ; $a981
  010d8  43eeff4c              lea      -$b4(a6),a1                        
  010dc  307c0078              movea.w  #$78,a0                            
  010e0  a03b                  _Delay                                      ; $a03b
  010e2  2280                  move.l   d0,(a1)                            
  010e4  2f0c                  move.l   a4,-(a7)                           
  010e6  a983                  _DisposeDialog                              ; $a983
  010e8  7001                  moveq    #1,d0                              
  010ea  6050                  bra.s    L113c                              
L10ec:
  010ec  42a7                  clr.l    -(a7)                              
  010ee  3f3c00f8              move.w   #$f8,-(a7)                         
  010f2  486eff54              pea      -$ac(a6)                           
  010f6  4878ffff              pea      ($ffff).w                          
  010fa  a97c                  _GetNewDialog                               ; $a97c
  010fc  285f                  movea.l  (a7)+,a4                           
  010fe  2f0c                  move.l   a4,-(a7)                           
  01100  4ead06ba              jsr      f7_161c                            
  01104  2e8c                  move.l   a4,(a7)                            
  01106  a915                  _ShowWindow                                 ; $a915
L1108:
  01108  42a7                  clr.l    -(a7)                              
  0110a  486efffe              pea      -$2(a6)                            
  0110e  a991                  _ModalDialog                                ; $a991
  01110  302efffe              move.w   -$2(a6),d0                         
  01114  6b10                  bmi.s    L1126                              
  01116  5740                  subq.w   #3,d0                              
  01118  670a                  beq.s    L1124                              
  0111a  6a0a                  bpl.s    L1126                              
  0111c  5240                  addq.w   #1,d0                              
  0111e  6b06                  bmi.s    L1126                              
  01120  7c01                  moveq    #1,d6                              
  01122  6002                  bra.s    L1126                              
L1124:
  01124  7c00                  moveq    #0,d6                              
L1126:
  01126  0c6e0002fffe          cmpi.w   #2,-$2(a6)                         
  0112c  6708                  beq.s    L1136                              
  0112e  0c6e0003fffe          cmpi.w   #3,-$2(a6)                         
  01134  66d2                  bne.s    L1108                              
L1136:
  01136  2f0c                  move.l   a4,-(a7)                           
  01138  a983                  _DisposeDialog                              ; $a983
  0113a  1006                  move.b   d6,d0                              
L113c:
  0113c  4cdf10e0              movem.l  (a7)+,d5/d6/d7/a4                  
  01140  4e5e                  unlk     a6                                 
  01142  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1144   [jump table #16]
;----------------------------------------------------------------------
f2_1144:
  01144  4e56fd0a              link     a6,#-758                           
  01148  48e70f08              movem.l  d4/d5/d6/d7/a4,-(a7)               
  0114c  3e2e000a              move.w   $a(a6),d7                          
  01150  7800                  moveq    #0,d4                              
  01152  3f3c02bc              move.w   #$2bc,-(a7)                        
  01156  486efec0              pea      -$140(a6)                          
  0115a  486efebe              pea      -$142(a6)                          
  0115e  4eba07ee              jsr      f2_194e                            
  01162  2ebcffffabfe          move.l   #$ffffabfe,(a7)                    
  01168  a851                  _SetCursor                                  ; $a851
  0116a  4a39ffff985b          tst.b    g_67a5                             
  01170  5c8f                  addq.l   #6,a7                              
  01172  6716                  beq.s    L118a                              
  01174  21b075b0ffff735a75b0  move.l   (-$8ca6,za0,d7.w*4),(-$8a36,za0,d7.w*4)
  01182  318773b0ffff83be      move.w   d7,(-$7c42,za0,d7.w*2)             
L118a:
  0118a  206e000c              movea.l  $c(a6),a0                          
  0118e  70ff                  moveq    #-1,d0                             
  01190  d06e001c              add.w    $1c(a6),d0                         
  01194  b050                  cmp.w    (a0),d0                            
  01196  6c44                  bge.s    L11dc                              
  01198  302e0010              move.w   $10(a6),d0                         
  0119c  2f360520fef0          move.l   (-$110,a6,d0.w*4),-(a7)            
  011a2  2f3c0000000a          move.l   STR_000a,-(a7)                     ; "?"
  011a8  2f3c0000000c          move.l   STR_000c,-(a7)                     ; "?"
  011ae  2f3c0000000e          move.l   STR_000e,-(a7)                     ; "?"
  011b4  a98b                  _ParamText                                  ; $a98b
  011b6  4267                  clr.w    -(a7)                              
  011b8  3f3c04e0              move.w   #$4e0,-(a7)                        
  011bc  42a7                  clr.l    -(a7)                              
  011be  a986                  _StopAlert                                  ; $a986
  011c0  3c1f                  move.w   (a7)+,d6                           
  011c2  7c01                  moveq    #1,d6                              
  011c4  600a                  bra.s    L11d0                              
L11c6:
  011c6  20766520fec0          movea.l  (-$140,a6,d6.w*4),a0               
  011cc  a01f                  _DisposePtr                                 ; $a01f
  011ce  5246                  addq.w   #1,d6                              
L11d0:
  011d0  bc6efebe              cmp.w    -$142(a6),d6                       
  011d4  6ff0                  ble.s    L11c6                              
  011d6  7000                  moveq    #0,d0                              
  011d8  60000106              bra.w    L12e0                              
L11dc:
  011dc  2f3075b0ffff75ca      move.l   (-$8a36,za0,d7.w*4),-(a7)          
  011e4  4ead05fa              jsr      f6_0130                            
  011e8  1800                  move.b   d0,d4                              
  011ea  4a04                  tst.b    d4                                 
  011ec  588f                  addq.l   #4,a7                              
  011ee  6710                  beq.s    L1200                              
  011f0  486efd0a              pea      -$2f6(a6)                          
  011f4  2f3c000202bb          move.l   #$202bb,-(a7)                      
  011fa  4ead0522              jsr      f4_153c                            
  011fe  600e                  bra.s    L120e                              
L1200:
  01200  486efd0a              pea      -$2f6(a6)                          
  01204  2f3c000102bb          move.l   #$102bb,-(a7)                      
  0120a  4ead0522              jsr      f4_153c                            
L120e:
  0120e  486efd0a              pea      -$2f6(a6)                          
  01212  2f3075b0ffff75ca      move.l   (-$8a36,za0,d7.w*4),-(a7)          
  0121a  302e0010              move.w   $10(a6),d0                         
  0121e  2f360520fec0          move.l   (-$140,a6,d0.w*4),-(a7)            
  01224  2f3c00000010          move.l   STR_0010,-(a7)                     ; "?"
  0122a  a98b                  _ParamText                                  ; $a98b
  0122c  4a39ffff981f          tst.b    g_67e1                             
  01232  6748                  beq.s    L127c                              
  01234  42a7                  clr.l    -(a7)                              
  01236  3f3c00fd              move.w   #$fd,-(a7)                         
  0123a  486efe12              pea      -$1ee(a6)                          
  0123e  4878ffff              pea      ($ffff).w                          
  01242  a97c                  _GetNewDialog                               ; $a97c
  01244  285f                  movea.l  (a7)+,a4                           
  01246  2f0c                  move.l   a4,-(a7)                           
  01248  4ead06ba              jsr      f7_161c                            
  0124c  2e8c                  move.l   a4,(a7)                            
  0124e  a915                  _ShowWindow                                 ; $a915
  01250  2f0c                  move.l   a4,-(a7)                           
  01252  a981                  _DrawDialog                                 ; $a981
  01254  43eefe0a              lea      -$1f6(a6),a1                       
  01258  307c0078              movea.w  #$78,a0                            
  0125c  a03b                  _Delay                                      ; $a03b
  0125e  2280                  move.l   d0,(a1)                            
  01260  2f0c                  move.l   a4,-(a7)                           
  01262  a983                  _DisposeDialog                              ; $a983
  01264  7c01                  moveq    #1,d6                              
  01266  600a                  bra.s    L1272                              
L1268:
  01268  20766520fec0          movea.l  (-$140,a6,d6.w*4),a0               
  0126e  a01f                  _DisposePtr                                 ; $a01f
  01270  5246                  addq.w   #1,d6                              
L1272:
  01272  bc6efebe              cmp.w    -$142(a6),d6                       
  01276  6ff0                  ble.s    L1268                              
  01278  7001                  moveq    #1,d0                              
  0127a  6064                  bra.s    L12e0                              
L127c:
  0127c  42a7                  clr.l    -(a7)                              
  0127e  3f3c00f8              move.w   #$f8,-(a7)                         
  01282  486efe12              pea      -$1ee(a6)                          
  01286  4878ffff              pea      ($ffff).w                          
  0128a  a97c                  _GetNewDialog                               ; $a97c
  0128c  285f                  movea.l  (a7)+,a4                           
  0128e  2f0c                  move.l   a4,-(a7)                           
  01290  4ead06ba              jsr      f7_161c                            
  01294  2e8c                  move.l   a4,(a7)                            
  01296  a915                  _ShowWindow                                 ; $a915
L1298:
  01298  42a7                  clr.l    -(a7)                              
  0129a  486efebc              pea      -$144(a6)                          
  0129e  a991                  _ModalDialog                                ; $a991
  012a0  302efebc              move.w   -$144(a6),d0                       
  012a4  6b10                  bmi.s    L12b6                              
  012a6  5740                  subq.w   #3,d0                              
  012a8  670a                  beq.s    L12b4                              
  012aa  6a0a                  bpl.s    L12b6                              
  012ac  5240                  addq.w   #1,d0                              
  012ae  6b06                  bmi.s    L12b6                              
  012b0  7a01                  moveq    #1,d5                              
  012b2  6002                  bra.s    L12b6                              
L12b4:
  012b4  7a00                  moveq    #0,d5                              
L12b6:
  012b6  0c6e0002febc          cmpi.w   #2,-$144(a6)                       
  012bc  6708                  beq.s    L12c6                              
  012be  0c6e0003febc          cmpi.w   #3,-$144(a6)                       
  012c4  66d2                  bne.s    L1298                              
L12c6:
  012c6  2f0c                  move.l   a4,-(a7)                           
  012c8  a983                  _DisposeDialog                              ; $a983
  012ca  7c01                  moveq    #1,d6                              
  012cc  600a                  bra.s    L12d8                              
L12ce:
  012ce  20766520fec0          movea.l  (-$140,a6,d6.w*4),a0               
  012d4  a01f                  _DisposePtr                                 ; $a01f
  012d6  5246                  addq.w   #1,d6                              
L12d8:
  012d8  bc6efebe              cmp.w    -$142(a6),d6                       
  012dc  6ff0                  ble.s    L12ce                              
  012de  1005                  move.b   d5,d0                              
L12e0:
  012e0  4cdf10f0              movem.l  (a7)+,d4/d5/d6/d7/a4               
  012e4  4e5e                  unlk     a6                                 
  012e6  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_12e8
;----------------------------------------------------------------------
f2_12e8:
  012e8  4e56fee6              link     a6,#-282                           
  012ec  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  012f0  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  012f6  a873                  _SetPort                                    ; $a873
  012f8  2079ffff8fb6          movea.l  g_704a,a0                          
  012fe  48680010              pea      $10(a0)                            
  01302  a8a3                  _EraseRect                                  ; $a8a3
  01304  2f3c0019000a          move.l   #$19000a,-(a7)                     
  0130a  a893                  _MoveTo                                     ; $a893
  0130c  7e01                  moveq    #1,d7                              
  0130e  600001b4              bra.w    L14c4                              
L1312:
  01312  42a7                  clr.l    -(a7)                              
  01314  2f3c53545223          move.l   #$53545223,-(a7)                   
  0131a  7001                  moveq    #1,d0                              
  0131c  d047                  add.w    d7,d0                              
  0131e  3f00                  move.w   d0,-(a7)                           
  01320  a9a0                  _GetResource                                ; $a9a0
  01322  285f                  movea.l  (a7)+,a4                           
  01324  204c                  movea.l  a4,a0                              
  01326  a029                  _HLock                                      ; $a029
  01328  486efee6              pea      -$11a(a6)                          
  0132c  7001                  moveq    #1,d0                              
  0132e  d047                  add.w    d7,d0                              
  01330  3f00                  move.w   d0,-(a7)                           
  01332  3f3c0001              move.w   #1,-(a7)                           
  01336  4ead0522              jsr      f4_153c                            
  0133a  486efee6              pea      -$11a(a6)                          
  0133e  4eba66a0              jsr      f2_79e0                            
  01342  5240                  addq.w   #1,d0                              
  01344  3c00                  move.w   d0,d6                              
  01346  3ebc0020              move.w   #$20,(a7)                          
  0134a  a883                  _DrawChar                                   ; $a883
  0134c  3046                  movea.w  d6,a0                              
  0134e  2008                  move.l   a0,d0                              
  01350  a11e                  _NewPtr                                     ; $a11e
  01352  218875b0ffff6a48      move.l   a0,(-$95b8,za0,d7.w*4)             
  0135a  4ab075b0ffff6a48      tst.l    (-$95b8,za0,d7.w*4)                
  01362  548f                  addq.l   #2,a7                              
  01364  661a                  bne.s    L1380                              
  01366  4267                  clr.w    -(a7)                              
  01368  3eb80220              move.w   ($220).w,(a7)                      
  0136c  3a1f                  move.w   (a7)+,d5                           
  0136e  4a45                  tst.w    d5                                 
  01370  670e                  beq.s    L1380                              
  01372  2f3c00000012          move.l   STR_0012,-(a7)                     ; "adding new pointer in getmonsters. Save your game and restar"
  01378  3f05                  move.w   d5,-(a7)                           
  0137a  4ead06ca              jsr      f7_18ec                            
  0137e  5c8f                  addq.l   #6,a7                              
L1380:
  01380  41eefee6              lea      -$11a(a6),a0                       
  01384  3246                  movea.w  d6,a1                              
  01386  2009                  move.l   a1,d0                              
  01388  227075b0ffff6a48      movea.l  (-$95b8,za0,d7.w*4),a1             
  01390  a02e                  _BlockMove                                  ; $a02e
  01392  486efee6              pea      -$11a(a6)                          
  01396  7001                  moveq    #1,d0                              
  01398  d047                  add.w    d7,d0                              
  0139a  3f00                  move.w   d0,-(a7)                           
  0139c  3f3c0002              move.w   #2,-(a7)                           
  013a0  4ead0522              jsr      f4_153c                            
  013a4  486efee6              pea      -$11a(a6)                          
  013a8  486effee              pea      -$12(a6)                           
  013ac  4ead050a              jsr      f4_14fa                            
  013b0  31aefff073b0ffff6e50  move.w   -$10(a6),(-$91b0,za0,d7.w*2)       
  013ba  486efee6              pea      -$11a(a6)                          
  013be  7001                  moveq    #1,d0                              
  013c0  d047                  add.w    d7,d0                              
  013c2  3f00                  move.w   d0,-(a7)                           
  013c4  3f3c0003              move.w   #3,-(a7)                           
  013c8  4ead0522              jsr      f4_153c                            
  013cc  486efee6              pea      -$11a(a6)                          
  013d0  486effee              pea      -$12(a6)                           
  013d4  4ead050a              jsr      f4_14fa                            
  013d8  31aefff073b0ffff6f52  move.w   -$10(a6),(-$90ae,za0,d7.w*2)       
  013e2  486efee6              pea      -$11a(a6)                          
  013e6  7001                  moveq    #1,d0                              
  013e8  d047                  add.w    d7,d0                              
  013ea  3f00                  move.w   d0,-(a7)                           
  013ec  3f3c0004              move.w   #4,-(a7)                           
  013f0  4ead0522              jsr      f4_153c                            
  013f4  486efee6              pea      -$11a(a6)                          
  013f8  486effee              pea      -$12(a6)                           
  013fc  4ead050a              jsr      f4_14fa                            
  01400  31aefff073b0ffff7054  move.w   -$10(a6),(-$8fac,za0,d7.w*2)       
  0140a  486efee6              pea      -$11a(a6)                          
  0140e  7001                  moveq    #1,d0                              
  01410  d047                  add.w    d7,d0                              
  01412  3f00                  move.w   d0,-(a7)                           
  01414  3f3c0005              move.w   #5,-(a7)                           
  01418  4ead0522              jsr      f4_153c                            
  0141c  486efee6              pea      -$11a(a6)                          
  01420  486effee              pea      -$12(a6)                           
  01424  4ead050a              jsr      f4_14fa                            
  01428  31aefff073b0ffff7258  move.w   -$10(a6),(-$8da8,za0,d7.w*2)       
  01432  486efee6              pea      -$11a(a6)                          
  01436  7001                  moveq    #1,d0                              
  01438  d047                  add.w    d7,d0                              
  0143a  3f00                  move.w   d0,-(a7)                           
  0143c  3f3c0006              move.w   #6,-(a7)                           
  01440  4ead0522              jsr      f4_153c                            
  01444  486efee6              pea      -$11a(a6)                          
  01448  486effee              pea      -$12(a6)                           
  0144c  4ead050a              jsr      f4_14fa                            
  01450  31aefff073b0ffff7156  move.w   -$10(a6),(-$8eaa,za0,d7.w*2)       
  0145a  486efee6              pea      -$11a(a6)                          
  0145e  7001                  moveq    #1,d0                              
  01460  d047                  add.w    d7,d0                              
  01462  3f00                  move.w   d0,-(a7)                           
  01464  3f3c0007              move.w   #7,-(a7)                           
  01468  4ead0522              jsr      f4_153c                            
  0146c  486efee6              pea      -$11a(a6)                          
  01470  4eba656e              jsr      f2_79e0                            
  01474  5240                  addq.w   #1,d0                              
  01476  3c00                  move.w   d0,d6                              
  01478  3046                  movea.w  d6,a0                              
  0147a  2008                  move.l   a0,d0                              
  0147c  a11e                  _NewPtr                                     ; $a11e
  0147e  218875b0ffff6c4c      move.l   a0,(-$93b4,za0,d7.w*4)             
  01486  4ab075b0ffff6c4c      tst.l    (-$93b4,za0,d7.w*4)                
  0148e  588f                  addq.l   #4,a7                              
  01490  661a                  bne.s    L14ac                              
  01492  4267                  clr.w    -(a7)                              
  01494  3eb80220              move.w   ($220).w,(a7)                      
  01498  3a1f                  move.w   (a7)+,d5                           
  0149a  4a45                  tst.w    d5                                 
  0149c  670e                  beq.s    L14ac                              
  0149e  2f3c0000005e          move.l   STR_005e,-(a7)                     ; "adding new pointer (mword) in getmonsters. Save your game an"
  014a4  3f05                  move.w   d5,-(a7)                           
  014a6  4ead06ca              jsr      f7_18ec                            
  014aa  5c8f                  addq.l   #6,a7                              
L14ac:
  014ac  41eefee6              lea      -$11a(a6),a0                       
  014b0  3246                  movea.w  d6,a1                              
  014b2  2009                  move.l   a1,d0                              
  014b4  227075b0ffff6c4c      movea.l  (-$93b4,za0,d7.w*4),a1             
  014bc  a02e                  _BlockMove                                  ; $a02e
  014be  204c                  movea.l  a4,a0                              
  014c0  a02a                  _HUnlock                                    ; $a02a
  014c2  5247                  addq.w   #1,d7                              
L14c4:
  014c4  0c470064              cmpi.w   #$64,d7                            
  014c8  6f00fe48              ble.w    L1312                              
  014cc  4cdf10e0              movem.l  (a7)+,d5/d6/d7/a4                  
  014d0  4e5e                  unlk     a6                                 
  014d2  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_14d4   [jump table #17]
;----------------------------------------------------------------------
f2_14d4:
  014d4  4e56fffe              link     a6,#-2                             
  014d8  3f3c00c9              move.w   #$c9,-(a7)                         
  014dc  2f3cffff6868          move.l   #$ffff6868,-(a7)                   
  014e2  2f3cffff835a          move.l   #$ffff835a,-(a7)                   
  014e8  4eba0464              jsr      f2_194e                            
  014ec  3ebc012d              move.w   #$12d,(a7)                         
  014f0  2f3cffff68e0          move.l   #$ffff68e0,-(a7)                   
  014f6  2f3cffff835c          move.l   #$ffff835c,-(a7)                   
  014fc  4eba0450              jsr      f2_194e                            
  01500  3ebc0191              move.w   #$191,(a7)                         
  01504  2f3cffff6958          move.l   #$ffff6958,-(a7)                   
  0150a  2f3cffff8362          move.l   #$ffff8362,-(a7)                   
  01510  4eba043c              jsr      f2_194e                            
  01514  3ebc0321              move.w   #$321,(a7)                         
  01518  2f3cffff826a          move.l   #$ffff826a,-(a7)                   
  0151e  2f3cffff8364          move.l   #$ffff8364,-(a7)                   
  01524  4eba0428              jsr      f2_194e                            
  01528  3ebc02bd              move.w   #$2bd,(a7)                         
  0152c  2f3cffff735a          move.l   #$ffff735a,-(a7)                   
  01532  2f3cffff8368          move.l   #$ffff8368,-(a7)                   
  01538  4eba0414              jsr      f2_194e                            
  0153c  3ebc02bd              move.w   #$2bd,(a7)                         
  01540  2f3cffff75ca          move.l   #$ffff75ca,-(a7)                   
  01546  486efffe              pea      -$2(a6)                            
  0154a  4eba0402              jsr      f2_194e                            
  0154e  3d7c0001fffe          move.w   #1,-$2(a6)                         
  01554  4fef0032              lea      $32(a7),a7                         
  01558  6012                  bra.s    L156c                              
L155a:
  0155a  302efffe              move.w   -$2(a6),d0                         
  0155e  207005b0ffff75ca      movea.l  (-$8a36,za0,d0.w*4),a0             
  01566  a01f                  _DisposePtr                                 ; $a01f
  01568  526efffe              addq.w   #1,-$2(a6)                         
L156c:
  0156c  0c6e004dfffe          cmpi.w   #$4d,-$2(a6)                       
  01572  6de6                  blt.s    L155a                              
  01574  3f3c01f5              move.w   #$1f5,-(a7)                        
  01578  2f3cffff69a8          move.l   #$ffff69a8,-(a7)                   
  0157e  2f3cffff8360          move.l   #$ffff8360,-(a7)                   
  01584  4eba03c8              jsr      f2_194e                            
  01588  3ebc0259              move.w   #$259,(a7)                         
  0158c  2f3cffff69f8          move.l   #$ffff69f8,-(a7)                   
  01592  2f3cffff835e          move.l   #$ffff835e,-(a7)                   
  01598  4eba03b4              jsr      f2_194e                            
  0159c  3ebc00dc              move.w   #$dc,(a7)                          
  015a0  2f3cffff75b2          move.l   #$ffff75b2,-(a7)                   
  015a6  486efffe              pea      -$2(a6)                            
  015aa  4eba03a2              jsr      f2_194e                            
  015ae  3ebc0385              move.w   #$385,(a7)                         
  015b2  2f3cffff830a          move.l   #$ffff830a,-(a7)                   
  015b8  486efffe              pea      -$2(a6)                            
  015bc  4eba0390              jsr      f2_194e                            
  015c0  3ebc0226              move.w   #$226,(a7)                         
  015c4  2f3cffff7822          move.l   #$ffff7822,-(a7)                   
  015ca  486efffe              pea      -$2(a6)                            
  015ce  4eba037e              jsr      f2_194e                            
  015d2  4ebafd14              jsr      f2_12e8                            
  015d6  4e5e                  unlk     a6                                 
  015d8  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_15da   [jump table #18]
;----------------------------------------------------------------------
f2_15da:
  015da  4e56fe42              link     a6,#-446                           
  015de  2f0c                  move.l   a4,-(a7)                           
  015e0  426efe42              clr.w    -$1be(a6)                          
  015e4  42a7                  clr.l    -(a7)                              
  015e6  3f3c00ca              move.w   #$ca,-(a7)                         
  015ea  486eff56              pea      -$aa(a6)                           
  015ee  4878ffff              pea      ($ffff).w                          
  015f2  a97c                  _GetNewDialog                               ; $a97c
  015f4  285f                  movea.l  (a7)+,a4                           
  015f6  2f0c                  move.l   a4,-(a7)                           
  015f8  4ead06ba              jsr      f7_161c                            
  015fc  2e8c                  move.l   a4,(a7)                            
  015fe  a915                  _ShowWindow                                 ; $a915
L1600:
  01600  42a7                  clr.l    -(a7)                              
  01602  486eff52              pea      -$ae(a6)                           
  01606  a991                  _ModalDialog                                ; $a991
  01608  2f0c                  move.l   a4,-(a7)                           
  0160a  3f3c0003              move.w   #3,-(a7)                           
  0160e  486eff50              pea      -$b0(a6)                           
  01612  486eff44              pea      -$bc(a6)                           
  01616  486eff48              pea      -$b8(a6)                           
  0161a  a98d                  _GetDialogItem                              ; $a98d
  0161c  2f2eff44              move.l   -$bc(a6),-(a7)                     
  01620  486efe44              pea      -$1bc(a6)                          
  01624  a990                  _GetDialogItemText                          ; $a990
  01626  0c6e0001ff52          cmpi.w   #1,-$ae(a6)                        
  0162c  66d2                  bne.s    L1600                              
  0162e  486efe44              pea      -$1bc(a6)                          
  01632  4eba63ac              jsr      f2_79e0                            
  01636  4a40                  tst.w    d0                                 
  01638  588f                  addq.l   #4,a7                              
  0163a  67c4                  beq.s    L1600                              
  0163c  2f0c                  move.l   a4,-(a7)                           
  0163e  a983                  _DisposeDialog                              ; $a983
  01640  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  01646  486efe44              pea      -$1bc(a6)                          
  0164a  a91a                  _SetWTitle                                  ; $a91a
  0164c  285f                  movea.l  (a7)+,a4                           
  0164e  4e5e                  unlk     a6                                 
  01650  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1652   [jump table #19]
;----------------------------------------------------------------------
f2_1652:
  01652  4e560000              link     a6,#0                              
  01656  48e70700              movem.l  d5/d6/d7,-(a7)                     
  0165a  3e2e0008              move.w   $8(a6),d7                          
  0165e  3c2e000a              move.w   $a(a6),d6                          
  01662  206e000c              movea.l  $c(a6),a0                          
  01666  3a3062fa              move.w   -$6(a0,d6.w*2),d5                  
  0166a  226e0010              movea.l  $10(a6),a1                         
  0166e  31b162fa73b0ffff973a  move.w   -$6(a1,d6.w*2),(-$68c6,za0,d7.w*2) 
  01678  427073b0ffff9764      clr.w    (-$689c,za0,d7.w*2)                
  01680  3006                  move.w   d6,d0                              
  01682  5740                  subq.w   #3,d0                              
  01684  0c400008              cmpi.w   #8,d0                              
  01688  6200015c              bhi.w    L17e6                              
  0168c  43fa0160              lea      L17ee(pc),a1                       
  01690  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  01694  4ed1                  jmp      (a1)                               
  01696  3f3c0001              move.w   #1,-(a7)                           
  0169a  3f06                  move.w   d6,-(a7)                           
  0169c  4267                  clr.w    -(a7)                              
  0169e  42a7                  clr.l    -(a7)                              
  016a0  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  016a6  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  016ac  3f05                  move.w   d5,-(a7)                           
  016ae  3f07                  move.w   d7,-(a7)                           
  016b0  4eba6424              jsr      f2_7ad6                            
  016b4  4fef0016              lea      $16(a7),a7                         
  016b8  6000012c              bra.w    L17e6                              
  016bc  3f3c0002              move.w   #2,-(a7)                           
  016c0  3f06                  move.w   d6,-(a7)                           
  016c2  4267                  clr.w    -(a7)                              
  016c4  42a7                  clr.l    -(a7)                              
  016c6  2f3cffff8864          move.l   #$ffff8864,-(a7)                   
  016cc  2f3cffff8da0          move.l   #$ffff8da0,-(a7)                   
  016d2  3f05                  move.w   d5,-(a7)                           
  016d4  3f07                  move.w   d7,-(a7)                           
  016d6  4eba63fe              jsr      f2_7ad6                            
  016da  4fef0016              lea      $16(a7),a7                         
  016de  60000106              bra.w    L17e6                              
  016e2  3f3c0003              move.w   #3,-(a7)                           
  016e6  3f06                  move.w   d6,-(a7)                           
  016e8  4267                  clr.w    -(a7)                              
  016ea  2f3cffff8870          move.l   #$ffff8870,-(a7)                   
  016f0  2f3cffff887c          move.l   #$ffff887c,-(a7)                   
  016f6  2f3cffff8da4          move.l   #$ffff8da4,-(a7)                   
  016fc  3f05                  move.w   d5,-(a7)                           
  016fe  3f07                  move.w   d7,-(a7)                           
  01700  4eba63d4              jsr      f2_7ad6                            
  01704  4fef0016              lea      $16(a7),a7                         
  01708  600000dc              bra.w    L17e6                              
  0170c  2f3cffff8db0          move.l   #$ffff8db0,-(a7)                   
  01712  2f3cffff8dae          move.l   #$ffff8dae,-(a7)                   
  01718  2f3cffff8dac          move.l   #$ffff8dac,-(a7)                   
  0171e  3f05                  move.w   d5,-(a7)                           
  01720  3f07                  move.w   d7,-(a7)                           
  01722  4eba0560              jsr      f2_1c84                            
  01726  4fef0010              lea      $10(a7),a7                         
  0172a  600000ba              bra.w    L17e6                              
  0172e  2f3cffff8db6          move.l   #$ffff8db6,-(a7)                   
  01734  2f3cffff8db4          move.l   #$ffff8db4,-(a7)                   
  0173a  2f3cffff8db2          move.l   #$ffff8db2,-(a7)                   
  01740  3f05                  move.w   d5,-(a7)                           
  01742  3f07                  move.w   d7,-(a7)                           
  01744  4eba053e              jsr      f2_1c84                            
  01748  4fef0010              lea      $10(a7),a7                         
  0174c  60000098              bra.w    L17e6                              
  01750  3f3c0007              move.w   #7,-(a7)                           
  01754  7002                  moveq    #2,d0                              
  01756  d046                  add.w    d6,d0                              
  01758  3f00                  move.w   d0,-(a7)                           
  0175a  4267                  clr.w    -(a7)                              
  0175c  42a7                  clr.l    -(a7)                              
  0175e  2f3cffff8e4a          move.l   #$ffff8e4a,-(a7)                   
  01764  2f3cffff8db8          move.l   #$ffff8db8,-(a7)                   
  0176a  3f05                  move.w   d5,-(a7)                           
  0176c  3f07                  move.w   d7,-(a7)                           
  0176e  4eba6366              jsr      f2_7ad6                            
  01772  4fef0016              lea      $16(a7),a7                         
  01776  606e                  bra.s    L17e6                              
  01778  3f3c0008              move.w   #8,-(a7)                           
  0177c  7002                  moveq    #2,d0                              
  0177e  d046                  add.w    d6,d0                              
  01780  3f00                  move.w   d0,-(a7)                           
  01782  4267                  clr.w    -(a7)                              
  01784  42a7                  clr.l    -(a7)                              
  01786  2f3cffff8e56          move.l   #$ffff8e56,-(a7)                   
  0178c  2f3cffff8dba          move.l   #$ffff8dba,-(a7)                   
  01792  3f05                  move.w   d5,-(a7)                           
  01794  3f07                  move.w   d7,-(a7)                           
  01796  4eba633e              jsr      f2_7ad6                            
  0179a  4fef0016              lea      $16(a7),a7                         
  0179e  6046                  bra.s    L17e6                              
  017a0  3f3c0009              move.w   #9,-(a7)                           
  017a4  7002                  moveq    #2,d0                              
  017a6  d046                  add.w    d6,d0                              
  017a8  3f00                  move.w   d0,-(a7)                           
  017aa  4267                  clr.w    -(a7)                              
  017ac  42a7                  clr.l    -(a7)                              
  017ae  2f3cffff97d2          move.l   #$ffff97d2,-(a7)                   
  017b4  2f3cffff8dbc          move.l   #$ffff8dbc,-(a7)                   
  017ba  3f05                  move.w   d5,-(a7)                           
  017bc  3f07                  move.w   d7,-(a7)                           
  017be  4eba6316              jsr      f2_7ad6                            
  017c2  4fef0016              lea      $16(a7),a7                         
  017c6  601e                  bra.s    L17e6                              
  017c8  5279ffff8da6          addq.w   #1,g_725a                          
  017ce  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  017d4  4267                  clr.w    -(a7)                              
  017d6  a939                  _EnableItem                                 ; $a939
  017d8  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  017de  3f39ffff8da6          move.w   g_725a,-(a7)                       
  017e4  a939                  _EnableItem                                 ; $a939
L17e6:
  017e6  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  017ea  4e5e                  unlk     a6                                 
  017ec  4e75                  rts                                         
  017ee  fea8                  dc.w     $fea8                              
  017f0  fece                  dc.w     $fece                              
  017f2  fef4                  dc.w     $fef4                              
  017f4  ff1e                  dc.w     $ff1e                              
  017f6  ff40                  dc.w     $ff40                              
  017f8  ff62                  dc.w     $ff62                              
  017fa  ff8a                  dc.w     $ff8a                              
  017fc  ffb2                  dc.w     $ffb2                              
  017fe  ffda                  dc.w     $ffda                              

;----------------------------------------------------------------------
; f2_1800   [jump table #20]
;----------------------------------------------------------------------
f2_1800:
  01800  4e56fe3e              link     a6,#-450                           
  01804  2f0c                  move.l   a4,-(a7)                           
  01806  486efe3e              pea      -$1c2(a6)                          
  0180a  a874                  _GetPort                                    ; $a874
  0180c  42a7                  clr.l    -(a7)                              
  0180e  3f3c00d3              move.w   #$d3,-(a7)                         
  01812  486eff56              pea      -$aa(a6)                           
  01816  4878ffff              pea      ($ffff).w                          
  0181a  a97c                  _GetNewDialog                               ; $a97c
  0181c  285f                  movea.l  (a7)+,a4                           
  0181e  2f0c                  move.l   a4,-(a7)                           
  01820  4ead06ba              jsr      f7_161c                            
  01824  2e8c                  move.l   a4,(a7)                            
  01826  a915                  _ShowWindow                                 ; $a915
  01828  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  0182e  a851                  _SetCursor                                  ; $a851
  01830  2f0c                  move.l   a4,-(a7)                           
  01832  a873                  _SetPort                                    ; $a873
L1834:
  01834  42a7                  clr.l    -(a7)                              
  01836  486eff54              pea      -$ac(a6)                           
  0183a  a991                  _ModalDialog                                ; $a991
  0183c  4a6eff54              tst.w    -$ac(a6)                           
  01840  67f2                  beq.s    L1834                              
  01842  2f0c                  move.l   a4,-(a7)                           
  01844  3f2eff54              move.w   -$ac(a6),-(a7)                     
  01848  486eff52              pea      -$ae(a6)                           
  0184c  486eff4e              pea      -$b2(a6)                           
  01850  486eff46              pea      -$ba(a6)                           
  01854  a98d                  _GetDialogItem                              ; $a98d
  01856  486eff46              pea      -$ba(a6)                           
  0185a  2f3c00060006          move.l   #$60006,-(a7)                      
  01860  a8b3                  _InvertRoundRect                            ; $a8b3
  01862  43eefe42              lea      -$1be(a6),a1                       
  01866  307c0096              movea.w  #$96,a0                            
  0186a  a03b                  _Delay                                      ; $a03b
  0186c  2280                  move.l   d0,(a1)                            
  0186e  2f2efe3e              move.l   -$1c2(a6),-(a7)                    
  01872  a873                  _SetPort                                    ; $a873
  01874  2f0c                  move.l   a4,-(a7)                           
  01876  a983                  _DisposeDialog                              ; $a983
  01878  70ff                  moveq    #-1,d0                             
  0187a  d06eff54              add.w    -$ac(a6),d0                        
  0187e  285f                  movea.l  (a7)+,a4                           
  01880  4e5e                  unlk     a6                                 
  01882  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1884
;----------------------------------------------------------------------
f2_1884:
  01884  4e56fe42              link     a6,#-446                           
  01888  2f0c                  move.l   a4,-(a7)                           
  0188a  3079ffff837e          movea.w  g_7c82,a0                          
  01890  2d48fe42              move.l   a0,-$1be(a6)                       
  01894  42a7                  clr.l    -(a7)                              
  01896  3f3c00d3              move.w   #$d3,-(a7)                         
  0189a  486eff56              pea      -$aa(a6)                           
  0189e  4878ffff              pea      ($ffff).w                          
  018a2  a97c                  _GetNewDialog                               ; $a97c
  018a4  285f                  movea.l  (a7)+,a4                           
  018a6  2f0c                  move.l   a4,-(a7)                           
  018a8  4ead06ba              jsr      f7_161c                            
  018ac  2e8c                  move.l   a4,(a7)                            
  018ae  3f3c0003              move.w   #3,-(a7)                           
  018b2  486eff52              pea      -$ae(a6)                           
  018b6  486eff4e              pea      -$b2(a6)                           
  018ba  486eff46              pea      -$ba(a6)                           
  018be  a98d                  _GetDialogItem                              ; $a98d
  018c0  2f2efe42              move.l   -$1be(a6),-(a7)                    
  018c4  486efe46              pea      -$1ba(a6)                          
  018c8  4ead0512              jsr      f4_150e                            
  018cc  2f2eff4e              move.l   -$b2(a6),-(a7)                     
  018d0  486efe46              pea      -$1ba(a6)                          
  018d4  a98f                  _SetDialogItemText                          ; $a98f
  018d6  2f0c                  move.l   a4,-(a7)                           
  018d8  48780003              pea      ($3).w                             
  018dc  486efe46              pea      -$1ba(a6)                          
  018e0  4eba60fe              jsr      f2_79e0                            
  018e4  548f                  addq.l   #2,a7                              
  018e6  3e80                  move.w   d0,(a7)                            
  018e8  a97e                  _SelectDialogItemText                       ; $a97e
  018ea  2f0c                  move.l   a4,-(a7)                           
  018ec  a915                  _ShowWindow                                 ; $a915
L18ee:
  018ee  42a7                  clr.l    -(a7)                              
  018f0  486eff54              pea      -$ac(a6)                           
  018f4  a991                  _ModalDialog                                ; $a991
  018f6  4a6eff54              tst.w    -$ac(a6)                           
  018fa  67f2                  beq.s    L18ee                              
  018fc  0c6e0002ff54          cmpi.w   #2,-$ac(a6)                        
  01902  6eea                  bgt.s    L18ee                              
  01904  302eff54              move.w   -$ac(a6),d0                        
  01908  673a                  beq.s    L1944                              
  0190a  6b38                  bmi.s    L1944                              
  0190c  5540                  subq.w   #2,d0                              
  0190e  6734                  beq.s    L1944                              
  01910  6a32                  bpl.s    L1944                              
  01912  2f0c                  move.l   a4,-(a7)                           
  01914  3f3c0003              move.w   #3,-(a7)                           
  01918  486eff52              pea      -$ae(a6)                           
  0191c  486eff4e              pea      -$b2(a6)                           
  01920  486eff46              pea      -$ba(a6)                           
  01924  a98d                  _GetDialogItem                              ; $a98d
  01926  2f2eff4e              move.l   -$b2(a6),-(a7)                     
  0192a  486efe46              pea      -$1ba(a6)                          
  0192e  a990                  _GetDialogItemText                          ; $a990
  01930  486efe46              pea      -$1ba(a6)                          
  01934  486efe42              pea      -$1be(a6)                          
  01938  4ead050a              jsr      f4_14fa                            
  0193c  33eefe44ffff837e      move.w   -$1bc(a6),g_7c82                   
L1944:
  01944  2f0c                  move.l   a4,-(a7)                           
  01946  a983                  _DisposeDialog                              ; $a983
  01948  285f                  movea.l  (a7)+,a4                           
  0194a  4e5e                  unlk     a6                                 
  0194c  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_194e   [jump table #71]
;----------------------------------------------------------------------
f2_194e:
  0194e  4e56fee6              link     a6,#-282                           
  01952  48e70f18              movem.l  d4/d5/d6/d7/a3/a4,-(a7)            
  01956  3e2e0010              move.w   $10(a6),d7                         
  0195a  286e000c              movea.l  $c(a6),a4                          
  0195e  486efee6              pea      -$11a(a6)                          
  01962  3f07                  move.w   d7,-(a7)                           
  01964  3f3c0001              move.w   #1,-(a7)                           
  01968  4ead0522              jsr      f4_153c                            
  0196c  97cb                  suba.l   a3,a3                              
  0196e  42a7                  clr.l    -(a7)                              
  01970  2f3c53545223          move.l   #$53545223,-(a7)                   
  01976  3f07                  move.w   d7,-(a7)                           
  01978  a9a0                  _GetResource                                ; $a9a0
  0197a  265f                  movea.l  (a7)+,a3                           
  0197c  200b                  move.l   a3,d0                              
  0197e  6618                  bne.s    L1998                              
  01980  4267                  clr.w    -(a7)                              
  01982  a9af                  _ResError                                   ; $a9af
  01984  381f                  move.w   (a7)+,d4                           
  01986  4a44                  tst.w    d4                                 
  01988  670e                  beq.s    L1998                              
  0198a  2f3c000000b2          move.l   STR_00b2,-(a7)                     ; "opening resource in getwords. Save your game and restart the"
  01990  3f04                  move.w   d4,-(a7)                           
  01992  4ead06ca              jsr      f7_18ec                            
  01996  5c8f                  addq.l   #6,a7                              
L1998:
  01998  204b                  movea.l  a3,a0                              
  0199a  a029                  _HLock                                      ; $a029
  0199c  2053                  movea.l  (a3),a0                            
  0199e  10280001              move.b   $1(a0),d0                          
  019a2  49c0                  extb.l   d0                                 
  019a4  226e0008              movea.l  $8(a6),a1                          
  019a8  3280                  move.w   d0,(a1)                            
  019aa  7c01                  moveq    #1,d6                              
  019ac  6054                  bra.s    L1a02                              
L19ae:
  019ae  486efee6              pea      -$11a(a6)                          
  019b2  3f07                  move.w   d7,-(a7)                           
  019b4  3f06                  move.w   d6,-(a7)                           
  019b6  4ead0522              jsr      f4_153c                            
  019ba  486efee6              pea      -$11a(a6)                          
  019be  4eba6020              jsr      f2_79e0                            
  019c2  5240                  addq.w   #1,d0                              
  019c4  3a00                  move.w   d0,d5                              
  019c6  3045                  movea.w  d5,a0                              
  019c8  2008                  move.l   a0,d0                              
  019ca  a11e                  _NewPtr                                     ; $a11e
  019cc  29886400              move.l   a0,$0(a4,d6.w*4)                   
  019d0  4ab46400              tst.l    $0(a4,d6.w*4)                      
  019d4  588f                  addq.l   #4,a7                              
  019d6  661a                  bne.s    L19f2                              
  019d8  4267                  clr.w    -(a7)                              
  019da  3eb80220              move.w   ($220).w,(a7)                      
  019de  381f                  move.w   (a7)+,d4                           
  019e0  4a44                  tst.w    d4                                 
  019e2  670e                  beq.s    L19f2                              
  019e4  2f3c000000fa          move.l   STR_00fa,-(a7)                     ; "adding new pointer in getwords. Save your game and restart t"
  019ea  3f04                  move.w   d4,-(a7)                           
  019ec  4ead06ca              jsr      f7_18ec                            
  019f0  5c8f                  addq.l   #6,a7                              
L19f2:
  019f2  41eefee6              lea      -$11a(a6),a0                       
  019f6  3245                  movea.w  d5,a1                              
  019f8  2009                  move.l   a1,d0                              
  019fa  22746400              movea.l  $0(a4,d6.w*4),a1                   
  019fe  a02e                  _BlockMove                                  ; $a02e
  01a00  5246                  addq.w   #1,d6                              
L1a02:
  01a02  206e0008              movea.l  $8(a6),a0                          
  01a06  bc50                  cmp.w    (a0),d6                            
  01a08  6fa4                  ble.s    L19ae                              
  01a0a  204b                  movea.l  a3,a0                              
  01a0c  a02a                  _HUnlock                                    ; $a02a
  01a0e  4cdf18f0              movem.l  (a7)+,d4/d5/d6/d7/a3/a4            
  01a12  4e5e                  unlk     a6                                 
  01a14  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1a16
;----------------------------------------------------------------------
f2_1a16:
  01a16  4e560000              link     a6,#0                              
  01a1a  48e70300              movem.l  d6/d7,-(a7)                        
  01a1e  3e2e0008              move.w   $8(a6),d7                          
  01a22  3c3073b0ffff8ba6      move.w   (-$745a,za0,d7.w*2),d6             
  01a2a  3f3c0004              move.w   #4,-(a7)                           
  01a2e  2f3c00000144          move.l   STR_0144,-(a7)                     ; "?"
  01a34  2f3c00000146          move.l   STR_0146,-(a7)                     ; "?"
  01a3a  2f3c00090000          move.l   #$90000,-(a7)                      
  01a40  2f3cffff8dbc          move.l   #$ffff8dbc,-(a7)                   
  01a46  3f06                  move.w   d6,-(a7)                           
  01a48  3f07                  move.w   d7,-(a7)                           
  01a4a  4ebaf6f8              jsr      f2_1144                            
  01a4e  4a00                  tst.b    d0                                 
  01a50  4fef0016              lea      $16(a7),a7                         
  01a54  6742                  beq.s    L1a98                              
  01a56  2f3c000b0009          move.l   #$b0009,-(a7)                      
  01a5c  4267                  clr.w    -(a7)                              
  01a5e  42a7                  clr.l    -(a7)                              
  01a60  2f3cffff97d2          move.l   #$ffff97d2,-(a7)                   
  01a66  2f3cffff8dbc          move.l   #$ffff8dbc,-(a7)                   
  01a6c  3f06                  move.w   d6,-(a7)                           
  01a6e  3f07                  move.w   d7,-(a7)                           
  01a70  4eba6064              jsr      f2_7ad6                            
  01a74  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  01a7c  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  01a84  3eb073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),(a7)           
  01a8c  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  01a94  4ebaf1d8              jsr      f2_0c6e                            
L1a98:
  01a98  4cee00c0fff8          movem.l  -$8(a6),d6/d7                      
  01a9e  4e5e                  unlk     a6                                 
  01aa0  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1aa2
;----------------------------------------------------------------------
f2_1aa2:
  01aa2  4e560000              link     a6,#0                              
  01aa6  48e70300              movem.l  d6/d7,-(a7)                        
  01aaa  7e00                  moveq    #0,d7                              
  01aac  7c00                  moveq    #0,d6                              
  01aae  302e0008              move.w   $8(a6),d0                          
  01ab2  0c70000103b0ffff8ba6  cmpi.w   #1,(-$745a,za0,d0.w*2)             
  01abc  6f02                  ble.s    L1ac0                              
  01abe  7c01                  moveq    #1,d6                              
L1ac0:
  01ac0  3f3c0001              move.w   #1,-(a7)                           
  01ac4  4eba5ee2              jsr      f2_79a8                            
  01ac8  5240                  addq.w   #1,d0                              
  01aca  548f                  addq.l   #2,a7                              
  01acc  6b22                  bmi.s    L1af0                              
  01ace  5740                  subq.w   #3,d0                              
  01ad0  671c                  beq.s    L1aee                              
  01ad2  6a1c                  bpl.s    L1af0                              
  01ad4  5240                  addq.w   #1,d0                              
  01ad6  6b18                  bmi.s    L1af0                              
  01ad8  2f3cffff0000          move.l   #$ffff0000,-(a7)                   
  01ade  42a7                  clr.l    -(a7)                              
  01ae0  1f06                  move.b   d6,-(a7)                           
  01ae2  4ead066a              jsr      f6_23e0                            
  01ae6  1e00                  move.b   d0,d7                              
  01ae8  4fef000a              lea      $a(a7),a7                          
  01aec  6002                  bra.s    L1af0                              
L1aee:
  01aee  7e01                  moveq    #1,d7                              
L1af0:
  01af0  3f2e0008              move.w   $8(a6),-(a7)                       
  01af4  1f06                  move.b   d6,-(a7)                           
  01af6  1f07                  move.b   d7,-(a7)                           
  01af8  4ead0302              jsr      f3_3bc2                            
  01afc  4cee00c0fff8          movem.l  -$8(a6),d6/d7                      
  01b02  4e5e                  unlk     a6                                 
  01b04  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1b06
;----------------------------------------------------------------------
f2_1b06:
  01b06  4e56ff3e              link     a6,#-194                           
  01b0a  48e70300              movem.l  d6/d7,-(a7)                        
  01b0e  3e2e0008              move.w   $8(a6),d7                          
  01b12  7cc8                  moveq    #-56,d6                            
  01b14  dc7073b0ffff8ba6      add.w    (-$745a,za0,d7.w*2),d6             
  01b1c  3f3c01f6              move.w   #$1f6,-(a7)                        
  01b20  486eff82              pea      -$7e(a6)                           
  01b24  486efffa              pea      -$6(a6)                            
  01b28  4ebafe24              jsr      f2_194e                            
  01b2c  3ebc01f7              move.w   #$1f7,(a7)                         
  01b30  486eff3e              pea      -$c2(a6)                           
  01b34  486efffc              pea      -$4(a6)                            
  01b38  4ebafe14              jsr      f2_194e                            
  01b3c  0c460005              cmpi.w   #5,d6                              
  01b40  4fef0012              lea      $12(a7),a7                         
  01b44  6e5a                  bgt.s    L1ba0                              
  01b46  2f366520ff3e          move.l   (-$c2,a6,d6.w*4),-(a7)             
  01b4c  2f366482              move.l   -$7e(a6,d6.w*4),-(a7)              
  01b50  2f3cffff8dac          move.l   #$ffff8dac,-(a7)                   
  01b56  3f06                  move.w   d6,-(a7)                           
  01b58  3f07                  move.w   d7,-(a7)                           
  01b5a  4ebaf4b4              jsr      f2_1010                            
  01b5e  4a00                  tst.b    d0                                 
  01b60  4fef0010              lea      $10(a7),a7                         
  01b64  670000f0              beq.w    L1c56                              
  01b68  2f3cffff8db0          move.l   #$ffff8db0,-(a7)                   
  01b6e  2f3cffff8dae          move.l   #$ffff8dae,-(a7)                   
  01b74  2f3cffff8dac          move.l   #$ffff8dac,-(a7)                   
  01b7a  3f06                  move.w   d6,-(a7)                           
  01b7c  3f07                  move.w   d7,-(a7)                           
  01b7e  4eba0104              jsr      f2_1c84                            
  01b82  4a79ffff8dac          tst.w    g_7254                             
  01b88  4fef0010              lea      $10(a7),a7                         
  01b8c  6f0000c8              ble.w    L1c56                              
  01b90  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  01b96  3f3c0005              move.w   #5,-(a7)                           
  01b9a  a939                  _EnableItem                                 ; $a939
  01b9c  600000b8              bra.w    L1c56                              
L1ba0:
  01ba0  0c460005              cmpi.w   #5,d6                              
  01ba4  6f5e                  ble.s    L1c04                              
  01ba6  0c46000a              cmpi.w   #$a,d6                             
  01baa  6e58                  bgt.s    L1c04                              
  01bac  2f366520ff3e          move.l   (-$c2,a6,d6.w*4),-(a7)             
  01bb2  2f366482              move.l   -$7e(a6,d6.w*4),-(a7)              
  01bb6  2f3cffff8db2          move.l   #$ffff8db2,-(a7)                   
  01bbc  3f06                  move.w   d6,-(a7)                           
  01bbe  3f07                  move.w   d7,-(a7)                           
  01bc0  4ebaf44e              jsr      f2_1010                            
  01bc4  4a00                  tst.b    d0                                 
  01bc6  4fef0010              lea      $10(a7),a7                         
  01bca  6700008a              beq.w    L1c56                              
  01bce  5b46                  subq.w   #5,d6                              
  01bd0  2f3cffff8db6          move.l   #$ffff8db6,-(a7)                   
  01bd6  2f3cffff8db4          move.l   #$ffff8db4,-(a7)                   
  01bdc  2f3cffff8db2          move.l   #$ffff8db2,-(a7)                   
  01be2  3f06                  move.w   d6,-(a7)                           
  01be4  3f07                  move.w   d7,-(a7)                           
  01be6  4eba009c              jsr      f2_1c84                            
  01bea  4a79ffff8db2          tst.w    g_724e                             
  01bf0  4fef0010              lea      $10(a7),a7                         
  01bf4  6f60                  ble.s    L1c56                              
  01bf6  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  01bfc  3f3c0005              move.w   #5,-(a7)                           
  01c00  a939                  _EnableItem                                 ; $a939
  01c02  6052                  bra.s    L1c56                              
L1c04:
  01c04  2f366520ff3e          move.l   (-$c2,a6,d6.w*4),-(a7)             
  01c0a  2f366482              move.l   -$7e(a6,d6.w*4),-(a7)              
  01c0e  2f3cffff8da8          move.l   #$ffff8da8,-(a7)                   
  01c14  3f06                  move.w   d6,-(a7)                           
  01c16  3f07                  move.w   d7,-(a7)                           
  01c18  4ebaf3f6              jsr      f2_1010                            
  01c1c  4a00                  tst.b    d0                                 
  01c1e  4fef0010              lea      $10(a7),a7                         
  01c22  6732                  beq.s    L1c56                              
  01c24  0646fff6              addi.w   #$fff6,d6                          
  01c28  2f3cffff8daa          move.l   #$ffff8daa,-(a7)                   
  01c2e  42a7                  clr.l    -(a7)                              
  01c30  2f3cffff8da8          move.l   #$ffff8da8,-(a7)                   
  01c36  3f06                  move.w   d6,-(a7)                           
  01c38  3f07                  move.w   d7,-(a7)                           
  01c3a  4eba0048              jsr      f2_1c84                            
  01c3e  4a79ffff8da8          tst.w    g_7258                             
  01c44  4fef0010              lea      $10(a7),a7                         
  01c48  6f0c                  ble.s    L1c56                              
  01c4a  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  01c50  3f3c0006              move.w   #6,-(a7)                           
  01c54  a939                  _EnableItem                                 ; $a939
L1c56:
  01c56  7e01                  moveq    #1,d7                              
  01c58  6008                  bra.s    L1c62                              
L1c5a:
  01c5a  20767482              movea.l  -$7e(a6,d7.w*4),a0                 
  01c5e  a01f                  _DisposePtr                                 ; $a01f
  01c60  5247                  addq.w   #1,d7                              
L1c62:
  01c62  be6efffa              cmp.w    -$6(a6),d7                         
  01c66  6ff2                  ble.s    L1c5a                              
  01c68  7e01                  moveq    #1,d7                              
  01c6a  600a                  bra.s    L1c76                              
L1c6c:
  01c6c  20767520ff3e          movea.l  (-$c2,a6,d7.w*4),a0                
  01c72  a01f                  _DisposePtr                                 ; $a01f
  01c74  5247                  addq.w   #1,d7                              
L1c76:
  01c76  be6efffc              cmp.w    -$4(a6),d7                         
  01c7a  6ff0                  ble.s    L1c6c                              
  01c7c  4cdf00c0              movem.l  (a7)+,d6/d7                        
  01c80  4e5e                  unlk     a6                                 
  01c82  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1c84   [jump table #21]
;----------------------------------------------------------------------
f2_1c84:
  01c84  4e560000              link     a6,#0                              
  01c88  2f07                  move.l   d7,-(a7)                           
  01c8a  3e2e0008              move.w   $8(a6),d7                          
  01c8e  206e000c              movea.l  $c(a6),a0                          
  01c92  30ae000a              move.w   $a(a6),(a0)                        
  01c96  226e0010              movea.l  $10(a6),a1                         
  01c9a  32b073b0ffff9764      move.w   (-$689c,za0,d7.w*2),(a1)           
  01ca2  206e0014              movea.l  $14(a6),a0                         
  01ca6  30b073b0ffff973a      move.w   (-$68c6,za0,d7.w*2),(a0)           
  01cae  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  01cb6  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  01cbe  3f3073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),-(a7)          
  01cc6  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  01cce  4ebaef9e              jsr      f2_0c6e                            
  01cd2  427073b0ffff8d4a      clr.w    (-$72b6,za0,d7.w*2)                
  01cda  427073b0ffff8d74      clr.w    (-$728c,za0,d7.w*2)                
  01ce2  427073b0ffff973a      clr.w    (-$68c6,za0,d7.w*2)                
  01cea  427073b0ffff9764      clr.w    (-$689c,za0,d7.w*2)                
  01cf2  4ead05c2              jsr      f5_3984                            
  01cf6  2e2efffc              move.l   -$4(a6),d7                         
  01cfa  4e5e                  unlk     a6                                 
  01cfc  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1cfe
;----------------------------------------------------------------------
f2_1cfe:
  01cfe  4e560000              link     a6,#0                              
  01d02  48e70700              movem.l  d5/d6/d7,-(a7)                     
  01d06  3e2e0008              move.w   $8(a6),d7                          
  01d0a  7c4d                  moveq    #77,d6                             
  01d0c  1a39ffff981f          move.b   g_67e1,d5                          
  01d12  13fc0001ffff981f      move.b   #1,g_67e1                          
  01d1a  3f3c0005              move.w   #5,-(a7)                           
  01d1e  2f3c00000148          move.l   STR_0148,-(a7)                     ; "?"
  01d24  2f3c0000014a          move.l   STR_014a,-(a7)                     ; "?"
  01d2a  2f3c000a0000          move.l   #$a0000,-(a7)                      
  01d30  2f3cffff8da6          move.l   #$ffff8da6,-(a7)                   
  01d36  3f06                  move.w   d6,-(a7)                           
  01d38  3f07                  move.w   d7,-(a7)                           
  01d3a  4ebaf408              jsr      f2_1144                            
  01d3e  4a00                  tst.b    d0                                 
  01d40  4fef0016              lea      $16(a7),a7                         
  01d44  6608                  bne.s    L1d4e                              
  01d46  13c5ffff981f          move.b   d5,g_67e1                          
  01d4c  6048                  bra.s    L1d96                              
L1d4e:
  01d4e  5279ffff8da6          addq.w   #1,g_725a                          
  01d54  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  01d5a  4267                  clr.w    -(a7)                              
  01d5c  a939                  _EnableItem                                 ; $a939
  01d5e  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  01d64  3f39ffff8da6          move.w   g_725a,-(a7)                       
  01d6a  a939                  _EnableItem                                 ; $a939
  01d6c  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  01d74  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  01d7c  3f3073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),-(a7)          
  01d84  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  01d8c  4ebaeee0              jsr      f2_0c6e                            
  01d90  13c5ffff981f          move.b   d5,g_67e1                          
L1d96:
  01d96  4cee00e0fff4          movem.l  -$c(a6),d5/d6/d7                   
  01d9c  4e5e                  unlk     a6                                 
  01d9e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1da0
;----------------------------------------------------------------------
f2_1da0:
  01da0  4e560000              link     a6,#0                              
  01da4  48e70300              movem.l  d6/d7,-(a7)                        
  01da8  3e2e0008              move.w   $8(a6),d7                          
  01dac  3c3073b0ffff8ba6      move.w   (-$745a,za0,d7.w*2),d6             
  01db4  3f3c0002              move.w   #2,-(a7)                           
  01db8  2f3c0000014c          move.l   STR_014c,-(a7)                     ; "?"
  01dbe  2f3c0000014e          move.l   STR_014e,-(a7)                     ; "?"
  01dc4  2f3c00080000          move.l   #$80000,-(a7)                      
  01dca  2f3cffff8dba          move.l   #$ffff8dba,-(a7)                   
  01dd0  3f06                  move.w   d6,-(a7)                           
  01dd2  3f07                  move.w   d7,-(a7)                           
  01dd4  4ebaf36e              jsr      f2_1144                            
  01dd8  4a00                  tst.b    d0                                 
  01dda  4fef0016              lea      $16(a7),a7                         
  01dde  6742                  beq.s    L1e22                              
  01de0  2f3c000c0008          move.l   #$c0008,-(a7)                      
  01de6  4267                  clr.w    -(a7)                              
  01de8  42a7                  clr.l    -(a7)                              
  01dea  2f3cffff8e56          move.l   #$ffff8e56,-(a7)                   
  01df0  2f3cffff8dba          move.l   #$ffff8dba,-(a7)                   
  01df6  3f06                  move.w   d6,-(a7)                           
  01df8  3f07                  move.w   d7,-(a7)                           
  01dfa  4eba5cda              jsr      f2_7ad6                            
  01dfe  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  01e06  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  01e0e  3eb073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),(a7)           
  01e16  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  01e1e  4ebaee4e              jsr      f2_0c6e                            
L1e22:
  01e22  4cee00c0fff8          movem.l  -$8(a6),d6/d7                      
  01e28  4e5e                  unlk     a6                                 
  01e2a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_1e2c
;----------------------------------------------------------------------
f2_1e2c:
  01e2c  4e56ffee              link     a6,#-18                            
  01e30  486effee              pea      -$12(a6)                           
  01e34  a874                  _GetPort                                    ; $a874
  01e36  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  01e3c  a873                  _SetPort                                    ; $a873
  01e3e  2d79ffff8e2afffa      move.l   g_71d6,-$6(a6)                     
  01e46  486efffa              pea      -$6(a6)                            
  01e4a  a871                  _GlobalToLocal                              ; $a871
  01e4c  486efff2              pea      -$e(a6)                            
  01e50  2f3c00050005          move.l   #$50005,-(a7)                      
  01e56  2f3c00250025          move.l   #$250025,-(a7)                     
  01e5c  a8a7                  _SetRect                                    ; $a8a7
  01e5e  4227                  clr.b    -(a7)                              
  01e60  2f2efffa              move.l   -$6(a6),-(a7)                      
  01e64  486efff2              pea      -$e(a6)                            
  01e68  a8ad                  _PtInRect                                   ; $a8ad
  01e6a  4a1f                  tst.b    (a7)+                              
  01e6c  670c                  beq.s    L1e7a                              
  01e6e  4a79ffff8da2          tst.w    g_725e                             
  01e74  6f04                  ble.s    L1e7a                              
  01e76  4eba1e3e              jsr      f2_3cb6                            
L1e7a:
  01e7a  486efff2              pea      -$e(a6)                            
  01e7e  2f3c002d0005          move.l   #$2d0005,-(a7)                     
  01e84  2f3c004d0025          move.l   #$4d0025,-(a7)                     
  01e8a  a8a7                  _SetRect                                    ; $a8a7
  01e8c  4227                  clr.b    -(a7)                              
  01e8e  2f2efffa              move.l   -$6(a6),-(a7)                      
  01e92  486efff2              pea      -$e(a6)                            
  01e96  a8ad                  _PtInRect                                   ; $a8ad
  01e98  4a1f                  tst.b    (a7)+                              
  01e9a  670c                  beq.s    L1ea8                              
  01e9c  4a79ffff8da0          tst.w    g_7260                             
  01ea2  6f04                  ble.s    L1ea8                              
  01ea4  4eba1e30              jsr      f2_3cd6                            
L1ea8:
  01ea8  486efff2              pea      -$e(a6)                            
  01eac  2f3c00550005          move.l   #$550005,-(a7)                     
  01eb2  2f3c00750025          move.l   #$750025,-(a7)                     
  01eb8  a8a7                  _SetRect                                    ; $a8a7
  01eba  4227                  clr.b    -(a7)                              
  01ebc  2f2efffa              move.l   -$6(a6),-(a7)                      
  01ec0  486efff2              pea      -$e(a6)                            
  01ec4  a8ad                  _PtInRect                                   ; $a8ad
  01ec6  4a1f                  tst.b    (a7)+                              
  01ec8  670c                  beq.s    L1ed6                              
  01eca  4a79ffff8da4          tst.w    g_725c                             
  01ed0  6f04                  ble.s    L1ed6                              
  01ed2  4eba1e12              jsr      f2_3ce6                            
L1ed6:
  01ed6  486efff2              pea      -$e(a6)                            
  01eda  2f3c007d0005          move.l   #$7d0005,-(a7)                     
  01ee0  2f3c009d0025          move.l   #$9d0025,-(a7)                     
  01ee6  a8a7                  _SetRect                                    ; $a8a7
  01ee8  4227                  clr.b    -(a7)                              
  01eea  2f2efffa              move.l   -$6(a6),-(a7)                      
  01eee  486efff2              pea      -$e(a6)                            
  01ef2  a8ad                  _PtInRect                                   ; $a8ad
  01ef4  4a1f                  tst.b    (a7)+                              
  01ef6  6714                  beq.s    L1f0c                              
  01ef8  4a79ffff8dac          tst.w    g_7254                             
  01efe  6e08                  bgt.s    L1f08                              
  01f00  4a79ffff83a0          tst.w    g_7c60                             
  01f06  6704                  beq.s    L1f0c                              
L1f08:
  01f08  4eba1dec              jsr      f2_3cf6                            
L1f0c:
  01f0c  486efff2              pea      -$e(a6)                            
  01f10  2f3c0005002d          move.l   #$5002d,-(a7)                      
  01f16  2f3c0025004d          move.l   #$25004d,-(a7)                     
  01f1c  a8a7                  _SetRect                                    ; $a8a7
  01f1e  4227                  clr.b    -(a7)                              
  01f20  2f2efffa              move.l   -$6(a6),-(a7)                      
  01f24  486efff2              pea      -$e(a6)                            
  01f28  a8ad                  _PtInRect                                   ; $a8ad
  01f2a  4a1f                  tst.b    (a7)+                              
  01f2c  6714                  beq.s    L1f42                              
  01f2e  4a79ffff8db2          tst.w    g_724e                             
  01f34  6e08                  bgt.s    L1f3e                              
  01f36  4a79ffff83a2          tst.w    g_7c5e                             
  01f3c  6704                  beq.s    L1f42                              
L1f3e:
  01f3e  4eba1dc6              jsr      f2_3d06                            
L1f42:
  01f42  486efff2              pea      -$e(a6)                            
  01f46  2f3c002d002d          move.l   #$2d002d,-(a7)                     
  01f4c  2f3c004d004d          move.l   #$4d004d,-(a7)                     
  01f52  a8a7                  _SetRect                                    ; $a8a7
  01f54  4227                  clr.b    -(a7)                              
  01f56  2f2efffa              move.l   -$6(a6),-(a7)                      
  01f5a  486efff2              pea      -$e(a6)                            
  01f5e  a8ad                  _PtInRect                                   ; $a8ad
  01f60  4a1f                  tst.b    (a7)+                              
  01f62  6714                  beq.s    L1f78                              
  01f64  4a79ffff8da8          tst.w    g_7258                             
  01f6a  6e08                  bgt.s    L1f74                              
  01f6c  4a79ffff8392          tst.w    g_7c6e                             
  01f72  6f04                  ble.s    L1f78                              
L1f74:
  01f74  4eba1da0              jsr      f2_3d16                            
L1f78:
  01f78  486efff2              pea      -$e(a6)                            
  01f7c  2f3c0055002d          move.l   #$55002d,-(a7)                     
  01f82  2f3c0075004d          move.l   #$75004d,-(a7)                     
  01f88  a8a7                  _SetRect                                    ; $a8a7
  01f8a  4227                  clr.b    -(a7)                              
  01f8c  2f2efffa              move.l   -$6(a6),-(a7)                      
  01f90  486efff2              pea      -$e(a6)                            
  01f94  a8ad                  _PtInRect                                   ; $a8ad
  01f96  4a1f                  tst.b    (a7)+                              
  01f98  670c                  beq.s    L1fa6                              
  01f9a  4a79ffff8db8          tst.w    g_7248                             
  01fa0  6f04                  ble.s    L1fa6                              
  01fa2  4eba1d82              jsr      f2_3d26                            
L1fa6:
  01fa6  486efff2              pea      -$e(a6)                            
  01faa  2f3c007d002d          move.l   #$7d002d,-(a7)                     
  01fb0  2f3c009d004d          move.l   #$9d004d,-(a7)                     
  01fb6  a8a7                  _SetRect                                    ; $a8a7
  01fb8  4227                  clr.b    -(a7)                              
  01fba  2f2efffa              move.l   -$6(a6),-(a7)                      
  01fbe  486efff2              pea      -$e(a6)                            
  01fc2  a8ad                  _PtInRect                                   ; $a8ad
  01fc4  4a1f                  tst.b    (a7)+                              
  01fc6  670c                  beq.s    L1fd4                              
  01fc8  4a79ffff8dba          tst.w    g_7246                             
  01fce  6f04                  ble.s    L1fd4                              
  01fd0  4eba1d64              jsr      f2_3d36                            
L1fd4:
  01fd4  486efff2              pea      -$e(a6)                            
  01fd8  2f3c00050055          move.l   #$50055,-(a7)                      
  01fde  2f3c00250075          move.l   #$250075,-(a7)                     
  01fe4  a8a7                  _SetRect                                    ; $a8a7
  01fe6  4227                  clr.b    -(a7)                              
  01fe8  2f2efffa              move.l   -$6(a6),-(a7)                      
  01fec  486efff2              pea      -$e(a6)                            
  01ff0  a8ad                  _PtInRect                                   ; $a8ad
  01ff2  4a1f                  tst.b    (a7)+                              
  01ff4  670c                  beq.s    L2002                              
  01ff6  4a79ffff8dbc          tst.w    g_7244                             
  01ffc  6f04                  ble.s    L2002                              
  01ffe  4eba1d46              jsr      f2_3d46                            
L2002:
  02002  486efff2              pea      -$e(a6)                            
  02006  2f3c002d0055          move.l   #$2d0055,-(a7)                     
  0200c  2f3c004d0075          move.l   #$4d0075,-(a7)                     
  02012  a8a7                  _SetRect                                    ; $a8a7
  02014  4227                  clr.b    -(a7)                              
  02016  2f2efffa              move.l   -$6(a6),-(a7)                      
  0201a  486efff2              pea      -$e(a6)                            
  0201e  a8ad                  _PtInRect                                   ; $a8ad
  02020  4a1f                  tst.b    (a7)+                              
  02022  670c                  beq.s    L2030                              
  02024  4a79ffff8dbe          tst.w    g_7242                             
  0202a  6f04                  ble.s    L2030                              
  0202c  4eba1c98              jsr      f2_3cc6                            
L2030:
  02030  2f2effee              move.l   -$12(a6),-(a7)                     
  02034  a873                  _SetPort                                    ; $a873
  02036  4ead073a              jsr      f7_2bb6                            
  0203a  4ead05c2              jsr      f5_3984                            
  0203e  4e5e                  unlk     a6                                 
  02040  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_2042   [jump table #22]
;----------------------------------------------------------------------
f2_2042:
  02042  4e56fff8              link     a6,#-8                             
  02046  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  0204a  7600                  moveq    #0,d3                              
  0204c  41eefff8              lea      -$8(a6),a0                         
  02050  43f9ffff3ac6          lea      g_c53a,a1                          
  02056  20d9                  move.l   (a1)+,(a0)+                        
  02058  30d9                  move.w   (a1)+,(a0)+                        
  0205a  10d9                  move.b   (a1)+,(a0)+                        
  0205c  4a39ffff985c          tst.b    g_67a4                             
  02062  6720                  beq.s    L2084                              
  02064  3f3c0064              move.w   #$64,-(a7)                         
  02068  4eba593e              jsr      f2_79a8                            
  0206c  0c400032              cmpi.w   #$32,d0                            
  02070  548f                  addq.l   #2,a7                              
  02072  6f10                  ble.s    L2084                              
  02074  3f3c0007              move.w   #7,-(a7)                           
  02078  4eba592e              jsr      f2_79a8                            
  0207c  1d7600f70008          move.b   -$9(a6,d0.w),$8(a6)                
  02082  548f                  addq.l   #2,a7                              
L2084:
  02084  3079ffff836e          movea.w  g_7c92,a0                          
  0208a  7cf1                  moveq    #-15,d6                            
  0208c  dc88                  add.l    a0,d6                              
  0208e  8dfc0015              divs.w   #$15,d6                            
  02092  3079ffff836c          movea.w  g_7c94,a0                          
  02098  2e08                  move.l   a0,d7                              
  0209a  8ffc0015              divs.w   #$15,d7                            
  0209e  7012                  moveq    #18,d0                             
  020a0  c1c7                  muls.w   d7,d0                              
  020a2  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  020a8  3046                  movea.w  d6,a0                              
  020aa  d1c8                  adda.l   a0,a0                              
  020ac  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  020b0  4eba597a              jsr      f2_7a2c                            
  020b4  3a00                  move.w   d0,d5                              
  020b6  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  020be  5279ffff3ace          addq.w   #1,g_c532                          
  020c4  3ebc0002              move.w   #2,(a7)                            
  020c8  4ead05da              jsr      f5_40ca                            
  020cc  102e0008              move.b   $8(a6),d0                          
  020d0  548f                  addq.l   #2,a7                              
  020d2  6b00049a              bmi.w    L256e                              
  020d6  04000053              subi.b   #$53,d0                            
  020da  6700034e              beq.w    L242a                              
  020de  6a3a                  bpl.s    L211a                              
  020e0  5e00                  addq.b   #7,d0                              
  020e2  67000402              beq.w    L24e6                              
  020e6  6a1e                  bpl.s    L2106                              
  020e8  5e00                  addq.b   #7,d0                              
  020ea  670002ae              beq.w    L239a                              
  020ee  6a0c                  bpl.s    L20fc                              
  020f0  040000df              subi.b   #$df,d0                            
  020f4  670001fc              beq.w    L22f2                              
  020f8  60000474              bra.w    L256e                              
L20fc:
  020fc  5500                  subq.b   #2,d0                              
  020fe  6a00046e              bpl.w    L256e                              
  02102  6000036e              bra.w    L2472                              
L2106:
  02106  5500                  subq.b   #2,d0                              
  02108  67000248              beq.w    L2352                              
  0210c  6b000460              bmi.w    L256e                              
  02110  5900                  subq.b   #4,d0                              
  02112  6a000376              bpl.w    L248a                              
  02116  60000456              bra.w    L256e                              
L211a:
  0211a  04000028              subi.b   #$28,d0                            
  0211e  6736                  beq.s    L2156                              
  02120  6a20                  bpl.s    L2142                              
  02122  040000dc              subi.b   #$dc,d0                            
  02126  670002ba              beq.w    L23e2                              
  0212a  6a0a                  bpl.s    L2136                              
  0212c  5200                  addq.b   #1,d0                              
  0212e  6a00034e              bpl.w    L247e                              
  02132  6000043a              bra.w    L256e                              
L2136:
  02136  04000009              subi.b   #9,d0                              
  0213a  67000404              beq.w    L2540                              
  0213e  6000042e              bra.w    L256e                              
L2142:
  02142  5700                  subq.b   #3,d0                              
  02144  6700040e              beq.w    L2554                              
  02148  6a000424              bpl.w    L256e                              
  0214c  5200                  addq.b   #1,d0                              
  0214e  6a00013e              bpl.w    L228e                              
  02152  6000041a              bra.w    L256e                              
L2156:
  02156  3f39ffff8894          move.w   g_776c,-(a7)                       
  0215c  4ead043a              jsr      f4_460e                            
  02160  4ead06f2              jsr      f7_20b4                            
  02164  0c790014ffff8894      cmpi.w   #$14,g_776c                        
  0216c  548f                  addq.l   #2,a7                              
  0216e  6c20                  bge.s    L2190                              
  02170  5279ffff8894          addq.w   #1,g_776c                          
  02176  4227                  clr.b    -(a7)                              
  02178  3f39ffff8894          move.w   g_776c,-(a7)                       
  0217e  4ead0412              jsr      f4_411c                            
  02182  1ebc0001              move.b   #1,(a7)                            
  02186  4ead039a              jsr      f3_5578                            
  0218a  588f                  addq.l   #4,a7                              
  0218c  600003e0              bra.w    L256e                              
L2190:
  02190  4ead0582              jsr      f5_2b56                            
  02194  1600                  move.b   d0,d3                              
  02196  4a03                  tst.b    d3                                 
  02198  670000a6              beq.w    L2240                              
  0219c  4ead058a              jsr      f5_2c4e                            
  021a0  1600                  move.b   d0,d3                              
  021a2  4a03                  tst.b    d3                                 
  021a4  6744                  beq.s    L21ea                              
  021a6  33fc0001ffff8894      move.w   #1,g_776c                          
  021ae  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  021b4  a915                  _ShowWindow                                 ; $a915
  021b6  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  021bc  a915                  _ShowWindow                                 ; $a915
  021be  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  021c4  a915                  _ShowWindow                                 ; $a915
  021c6  4ead074a              jsr      f7_2f40                            
  021ca  4ead075a              jsr      f7_31f0                            
  021ce  4ead073a              jsr      f7_2bb6                            
  021d2  2f3c00010000          move.l   #$10000,-(a7)                      
  021d8  4ead0412              jsr      f4_411c                            
  021dc  1ebc0001              move.b   #1,(a7)                            
  021e0  4ead039a              jsr      f3_5578                            
  021e4  588f                  addq.l   #4,a7                              
  021e6  60000386              bra.w    L256e                              
L21ea:
  021ea  33fc0014ffff8894      move.w   #$14,g_776c                        
  021f2  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  021f8  a920                  _BringToFront                               ; $a920
  021fa  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  02200  a915                  _ShowWindow                                 ; $a915
  02202  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02208  a920                  _BringToFront                               ; $a920
  0220a  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02210  a915                  _ShowWindow                                 ; $a915
  02212  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02218  a920                  _BringToFront                               ; $a920
  0221a  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02220  a915                  _ShowWindow                                 ; $a915
  02222  4ead074a              jsr      f7_2f40                            
  02226  4ead075a              jsr      f7_31f0                            
  0222a  2f3c00140000          move.l   #$140000,-(a7)                     
  02230  4ead0412              jsr      f4_411c                            
  02234  4217                  clr.b    (a7)                               
  02236  4ead039a              jsr      f3_5578                            
  0223a  588f                  addq.l   #4,a7                              
  0223c  60000330              bra.w    L256e                              
L2240:
  02240  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  02246  a920                  _BringToFront                               ; $a920
  02248  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  0224e  a915                  _ShowWindow                                 ; $a915
  02250  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02256  a920                  _BringToFront                               ; $a920
  02258  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  0225e  a915                  _ShowWindow                                 ; $a915
  02260  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02266  a920                  _BringToFront                               ; $a920
  02268  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  0226e  a915                  _ShowWindow                                 ; $a915
  02270  4ead074a              jsr      f7_2f40                            
  02274  4ead075a              jsr      f7_31f0                            
  02278  2f3c00140000          move.l   #$140000,-(a7)                     
  0227e  4ead0412              jsr      f4_411c                            
  02282  4217                  clr.b    (a7)                               
  02284  4ead039a              jsr      f3_5578                            
  02288  588f                  addq.l   #4,a7                              
  0228a  600002e2              bra.w    L256e                              
L228e:
  0228e  3f39ffff8894          move.w   g_776c,-(a7)                       
  02294  4ead043a              jsr      f4_460e                            
  02298  4ead06f2              jsr      f7_20b4                            
  0229c  0c790001ffff8894      cmpi.w   #1,g_776c                          
  022a4  548f                  addq.l   #2,a7                              
  022a6  6f08                  ble.s    L22b0                              
  022a8  5379ffff8894          subq.w   #1,g_776c                          
  022ae  602a                  bra.s    L22da                              
L22b0:
  022b0  33fc0001ffff8894      move.w   #1,g_776c                          
  022b8  4ead054a              jsr      f5_18d0                            
  022bc  4227                  clr.b    -(a7)                              
  022be  3f39ffff8894          move.w   g_776c,-(a7)                       
  022c4  4ead0412              jsr      f4_411c                            
  022c8  1ebc0001              move.b   #1,(a7)                            
  022cc  4ead039a              jsr      f3_5578                            
  022d0  4ead05c2              jsr      f5_3984                            
  022d4  588f                  addq.l   #4,a7                              
  022d6  60000296              bra.w    L256e                              
L22da:
  022da  4227                  clr.b    -(a7)                              
  022dc  3f39ffff8894          move.w   g_776c,-(a7)                       
  022e2  4ead0412              jsr      f4_411c                            
  022e6  4217                  clr.b    (a7)                               
  022e8  4ead039a              jsr      f3_5578                            
  022ec  588f                  addq.l   #4,a7                              
  022ee  6000027e              bra.w    L256e                              
L22f2:
  022f2  3f39ffff8894          move.w   g_776c,-(a7)                       
  022f8  4ead043a              jsr      f4_460e                            
  022fc  4ead054a              jsr      f5_18d0                            
  02300  4217                  clr.b    (a7)                               
  02302  3f39ffff8894          move.w   g_776c,-(a7)                       
  02308  4ead0412              jsr      f4_411c                            
  0230c  4ead05c2              jsr      f5_3984                            
  02310  7002                  moveq    #2,d0                              
  02312  d079ffff83bc          add.w    g_7c44,d0                          
  02318  5b40                  subq.w   #5,d0                              
  0231a  588f                  addq.l   #4,a7                              
  0231c  6c0a                  bge.s    L2328                              
  0231e  7002                  moveq    #2,d0                              
  02320  d079ffff83bc          add.w    g_7c44,d0                          
  02326  6010                  bra.s    L2338                              
L2328:
  02328  3079ffff83bc          movea.w  g_7c44,a0                          
  0232e  7002                  moveq    #2,d0                              
  02330  d088                  add.l    a0,d0                              
  02332  81fc0004              divs.w   #4,d0                              
  02336  4840                  swap     d0                                 
L2338:
  02338  33c0ffff83bc          move.w   d0,g_7c44                          
  0233e  1f3c0001              move.b   #1,-(a7)                           
  02342  3f05                  move.w   d5,-(a7)                           
  02344  4eba3158              jsr      f2_549e                            
  02348  4eba46e0              jsr      f2_6a2a                            
  0234c  588f                  addq.l   #4,a7                              
  0234e  6000021e              bra.w    L256e                              
L2352:
  02352  33fc0001ffff83bc      move.w   #1,g_7c44                          
  0235a  7801                  moveq    #1,d4                              
  0235c  601c                  bra.s    L237a                              
L235e:
  0235e  4a79ffff8370          tst.w    g_7c90                             
  02364  6f12                  ble.s    L2378                              
  02366  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  0236e  6708                  beq.s    L2378                              
  02370  3f04                  move.w   d4,-(a7)                           
  02372  4ead0672              jsr      f6_294e                            
  02376  548f                  addq.l   #2,a7                              
L2378:
  02378  5244                  addq.w   #1,d4                              
L237a:
  0237a  b879ffff883e          cmp.w    g_77c2,d4                          
  02380  6fdc                  ble.s    L235e                              
  02382  1f3c0001              move.b   #1,-(a7)                           
  02386  3f05                  move.w   d5,-(a7)                           
  02388  4eba3114              jsr      f2_549e                            
  0238c  4eba469c              jsr      f2_6a2a                            
  02390  4eba207e              jsr      f2_4410                            
  02394  588f                  addq.l   #4,a7                              
  02396  600001d6              bra.w    L256e                              
L239a:
  0239a  33fc0002ffff83bc      move.w   #2,g_7c44                          
  023a2  7801                  moveq    #1,d4                              
  023a4  601c                  bra.s    L23c2                              
L23a6:
  023a6  4a79ffff8370          tst.w    g_7c90                             
  023ac  6f12                  ble.s    L23c0                              
  023ae  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  023b6  6708                  beq.s    L23c0                              
  023b8  3f04                  move.w   d4,-(a7)                           
  023ba  4ead0672              jsr      f6_294e                            
  023be  548f                  addq.l   #2,a7                              
L23c0:
  023c0  5244                  addq.w   #1,d4                              
L23c2:
  023c2  b879ffff883e          cmp.w    g_77c2,d4                          
  023c8  6fdc                  ble.s    L23a6                              
  023ca  1f3c0001              move.b   #1,-(a7)                           
  023ce  3f05                  move.w   d5,-(a7)                           
  023d0  4eba30cc              jsr      f2_549e                            
  023d4  4eba4654              jsr      f2_6a2a                            
  023d8  4eba2036              jsr      f2_4410                            
  023dc  588f                  addq.l   #4,a7                              
  023de  6000018e              bra.w    L256e                              
L23e2:
  023e2  33fc0004ffff83bc      move.w   #4,g_7c44                          
  023ea  7801                  moveq    #1,d4                              
  023ec  601c                  bra.s    L240a                              
L23ee:
  023ee  4a79ffff8370          tst.w    g_7c90                             
  023f4  6f12                  ble.s    L2408                              
  023f6  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  023fe  6708                  beq.s    L2408                              
  02400  3f04                  move.w   d4,-(a7)                           
  02402  4ead0672              jsr      f6_294e                            
  02406  548f                  addq.l   #2,a7                              
L2408:
  02408  5244                  addq.w   #1,d4                              
L240a:
  0240a  b879ffff883e          cmp.w    g_77c2,d4                          
  02410  6fdc                  ble.s    L23ee                              
  02412  1f3c0001              move.b   #1,-(a7)                           
  02416  3f05                  move.w   d5,-(a7)                           
  02418  4eba3084              jsr      f2_549e                            
  0241c  4eba460c              jsr      f2_6a2a                            
  02420  4eba1fee              jsr      f2_4410                            
  02424  588f                  addq.l   #4,a7                              
  02426  60000146              bra.w    L256e                              
L242a:
  0242a  33fc0003ffff83bc      move.w   #3,g_7c44                          
  02432  7801                  moveq    #1,d4                              
  02434  601c                  bra.s    L2452                              
L2436:
  02436  4a79ffff8370          tst.w    g_7c90                             
  0243c  6f12                  ble.s    L2450                              
  0243e  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  02446  6708                  beq.s    L2450                              
  02448  3f04                  move.w   d4,-(a7)                           
  0244a  4ead0672              jsr      f6_294e                            
  0244e  548f                  addq.l   #2,a7                              
L2450:
  02450  5244                  addq.w   #1,d4                              
L2452:
  02452  b879ffff883e          cmp.w    g_77c2,d4                          
  02458  6fdc                  ble.s    L2436                              
  0245a  1f3c0001              move.b   #1,-(a7)                           
  0245e  3f05                  move.w   d5,-(a7)                           
  02460  4eba303c              jsr      f2_549e                            
  02464  4eba45c4              jsr      f2_6a2a                            
  02468  4eba1fa6              jsr      f2_4410                            
  0246c  588f                  addq.l   #4,a7                              
  0246e  600000fe              bra.w    L256e                              
L2472:
  02472  4227                  clr.b    -(a7)                              
  02474  4eba2370              jsr      f2_47e6                            
  02478  548f                  addq.l   #2,a7                              
  0247a  600000f2              bra.w    L256e                              
L247e:
  0247e  4227                  clr.b    -(a7)                              
  02480  4ead07ba              jsr      f7_0000                            
  02484  548f                  addq.l   #2,a7                              
  02486  600000e6              bra.w    L256e                              
L248a:
  0248a  0c790004ffff83bc      cmpi.w   #4,g_7c44                          
  02492  6c0a                  bge.s    L249e                              
  02494  7001                  moveq    #1,d0                              
  02496  d079ffff83bc          add.w    g_7c44,d0                          
  0249c  6002                  bra.s    L24a0                              
L249e:
  0249e  7001                  moveq    #1,d0                              
L24a0:
  024a0  33c0ffff83bc          move.w   d0,g_7c44                          
  024a6  4eba4582              jsr      f2_6a2a                            
  024aa  7801                  moveq    #1,d4                              
  024ac  601c                  bra.s    L24ca                              
L24ae:
  024ae  4a79ffff8370          tst.w    g_7c90                             
  024b4  6f12                  ble.s    L24c8                              
  024b6  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  024be  6708                  beq.s    L24c8                              
  024c0  3f04                  move.w   d4,-(a7)                           
  024c2  4ead0672              jsr      f6_294e                            
  024c6  548f                  addq.l   #2,a7                              
L24c8:
  024c8  5244                  addq.w   #1,d4                              
L24ca:
  024ca  b879ffff883e          cmp.w    g_77c2,d4                          
  024d0  6fdc                  ble.s    L24ae                              
  024d2  1f3c0001              move.b   #1,-(a7)                           
  024d6  3f05                  move.w   d5,-(a7)                           
  024d8  4eba2fc4              jsr      f2_549e                            
  024dc  4eba1f32              jsr      f2_4410                            
  024e0  588f                  addq.l   #4,a7                              
  024e2  6000008a              bra.w    L256e                              
L24e6:
  024e6  0c790001ffff83bc      cmpi.w   #1,g_7c44                          
  024ee  6f0a                  ble.s    L24fa                              
  024f0  70ff                  moveq    #-1,d0                             
  024f2  d079ffff83bc          add.w    g_7c44,d0                          
  024f8  6002                  bra.s    L24fc                              
L24fa:
  024fa  7004                  moveq    #4,d0                              
L24fc:
  024fc  33c0ffff83bc          move.w   d0,g_7c44                          
  02502  4eba4526              jsr      f2_6a2a                            
  02506  7801                  moveq    #1,d4                              
  02508  601c                  bra.s    L2526                              
L250a:
  0250a  4a79ffff8370          tst.w    g_7c90                             
  02510  6f12                  ble.s    L2524                              
  02512  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  0251a  6708                  beq.s    L2524                              
  0251c  3f04                  move.w   d4,-(a7)                           
  0251e  4ead0672              jsr      f6_294e                            
  02522  548f                  addq.l   #2,a7                              
L2524:
  02524  5244                  addq.w   #1,d4                              
L2526:
  02526  b879ffff883e          cmp.w    g_77c2,d4                          
  0252c  6fdc                  ble.s    L250a                              
  0252e  1f3c0001              move.b   #1,-(a7)                           
  02532  3f05                  move.w   d5,-(a7)                           
  02534  4eba2f68              jsr      f2_549e                            
  02538  4eba1ed6              jsr      f2_4410                            
  0253c  588f                  addq.l   #4,a7                              
  0253e  602e                  bra.s    L256e                              
L2540:
  02540  1f3c0001              move.b   #1,-(a7)                           
  02544  4ead027a              jsr      f3_071e                            
  02548  4eba45da              jsr      f2_6b24                            
  0254c  4eba1ef2              jsr      f2_4440                            
  02550  548f                  addq.l   #2,a7                              
  02552  601a                  bra.s    L256e                              
L2554:
  02554  42a7                  clr.l    -(a7)                              
  02556  3f3c0007              move.w   #7,-(a7)                           
  0255a  a9bf                  _GetMenu                                    ; $a9bf
  0255c  23dfffff8dd8          move.l   (a7)+,g_7228                       
  02562  2f39ffff8dd8          move.l   g_7228,-(a7)                       
  02568  4267                  clr.w    -(a7)                              
  0256a  a935                  _InsertMenu                                 ; $a935
  0256c  a937                  _DrawMenuBar                                ; $a937
L256e:
  0256e  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  02572  4e5e                  unlk     a6                                 
  02574  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_2576
;----------------------------------------------------------------------
f2_2576:
  02576  4e560000              link     a6,#0                              
  0257a  48e70300              movem.l  d6/d7,-(a7)                        
  0257e  3e2e0008              move.w   $8(a6),d7                          
  02582  3c3073b0ffff8ba6      move.w   (-$745a,za0,d7.w*2),d6             
  0258a  3f3c0005              move.w   #5,-(a7)                           
  0258e  2f3c00000150          move.l   STR_0150,-(a7)                     ; "?"
  02594  2f3c00000152          move.l   STR_0152,-(a7)                     ; "?"
  0259a  2f3c00010000          move.l   #$10000,-(a7)                      
  025a0  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  025a6  3f06                  move.w   d6,-(a7)                           
  025a8  3f07                  move.w   d7,-(a7)                           
  025aa  4ebaeb98              jsr      f2_1144                            
  025ae  4a00                  tst.b    d0                                 
  025b0  4fef0016              lea      $16(a7),a7                         
  025b4  6742                  beq.s    L25f8                              
  025b6  2f3c00030001          move.l   #$30001,-(a7)                      
  025bc  4267                  clr.w    -(a7)                              
  025be  42a7                  clr.l    -(a7)                              
  025c0  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  025c6  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  025cc  3f06                  move.w   d6,-(a7)                           
  025ce  3f07                  move.w   d7,-(a7)                           
  025d0  4eba5504              jsr      f2_7ad6                            
  025d4  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  025dc  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  025e4  3eb073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),(a7)           
  025ec  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  025f4  4ebae678              jsr      f2_0c6e                            
L25f8:
  025f8  4cee00c0fff8          movem.l  -$8(a6),d6/d7                      
  025fe  4e5e                  unlk     a6                                 
  02600  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_2602
;----------------------------------------------------------------------
f2_2602:
  02602  4e560000              link     a6,#0                              
  02606  48e70300              movem.l  d6/d7,-(a7)                        
  0260a  3e2e0008              move.w   $8(a6),d7                          
  0260e  3c3073b0ffff8ba6      move.w   (-$745a,za0,d7.w*2),d6             
  02616  3f3c0004              move.w   #4,-(a7)                           
  0261a  2f3c00000154          move.l   STR_0154,-(a7)                     ; "?"
  02620  2f3c00000156          move.l   STR_0156,-(a7)                     ; "?"
  02626  2f3c00070000          move.l   #$70000,-(a7)                      
  0262c  2f3cffff8db8          move.l   #$ffff8db8,-(a7)                   
  02632  3f06                  move.w   d6,-(a7)                           
  02634  3f07                  move.w   d7,-(a7)                           
  02636  4ebaeb0c              jsr      f2_1144                            
  0263a  4a00                  tst.b    d0                                 
  0263c  4fef0016              lea      $16(a7),a7                         
  02640  6742                  beq.s    L2684                              
  02642  2f3c000a0007          move.l   #$a0007,-(a7)                      
  02648  4267                  clr.w    -(a7)                              
  0264a  42a7                  clr.l    -(a7)                              
  0264c  2f3cffff8e4a          move.l   #$ffff8e4a,-(a7)                   
  02652  2f3cffff8db8          move.l   #$ffff8db8,-(a7)                   
  02658  3f06                  move.w   d6,-(a7)                           
  0265a  3f07                  move.w   d7,-(a7)                           
  0265c  4eba5478              jsr      f2_7ad6                            
  02660  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  02668  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  02670  3eb073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),(a7)           
  02678  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  02680  4ebae5ec              jsr      f2_0c6e                            
L2684:
  02684  4cee00c0fff8          movem.l  -$8(a6),d6/d7                      
  0268a  4e5e                  unlk     a6                                 
  0268c  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_268e
;----------------------------------------------------------------------
f2_268e:
  0268e  4e560000              link     a6,#0                              
  02692  48e70300              movem.l  d6/d7,-(a7)                        
  02696  3e2e0008              move.w   $8(a6),d7                          
  0269a  3c3073b0ffff8ba6      move.w   (-$745a,za0,d7.w*2),d6             
  026a2  3f3c0005              move.w   #5,-(a7)                           
  026a6  2f3c00000158          move.l   STR_0158,-(a7)                     ; "?"
  026ac  2f3c0000015a          move.l   STR_015a,-(a7)                     ; "?"
  026b2  2f3c00020000          move.l   #$20000,-(a7)                      
  026b8  2f3cffff8da0          move.l   #$ffff8da0,-(a7)                   
  026be  3f06                  move.w   d6,-(a7)                           
  026c0  3f07                  move.w   d7,-(a7)                           
  026c2  4ebaea80              jsr      f2_1144                            
  026c6  4a00                  tst.b    d0                                 
  026c8  4fef0016              lea      $16(a7),a7                         
  026cc  6742                  beq.s    L2710                              
  026ce  2f3c00040002          move.l   #$40002,-(a7)                      
  026d4  4267                  clr.w    -(a7)                              
  026d6  42a7                  clr.l    -(a7)                              
  026d8  2f3cffff8864          move.l   #$ffff8864,-(a7)                   
  026de  2f3cffff8da0          move.l   #$ffff8da0,-(a7)                   
  026e4  3f06                  move.w   d6,-(a7)                           
  026e6  3f07                  move.w   d7,-(a7)                           
  026e8  4eba53ec              jsr      f2_7ad6                            
  026ec  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  026f4  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  026fc  3eb073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),(a7)           
  02704  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  0270c  4ebae560              jsr      f2_0c6e                            
L2710:
  02710  4cee00c0fff8          movem.l  -$8(a6),d6/d7                      
  02716  4e5e                  unlk     a6                                 
  02718  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_271a
;----------------------------------------------------------------------
f2_271a:
  0271a  4e560000              link     a6,#0                              
  0271e  48e70300              movem.l  d6/d7,-(a7)                        
  02722  3e2e0008              move.w   $8(a6),d7                          
  02726  3c3073b0ffff8ba6      move.w   (-$745a,za0,d7.w*2),d6             
  0272e  3f3c0005              move.w   #5,-(a7)                           
  02732  2f3c0000015c          move.l   STR_015c,-(a7)                     ; "?"
  02738  2f3c0000015e          move.l   STR_015e,-(a7)                     ; "?"
  0273e  2f3c00030000          move.l   #$30000,-(a7)                      
  02744  2f3cffff8da4          move.l   #$ffff8da4,-(a7)                   
  0274a  3f06                  move.w   d6,-(a7)                           
  0274c  3f07                  move.w   d7,-(a7)                           
  0274e  4ebae9f4              jsr      f2_1144                            
  02752  4a00                  tst.b    d0                                 
  02754  4fef0016              lea      $16(a7),a7                         
  02758  674a                  beq.s    L27a4                              
  0275a  2f3c00050003          move.l   #$50003,-(a7)                      
  02760  4267                  clr.w    -(a7)                              
  02762  2f3cffff8870          move.l   #$ffff8870,-(a7)                   
  02768  2f3cffff887c          move.l   #$ffff887c,-(a7)                   
  0276e  2f3cffff8da4          move.l   #$ffff8da4,-(a7)                   
  02774  3f06                  move.w   d6,-(a7)                           
  02776  3f07                  move.w   d7,-(a7)                           
  02778  4eba535c              jsr      f2_7ad6                            
  0277c  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  02784  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  0278c  3eb073b0ffff8d74      move.w   (-$728c,za0,d7.w*2),(a7)           
  02794  3f3073b0ffff8d4a      move.w   (-$72b6,za0,d7.w*2),-(a7)          
  0279c  4ebae4d0              jsr      f2_0c6e                            
  027a0  4ead075a              jsr      f7_31f0                            
L27a4:
  027a4  4cee00c0fff8          movem.l  -$8(a6),d6/d7                      
  027aa  4e5e                  unlk     a6                                 
  027ac  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_27ae   [jump table #23]
;----------------------------------------------------------------------
f2_27ae:
  027ae  4e56ff0a              link     a6,#-246                           
  027b2  48e70108              movem.l  d7/a4,-(a7)                        
  027b6  7e00                  moveq    #0,d7                              
  027b8  6014                  bra.s    L27ce                              
L27ba:
  027ba  42a7                  clr.l    -(a7)                              
  027bc  3007                  move.w   d7,d0                              
  027be  06402710              addi.w   #$2710,d0                          
  027c2  3f00                  move.w   d0,-(a7)                           
  027c4  a9bc                  _GetPicture                                 ; $a9bc
  027c6  2d9f7520ff1e          move.l   (a7)+,(-$e2,a6,d7.w*4)             
  027cc  5247                  addq.w   #1,d7                              
L27ce:
  027ce  0c47000c              cmpi.w   #$c,d7                             
  027d2  6de6                  blt.s    L27ba                              
  027d4  486eff4e              pea      -$b2(a6)                           
  027d8  a874                  _GetPort                                    ; $a874
  027da  42a7                  clr.l    -(a7)                              
  027dc  3f3c2af8              move.w   #$2af8,-(a7)                       
  027e0  486eff56              pea      -$aa(a6)                           
  027e4  4878ffff              pea      ($ffff).w                          
  027e8  a97c                  _GetNewDialog                               ; $a97c
  027ea  285f                  movea.l  (a7)+,a4                           
  027ec  2f0c                  move.l   a4,-(a7)                           
  027ee  4ead06ba              jsr      f7_161c                            
  027f2  2e8c                  move.l   a4,(a7)                            
  027f4  a915                  _ShowWindow                                 ; $a915
  027f6  2f0c                  move.l   a4,-(a7)                           
  027f8  3f3c0002              move.w   #2,-(a7)                           
  027fc  486eff52              pea      -$ae(a6)                           
  02800  486eff16              pea      -$ea(a6)                           
  02804  486eff0a              pea      -$f6(a6)                           
  02808  a98d                  _GetDialogItem                              ; $a98d
  0280a  2f0c                  move.l   a4,-(a7)                           
  0280c  3f3c0003              move.w   #3,-(a7)                           
  02810  486eff52              pea      -$ae(a6)                           
  02814  486eff1a              pea      -$e6(a6)                           
  02818  486eff0a              pea      -$f6(a6)                           
  0281c  a98d                  _GetDialogItem                              ; $a98d
  0281e  2f0c                  move.l   a4,-(a7)                           
  02820  3f3c0004              move.w   #4,-(a7)                           
  02824  486eff52              pea      -$ae(a6)                           
  02828  486eff12              pea      -$ee(a6)                           
  0282c  486eff0a              pea      -$f6(a6)                           
  02830  a98d                  _GetDialogItem                              ; $a98d
  02832  2f2eff16              move.l   -$ea(a6),-(a7)                     
  02836  3f3c00ff              move.w   #$ff,-(a7)                         
  0283a  a95d                  _HiliteControl                              ; $a95d
  0283c  7e00                  moveq    #0,d7                              
  0283e  2f39ffff99fc          move.l   g_6604,-(a7)                       
  02844  a873                  _SetPort                                    ; $a873
  02846  486eff0a              pea      -$f6(a6)                           
  0284a  a8a3                  _EraseRect                                  ; $a8a3
  0284c  2f367520ff1e          move.l   (-$e2,a6,d7.w*4),-(a7)             
  02852  486eff0a              pea      -$f6(a6)                           
  02856  a8f6                  _DrawPicture                                ; $a8f6
  02858  2079ffff99fc          movea.l  g_6604,a0                          
  0285e  20680002              movea.l  $2(a0),a0                          
  02862  2f10                  move.l   (a0),-(a7)                         
  02864  486c0002              pea      $2(a4)                             
  02868  486eff0a              pea      -$f6(a6)                           
  0286c  486eff0a              pea      -$f6(a6)                           
  02870  4267                  clr.w    -(a7)                              
  02872  42a7                  clr.l    -(a7)                              
  02874  a8ec                  _CopyBits                                   ; $a8ec
L2876:
  02876  42a7                  clr.l    -(a7)                              
  02878  486eff54              pea      -$ac(a6)                           
  0287c  a991                  _ModalDialog                                ; $a991
  0287e  302eff54              move.w   -$ac(a6),d0                        
  02882  6b0000a4              bmi.w    L2928                              
  02886  5740                  subq.w   #3,d0                              
  02888  6754                  beq.s    L28de                              
  0288a  6a00009c              bpl.w    L2928                              
  0288e  5240                  addq.w   #1,d0                              
  02890  6b000096              bmi.w    L2928                              
  02894  5347                  subq.w   #1,d7                              
  02896  486eff0a              pea      -$f6(a6)                           
  0289a  a8a3                  _EraseRect                                  ; $a8a3
  0289c  2f367520ff1e          move.l   (-$e2,a6,d7.w*4),-(a7)             
  028a2  486eff0a              pea      -$f6(a6)                           
  028a6  a8f6                  _DrawPicture                                ; $a8f6
  028a8  2079ffff99fc          movea.l  g_6604,a0                          
  028ae  20680002              movea.l  $2(a0),a0                          
  028b2  2f10                  move.l   (a0),-(a7)                         
  028b4  486c0002              pea      $2(a4)                             
  028b8  486eff0a              pea      -$f6(a6)                           
  028bc  486eff0a              pea      -$f6(a6)                           
  028c0  4267                  clr.w    -(a7)                              
  028c2  42a7                  clr.l    -(a7)                              
  028c4  a8ec                  _CopyBits                                   ; $a8ec
  028c6  4a47                  tst.w    d7                                 
  028c8  660a                  bne.s    L28d4                              
  028ca  2f2eff16              move.l   -$ea(a6),-(a7)                     
  028ce  3f3c00ff              move.w   #$ff,-(a7)                         
  028d2  a95d                  _HiliteControl                              ; $a95d
L28d4:
  028d4  2f2eff1a              move.l   -$e6(a6),-(a7)                     
  028d8  4267                  clr.w    -(a7)                              
  028da  a95d                  _HiliteControl                              ; $a95d
  028dc  604a                  bra.s    L2928                              
L28de:
  028de  5247                  addq.w   #1,d7                              
  028e0  486eff0a              pea      -$f6(a6)                           
  028e4  a8a3                  _EraseRect                                  ; $a8a3
  028e6  2f367520ff1e          move.l   (-$e2,a6,d7.w*4),-(a7)             
  028ec  486eff0a              pea      -$f6(a6)                           
  028f0  a8f6                  _DrawPicture                                ; $a8f6
  028f2  2079ffff99fc          movea.l  g_6604,a0                          
  028f8  20680002              movea.l  $2(a0),a0                          
  028fc  2f10                  move.l   (a0),-(a7)                         
  028fe  486c0002              pea      $2(a4)                             
  02902  486eff0a              pea      -$f6(a6)                           
  02906  486eff0a              pea      -$f6(a6)                           
  0290a  4267                  clr.w    -(a7)                              
  0290c  42a7                  clr.l    -(a7)                              
  0290e  a8ec                  _CopyBits                                   ; $a8ec
  02910  0c47000b              cmpi.w   #$b,d7                             
  02914  660a                  bne.s    L2920                              
  02916  2f2eff1a              move.l   -$e6(a6),-(a7)                     
  0291a  3f3c00ff              move.w   #$ff,-(a7)                         
  0291e  a95d                  _HiliteControl                              ; $a95d
L2920:
  02920  2f2eff16              move.l   -$ea(a6),-(a7)                     
  02924  4267                  clr.w    -(a7)                              
  02926  a95d                  _HiliteControl                              ; $a95d
L2928:
  02928  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  0292e  6600ff46              bne.w    L2876                              
  02932  2f0c                  move.l   a4,-(a7)                           
  02934  a983                  _DisposeDialog                              ; $a983
  02936  2f2eff4e              move.l   -$b2(a6),-(a7)                     
  0293a  a873                  _SetPort                                    ; $a873
  0293c  4cdf1080              movem.l  (a7)+,d7/a4                        
  02940  4e5e                  unlk     a6                                 
  02942  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_2944   [jump table #24]
;----------------------------------------------------------------------
f2_2944:
  02944  4e56fdc6              link     a6,#-570                           
  02948  48e70718              movem.l  d5/d6/d7/a3/a4,-(a7)               
  0294c  286e000a              movea.l  $a(a6),a4                          
  02950  7c00                  moveq    #0,d6                              
  02952  4a6e000e              tst.w    $e(a6)                             
  02956  670001b8              beq.w    L2b10                              
  0295a  3f3c02bc              move.w   #$2bc,-(a7)                        
  0295e  486efeca              pea      -$136(a6)                          
  02962  486eff4e              pea      -$b2(a6)                           
  02966  4ebaefe6              jsr      f2_194e                            
  0296a  302e0008              move.w   $8(a6),d0                          
  0296e  2eb60520fefa          move.l   (-$106,a6,d0.w*4),(a7)             
  02974  2f3c00000160          move.l   STR_0160,-(a7)                     ; "?"
  0297a  2f3c00000162          move.l   STR_0162,-(a7)                     ; "?"
  02980  2f3c00000164          move.l   STR_0164,-(a7)                     ; "?"
  02986  a98b                  _ParamText                                  ; $a98b
  02988  4297                  clr.l    (a7)                               
  0298a  3f3c0104              move.w   #$104,-(a7)                        
  0298e  486eff56              pea      -$aa(a6)                           
  02992  4878ffff              pea      ($ffff).w                          
  02996  a97c                  _GetNewDialog                               ; $a97c
  02998  265f                  movea.l  (a7)+,a3                           
  0299a  2f0b                  move.l   a3,-(a7)                           
  0299c  4ead06ba              jsr      f7_161c                            
  029a0  7e06                  moveq    #6,d7                              
  029a2  5c8f                  addq.l   #6,a7                              
  029a4  6008                  bra.s    L29ae                              
L29a6:
  029a6  2f0b                  move.l   a3,-(a7)                           
  029a8  3f07                  move.w   d7,-(a7)                           
  029aa  a827                  _ShowDialogItem                             ; $a827
  029ac  5247                  addq.w   #1,d7                              
L29ae:
  029ae  0c470008              cmpi.w   #8,d7                              
  029b2  6df2                  blt.s    L29a6                              
  029b4  2f0c                  move.l   a4,-(a7)                           
  029b6  486e000e              pea      $e(a6)                             
  029ba  2f0b                  move.l   a3,-(a7)                           
  029bc  4eba0970              jsr      f2_332e                            
  029c0  2e8b                  move.l   a3,(a7)                            
  029c2  3f3c0008              move.w   #8,-(a7)                           
  029c6  486eff52              pea      -$ae(a6)                           
  029ca  486eff4a              pea      -$b6(a6)                           
  029ce  486eff42              pea      -$be(a6)                           
  029d2  a98d                  _GetDialogItem                              ; $a98d
  029d4  2eaeff4a              move.l   -$b6(a6),(a7)                      
  029d8  2f3c00000166          move.l   STR_0166,-(a7)                     ; "OK"
  029de  a95f                  _SetCTitle                                  ; $a95f
  029e0  2e8b                  move.l   a3,(a7)                            
  029e2  a915                  _ShowWindow                                 ; $a915
  029e4  2f0b                  move.l   a3,-(a7)                           
  029e6  a981                  _DrawDialog                                 ; $a981
L29e8:
  029e8  42a7                  clr.l    -(a7)                              
  029ea  486eff54              pea      -$ac(a6)                           
  029ee  a991                  _ModalDialog                                ; $a991
  029f0  302eff54              move.w   -$ac(a6),d0                        
  029f4  674c                  beq.s    L2a42                              
  029f6  6b4a                  bmi.s    L2a42                              
  029f8  5140                  subq.w   #8,d0                              
  029fa  6746                  beq.s    L2a42                              
  029fc  6a44                  bpl.s    L2a42                              
  029fe  5440                  addq.w   #2,d0                              
  02a00  6a40                  bpl.s    L2a42                              
  02a02  4a46                  tst.w    d6                                 
  02a04  671a                  beq.s    L2a20                              
  02a06  2f0b                  move.l   a3,-(a7)                           
  02a08  3f06                  move.w   d6,-(a7)                           
  02a0a  486eff52              pea      -$ae(a6)                           
  02a0e  486eff4a              pea      -$b6(a6)                           
  02a12  486eff42              pea      -$be(a6)                           
  02a16  a98d                  _GetDialogItem                              ; $a98d
  02a18  2f2eff4a              move.l   -$b6(a6),-(a7)                     
  02a1c  4267                  clr.w    -(a7)                              
  02a1e  a963                  _SetCtlValue                                ; $a963
L2a20:
  02a20  2f0b                  move.l   a3,-(a7)                           
  02a22  3f2eff54              move.w   -$ac(a6),-(a7)                     
  02a26  486eff52              pea      -$ae(a6)                           
  02a2a  486eff4a              pea      -$b6(a6)                           
  02a2e  486eff42              pea      -$be(a6)                           
  02a32  a98d                  _GetDialogItem                              ; $a98d
  02a34  2f2eff4a              move.l   -$b6(a6),-(a7)                     
  02a38  3f3c0001              move.w   #1,-(a7)                           
  02a3c  a963                  _SetCtlValue                                ; $a963
  02a3e  3c2eff54              move.w   -$ac(a6),d6                        
L2a42:
  02a42  0c6e0008ff54          cmpi.w   #8,-$ac(a6)                        
  02a48  6d9e                  blt.s    L29e8                              
  02a4a  4a46                  tst.w    d6                                 
  02a4c  679a                  beq.s    L29e8                              
  02a4e  2f0b                  move.l   a3,-(a7)                           
  02a50  a982                  _CloseDialog                                ; $a982
  02a52  30346200              move.w   $0(a4,d6.w*2),d0                   
  02a56  2f3005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),-(a7)          
  02a5e  4ead05fa              jsr      f6_0130                            
  02a62  1a00                  move.b   d0,d5                              
  02a64  4a05                  tst.b    d5                                 
  02a66  588f                  addq.l   #4,a7                              
  02a68  6710                  beq.s    L2a7a                              
  02a6a  486efdc6              pea      -$23a(a6)                          
  02a6e  2f3c000202bb          move.l   #$202bb,-(a7)                      
  02a74  4ead0522              jsr      f4_153c                            
  02a78  600e                  bra.s    L2a88                              
L2a7a:
  02a7a  486efdc6              pea      -$23a(a6)                          
  02a7e  2f3c000102bb          move.l   #$102bb,-(a7)                      
  02a84  4ead0522              jsr      f4_153c                            
L2a88:
  02a88  486efdc6              pea      -$23a(a6)                          
  02a8c  30346200              move.w   $0(a4,d6.w*2),d0                   
  02a90  2f3005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),-(a7)          
  02a98  302e0008              move.w   $8(a6),d0                          
  02a9c  2f360520feca          move.l   (-$136,a6,d0.w*4),-(a7)            
  02aa2  2f3c0000016a          move.l   STR_016a,-(a7)                     ; "?"
  02aa8  a98b                  _ParamText                                  ; $a98b
  02aaa  42a7                  clr.l    -(a7)                              
  02aac  3f3c02c7              move.w   #$2c7,-(a7)                        
  02ab0  486eff56              pea      -$aa(a6)                           
  02ab4  4878ffff              pea      ($ffff).w                          
  02ab8  a97c                  _GetNewDialog                               ; $a97c
  02aba  265f                  movea.l  (a7)+,a3                           
  02abc  2f0b                  move.l   a3,-(a7)                           
  02abe  a981                  _DrawDialog                                 ; $a981
  02ac0  43eefec6              lea      -$13a(a6),a1                       
  02ac4  307c0078              movea.w  #$78,a0                            
  02ac8  a03b                  _Delay                                      ; $a03b
  02aca  2280                  move.l   d0,(a1)                            
  02acc  2f0b                  move.l   a3,-(a7)                           
  02ace  a983                  _DisposeDialog                              ; $a983
  02ad0  30346200              move.w   $0(a4,d6.w*2),d0                   
  02ad4  32346200              move.w   $0(a4,d6.w*2),d1                   
  02ad8  21b005b0ffff735a15b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d1.w*4)
  02ae6  30346200              move.w   $0(a4,d6.w*2),d0                   
  02aea  31b4620003b0ffff83be  move.w   $0(a4,d6.w*2),(-$7c42,za0,d0.w*2)  
  02af4  7e01                  moveq    #1,d7                              
  02af6  600a                  bra.s    L2b02                              
L2af8:
  02af8  20767520feca          movea.l  (-$136,a6,d7.w*4),a0               
  02afe  a01f                  _DisposePtr                                 ; $a01f
  02b00  5247                  addq.w   #1,d7                              
L2b02:
  02b02  be6eff4e              cmp.w    -$b2(a6),d7                        
  02b06  6ff0                  ble.s    L2af8                              
  02b08  4eba404c              jsr      f2_6b56                            
  02b0c  4ead075a              jsr      f7_31f0                            
L2b10:
  02b10  4cdf18e0              movem.l  (a7)+,d5/d6/d7/a3/a4               
  02b14  4e5e                  unlk     a6                                 
  02b16  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_2b18   [jump table #25]
;----------------------------------------------------------------------
f2_2b18:
  02b18  4e560000              link     a6,#0                              
  02b1c  4a79ffff8da0          tst.w    g_7260                             
  02b22  6650                  bne.s    L2b74                              
  02b24  4a79ffff8da2          tst.w    g_725e                             
  02b2a  6648                  bne.s    L2b74                              
  02b2c  4a79ffff8da4          tst.w    g_725c                             
  02b32  6640                  bne.s    L2b74                              
  02b34  4a79ffff8db8          tst.w    g_7248                             
  02b3a  6638                  bne.s    L2b74                              
  02b3c  4a79ffff8dba          tst.w    g_7246                             
  02b42  6630                  bne.s    L2b74                              
  02b44  4a79ffff8dbc          tst.w    g_7244                             
  02b4a  6628                  bne.s    L2b74                              
  02b4c  2f2e0008              move.l   $8(a6),-(a7)                       
  02b50  4eba4db6              jsr      f2_7908                            
  02b54  5279ffff8da0          addq.w   #1,g_7260                          
  02b5a  3039ffff8da0          move.w   g_7260,d0                          
  02b60  31bc001403b0ffff8864  move.w   #$14,(-$779c,za0,d0.w*2)           
  02b6a  3ebc0002              move.w   #2,(a7)                            
  02b6e  4ebad61e              jsr      f2_018e                            
  02b72  6004                  bra.s    L2b78                              
L2b74:
  02b74  4eba0006              jsr      f2_2b7c                            
L2b78:
  02b78  4e5e                  unlk     a6                                 
  02b7a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_2b7c
;----------------------------------------------------------------------
f2_2b7c:
  02b7c  4e56ff3e              link     a6,#-194                           
  02b80  48e70108              movem.l  d7/a4,-(a7)                        
  02b84  7e00                  moveq    #0,d7                              
  02b86  486efff4              pea      -$c(a6)                            
  02b8a  a874                  _GetPort                                    ; $a874
  02b8c  42a7                  clr.l    -(a7)                              
  02b8e  3f3c02cb              move.w   #$2cb,-(a7)                        
  02b92  486eff4a              pea      -$b6(a6)                           
  02b96  4878ffff              pea      ($ffff).w                          
  02b9a  a97c                  _GetNewDialog                               ; $a97c
  02b9c  285f                  movea.l  (a7)+,a4                           
  02b9e  2f0c                  move.l   a4,-(a7)                           
  02ba0  4ead06ba              jsr      f7_161c                            
  02ba4  4a79ffff8da2          tst.w    g_725e                             
  02baa  588f                  addq.l   #4,a7                              
  02bac  6608                  bne.s    L2bb6                              
  02bae  2f0c                  move.l   a4,-(a7)                           
  02bb0  3f3c0001              move.w   #1,-(a7)                           
  02bb4  a827                  _ShowDialogItem                             ; $a827
L2bb6:
  02bb6  4a79ffff8da0          tst.w    g_7260                             
  02bbc  6608                  bne.s    L2bc6                              
  02bbe  2f0c                  move.l   a4,-(a7)                           
  02bc0  3f3c0002              move.w   #2,-(a7)                           
  02bc4  a827                  _ShowDialogItem                             ; $a827
L2bc6:
  02bc6  4a79ffff8da4          tst.w    g_725c                             
  02bcc  6608                  bne.s    L2bd6                              
  02bce  2f0c                  move.l   a4,-(a7)                           
  02bd0  3f3c0003              move.w   #3,-(a7)                           
  02bd4  a827                  _ShowDialogItem                             ; $a827
L2bd6:
  02bd6  4a79ffff8db8          tst.w    g_7248                             
  02bdc  6608                  bne.s    L2be6                              
  02bde  2f0c                  move.l   a4,-(a7)                           
  02be0  3f3c0004              move.w   #4,-(a7)                           
  02be4  a827                  _ShowDialogItem                             ; $a827
L2be6:
  02be6  4a79ffff8dba          tst.w    g_7246                             
  02bec  6608                  bne.s    L2bf6                              
  02bee  2f0c                  move.l   a4,-(a7)                           
  02bf0  3f3c0005              move.w   #5,-(a7)                           
  02bf4  a827                  _ShowDialogItem                             ; $a827
L2bf6:
  02bf6  4a79ffff8dbc          tst.w    g_7244                             
  02bfc  6608                  bne.s    L2c06                              
  02bfe  2f0c                  move.l   a4,-(a7)                           
  02c00  3f3c0006              move.w   #6,-(a7)                           
  02c04  a827                  _ShowDialogItem                             ; $a827
L2c06:
  02c06  2f0c                  move.l   a4,-(a7)                           
  02c08  a915                  _ShowWindow                                 ; $a915
  02c0a  2f0c                  move.l   a4,-(a7)                           
  02c0c  a981                  _DrawDialog                                 ; $a981
L2c0e:
  02c0e  42a7                  clr.l    -(a7)                              
  02c10  486efffa              pea      -$6(a6)                            
  02c14  a991                  _ModalDialog                                ; $a991
  02c16  302efffa              move.w   -$6(a6),d0                         
  02c1a  6748                  beq.s    L2c64                              
  02c1c  6b46                  bmi.s    L2c64                              
  02c1e  5f40                  subq.w   #7,d0                              
  02c20  6742                  beq.s    L2c64                              
  02c22  6a40                  bpl.s    L2c64                              
  02c24  4a47                  tst.w    d7                                 
  02c26  671a                  beq.s    L2c42                              
  02c28  2f0c                  move.l   a4,-(a7)                           
  02c2a  3f07                  move.w   d7,-(a7)                           
  02c2c  486efff8              pea      -$8(a6)                            
  02c30  486eff46              pea      -$ba(a6)                           
  02c34  486eff3e              pea      -$c2(a6)                           
  02c38  a98d                  _GetDialogItem                              ; $a98d
  02c3a  2f2eff46              move.l   -$ba(a6),-(a7)                     
  02c3e  4267                  clr.w    -(a7)                              
  02c40  a963                  _SetCtlValue                                ; $a963
L2c42:
  02c42  2f0c                  move.l   a4,-(a7)                           
  02c44  3f2efffa              move.w   -$6(a6),-(a7)                      
  02c48  486efff8              pea      -$8(a6)                            
  02c4c  486eff46              pea      -$ba(a6)                           
  02c50  486eff3e              pea      -$c2(a6)                           
  02c54  a98d                  _GetDialogItem                              ; $a98d
  02c56  2f2eff46              move.l   -$ba(a6),-(a7)                     
  02c5a  3f3c0001              move.w   #1,-(a7)                           
  02c5e  a963                  _SetCtlValue                                ; $a963
  02c60  3e2efffa              move.w   -$6(a6),d7                         
L2c64:
  02c64  0c6e0007fffa          cmpi.w   #7,-$6(a6)                         
  02c6a  6da2                  blt.s    L2c0e                              
  02c6c  4a47                  tst.w    d7                                 
  02c6e  679e                  beq.s    L2c0e                              
  02c70  2f0c                  move.l   a4,-(a7)                           
  02c72  a982                  _CloseDialog                                ; $a982
  02c74  0c470006              cmpi.w   #6,d7                              
  02c78  6200009a              bhi.w    L2d14                              
  02c7c  43fa00a8              lea      L2d26(pc),a1                       
  02c80  d2f17200              adda.w   $0(a1,d7.w*2),a1                   
  02c84  4ed1                  jmp      (a1)                               
  02c86  3f39ffff8da2          move.w   g_725e,-(a7)                       
  02c8c  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  02c92  3f3c0001              move.w   #1,-(a7)                           
  02c96  4ebafcac              jsr      f2_2944                            
  02c9a  508f                  addq.l   #8,a7                              
  02c9c  6076                  bra.s    L2d14                              
  02c9e  3f39ffff8da0          move.w   g_7260,-(a7)                       
  02ca4  2f3cffff8864          move.l   #$ffff8864,-(a7)                   
  02caa  3f3c0002              move.w   #2,-(a7)                           
  02cae  4ebafc94              jsr      f2_2944                            
  02cb2  508f                  addq.l   #8,a7                              
  02cb4  605e                  bra.s    L2d14                              
  02cb6  3f39ffff8da4          move.w   g_725c,-(a7)                       
  02cbc  2f3cffff887c          move.l   #$ffff887c,-(a7)                   
  02cc2  3f3c0003              move.w   #3,-(a7)                           
  02cc6  4ebafc7c              jsr      f2_2944                            
  02cca  508f                  addq.l   #8,a7                              
  02ccc  6046                  bra.s    L2d14                              
  02cce  3f39ffff8db8          move.w   g_7248,-(a7)                       
  02cd4  2f3cffff8e4a          move.l   #$ffff8e4a,-(a7)                   
  02cda  3f3c0007              move.w   #7,-(a7)                           
  02cde  4ebafc64              jsr      f2_2944                            
  02ce2  508f                  addq.l   #8,a7                              
  02ce4  602e                  bra.s    L2d14                              
  02ce6  3f39ffff8dba          move.w   g_7246,-(a7)                       
  02cec  2f3cffff8e56          move.l   #$ffff8e56,-(a7)                   
  02cf2  3f3c0008              move.w   #8,-(a7)                           
  02cf6  4ebafc4c              jsr      f2_2944                            
  02cfa  508f                  addq.l   #8,a7                              
  02cfc  6016                  bra.s    L2d14                              
  02cfe  3f39ffff8dbc          move.w   g_7244,-(a7)                       
  02d04  2f3cffff97d2          move.l   #$ffff97d2,-(a7)                   
  02d0a  3f3c0009              move.w   #9,-(a7)                           
  02d0e  4ebafc34              jsr      f2_2944                            
  02d12  508f                  addq.l   #8,a7                              
L2d14:
  02d14  0c470003              cmpi.w   #3,d7                              
  02d18  6604                  bne.s    L2d1e                              
  02d1a  4ead075a              jsr      f7_31f0                            
L2d1e:
  02d1e  4cdf1080              movem.l  (a7)+,d7/a4                        
  02d22  4e5e                  unlk     a6                                 
  02d24  4e75                  rts                                         
  02d26  ffee                  dc.w     $ffee                              
  02d28  ff60                  dc.w     $ff60                              
  02d2a  ff78                  dc.w     $ff78                              
  02d2c  ff90                  dc.w     $ff90                              
  02d2e  ffa8                  dc.w     $ffa8                              
  02d30  ffc0                  dc.w     $ffc0                              
  02d32  ffd8                  dc.w     $ffd8                              

;----------------------------------------------------------------------
; f2_2d34   [jump table #26]
;----------------------------------------------------------------------
f2_2d34:
  02d34  4e56fd3c              link     a6,#-708                           
  02d38  48e71f18              movem.l  d3/d4/d5/d6/d7/a3/a4,-(a7)         
  02d3c  3d7c003cfef4          move.w   #$3c,-$10c(a6)                     
  02d42  3d7c00c8ff0c          move.w   #$c8,-$f4(a6)                      
  02d48  7600                  moveq    #0,d3                              
  02d4a  7800                  moveq    #0,d4                              
  02d4c  1d7c0001fef7          move.b   #1,-$109(a6)                       
  02d52  422efef2              clr.b    -$10e(a6)                          
  02d56  4ead037a              jsr      f3_672c                            
  02d5a  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02d60  a916                  _HideWindow                                 ; $a916
  02d62  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  02d68  a916                  _HideWindow                                 ; $a916
  02d6a  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02d70  a916                  _HideWindow                                 ; $a916
  02d72  2d79ffffabf6fff0      move.l   g_540a,-$10(a6)                    
  02d7a  2d79ffffabfafff4      move.l   g_5406,-$c(a6)                     
  02d82  486efff0              pea      -$10(a6)                           
  02d86  2f3c00140014          move.l   #$140014,-(a7)                     
  02d8c  a8a9                  _InsetRect                                  ; $a8a9
  02d8e  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  02d94  a922                  _BeginUpdate                                ; $a922
  02d96  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  02d9c  a923                  _EndUpdate                                  ; $a923
  02d9e  4ead06b2              jsr      f6_0000                            
  02da2  1a00                  move.b   d0,d5                              
  02da4  4a05                  tst.b    d5                                 
  02da6  6704                  beq.s    L2dac                              
  02da8  4ead06e2              jsr      f7_1ed0                            
L2dac:
  02dac  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  02db2  201f                  move.l   (a7)+,d0                           
  02db4  a032                  _FlushEvents                                ; $a032
  02db6  4ead03aa              jsr      f3_5804                            
  02dba  4a39ffff3b0d          tst.b    g_c4f3                             
  02dc0  6604                  bne.s    L2dc6                              
  02dc2  4ead03b2              jsr      f3_5aae                            
L2dc6:
  02dc6  4a39ffff3b0d          tst.b    g_c4f3                             
  02dcc  6604                  bne.s    L2dd2                              
  02dce  4ead0362              jsr      f3_53da                            
L2dd2:
  02dd2  207cffff8e20          movea.l  #$ffff8e20,a0                      
  02dd8  70ff                  moveq    #-1,d0                             
  02dda  a030                  _OSEventAvail                               ; $a030
  02ddc  5240                  addq.w   #1,d0                              
  02dde  4a00                  tst.b    d0                                 
  02de0  6604                  bne.s    L2de6                              
  02de2  4ead03ca              jsr      f4_0000                            
L2de6:
  02de6  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  02dec  201f                  move.l   (a7)+,d0                           
  02dee  a032                  _FlushEvents                                ; $a032
  02df0  422eff7f              clr.b    -$81(a6)                           
  02df4  7c00                  moveq    #0,d6                              
  02df6  4279ffff8370          clr.w    g_7c90                             
  02dfc  6030                  bra.s    L2e2e                              
L2dfe:
  02dfe  4227                  clr.b    -(a7)                              
  02e00  3f3cffff              move.w   #$ffff,-(a7)                       
  02e04  2f3cffff8e20          move.l   #$ffff8e20,-(a7)                   
  02e0a  a970                  _GetNextEvent                               ; $a970
  02e0c  13dfffff8de9          move.b   (a7)+,g_7217                       
  02e12  0c790017ffff8e20      cmpi.w   #$17,g_71e0                        
  02e1a  6610                  bne.s    L2e2c                              
  02e1c  4267                  clr.w    -(a7)                              
  02e1e  2f3cffff8e20          move.l   #$ffff8e20,-(a7)                   
  02e24  303c021b              move.w   #$21b,d0                           
  02e28  a816                  _Pack8                                      ; $a816
  02e2a  548f                  addq.l   #2,a7                              
L2e2c:
  02e2c  5246                  addq.w   #1,d6                              
L2e2e:
  02e2e  0c46001e              cmpi.w   #$1e,d6                            
  02e32  6dca                  blt.s    L2dfe                              
  02e34  4a79ffff8370          tst.w    g_7c90                             
  02e3a  6e04                  bgt.s    L2e40                              
  02e3c  4ead076a              jsr      f7_33fe                            
L2e40:
  02e40  7800                  moveq    #0,d4                              
  02e42  42a7                  clr.l    -(a7)                              
  02e44  a8d8                  _NewRgn                                     ; $a8d8
  02e46  285f                  movea.l  (a7)+,a4                           
  02e48  60000492              bra.w    L32dc                              
L2e4c:
  02e4c  4a39ffff3b0d          tst.b    g_c4f3                             
  02e52  6622                  bne.s    L2e76                              
  02e54  0c790004ffff8894      cmpi.w   #4,g_776c                          
  02e5c  6f18                  ble.s    L2e76                              
  02e5e  4ead035a              jsr      f3_5328                            
  02e62  4ead0362              jsr      f3_53da                            
  02e66  4ead05ba              jsr      f5_36ba                            
  02e6a  1d40fef3              move.b   d0,-$10d(a6)                       
  02e6e  13fc0001ffff8de8      move.b   #1,g_7218                          
L2e76:
  02e76  4eba3616              jsr      f2_648e                            
  02e7a  4a39ffff3b0c          tst.b    g_c4f4                             
  02e80  6712                  beq.s    L2e94                              
  02e82  4a39ffff8dfb          tst.b    g_7205                             
  02e88  670a                  beq.s    L2e94                              
  02e8a  3f3c5c1c              move.w   #$5c1c,-(a7)                       
  02e8e  4ead030a              jsr      f3_4238                            
  02e92  548f                  addq.l   #2,a7                              
L2e94:
  02e94  4a39ffff8dfb          tst.b    g_7205                             
  02e9a  6604                  bne.s    L2ea0                              
  02e9c  4ead031a              jsr      f3_4424                            
L2ea0:
  02ea0  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02ea6  a873                  _SetPort                                    ; $a873
  02ea8  42a7                  clr.l    -(a7)                              
  02eaa  a924                  _FrontWindow                                ; $a924
  02eac  265f                  movea.l  (a7)+,a3                           
  02eae  486eff7f              pea      -$81(a6)                           
  02eb2  4ebad2fa              jsr      f2_01ae                            
  02eb6  4a79ffff8370          tst.w    g_7c90                             
  02ebc  588f                  addq.l   #4,a7                              
  02ebe  6e04                  bgt.s    L2ec4                              
  02ec0  4ead076a              jsr      f7_33fe                            
L2ec4:
  02ec4  487809ee              pea      ($9ee).w                           
  02ec8  2079ffff9382          movea.l  g_6c7e,a0                          
  02ece  2f280072              move.l   $72(a0),-(a7)                      
  02ed2  2f0c                  move.l   a4,-(a7)                           
  02ed4  a8e6                  _DiffRgn                                    ; $a8e6
  02ed6  4227                  clr.b    -(a7)                              
  02ed8  3f3cffff              move.w   #$ffff,-(a7)                       
  02edc  2f3cffff8e20          move.l   #$ffff8e20,-(a7)                   
  02ee2  4878001e              pea      ($1e).w                            
  02ee6  2f0c                  move.l   a4,-(a7)                           
  02ee8  a860                  _WaitNextEvent                              ; $a860
  02eea  4a1f                  tst.b    (a7)+                              
  02eec  6620                  bne.s    L2f0e                              
  02eee  486eff7f              pea      -$81(a6)                           
  02ef2  4ebad2ba              jsr      f2_01ae                            
  02ef6  b7f9ffff9382          cmpa.l   g_6c7e,a3                          
  02efc  588f                  addq.l   #4,a7                              
  02efe  670003dc              beq.w    L32dc                              
  02f02  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02f08  a920                  _BringToFront                               ; $a920
  02f0a  600003d0              bra.w    L32dc                              
L2f0e:
  02f0e  3039ffff8e20          move.w   g_71e0,d0                          
  02f14  0c400017              cmpi.w   #$17,d0                            
  02f18  620003c2              bhi.w    L32dc                              
  02f1c  43fa03e0              lea      L32fe(pc),a1                       
  02f20  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  02f24  4ed1                  jmp      (a1)                               
  02f26  4267                  clr.w    -(a7)                              
  02f28  2f39ffff8e2a          move.l   g_71d6,-(a7)                       
  02f2e  2f3cffff8fba          move.l   #$ffff8fba,-(a7)                   
  02f34  a92c                  _FindWindow                                 ; $a92c
  02f36  3e1f                  move.w   (a7)+,d7                           
  02f38  0c470006              cmpi.w   #6,d7                              
  02f3c  6200039e              bhi.w    L32dc                              
  02f40  43fa03ae              lea      L32f0(pc),a1                       
  02f44  d2f17200              adda.w   $0(a1,d7.w*2),a1                   
  02f48  4ed1                  jmp      (a1)                               
  02f4a  4ead033a              jsr      f3_46d8                            
  02f4e  42a7                  clr.l    -(a7)                              
  02f50  2f39ffff8e2a          move.l   g_71d6,-(a7)                       
  02f56  a93d                  _MenuSelect                                 ; $a93d
  02f58  4ebad5e6              jsr      f2_0540                            
  02f5c  588f                  addq.l   #4,a7                              
  02f5e  6000037c              bra.w    L32dc                              
  02f62  2f3cffff8e20          move.l   #$ffff8e20,-(a7)                   
  02f68  2f39ffff8fba          move.l   g_7046,-(a7)                       
  02f6e  a9b3                  _SystemClick                                ; $a9b3
  02f70  6000036a              bra.w    L32dc                              
  02f74  2f39ffff8fba          move.l   g_7046,-(a7)                       
  02f7a  a91f                  _SelectWindow                               ; $a91f
  02f7c  2f39ffff8fba          move.l   g_7046,-(a7)                       
  02f82  a920                  _BringToFront                               ; $a920
  02f84  2f39ffff8fba          move.l   g_7046,-(a7)                       
  02f8a  2f39ffff8e2a          move.l   g_71d6,-(a7)                       
  02f90  486efff0              pea      -$10(a6)                           
  02f94  a925                  _DragWindow                                 ; $a925
  02f96  2039ffff8fba          move.l   g_7046,d0                          
  02f9c  b0b9ffff9382          cmp.l    g_6c7e,d0                          
  02fa2  66000338              bne.w    L32dc                              
  02fa6  487809ee              pea      ($9ee).w                           
  02faa  2079ffff9382          movea.l  g_6c7e,a0                          
  02fb0  2f280072              move.l   $72(a0),-(a7)                      
  02fb4  2f0c                  move.l   a4,-(a7)                           
  02fb6  a8e6                  _DiffRgn                                    ; $a8e6
  02fb8  4ead075a              jsr      f7_31f0                            
  02fbc  4ead074a              jsr      f7_2f40                            
  02fc0  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02fc6  a920                  _BringToFront                               ; $a920
  02fc8  60000312              bra.w    L32dc                              
  02fcc  2039ffff8fba          move.l   g_7046,d0                          
  02fd2  b0b9ffff8fca          cmp.l    g_7036,d0                          
  02fd8  6710                  beq.s    L2fea                              
  02fda  2f39ffff8fba          move.l   g_7046,-(a7)                       
  02fe0  a91f                  _SelectWindow                               ; $a91f
  02fe2  2f39ffff8fba          move.l   g_7046,-(a7)                       
  02fe8  a920                  _BringToFront                               ; $a920
L2fea:
  02fea  2039ffff8fba          move.l   g_7046,d0                          
  02ff0  b0b9ffff9382          cmp.l    g_6c7e,d0                          
  02ff6  660000b0              bne.w    L30a8                              
  02ffa  b7f9ffff9382          cmpa.l   g_6c7e,a3                          
  03000  660000a6              bne.w    L30a8                              
  03004  42a7                  clr.l    -(a7)                              
  03006  a975                  _TickCount                                  ; $a975
  03008  201f                  move.l   (a7)+,d0                           
  0300a  9083                  sub.l    d3,d0                              
  0300c  721e                  moveq    #30,d1                             
  0300e  b280                  cmp.l    d0,d1                              
  03010  642c                  bcc.s    L303e                              
  03012  42a7                  clr.l    -(a7)                              
  03014  a975                  _TickCount                                  ; $a975
  03016  261f                  move.l   (a7)+,d3                           
  03018  2d79ffff8e2afefc      move.l   g_71d6,-$104(a6)                   
  03020  23f9ffff8fbaffff9386  move.l   g_7046,g_6c7a                      
  0302a  0c2e000aff7f          cmpi.b   #$a,-$81(a6)                       
  03030  6f76                  ble.s    L30a8                              
  03032  1f2eff7f              move.b   -$81(a6),-(a7)                     
  03036  4ebaf00a              jsr      f2_2042                            
  0303a  548f                  addq.l   #2,a7                              
  0303c  606a                  bra.s    L30a8                              
L303e:
  0303e  3039ffff8e2c          move.w   g_71d4,d0                          
  03044  906efefe              sub.w    -$102(a6),d0                       
  03048  3f00                  move.w   d0,-(a7)                           
  0304a  4eba49e0              jsr      f2_7a2c                            
  0304e  5740                  subq.w   #3,d0                              
  03050  548f                  addq.l   #2,a7                              
  03052  6c2a                  bge.s    L307e                              
  03054  3039ffff8e2a          move.w   g_71d6,d0                          
  0305a  906efefc              sub.w    -$104(a6),d0                       
  0305e  3f00                  move.w   d0,-(a7)                           
  03060  4eba49ca              jsr      f2_7a2c                            
  03064  5740                  subq.w   #3,d0                              
  03066  548f                  addq.l   #2,a7                              
  03068  6c14                  bge.s    L307e                              
  0306a  0c2e0014ff7f          cmpi.b   #$14,-$81(a6)                      
  03070  6c36                  bge.s    L30a8                              
  03072  1f2eff7f              move.b   -$81(a6),-(a7)                     
  03076  4ead029a              jsr      f3_0b2a                            
  0307a  548f                  addq.l   #2,a7                              
  0307c  602a                  bra.s    L30a8                              
L307e:
  0307e  42a7                  clr.l    -(a7)                              
  03080  a975                  _TickCount                                  ; $a975
  03082  261f                  move.l   (a7)+,d3                           
  03084  2d79ffff8e2afefc      move.l   g_71d6,-$104(a6)                   
  0308c  23f9ffff8fbaffff9386  move.l   g_7046,g_6c7a                      
  03096  0c2e000aff7f          cmpi.b   #$a,-$81(a6)                       
  0309c  6f0a                  ble.s    L30a8                              
  0309e  1f2eff7f              move.b   -$81(a6),-(a7)                     
  030a2  4ebaef9e              jsr      f2_2042                            
  030a6  548f                  addq.l   #2,a7                              
L30a8:
  030a8  2039ffff8fba          move.l   g_7046,d0                          
  030ae  b0b9ffff8fd6          cmp.l    g_702a,d0                          
  030b4  671e                  beq.s    L30d4                              
  030b6  2039ffff8fba          move.l   g_7046,d0                          
  030bc  b0b9ffff8fc2          cmp.l    g_703e,d0                          
  030c2  6710                  beq.s    L30d4                              
  030c4  2039ffff8fba          move.l   g_7046,d0                          
  030ca  b0b9ffff8fc6          cmp.l    g_703a,d0                          
  030d0  6600020a              bne.w    L32dc                              
L30d4:
  030d4  42a7                  clr.l    -(a7)                              
  030d6  a975                  _TickCount                                  ; $a975
  030d8  201f                  move.l   (a7)+,d0                           
  030da  9083                  sub.l    d3,d0                              
  030dc  721e                  moveq    #30,d1                             
  030de  b280                  cmp.l    d0,d1                              
  030e0  6412                  bcc.s    L30f4                              
  030e2  42a7                  clr.l    -(a7)                              
  030e4  a975                  _TickCount                                  ; $a975
  030e6  261f                  move.l   (a7)+,d3                           
  030e8  2d79ffff8e2afefc      move.l   g_71d6,-$104(a6)                   
  030f0  600001ea              bra.w    L32dc                              
L30f4:
  030f4  3039ffff8e2c          move.w   g_71d4,d0                          
  030fa  906efefe              sub.w    -$102(a6),d0                       
  030fe  3f00                  move.w   d0,-(a7)                           
  03100  4eba492a              jsr      f2_7a2c                            
  03104  5740                  subq.w   #3,d0                              
  03106  548f                  addq.l   #2,a7                              
  03108  6c00009a              bge.w    L31a4                              
  0310c  3039ffff8e2a          move.w   g_71d6,d0                          
  03112  906efefc              sub.w    -$104(a6),d0                       
  03116  3f00                  move.w   d0,-(a7)                           
  03118  4eba4912              jsr      f2_7a2c                            
  0311c  5740                  subq.w   #3,d0                              
  0311e  548f                  addq.l   #2,a7                              
  03120  6c000082              bge.w    L31a4                              
  03124  42a7                  clr.l    -(a7)                              
  03126  a975                  _TickCount                                  ; $a975
  03128  201f                  move.l   (a7)+,d0                           
  0312a  9083                  sub.l    d3,d0                              
  0312c  721e                  moveq    #30,d1                             
  0312e  b280                  cmp.l    d0,d1                              
  03130  6572                  bcs.s    L31a4                              
  03132  2039ffff8fba          move.l   g_7046,d0                          
  03138  b0b9ffff8fd6          cmp.l    g_702a,d0                          
  0313e  6618                  bne.s    L3158                              
  03140  1f3c00ff              move.b   #$ff,-(a7)                         
  03144  4ead029a              jsr      f3_0b2a                            
  03148  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  03150  5279ffff3ace          addq.w   #1,g_c532                          
  03156  548f                  addq.l   #2,a7                              
L3158:
  03158  2039ffff8fba          move.l   g_7046,d0                          
  0315e  b0b9ffff8fc2          cmp.l    g_703e,d0                          
  03164  6618                  bne.s    L317e                              
  03166  1f3c00fe              move.b   #$fe,-(a7)                         
  0316a  4ead029a              jsr      f3_0b2a                            
  0316e  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  03176  5279ffff3ace          addq.w   #1,g_c532                          
  0317c  548f                  addq.l   #2,a7                              
L317e:
  0317e  2039ffff8fba          move.l   g_7046,d0                          
  03184  b0b9ffff8fc6          cmp.l    g_703a,d0                          
  0318a  66000150              bne.w    L32dc                              
  0318e  4ebaec9c              jsr      f2_1e2c                            
  03192  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  0319a  5279ffff3ace          addq.w   #1,g_c532                          
  031a0  6000013a              bra.w    L32dc                              
L31a4:
  031a4  42a7                  clr.l    -(a7)                              
  031a6  a975                  _TickCount                                  ; $a975
  031a8  261f                  move.l   (a7)+,d3                           
  031aa  2d79ffff8e2afefc      move.l   g_71d6,-$104(a6)                   
  031b2  23f9ffff8fbaffff9386  move.l   g_7046,g_6c7a                      
  031bc  6000011e              bra.w    L32dc                              
  031c0  4227                  clr.b    -(a7)                              
  031c2  2f39ffff8fba          move.l   g_7046,-(a7)                       
  031c8  2f39ffff8e2a          move.l   g_71d6,-(a7)                       
  031ce  a91e                  _TrackGoAway                                ; $a91e
  031d0  4a1f                  tst.b    (a7)+                              
  031d2  67000108              beq.w    L32dc                              
  031d6  2f39ffff8fba          move.l   g_7046,-(a7)                       
  031dc  a916                  _HideWindow                                 ; $a916
  031de  4ead03a2              jsr      f3_57b2                            
  031e2  600000f8              bra.w    L32dc                              
  031e6  23f9ffff8e22ffff8fba  move.l   g_71de,g_7046                      
  031f0  2f39ffff8fba          move.l   g_7046,-(a7)                       
  031f6  4ead0532              jsr      f5_146e                            
  031fa  588f                  addq.l   #4,a7                              
  031fc  600000de              bra.w    L32dc                              
  03200  70ff                  moveq    #-1,d0                             
  03202  c039ffff8e25          and.b    g_71db,d0                          
  03208  1d40ff7f              move.b   d0,-$81(a6)                        
  0320c  0c000060              cmpi.b   #$60,d0                            
  03210  6f0e                  ble.s    L3220                              
  03212  0c2e007bff7f          cmpi.b   #$7b,-$81(a6)                      
  03218  6c06                  bge.s    L3220                              
  0321a  022e00dfff7f          andi.b   #$df,-$81(a6)                      
L3220:
  03220  08390000ffff8e2e      btst     #0,g_71d2                          
  03228  672a                  beq.s    L3254                              
  0322a  0c2e002eff7f          cmpi.b   #$2e,-$81(a6)                      
  03230  660c                  bne.s    L323e                              
  03232  13fc0001ffff8de8      move.b   #1,g_7218                          
  0323a  600000a0              bra.w    L32dc                              
L323e:
  0323e  42a7                  clr.l    -(a7)                              
  03240  102eff7f              move.b   -$81(a6),d0                        
  03244  49c0                  extb.l   d0                                 
  03246  3f00                  move.w   d0,-(a7)                           
  03248  a93e                  _MenuKey                                    ; $a93e
  0324a  4ebad2f4              jsr      f2_0540                            
  0324e  588f                  addq.l   #4,a7                              
  03250  6000008a              bra.w    L32dc                              
L3254:
  03254  102eff7f              move.b   -$81(a6),d0                        
  03258  6b000082              bmi.w    L32dc                              
  0325c  04000052              subi.b   #$52,d0                            
  03260  6a16                  bpl.s    L3278                              
  03262  5c00                  addq.b   #6,d0                              
  03264  6728                  beq.s    L328e                              
  03266  6a0a                  bpl.s    L3272                              
  03268  5a00                  addq.b   #5,d0                              
  0326a  6a70                  bpl.s    L32dc                              
  0326c  5400                  addq.b   #2,d0                              
  0326e  6a1e                  bpl.s    L328e                              
  03270  606a                  bra.s    L32dc                              
L3272:
  03272  5500                  subq.b   #2,d0                              
  03274  6718                  beq.s    L328e                              
  03276  6064                  bra.s    L32dc                              
L3278:
  03278  5d00                  subq.b   #6,d0                              
  0327a  6a0a                  bpl.s    L3286                              
  0327c  5400                  addq.b   #2,d0                              
  0327e  6a0e                  bpl.s    L328e                              
  03280  5400                  addq.b   #2,d0                              
  03282  6a58                  bpl.s    L32dc                              
  03284  6008                  bra.s    L328e                              
L3286:
  03286  04000026              subi.b   #$26,d0                            
  0328a  6702                  beq.s    L328e                              
  0328c  604e                  bra.s    L32dc                              
L328e:
  0328e  1f2eff7f              move.b   -$81(a6),-(a7)                     
  03292  4ebaedae              jsr      f2_2042                            
  03296  548f                  addq.l   #2,a7                              
  03298  6042                  bra.s    L32dc                              
  0329a  08390000ffff8e22      btst     #0,g_71de                          
  032a2  6738                  beq.s    L32dc                              
  032a4  08390000ffff8e25      btst     #0,g_71db                          
  032ac  670a                  beq.s    L32b8                              
  032ae  13eefef1ffff9933      move.b   -$10f(a6),g_66cd                   
  032b6  6008                  bra.s    L32c0                              
L32b8:
  032b8  1d79ffff9933fef1      move.b   g_66cd,-$10f(a6)                   
L32c0:
  032c0  4ead033a              jsr      f3_46d8                            
  032c4  4239ffff9933          clr.b    g_66cd                             
  032ca  6010                  bra.s    L32dc                              
  032cc  4267                  clr.w    -(a7)                              
  032ce  2f3cffff8e20          move.l   #$ffff8e20,-(a7)                   
  032d4  303c021b              move.w   #$21b,d0                           
  032d8  a816                  _Pack8                                      ; $a816
  032da  548f                  addq.l   #2,a7                              
L32dc:
  032dc  4a39ffff8de8          tst.b    g_7218                             
  032e2  6700fb68              beq.w    L2e4c                              
  032e6  a9f4                  _ExitToShell                                ; $a9f4
  032e8  4cdf18f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a3/a4         
  032ec  4e5e                  unlk     a6                                 
  032ee  4e75                  rts                                         
  032f0  ffec                  dc.w     $ffec                              
  032f2  fc5a                  dc.w     $fc5a                              
  032f4  fc72                  dc.w     $fc72                              
  032f6  fcdc                  dc.w     $fcdc                              
  032f8  fc84                  dc.w     $fc84                              
  032fa  ffec                  dc.w     $ffec                              
  032fc  fed0                  dc.w     $fed0                              
  032fe  ffde                  dc.w     $ffde                              
  03300  fc28                  dc.w     $fc28                              
  03302  ffde                  dc.w     $ffde                              
  03304  ff02                  dc.w     $ff02                              
  03306  ffde                  dc.w     $ffde                              
  03308  ffde                  dc.w     $ffde                              
  0330a  fee8                  dc.w     $fee8                              
  0330c  ffde                  dc.w     $ffde                              
  0330e  ffde                  dc.w     $ffde                              
  03310  ffde                  dc.w     $ffde                              
  03312  ffde                  dc.w     $ffde                              
  03314  ffde                  dc.w     $ffde                              
  03316  ffde                  dc.w     $ffde                              
  03318  ffde                  dc.w     $ffde                              
  0331a  ffde                  dc.w     $ffde                              
  0331c  ff9c                  dc.w     $ff9c                              
  0331e  ffde                  dc.w     $ffde                              
  03320  ffde                  dc.w     $ffde                              
  03322  ffde                  dc.w     $ffde                              
  03324  ffde                  dc.w     $ffde                              
  03326  ffde                  dc.w     $ffde                              
  03328  ffde                  dc.w     $ffde                              
  0332a  ffde                  dc.w     $ffde                              
  0332c  ffce                  dc.w     $ffce                              

;----------------------------------------------------------------------
; f2_332e   [jump table #27]
;----------------------------------------------------------------------
f2_332e:
  0332e  4e56fff2              link     a6,#-14                            
  03332  48e70108              movem.l  d7/a4,-(a7)                        
  03336  286e0008              movea.l  $8(a6),a4                          
  0333a  7e01                  moveq    #1,d7                              
  0333c  6030                  bra.s    L336e                              
L333e:
  0333e  2f0c                  move.l   a4,-(a7)                           
  03340  3f07                  move.w   d7,-(a7)                           
  03342  486efffa              pea      -$6(a6)                            
  03346  486efffc              pea      -$4(a6)                            
  0334a  486efff2              pea      -$e(a6)                            
  0334e  a98d                  _GetDialogItem                              ; $a98d
  03350  2f2efffc              move.l   -$4(a6),-(a7)                      
  03354  303673250010          move.w   ([$10,a6],d7.w*2,$0),d0            
  0335a  2f3005b0ffff75ca      move.l   (-$8a36,za0,d0.w*4),-(a7)          
  03362  a95f                  _SetCTitle                                  ; $a95f
  03364  2f2efffc              move.l   -$4(a6),-(a7)                      
  03368  4267                  clr.w    -(a7)                              
  0336a  a963                  _SetCtlValue                                ; $a963
  0336c  5247                  addq.w   #1,d7                              
L336e:
  0336e  206e000c              movea.l  $c(a6),a0                          
  03372  be50                  cmp.w    (a0),d7                            
  03374  6fc8                  ble.s    L333e                              
  03376  206e000c              movea.l  $c(a6),a0                          
  0337a  7e01                  moveq    #1,d7                              
  0337c  de50                  add.w    (a0),d7                            
  0337e  6008                  bra.s    L3388                              
L3380:
  03380  2f0c                  move.l   a4,-(a7)                           
  03382  3f07                  move.w   d7,-(a7)                           
  03384  a827                  _ShowDialogItem                             ; $a827
  03386  5247                  addq.w   #1,d7                              
L3388:
  03388  0c470006              cmpi.w   #6,d7                              
  0338c  6df2                  blt.s    L3380                              
  0338e  2f0c                  move.l   a4,-(a7)                           
  03390  a920                  _BringToFront                               ; $a920
  03392  2f0c                  move.l   a4,-(a7)                           
  03394  a915                  _ShowWindow                                 ; $a915
  03396  2f0c                  move.l   a4,-(a7)                           
  03398  a981                  _DrawDialog                                 ; $a981
  0339a  4cdf1080              movem.l  (a7)+,d7/a4                        
  0339e  4e5e                  unlk     a6                                 
  033a0  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_33a2   [jump table #28]
;----------------------------------------------------------------------
f2_33a2:
  033a2  4e56f906              link     a6,#-1786                          
  033a6  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  033aa  1e2e0008              move.b   $8(a6),d7                          
  033ae  3c2e000e              move.w   $e(a6),d6                          
  033b2  3a2e000c              move.w   $c(a6),d5                          
  033b6  3d79ffff3ad0ff2e      move.w   g_c530,-$d2(a6)                    
  033be  2d7c000001f4f90a      move.l   #$1f4,-$6f6(a6)                    
  033c6  1d7c0001f908          move.b   #1,-$6f8(a6)                       
  033cc  1d79ffff9812f907      move.b   g_67ee,-$6f9(a6)                   
  033d4  1d79ffff9813f906      move.b   g_67ed,-$6fa(a6)                   
  033dc  4a39ffff9810          tst.b    g_67f0                             
  033e2  661e                  bne.s    L3402                              
  033e4  4a39ffff9811          tst.b    g_67ef                             
  033ea  6616                  bne.s    L3402                              
  033ec  4a39ffff9812          tst.b    g_67ee                             
  033f2  660e                  bne.s    L3402                              
  033f4  4a39ffff9813          tst.b    g_67ed                             
  033fa  6606                  bne.s    L3402                              
  033fc  7000                  moveq    #0,d0                              
  033fe  600005f4              bra.w    L39f4                              
L3402:
  03402  4a07                  tst.b    d7                                 
  03404  661e                  bne.s    L3424                              
  03406  4239ffff9812          clr.b    g_67ee                             
  0340c  4239ffff9813          clr.b    g_67ed                             
  03412  0c79000affff3ad0      cmpi.w   #$a,g_c530                         
  0341a  6f08                  ble.s    L3424                              
  0341c  33fc000affff3ad0      move.w   #$a,g_c530                         
L3424:
  03424  4a79ffff3ad0          tst.w    g_c530                             
  0342a  6e08                  bgt.s    L3434                              
  0342c  33fc0005ffff3ad0      move.w   #5,g_c530                          
L3434:
  03434  4a79ffff3ad2          tst.w    g_c52e                             
  0343a  6e08                  bgt.s    L3444                              
  0343c  33fc0001ffff3ad2      move.w   #1,g_c52e                          
L3444:
  03444  4279ffff98e8          clr.w    g_6718                             
  0344a  4a07                  tst.b    d7                                 
  0344c  6602                  bne.s    L3450                              
  0344e  a852                  _HideCursor                                 ; $a852
L3450:
  03450  486efff8              pea      -$8(a6)                            
  03454  2f3c008200c8          move.l   #$8200c8,-(a7)                     
  0345a  2f3c00a200e8          move.l   #$a200e8,-(a7)                     
  03460  a8a7                  _SetRect                                    ; $a8a7
  03462  4a07                  tst.b    d7                                 
  03464  6710                  beq.s    L3476                              
  03466  486efc12              pea      -$3ee(a6)                          
  0346a  2f3c000200d3          move.l   #$200d3,-(a7)                      
  03470  4ead0522              jsr      f4_153c                            
  03474  600e                  bra.s    L3484                              
L3476:
  03476  486efc12              pea      -$3ee(a6)                          
  0347a  2f3c000100d3          move.l   #$100d3,-(a7)                      
  03480  4ead0522              jsr      f4_153c                            
L3484:
  03484  4a2e000a              tst.b    $a(a6)                             
  03488  670e                  beq.s    L3498                              
  0348a  486efc12              pea      -$3ee(a6)                          
  0348e  2f3c000300d3          move.l   #$300d3,-(a7)                      
  03494  4ead0522              jsr      f4_153c                            
L3498:
  03498  4a2e000a              tst.b    $a(a6)                             
  0349c  6712                  beq.s    L34b0                              
  0349e  4a45                  tst.w    d5                                 
  034a0  6c0e                  bge.s    L34b0                              
  034a2  486efc12              pea      -$3ee(a6)                          
  034a6  2f3c000400d3          move.l   #$400d3,-(a7)                      
  034ac  4ead0522              jsr      f4_153c                            
L34b0:
  034b0  486efc12              pea      -$3ee(a6)                          
  034b4  2f3c0000016c          move.l   STR_016c,-(a7)                     ; "?"
  034ba  2f3c0000016e          move.l   STR_016e,-(a7)                     ; "?"
  034c0  2f3c00000170          move.l   STR_0170,-(a7)                     ; "?"
  034c6  a98b                  _ParamText                                  ; $a98b
  034c8  42a7                  clr.l    -(a7)                              
  034ca  3f3c00d0              move.w   #$d0,-(a7)                         
  034ce  486eff46              pea      -$ba(a6)                           
  034d2  4878ffff              pea      ($ffff).w                          
  034d6  a97c                  _GetNewDialog                               ; $a97c
  034d8  285f                  movea.l  (a7)+,a4                           
  034da  2f0c                  move.l   a4,-(a7)                           
  034dc  4ead06ba              jsr      f7_161c                            
  034e0  2e8c                  move.l   a4,(a7)                            
  034e2  3f3c0005              move.w   #5,-(a7)                           
  034e6  a827                  _ShowDialogItem                             ; $a827
  034e8  4a07                  tst.b    d7                                 
  034ea  6708                  beq.s    L34f4                              
  034ec  2f0c                  move.l   a4,-(a7)                           
  034ee  3f3c0003              move.w   #3,-(a7)                           
  034f2  a827                  _ShowDialogItem                             ; $a827
L34f4:
  034f4  2f0c                  move.l   a4,-(a7)                           
  034f6  a915                  _ShowWindow                                 ; $a915
  034f8  2f0c                  move.l   a4,-(a7)                           
  034fa  a981                  _DrawDialog                                 ; $a981
  034fc  2f0c                  move.l   a4,-(a7)                           
  034fe  a873                  _SetPort                                    ; $a873
  03500  4a07                  tst.b    d7                                 
  03502  661e                  bne.s    L3522                              
  03504  42b9ffff83a6          clr.l    g_7c5a                             
  0350a  486efff0              pea      -$10(a6)                           
  0350e  2f3c006e0005          move.l   #$6e0005,-(a7)                     
  03514  2f3c00a00037          move.l   #$a00037,-(a7)                     
  0351a  a8a7                  _SetRect                                    ; $a8a7
  0351c  486efff0              pea      -$10(a6)                           
  03520  a8b7                  _FrameOval                                  ; $a8b7
L3522:
  03522  42a7                  clr.l    -(a7)                              
  03524  a975                  _TickCount                                  ; $a975
  03526  23dfffff9824          move.l   (a7)+,g_67dc                       
  0352c  4a07                  tst.b    d7                                 
  0352e  662c                  bne.s    L355c                              
L3530:
  03530  4227                  clr.b    -(a7)                              
  03532  a974                  _Button                                     ; $a974
  03534  4a1f                  tst.b    (a7)+                              
  03536  6614                  bne.s    L354c                              
  03538  42a7                  clr.l    -(a7)                              
  0353a  a975                  _TickCount                                  ; $a975
  0353c  201f                  move.l   (a7)+,d0                           
  0353e  90b9ffff9824          sub.l    g_67dc,d0                          
  03544  0c8000001c20          cmpi.l   #$1c20,d0                          
  0354a  65e4                  bcs.s    L3530                              
L354c:
  0354c  2f0c                  move.l   a4,-(a7)                           
  0354e  3f3c0003              move.w   #3,-(a7)                           
  03552  a827                  _ShowDialogItem                             ; $a827
  03554  2f0c                  move.l   a4,-(a7)                           
  03556  3f3c0004              move.w   #4,-(a7)                           
  0355a  a827                  _ShowDialogItem                             ; $a827
L355c:
  0355c  4a45                  tst.w    d5                                 
  0355e  6c02                  bge.s    L3562                              
  03560  7a00                  moveq    #0,d5                              
L3562:
  03562  4a07                  tst.b    d7                                 
  03564  6708                  beq.s    L356e                              
  03566  2f0c                  move.l   a4,-(a7)                           
  03568  3f3c0005              move.w   #5,-(a7)                           
  0356c  a828                  _LayerDispatch                              ; $a828
L356e:
  0356e  4a07                  tst.b    d7                                 
  03570  6628                  bne.s    L359a                              
  03572  486eff3a              pea      -$c6(a6)                           
  03576  486eff42              pea      -$be(a6)                           
  0357a  4267                  clr.w    -(a7)                              
  0357c  3f39ffff3ad2          move.w   g_c52e,-(a7)                       
  03582  3f39ffff3ad0          move.w   g_c530,-(a7)                       
  03588  2f0c                  move.l   a4,-(a7)                           
  0358a  4eba3108              jsr      f2_6694                            
  0358e  3d40ff32              move.w   d0,-$ce(a6)                        
  03592  4fef0012              lea      $12(a7),a7                         
  03596  6000010c              bra.w    L36a4                              
L359a:
  0359a  4a2e000a              tst.b    $a(a6)                             
  0359e  67000090              beq.w    L3630                              
  035a2  486eff3a              pea      -$c6(a6)                           
  035a6  486eff42              pea      -$be(a6)                           
  035aa  3f3c0001              move.w   #1,-(a7)                           
  035ae  3f39ffff3ad2          move.w   g_c52e,-(a7)                       
  035b4  3f39ffff3ad0          move.w   g_c530,-(a7)                       
  035ba  2f0c                  move.l   a4,-(a7)                           
  035bc  4eba30d6              jsr      f2_6694                            
  035c0  3d40ff32              move.w   d0,-$ce(a6)                        
  035c4  323c0276              move.w   #$276,d1                           
  035c8  c3c5                  muls.w   d5,d1                              
  035ca  741e                  moveq    #30,d2                             
  035cc  c5c6                  muls.w   d6,d2                              
  035ce  0681ffff7892          addi.l   #$ffff7892,d1                      
  035d4  d282                  add.l    d2,d1                              
  035d6  2041                  movea.l  d1,a0                              
  035d8  30aeff3c              move.w   -$c4(a6),(a0)                      
  035dc  323c0276              move.w   #$276,d1                           
  035e0  c3c5                  muls.w   d5,d1                              
  035e2  741e                  moveq    #30,d2                             
  035e4  c5c6                  muls.w   d6,d2                              
  035e6  0681ffff7892          addi.l   #$ffff7892,d1                      
  035ec  d282                  add.l    d2,d1                              
  035ee  2041                  movea.l  d1,a0                              
  035f0  316eff3e0002          move.w   -$c2(a6),$2(a0)                    
  035f6  323c0276              move.w   #$276,d1                           
  035fa  c3c5                  muls.w   d5,d1                              
  035fc  741e                  moveq    #30,d2                             
  035fe  c5c6                  muls.w   d6,d2                              
  03600  0681ffff7892          addi.l   #$ffff7892,d1                      
  03606  d282                  add.l    d2,d1                              
  03608  2041                  movea.l  d1,a0                              
  0360a  316eff420004          move.w   -$be(a6),$4(a0)                    
  03610  323c0276              move.w   #$276,d1                           
  03614  c3c5                  muls.w   d5,d1                              
  03616  741e                  moveq    #30,d2                             
  03618  c5c6                  muls.w   d6,d2                              
  0361a  0681ffff7892          addi.l   #$ffff7892,d1                      
  03620  d282                  add.l    d2,d1                              
  03622  2041                  movea.l  d1,a0                              
  03624  316eff400006          move.w   -$c0(a6),$6(a0)                    
  0362a  4fef0012              lea      $12(a7),a7                         
  0362e  6074                  bra.s    L36a4                              
L3630:
  03630  303c0276              move.w   #$276,d0                           
  03634  c1c5                  muls.w   d5,d0                              
  03636  721e                  moveq    #30,d1                             
  03638  c3c6                  muls.w   d6,d1                              
  0363a  0680ffff7892          addi.l   #$ffff7892,d0                      
  03640  d081                  add.l    d1,d0                              
  03642  2040                  movea.l  d0,a0                              
  03644  3d50ff3c              move.w   (a0),-$c4(a6)                      
  03648  303c0276              move.w   #$276,d0                           
  0364c  c1c5                  muls.w   d5,d0                              
  0364e  721e                  moveq    #30,d1                             
  03650  c3c6                  muls.w   d6,d1                              
  03652  0680ffff7892          addi.l   #$ffff7892,d0                      
  03658  d081                  add.l    d1,d0                              
  0365a  2040                  movea.l  d0,a0                              
  0365c  3d680002ff3e          move.w   $2(a0),-$c2(a6)                    
  03662  303c0276              move.w   #$276,d0                           
  03666  c1c5                  muls.w   d5,d0                              
  03668  721e                  moveq    #30,d1                             
  0366a  c3c6                  muls.w   d6,d1                              
  0366c  0680ffff7892          addi.l   #$ffff7892,d0                      
  03672  d081                  add.l    d1,d0                              
  03674  2040                  movea.l  d0,a0                              
  03676  3d680004ff42          move.w   $4(a0),-$be(a6)                    
  0367c  303c0276              move.w   #$276,d0                           
  03680  c1c5                  muls.w   d5,d0                              
  03682  721e                  moveq    #30,d1                             
  03684  c3c6                  muls.w   d6,d1                              
  03686  0680ffff7892          addi.l   #$ffff7892,d0                      
  0368c  d081                  add.l    d1,d0                              
  0368e  2040                  movea.l  d0,a0                              
  03690  3d680006ff40          move.w   $6(a0),-$c0(a6)                    
  03696  3f2eff40              move.w   -$c0(a6),-(a7)                     
  0369a  486eff3a              pea      -$c6(a6)                           
  0369e  4ebad2c4              jsr      f2_0964                            
  036a2  5c8f                  addq.l   #6,a7                              
L36a4:
  036a4  306eff42              movea.w  -$be(a6),a0                        
  036a8  2f08                  move.l   a0,-(a7)                           
  036aa  486efe12              pea      -$1ee(a6)                          
  036ae  4ead0512              jsr      f4_150e                            
  036b2  486efe12              pea      -$1ee(a6)                          
  036b6  4eba4328              jsr      f2_79e0                            
  036ba  3d40ff30              move.w   d0,-$d0(a6)                        
  036be  7801                  moveq    #1,d4                              
  036c0  588f                  addq.l   #4,a7                              
  036c2  600a                  bra.s    L36ce                              
L36c4:
  036c4  1dbc00204120fe12      move.b   #$20,(-$1ee,a6,d4.w)               
  036cc  5244                  addq.w   #1,d4                              
L36ce:
  036ce  b86eff30              cmp.w    -$d0(a6),d4                        
  036d2  6ff0                  ble.s    L36c4                              
  036d4  1d7c005ffe13          move.b   #$5f,-$1ed(a6)                     
  036da  3d7c0001ff3a          move.w   #1,-$c6(a6)                        
  036e0  3f3c008c              move.w   #$8c,-(a7)                         
  036e4  486efe12              pea      -$1ee(a6)                          
  036e8  4ebad0c8              jsr      f2_07b2                            
  036ec  486eff38              pea      -$c8(a6)                           
  036f0  486eff36              pea      -$ca(a6)                           
  036f4  3f2eff42              move.w   -$be(a6),-(a7)                     
  036f8  486eff3a              pea      -$c6(a6)                           
  036fc  4eba2170              jsr      f2_586e                            
  03700  4a07                  tst.b    d7                                 
  03702  4fef0014              lea      $14(a7),a7                         
  03706  660e                  bne.s    L3716                              
  03708  3f3c00d0              move.w   #$d0,-(a7)                         
  0370c  486efff8              pea      -$8(a6)                            
  03710  4ead06d2              jsr      f7_1a72                            
  03714  5c8f                  addq.l   #6,a7                              
L3716:
  03716  42a7                  clr.l    -(a7)                              
  03718  a975                  _TickCount                                  ; $a975
  0371a  23dfffff9824          move.l   (a7)+,g_67dc                       
  03720  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  03726  201f                  move.l   (a7)+,d0                           
  03728  a032                  _FlushEvents                                ; $a032
L372a:
  0372a  3d7cffffff44          move.w   #$ffff,-$bc(a6)                    
  03730  4a07                  tst.b    d7                                 
  03732  6604                  bne.s    L3738                              
  03734  4eba17be              jsr      f2_4ef4                            
L3738:
  03738  1f07                  move.b   d7,-(a7)                           
  0373a  486eff44              pea      -$bc(a6)                           
  0373e  2f0c                  move.l   a4,-(a7)                           
  03740  4eba1808              jsr      f2_4f4a                            
  03744  0c6e0400ff44          cmpi.w   #$400,-$bc(a6)                     
  0374a  4fef000a              lea      $a(a7),a7                          
  0374e  6612                  bne.s    L3762                              
  03750  33fc0190ffff98e8      move.w   #$190,g_6718                       
  03758  3d7cffffff44          move.w   #$ffff,-$bc(a6)                    
  0375e  422ef908              clr.b    -$6f8(a6)                          
L3762:
  03762  0c6e0800ff44          cmpi.w   #$800,-$bc(a6)                     
  03768  662c                  bne.s    L3796                              
  0376a  2f0c                  move.l   a4,-(a7)                           
  0376c  a922                  _BeginUpdate                                ; $a922
  0376e  2f0c                  move.l   a4,-(a7)                           
  03770  a981                  _DrawDialog                                 ; $a981
  03772  3f2eff40              move.w   -$c0(a6),-(a7)                     
  03776  486eff3a              pea      -$c6(a6)                           
  0377a  4ebad1e8              jsr      f2_0964                            
  0377e  3ebc008c              move.w   #$8c,(a7)                          
  03782  486efe12              pea      -$1ee(a6)                          
  03786  4ebad02a              jsr      f2_07b2                            
  0378a  3d7cffffff44          move.w   #$ffff,-$bc(a6)                    
  03790  2e8c                  move.l   a4,(a7)                            
  03792  a923                  _EndUpdate                                  ; $a923
  03794  5c8f                  addq.l   #6,a7                              
L3796:
  03796  0c6e0008ff44          cmpi.w   #8,-$bc(a6)                        
  0379c  661e                  bne.s    L37bc                              
  0379e  1d7c0001f909          move.b   #1,-$6f7(a6)                       
  037a4  0c6e0001ff3a          cmpi.w   #1,-$c6(a6)                        
  037aa  6f10                  ble.s    L37bc                              
  037ac  302eff3a              move.w   -$c6(a6),d0                        
  037b0  1dbc00200120fe12      move.b   #$20,(-$1ee,a6,d0.w)               
  037b8  536eff3a              subq.w   #1,-$c6(a6)                        
L37bc:
  037bc  0c6effffff44          cmpi.w   #$ffff,-$bc(a6)                    
  037c2  670001f6              beq.w    L39ba                              
  037c6  0c6e0008ff44          cmpi.w   #8,-$bc(a6)                        
  037cc  6724                  beq.s    L37f2                              
  037ce  422ef909              clr.b    -$6f7(a6)                          
  037d2  302eff3a              move.w   -$c6(a6),d0                        
  037d6  1daeff450120fe12      move.b   -$bb(a6),(-$1ee,a6,d0.w)           
  037de  302eff3a              move.w   -$c6(a6),d0                        
  037e2  b06eff36              cmp.w    -$ca(a6),d0                        
  037e6  6c0a                  bge.s    L37f2                              
  037e8  526eff3a              addq.w   #1,-$c6(a6)                        
  037ec  1d7c0001f909          move.b   #1,-$6f7(a6)                       
L37f2:
  037f2  4a2ef909              tst.b    -$6f7(a6)                          
  037f6  671e                  beq.s    L3816                              
  037f8  302eff3a              move.w   -$c6(a6),d0                        
  037fc  1dbc005f0120fe12      move.b   #$5f,(-$1ee,a6,d0.w)               
  03804  3f3c008c              move.w   #$8c,-(a7)                         
  03808  486efe12              pea      -$1ee(a6)                          
  0380c  4ebacfa4              jsr      f2_07b2                            
  03810  5c8f                  addq.l   #6,a7                              
  03812  600001a6              bra.w    L39ba                              
L3816:
  03816  3f3c008c              move.w   #$8c,-(a7)                         
  0381a  486efe12              pea      -$1ee(a6)                          
  0381e  4ebacf92              jsr      f2_07b2                            
  03822  486efe12              pea      -$1ee(a6)                          
  03826  486ef90e              pea      -$6f2(a6)                          
  0382a  4ead050a              jsr      f4_14fa                            
  0382e  302ef910              move.w   -$6f0(a6),d0                       
  03832  b06eff42              cmp.w    -$be(a6),d0                        
  03836  5c8f                  addq.l   #6,a7                              
  03838  6754                  beq.s    L388e                              
  0383a  3f3c0001              move.w   #1,-(a7)                           
  0383e  a9c8                  _SysBeep                                    ; $a9c8
  03840  4a79ffff8370          tst.w    g_7c90                             
  03846  6f0e                  ble.s    L3856                              
  03848  3079ffff8894          movea.w  g_776c,a0                          
  0384e  2008                  move.l   a0,d0                              
  03850  91b9ffff8388          sub.l    d0,g_7c78                          
L3856:
  03856  7601                  moveq    #1,d3                              
  03858  600a                  bra.s    L3864                              
L385a:
  0385a  1dbc00203120fe12      move.b   #$20,(-$1ee,a6,d3.w)               
  03862  5243                  addq.w   #1,d3                              
L3864:
  03864  b66eff36              cmp.w    -$ca(a6),d3                        
  03868  6ff0                  ble.s    L385a                              
  0386a  3d7c0001ff3a          move.w   #1,-$c6(a6)                        
  03870  302eff3a              move.w   -$c6(a6),d0                        
  03874  1dbc005f0120fe12      move.b   #$5f,(-$1ee,a6,d0.w)               
  0387c  3f3c008c              move.w   #$8c,-(a7)                         
  03880  486efe12              pea      -$1ee(a6)                          
  03884  4ebacf2c              jsr      f2_07b2                            
  03888  5c8f                  addq.l   #6,a7                              
  0388a  6000012e              bra.w    L39ba                              
L388e:
  0388e  43eef90e              lea      -$6f2(a6),a1                       
  03892  307c001e              movea.w  #$1e,a0                            
  03896  a03b                  _Delay                                      ; $a03b
  03898  2280                  move.l   d0,(a1)                            
  0389a  7601                  moveq    #1,d3                              
  0389c  600a                  bra.s    L38a8                              
L389e:
  0389e  1dbc00203120fe12      move.b   #$20,(-$1ee,a6,d3.w)               
  038a6  5243                  addq.w   #1,d3                              
L38a8:
  038a8  b66eff36              cmp.w    -$ca(a6),d3                        
  038ac  6ff0                  ble.s    L389e                              
  038ae  3f3c008c              move.w   #$8c,-(a7)                         
  038b2  486efe12              pea      -$1ee(a6)                          
  038b6  4ebacefa              jsr      f2_07b2                            
  038ba  4a07                  tst.b    d7                                 
  038bc  5c8f                  addq.l   #6,a7                              
  038be  660000f2              bne.w    L39b2                              
  038c2  486eff3a              pea      -$c6(a6)                           
  038c6  486eff42              pea      -$be(a6)                           
  038ca  4267                  clr.w    -(a7)                              
  038cc  3f39ffff3ad2          move.w   g_c52e,-(a7)                       
  038d2  3f39ffff3ad0          move.w   g_c530,-(a7)                       
  038d8  2f0c                  move.l   a4,-(a7)                           
  038da  4eba2db8              jsr      f2_6694                            
  038de  3d40ff32              move.w   d0,-$ce(a6)                        
  038e2  306eff42              movea.w  -$be(a6),a0                        
  038e6  2e88                  move.l   a0,(a7)                            
  038e8  486efe12              pea      -$1ee(a6)                          
  038ec  4ead0512              jsr      f4_150e                            
  038f0  486efe12              pea      -$1ee(a6)                          
  038f4  4eba40ea              jsr      f2_79e0                            
  038f8  3d40ff30              move.w   d0,-$d0(a6)                        
  038fc  7801                  moveq    #1,d4                              
  038fe  4fef0012              lea      $12(a7),a7                         
  03902  600a                  bra.s    L390e                              
L3904:
  03904  1dbc00204120fe12      move.b   #$20,(-$1ee,a6,d4.w)               
  0390c  5244                  addq.w   #1,d4                              
L390e:
  0390e  b86eff30              cmp.w    -$d0(a6),d4                        
  03912  6ff0                  ble.s    L3904                              
  03914  1d7c005ffe13          move.b   #$5f,-$1ed(a6)                     
  0391a  3d7c0001ff3a          move.w   #1,-$c6(a6)                        
  03920  1d6eff31fe12          move.b   -$cf(a6),-$1ee(a6)                 
  03926  3f3c008c              move.w   #$8c,-(a7)                         
  0392a  486efe12              pea      -$1ee(a6)                          
  0392e  4ebace82              jsr      f2_07b2                            
  03932  306eff42              movea.w  -$be(a6),a0                        
  03936  2e88                  move.l   a0,(a7)                            
  03938  486efd12              pea      -$2ee(a6)                          
  0393c  4ead0512              jsr      f4_150e                            
  03940  486efd12              pea      -$2ee(a6)                          
  03944  4eba409a              jsr      f2_79e0                            
  03948  3d40ff36              move.w   d0,-$ca(a6)                        
  0394c  3d6eff3aff38          move.w   -$c6(a6),-$c8(a6)                  
  03952  7232                  moveq    #50,d1                             
  03954  d3b9ffff83a6          add.l    d1,g_7c5a                          
  0395a  2eb9ffff83a6          move.l   g_7c5a,(a7)                        
  03960  486ef912              pea      -$6ee(a6)                          
  03964  4ead0512              jsr      f4_150e                            
  03968  4257                  clr.w    (a7)                               
  0396a  486ef912              pea      -$6ee(a6)                          
  0396e  a88c                  _StringWidth                                ; $a88c
  03970  3d5fff34              move.w   (a7)+,-$cc(a6)                     
  03974  302efffe              move.w   -$2(a6),d0                         
  03978  906eff34              sub.w    -$cc(a6),d0                        
  0397c  3f00                  move.w   d0,-(a7)                           
  0397e  70f6                  moveq    #-10,d0                            
  03980  d06efff8              add.w    -$8(a6),d0                         
  03984  3f00                  move.w   d0,-(a7)                           
  03986  a893                  _MoveTo                                     ; $a893
  03988  2f39ffff83a6          move.l   g_7c5a,-(a7)                       
  0398e  4eba4082              jsr      f2_7a12                            
  03992  2039ffff83a6          move.l   g_7c5a,d0                          
  03998  b0aef90a              cmp.l    -$6f6(a6),d0                       
  0399c  588f                  addq.l   #4,a7                              
  0399e  6f1a                  ble.s    L39ba                              
  039a0  e3f9ffff3ad0          lsl.w    g_c530                             
  039a6  202ef90a              move.l   -$6f6(a6),d0                       
  039aa  d080                  add.l    d0,d0                              
  039ac  2d40f90a              move.l   d0,-$6f6(a6)                       
  039b0  6008                  bra.s    L39ba                              
L39b2:
  039b2  33fc0190ffff98e8      move.w   #$190,g_6718                       
L39ba:
  039ba  0c790169ffff98e8      cmpi.w   #$169,g_6718                       
  039c2  6d00fd66              blt.w    L372a                              
  039c6  2f0c                  move.l   a4,-(a7)                           
  039c8  a983                  _DisposeDialog                              ; $a983
  039ca  a853                  _ShowCursor                                 ; $a853
  039cc  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  039d2  a873                  _SetPort                                    ; $a873
  039d4  4a07                  tst.b    d7                                 
  039d6  6608                  bne.s    L39e0                              
  039d8  33eeff2effff3ad0      move.w   -$d2(a6),g_c530                    
L39e0:
  039e0  13eef907ffff9812      move.b   -$6f9(a6),g_67ee                   
  039e8  13eef906ffff9813      move.b   -$6fa(a6),g_67ed                   
  039f0  102ef908              move.b   -$6f8(a6),d0                       
L39f4:
  039f4  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  039f8  4e5e                  unlk     a6                                 
  039fa  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_39fc   [jump table #29]
;----------------------------------------------------------------------
f2_39fc:
  039fc  4e56fffc              link     a6,#-4                             
  03a00  2f07                  move.l   d7,-(a7)                           
  03a02  1d79ffff9810fffd      move.b   g_67f0,-$3(a6)                     
  03a0a  1d79ffff9811fffc      move.b   g_67ef,-$4(a6)                     
  03a12  4a79ffff8372          tst.w    g_7c8e                             
  03a18  6f30                  ble.s    L3a4a                              
  03a1a  4a39ffff3b1e          tst.b    g_c4e2                             
  03a20  6728                  beq.s    L3a4a                              
  03a22  4227                  clr.b    -(a7)                              
  03a24  4ead05a2              jsr      f5_34c0                            
  03a28  1e00                  move.b   d0,d7                              
  03a2a  4a07                  tst.b    d7                                 
  03a2c  548f                  addq.l   #2,a7                              
  03a2e  670000d2              beq.w    L3b02                              
  03a32  4ab9ffff3b18          tst.l    g_c4e8                             
  03a38  6704                  beq.s    L3a3e                              
  03a3a  4ead05b2              jsr      f5_38b6                            
L3a3e:
  03a3e  42b9ffff3b14          clr.l    g_c4ec                             
  03a44  42b9ffff3b18          clr.l    g_c4e8                             
L3a4a:
  03a4a  13fc0001ffff9810      move.b   #1,g_67f0                          
  03a52  13fc0001ffff9811      move.b   #1,g_67ef                          
  03a5a  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  03a60  a916                  _HideWindow                                 ; $a916
  03a62  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  03a68  a916                  _HideWindow                                 ; $a916
  03a6a  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  03a70  a916                  _HideWindow                                 ; $a916
  03a72  4ead02fa              jsr      f3_37ca                            
  03a76  4eba15d2              jsr      f2_504a                            
  03a7a  4a00                  tst.b    d0                                 
  03a7c  6610                  bne.s    L3a8e                              
  03a7e  33fcffffffff8370      move.w   #$ffff,g_7c90                      
  03a86  4239ffff8de8          clr.b    g_7218                             
  03a8c  6074                  bra.s    L3b02                              
L3a8e:
  03a8e  4ead034a              jsr      f3_4af4                            
  03a92  4ead040a              jsr      f4_4002                            
  03a96  33fc0001ffff8894      move.w   #1,g_776c                          
  03a9e  4227                  clr.b    -(a7)                              
  03aa0  3f39ffff8894          move.w   g_776c,-(a7)                       
  03aa6  4ead0412              jsr      f4_411c                            
  03aaa  2eb9ffff8fb6          move.l   g_704a,(a7)                        
  03ab0  a920                  _BringToFront                               ; $a920
  03ab2  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  03ab8  a915                  _ShowWindow                                 ; $a915
  03aba  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  03ac0  a920                  _BringToFront                               ; $a920
  03ac2  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  03ac8  a915                  _ShowWindow                                 ; $a915
  03aca  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03ad0  a915                  _ShowWindow                                 ; $a915
  03ad2  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03ad8  a920                  _BringToFront                               ; $a920
  03ada  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  03ae0  a920                  _BringToFront                               ; $a920
  03ae2  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  03ae8  a915                  _ShowWindow                                 ; $a915
  03aea  1f3c0001              move.b   #1,-(a7)                           
  03aee  4ead039a              jsr      f3_5578                            
  03af2  4ead05c2              jsr      f5_3984                            
  03af6  2f39ffff8dc4          move.l   g_723c,-(a7)                       
  03afc  3f3c0003              move.w   #3,-(a7)                           
  03b00  a939                  _EnableItem                                 ; $a939
L3b02:
  03b02  2e2efff8              move.l   -$8(a6),d7                         
  03b06  4e5e                  unlk     a6                                 
  03b08  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3b0a   [jump table #30]
;----------------------------------------------------------------------
f2_3b0a:
  03b0a  4e56fffe              link     a6,#-2                             
  03b0e  2f07                  move.l   d7,-(a7)                           
  03b10  4a79ffff8372          tst.w    g_7c8e                             
  03b16  6f30                  ble.s    L3b48                              
  03b18  4a39ffff3b1e          tst.b    g_c4e2                             
  03b1e  6728                  beq.s    L3b48                              
  03b20  4227                  clr.b    -(a7)                              
  03b22  4ead05a2              jsr      f5_34c0                            
  03b26  1e00                  move.b   d0,d7                              
  03b28  4a07                  tst.b    d7                                 
  03b2a  548f                  addq.l   #2,a7                              
  03b2c  6700009e              beq.w    L3bcc                              
  03b30  4ab9ffff3b18          tst.l    g_c4e8                             
  03b36  6704                  beq.s    L3b3c                              
  03b38  4ead05b2              jsr      f5_38b6                            
L3b3c:
  03b3c  42b9ffff3b14          clr.l    g_c4ec                             
  03b42  42b9ffff3b18          clr.l    g_c4e8                             
L3b48:
  03b48  4ead02fa              jsr      f3_37ca                            
  03b4c  4ead0292              jsr      f3_0a00                            
  03b50  4ead034a              jsr      f3_4af4                            
  03b54  4ead040a              jsr      f4_4002                            
  03b58  33fc0001ffff8894      move.w   #1,g_776c                          
  03b60  4227                  clr.b    -(a7)                              
  03b62  3f39ffff8894          move.w   g_776c,-(a7)                       
  03b68  4ead0412              jsr      f4_411c                            
  03b6c  2eb9ffff8fb6          move.l   g_704a,(a7)                        
  03b72  a915                  _ShowWindow                                 ; $a915
  03b74  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  03b7a  a920                  _BringToFront                               ; $a920
  03b7c  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  03b82  a915                  _ShowWindow                                 ; $a915
  03b84  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  03b8a  a920                  _BringToFront                               ; $a920
  03b8c  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03b92  a915                  _ShowWindow                                 ; $a915
  03b94  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03b9a  a920                  _BringToFront                               ; $a920
  03b9c  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  03ba2  a915                  _ShowWindow                                 ; $a915
  03ba4  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  03baa  a920                  _BringToFront                               ; $a920
  03bac  1f3c0001              move.b   #1,-(a7)                           
  03bb0  4ead039a              jsr      f3_5578                            
  03bb4  4ead05c2              jsr      f5_3984                            
  03bb8  2f39ffff8dc4          move.l   g_723c,-(a7)                       
  03bbe  3f3c0003              move.w   #3,-(a7)                           
  03bc2  a939                  _EnableItem                                 ; $a939
  03bc4  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
L3bcc:
  03bcc  2e2efffa              move.l   -$6(a6),d7                         
  03bd0  4e5e                  unlk     a6                                 
  03bd2  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3bd4   [jump table #31]
;----------------------------------------------------------------------
f2_3bd4:
  03bd4  4e56fffe              link     a6,#-2                             
  03bd8  3f39ffff8894          move.w   g_776c,-(a7)                       
  03bde  4ead043a              jsr      f4_460e                            
  03be2  42a7                  clr.l    -(a7)                              
  03be4  4ead0562              jsr      f5_1c9e                            
  03be8  1d40ffff              move.b   d0,-$1(a6)                         
  03bec  4e5e                  unlk     a6                                 
  03bee  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3bf0   [jump table #32]
;----------------------------------------------------------------------
f2_3bf0:
  03bf0  4e560000              link     a6,#0                              
  03bf4  48e70300              movem.l  d6/d7,-(a7)                        
  03bf8  4a79ffff8372          tst.w    g_7c8e                             
  03bfe  6f30                  ble.s    L3c30                              
  03c00  4a39ffff3b1e          tst.b    g_c4e2                             
  03c06  6728                  beq.s    L3c30                              
  03c08  4227                  clr.b    -(a7)                              
  03c0a  4ead05a2              jsr      f5_34c0                            
  03c0e  1e00                  move.b   d0,d7                              
  03c10  4a07                  tst.b    d7                                 
  03c12  548f                  addq.l   #2,a7                              
  03c14  67000098              beq.w    L3cae                              
  03c18  4ab9ffff3b18          tst.l    g_c4e8                             
  03c1e  6704                  beq.s    L3c24                              
  03c20  4ead05b2              jsr      f5_38b6                            
L3c24:
  03c24  42b9ffff3b14          clr.l    g_c4ec                             
  03c2a  42b9ffff3b18          clr.l    g_c4e8                             
L3c30:
  03c30  4ead02f2              jsr      f3_3834                            
  03c34  2f3c01000000          move.l   #$1000000,-(a7)                    
  03c3a  4ead0562              jsr      f5_1c9e                            
  03c3e  1e00                  move.b   d0,d7                              
  03c40  4a07                  tst.b    d7                                 
  03c42  588f                  addq.l   #4,a7                              
  03c44  6768                  beq.s    L3cae                              
  03c46  4ead0572              jsr      f5_2770                            
  03c4a  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  03c50  a915                  _ShowWindow                                 ; $a915
  03c52  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  03c58  a920                  _BringToFront                               ; $a920
  03c5a  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  03c60  a915                  _ShowWindow                                 ; $a915
  03c62  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  03c68  a920                  _BringToFront                               ; $a920
  03c6a  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03c70  a915                  _ShowWindow                                 ; $a915
  03c72  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03c78  a920                  _BringToFront                               ; $a920
  03c7a  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  03c80  a915                  _ShowWindow                                 ; $a915
  03c82  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  03c88  a920                  _BringToFront                               ; $a920
  03c8a  7c02                  moveq    #2,d6                              
  03c8c  600e                  bra.s    L3c9c                              
L3c8e:
  03c8e  2f3065b0ffff8dc0      move.l   (-$7240,za0,d6.w*4),-(a7)          
  03c96  4267                  clr.w    -(a7)                              
  03c98  a939                  _EnableItem                                 ; $a939
  03c9a  5246                  addq.w   #1,d6                              
L3c9c:
  03c9c  0c460005              cmpi.w   #5,d6                              
  03ca0  6dec                  blt.s    L3c8e                              
  03ca2  2f39ffff8dc4          move.l   g_723c,-(a7)                       
  03ca8  3f3c0003              move.w   #3,-(a7)                           
  03cac  a939                  _EnableItem                                 ; $a939
L3cae:
  03cae  4cdf00c0              movem.l  (a7)+,d6/d7                        
  03cb2  4e5e                  unlk     a6                                 
  03cb4  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3cb6
;----------------------------------------------------------------------
f2_3cb6:
  03cb6  4e560000              link     a6,#0                              
  03cba  3f3c0001              move.w   #1,-(a7)                           
  03cbe  4eba1660              jsr      f2_5320                            
  03cc2  4e5e                  unlk     a6                                 
  03cc4  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3cc6
;----------------------------------------------------------------------
f2_3cc6:
  03cc6  4e560000              link     a6,#0                              
  03cca  3f3c000a              move.w   #$a,-(a7)                          
  03cce  4eba1650              jsr      f2_5320                            
  03cd2  4e5e                  unlk     a6                                 
  03cd4  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3cd6
;----------------------------------------------------------------------
f2_3cd6:
  03cd6  4e560000              link     a6,#0                              
  03cda  3f3c0002              move.w   #2,-(a7)                           
  03cde  4eba1640              jsr      f2_5320                            
  03ce2  4e5e                  unlk     a6                                 
  03ce4  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3ce6
;----------------------------------------------------------------------
f2_3ce6:
  03ce6  4e560000              link     a6,#0                              
  03cea  3f3c0003              move.w   #3,-(a7)                           
  03cee  4eba1630              jsr      f2_5320                            
  03cf2  4e5e                  unlk     a6                                 
  03cf4  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3cf6
;----------------------------------------------------------------------
f2_3cf6:
  03cf6  4e560000              link     a6,#0                              
  03cfa  3f3c0004              move.w   #4,-(a7)                           
  03cfe  4eba1620              jsr      f2_5320                            
  03d02  4e5e                  unlk     a6                                 
  03d04  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3d06
;----------------------------------------------------------------------
f2_3d06:
  03d06  4e560000              link     a6,#0                              
  03d0a  3f3c0005              move.w   #5,-(a7)                           
  03d0e  4eba1610              jsr      f2_5320                            
  03d12  4e5e                  unlk     a6                                 
  03d14  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3d16
;----------------------------------------------------------------------
f2_3d16:
  03d16  4e560000              link     a6,#0                              
  03d1a  3f3c0006              move.w   #6,-(a7)                           
  03d1e  4eba1600              jsr      f2_5320                            
  03d22  4e5e                  unlk     a6                                 
  03d24  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3d26
;----------------------------------------------------------------------
f2_3d26:
  03d26  4e560000              link     a6,#0                              
  03d2a  3f3c0007              move.w   #7,-(a7)                           
  03d2e  4eba15f0              jsr      f2_5320                            
  03d32  4e5e                  unlk     a6                                 
  03d34  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3d36
;----------------------------------------------------------------------
f2_3d36:
  03d36  4e560000              link     a6,#0                              
  03d3a  3f3c0008              move.w   #8,-(a7)                           
  03d3e  4eba15e0              jsr      f2_5320                            
  03d42  4e5e                  unlk     a6                                 
  03d44  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3d46
;----------------------------------------------------------------------
f2_3d46:
  03d46  4e560000              link     a6,#0                              
  03d4a  3f3c0009              move.w   #9,-(a7)                           
  03d4e  4eba15d0              jsr      f2_5320                            
  03d52  4e5e                  unlk     a6                                 
  03d54  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3d56
;----------------------------------------------------------------------
f2_3d56:
  03d56  4e560000              link     a6,#0                              
  03d5a  4ead034a              jsr      f3_4af4                            
  03d5e  4e5e                  unlk     a6                                 
  03d60  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3d62
;----------------------------------------------------------------------
f2_3d62:
  03d62  4e560000              link     a6,#0                              
  03d66  4a39ffff981f          tst.b    g_67e1                             
  03d6c  57c0                  seq      d0                                 
  03d6e  4400                  neg.b    d0                                 
  03d70  13c0ffff981f          move.b   d0,g_67e1                          
  03d76  2f39ffff8dcc          move.l   g_7234,-(a7)                       
  03d7c  3f3c0002              move.w   #2,-(a7)                           
  03d80  1f00                  move.b   d0,-(a7)                           
  03d82  a945                  _CheckItem                                  ; $a945
  03d84  4e5e                  unlk     a6                                 
  03d86  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3d88
;----------------------------------------------------------------------
f2_3d88:
  03d88  4e560000              link     a6,#0                              
  03d8c  4ead03a2              jsr      f3_57b2                            
  03d90  4e5e                  unlk     a6                                 
  03d92  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3d94
;----------------------------------------------------------------------
f2_3d94:
  03d94  4e560000              link     a6,#0                              
  03d98  4eba3fb2              jsr      f2_7d4c                            
  03d9c  4e5e                  unlk     a6                                 
  03d9e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3da0
;----------------------------------------------------------------------
f2_3da0:
  03da0  4e560000              link     a6,#0                              
  03da4  4ead065a              jsr      f6_1dbc                            
  03da8  4e5e                  unlk     a6                                 
  03daa  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3dac
;----------------------------------------------------------------------
f2_3dac:
  03dac  4e56fff4              link     a6,#-12                            
  03db0  4e5e                  unlk     a6                                 
  03db2  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3db4
;----------------------------------------------------------------------
f2_3db4:
  03db4  4e56ff9a              link     a6,#-102                           
  03db8  2f07                  move.l   d7,-(a7)                           
  03dba  3f3c02c8              move.w   #$2c8,-(a7)                        
  03dbe  486eff9a              pea      -$66(a6)                           
  03dc2  486efffe              pea      -$2(a6)                            
  03dc6  4ebadb86              jsr      f2_194e                            
  03dca  2eaeffa6              move.l   -$5a(a6),(a7)                      
  03dce  4ead045a              jsr      f4_55b8                            
  03dd2  7e01                  moveq    #1,d7                              
  03dd4  4fef000a              lea      $a(a7),a7                          
  03dd8  6008                  bra.s    L3de2                              
L3dda:
  03dda  2076749a              movea.l  -$66(a6,d7.w*4),a0                 
  03dde  a01f                  _DisposePtr                                 ; $a01f
  03de0  5247                  addq.w   #1,d7                              
L3de2:
  03de2  be6efffe              cmp.w    -$2(a6),d7                         
  03de6  6ff2                  ble.s    L3dda                              
  03de8  2e1f                  move.l   (a7)+,d7                           
  03dea  4e5e                  unlk     a6                                 
  03dec  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3dee
;----------------------------------------------------------------------
f2_3dee:
  03dee  4e56fffc              link     a6,#-4                             
  03df2  48e70700              movem.l  d5/d6/d7,-(a7)                     
  03df6  7a00                  moveq    #0,d5                              
  03df8  7e01                  moveq    #1,d7                              
  03dfa  60000086              bra.w    L3e82                              
L3dfe:
  03dfe  7a00                  moveq    #0,d5                              
  03e00  7c00                  moveq    #0,d6                              
  03e02  6076                  bra.s    L3e7a                              
L3e04:
  03e04  be7063b0ffff3ad4      cmp.w    (-$c52c,za0,d6.w*2),d7             
  03e0c  666a                  bne.s    L3e78                              
  03e0e  1f3c0001              move.b   #1,-(a7)                           
  03e12  3f07                  move.w   d7,-(a7)                           
  03e14  4ead0412              jsr      f4_411c                            
  03e18  588f                  addq.l   #4,a7                              
L3e1a:
  03e1a  487067b0ffff7868      pea      (-$8798,za0,d6.w*8)                
  03e22  487067b0ffff7866      pea      (-$879a,za0,d6.w*8)                
  03e2a  487067b0ffff7864      pea      (-$879c,za0,d6.w*8)                
  03e32  487067b0ffff7862      pea      (-$879e,za0,d6.w*8)                
  03e3a  487063b0ffff7856      pea      (-$87aa,za0,d6.w*2)                
  03e42  487063b0ffff784a      pea      (-$87b6,za0,d6.w*2)                
  03e4a  4ead047a              jsr      f4_6488                            
  03e4e  1a00                  move.b   d0,d5                              
  03e50  4fef0018              lea      $18(a7),a7                         
  03e54  4a05                  tst.b    d5                                 
  03e56  67c2                  beq.s    L3e1a                              
  03e58  303063b0ffff784a      move.w   (-$87b6,za0,d6.w*2),d0             
  03e60  b079ffff8888          cmp.w    g_7778,d0                          
  03e66  67b2                  beq.s    L3e1a                              
  03e68  303063b0ffff784a      move.w   (-$87b6,za0,d6.w*2),d0             
  03e70  b079ffff884c          cmp.w    g_77b4,d0                          
  03e76  67a2                  beq.s    L3e1a                              
L3e78:
  03e78  5246                  addq.w   #1,d6                              
L3e7a:
  03e7a  0c460006              cmpi.w   #6,d6                              
  03e7e  6d84                  blt.s    L3e04                              
  03e80  5247                  addq.w   #1,d7                              
L3e82:
  03e82  0c470015              cmpi.w   #$15,d7                            
  03e86  6d00ff76              blt.w    L3dfe                              
  03e8a  1f3c0001              move.b   #1,-(a7)                           
  03e8e  3f39ffff8894          move.w   g_776c,-(a7)                       
  03e94  4ead0412              jsr      f4_411c                            
  03e98  4cee00e0fff0          movem.l  -$10(a6),d5/d6/d7                  
  03e9e  4e5e                  unlk     a6                                 
  03ea0  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3ea2
;----------------------------------------------------------------------
f2_3ea2:
  03ea2  4e560000              link     a6,#0                              
  03ea6  2f07                  move.l   d7,-(a7)                           
  03ea8  7e01                  moveq    #1,d7                              
  03eaa  600a                  bra.s    L3eb6                              
L3eac:
  03eac  3f07                  move.w   d7,-(a7)                           
  03eae  4ead0672              jsr      f6_294e                            
  03eb2  548f                  addq.l   #2,a7                              
  03eb4  5247                  addq.w   #1,d7                              
L3eb6:
  03eb6  be79ffff883e          cmp.w    g_77c2,d7                          
  03ebc  6fee                  ble.s    L3eac                              
  03ebe  2e1f                  move.l   (a7)+,d7                           
  03ec0  4e5e                  unlk     a6                                 
  03ec2  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_3ec4   [jump table #33]
;----------------------------------------------------------------------
f2_3ec4:
  03ec4  4e560000              link     a6,#0                              
  03ec8  42a7                  clr.l    -(a7)                              
  03eca  a8cb                  _OpenPoly                                   ; $a8cb
  03ecc  23dfffff9916          move.l   (a7)+,g_66ea                       
  03ed2  42a7                  clr.l    -(a7)                              
  03ed4  a893                  _MoveTo                                     ; $a893
  03ed6  2f3c00470054          move.l   #$470054,-(a7)                     
  03edc  a891                  _LineTo                                     ; $a891
  03ede  2f3c00730054          move.l   #$730054,-(a7)                     
  03ee4  a891                  _LineTo                                     ; $a891
  03ee6  2f3c00f00000          move.l   #$f00000,-(a7)                     
  03eec  a891                  _LineTo                                     ; $a891
  03eee  42a7                  clr.l    -(a7)                              
  03ef0  a891                  _LineTo                                     ; $a891
  03ef2  a8cc                  _ClosePoly                                  ; $a8cc
  03ef4  42a7                  clr.l    -(a7)                              
  03ef6  a8cb                  _OpenPoly                                   ; $a8cb
  03ef8  23dfffff992a          move.l   (a7)+,g_66d6                       
  03efe  487800c8              pea      ($c8).w                            
  03f02  a893                  _MoveTo                                     ; $a893
  03f04  2f3c00470074          move.l   #$470074,-(a7)                     
  03f0a  a891                  _LineTo                                     ; $a891
  03f0c  2f3c00730074          move.l   #$730074,-(a7)                     
  03f12  a891                  _LineTo                                     ; $a891
  03f14  2f3c00f000c8          move.l   #$f000c8,-(a7)                     
  03f1a  a891                  _LineTo                                     ; $a891
  03f1c  487800c8              pea      ($c8).w                            
  03f20  a891                  _LineTo                                     ; $a891
  03f22  a8cc                  _ClosePoly                                  ; $a8cc
  03f24  42a7                  clr.l    -(a7)                              
  03f26  a8cb                  _OpenPoly                                   ; $a8cb
  03f28  23dfffff9912          move.l   (a7)+,g_66ee                       
  03f2e  42a7                  clr.l    -(a7)                              
  03f30  a893                  _MoveTo                                     ; $a893
  03f32  2f3c003d0049          move.l   #$3d0049,-(a7)                     
  03f38  a891                  _LineTo                                     ; $a891
  03f3a  2f3c00840049          move.l   #$840049,-(a7)                     
  03f40  a891                  _LineTo                                     ; $a891
  03f42  2f3c00f00000          move.l   #$f00000,-(a7)                     
  03f48  a891                  _LineTo                                     ; $a891
  03f4a  42a7                  clr.l    -(a7)                              
  03f4c  a891                  _LineTo                                     ; $a891
  03f4e  a8cc                  _ClosePoly                                  ; $a8cc
  03f50  42a7                  clr.l    -(a7)                              
  03f52  a8cb                  _OpenPoly                                   ; $a8cb
  03f54  23dfffff9926          move.l   (a7)+,g_66da                       
  03f5a  487800c8              pea      ($c8).w                            
  03f5e  a893                  _MoveTo                                     ; $a893
  03f60  2f3c003d007f          move.l   #$3d007f,-(a7)                     
  03f66  a891                  _LineTo                                     ; $a891
  03f68  2f3c0084007f          move.l   #$84007f,-(a7)                     
  03f6e  a891                  _LineTo                                     ; $a891
  03f70  2f3c00f000c8          move.l   #$f000c8,-(a7)                     
  03f76  a891                  _LineTo                                     ; $a891
  03f78  487800c8              pea      ($c8).w                            
  03f7c  a891                  _LineTo                                     ; $a891
  03f7e  a8cc                  _ClosePoly                                  ; $a8cc
  03f80  42a7                  clr.l    -(a7)                              
  03f82  a8cb                  _OpenPoly                                   ; $a8cb
  03f84  23dfffff990e          move.l   (a7)+,g_66f2                       
  03f8a  42a7                  clr.l    -(a7)                              
  03f8c  a893                  _MoveTo                                     ; $a893
  03f8e  2f3c00290032          move.l   #$290032,-(a7)                     
  03f94  a891                  _LineTo                                     ; $a891
  03f96  2f3c00a60032          move.l   #$a60032,-(a7)                     
  03f9c  a891                  _LineTo                                     ; $a891
  03f9e  2f3c00f00000          move.l   #$f00000,-(a7)                     
  03fa4  a891                  _LineTo                                     ; $a891
  03fa6  42a7                  clr.l    -(a7)                              
  03fa8  a891                  _LineTo                                     ; $a891
  03faa  a8cc                  _ClosePoly                                  ; $a8cc
  03fac  42a7                  clr.l    -(a7)                              
  03fae  a8cb                  _OpenPoly                                   ; $a8cb
  03fb0  23dfffff9922          move.l   (a7)+,g_66de                       
  03fb6  487800c8              pea      ($c8).w                            
  03fba  a893                  _MoveTo                                     ; $a893
  03fbc  2f3c00290096          move.l   #$290096,-(a7)                     
  03fc2  a891                  _LineTo                                     ; $a891
  03fc4  2f3c00a60096          move.l   #$a60096,-(a7)                     
  03fca  a891                  _LineTo                                     ; $a891
  03fcc  2f3c00f000c8          move.l   #$f000c8,-(a7)                     
  03fd2  a891                  _LineTo                                     ; $a891
  03fd4  487800c8              pea      ($c8).w                            
  03fd8  a891                  _LineTo                                     ; $a891
  03fda  a8cc                  _ClosePoly                                  ; $a8cc
  03fdc  42a7                  clr.l    -(a7)                              
  03fde  a8cb                  _OpenPoly                                   ; $a8cb
  03fe0  23dfffff990a          move.l   (a7)+,g_66f6                       
  03fe6  42a7                  clr.l    -(a7)                              
  03fe8  a893                  _MoveTo                                     ; $a893
  03fea  2f3c00030005          move.l   #$30005,-(a7)                      
  03ff0  a891                  _LineTo                                     ; $a891
  03ff2  2f3c00eb0005          move.l   #$eb0005,-(a7)                     
  03ff8  a891                  _LineTo                                     ; $a891
  03ffa  2f3c00f00000          move.l   #$f00000,-(a7)                     
  04000  a891                  _LineTo                                     ; $a891
  04002  42a7                  clr.l    -(a7)                              
  04004  a891                  _LineTo                                     ; $a891
  04006  a8cc                  _ClosePoly                                  ; $a8cc
  04008  42a7                  clr.l    -(a7)                              
  0400a  a8cb                  _OpenPoly                                   ; $a8cb
  0400c  23dfffff991e          move.l   (a7)+,g_66e2                       
  04012  487800c8              pea      ($c8).w                            
  04016  a893                  _MoveTo                                     ; $a893
  04018  2f3c000300c4          move.l   #$300c4,-(a7)                      
  0401e  a891                  _LineTo                                     ; $a891
  04020  2f3c00eb00c4          move.l   #$eb00c4,-(a7)                     
  04026  a891                  _LineTo                                     ; $a891
  04028  2f3c00f000c8          move.l   #$f000c8,-(a7)                     
  0402e  a891                  _LineTo                                     ; $a891
  04030  487800c8              pea      ($c8).w                            
  04034  a891                  _LineTo                                     ; $a891
  04036  a8cc                  _ClosePoly                                  ; $a8cc
  04038  42a7                  clr.l    -(a7)                              
  0403a  a8cb                  _OpenPoly                                   ; $a8cb
  0403c  23dfffff991a          move.l   (a7)+,g_66e6                       
  04042  42a7                  clr.l    -(a7)                              
  04044  a893                  _MoveTo                                     ; $a893
  04046  2f3c00070002          move.l   #$70002,-(a7)                      
  0404c  a891                  _LineTo                                     ; $a891
  0404e  2f3c00ee0002          move.l   #$ee0002,-(a7)                     
  04054  a891                  _LineTo                                     ; $a891
  04056  2f3c00f00000          move.l   #$f00000,-(a7)                     
  0405c  a891                  _LineTo                                     ; $a891
  0405e  2f3c00050000          move.l   #$50000,-(a7)                      
  04064  a891                  _LineTo                                     ; $a891
  04066  a8cc                  _ClosePoly                                  ; $a8cc
  04068  42a7                  clr.l    -(a7)                              
  0406a  a8cb                  _OpenPoly                                   ; $a8cb
  0406c  23dfffff992e          move.l   (a7)+,g_66d2                       
  04072  487800c8              pea      ($c8).w                            
  04076  a893                  _MoveTo                                     ; $a893
  04078  2f3c000700c6          move.l   #$700c6,-(a7)                      
  0407e  a891                  _LineTo                                     ; $a891
  04080  2f3c00ee00c6          move.l   #$ee00c6,-(a7)                     
  04086  a891                  _LineTo                                     ; $a891
  04088  2f3c00f000c8          move.l   #$f000c8,-(a7)                     
  0408e  a891                  _LineTo                                     ; $a891
  04090  487800c8              pea      ($c8).w                            
  04094  a891                  _LineTo                                     ; $a891
  04096  a8cc                  _ClosePoly                                  ; $a8cc
  04098  4e5e                  unlk     a6                                 
  0409a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_409c   [jump table #34]
;----------------------------------------------------------------------
f2_409c:
  0409c  4e560000              link     a6,#0                              
  040a0  42a7                  clr.l    -(a7)                              
  040a2  a8cb                  _OpenPoly                                   ; $a8cb
  040a4  23dfffff98f6          move.l   (a7)+,g_670a                       
  040aa  2f3c0043004b          move.l   #$43004b,-(a7)                     
  040b0  a893                  _MoveTo                                     ; $a893
  040b2  2f3c00490052          move.l   #$490052,-(a7)                     
  040b8  a891                  _LineTo                                     ; $a891
  040ba  2f3c00760052          move.l   #$760052,-(a7)                     
  040c0  a891                  _LineTo                                     ; $a891
  040c2  2f3c0080004b          move.l   #$80004b,-(a7)                     
  040c8  a891                  _LineTo                                     ; $a891
  040ca  2f3c0043004b          move.l   #$43004b,-(a7)                     
  040d0  a891                  _LineTo                                     ; $a891
  040d2  a8cc                  _ClosePoly                                  ; $a8cc
  040d4  42a7                  clr.l    -(a7)                              
  040d6  a8cb                  _OpenPoly                                   ; $a8cb
  040d8  23dfffff9906          move.l   (a7)+,g_66fa                       
  040de  2f3c0043007d          move.l   #$43007d,-(a7)                     
  040e4  a893                  _MoveTo                                     ; $a893
  040e6  2f3c00490076          move.l   #$490076,-(a7)                     
  040ec  a891                  _LineTo                                     ; $a891
  040ee  2f3c00760076          move.l   #$760076,-(a7)                     
  040f4  a891                  _LineTo                                     ; $a891
  040f6  2f3c0080007d          move.l   #$80007d,-(a7)                     
  040fc  a891                  _LineTo                                     ; $a891
  040fe  2f3c0043007d          move.l   #$43007d,-(a7)                     
  04104  a891                  _LineTo                                     ; $a891
  04106  a8cc                  _ClosePoly                                  ; $a8cc
  04108  42a7                  clr.l    -(a7)                              
  0410a  a8cb                  _OpenPoly                                   ; $a8cb
  0410c  23dfffff98f2          move.l   (a7)+,g_670e                       
  04112  2f3c00310035          move.l   #$310035,-(a7)                     
  04118  a893                  _MoveTo                                     ; $a893
  0411a  2f3c003f0047          move.l   #$3f0047,-(a7)                     
  04120  a891                  _LineTo                                     ; $a891
  04122  2f3c00860047          move.l   #$860047,-(a7)                     
  04128  a891                  _LineTo                                     ; $a891
  0412a  2f3c00a20035          move.l   #$a20035,-(a7)                     
  04130  a891                  _LineTo                                     ; $a891
  04132  2f3c00310035          move.l   #$310035,-(a7)                     
  04138  a891                  _LineTo                                     ; $a891
  0413a  a8cc                  _ClosePoly                                  ; $a8cc
  0413c  42a7                  clr.l    -(a7)                              
  0413e  a8cb                  _OpenPoly                                   ; $a8cb
  04140  23dfffff9902          move.l   (a7)+,g_66fe                       
  04146  2f3c00310093          move.l   #$310093,-(a7)                     
  0414c  a893                  _MoveTo                                     ; $a893
  0414e  2f3c003f0081          move.l   #$3f0081,-(a7)                     
  04154  a891                  _LineTo                                     ; $a891
  04156  2f3c00860081          move.l   #$860081,-(a7)                     
  0415c  a891                  _LineTo                                     ; $a891
  0415e  2f3c00a20093          move.l   #$a20093,-(a7)                     
  04164  a891                  _LineTo                                     ; $a891
  04166  2f3c00310093          move.l   #$310093,-(a7)                     
  0416c  a891                  _LineTo                                     ; $a891
  0416e  a8cc                  _ClosePoly                                  ; $a8cc
  04170  42a7                  clr.l    -(a7)                              
  04172  a8cb                  _OpenPoly                                   ; $a8cb
  04174  23dfffff98ee          move.l   (a7)+,g_6712                       
  0417a  2f3c000b0008          move.l   #$b0008,-(a7)                      
  04180  a893                  _MoveTo                                     ; $a893
  04182  2f3c002b002f          move.l   #$2b002f,-(a7)                     
  04188  a891                  _LineTo                                     ; $a891
  0418a  2f3c00ab002f          move.l   #$ab002f,-(a7)                     
  04190  a891                  _LineTo                                     ; $a891
  04192  2f3c00e60008          move.l   #$e60008,-(a7)                     
  04198  a891                  _LineTo                                     ; $a891
  0419a  2f3c000b0008          move.l   #$b0008,-(a7)                      
  041a0  a891                  _LineTo                                     ; $a891
  041a2  a8cc                  _ClosePoly                                  ; $a8cc
  041a4  42a7                  clr.l    -(a7)                              
  041a6  a8cb                  _OpenPoly                                   ; $a8cb
  041a8  23dfffff98fe          move.l   (a7)+,g_6702                       
  041ae  2f3c000b00c0          move.l   #$b00c0,-(a7)                      
  041b4  a893                  _MoveTo                                     ; $a893
  041b6  2f3c002b0099          move.l   #$2b0099,-(a7)                     
  041bc  a891                  _LineTo                                     ; $a891
  041be  2f3c00ab0099          move.l   #$ab0099,-(a7)                     
  041c4  a891                  _LineTo                                     ; $a891
  041c6  2f3c00e600c0          move.l   #$e600c0,-(a7)                     
  041cc  a891                  _LineTo                                     ; $a891
  041ce  2f3c000b00c0          move.l   #$b00c0,-(a7)                      
  041d4  a891                  _LineTo                                     ; $a891
  041d6  a8cc                  _ClosePoly                                  ; $a8cc
  041d8  42a7                  clr.l    -(a7)                              
  041da  a8cb                  _OpenPoly                                   ; $a8cb
  041dc  23dfffff98ea          move.l   (a7)+,g_6716                       
  041e2  2f3c00050000          move.l   #$50000,-(a7)                      
  041e8  a893                  _MoveTo                                     ; $a893
  041ea  2f3c00070002          move.l   #$70002,-(a7)                      
  041f0  a891                  _LineTo                                     ; $a891
  041f2  2f3c00ee0002          move.l   #$ee0002,-(a7)                     
  041f8  a891                  _LineTo                                     ; $a891
  041fa  2f3c00f00000          move.l   #$f00000,-(a7)                     
  04200  a891                  _LineTo                                     ; $a891
  04202  2f3c00050000          move.l   #$50000,-(a7)                      
  04208  a891                  _LineTo                                     ; $a891
  0420a  a8cc                  _ClosePoly                                  ; $a8cc
  0420c  42a7                  clr.l    -(a7)                              
  0420e  a8cb                  _OpenPoly                                   ; $a8cb
  04210  23dfffff98fa          move.l   (a7)+,g_6706                       
  04216  2f3c000500c8          move.l   #$500c8,-(a7)                      
  0421c  a893                  _MoveTo                                     ; $a893
  0421e  2f3c000700c6          move.l   #$700c6,-(a7)                      
  04224  a891                  _LineTo                                     ; $a891
  04226  2f3c00ee00c6          move.l   #$ee00c6,-(a7)                     
  0422c  a891                  _LineTo                                     ; $a891
  0422e  2f3c00f000c8          move.l   #$f000c8,-(a7)                     
  04234  a891                  _LineTo                                     ; $a891
  04236  2f3c000500c8          move.l   #$500c8,-(a7)                      
  0423c  a891                  _LineTo                                     ; $a891
  0423e  a8cc                  _ClosePoly                                  ; $a8cc
  04240  4e5e                  unlk     a6                                 
  04242  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_4244
;----------------------------------------------------------------------
f2_4244:
  04244  4e560000              link     a6,#0                              
  04248  2f07                  move.l   d7,-(a7)                           
  0424a  3e2e0008              move.w   $8(a6),d7                          
  0424e  4a39ffff9853          tst.b    g_67ad                             
  04254  6600014c              bne.w    L43a2                              
  04258  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  0425e  a873                  _SetPort                                    ; $a873
  04260  3f3c000a              move.w   #$a,-(a7)                          
  04264  a89c                  _PenMode                                    ; $a89c
  04266  302e000a              move.w   $a(a6),d0                          
  0426a  6716                  beq.s    L4282                              
  0426c  6b00012e              bmi.w    L439c                              
  04270  5740                  subq.w   #3,d0                              
  04272  670000e8              beq.w    L435c                              
  04276  6a000124              bpl.w    L439c                              
  0427a  5240                  addq.w   #1,d0                              
  0427c  6a000094              bpl.w    L4312                              
  04280  6044                  bra.s    L42c6                              
L4282:
  04282  3f3073b0ffff8a2c      move.w   (-$75d4,za0,d7.w*2),-(a7)          
  0428a  4eba37a0              jsr      f2_7a2c                            
  0428e  318073b0ffff8a2c      move.w   d0,(-$75d4,za0,d7.w*2)             
  04296  7001                  moveq    #1,d0                              
  04298  d07073b0ffff8a2c      add.w    (-$75d4,za0,d7.w*2),d0             
  042a0  3e80                  move.w   d0,(a7)                            
  042a2  3f3073b0ffff8ad4      move.w   (-$752c,za0,d7.w*2),-(a7)          
  042aa  a893                  _MoveTo                                     ; $a893
  042ac  7013                  moveq    #19,d0                             
  042ae  d07073b0ffff8a2c      add.w    (-$75d4,za0,d7.w*2),d0             
  042b6  3f00                  move.w   d0,-(a7)                           
  042b8  3f3073b0ffff8ad4      move.w   (-$752c,za0,d7.w*2),-(a7)          
  042c0  a891                  _LineTo                                     ; $a891
  042c2  600000d8              bra.w    L439c                              
L42c6:
  042c6  3f3073b0ffff8a56      move.w   (-$75aa,za0,d7.w*2),-(a7)          
  042ce  4eba375c              jsr      f2_7a2c                            
  042d2  318073b0ffff8a56      move.w   d0,(-$75aa,za0,d7.w*2)             
  042da  70ff                  moveq    #-1,d0                             
  042dc  d07073b0ffff8b52      add.w    (-$74ae,za0,d7.w*2),d0             
  042e4  3e80                  move.w   d0,(a7)                            
  042e6  7001                  moveq    #1,d0                              
  042e8  d07073b0ffff8a56      add.w    (-$75aa,za0,d7.w*2),d0             
  042f0  3f00                  move.w   d0,-(a7)                           
  042f2  a893                  _MoveTo                                     ; $a893
  042f4  70ff                  moveq    #-1,d0                             
  042f6  d07073b0ffff8b52      add.w    (-$74ae,za0,d7.w*2),d0             
  042fe  3f00                  move.w   d0,-(a7)                           
  04300  7013                  moveq    #19,d0                             
  04302  d07073b0ffff8a56      add.w    (-$75aa,za0,d7.w*2),d0             
  0430a  3f00                  move.w   d0,-(a7)                           
  0430c  a891                  _LineTo                                     ; $a891
  0430e  6000008c              bra.w    L439c                              
L4312:
  04312  3f3073b0ffff8a80      move.w   (-$7580,za0,d7.w*2),-(a7)          
  0431a  4eba3710              jsr      f2_7a2c                            
  0431e  318073b0ffff8a80      move.w   d0,(-$7580,za0,d7.w*2)             
  04326  7001                  moveq    #1,d0                              
  04328  d07073b0ffff8a80      add.w    (-$7580,za0,d7.w*2),d0             
  04330  3e80                  move.w   d0,(a7)                            
  04332  70ff                  moveq    #-1,d0                             
  04334  d07073b0ffff8b28      add.w    (-$74d8,za0,d7.w*2),d0             
  0433c  3f00                  move.w   d0,-(a7)                           
  0433e  a893                  _MoveTo                                     ; $a893
  04340  7013                  moveq    #19,d0                             
  04342  d07073b0ffff8a80      add.w    (-$7580,za0,d7.w*2),d0             
  0434a  3f00                  move.w   d0,-(a7)                           
  0434c  70ff                  moveq    #-1,d0                             
  0434e  d07073b0ffff8b28      add.w    (-$74d8,za0,d7.w*2),d0             
  04356  3f00                  move.w   d0,-(a7)                           
  04358  a891                  _LineTo                                     ; $a891
  0435a  6040                  bra.s    L439c                              
L435c:
  0435c  3f3073b0ffff8aaa      move.w   (-$7556,za0,d7.w*2),-(a7)          
  04364  4eba36c6              jsr      f2_7a2c                            
  04368  318073b0ffff8aaa      move.w   d0,(-$7556,za0,d7.w*2)             
  04370  3eb073b0ffff8afe      move.w   (-$7502,za0,d7.w*2),(a7)           
  04378  7001                  moveq    #1,d0                              
  0437a  d07073b0ffff8aaa      add.w    (-$7556,za0,d7.w*2),d0             
  04382  3f00                  move.w   d0,-(a7)                           
  04384  a893                  _MoveTo                                     ; $a893
  04386  3f3073b0ffff8afe      move.w   (-$7502,za0,d7.w*2),-(a7)          
  0438e  7013                  moveq    #19,d0                             
  04390  d07073b0ffff8aaa      add.w    (-$7556,za0,d7.w*2),d0             
  04398  3f00                  move.w   d0,-(a7)                           
  0439a  a891                  _LineTo                                     ; $a891
L439c:
  0439c  3f3c0008              move.w   #8,-(a7)                           
  043a0  a89c                  _PenMode                                    ; $a89c
L43a2:
  043a2  2e1f                  move.l   (a7)+,d7                           
  043a4  4e5e                  unlk     a6                                 
  043a6  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_43a8
;----------------------------------------------------------------------
f2_43a8:
  043a8  4e56fffc              link     a6,#-4                             
  043ac  2f07                  move.l   d7,-(a7)                           
  043ae  4a39ffff9853          tst.b    g_67ad                             
  043b4  6654                  bne.s    L440a                              
  043b6  486efffc              pea      -$4(a6)                            
  043ba  a874                  _GetPort                                    ; $a874
  043bc  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  043c2  a873                  _SetPort                                    ; $a873
  043c4  3f3c0001              move.w   #1,-(a7)                           
  043c8  a889                  _TextMode                                   ; $a889
  043ca  3f2e000a              move.w   $a(a6),-(a7)                       
  043ce  3f2e0008              move.w   $8(a6),-(a7)                       
  043d2  4ebac89a              jsr      f2_0c6e                            
  043d6  1e2e000d              move.b   $d(a6),d7                          
  043da  3ebc001b              move.w   #$1b,(a7)                          
  043de  a887                  _TextFont                                   ; $a887
  043e0  3ebc000f              move.w   #$f,(a7)                           
  043e4  a88a                  _TextSize                                   ; $a88a
  043e6  3f2e0008              move.w   $8(a6),-(a7)                       
  043ea  3f2e000a              move.w   $a(a6),-(a7)                       
  043ee  a893                  _MoveTo                                     ; $a893
  043f0  1007                  move.b   d7,d0                              
  043f2  49c0                  extb.l   d0                                 
  043f4  3f00                  move.w   d0,-(a7)                           
  043f6  a883                  _DrawChar                                   ; $a883
  043f8  3f3c0003              move.w   #3,-(a7)                           
  043fc  a887                  _TextFont                                   ; $a887
  043fe  3f3c000c              move.w   #$c,-(a7)                          
  04402  a88a                  _TextSize                                   ; $a88a
  04404  2f2efffc              move.l   -$4(a6),-(a7)                      
  04408  a873                  _SetPort                                    ; $a873
L440a:
  0440a  2e1f                  move.l   (a7)+,d7                           
  0440c  4e5e                  unlk     a6                                 
  0440e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_4410   [jump table #35]
;----------------------------------------------------------------------
f2_4410:
  04410  4e560000              link     a6,#0                              
  04414  2f07                  move.l   d7,-(a7)                           
  04416  4a39ffff9853          tst.b    g_67ad                             
  0441c  661a                  bne.s    L4438                              
  0441e  7e7c                  moveq    #124,d7                            
  04420  de79ffff83bc          add.w    g_7c44,d7                          
  04426  3f07                  move.w   d7,-(a7)                           
  04428  3f39ffff836e          move.w   g_7c92,-(a7)                       
  0442e  3f39ffff836c          move.w   g_7c94,-(a7)                       
  04434  4ebaff72              jsr      f2_43a8                            
L4438:
  04438  2e2efffc              move.l   -$4(a6),d7                         
  0443c  4e5e                  unlk     a6                                 
  0443e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_4440   [jump table #36]
;----------------------------------------------------------------------
f2_4440:
  04440  4e56fff6              link     a6,#-10                            
  04444  48e70300              movem.l  d6/d7,-(a7)                        
  04448  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  0444e  a873                  _SetPort                                    ; $a873
  04450  4a39ffff9853          tst.b    g_67ad                             
  04456  6736                  beq.s    L448e                              
  04458  3f3c0008              move.w   #8,-(a7)                           
  0445c  a89c                  _PenMode                                    ; $a89c
  0445e  2079ffff8fb6          movea.l  g_704a,a0                          
  04464  48680010              pea      $10(a0)                            
  04468  2f3cffffac52          move.l   #$ffffac52,-(a7)                   
  0446e  a8a5                  _FillRect                                   ; $a8a5
  04470  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  04476  a873                  _SetPort                                    ; $a873
  04478  2079ffff9382          movea.l  g_6c7e,a0                          
  0447e  48680010              pea      $10(a0)                            
  04482  2f3cffffac52          move.l   #$ffffac52,-(a7)                   
  04488  a8a5                  _FillRect                                   ; $a8a5
  0448a  6000025a              bra.w    L46e6                              
L448e:
  0448e  4eba1fc0              jsr      f2_6450                            
  04492  7e01                  moveq    #1,d7                              
  04494  6000023e              bra.w    L46d4                              
L4498:
  04498  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  044a0  2008                  move.l   a0,d0                              
  044a2  81fc0015              divs.w   #$15,d0                            
  044a6  c1fc0012              muls.w   #$12,d0                            
  044aa  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  044b2  2208                  move.l   a0,d1                              
  044b4  83fc0015              divs.w   #$15,d1                            
  044b8  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  044be  3041                  movea.w  d1,a0                              
  044c0  d1c8                  adda.l   a0,a0                              
  044c2  4a700800              tst.w    $0(a0,d0.l)                        
  044c6  6c000122              bge.w    L45ea                              
  044ca  486efff8              pea      -$8(a6)                            
  044ce  3f3073b0ffff8afe      move.w   (-$7502,za0,d7.w*2),-(a7)          
  044d6  3f3073b0ffff8ad4      move.w   (-$752c,za0,d7.w*2),-(a7)          
  044de  3f3073b0ffff8b52      move.w   (-$74ae,za0,d7.w*2),-(a7)          
  044e6  3f3073b0ffff8b28      move.w   (-$74d8,za0,d7.w*2),-(a7)          
  044ee  a8a7                  _SetRect                                    ; $a8a7
  044f0  486efff8              pea      -$8(a6)                            
  044f4  a8a3                  _EraseRect                                  ; $a8a3
  044f6  486efff8              pea      -$8(a6)                            
  044fa  a8a1                  _FrameRect                                  ; $a8a1
  044fc  3f3c000a              move.w   #$a,-(a7)                          
  04500  a89c                  _PenMode                                    ; $a89c
  04502  4a7073b0ffff8a56      tst.w    (-$75aa,za0,d7.w*2)                
  0450a  6f34                  ble.s    L4540                              
  0450c  70ff                  moveq    #-1,d0                             
  0450e  d07073b0ffff8b52      add.w    (-$74ae,za0,d7.w*2),d0             
  04516  3f00                  move.w   d0,-(a7)                           
  04518  7001                  moveq    #1,d0                              
  0451a  d07073b0ffff8a56      add.w    (-$75aa,za0,d7.w*2),d0             
  04522  3f00                  move.w   d0,-(a7)                           
  04524  a893                  _MoveTo                                     ; $a893
  04526  70ff                  moveq    #-1,d0                             
  04528  d07073b0ffff8b52      add.w    (-$74ae,za0,d7.w*2),d0             
  04530  3f00                  move.w   d0,-(a7)                           
  04532  7013                  moveq    #19,d0                             
  04534  d07073b0ffff8a56      add.w    (-$75aa,za0,d7.w*2),d0             
  0453c  3f00                  move.w   d0,-(a7)                           
  0453e  a891                  _LineTo                                     ; $a891
L4540:
  04540  4a7073b0ffff8a80      tst.w    (-$7580,za0,d7.w*2)                
  04548  6f34                  ble.s    L457e                              
  0454a  7001                  moveq    #1,d0                              
  0454c  d07073b0ffff8a80      add.w    (-$7580,za0,d7.w*2),d0             
  04554  3f00                  move.w   d0,-(a7)                           
  04556  70ff                  moveq    #-1,d0                             
  04558  d07073b0ffff8b28      add.w    (-$74d8,za0,d7.w*2),d0             
  04560  3f00                  move.w   d0,-(a7)                           
  04562  a893                  _MoveTo                                     ; $a893
  04564  7013                  moveq    #19,d0                             
  04566  d07073b0ffff8a80      add.w    (-$7580,za0,d7.w*2),d0             
  0456e  3f00                  move.w   d0,-(a7)                           
  04570  70ff                  moveq    #-1,d0                             
  04572  d07073b0ffff8b28      add.w    (-$74d8,za0,d7.w*2),d0             
  0457a  3f00                  move.w   d0,-(a7)                           
  0457c  a891                  _LineTo                                     ; $a891
L457e:
  0457e  4a7073b0ffff8aaa      tst.w    (-$7556,za0,d7.w*2)                
  04586  6f2c                  ble.s    L45b4                              
  04588  3f3073b0ffff8afe      move.w   (-$7502,za0,d7.w*2),-(a7)          
  04590  7001                  moveq    #1,d0                              
  04592  d07073b0ffff8aaa      add.w    (-$7556,za0,d7.w*2),d0             
  0459a  3f00                  move.w   d0,-(a7)                           
  0459c  a893                  _MoveTo                                     ; $a893
  0459e  3f3073b0ffff8afe      move.w   (-$7502,za0,d7.w*2),-(a7)          
  045a6  7013                  moveq    #19,d0                             
  045a8  d07073b0ffff8aaa      add.w    (-$7556,za0,d7.w*2),d0             
  045b0  3f00                  move.w   d0,-(a7)                           
  045b2  a891                  _LineTo                                     ; $a891
L45b4:
  045b4  4a7073b0ffff8a2c      tst.w    (-$75d4,za0,d7.w*2)                
  045bc  6f2c                  ble.s    L45ea                              
  045be  7001                  moveq    #1,d0                              
  045c0  d07073b0ffff8a2c      add.w    (-$75d4,za0,d7.w*2),d0             
  045c8  3f00                  move.w   d0,-(a7)                           
  045ca  3f3073b0ffff8ad4      move.w   (-$752c,za0,d7.w*2),-(a7)          
  045d2  a893                  _MoveTo                                     ; $a893
  045d4  7013                  moveq    #19,d0                             
  045d6  d07073b0ffff8a2c      add.w    (-$75d4,za0,d7.w*2),d0             
  045de  3f00                  move.w   d0,-(a7)                           
  045e0  3f3073b0ffff8ad4      move.w   (-$752c,za0,d7.w*2),-(a7)          
  045e8  a891                  _LineTo                                     ; $a891
L45ea:
  045ea  be79ffff8888          cmp.w    g_7778,d7                          
  045f0  663a                  bne.s    L462c                              
  045f2  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  045fa  2008                  move.l   a0,d0                              
  045fc  81fc0015              divs.w   #$15,d0                            
  04600  c1fc0012              muls.w   #$12,d0                            
  04604  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  0460c  2208                  move.l   a0,d1                              
  0460e  83fc0015              divs.w   #$15,d1                            
  04612  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04618  3041                  movea.w  d1,a0                              
  0461a  d1c8                  adda.l   a0,a0                              
  0461c  4a700800              tst.w    $0(a0,d0.l)                        
  04620  6c0a                  bge.s    L462c                              
  04622  3f3c0002              move.w   #2,-(a7)                           
  04626  4eba287e              jsr      f2_6ea6                            
  0462a  548f                  addq.l   #2,a7                              
L462c:
  0462c  be79ffff884c          cmp.w    g_77b4,d7                          
  04632  663a                  bne.s    L466e                              
  04634  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  0463c  2008                  move.l   a0,d0                              
  0463e  81fc0015              divs.w   #$15,d0                            
  04642  c1fc0012              muls.w   #$12,d0                            
  04646  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  0464e  2208                  move.l   a0,d1                              
  04650  83fc0015              divs.w   #$15,d1                            
  04654  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0465a  3041                  movea.w  d1,a0                              
  0465c  d1c8                  adda.l   a0,a0                              
  0465e  4a700800              tst.w    $0(a0,d0.l)                        
  04662  6c0a                  bge.s    L466e                              
  04664  3f3c0001              move.w   #1,-(a7)                           
  04668  4eba283c              jsr      f2_6ea6                            
  0466c  548f                  addq.l   #2,a7                              
L466e:
  0466e  7c00                  moveq    #0,d6                              
  04670  6054                  bra.s    L46c6                              
L4672:
  04672  3039ffff8894          move.w   g_776c,d0                          
  04678  b07063b0ffff3ad4      cmp.w    (-$c52c,za0,d6.w*2),d0             
  04680  6642                  bne.s    L46c4                              
  04682  be7063b0ffff784a      cmp.w    (-$87b6,za0,d6.w*2),d7             
  0468a  6638                  bne.s    L46c4                              
  0468c  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  04694  2008                  move.l   a0,d0                              
  04696  81fc0015              divs.w   #$15,d0                            
  0469a  c1fc0012              muls.w   #$12,d0                            
  0469e  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  046a6  2208                  move.l   a0,d1                              
  046a8  83fc0015              divs.w   #$15,d1                            
  046ac  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  046b2  3041                  movea.w  d1,a0                              
  046b4  d1c8                  adda.l   a0,a0                              
  046b6  4a700800              tst.w    $0(a0,d0.l)                        
  046ba  6c08                  bge.s    L46c4                              
  046bc  4267                  clr.w    -(a7)                              
  046be  4eba27e6              jsr      f2_6ea6                            
  046c2  548f                  addq.l   #2,a7                              
L46c4:
  046c4  5246                  addq.w   #1,d6                              
L46c6:
  046c6  0c460006              cmpi.w   #6,d6                              
  046ca  6da6                  blt.s    L4672                              
  046cc  3f3c0008              move.w   #8,-(a7)                           
  046d0  a89c                  _PenMode                                    ; $a89c
  046d2  5247                  addq.w   #1,d7                              
L46d4:
  046d4  be79ffff883e          cmp.w    g_77c2,d7                          
  046da  6f00fdbc              ble.w    L4498                              
  046de  4267                  clr.w    -(a7)                              
  046e0  a889                  _TextMode                                   ; $a889
  046e2  4ebafd2c              jsr      f2_4410                            
L46e6:
  046e6  4cdf00c0              movem.l  (a7)+,d6/d7                        
  046ea  4e5e                  unlk     a6                                 
  046ec  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_46ee   [jump table #37]
;----------------------------------------------------------------------
f2_46ee:
  046ee  4e560000              link     a6,#0                              
  046f2  206e0008              movea.l  $8(a6),a0                          
  046f6  3010                  move.w   (a0),d0                            
  046f8  b06e000c              cmp.w    $c(a6),d0                          
  046fc  6d16                  blt.s    L4714                              
  046fe  206e0008              movea.l  $8(a6),a0                          
  04702  3010                  move.w   (a0),d0                            
  04704  b06e000e              cmp.w    $e(a6),d0                          
  04708  6c0a                  bge.s    L4714                              
  0470a  302e0010              move.w   $10(a6),d0                         
  0470e  206e0008              movea.l  $8(a6),a0                          
  04712  d150                  add.w    d0,(a0)                            
L4714:
  04714  4aae0012              tst.l    $12(a6)                            
  04718  6706                  beq.s    L4720                              
  0471a  206e0012              movea.l  $12(a6),a0                         
  0471e  4e90                  jsr      (a0)                               
L4720:
  04720  4e5e                  unlk     a6                                 
  04722  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_4724   [jump table #38]
;----------------------------------------------------------------------
f2_4724:
  04724  4e56fff2              link     a6,#-14                            
  04728  48e70700              movem.l  d5/d6/d7,-(a7)                     
  0472c  7e00                  moveq    #0,d7                              
  0472e  41eefff6              lea      -$a(a6),a0                         
  04732  43f9ffffa8aa          lea      g_5756,a1                          
  04738  20d9                  move.l   (a1)+,(a0)+                        
  0473a  20d9                  move.l   (a1)+,(a0)+                        
  0473c  30d9                  move.w   (a1)+,(a0)+                        
  0473e  486efff2              pea      -$e(a6)                            
  04742  a874                  _GetPort                                    ; $a874
  04744  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  0474a  a873                  _SetPort                                    ; $a873
  0474c  4a39ffff9852          tst.b    g_67ae                             
  04752  6704                  beq.s    L4758                              
  04754  7000                  moveq    #0,d0                              
  04756  600e                  bra.s    L4766                              
L4758:
  04758  4a39ffff9854          tst.b    g_67ac                             
  0475e  6704                  beq.s    L4764                              
  04760  7003                  moveq    #3,d0                              
  04762  6002                  bra.s    L4766                              
L4764:
  04764  7001                  moveq    #1,d0                              
L4766:
  04766  3a00                  move.w   d0,d5                              
  04768  3f39ffff836e          move.w   g_7c92,-(a7)                       
  0476e  3f39ffff836c          move.w   g_7c94,-(a7)                       
  04774  4ebac4f8              jsr      f2_0c6e                            
  04778  db79ffff8832          add.w    d5,g_77ce                          
  0477e  302e000a              move.w   $a(a6),d0                          
  04782  d179ffff836e          add.w    d0,g_7c92                          
  04788  322e0008              move.w   $8(a6),d1                          
  0478c  d379ffff836c          add.w    d1,g_7c94                          
  04792  7c00                  moveq    #0,d6                              
  04794  588f                  addq.l   #4,a7                              
  04796  6026                  bra.s    L47be                              
L4798:
  04798  3039ffff8832          move.w   g_77ce,d0                          
  0479e  b07662f6              cmp.w    -$a(a6,d6.w*2),d0                  
  047a2  6f18                  ble.s    L47bc                              
  047a4  3039ffff8832          move.w   g_77ce,d0                          
  047aa  b07662f8              cmp.w    -$8(a6,d6.w*2),d0                  
  047ae  6c0c                  bge.s    L47bc                              
  047b0  bc79ffff8836          cmp.w    g_77ca,d6                          
  047b6  6604                  bne.s    L47bc                              
  047b8  4ead067a              jsr      f6_2f0c                            
L47bc:
  047bc  5246                  addq.w   #1,d6                              
L47be:
  047be  0c460004              cmpi.w   #4,d6                              
  047c2  6dd4                  blt.s    L4798                              
  047c4  3f39ffff836e          move.w   g_7c92,-(a7)                       
  047ca  3f39ffff836c          move.w   g_7c94,-(a7)                       
  047d0  4ebac53e              jsr      f2_0d10                            
  047d4  4ebafc3a              jsr      f2_4410                            
  047d8  2eaefff2              move.l   -$e(a6),(a7)                       
  047dc  a873                  _SetPort                                    ; $a873
  047de  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  047e2  4e5e                  unlk     a6                                 
  047e4  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_47e6   [jump table #39]
;----------------------------------------------------------------------
f2_47e6:
  047e6  4e56fff0              link     a6,#-16                            
  047ea  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  047ee  1e2e0008              move.b   $8(a6),d7                          
  047f2  3d79ffff8894fffe      move.w   g_776c,-$2(a6)                     
  047fa  3d79ffff836cfffc      move.w   g_7c94,-$4(a6)                     
  04802  3d79ffff836efffa      move.w   g_7c92,-$6(a6)                     
  0480a  486efff2              pea      -$e(a6)                            
  0480e  48780064              pea      ($64).w                            
  04812  2f3c0012012c          move.l   #$12012c,-(a7)                     
  04818  a8a7                  _SetRect                                    ; $a8a7
  0481a  13fc0001ffff8dea      move.b   #1,g_7216                          
  04822  4239ffff980e          clr.b    g_67f2                             
  04828  1f07                  move.b   d7,-(a7)                           
  0482a  4ead026a              jsr      f3_0000                            
  0482e  3079ffff836e          movea.w  g_7c92,a0                          
  04834  78f1                  moveq    #-15,d4                            
  04836  d888                  add.l    a0,d4                              
  04838  89fc0015              divs.w   #$15,d4                            
  0483c  3079ffff836c          movea.w  g_7c94,a0                          
  04842  2a08                  move.l   a0,d5                              
  04844  8bfc0015              divs.w   #$15,d5                            
  04848  7012                  moveq    #18,d0                             
  0484a  c1c5                  muls.w   d5,d0                              
  0484c  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04852  3044                  movea.w  d4,a0                              
  04854  d1c8                  adda.l   a0,a0                              
  04856  3eb00800              move.w   $0(a0,d0.l),(a7)                   
  0485a  4eba31d0              jsr      f2_7a2c                            
  0485e  3c00                  move.w   d0,d6                              
  04860  1ebc0001              move.b   #1,(a7)                            
  04864  4ead0272              jsr      f3_0114                            
  04868  4a00                  tst.b    d0                                 
  0486a  548f                  addq.l   #2,a7                              
  0486c  6600067e              bne.w    L4eec                              
  04870  3039ffff83bc          move.w   g_7c44,d0                          
  04876  6700066e              beq.w    L4ee6                              
  0487a  6b00066a              bmi.w    L4ee6                              
  0487e  5740                  subq.w   #3,d0                              
  04880  67000352              beq.w    L4bd4                              
  04884  6a08                  bpl.s    L488e                              
  04886  5240                  addq.w   #1,d0                              
  04888  6a0001b4              bpl.w    L4a3e                              
  0488c  600a                  bra.s    L4898                              
L488e:
  0488e  5540                  subq.w   #2,d0                              
  04890  6a000654              bpl.w    L4ee6                              
  04894  600004c2              bra.w    L4d58                              
L4898:
  04898  7012                  moveq    #18,d0                             
  0489a  c1c5                  muls.w   d5,d0                              
  0489c  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  048a2  3044                  movea.w  d4,a0                              
  048a4  d1c8                  adda.l   a0,a0                              
  048a6  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  048aa  4eba3180              jsr      f2_7a2c                            
  048ae  3d40fff0              move.w   d0,-$10(a6)                        
  048b2  3e86                  move.w   d6,(a7)                            
  048b4  4eba3176              jsr      f2_7a2c                            
  048b8  b06efff0              cmp.w    -$10(a6),d0                        
  048bc  548f                  addq.l   #2,a7                              
  048be  6714                  beq.s    L48d4                              
  048c0  70ff                  moveq    #-1,d0                             
  048c2  d079ffff836c          add.w    g_7c94,d0                          
  048c8  b07063b0ffff8a2c      cmp.w    (-$75d4,za0,d6.w*2),d0             
  048d0  66000138              bne.w    L4a0a                              
L48d4:
  048d4  70ff                  moveq    #-1,d0                             
  048d6  d079ffff836c          add.w    g_7c94,d0                          
  048dc  b07063b0ffff8a2c      cmp.w    (-$75d4,za0,d6.w*2),d0             
  048e4  663c                  bne.s    L4922                              
  048e6  7012                  moveq    #18,d0                             
  048e8  c1c5                  muls.w   d5,d0                              
  048ea  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  048f0  3044                  movea.w  d4,a0                              
  048f2  d1c8                  adda.l   a0,a0                              
  048f4  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  048f8  4eba3132              jsr      f2_7a2c                            
  048fc  3d40fff0              move.w   d0,-$10(a6)                        
  04900  3e86                  move.w   d6,(a7)                            
  04902  4eba3128              jsr      f2_7a2c                            
  04906  b06efff0              cmp.w    -$10(a6),d0                        
  0490a  548f                  addq.l   #2,a7                              
  0490c  6714                  beq.s    L4922                              
  0490e  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  04914  a851                  _SetCursor                                  ; $a851
  04916  1f07                  move.b   d7,-(a7)                           
  04918  3f06                  move.w   d6,-(a7)                           
  0491a  4267                  clr.w    -(a7)                              
  0491c  4ead038a              jsr      f3_77f8                            
  04920  5c8f                  addq.l   #6,a7                              
L4922:
  04922  4a3061b0ffff985e      tst.b    (-$67a2,za0,d6.w)                  
  0492a  672e                  beq.s    L495a                              
  0492c  7012                  moveq    #18,d0                             
  0492e  c1c5                  muls.w   d5,d0                              
  04930  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  04936  3044                  movea.w  d4,a0                              
  04938  d1c8                  adda.l   a0,a0                              
  0493a  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  0493e  4eba30ec              jsr      f2_7a2c                            
  04942  3d40fff0              move.w   d0,-$10(a6)                        
  04946  3e86                  move.w   d6,(a7)                            
  04948  4eba30e2              jsr      f2_7a2c                            
  0494c  b06efff0              cmp.w    -$10(a6),d0                        
  04950  548f                  addq.l   #2,a7                              
  04952  6706                  beq.s    L495a                              
  04954  4a07                  tst.b    d7                                 
  04956  6700058e              beq.w    L4ee6                              
L495a:
  0495a  7012                  moveq    #18,d0                             
  0495c  c1c5                  muls.w   d5,d0                              
  0495e  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  04964  3044                  movea.w  d4,a0                              
  04966  d1c8                  adda.l   a0,a0                              
  04968  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  0496c  4eba30be              jsr      f2_7a2c                            
  04970  33c0ffff8d9e          move.w   d0,g_7262                          
  04976  3e80                  move.w   d0,(a7)                            
  04978  4eba2326              jsr      f2_6ca0                            
  0497c  4a39ffff8dea          tst.b    g_7216                             
  04982  548f                  addq.l   #2,a7                              
  04984  67000560              beq.w    L4ee6                              
  04988  4a39ffff980e          tst.b    g_67f2                             
  0498e  66000556              bne.w    L4ee6                              
  04992  302efffe              move.w   -$2(a6),d0                         
  04996  b079ffff8894          cmp.w    g_776c,d0                          
  0499c  671a                  beq.s    L49b8                              
  0499e  302efffc              move.w   -$4(a6),d0                         
  049a2  b079ffff836c          cmp.w    g_7c94,d0                          
  049a8  660e                  bne.s    L49b8                              
  049aa  302efffa              move.w   -$6(a6),d0                         
  049ae  b079ffff836e          cmp.w    g_7c92,d0                          
  049b4  67000530              beq.w    L4ee6                              
L49b8:
  049b8  2f3c0000ffeb          move.l   #$ffeb,-(a7)                       
  049be  4ebafd64              jsr      f2_4724                            
  049c2  7601                  moveq    #1,d3                              
  049c4  588f                  addq.l   #4,a7                              
  049c6  6020                  bra.s    L49e8                              
L49c8:
  049c8  4a79ffff8370          tst.w    g_7c90                             
  049ce  6f16                  ble.s    L49e6                              
  049d0  4a7033b0ffff8c78      tst.w    (-$7388,za0,d3.w*2)                
  049d8  670c                  beq.s    L49e6                              
  049da  4a07                  tst.b    d7                                 
  049dc  6608                  bne.s    L49e6                              
  049de  3f03                  move.w   d3,-(a7)                           
  049e0  4ead0672              jsr      f6_294e                            
  049e4  548f                  addq.l   #2,a7                              
L49e6:
  049e6  5243                  addq.w   #1,d3                              
L49e8:
  049e8  b679ffff883e          cmp.w    g_77c2,d3                          
  049ee  6fd8                  ble.s    L49c8                              
  049f0  1f3c0001              move.b   #1,-(a7)                           
  049f4  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  049fa  4eba0aa2              jsr      f2_549e                            
  049fe  1e87                  move.b   d7,(a7)                            
  04a00  4ead026a              jsr      f3_0000                            
  04a04  588f                  addq.l   #4,a7                              
  04a06  600004de              bra.w    L4ee6                              
L4a0a:
  04a0a  3f3c0002              move.w   #2,-(a7)                           
  04a0e  4eba2f98              jsr      f2_79a8                            
  04a12  4a40                  tst.w    d0                                 
  04a14  548f                  addq.l   #2,a7                              
  04a16  671e                  beq.s    L4a36                              
  04a18  6b1c                  bmi.s    L4a36                              
  04a1a  5540                  subq.w   #2,d0                              
  04a1c  670e                  beq.s    L4a2c                              
  04a1e  6a16                  bpl.s    L4a36                              
  04a20  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  04a24  4ead030a              jsr      f3_4238                            
  04a28  548f                  addq.l   #2,a7                              
  04a2a  600a                  bra.s    L4a36                              
L4a2c:
  04a2c  3f3c5bf2              move.w   #$5bf2,-(a7)                       
  04a30  4ead030a              jsr      f3_4238                            
  04a34  548f                  addq.l   #2,a7                              
L4a36:
  04a36  4ead0312              jsr      f3_4384                            
  04a3a  600004aa              bra.w    L4ee6                              
L4a3e:
  04a3e  7001                  moveq    #1,d0                              
  04a40  d045                  add.w    d5,d0                              
  04a42  c1fc0012              muls.w   #$12,d0                            
  04a46  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04a4c  3044                  movea.w  d4,a0                              
  04a4e  d1c8                  adda.l   a0,a0                              
  04a50  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04a54  4eba2fd6              jsr      f2_7a2c                            
  04a58  3d40fff0              move.w   d0,-$10(a6)                        
  04a5c  3e86                  move.w   d6,(a7)                            
  04a5e  4eba2fcc              jsr      f2_7a2c                            
  04a62  b06efff0              cmp.w    -$10(a6),d0                        
  04a66  548f                  addq.l   #2,a7                              
  04a68  6714                  beq.s    L4a7e                              
  04a6a  70f1                  moveq    #-15,d0                            
  04a6c  d079ffff836e          add.w    g_7c92,d0                          
  04a72  b07063b0ffff8a56      cmp.w    (-$75aa,za0,d6.w*2),d0             
  04a7a  66000146              bne.w    L4bc2                              
L4a7e:
  04a7e  70f1                  moveq    #-15,d0                            
  04a80  d079ffff836e          add.w    g_7c92,d0                          
  04a86  b07063b0ffff8a56      cmp.w    (-$75aa,za0,d6.w*2),d0             
  04a8e  6642                  bne.s    L4ad2                              
  04a90  7001                  moveq    #1,d0                              
  04a92  d045                  add.w    d5,d0                              
  04a94  c1fc0012              muls.w   #$12,d0                            
  04a98  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04a9e  3044                  movea.w  d4,a0                              
  04aa0  d1c8                  adda.l   a0,a0                              
  04aa2  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04aa6  4eba2f84              jsr      f2_7a2c                            
  04aaa  3d40fff0              move.w   d0,-$10(a6)                        
  04aae  3e86                  move.w   d6,(a7)                            
  04ab0  4eba2f7a              jsr      f2_7a2c                            
  04ab4  b06efff0              cmp.w    -$10(a6),d0                        
  04ab8  548f                  addq.l   #2,a7                              
  04aba  6716                  beq.s    L4ad2                              
  04abc  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  04ac2  a851                  _SetCursor                                  ; $a851
  04ac4  1f07                  move.b   d7,-(a7)                           
  04ac6  3f06                  move.w   d6,-(a7)                           
  04ac8  3f3c0001              move.w   #1,-(a7)                           
  04acc  4ead038a              jsr      f3_77f8                            
  04ad0  5c8f                  addq.l   #6,a7                              
L4ad2:
  04ad2  4a3061b0ffff9873      tst.b    (-$678d,za0,d6.w)                  
  04ada  6732                  beq.s    L4b0e                              
  04adc  7001                  moveq    #1,d0                              
  04ade  d045                  add.w    d5,d0                              
  04ae0  c1fc0012              muls.w   #$12,d0                            
  04ae4  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04aea  3044                  movea.w  d4,a0                              
  04aec  d1c8                  adda.l   a0,a0                              
  04aee  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04af2  4eba2f38              jsr      f2_7a2c                            
  04af6  3d40fff0              move.w   d0,-$10(a6)                        
  04afa  3e86                  move.w   d6,(a7)                            
  04afc  4eba2f2e              jsr      f2_7a2c                            
  04b00  b06efff0              cmp.w    -$10(a6),d0                        
  04b04  548f                  addq.l   #2,a7                              
  04b06  6706                  beq.s    L4b0e                              
  04b08  4a07                  tst.b    d7                                 
  04b0a  670003da              beq.w    L4ee6                              
L4b0e:
  04b0e  7001                  moveq    #1,d0                              
  04b10  d045                  add.w    d5,d0                              
  04b12  c1fc0012              muls.w   #$12,d0                            
  04b16  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04b1c  3044                  movea.w  d4,a0                              
  04b1e  d1c8                  adda.l   a0,a0                              
  04b20  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04b24  4eba2f06              jsr      f2_7a2c                            
  04b28  33c0ffff8d9e          move.w   d0,g_7262                          
  04b2e  3e80                  move.w   d0,(a7)                            
  04b30  4eba216e              jsr      f2_6ca0                            
  04b34  4a39ffff8dea          tst.b    g_7216                             
  04b3a  548f                  addq.l   #2,a7                              
  04b3c  670003a8              beq.w    L4ee6                              
  04b40  4a39ffff980e          tst.b    g_67f2                             
  04b46  6600039e              bne.w    L4ee6                              
  04b4a  302efffe              move.w   -$2(a6),d0                         
  04b4e  b079ffff8894          cmp.w    g_776c,d0                          
  04b54  671a                  beq.s    L4b70                              
  04b56  302efffc              move.w   -$4(a6),d0                         
  04b5a  b079ffff836c          cmp.w    g_7c94,d0                          
  04b60  660e                  bne.s    L4b70                              
  04b62  302efffa              move.w   -$6(a6),d0                         
  04b66  b079ffff836e          cmp.w    g_7c92,d0                          
  04b6c  67000378              beq.w    L4ee6                              
L4b70:
  04b70  2f3c00150000          move.l   #$150000,-(a7)                     
  04b76  4ebafbac              jsr      f2_4724                            
  04b7a  7601                  moveq    #1,d3                              
  04b7c  588f                  addq.l   #4,a7                              
  04b7e  6020                  bra.s    L4ba0                              
L4b80:
  04b80  4a79ffff8370          tst.w    g_7c90                             
  04b86  6f16                  ble.s    L4b9e                              
  04b88  4a7033b0ffff8c78      tst.w    (-$7388,za0,d3.w*2)                
  04b90  670c                  beq.s    L4b9e                              
  04b92  4a07                  tst.b    d7                                 
  04b94  6608                  bne.s    L4b9e                              
  04b96  3f03                  move.w   d3,-(a7)                           
  04b98  4ead0672              jsr      f6_294e                            
  04b9c  548f                  addq.l   #2,a7                              
L4b9e:
  04b9e  5243                  addq.w   #1,d3                              
L4ba0:
  04ba0  b679ffff883e          cmp.w    g_77c2,d3                          
  04ba6  6fd8                  ble.s    L4b80                              
  04ba8  1f3c0001              move.b   #1,-(a7)                           
  04bac  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  04bb2  4eba08ea              jsr      f2_549e                            
  04bb6  1e87                  move.b   d7,(a7)                            
  04bb8  4ead026a              jsr      f3_0000                            
  04bbc  588f                  addq.l   #4,a7                              
  04bbe  60000326              bra.w    L4ee6                              
L4bc2:
  04bc2  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  04bc6  4ead030a              jsr      f3_4238                            
  04bca  4ead0312              jsr      f3_4384                            
  04bce  548f                  addq.l   #2,a7                              
  04bd0  60000314              bra.w    L4ee6                              
L4bd4:
  04bd4  7012                  moveq    #18,d0                             
  04bd6  c1c5                  muls.w   d5,d0                              
  04bd8  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  04bde  3044                  movea.w  d4,a0                              
  04be0  d1c8                  adda.l   a0,a0                              
  04be2  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04be6  4eba2e44              jsr      f2_7a2c                            
  04bea  3d40fff0              move.w   d0,-$10(a6)                        
  04bee  3e86                  move.w   d6,(a7)                            
  04bf0  4eba2e3a              jsr      f2_7a2c                            
  04bf4  b06efff0              cmp.w    -$10(a6),d0                        
  04bf8  548f                  addq.l   #2,a7                              
  04bfa  6714                  beq.s    L4c10                              
  04bfc  70ff                  moveq    #-1,d0                             
  04bfe  d079ffff836c          add.w    g_7c94,d0                          
  04c04  b07063b0ffff8a80      cmp.w    (-$7580,za0,d6.w*2),d0             
  04c0c  66000138              bne.w    L4d46                              
L4c10:
  04c10  70ff                  moveq    #-1,d0                             
  04c12  d079ffff836c          add.w    g_7c94,d0                          
  04c18  b07063b0ffff8a80      cmp.w    (-$7580,za0,d6.w*2),d0             
  04c20  663e                  bne.s    L4c60                              
  04c22  7012                  moveq    #18,d0                             
  04c24  c1c5                  muls.w   d5,d0                              
  04c26  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  04c2c  3044                  movea.w  d4,a0                              
  04c2e  d1c8                  adda.l   a0,a0                              
  04c30  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04c34  4eba2df6              jsr      f2_7a2c                            
  04c38  3d40fff0              move.w   d0,-$10(a6)                        
  04c3c  3e86                  move.w   d6,(a7)                            
  04c3e  4eba2dec              jsr      f2_7a2c                            
  04c42  b06efff0              cmp.w    -$10(a6),d0                        
  04c46  548f                  addq.l   #2,a7                              
  04c48  6716                  beq.s    L4c60                              
  04c4a  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  04c50  a851                  _SetCursor                                  ; $a851
  04c52  1f07                  move.b   d7,-(a7)                           
  04c54  3f06                  move.w   d6,-(a7)                           
  04c56  3f3c0002              move.w   #2,-(a7)                           
  04c5a  4ead038a              jsr      f3_77f8                            
  04c5e  5c8f                  addq.l   #6,a7                              
L4c60:
  04c60  4a3061b0ffff9888      tst.b    (-$6778,za0,d6.w)                  
  04c68  672e                  beq.s    L4c98                              
  04c6a  7012                  moveq    #18,d0                             
  04c6c  c1c5                  muls.w   d5,d0                              
  04c6e  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  04c74  3044                  movea.w  d4,a0                              
  04c76  d1c8                  adda.l   a0,a0                              
  04c78  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04c7c  4eba2dae              jsr      f2_7a2c                            
  04c80  3d40fff0              move.w   d0,-$10(a6)                        
  04c84  3e86                  move.w   d6,(a7)                            
  04c86  4eba2da4              jsr      f2_7a2c                            
  04c8a  b06efff0              cmp.w    -$10(a6),d0                        
  04c8e  548f                  addq.l   #2,a7                              
  04c90  6706                  beq.s    L4c98                              
  04c92  4a07                  tst.b    d7                                 
  04c94  67000250              beq.w    L4ee6                              
L4c98:
  04c98  7012                  moveq    #18,d0                             
  04c9a  c1c5                  muls.w   d5,d0                              
  04c9c  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  04ca2  3044                  movea.w  d4,a0                              
  04ca4  d1c8                  adda.l   a0,a0                              
  04ca6  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04caa  4eba2d80              jsr      f2_7a2c                            
  04cae  33c0ffff8d9e          move.w   d0,g_7262                          
  04cb4  3e80                  move.w   d0,(a7)                            
  04cb6  4eba1fe8              jsr      f2_6ca0                            
  04cba  4a39ffff8dea          tst.b    g_7216                             
  04cc0  548f                  addq.l   #2,a7                              
  04cc2  67000222              beq.w    L4ee6                              
  04cc6  4a39ffff980e          tst.b    g_67f2                             
  04ccc  66000218              bne.w    L4ee6                              
  04cd0  302efffe              move.w   -$2(a6),d0                         
  04cd4  b079ffff8894          cmp.w    g_776c,d0                          
  04cda  671a                  beq.s    L4cf6                              
  04cdc  302efffc              move.w   -$4(a6),d0                         
  04ce0  b079ffff836c          cmp.w    g_7c94,d0                          
  04ce6  660e                  bne.s    L4cf6                              
  04ce8  302efffa              move.w   -$6(a6),d0                         
  04cec  b079ffff836e          cmp.w    g_7c92,d0                          
  04cf2  670001f2              beq.w    L4ee6                              
L4cf6:
  04cf6  48780015              pea      ($15).w                            
  04cfa  4ebafa28              jsr      f2_4724                            
  04cfe  7601                  moveq    #1,d3                              
  04d00  588f                  addq.l   #4,a7                              
  04d02  6020                  bra.s    L4d24                              
L4d04:
  04d04  4a79ffff8370          tst.w    g_7c90                             
  04d0a  6f16                  ble.s    L4d22                              
  04d0c  4a7033b0ffff8c78      tst.w    (-$7388,za0,d3.w*2)                
  04d14  670c                  beq.s    L4d22                              
  04d16  4a07                  tst.b    d7                                 
  04d18  6608                  bne.s    L4d22                              
  04d1a  3f03                  move.w   d3,-(a7)                           
  04d1c  4ead0672              jsr      f6_294e                            
  04d20  548f                  addq.l   #2,a7                              
L4d22:
  04d22  5243                  addq.w   #1,d3                              
L4d24:
  04d24  b679ffff883e          cmp.w    g_77c2,d3                          
  04d2a  6fd8                  ble.s    L4d04                              
  04d2c  1f3c0001              move.b   #1,-(a7)                           
  04d30  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  04d36  4eba0766              jsr      f2_549e                            
  04d3a  1e87                  move.b   d7,(a7)                            
  04d3c  4ead026a              jsr      f3_0000                            
  04d40  588f                  addq.l   #4,a7                              
  04d42  600001a2              bra.w    L4ee6                              
L4d46:
  04d46  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  04d4a  4ead030a              jsr      f3_4238                            
  04d4e  4ead0312              jsr      f3_4384                            
  04d52  548f                  addq.l   #2,a7                              
  04d54  60000190              bra.w    L4ee6                              
L4d58:
  04d58  70ff                  moveq    #-1,d0                             
  04d5a  d045                  add.w    d5,d0                              
  04d5c  c1fc0012              muls.w   #$12,d0                            
  04d60  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04d66  3044                  movea.w  d4,a0                              
  04d68  d1c8                  adda.l   a0,a0                              
  04d6a  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04d6e  4eba2cbc              jsr      f2_7a2c                            
  04d72  3d40fff0              move.w   d0,-$10(a6)                        
  04d76  3e86                  move.w   d6,(a7)                            
  04d78  4eba2cb2              jsr      f2_7a2c                            
  04d7c  b06efff0              cmp.w    -$10(a6),d0                        
  04d80  548f                  addq.l   #2,a7                              
  04d82  6714                  beq.s    L4d98                              
  04d84  70f1                  moveq    #-15,d0                            
  04d86  d079ffff836e          add.w    g_7c92,d0                          
  04d8c  b07063b0ffff8aaa      cmp.w    (-$7556,za0,d6.w*2),d0             
  04d94  66000142              bne.w    L4ed8                              
L4d98:
  04d98  70f1                  moveq    #-15,d0                            
  04d9a  d079ffff836e          add.w    g_7c92,d0                          
  04da0  b07063b0ffff8aaa      cmp.w    (-$7556,za0,d6.w*2),d0             
  04da8  6642                  bne.s    L4dec                              
  04daa  70ff                  moveq    #-1,d0                             
  04dac  d045                  add.w    d5,d0                              
  04dae  c1fc0012              muls.w   #$12,d0                            
  04db2  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04db8  3044                  movea.w  d4,a0                              
  04dba  d1c8                  adda.l   a0,a0                              
  04dbc  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04dc0  4eba2c6a              jsr      f2_7a2c                            
  04dc4  3d40fff0              move.w   d0,-$10(a6)                        
  04dc8  3e86                  move.w   d6,(a7)                            
  04dca  4eba2c60              jsr      f2_7a2c                            
  04dce  b06efff0              cmp.w    -$10(a6),d0                        
  04dd2  548f                  addq.l   #2,a7                              
  04dd4  6716                  beq.s    L4dec                              
  04dd6  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  04ddc  a851                  _SetCursor                                  ; $a851
  04dde  1f07                  move.b   d7,-(a7)                           
  04de0  3f06                  move.w   d6,-(a7)                           
  04de2  3f3c0003              move.w   #3,-(a7)                           
  04de6  4ead038a              jsr      f3_77f8                            
  04dea  5c8f                  addq.l   #6,a7                              
L4dec:
  04dec  4a3061b0ffff989d      tst.b    (-$6763,za0,d6.w)                  
  04df4  6732                  beq.s    L4e28                              
  04df6  70ff                  moveq    #-1,d0                             
  04df8  d045                  add.w    d5,d0                              
  04dfa  c1fc0012              muls.w   #$12,d0                            
  04dfe  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04e04  3044                  movea.w  d4,a0                              
  04e06  d1c8                  adda.l   a0,a0                              
  04e08  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04e0c  4eba2c1e              jsr      f2_7a2c                            
  04e10  3d40fff0              move.w   d0,-$10(a6)                        
  04e14  3e86                  move.w   d6,(a7)                            
  04e16  4eba2c14              jsr      f2_7a2c                            
  04e1a  b06efff0              cmp.w    -$10(a6),d0                        
  04e1e  548f                  addq.l   #2,a7                              
  04e20  6706                  beq.s    L4e28                              
  04e22  4a07                  tst.b    d7                                 
  04e24  670000c0              beq.w    L4ee6                              
L4e28:
  04e28  70ff                  moveq    #-1,d0                             
  04e2a  d045                  add.w    d5,d0                              
  04e2c  c1fc0012              muls.w   #$12,d0                            
  04e30  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  04e36  3044                  movea.w  d4,a0                              
  04e38  d1c8                  adda.l   a0,a0                              
  04e3a  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  04e3e  4eba2bec              jsr      f2_7a2c                            
  04e42  33c0ffff8d9e          move.w   d0,g_7262                          
  04e48  3e80                  move.w   d0,(a7)                            
  04e4a  4eba1e54              jsr      f2_6ca0                            
  04e4e  4a39ffff8dea          tst.b    g_7216                             
  04e54  548f                  addq.l   #2,a7                              
  04e56  6700008e              beq.w    L4ee6                              
  04e5a  4a39ffff980e          tst.b    g_67f2                             
  04e60  66000084              bne.w    L4ee6                              
  04e64  302efffe              move.w   -$2(a6),d0                         
  04e68  b079ffff8894          cmp.w    g_776c,d0                          
  04e6e  6718                  beq.s    L4e88                              
  04e70  302efffc              move.w   -$4(a6),d0                         
  04e74  b079ffff836c          cmp.w    g_7c94,d0                          
  04e7a  660c                  bne.s    L4e88                              
  04e7c  302efffa              move.w   -$6(a6),d0                         
  04e80  b079ffff836e          cmp.w    g_7c92,d0                          
  04e86  675e                  beq.s    L4ee6                              
L4e88:
  04e88  2f3cffeb0000          move.l   #$ffeb0000,-(a7)                   
  04e8e  4ebaf894              jsr      f2_4724                            
  04e92  7601                  moveq    #1,d3                              
  04e94  588f                  addq.l   #4,a7                              
  04e96  6020                  bra.s    L4eb8                              
L4e98:
  04e98  4a79ffff8370          tst.w    g_7c90                             
  04e9e  6f16                  ble.s    L4eb6                              
  04ea0  4a7033b0ffff8c78      tst.w    (-$7388,za0,d3.w*2)                
  04ea8  670c                  beq.s    L4eb6                              
  04eaa  4a07                  tst.b    d7                                 
  04eac  6608                  bne.s    L4eb6                              
  04eae  3f03                  move.w   d3,-(a7)                           
  04eb0  4ead0672              jsr      f6_294e                            
  04eb4  548f                  addq.l   #2,a7                              
L4eb6:
  04eb6  5243                  addq.w   #1,d3                              
L4eb8:
  04eb8  b679ffff883e          cmp.w    g_77c2,d3                          
  04ebe  6fd8                  ble.s    L4e98                              
  04ec0  1f3c0001              move.b   #1,-(a7)                           
  04ec4  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  04eca  4eba05d2              jsr      f2_549e                            
  04ece  1e87                  move.b   d7,(a7)                            
  04ed0  4ead026a              jsr      f3_0000                            
  04ed4  588f                  addq.l   #4,a7                              
  04ed6  600e                  bra.s    L4ee6                              
L4ed8:
  04ed8  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  04edc  4ead030a              jsr      f3_4238                            
  04ee0  4ead0312              jsr      f3_4384                            
  04ee4  548f                  addq.l   #2,a7                              
L4ee6:
  04ee6  4a79ffff8370          tst.w    g_7c90                             
L4eec:
  04eec  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  04ef0  4e5e                  unlk     a6                                 
  04ef2  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_4ef4
;----------------------------------------------------------------------
f2_4ef4:
  04ef4  4e56fff0              link     a6,#-16                            
  04ef8  486efff8              pea      -$8(a6)                            
  04efc  2f3c006e0005          move.l   #$6e0005,-(a7)                     
  04f02  2f3c00a00037          move.l   #$a00037,-(a7)                     
  04f08  a8a7                  _SetRect                                    ; $a8a7
  04f0a  42a7                  clr.l    -(a7)                              
  04f0c  a975                  _TickCount                                  ; $a975
  04f0e  201f                  move.l   (a7)+,d0                           
  04f10  90b9ffff9824          sub.l    g_67dc,d0                          
  04f16  723c                  moveq    #60,d1                             
  04f18  b280                  cmp.l    d0,d1                              
  04f1a  622a                  bhi.s    L4f46                              
  04f1c  486efff8              pea      -$8(a6)                            
  04f20  a8b7                  _FrameOval                                  ; $a8b7
  04f22  3039ffff3af0          move.w   g_c510,d0                          
  04f28  d179ffff98e8          add.w    d0,g_6718                          
  04f2e  486efff8              pea      -$8(a6)                            
  04f32  4267                  clr.w    -(a7)                              
  04f34  3f39ffff98e8          move.w   g_6718,-(a7)                       
  04f3a  a8bf                  _PaintArc                                   ; $a8bf
  04f3c  42a7                  clr.l    -(a7)                              
  04f3e  a975                  _TickCount                                  ; $a975
  04f40  23dfffff9824          move.l   (a7)+,g_67dc                       
L4f46:
  04f46  4e5e                  unlk     a6                                 
  04f48  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_4f4a
;----------------------------------------------------------------------
f2_4f4a:
  04f4a  4e56ffe6              link     a6,#-26                            
  04f4e  48e70108              movem.l  d7/a4,-(a7)                        
  04f52  286e000c              movea.l  $c(a6),a4                          
  04f56  4227                  clr.b    -(a7)                              
  04f58  3f3c004a              move.w   #$4a,-(a7)                         
  04f5c  486efff0              pea      -$10(a6)                           
  04f60  a970                  _GetNextEvent                               ; $a970
  04f62  7000                  moveq    #0,d0                              
  04f64  101f                  move.b   (a7)+,d0                           
  04f66  3d40ffec              move.w   d0,-$14(a6)                        
  04f6a  322efff0              move.w   -$10(a6),d1                        
  04f6e  0c410008              cmpi.w   #8,d1                              
  04f72  6270                  bhi.s    L4fe4                              
  04f74  43fa0076              lea      L4fec(pc),a1                       
  04f78  d2f11200              adda.w   $0(a1,d1.w*2),a1                   
  04f7c  4ed1                  jmp      (a1)                               
  04f7e  7eff                  moveq    #-1,d7                             
  04f80  ce2efff5              and.b    -$b(a6),d7                         
  04f84  0c070030              cmpi.b   #$30,d7                            
  04f88  6d0c                  blt.s    L4f96                              
  04f8a  0c070039              cmpi.b   #$39,d7                            
  04f8e  6e06                  bgt.s    L4f96                              
  04f90  1007                  move.b   d7,d0                              
  04f92  49c0                  extb.l   d0                                 
  04f94  3880                  move.w   d0,(a4)                            
L4f96:
  04f96  0c070008              cmpi.b   #8,d7                              
  04f9a  6648                  bne.s    L4fe4                              
  04f9c  1007                  move.b   d7,d0                              
  04f9e  49c0                  extb.l   d0                                 
  04fa0  3880                  move.w   d0,(a4)                            
  04fa2  6040                  bra.s    L4fe4                              
  04fa4  38bc0800              move.w   #$800,(a4)                         
  04fa8  603a                  bra.s    L4fe4                              
  04faa  4a2e0010              tst.b    $10(a6)                            
  04fae  6734                  beq.s    L4fe4                              
  04fb0  4227                  clr.b    -(a7)                              
  04fb2  486efff0              pea      -$10(a6)                           
  04fb6  a97f                  _IsDialogEvent                              ; $a97f
  04fb8  4a1f                  tst.b    (a7)+                              
  04fba  6722                  beq.s    L4fde                              
  04fbc  4227                  clr.b    -(a7)                              
  04fbe  486efff0              pea      -$10(a6)                           
  04fc2  486effe8              pea      -$18(a6)                           
  04fc6  486effec              pea      -$14(a6)                           
  04fca  a980                  _DialogSelect                               ; $a980
  04fcc  4a1f                  tst.b    (a7)+                              
  04fce  6714                  beq.s    L4fe4                              
  04fd0  0c6e0004ffec          cmpi.w   #4,-$14(a6)                        
  04fd6  660c                  bne.s    L4fe4                              
  04fd8  38bc0400              move.w   #$400,(a4)                         
  04fdc  6006                  bra.s    L4fe4                              
L4fde:
  04fde  3f3c0001              move.w   #1,-(a7)                           
  04fe2  a9c8                  _SysBeep                                    ; $a9c8
L4fe4:
  04fe4  4cdf1080              movem.l  (a7)+,d7/a4                        
  04fe8  4e5e                  unlk     a6                                 
  04fea  4e75                  rts                                         
  04fec  fff8                  dc.w     $fff8                              
  04fee  ffbe                  dc.w     $ffbe                              
  04ff0  fff8                  dc.w     $fff8                              
  04ff2  ff92                  dc.w     $ff92                              
  04ff4  fff8                  dc.w     $fff8                              
  04ff6  fff8                  dc.w     $fff8                              
  04ff8  ffb8                  dc.w     $ffb8                              
  04ffa  fff8                  dc.w     $fff8                              
  04ffc  fff8                  dc.w     $fff8                              

;----------------------------------------------------------------------
; f2_4ffe   [jump table #40]
;----------------------------------------------------------------------
f2_4ffe:
  04ffe  4e56fff8              link     a6,#-8                             
  05002  2f0b                  move.l   a3,-(a7)                           
  05004  206e0010              movea.l  $10(a6),a0                         
  05008  2d680010fff8          move.l   $10(a0),-$8(a6)                    
  0500e  2d680014fffc          move.l   $14(a0),-$4(a6)                    
  05014  226e000c              movea.l  $c(a6),a1                          
  05018  26690002              movea.l  $2(a1),a3                          
  0501c  0c510006              cmpi.w   #6,(a1)                            
  05020  661c                  bne.s    L503e                              
  05022  b7ee0010              cmpa.l   $10(a6),a3                         
  05026  6616                  bne.s    L503e                              
  05028  206e0008              movea.l  $8(a6),a0                          
  0502c  30bc0014              move.w   #$14,(a0)                          
  05030  2f2e0010              move.l   $10(a6),-(a7)                      
  05034  a981                  _DrawDialog                                 ; $a981
  05036  1d7c00010014          move.b   #1,$14(a6)                         
  0503c  6004                  bra.s    L5042                              
L503e:
  0503e  422e0014              clr.b    $14(a6)                            
L5042:
  05042  265f                  movea.l  (a7)+,a3                           
  05044  4e5e                  unlk     a6                                 
  05046  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f2_504a
;----------------------------------------------------------------------
f2_504a:
  0504a  4e56fe30              link     a6,#-464                           
  0504e  48e70318              movem.l  d6/d7/a3/a4,-(a7)                  
  05052  7e00                  moveq    #0,d7                              
  05054  7c01                  moveq    #1,d6                              
  05056  486efe30              pea      -$1d0(a6)                          
  0505a  a874                  _GetPort                                    ; $a874
  0505c  3f3c000c              move.w   #$c,-(a7)                          
  05060  4eba2946              jsr      f2_79a8                            
  05064  5040                  addq.w   #8,d0                              
  05066  3e00                  move.w   d0,d7                              
  05068  3047                  movea.w  d7,a0                              
  0506a  2f08                  move.l   a0,-(a7)                           
  0506c  486efe34              pea      -$1cc(a6)                          
  05070  4ead0512              jsr      f4_150e                            
  05074  486efe34              pea      -$1cc(a6)                          
  05078  2f3c00000172          move.l   STR_0172,-(a7)                     ; "?"
  0507e  2f3c00000174          move.l   STR_0174,-(a7)                     ; "?"
  05084  2f3c00000176          move.l   STR_0176,-(a7)                     ; "?"
  0508a  a98b                  _ParamText                                  ; $a98b
  0508c  42a7                  clr.l    -(a7)                              
  0508e  3f3c00a2              move.w   #$a2,-(a7)                         
  05092  aa0c                  _GetPixPat                                  ; $aa0c
  05094  265f                  movea.l  (a7)+,a3                           
  05096  42a7                  clr.l    -(a7)                              
  05098  3f3c00c9              move.w   #$c9,-(a7)                         
  0509c  486eff56              pea      -$aa(a6)                           
  050a0  4878ffff              pea      ($ffff).w                          
  050a4  a97c                  _GetNewDialog                               ; $a97c
  050a6  285f                  movea.l  (a7)+,a4                           
  050a8  2f0c                  move.l   a4,-(a7)                           
  050aa  4ead06ba              jsr      f7_161c                            
  050ae  2e8c                  move.l   a4,(a7)                            
  050b0  a915                  _ShowWindow                                 ; $a915
  050b2  2f0c                  move.l   a4,-(a7)                           
  050b4  a873                  _SetPort                                    ; $a873
  050b6  33fc000cffff8378      move.w   #$c,g_7c88                         
  050be  33fc000cffff8376      move.w   #$c,g_7c8a                         
  050c6  33fc000cffff8382      move.w   #$c,g_7c7e                         
  050ce  33fc000cffff837c      move.w   #$c,g_7c84                         
  050d6  486eff40              pea      -$c0(a6)                           
  050da  2f3c003c0014          move.l   #$3c0014,-(a7)                     
  050e0  3007                  move.w   d7,d0                              
  050e2  e548                  lsl.w    #2,d0                              
  050e4  06400014              addi.w   #$14,d0                            
  050e8  3f00                  move.w   d0,-(a7)                           
  050ea  3f3c0046              move.w   #$46,-(a7)                         
  050ee  a8a7                  _SetRect                                    ; $a8a7
  050f0  486eff40              pea      -$c0(a6)                           
  050f4  2f0b                  move.l   a3,-(a7)                           
  050f6  aa0e                  _FillCRect                                  ; $aa0e
  050f8  486eff40              pea      -$c0(a6)                           
  050fc  a8a1                  _FrameRect                                  ; $a8a1
  050fe  548f                  addq.l   #2,a7                              
L5100:
  05100  486d0162              pea      f2_4ffe                            
  05104  486eff54              pea      -$ac(a6)                           
  05108  a991                  _ModalDialog                                ; $a991
  0510a  4a6eff54              tst.w    -$ac(a6)                           
  0510e  6f000190              ble.w    L52a0                              
  05112  4a6eff54              tst.w    -$ac(a6)                           
  05116  6f2a                  ble.s    L5142                              
  05118  0c6e000aff54          cmpi.w   #$a,-$ac(a6)                       
  0511e  6c22                  bge.s    L5142                              
  05120  2f0c                  move.l   a4,-(a7)                           
  05122  7004                  moveq    #4,d0                              
  05124  d06eff54              add.w    -$ac(a6),d0                        
  05128  3f00                  move.w   d0,-(a7)                           
  0512a  486eff52              pea      -$ae(a6)                           
  0512e  486eff34              pea      -$cc(a6)                           
  05132  486eff48              pea      -$b8(a6)                           
  05136  a98d                  _GetDialogItem                              ; $a98d
  05138  2f2eff34              move.l   -$cc(a6),-(a7)                     
  0513c  486efe34              pea      -$1cc(a6)                          
  05140  a990                  _GetDialogItemText                          ; $a990
L5142:
  05142  302eff54              move.w   -$ac(a6),d0                        
  05146  0c400014              cmpi.w   #$14,d0                            
  0514a  62000116              bhi.w    L5262                              
  0514e  43fa01a6              lea      L52f6(pc),a1                       
  05152  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  05156  4ed1                  jmp      (a1)                               
  05158  42a7                  clr.l    -(a7)                              
  0515a  2f3c00190001          move.l   #$190001,-(a7)                     
  05160  3f3c000c              move.w   #$c,-(a7)                          
  05164  2f3cffff8378          move.l   #$ffff8378,-(a7)                   
  0516a  4ebaf582              jsr      f2_46ee                            
  0516e  3079ffff8378          movea.w  g_7c88,a0                          
  05174  2e88                  move.l   a0,(a7)                            
  05176  486efe34              pea      -$1cc(a6)                          
  0517a  4ead0512              jsr      f4_150e                            
  0517e  2eaeff34              move.l   -$cc(a6),(a7)                      
  05182  486efe34              pea      -$1cc(a6)                          
  05186  a98f                  _SetDialogItemText                          ; $a98f
  05188  5c8f                  addq.l   #6,a7                              
  0518a  600000d6              bra.w    L5262                              
  0518e  42a7                  clr.l    -(a7)                              
  05190  2f3c00190001          move.l   #$190001,-(a7)                     
  05196  3f3c000c              move.w   #$c,-(a7)                          
  0519a  2f3cffff8376          move.l   #$ffff8376,-(a7)                   
  051a0  4ebaf54c              jsr      f2_46ee                            
  051a4  3079ffff8376          movea.w  g_7c8a,a0                          
  051aa  2e88                  move.l   a0,(a7)                            
  051ac  486efe34              pea      -$1cc(a6)                          
  051b0  4ead0512              jsr      f4_150e                            
  051b4  2eaeff34              move.l   -$cc(a6),(a7)                      
  051b8  486efe34              pea      -$1cc(a6)                          
  051bc  a98f                  _SetDialogItemText                          ; $a98f
  051be  5c8f                  addq.l   #6,a7                              
  051c0  600000a0              bra.w    L5262                              
  051c4  42a7                  clr.l    -(a7)                              
  051c6  2f3c00190001          move.l   #$190001,-(a7)                     
  051cc  3f3c000c              move.w   #$c,-(a7)                          
  051d0  2f3cffff8382          move.l   #$ffff8382,-(a7)                   
  051d6  4ebaf516              jsr      f2_46ee                            
  051da  3079ffff8382          movea.w  g_7c7e,a0                          
  051e0  2e88                  move.l   a0,(a7)                            
  051e2  486efe34              pea      -$1cc(a6)                          
  051e6  4ead0512              jsr      f4_150e                            
  051ea  2eaeff34              move.l   -$cc(a6),(a7)                      
  051ee  486efe34              pea      -$1cc(a6)                          
  051f2  a98f                  _SetDialogItemText                          ; $a98f
  051f4  5c8f                  addq.l   #6,a7                              
  051f6  606a                  bra.s    L5262                              
  051f8  42a7                  clr.l    -(a7)                              
  051fa  2f3c00190001          move.l   #$190001,-(a7)                     
  05200  3f3c000c              move.w   #$c,-(a7)                          
  05204  2f3cffff837c          move.l   #$ffff837c,-(a7)                   
  0520a  4ebaf4e2              jsr      f2_46ee                            
  0520e  3079ffff837c          movea.w  g_7c84,a0                          
  05214  2e88                  move.l   a0,(a7)                            
  05216  486efe34              pea      -$1cc(a6)                          
  0521a  4ead0512              jsr      f4_150e                            
  0521e  2eaeff34              move.l   -$cc(a6),(a7)                      
  05222  486efe34              pea      -$1cc(a6)                          
  05226  a98f                  _SetDialogItemText                          ; $a98f
  05228  5c8f                  addq.l   #6,a7                              
  0522a  6036                  bra.s    L5262                              
  0522c  7e00                  moveq    #0,d7                              
  0522e  7c00                  moveq    #0,d6                              
  05230  6030                  bra.s    L5262                              
  05232  2f0c                  move.l   a4,-(a7)                           
  05234  a922                  _BeginUpdate                                ; $a922
  05236  486eff38              pea      -$c8(a6)                           
  0523a  2f3c003c0014          move.l   #$3c0014,-(a7)                     
  05240  3007                  move.w   d7,d0                              
  05242  e548                  lsl.w    #2,d0                              
  05244  06400014              addi.w   #$14,d0                            
  05248  3f00                  move.w   d0,-(a7)                           
  0524a  3f3c0046              move.w   #$46,-(a7)                         
  0524e  a8a7                  _SetRect                                    ; $a8a7
  05250  486eff38              pea      -$c8(a6)                           
  05254  2f0b                  move.l   a3,-(a7)                           
  05256  aa0e                  _FillCRect                                  ; $aa0e
  05258  486eff40              pea      -$c0(a6)                           
  0525c  a8a1                  _FrameRect                                  ; $a8a1
  0525e  2f0c                  move.l   a4,-(a7)                           
  05260  a923                  _EndUpdate                                  ; $a923
L5262:
  05262  4a6eff54              tst.w    -$ac(a6)                           
  05266  6f38                  ble.s    L52a0                              
  05268  0c6e000aff54          cmpi.w   #$a,-$ac(a6)                       
  0526e  6c30                  bge.s    L52a0                              
  05270  486eff38              pea      -$c8(a6)                           
  05274  3007                  move.w   d7,d0                              
  05276  e548                  lsl.w    #2,d0                              
  05278  06400010              addi.w   #$10,d0                            
  0527c  3f00                  move.w   d0,-(a7)                           
  0527e  3f3c003c              move.w   #$3c,-(a7)                         
  05282  3007                  move.w   d7,d0                              
  05284  e548                  lsl.w    #2,d0                              
  05286  06400014              addi.w   #$14,d0                            
  0528a  3f00                  move.w   d0,-(a7)                           
  0528c  3f3c0046              move.w   #$46,-(a7)                         
  05290  a8a7                  _SetRect                                    ; $a8a7
  05292  486eff38              pea      -$c8(a6)                           
  05296  a8a3                  _EraseRect                                  ; $a8a3
  05298  486eff40              pea      -$c0(a6)                           
  0529c  a8a1                  _FrameRect                                  ; $a8a1
  0529e  5347                  subq.w   #1,d7                              
L52a0:
  052a0  4a47                  tst.w    d7                                 
  052a2  6e00fe5c              bgt.w    L5100                              
  052a6  2f0c                  move.l   a4,-(a7)                           
  052a8  a983                  _DisposeDialog                              ; $a983
  052aa  4a06                  tst.b    d6                                 
  052ac  6604                  bne.s    L52b2                              
  052ae  1006                  move.b   d6,d0                              
  052b0  603c                  bra.s    L52ee                              
L52b2:
  052b2  4ebac326              jsr      f2_15da                            
  052b6  4eba13a4              jsr      f2_665c                            
  052ba  42a7                  clr.l    -(a7)                              
  052bc  42a7                  clr.l    -(a7)                              
  052be  4ebae0e2              jsr      f2_33a2                            
  052c2  1c00                  move.b   d0,d6                              
  052c4  4ead0392              jsr      f3_74f4                            
  052c8  2eb9ffff8fb6          move.l   g_704a,(a7)                        
  052ce  a915                  _ShowWindow                                 ; $a915
  052d0  2eb9ffff8fd2          move.l   g_702e,(a7)                        
  052d6  a915                  _ShowWindow                                 ; $a915
  052d8  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  052de  a915                  _ShowWindow                                 ; $a915
  052e0  4eba18bc              jsr      f2_6b9e                            
  052e4  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  052ea  a873                  _SetPort                                    ; $a873
  052ec  7001                  moveq    #1,d0                              
L52ee:
  052ee  4cdf18c0              movem.l  (a7)+,d6/d7/a3/a4                  
  052f2  4e5e                  unlk     a6                                 
  052f4  4e75                  rts                                         
  052f6  ff6c                  dc.w     $ff6c                              
  052f8  fe62                  dc.w     $fe62                              
  052fa  fe98                  dc.w     $fe98                              
  052fc  fece                  dc.w     $fece                              
  052fe  ff02                  dc.w     $ff02                              
  05300  ff6c                  dc.w     $ff6c                              
  05302  ff6c                  dc.w     $ff6c                              
  05304  ff6c                  dc.w     $ff6c                              
  05306  ff6c                  dc.w     $ff6c                              
  05308  ff6c                  dc.w     $ff6c                              
  0530a  ff36                  dc.w     $ff36                              
  0530c  ff6c                  dc.w     $ff6c                              
  0530e  ff6c                  dc.w     $ff6c                              
  05310  ff6c                  dc.w     $ff6c                              
  05312  ff6c                  dc.w     $ff6c                              
  05314  ff6c                  dc.w     $ff6c                              
  05316  ff6c                  dc.w     $ff6c                              
  05318  ff6c                  dc.w     $ff6c                              
  0531a  ff6c                  dc.w     $ff6c                              
  0531c  ff6c                  dc.w     $ff6c                              
  0531e  ff3c                  dc.w     $ff3c                              

;----------------------------------------------------------------------
; f2_5320
;----------------------------------------------------------------------
f2_5320:
  05320  4e560000              link     a6,#0                              
  05324  2f07                  move.l   d7,-(a7)                           
  05326  3e2e0008              move.w   $8(a6),d7                          
  0532a  0c47000a              cmpi.w   #$a,d7                             
  0532e  62000142              bhi.w    L5472                              
  05332  43fa0154              lea      L5488(pc),a1                       
  05336  d2f17200              adda.w   $0(a1,d7.w*2),a1                   
  0533a  4ed1                  jmp      (a1)                               
  0533c  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  05342  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  05348  3f07                  move.w   d7,-(a7)                           
  0534a  4ead0402              jsr      f4_3a8c                            
  0534e  4fef000a              lea      $a(a7),a7                          
  05352  6000011e              bra.w    L5472                              
  05356  2f3cffff8864          move.l   #$ffff8864,-(a7)                   
  0535c  2f3cffff8da0          move.l   #$ffff8da0,-(a7)                   
  05362  3f07                  move.w   d7,-(a7)                           
  05364  4ead0402              jsr      f4_3a8c                            
  05368  4fef000a              lea      $a(a7),a7                          
  0536c  60000104              bra.w    L5472                              
  05370  2f3cffff887c          move.l   #$ffff887c,-(a7)                   
  05376  2f3cffff8da4          move.l   #$ffff8da4,-(a7)                   
  0537c  3f07                  move.w   d7,-(a7)                           
  0537e  4ead0402              jsr      f4_3a8c                            
  05382  4fef000a              lea      $a(a7),a7                          
  05386  600000ea              bra.w    L5472                              
  0538a  2f3cffff69a8          move.l   #$ffff69a8,-(a7)                   
  05390  2f3cffff8394          move.l   #$ffff8394,-(a7)                   
  05396  2f3cffff8dae          move.l   #$ffff8dae,-(a7)                   
  0539c  2f3cffff837e          move.l   #$ffff837e,-(a7)                   
  053a2  2f3cffff8db0          move.l   #$ffff8db0,-(a7)                   
  053a8  2f3cffff83a0          move.l   #$ffff83a0,-(a7)                   
  053ae  2f3cffff8dac          move.l   #$ffff8dac,-(a7)                   
  053b4  3f07                  move.w   d7,-(a7)                           
  053b6  4ead0352              jsr      f3_4d50                            
  053ba  4fef001e              lea      $1e(a7),a7                         
  053be  600000b2              bra.w    L5472                              
  053c2  2f3cffff69f8          move.l   #$ffff69f8,-(a7)                   
  053c8  2f3cffff8396          move.l   #$ffff8396,-(a7)                   
  053ce  2f3cffff8db4          move.l   #$ffff8db4,-(a7)                   
  053d4  2f3cffff8380          move.l   #$ffff8380,-(a7)                   
  053da  2f3cffff8db6          move.l   #$ffff8db6,-(a7)                   
  053e0  2f3cffff83a2          move.l   #$ffff83a2,-(a7)                   
  053e6  2f3cffff8db2          move.l   #$ffff8db2,-(a7)                   
  053ec  3f07                  move.w   d7,-(a7)                           
  053ee  4ead0352              jsr      f3_4d50                            
  053f2  4fef001e              lea      $1e(a7),a7                         
  053f6  607a                  bra.s    L5472                              
  053f8  2f3cffff7822          move.l   #$ffff7822,-(a7)                   
  053fe  42a7                  clr.l    -(a7)                              
  05400  42a7                  clr.l    -(a7)                              
  05402  2f3cffff838e          move.l   #$ffff838e,-(a7)                   
  05408  2f3cffff8daa          move.l   #$ffff8daa,-(a7)                   
  0540e  2f3cffff8392          move.l   #$ffff8392,-(a7)                   
  05414  2f3cffff8da8          move.l   #$ffff8da8,-(a7)                   
  0541a  3f07                  move.w   d7,-(a7)                           
  0541c  4ead0352              jsr      f3_4d50                            
  05420  4fef001e              lea      $1e(a7),a7                         
  05424  604c                  bra.s    L5472                              
  05426  2f3cffff8e4a          move.l   #$ffff8e4a,-(a7)                   
  0542c  2f3cffff8db8          move.l   #$ffff8db8,-(a7)                   
  05432  3f07                  move.w   d7,-(a7)                           
  05434  4ead0402              jsr      f4_3a8c                            
  05438  4fef000a              lea      $a(a7),a7                          
  0543c  6034                  bra.s    L5472                              
  0543e  2f3cffff8e56          move.l   #$ffff8e56,-(a7)                   
  05444  2f3cffff8dba          move.l   #$ffff8dba,-(a7)                   
  0544a  3f07                  move.w   d7,-(a7)                           
  0544c  4ead0402              jsr      f4_3a8c                            
  05450  4fef000a              lea      $a(a7),a7                          
  05454  601c                  bra.s    L5472                              
  05456  2f3cffff97d2          move.l   #$ffff97d2,-(a7)                   
  0545c  2f3cffff8dbc          move.l   #$ffff8dbc,-(a7)                   
  05462  3f07                  move.w   d7,-(a7)                           
  05464  4ead0402              jsr      f4_3a8c                            
  05468  4fef000a              lea      $a(a7),a7                          
  0546c  6004                  bra.s    L5472                              
  0546e  4ead05aa              jsr      f5_35e4                            
L5472:
  05472  1f3c0001              move.b   #1,-(a7)                           
  05476  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  0547c  4eba0020              jsr      f2_549e                            
  05480  2e2efffc              move.l   -$4(a6),d7                         
  05484  4e5e                  unlk     a6                                 
  05486  4e75                  rts                                         
  05488  ffea                  dc.w     $ffea                              
  0548a  feb4                  dc.w     $feb4                              
  0548c  fece                  dc.w     $fece                              
  0548e  fee8                  dc.w     $fee8                              
  05490  ff02                  dc.w     $ff02                              
  05492  ff3a                  dc.w     $ff3a                              
  05494  ff70                  dc.w     $ff70                              
  05496  ff9e                  dc.w     $ff9e                              
  05498  ffb6                  dc.w     $ffb6                              
  0549a  ffce                  dc.w     $ffce                              
  0549c  ffe6                  dc.w     $ffe6                              

;----------------------------------------------------------------------
; f2_549e   [jump table #41]
;----------------------------------------------------------------------
f2_549e:
  0549e  4e56ffe4              link     a6,#-28                            
  054a2  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  054a6  3e2e0008              move.w   $8(a6),d7                          
  054aa  3d7cfffffffe          move.w   #$ffff,-$2(a6)                     
  054b0  3d7cfffffffc          move.w   #$ffff,-$4(a6)                     
  054b6  3d7cfffffffa          move.w   #$ffff,-$6(a6)                     
  054bc  3d7cfffffff8          move.w   #$ffff,-$8(a6)                     
  054c2  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  054ca  2008                  move.l   a0,d0                              
  054cc  81fc0015              divs.w   #$15,d0                            
  054d0  3079ffff836c          movea.w  g_7c94,a0                          
  054d6  7202                  moveq    #2,d1                              
  054d8  d288                  add.l    a0,d1                              
  054da  83fc0015              divs.w   #$15,d1                            
  054de  9240                  sub.w    d0,d1                              
  054e0  3d41fff6              move.w   d1,-$a(a6)                         
  054e4  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  054ec  2008                  move.l   a0,d0                              
  054ee  81fc0015              divs.w   #$15,d0                            
  054f2  3079ffff836e          movea.w  g_7c92,a0                          
  054f8  2408                  move.l   a0,d2                              
  054fa  85fc0015              divs.w   #$15,d2                            
  054fe  9440                  sub.w    d0,d2                              
  05500  3d42fff4              move.w   d2,-$c(a6)                         
  05504  426effe6              clr.w    -$1a(a6)                           
  05508  426effe4              clr.w    -$1c(a6)                           
  0550c  426effe8              clr.w    -$18(a6)                           
  05510  4a79ffff8370          tst.w    g_7c90                             
  05516  6f00034c              ble.w    L5864                              
  0551a  3079ffff836e          movea.w  g_7c92,a0                          
  05520  70f1                  moveq    #-15,d0                            
  05522  d088                  add.l    a0,d0                              
  05524  81fc0015              divs.w   #$15,d0                            
  05528  3d40fff0              move.w   d0,-$10(a6)                        
  0552c  3079ffff836c          movea.w  g_7c94,a0                          
  05532  2208                  move.l   a0,d1                              
  05534  83fc0015              divs.w   #$15,d1                            
  05538  3d41fff2              move.w   d1,-$e(a6)                         
  0553c  c3fc0012              muls.w   #$12,d1                            
  05540  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  05546  3040                  movea.w  d0,a0                              
  05548  d1c8                  adda.l   a0,a0                              
  0554a  3f301800              move.w   $0(a0,d1.l),-(a7)                  
  0554e  4eba24dc              jsr      f2_7a2c                            
  05552  33c0ffff8d9e          move.w   d0,g_7262                          
  05558  b047                  cmp.w    d7,d0                              
  0555a  548f                  addq.l   #2,a7                              
  0555c  6706                  beq.s    L5564                              
  0555e  3e39ffff8d9e          move.w   g_7262,d7                          
L5564:
  05564  2f39ffff99f4          move.l   g_660c,-(a7)                       
  0556a  a873                  _SetPort                                    ; $a873
  0556c  4a7073b0ffff8a2c      tst.w    (-$75d4,za0,d7.w*2)                
  05574  6f22                  ble.s    L5598                              
  05576  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  0557e  2008                  move.l   a0,d0                              
  05580  81fc0015              divs.w   #$15,d0                            
  05584  307073b0ffff8a2c      movea.w  (-$75d4,za0,d7.w*2),a0             
  0558c  2208                  move.l   a0,d1                              
  0558e  83fc0015              divs.w   #$15,d1                            
  05592  9240                  sub.w    d0,d1                              
  05594  3d41fffe              move.w   d1,-$2(a6)                         
L5598:
  05598  4a7073b0ffff8a56      tst.w    (-$75aa,za0,d7.w*2)                
  055a0  6f22                  ble.s    L55c4                              
  055a2  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  055aa  2008                  move.l   a0,d0                              
  055ac  81fc0015              divs.w   #$15,d0                            
  055b0  307073b0ffff8a56      movea.w  (-$75aa,za0,d7.w*2),a0             
  055b8  2208                  move.l   a0,d1                              
  055ba  83fc0015              divs.w   #$15,d1                            
  055be  9240                  sub.w    d0,d1                              
  055c0  3d41fffa              move.w   d1,-$6(a6)                         
L55c4:
  055c4  4a7073b0ffff8a80      tst.w    (-$7580,za0,d7.w*2)                
  055cc  6f22                  ble.s    L55f0                              
  055ce  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  055d6  2008                  move.l   a0,d0                              
  055d8  81fc0015              divs.w   #$15,d0                            
  055dc  307073b0ffff8a80      movea.w  (-$7580,za0,d7.w*2),a0             
  055e4  2208                  move.l   a0,d1                              
  055e6  83fc0015              divs.w   #$15,d1                            
  055ea  9240                  sub.w    d0,d1                              
  055ec  3d41fffc              move.w   d1,-$4(a6)                         
L55f0:
  055f0  4a7073b0ffff8aaa      tst.w    (-$7556,za0,d7.w*2)                
  055f8  6f22                  ble.s    L561c                              
  055fa  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  05602  2008                  move.l   a0,d0                              
  05604  81fc0015              divs.w   #$15,d0                            
  05608  307073b0ffff8aaa      movea.w  (-$7556,za0,d7.w*2),a0             
  05610  2208                  move.l   a0,d1                              
  05612  83fc0015              divs.w   #$15,d1                            
  05616  9240                  sub.w    d0,d1                              
  05618  3d41fff8              move.w   d1,-$8(a6)                         
L561c:
  0561c  3039ffff83bc          move.w   g_7c44,d0                          
  05622  67000202              beq.w    L5826                              
  05626  6b0001fe              bmi.w    L5826                              
  0562a  5740                  subq.w   #3,d0                              
  0562c  6700010a              beq.w    L5738                              
  05630  6a08                  bpl.s    L563a                              
  05632  5240                  addq.w   #1,d0                              
  05634  6a000088              bpl.w    L56be                              
  05638  600a                  bra.s    L5644                              
L563a:
  0563a  5540                  subq.w   #2,d0                              
  0563c  6a0001e8              bpl.w    L5826                              
  05640  6000016e              bra.w    L57b0                              
L5644:
  05644  3079ffff836e          movea.w  g_7c92,a0                          
  0564a  2008                  move.l   a0,d0                              
  0564c  81fc0015              divs.w   #$15,d0                            
  05650  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  05658  7aff                  moveq    #-1,d5                             
  0565a  da88                  add.l    a0,d5                              
  0565c  8bfc0015              divs.w   #$15,d5                            
  05660  9a40                  sub.w    d0,d5                              
  05662  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  0566a  2008                  move.l   a0,d0                              
  0566c  81fc0015              divs.w   #$15,d0                            
  05670  3079ffff836e          movea.w  g_7c92,a0                          
  05676  2c08                  move.l   a0,d6                              
  05678  8dfc0015              divs.w   #$15,d6                            
  0567c  9c40                  sub.w    d0,d6                              
  0567e  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  05686  2008                  move.l   a0,d0                              
  05688  81fc0015              divs.w   #$15,d0                            
  0568c  3079ffff836c          movea.w  g_7c94,a0                          
  05692  7802                  moveq    #2,d4                              
  05694  d888                  add.l    a0,d4                              
  05696  89fc0015              divs.w   #$15,d4                            
  0569a  9840                  sub.w    d0,d4                              
  0569c  3079ffff836c          movea.w  g_7c94,a0                          
  056a2  2008                  move.l   a0,d0                              
  056a4  81fc0015              divs.w   #$15,d0                            
  056a8  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  056b0  76ff                  moveq    #-1,d3                             
  056b2  d688                  add.l    a0,d3                              
  056b4  87fc0015              divs.w   #$15,d3                            
  056b8  9640                  sub.w    d0,d3                              
  056ba  6000016a              bra.w    L5826                              
L56be:
  056be  3079ffff836c          movea.w  g_7c94,a0                          
  056c4  2008                  move.l   a0,d0                              
  056c6  81fc0015              divs.w   #$15,d0                            
  056ca  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  056d2  7cff                  moveq    #-1,d6                             
  056d4  dc88                  add.l    a0,d6                              
  056d6  8dfc0015              divs.w   #$15,d6                            
  056da  9c40                  sub.w    d0,d6                              
  056dc  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  056e4  2008                  move.l   a0,d0                              
  056e6  81fc0015              divs.w   #$15,d0                            
  056ea  3079ffff836c          movea.w  g_7c94,a0                          
  056f0  7a02                  moveq    #2,d5                              
  056f2  da88                  add.l    a0,d5                              
  056f4  8bfc0015              divs.w   #$15,d5                            
  056f8  9a40                  sub.w    d0,d5                              
  056fa  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  05702  2008                  move.l   a0,d0                              
  05704  81fc0015              divs.w   #$15,d0                            
  05708  3079ffff836e          movea.w  g_7c92,a0                          
  0570e  2808                  move.l   a0,d4                              
  05710  89fc0015              divs.w   #$15,d4                            
  05714  9840                  sub.w    d0,d4                              
  05716  3079ffff836e          movea.w  g_7c92,a0                          
  0571c  2008                  move.l   a0,d0                              
  0571e  81fc0015              divs.w   #$15,d0                            
  05722  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  0572a  76ff                  moveq    #-1,d3                             
  0572c  d688                  add.l    a0,d3                              
  0572e  87fc0015              divs.w   #$15,d3                            
  05732  9640                  sub.w    d0,d3                              
  05734  600000f0              bra.w    L5826                              
L5738:
  05738  3079ffff836e          movea.w  g_7c92,a0                          
  0573e  2008                  move.l   a0,d0                              
  05740  81fc0015              divs.w   #$15,d0                            
  05744  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  0574c  7cff                  moveq    #-1,d6                             
  0574e  dc88                  add.l    a0,d6                              
  05750  8dfc0015              divs.w   #$15,d6                            
  05754  9c40                  sub.w    d0,d6                              
  05756  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  0575e  2008                  move.l   a0,d0                              
  05760  81fc0015              divs.w   #$15,d0                            
  05764  3079ffff836e          movea.w  g_7c92,a0                          
  0576a  2a08                  move.l   a0,d5                              
  0576c  8bfc0015              divs.w   #$15,d5                            
  05770  9a40                  sub.w    d0,d5                              
  05772  3079ffff836c          movea.w  g_7c94,a0                          
  05778  2008                  move.l   a0,d0                              
  0577a  81fc0015              divs.w   #$15,d0                            
  0577e  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  05786  78ff                  moveq    #-1,d4                             
  05788  d888                  add.l    a0,d4                              
  0578a  89fc0015              divs.w   #$15,d4                            
  0578e  9840                  sub.w    d0,d4                              
  05790  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  05798  2008                  move.l   a0,d0                              
  0579a  81fc0015              divs.w   #$15,d0                            
  0579e  3079ffff836c          movea.w  g_7c94,a0                          
  057a4  7602                  moveq    #2,d3                              
  057a6  d688                  add.l    a0,d3                              
  057a8  87fc0015              divs.w   #$15,d3                            
  057ac  9640                  sub.w    d0,d3                              
  057ae  6076                  bra.s    L5826                              
L57b0:
  057b0  3079ffff836c          movea.w  g_7c94,a0                          
  057b6  2008                  move.l   a0,d0                              
  057b8  81fc0015              divs.w   #$15,d0                            
  057bc  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  057c4  7aff                  moveq    #-1,d5                             
  057c6  da88                  add.l    a0,d5                              
  057c8  8bfc0015              divs.w   #$15,d5                            
  057cc  9a40                  sub.w    d0,d5                              
  057ce  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  057d6  2008                  move.l   a0,d0                              
  057d8  81fc0015              divs.w   #$15,d0                            
  057dc  3079ffff836c          movea.w  g_7c94,a0                          
  057e2  7c02                  moveq    #2,d6                              
  057e4  dc88                  add.l    a0,d6                              
  057e6  8dfc0015              divs.w   #$15,d6                            
  057ea  9c40                  sub.w    d0,d6                              
  057ec  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  057f4  2008                  move.l   a0,d0                              
  057f6  81fc0015              divs.w   #$15,d0                            
  057fa  3079ffff836e          movea.w  g_7c92,a0                          
  05800  2608                  move.l   a0,d3                              
  05802  87fc0015              divs.w   #$15,d3                            
  05806  9640                  sub.w    d0,d3                              
  05808  3079ffff836e          movea.w  g_7c92,a0                          
  0580e  2008                  move.l   a0,d0                              
  05810  81fc0015              divs.w   #$15,d0                            
  05814  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  0581c  78ff                  moveq    #-1,d4                             
  0581e  d888                  add.l    a0,d4                              
  05820  89fc0015              divs.w   #$15,d4                            
  05824  9840                  sub.w    d0,d4                              
L5826:
  05826  3f3c0008              move.w   #8,-(a7)                           
  0582a  a89c                  _PenMode                                    ; $a89c
  0582c  4239ffff3b0c          clr.b    g_c4f4                             
  05832  1f2e000a              move.b   $a(a6),-(a7)                       
  05836  3f07                  move.w   d7,-(a7)                           
  05838  3f2efff4              move.w   -$c(a6),-(a7)                      
  0583c  3f2efff6              move.w   -$a(a6),-(a7)                      
  05840  3f2efff8              move.w   -$8(a6),-(a7)                      
  05844  3f2efffa              move.w   -$6(a6),-(a7)                      
  05848  3f2efffc              move.w   -$4(a6),-(a7)                      
  0584c  3f2efffe              move.w   -$2(a6),-(a7)                      
  05850  3f03                  move.w   d3,-(a7)                           
  05852  3f04                  move.w   d4,-(a7)                           
  05854  3f05                  move.w   d5,-(a7)                           
  05856  3f06                  move.w   d6,-(a7)                           
  05858  4eba0042              jsr      f2_589c                            
  0585c  2eb9ffff8fb6          move.l   g_704a,(a7)                        
  05862  a873                  _SetPort                                    ; $a873
L5864:
  05864  4cee00f8ffd0          movem.l  -$30(a6),d3/d4/d5/d6/d7            
  0586a  4e5e                  unlk     a6                                 
  0586c  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_586e
;----------------------------------------------------------------------
f2_586e:
  0586e  4e56ff00              link     a6,#-256                           
  05872  206e0008              movea.l  $8(a6),a0                          
  05876  226e0012              movea.l  $12(a6),a1                         
  0587a  3290                  move.w   (a0),(a1)                          
  0587c  306e000c              movea.w  $c(a6),a0                          
  05880  2f08                  move.l   a0,-(a7)                           
  05882  486eff00              pea      -$100(a6)                          
  05886  4ead0512              jsr      f4_150e                            
  0588a  486eff00              pea      -$100(a6)                          
  0588e  4eba2150              jsr      f2_79e0                            
  05892  206e000e              movea.l  $e(a6),a0                          
  05896  3080                  move.w   d0,(a0)                            
  05898  4e5e                  unlk     a6                                 
  0589a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_589c
;----------------------------------------------------------------------
f2_589c:
  0589c  4e56ff9e              link     a6,#-98                            
  058a0  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  058a4  3c2e001c              move.w   $1c(a6),d6                         
  058a8  2079ffff9382          movea.l  g_6c7e,a0                          
  058ae  2d680010ffc4          move.l   $10(a0),-$3c(a6)                   
  058b4  2d680014ffc8          move.l   $14(a0),-$38(a6)                   
  058ba  43eeff9e              lea      -$62(a6),a1                        
  058be  41f9ffffa8b4          lea      g_574c,a0                          
  058c4  7007                  moveq    #7,d0                              
L58c6:
  058c6  22d8                  move.l   (a0)+,(a1)+                        
  058c8  51c8fffc              dbf      d0,L58c6                           
  058cc  426effc0              clr.w    -$40(a6)                           
  058d0  426effbe              clr.w    -$42(a6)                           
  058d4  426effc2              clr.w    -$3e(a6)                           
  058d8  4a39ffff9853          tst.b    g_67ad                             
  058de  671c                  beq.s    L58fc                              
  058e0  3f3c0008              move.w   #8,-(a7)                           
  058e4  a89c                  _PenMode                                    ; $a89c
  058e6  2079ffff9382          movea.l  g_6c7e,a0                          
  058ec  48680010              pea      $10(a0)                            
  058f0  2f3cffffac52          move.l   #$ffffac52,-(a7)                   
  058f6  a8a5                  _FillRect                                   ; $a8a5
  058f8  6000067e              bra.w    L5f78                              
L58fc:
  058fc  0c6e00030008          cmpi.w   #3,$8(a6)                          
  05902  6f0e                  ble.s    L5912                              
  05904  3d7c0003fff0          move.w   #3,-$10(a6)                        
  0590a  3d7c0002fffa          move.w   #2,-$6(a6)                         
  05910  6022                  bra.s    L5934                              
L5912:
  05912  0c6e00020008          cmpi.w   #2,$8(a6)                          
  05918  6f0e                  ble.s    L5928                              
  0591a  3d7c0003fffa          move.w   #3,-$6(a6)                         
  05920  3d6e0008fff0          move.w   $8(a6),-$10(a6)                    
  05926  600c                  bra.s    L5934                              
L5928:
  05928  3d7c0001fffa          move.w   #1,-$6(a6)                         
  0592e  3d6e0008fff0          move.w   $8(a6),-$10(a6)                    
L5934:
  05934  701e                  moveq    #30,d0                             
  05936  a122                  _NewHandle                                  ; $a122
  05938  2848                  movea.l  a0,a4                              
  0593a  701e                  moveq    #30,d0                             
  0593c  a122                  _NewHandle                                  ; $a122
  0593e  2608                  move.l   a0,d3                              
  05940  701e                  moveq    #30,d0                             
  05942  a122                  _NewHandle                                  ; $a122
  05944  2448                  movea.l  a0,a2                              
  05946  701e                  moveq    #30,d0                             
  05948  a122                  _NewHandle                                  ; $a122
  0594a  2648                  movea.l  a0,a3                              
  0594c  302efff0              move.w   -$10(a6),d0                        
  05950  207005b1ffff990a      movea.l  ([-$66f6,a0],d0.w*4,$0),a0         
  05958  701e                  moveq    #30,d0                             
  0595a  2254                  movea.l  (a4),a1                            
  0595c  a02e                  _BlockMove                                  ; $a02e
  0595e  302efff0              move.w   -$10(a6),d0                        
  05962  207005b1ffff991e      movea.l  ([-$66e2,a0],d0.w*4,$0),a0         
  0596a  2243                  movea.l  d3,a1                              
  0596c  701e                  moveq    #30,d0                             
  0596e  2251                  movea.l  (a1),a1                            
  05970  a02e                  _BlockMove                                  ; $a02e
  05972  4a2e001e              tst.b    $1e(a6)                            
  05976  661e                  bne.s    L5996                              
  05978  2079ffff991a          movea.l  g_66e6,a0                          
  0597e  701e                  moveq    #30,d0                             
  05980  2254                  movea.l  (a4),a1                            
  05982  2050                  movea.l  (a0),a0                            
  05984  a02e                  _BlockMove                                  ; $a02e
  05986  2079ffff992e          movea.l  g_66d2,a0                          
  0598c  2243                  movea.l  d3,a1                              
  0598e  701e                  moveq    #30,d0                             
  05990  2251                  movea.l  (a1),a1                            
  05992  2050                  movea.l  (a0),a0                            
  05994  a02e                  _BlockMove                                  ; $a02e
L5996:
  05996  302efff0              move.w   -$10(a6),d0                        
  0599a  207005b1ffff991e      movea.l  ([-$66e2,a0],d0.w*4,$0),a0         
  059a2  701e                  moveq    #30,d0                             
  059a4  2252                  movea.l  (a2),a1                            
  059a6  a02e                  _BlockMove                                  ; $a02e
  059a8  701e                  moveq    #30,d0                             
  059aa  2253                  movea.l  (a3),a1                            
  059ac  2052                  movea.l  (a2),a0                            
  059ae  a02e                  _BlockMove                                  ; $a02e
  059b0  2054                  movea.l  (a4),a0                            
  059b2  3e280010              move.w   $10(a0),d7                         
  059b6  2243                  movea.l  d3,a1                              
  059b8  2251                  movea.l  (a1),a1                            
  059ba  7a01                  moveq    #1,d5                              
  059bc  da690014              add.w    $14(a1),d5                         
  059c0  3d68000efffe          move.w   $e(a0),-$2(a6)                     
  059c6  2243                  movea.l  d3,a1                              
  059c8  2251                  movea.l  (a1),a1                            
  059ca  3d690012fffc          move.w   $12(a1),-$4(a6)                    
  059d0  3005                  move.w   d5,d0                              
  059d2  9047                  sub.w    d7,d0                              
  059d4  3d40ffee              move.w   d0,-$12(a6)                        
  059d8  0c6e00040008          cmpi.w   #4,$8(a6)                          
  059de  6c1e                  bge.s    L59fe                              
  059e0  302e0008              move.w   $8(a6),d0                          
  059e4  2d76069effdc          move.l   -$62(a6,d0.w*8),-$24(a6)           
  059ea  2d7606a2ffe0          move.l   -$5e(a6,d0.w*8),-$20(a6)           
  059f0  2d6effdcffd4          move.l   -$24(a6),-$2c(a6)                  
  059f6  2d6effe0ffd8          move.l   -$20(a6),-$28(a6)                  
  059fc  600a                  bra.s    L5a08                              
L59fe:
  059fe  486effdc              pea      -$24(a6)                           
  05a02  42a7                  clr.l    -(a7)                              
  05a04  42a7                  clr.l    -(a7)                              
  05a06  a8a7                  _SetRect                                    ; $a8a7
L5a08:
  05a08  4a2e001e              tst.b    $1e(a6)                            
  05a0c  6608                  bne.s    L5a16                              
  05a0e  556effdc              subq.w   #2,-$24(a6)                        
  05a12  566effe0              addq.w   #3,-$20(a6)                        
L5a16:
  05a16  2d6effdcffd4          move.l   -$24(a6),-$2c(a6)                  
  05a1c  2d6effe0ffd8          move.l   -$20(a6),-$28(a6)                  
  05a22  3007                  move.w   d7,d0                              
  05a24  9045                  sub.w    d5,d0                              
  05a26  3d40ffe8              move.w   d0,-$18(a6)                        
  05a2a  3205                  move.w   d5,d1                              
  05a2c  9247                  sub.w    d7,d1                              
  05a2e  3d41ffe6              move.w   d1,-$1a(a6)                        
  05a32  c1ee000c              muls.w   $c(a6),d0                          
  05a36  3d40ffec              move.w   d0,-$14(a6)                        
  05a3a  c3ee000e              muls.w   $e(a6),d1                          
  05a3e  3d41ffea              move.w   d1,-$16(a6)                        
  05a42  2f0c                  move.l   a4,-(a7)                           
  05a44  3f00                  move.w   d0,-(a7)                           
  05a46  4267                  clr.w    -(a7)                              
  05a48  a8ce                  _OffsetPoly                                 ; $a8ce
  05a4a  2f03                  move.l   d3,-(a7)                           
  05a4c  3f2effea              move.w   -$16(a6),-(a7)                     
  05a50  4267                  clr.w    -(a7)                              
  05a52  a8ce                  _OffsetPoly                                 ; $a8ce
  05a54  2054                  movea.l  (a4),a0                            
  05a56  3e280010              move.w   $10(a0),d7                         
  05a5a  2243                  movea.l  d3,a1                              
  05a5c  2251                  movea.l  (a1),a1                            
  05a5e  7a01                  moveq    #1,d5                              
  05a60  da690014              add.w    $14(a1),d5                         
  05a64  486effcc              pea      -$34(a6)                           
  05a68  3f07                  move.w   d7,-(a7)                           
  05a6a  3f2efffe              move.w   -$2(a6),-(a7)                      
  05a6e  3f05                  move.w   d5,-(a7)                           
  05a70  3f2efffc              move.w   -$4(a6),-(a7)                      
  05a74  a8a7                  _SetRect                                    ; $a8a7
  05a76  2054                  movea.l  (a4),a0                            
  05a78  2252                  movea.l  (a2),a1                            
  05a7a  33680018000c          move.w   $18(a0),$c(a1)                     
  05a80  2054                  movea.l  (a4),a0                            
  05a82  2252                  movea.l  (a2),a1                            
  05a84  33680016000a          move.w   $16(a0),$a(a1)                     
  05a8a  2054                  movea.l  (a4),a0                            
  05a8c  2252                  movea.l  (a2),a1                            
  05a8e  336800140010          move.w   $14(a0),$10(a1)                    
  05a94  2054                  movea.l  (a4),a0                            
  05a96  2252                  movea.l  (a2),a1                            
  05a98  33680012000e          move.w   $12(a0),$e(a1)                     
  05a9e  2043                  movea.l  d3,a0                              
  05aa0  2050                  movea.l  (a0),a0                            
  05aa2  2252                  movea.l  (a2),a1                            
  05aa4  336800140014          move.w   $14(a0),$14(a1)                    
  05aaa  2043                  movea.l  d3,a0                              
  05aac  2050                  movea.l  (a0),a0                            
  05aae  2252                  movea.l  (a2),a1                            
  05ab0  336800120012          move.w   $12(a0),$12(a1)                    
  05ab6  2043                  movea.l  d3,a0                              
  05ab8  2050                  movea.l  (a0),a0                            
  05aba  2252                  movea.l  (a2),a1                            
  05abc  336800180018          move.w   $18(a0),$18(a1)                    
  05ac2  2043                  movea.l  d3,a0                              
  05ac4  2050                  movea.l  (a0),a0                            
  05ac6  2252                  movea.l  (a2),a1                            
  05ac8  336800160016          move.w   $16(a0),$16(a1)                    
  05ace  2052                  movea.l  (a2),a0                            
  05ad0  3168000c001c          move.w   $c(a0),$1c(a0)                     
  05ad6  2252                  movea.l  (a2),a1                            
  05ad8  3369000a001a          move.w   $a(a1),$1a(a1)                     
  05ade  2052                  movea.l  (a2),a0                            
  05ae0  3168000e0002          move.w   $e(a0),$2(a0)                      
  05ae6  2052                  movea.l  (a2),a0                            
  05ae8  3168000c0004          move.w   $c(a0),$4(a0)                      
  05aee  2052                  movea.l  (a2),a0                            
  05af0  316800180008          move.w   $18(a0),$8(a0)                     
  05af6  2052                  movea.l  (a2),a0                            
  05af8  316800160006          move.w   $16(a0),$6(a0)                     
  05afe  2054                  movea.l  (a4),a0                            
  05b00  2253                  movea.l  (a3),a1                            
  05b02  3368000c000c          move.w   $c(a0),$c(a1)                      
  05b08  2054                  movea.l  (a4),a0                            
  05b0a  2253                  movea.l  (a3),a1                            
  05b0c  3368000a000a          move.w   $a(a0),$a(a1)                      
  05b12  2054                  movea.l  (a4),a0                            
  05b14  2253                  movea.l  (a3),a1                            
  05b16  336800100010          move.w   $10(a0),$10(a1)                    
  05b1c  2054                  movea.l  (a4),a0                            
  05b1e  2253                  movea.l  (a3),a1                            
  05b20  3368000e000e          move.w   $e(a0),$e(a1)                      
  05b26  2043                  movea.l  d3,a0                              
  05b28  2050                  movea.l  (a0),a0                            
  05b2a  2253                  movea.l  (a3),a1                            
  05b2c  336800100014          move.w   $10(a0),$14(a1)                    
  05b32  2043                  movea.l  d3,a0                              
  05b34  2050                  movea.l  (a0),a0                            
  05b36  2253                  movea.l  (a3),a1                            
  05b38  3368000e0012          move.w   $e(a0),$12(a1)                     
  05b3e  2043                  movea.l  d3,a0                              
  05b40  2050                  movea.l  (a0),a0                            
  05b42  2253                  movea.l  (a3),a1                            
  05b44  3368000c0018          move.w   $c(a0),$18(a1)                     
  05b4a  2043                  movea.l  d3,a0                              
  05b4c  2050                  movea.l  (a0),a0                            
  05b4e  2253                  movea.l  (a3),a1                            
  05b50  3368000a0016          move.w   $a(a0),$16(a1)                     
  05b56  2053                  movea.l  (a3),a0                            
  05b58  3168000c001c          move.w   $c(a0),$1c(a0)                     
  05b5e  2253                  movea.l  (a3),a1                            
  05b60  3369000a001a          move.w   $a(a1),$1a(a1)                     
  05b66  2053                  movea.l  (a3),a0                            
  05b68  3168000a0002          move.w   $a(a0),$2(a0)                      
  05b6e  2053                  movea.l  (a3),a0                            
  05b70  3168000c0004          move.w   $c(a0),$4(a0)                      
  05b76  2053                  movea.l  (a3),a0                            
  05b78  316800180008          move.w   $18(a0),$8(a0)                     
  05b7e  2053                  movea.l  (a3),a0                            
  05b80  3168000e0006          move.w   $e(a0),$6(a0)                      
  05b86  3f3c0001              move.w   #1,-(a7)                           
  05b8a  2f0c                  move.l   a4,-(a7)                           
  05b8c  4ead079a              jsr      f7_19ea                            
  05b90  3ebc0001              move.w   #1,(a7)                            
  05b94  2f03                  move.l   d3,-(a7)                           
  05b96  4ead079a              jsr      f7_19ea                            
  05b9a  3ebc0007              move.w   #7,(a7)                            
  05b9e  2f0a                  move.l   a2,-(a7)                           
  05ba0  4ead079a              jsr      f7_19ea                            
  05ba4  3ebc0006              move.w   #6,(a7)                            
  05ba8  2f0b                  move.l   a3,-(a7)                           
  05baa  4ead079a              jsr      f7_19ea                            
  05bae  2ebc00020002          move.l   #$20002,(a7)                       
  05bb4  a89b                  _PenSize                                    ; $a89b
  05bb6  2e8c                  move.l   a4,(a7)                            
  05bb8  a8c6                  _FramePoly                                  ; $a8c6
  05bba  2e83                  move.l   d3,(a7)                            
  05bbc  a8c6                  _FramePoly                                  ; $a8c6
  05bbe  2ebc00010001          move.l   #$10001,(a7)                       
  05bc4  a89b                  _PenSize                                    ; $a89b
  05bc6  0c6e0001fffa          cmpi.w   #1,-$6(a6)                         
  05bcc  548f                  addq.l   #2,a7                              
  05bce  6610                  bne.s    L5be0                              
  05bd0  3f3c0001              move.w   #1,-(a7)                           
  05bd4  486effcc              pea      -$34(a6)                           
  05bd8  4ead07a2              jsr      f7_1a2e                            
  05bdc  5c8f                  addq.l   #6,a7                              
  05bde  6024                  bra.s    L5c04                              
L5be0:
  05be0  0c6e0003fffa          cmpi.w   #3,-$6(a6)                         
  05be6  6610                  bne.s    L5bf8                              
  05be8  3f3c0002              move.w   #2,-(a7)                           
  05bec  486effcc              pea      -$34(a6)                           
  05bf0  4ead07a2              jsr      f7_1a2e                            
  05bf4  5c8f                  addq.l   #6,a7                              
  05bf6  600c                  bra.s    L5c04                              
L5bf8:
  05bf8  486effcc              pea      -$34(a6)                           
  05bfc  2f3cffffac42          move.l   #$ffffac42,-(a7)                   
  05c02  a8a5                  _FillRect                                   ; $a8a5
L5c04:
  05c04  2f3c00020002          move.l   #$20002,-(a7)                      
  05c0a  a89b                  _PenSize                                    ; $a89b
  05c0c  486effcc              pea      -$34(a6)                           
  05c10  a8a1                  _FrameRect                                  ; $a8a1
  05c12  2f3c00010001          move.l   #$10001,-(a7)                      
  05c18  a89b                  _PenSize                                    ; $a89b
  05c1a  0c6e00040008          cmpi.w   #4,$8(a6)                          
  05c20  6c0001d2              bge.w    L5df4                              
  05c24  3039ffff83bc          move.w   g_7c44,d0                          
  05c2a  670001c8              beq.w    L5df4                              
  05c2e  6b0001c4              bmi.w    L5df4                              
  05c32  5740                  subq.w   #3,d0                              
  05c34  67000082              beq.w    L5cb8                              
  05c38  6a08                  bpl.s    L5c42                              
  05c3a  5240                  addq.w   #1,d0                              
  05c3c  6a0000e6              bpl.w    L5d24                              
  05c40  600a                  bra.s    L5c4c                              
L5c42:
  05c42  5540                  subq.w   #2,d0                              
  05c44  6a0001ae              bpl.w    L5df4                              
  05c48  60000144              bra.w    L5d8e                              
L5c4c:
  05c4c  4a6e0010              tst.w    $10(a6)                            
  05c50  6d0001a2              blt.w    L5df4                              
  05c54  3e2effde              move.w   -$22(a6),d7                        
  05c58  7a01                  moveq    #1,d5                              
  05c5a  da6effe2              add.w    -$1e(a6),d5                        
  05c5e  486effdc              pea      -$24(a6)                           
  05c62  302e0010              move.w   $10(a6),d0                         
  05c66  906e000c              sub.w    $c(a6),d0                          
  05c6a  c1eeffee              muls.w   -$12(a6),d0                        
  05c6e  3f00                  move.w   d0,-(a7)                           
  05c70  4267                  clr.w    -(a7)                              
  05c72  a8a8                  _OffsetRect                                 ; $a8a8
  05c74  4a3061b0ffff985e      tst.b    (-$67a2,za0,d6.w)                  
  05c7c  6704                  beq.s    L5c82                              
  05c7e  7803                  moveq    #3,d4                              
  05c80  6002                  bra.s    L5c84                              
L5c82:
  05c82  7800                  moveq    #0,d4                              
L5c84:
  05c84  3f04                  move.w   d4,-(a7)                           
  05c86  486effdc              pea      -$24(a6)                           
  05c8a  4ead07a2              jsr      f7_1a2e                            
  05c8e  41f9ffff9712          lea      g_68ee,a0                          
  05c94  20eeffdc              move.l   -$24(a6),(a0)+                     
  05c98  20eeffe0              move.l   -$20(a6),(a0)+                     
  05c9c  2ebc00020002          move.l   #$20002,(a7)                       
  05ca2  a89b                  _PenSize                                    ; $a89b
  05ca4  486effdc              pea      -$24(a6)                           
  05ca8  a8a1                  _FrameRect                                  ; $a8a1
  05caa  2f3c00010001          move.l   #$10001,-(a7)                      
  05cb0  a89b                  _PenSize                                    ; $a89b
  05cb2  548f                  addq.l   #2,a7                              
  05cb4  6000013e              bra.w    L5df4                              
L5cb8:
  05cb8  4a6e0012              tst.w    $12(a6)                            
  05cbc  6d000136              blt.w    L5df4                              
  05cc0  3e2effde              move.w   -$22(a6),d7                        
  05cc4  7a01                  moveq    #1,d5                              
  05cc6  da6effe2              add.w    -$1e(a6),d5                        
  05cca  486effdc              pea      -$24(a6)                           
  05cce  302e000e              move.w   $e(a6),d0                          
  05cd2  906e0012              sub.w    $12(a6),d0                         
  05cd6  c1eeffee              muls.w   -$12(a6),d0                        
  05cda  3f00                  move.w   d0,-(a7)                           
  05cdc  4267                  clr.w    -(a7)                              
  05cde  a8a8                  _OffsetRect                                 ; $a8a8
  05ce0  4a3061b0ffff9888      tst.b    (-$6778,za0,d6.w)                  
  05ce8  6704                  beq.s    L5cee                              
  05cea  7803                  moveq    #3,d4                              
  05cec  6002                  bra.s    L5cf0                              
L5cee:
  05cee  7800                  moveq    #0,d4                              
L5cf0:
  05cf0  3f04                  move.w   d4,-(a7)                           
  05cf2  486effdc              pea      -$24(a6)                           
  05cf6  4ead07a2              jsr      f7_1a2e                            
  05cfa  41f9ffff9712          lea      g_68ee,a0                          
  05d00  20eeffdc              move.l   -$24(a6),(a0)+                     
  05d04  20eeffe0              move.l   -$20(a6),(a0)+                     
  05d08  2ebc00020002          move.l   #$20002,(a7)                       
  05d0e  a89b                  _PenSize                                    ; $a89b
  05d10  486effdc              pea      -$24(a6)                           
  05d14  a8a1                  _FrameRect                                  ; $a8a1
  05d16  2f3c00010001          move.l   #$10001,-(a7)                      
  05d1c  a89b                  _PenSize                                    ; $a89b
  05d1e  548f                  addq.l   #2,a7                              
  05d20  600000d2              bra.w    L5df4                              
L5d24:
  05d24  4a6e0014              tst.w    $14(a6)                            
  05d28  6d0000ca              blt.w    L5df4                              
  05d2c  3e2effde              move.w   -$22(a6),d7                        
  05d30  7a01                  moveq    #1,d5                              
  05d32  da6effe2              add.w    -$1e(a6),d5                        
  05d36  486effdc              pea      -$24(a6)                           
  05d3a  302e0014              move.w   $14(a6),d0                         
  05d3e  906e000c              sub.w    $c(a6),d0                          
  05d42  c1eeffee              muls.w   -$12(a6),d0                        
  05d46  3f00                  move.w   d0,-(a7)                           
  05d48  4267                  clr.w    -(a7)                              
  05d4a  a8a8                  _OffsetRect                                 ; $a8a8
  05d4c  4a3061b0ffff9873      tst.b    (-$678d,za0,d6.w)                  
  05d54  6704                  beq.s    L5d5a                              
  05d56  7803                  moveq    #3,d4                              
  05d58  6002                  bra.s    L5d5c                              
L5d5a:
  05d5a  7800                  moveq    #0,d4                              
L5d5c:
  05d5c  3f04                  move.w   d4,-(a7)                           
  05d5e  486effdc              pea      -$24(a6)                           
  05d62  4ead07a2              jsr      f7_1a2e                            
  05d66  41f9ffff9712          lea      g_68ee,a0                          
  05d6c  20eeffdc              move.l   -$24(a6),(a0)+                     
  05d70  20eeffe0              move.l   -$20(a6),(a0)+                     
  05d74  2ebc00020002          move.l   #$20002,(a7)                       
  05d7a  a89b                  _PenSize                                    ; $a89b
  05d7c  486effdc              pea      -$24(a6)                           
  05d80  a8a1                  _FrameRect                                  ; $a8a1
  05d82  2f3c00010001          move.l   #$10001,-(a7)                      
  05d88  a89b                  _PenSize                                    ; $a89b
  05d8a  548f                  addq.l   #2,a7                              
  05d8c  6066                  bra.s    L5df4                              
L5d8e:
  05d8e  4a6e0016              tst.w    $16(a6)                            
  05d92  6d60                  blt.s    L5df4                              
  05d94  3e2effde              move.w   -$22(a6),d7                        
  05d98  7a01                  moveq    #1,d5                              
  05d9a  da6effe2              add.w    -$1e(a6),d5                        
  05d9e  486effdc              pea      -$24(a6)                           
  05da2  302e000e              move.w   $e(a6),d0                          
  05da6  906e0016              sub.w    $16(a6),d0                         
  05daa  c1eeffee              muls.w   -$12(a6),d0                        
  05dae  3f00                  move.w   d0,-(a7)                           
  05db0  4267                  clr.w    -(a7)                              
  05db2  a8a8                  _OffsetRect                                 ; $a8a8
  05db4  4a3061b0ffff989d      tst.b    (-$6763,za0,d6.w)                  
  05dbc  6704                  beq.s    L5dc2                              
  05dbe  7803                  moveq    #3,d4                              
  05dc0  6002                  bra.s    L5dc4                              
L5dc2:
  05dc2  7800                  moveq    #0,d4                              
L5dc4:
  05dc4  3f04                  move.w   d4,-(a7)                           
  05dc6  486effdc              pea      -$24(a6)                           
  05dca  4ead07a2              jsr      f7_1a2e                            
  05dce  41f9ffff9712          lea      g_68ee,a0                          
  05dd4  20eeffdc              move.l   -$24(a6),(a0)+                     
  05dd8  20eeffe0              move.l   -$20(a6),(a0)+                     
  05ddc  2ebc00020002          move.l   #$20002,(a7)                       
  05de2  a89b                  _PenSize                                    ; $a89b
  05de4  486effdc              pea      -$24(a6)                           
  05de8  a8a1                  _FrameRect                                  ; $a8a1
  05dea  2f3c00010001          move.l   #$10001,-(a7)                      
  05df0  a89b                  _PenSize                                    ; $a89b
  05df2  548f                  addq.l   #2,a7                              
L5df4:
  05df4  3f06                  move.w   d6,-(a7)                           
  05df6  3f2e001a              move.w   $1a(a6),-(a7)                      
  05dfa  3f2e0018              move.w   $18(a6),-(a7)                      
  05dfe  3f2e0016              move.w   $16(a6),-(a7)                      
  05e02  3f2e0014              move.w   $14(a6),-(a7)                      
  05e06  3f2e0012              move.w   $12(a6),-(a7)                      
  05e0a  3f2e0010              move.w   $10(a6),-(a7)                      
  05e0e  3f2effea              move.w   -$16(a6),-(a7)                     
  05e12  3f2effec              move.w   -$14(a6),-(a7)                     
  05e16  4eba0168              jsr      f2_5f80                            
  05e1a  bc79ffff8888          cmp.w    g_7778,d6                          
  05e20  4fef0012              lea      $12(a7),a7                         
  05e24  6632                  bne.s    L5e58                              
  05e26  3f3c0002              move.w   #2,-(a7)                           
  05e2a  3f2effee              move.w   -$12(a6),-(a7)                     
  05e2e  3f2e000e              move.w   $e(a6),-(a7)                       
  05e32  3f2e000c              move.w   $c(a6),-(a7)                       
  05e36  3f06                  move.w   d6,-(a7)                           
  05e38  3f2e001a              move.w   $1a(a6),-(a7)                      
  05e3c  3f2e0018              move.w   $18(a6),-(a7)                      
  05e40  3f2effea              move.w   -$16(a6),-(a7)                     
  05e44  3f2effec              move.w   -$14(a6),-(a7)                     
  05e48  486effd4              pea      -$2c(a6)                           
  05e4c  3f2e0008              move.w   $8(a6),-(a7)                       
  05e50  4ead02ea              jsr      f3_30b2                            
  05e54  4fef0018              lea      $18(a7),a7                         
L5e58:
  05e58  bc79ffff884c          cmp.w    g_77b4,d6                          
  05e5e  6632                  bne.s    L5e92                              
  05e60  3f3c0001              move.w   #1,-(a7)                           
  05e64  3f2effee              move.w   -$12(a6),-(a7)                     
  05e68  3f2e000e              move.w   $e(a6),-(a7)                       
  05e6c  3f2e000c              move.w   $c(a6),-(a7)                       
  05e70  3f06                  move.w   d6,-(a7)                           
  05e72  3f2e001a              move.w   $1a(a6),-(a7)                      
  05e76  3f2e0018              move.w   $18(a6),-(a7)                      
  05e7a  3f2effea              move.w   -$16(a6),-(a7)                     
  05e7e  3f2effec              move.w   -$14(a6),-(a7)                     
  05e82  486effd4              pea      -$2c(a6)                           
  05e86  3f2e0008              move.w   $8(a6),-(a7)                       
  05e8a  4ead02ea              jsr      f3_30b2                            
  05e8e  4fef0018              lea      $18(a7),a7                         
L5e92:
  05e92  426effe4              clr.w    -$1c(a6)                           
  05e96  6056                  bra.s    L5eee                              
L5e98:
  05e98  302effe4              move.w   -$1c(a6),d0                        
  05e9c  303003b0ffff3ad4      move.w   (-$c52c,za0,d0.w*2),d0             
  05ea4  b079ffff8894          cmp.w    g_776c,d0                          
  05eaa  663e                  bne.s    L5eea                              
  05eac  302effe4              move.w   -$1c(a6),d0                        
  05eb0  bc7003b0ffff784a      cmp.w    (-$87b6,za0,d0.w*2),d6             
  05eb8  6630                  bne.s    L5eea                              
  05eba  4267                  clr.w    -(a7)                              
  05ebc  3f2effee              move.w   -$12(a6),-(a7)                     
  05ec0  3f2e000e              move.w   $e(a6),-(a7)                       
  05ec4  3f2e000c              move.w   $c(a6),-(a7)                       
  05ec8  3f06                  move.w   d6,-(a7)                           
  05eca  3f2e001a              move.w   $1a(a6),-(a7)                      
  05ece  3f2e0018              move.w   $18(a6),-(a7)                      
  05ed2  3f2effea              move.w   -$16(a6),-(a7)                     
  05ed6  3f2effec              move.w   -$14(a6),-(a7)                     
  05eda  486effd4              pea      -$2c(a6)                           
  05ede  3f2e0008              move.w   $8(a6),-(a7)                       
  05ee2  4ead02ea              jsr      f3_30b2                            
  05ee6  4fef0018              lea      $18(a7),a7                         
L5eea:
  05eea  526effe4              addq.w   #1,-$1c(a6)                        
L5eee:
  05eee  0c6e0006ffe4          cmpi.w   #6,-$1c(a6)                        
  05ef4  6da2                  blt.s    L5e98                              
  05ef6  4a2e001e              tst.b    $1e(a6)                            
  05efa  6716                  beq.s    L5f12                              
  05efc  3f2e0008              move.w   $8(a6),-(a7)                       
  05f00  3f2e000e              move.w   $e(a6),-(a7)                       
  05f04  3f2e000c              move.w   $c(a6),-(a7)                       
  05f08  3f06                  move.w   d6,-(a7)                           
  05f0a  4ead02a2              jsr      f3_193e                            
  05f0e  508f                  addq.l   #8,a7                              
  05f10  6052                  bra.s    L5f64                              
L5f12:
  05f12  2079ffff99f4          movea.l  g_660c,a0                          
  05f18  20680002              movea.l  $2(a0),a0                          
  05f1c  2f10                  move.l   (a0),-(a7)                         
  05f1e  2079ffff99f8          movea.l  g_6608,a0                          
  05f24  20680002              movea.l  $2(a0),a0                          
  05f28  2f10                  move.l   (a0),-(a7)                         
  05f2a  486effc4              pea      -$3c(a6)                           
  05f2e  486effc4              pea      -$3c(a6)                           
  05f32  4267                  clr.w    -(a7)                              
  05f34  42a7                  clr.l    -(a7)                              
  05f36  a8ec                  _CopyBits                                   ; $a8ec
  05f38  2079ffff99f8          movea.l  g_6608,a0                          
  05f3e  20680002              movea.l  $2(a0),a0                          
  05f42  2f10                  move.l   (a0),-(a7)                         
  05f44  2079ffff9382          movea.l  g_6c7e,a0                          
  05f4a  48680002              pea      $2(a0)                             
  05f4e  486effc4              pea      -$3c(a6)                           
  05f52  486effc4              pea      -$3c(a6)                           
  05f56  4267                  clr.w    -(a7)                              
  05f58  42a7                  clr.l    -(a7)                              
  05f5a  a8ec                  _CopyBits                                   ; $a8ec
  05f5c  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  05f62  a873                  _SetPort                                    ; $a873
L5f64:
  05f64  204c                  movea.l  a4,a0                              
  05f66  a023                  _DisposeHandle                              ; $a023
  05f68  2043                  movea.l  d3,a0                              
  05f6a  a023                  _DisposeHandle                              ; $a023
  05f6c  204a                  movea.l  a2,a0                              
  05f6e  a023                  _DisposeHandle                              ; $a023
  05f70  204b                  movea.l  a3,a0                              
  05f72  a023                  _DisposeHandle                              ; $a023
  05f74  4eba0be0              jsr      f2_6b56                            
L5f78:
  05f78  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  05f7c  4e5e                  unlk     a6                                 
  05f7e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_5f80
;----------------------------------------------------------------------
f2_5f80:
  05f80  4e560000              link     a6,#0                              
  05f84  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  05f88  3e2e0010              move.w   $10(a6),d7                         
  05f8c  3c2e0012              move.w   $12(a6),d6                         
  05f90  3a2e000c              move.w   $c(a6),d5                          
  05f94  382e0016              move.w   $16(a6),d4                         
  05f98  362e0014              move.w   $14(a6),d3                         
  05f9c  3039ffff83bc          move.w   g_7c44,d0                          
  05fa2  670001ba              beq.w    L615e                              
  05fa6  6b0001b6              bmi.w    L615e                              
  05faa  5740                  subq.w   #3,d0                              
  05fac  677c                  beq.s    L602a                              
  05fae  6a08                  bpl.s    L5fb8                              
  05fb0  5240                  addq.w   #1,d0                              
  05fb2  6a0000de              bpl.w    L6092                              
  05fb6  600a                  bra.s    L5fc2                              
L5fb8:
  05fb8  5540                  subq.w   #2,d0                              
  05fba  6a0001a2              bpl.w    L615e                              
  05fbe  6000013c              bra.w    L60fc                              
L5fc2:
  05fc2  4a46                  tst.w    d6                                 
  05fc4  6d2a                  blt.s    L5ff0                              
  05fc6  b846                  cmp.w    d6,d4                              
  05fc8  6d26                  blt.s    L5ff0                              
  05fca  3004                  move.w   d4,d0                              
  05fcc  9046                  sub.w    d6,d0                              
  05fce  5940                  subq.w   #4,d0                              
  05fd0  6c1e                  bge.s    L5ff0                              
  05fd2  2f3c00030000          move.l   #$30000,-(a7)                      
  05fd8  3f2e0018              move.w   $18(a6),-(a7)                      
  05fdc  4267                  clr.w    -(a7)                              
  05fde  3f2e0008              move.w   $8(a6),-(a7)                       
  05fe2  3004                  move.w   d4,d0                              
  05fe4  9046                  sub.w    d6,d0                              
  05fe6  3f00                  move.w   d0,-(a7)                           
  05fe8  4eba017c              jsr      f2_6166                            
  05fec  4fef000c              lea      $c(a7),a7                          
L5ff0:
  05ff0  4a47                  tst.w    d7                                 
  05ff2  6d00016a              blt.w    L615e                              
  05ff6  b847                  cmp.w    d7,d4                              
  05ff8  6d000164              blt.w    L615e                              
  05ffc  3004                  move.w   d4,d0                              
  05ffe  9047                  sub.w    d7,d0                              
  06000  5940                  subq.w   #4,d0                              
  06002  6c00015a              bge.w    L615e                              
  06006  2f3c00010000          move.l   #$10000,-(a7)                      
  0600c  3f2e0018              move.w   $18(a6),-(a7)                      
  06010  3f3c0001              move.w   #1,-(a7)                           
  06014  3f2e000a              move.w   $a(a6),-(a7)                       
  06018  3004                  move.w   d4,d0                              
  0601a  9047                  sub.w    d7,d0                              
  0601c  3f00                  move.w   d0,-(a7)                           
  0601e  4eba0146              jsr      f2_6166                            
  06022  4fef000c              lea      $c(a7),a7                          
  06026  60000136              bra.w    L615e                              
L602a:
  0602a  4a46                  tst.w    d6                                 
  0602c  6d2c                  blt.s    L605a                              
  0602e  b846                  cmp.w    d6,d4                              
  06030  6e28                  bgt.s    L605a                              
  06032  3006                  move.w   d6,d0                              
  06034  9044                  sub.w    d4,d0                              
  06036  5940                  subq.w   #4,d0                              
  06038  6c20                  bge.s    L605a                              
  0603a  2f3c00030000          move.l   #$30000,-(a7)                      
  06040  3f2e0018              move.w   $18(a6),-(a7)                      
  06044  3f3c0001              move.w   #1,-(a7)                           
  06048  3f2e000a              move.w   $a(a6),-(a7)                       
  0604c  3006                  move.w   d6,d0                              
  0604e  9044                  sub.w    d4,d0                              
  06050  3f00                  move.w   d0,-(a7)                           
  06052  4eba0112              jsr      f2_6166                            
  06056  4fef000c              lea      $c(a7),a7                          
L605a:
  0605a  4a47                  tst.w    d7                                 
  0605c  6d000100              blt.w    L615e                              
  06060  b847                  cmp.w    d7,d4                              
  06062  6e0000fa              bgt.w    L615e                              
  06066  3007                  move.w   d7,d0                              
  06068  9044                  sub.w    d4,d0                              
  0606a  5940                  subq.w   #4,d0                              
  0606c  6c0000f0              bge.w    L615e                              
  06070  2f3c00010000          move.l   #$10000,-(a7)                      
  06076  3f2e0018              move.w   $18(a6),-(a7)                      
  0607a  4267                  clr.w    -(a7)                              
  0607c  3f2e0008              move.w   $8(a6),-(a7)                       
  06080  3007                  move.w   d7,d0                              
  06082  9044                  sub.w    d4,d0                              
  06084  3f00                  move.w   d0,-(a7)                           
  06086  4eba00de              jsr      f2_6166                            
  0608a  4fef000c              lea      $c(a7),a7                          
  0608e  600000ce              bra.w    L615e                              
L6092:
  06092  4a45                  tst.w    d5                                 
  06094  6d26                  blt.s    L60bc                              
  06096  b645                  cmp.w    d5,d3                              
  06098  6e22                  bgt.s    L60bc                              
  0609a  3005                  move.w   d5,d0                              
  0609c  9043                  sub.w    d3,d0                              
  0609e  5940                  subq.w   #4,d0                              
  060a0  6c1a                  bge.s    L60bc                              
  060a2  42a7                  clr.l    -(a7)                              
  060a4  3f2e0018              move.w   $18(a6),-(a7)                      
  060a8  4267                  clr.w    -(a7)                              
  060aa  3f2e0008              move.w   $8(a6),-(a7)                       
  060ae  3005                  move.w   d5,d0                              
  060b0  9043                  sub.w    d3,d0                              
  060b2  3f00                  move.w   d0,-(a7)                           
  060b4  4eba00b0              jsr      f2_6166                            
  060b8  4fef000c              lea      $c(a7),a7                          
L60bc:
  060bc  4a6e000e              tst.w    $e(a6)                             
  060c0  6d00009c              blt.w    L615e                              
  060c4  b66e000e              cmp.w    $e(a6),d3                          
  060c8  6e000094              bgt.w    L615e                              
  060cc  302e000e              move.w   $e(a6),d0                          
  060d0  9043                  sub.w    d3,d0                              
  060d2  5940                  subq.w   #4,d0                              
  060d4  6c000088              bge.w    L615e                              
  060d8  2f3c00020000          move.l   #$20000,-(a7)                      
  060de  3f2e0018              move.w   $18(a6),-(a7)                      
  060e2  3f3c0001              move.w   #1,-(a7)                           
  060e6  3f2e000a              move.w   $a(a6),-(a7)                       
  060ea  302e000e              move.w   $e(a6),d0                          
  060ee  9043                  sub.w    d3,d0                              
  060f0  3f00                  move.w   d0,-(a7)                           
  060f2  4eba0072              jsr      f2_6166                            
  060f6  4fef000c              lea      $c(a7),a7                          
  060fa  6062                  bra.s    L615e                              
L60fc:
  060fc  4a45                  tst.w    d5                                 
  060fe  6d28                  blt.s    L6128                              
  06100  b645                  cmp.w    d5,d3                              
  06102  6d24                  blt.s    L6128                              
  06104  3003                  move.w   d3,d0                              
  06106  9045                  sub.w    d5,d0                              
  06108  5940                  subq.w   #4,d0                              
  0610a  6c1c                  bge.s    L6128                              
  0610c  42a7                  clr.l    -(a7)                              
  0610e  3f2e0018              move.w   $18(a6),-(a7)                      
  06112  3f3c0001              move.w   #1,-(a7)                           
  06116  3f2e000a              move.w   $a(a6),-(a7)                       
  0611a  3003                  move.w   d3,d0                              
  0611c  9045                  sub.w    d5,d0                              
  0611e  3f00                  move.w   d0,-(a7)                           
  06120  4eba0044              jsr      f2_6166                            
  06124  4fef000c              lea      $c(a7),a7                          
L6128:
  06128  4a6e000e              tst.w    $e(a6)                             
  0612c  6d30                  blt.s    L615e                              
  0612e  b66e000e              cmp.w    $e(a6),d3                          
  06132  6d2a                  blt.s    L615e                              
  06134  3003                  move.w   d3,d0                              
  06136  906e000e              sub.w    $e(a6),d0                          
  0613a  5940                  subq.w   #4,d0                              
  0613c  6c20                  bge.s    L615e                              
  0613e  2f3c00020000          move.l   #$20000,-(a7)                      
  06144  3f2e0018              move.w   $18(a6),-(a7)                      
  06148  4267                  clr.w    -(a7)                              
  0614a  3f2e0008              move.w   $8(a6),-(a7)                       
  0614e  3003                  move.w   d3,d0                              
  06150  906e000e              sub.w    $e(a6),d0                          
  06154  3f00                  move.w   d0,-(a7)                           
  06156  4eba000e              jsr      f2_6166                            
  0615a  4fef000c              lea      $c(a7),a7                          
L615e:
  0615e  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  06162  4e5e                  unlk     a6                                 
  06164  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6166   [jump table #42]
;----------------------------------------------------------------------
f2_6166:
  06166  4e56fffc              link     a6,#-4                             
  0616a  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  0616e  3e2e0012              move.w   $12(a6),d7                         
  06172  701e                  moveq    #30,d0                             
  06174  a122                  _NewHandle                                  ; $a122
  06176  2848                  movea.l  a0,a4                              
  06178  306e000c              movea.w  $c(a6),a0                          
  0617c  2008                  move.l   a0,d0                              
  0617e  e988                  lsl.l    #4,d0                              
  06180  2040                  movea.l  d0,a0                              
  06182  302e0008              move.w   $8(a6),d0                          
  06186  20700531ffff98ea      movea.l  ([-$6716,a0],d0.w*4,$0),a0         
  0618e  701e                  moveq    #30,d0                             
  06190  2254                  movea.l  (a4),a1                            
  06192  a02e                  _BlockMove                                  ; $a02e
  06194  2f0c                  move.l   a4,-(a7)                           
  06196  3f2e000a              move.w   $a(a6),-(a7)                       
  0619a  4267                  clr.w    -(a7)                              
  0619c  a8ce                  _OffsetPoly                                 ; $a8ce
  0619e  7015                  moveq    #21,d0                             
  061a0  c1ee0010              muls.w   $10(a6),d0                         
  061a4  306e000e              movea.w  $e(a6),a0                          
  061a8  4a300930ffff985e      tst.b    (-$67a2,a0,d0.l)                   
  061b0  6704                  beq.s    L61b6                              
  061b2  7c03                  moveq    #3,d6                              
  061b4  6002                  bra.s    L61b8                              
L61b6:
  061b6  7c00                  moveq    #0,d6                              
L61b8:
  061b8  4a47                  tst.w    d7                                 
  061ba  675a                  beq.s    L6216                              
  061bc  7c04                  moveq    #4,d6                              
  061be  4a39ffff3b13          tst.b    g_c4ed                             
  061c4  6728                  beq.s    L61ee                              
  061c6  42a7                  clr.l    -(a7)                              
  061c8  3f07                  move.w   d7,-(a7)                           
  061ca  aa0c                  _GetPixPat                                  ; $aa0c
  061cc  23dfffff9436          move.l   (a7)+,g_6bca                       
  061d2  4ab9ffff9436          tst.l    g_6bca                             
  061d8  663c                  bne.s    L6216                              
  061da  4267                  clr.w    -(a7)                              
  061dc  a9af                  _ResError                                   ; $a9af
  061de  3a1f                  move.w   (a7)+,d5                           
  061e0  2f3c00000178          move.l   STR_0178,-(a7)                     ; "GetPixPat"
  061e6  3f05                  move.w   d5,-(a7)                           
  061e8  4ead06ca              jsr      f7_18ec                            
  061ec  606c                  bra.s    L625a                              
L61ee:
  061ee  42a7                  clr.l    -(a7)                              
  061f0  3f07                  move.w   d7,-(a7)                           
  061f2  a9b8                  _GetPattern                                 ; $a9b8
  061f4  23dfffff94fe          move.l   (a7)+,g_6b02                       
  061fa  4ab9ffff94fe          tst.l    g_6b02                             
  06200  6614                  bne.s    L6216                              
  06202  4267                  clr.w    -(a7)                              
  06204  a9af                  _ResError                                   ; $a9af
  06206  3a1f                  move.w   (a7)+,d5                           
  06208  2f3c00000182          move.l   STR_0182,-(a7)                     ; "GetPattern"
  0620e  3f05                  move.w   d5,-(a7)                           
  06210  4ead06ca              jsr      f7_18ec                            
  06214  6044                  bra.s    L625a                              
L6216:
  06216  3f06                  move.w   d6,-(a7)                           
  06218  2f0c                  move.l   a4,-(a7)                           
  0621a  4ead079a              jsr      f7_19ea                            
  0621e  2ebc00020002          move.l   #$20002,(a7)                       
  06224  a89b                  _PenSize                                    ; $a89b
  06226  2f0c                  move.l   a4,-(a7)                           
  06228  a8c6                  _FramePoly                                  ; $a8c6
  0622a  2f3c00010001          move.l   #$10001,-(a7)                      
  06230  a89b                  _PenSize                                    ; $a89b
  06232  2f0c                  move.l   a4,-(a7)                           
  06234  a8cd                  _KillPoly                                   ; $a8cd
  06236  4a47                  tst.w    d7                                 
  06238  548f                  addq.l   #2,a7                              
  0623a  671e                  beq.s    L625a                              
  0623c  4a39ffff3b13          tst.b    g_c4ed                             
  06242  670a                  beq.s    L624e                              
  06244  2f39ffff9436          move.l   g_6bca,-(a7)                       
  0624a  aa08                  _DisposePixPat                              ; $aa08
  0624c  6008                  bra.s    L6256                              
L624e:
  0624e  2f39ffff94fe          move.l   g_6b02,-(a7)                       
  06254  a9a3                  _ReleaseResource                            ; $a9a3
L6256:
  06256  4eba08fe              jsr      f2_6b56                            
L625a:
  0625a  4cee10e0ffec          movem.l  -$14(a6),d5/d6/d7/a4               
  06260  4e5e                  unlk     a6                                 
  06262  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6264   [jump table #43]
;----------------------------------------------------------------------
f2_6264:
  06264  4e56fe1e              link     a6,#-482                           
  06268  48e70338              movem.l  d6/d7/a2/a3/a4,-(a7)               
  0626c  486efffc              pea      -$4(a6)                            
  06270  a874                  _GetPort                                    ; $a874
  06272  42a7                  clr.l    -(a7)                              
  06274  3f3c0088              move.w   #$88,-(a7)                         
  06278  486efe2e              pea      -$1d2(a6)                          
  0627c  4878ffff              pea      ($ffff).w                          
  06280  a97c                  _GetNewDialog                               ; $a97c
  06282  245f                  movea.l  (a7)+,a2                           
  06284  4a39ffff3b0d          tst.b    g_c4f3                             
  0628a  6726                  beq.s    L62b2                              
  0628c  2f0a                  move.l   a2,-(a7)                           
  0628e  3f3c0018              move.w   #$18,-(a7)                         
  06292  486efe2a              pea      -$1d6(a6)                          
  06296  486efe26              pea      -$1da(a6)                          
  0629a  486efe1e              pea      -$1e2(a6)                          
  0629e  a98d                  _GetDialogItem                              ; $a98d
  062a0  2f2efe26              move.l   -$1da(a6),-(a7)                    
  062a4  3f3c00ff              move.w   #$ff,-(a7)                         
  062a8  a95d                  _HiliteControl                              ; $a95d
  062aa  2f0a                  move.l   a2,-(a7)                           
  062ac  3f3c0018              move.w   #$18,-(a7)                         
  062b0  a827                  _ShowDialogItem                             ; $a827
L62b2:
  062b2  42a7                  clr.l    -(a7)                              
  062b4  486efe2c              pea      -$1d4(a6)                          
  062b8  a991                  _ModalDialog                                ; $a991
  062ba  0c6e0002fe2c          cmpi.w   #2,-$1d4(a6)                       
  062c0  6f08                  ble.s    L62ca                              
  062c2  0c6e0018fe2c          cmpi.w   #$18,-$1d4(a6)                     
  062c8  66e8                  bne.s    L62b2                              
L62ca:
  062ca  0c6e0001fe2c          cmpi.w   #1,-$1d4(a6)                       
  062d0  66000134              bne.w    L6406                              
  062d4  42a7                  clr.l    -(a7)                              
  062d6  3f3c0004              move.w   #4,-(a7)                           
  062da  a9b9                  _GetCursor                                  ; $a9b9
  062dc  2c1f                  move.l   (a7)+,d6                           
  062de  2046                  movea.l  d6,a0                              
  062e0  2f10                  move.l   (a0),-(a7)                         
  062e2  a851                  _SetCursor                                  ; $a851
  062e4  2f3cc8000000          move.l   #$c8000000,-(a7)                   
  062ea  a8fd                  _trap    $a8fd                              
  062ec  7078                  moveq    #120,d0                            
  062ee  a122                  _NewHandle                                  ; $a122
  062f0  2648                  movea.l  a0,a3                              
  062f2  204b                  movea.l  a3,a0                              
  062f4  a029                  _HLock                                      ; $a029
  062f6  2f0b                  move.l   a3,-(a7)                           
  062f8  2f3c20040480          move.l   #$20040480,-(a7)                   
  062fe  a8fd                  _trap    $a8fd                              
  06300  42a7                  clr.l    -(a7)                              
  06302  2f0b                  move.l   a3,-(a7)                           
  06304  42a7                  clr.l    -(a7)                              
  06306  42a7                  clr.l    -(a7)                              
  06308  2f3c04000c00          move.l   #$4000c00,-(a7)                    
  0630e  a8fd                  _trap    $a8fd                              
  06310  285f                  movea.l  (a7)+,a4                           
  06312  2f0c                  move.l   a4,-(a7)                           
  06314  a873                  _SetPort                                    ; $a873
  06316  3f3c0015              move.w   #$15,-(a7)                         
  0631a  a887                  _TextFont                                   ; $a887
  0631c  3f3c000c              move.w   #$c,-(a7)                          
  06320  a88a                  _TextSize                                   ; $a88a
  06322  2f0c                  move.l   a4,-(a7)                           
  06324  42a7                  clr.l    -(a7)                              
  06326  2f3c10000808          move.l   #$10000808,-(a7)                   
  0632c  a8fd                  _trap    $a8fd                              
  0632e  7e03                  moveq    #3,d7                              
  06330  602e                  bra.s    L6360                              
L6332:
  06332  2f0a                  move.l   a2,-(a7)                           
  06334  3f07                  move.w   d7,-(a7)                           
  06336  486efe2a              pea      -$1d6(a6)                          
  0633a  486efe26              pea      -$1da(a6)                          
  0633e  486efe1e              pea      -$1e2(a6)                          
  06342  a98d                  _GetDialogItem                              ; $a98d
  06344  2f2efe26              move.l   -$1da(a6),-(a7)                    
  06348  486efee0              pea      -$120(a6)                          
  0634c  a990                  _GetDialogItemText                          ; $a990
  0634e  3f2efe20              move.w   -$1e0(a6),-(a7)                    
  06352  3f2efe22              move.w   -$1de(a6),-(a7)                    
  06356  a893                  _MoveTo                                     ; $a893
  06358  486efee0              pea      -$120(a6)                          
  0635c  a884                  _DrawString                                 ; $a884
  0635e  5247                  addq.w   #1,d7                              
L6360:
  06360  0c470015              cmpi.w   #$15,d7                            
  06364  6dcc                  blt.s    L6332                              
  06366  066e0014fe22          addi.w   #$14,-$1de(a6)                     
  0636c  7064                  moveq    #100,d0                            
  0636e  d06efe20              add.w    -$1e0(a6),d0                       
  06372  3f00                  move.w   d0,-(a7)                           
  06374  3f2efe22              move.w   -$1de(a6),-(a7)                    
  06378  a893                  _MoveTo                                     ; $a893
  0637a  2f3c0000018e          move.l   STR_018e,-(a7)                     ; "George Herrin, Jr."
  06380  a884                  _DrawString                                 ; $a884
  06382  066e0014fe22          addi.w   #$14,-$1de(a6)                     
  06388  7064                  moveq    #100,d0                            
  0638a  d06efe20              add.w    -$1e0(a6),d0                       
  0638e  3f00                  move.w   d0,-(a7)                           
  06390  3f2efe22              move.w   -$1de(a6),-(a7)                    
  06394  a893                  _MoveTo                                     ; $a893
  06396  2f3c000001a2          move.l   STR_01a2,-(a7)                     ; "3710 Starboard Ln"
  0639c  a884                  _DrawString                                 ; $a884
  0639e  066e0014fe22          addi.w   #$14,-$1de(a6)                     
  063a4  7064                  moveq    #100,d0                            
  063a6  d06efe20              add.w    -$1e0(a6),d0                       
  063aa  3f00                  move.w   d0,-(a7)                           
  063ac  3f2efe22              move.w   -$1de(a6),-(a7)                    
  063b0  a893                  _MoveTo                                     ; $a893
  063b2  2f3c000001b4          move.l   STR_01b4,-(a7)                     ; "Lithonia, GA  30058"
  063b8  a884                  _DrawString                                 ; $a884
  063ba  2f0c                  move.l   a4,-(a7)                           
  063bc  2f3c1800040c          move.l   #$1800040c,-(a7)                   
  063c2  a8fd                  _trap    $a8fd                              
  063c4  2f0c                  move.l   a4,-(a7)                           
  063c6  2f3c08000484          move.l   #$8000484,-(a7)                    
  063cc  a8fd                  _trap    $a8fd                              
  063ce  2053                  movea.l  (a3),a0                            
  063d0  0c2800010044          cmpi.b   #1,$44(a0)                         
  063d6  6622                  bne.s    L63fa                              
  063d8  4267                  clr.w    -(a7)                              
  063da  2f3cba000000          move.l   #$ba000000,-(a7)                   
  063e0  a8fd                  _trap    $a8fd                              
  063e2  4a5f                  tst.w    (a7)+                              
  063e4  6614                  bne.s    L63fa                              
  063e6  2f0b                  move.l   a3,-(a7)                           
  063e8  42a7                  clr.l    -(a7)                              
  063ea  42a7                  clr.l    -(a7)                              
  063ec  42a7                  clr.l    -(a7)                              
  063ee  486effe2              pea      -$1e(a6)                           
  063f2  2f3c60051480          move.l   #$60051480,-(a7)                   
  063f8  a8fd                  _trap    $a8fd                              
L63fa:
  063fa  2f3cd0000000          move.l   #$d0000000,-(a7)                   
  06400  a8fd                  _trap    $a8fd                              
  06402  204b                  movea.l  a3,a0                              
  06404  a02a                  _HUnlock                                    ; $a02a
L6406:
  06406  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  0640c  a851                  _SetCursor                                  ; $a851
  0640e  0c6e0018fe2c          cmpi.w   #$18,-$1d4(a6)                     
  06414  6604                  bne.s    L641a                              
  06416  4ead0342              jsr      f3_47d0                            
L641a:
  0641a  2f2efffc              move.l   -$4(a6),-(a7)                      
  0641e  a873                  _SetPort                                    ; $a873
  06420  2f0a                  move.l   a2,-(a7)                           
  06422  a983                  _DisposeDialog                              ; $a983
  06424  4cdf1cc0              movem.l  (a7)+,d6/d7/a2/a3/a4               
  06428  4e5e                  unlk     a6                                 
  0642a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_642c   [jump table #44]
;----------------------------------------------------------------------
f2_642c:
  0642c  4e56fffa              link     a6,#-6                             
  06430  41eefffc              lea      -$4(a6),a0                         
  06434  a039                  _ReadDateTime                               ; $a039
  06436  3d40fffa              move.w   d0,-$6(a6)                         
  0643a  222efffc              move.l   -$4(a6),d1                         
  0643e  4c7c100200001388      divu.l   #$1388,d2:d1                       
  06446  23c2ffffabec          move.l   d2,g_5414                          
  0644c  4e5e                  unlk     a6                                 
  0644e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6450   [jump table #45]
;----------------------------------------------------------------------
f2_6450:
  06450  4e56fff4              link     a6,#-12                            
  06454  2f0b                  move.l   a3,-(a7)                           
  06456  42a7                  clr.l    -(a7)                              
  06458  3f3c00a1              move.w   #$a1,-(a7)                         
  0645c  aa0c                  _GetPixPat                                  ; $aa0c
  0645e  265f                  movea.l  (a7)+,a3                           
  06460  42a7                  clr.l    -(a7)                              
  06462  a924                  _FrontWindow                                ; $a924
  06464  2d5ffff4              move.l   (a7)+,-$c(a6)                      
  06468  3f3c0008              move.w   #8,-(a7)                           
  0646c  a89c                  _PenMode                                    ; $a89c
  0646e  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  06474  a873                  _SetPort                                    ; $a873
  06476  2079ffff8fb6          movea.l  g_704a,a0                          
  0647c  48680010              pea      $10(a0)                            
  06480  2f0b                  move.l   a3,-(a7)                           
  06482  aa0e                  _FillCRect                                  ; $aa0e
  06484  2f0b                  move.l   a3,-(a7)                           
  06486  a9a3                  _ReleaseResource                            ; $a9a3
  06488  265f                  movea.l  (a7)+,a3                           
  0648a  4e5e                  unlk     a6                                 
  0648c  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_648e   [jump table #46]
;----------------------------------------------------------------------
f2_648e:
  0648e  4e56fffe              link     a6,#-2                             
  06492  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  06496  3839ffff3afa          move.w   g_c506,d4                          
  0649c  4a39ffff3b08          tst.b    g_c4f8                             
  064a2  67000158              beq.w    L65fc                              
  064a6  4a39ffff3b0a          tst.b    g_c4f6                             
  064ac  6700014e              beq.w    L65fc                              
  064b0  4a39ffff9933          tst.b    g_66cd                             
  064b6  67000144              beq.w    L65fc                              
  064ba  13fc0001ffff3b08      move.b   #1,g_c4f8                          
  064c2  13fc0001ffff3b0a      move.b   #1,g_c4f6                          
  064ca  2e3c36000000          move.l   #$36000000,d7                      
  064d0  3f3c000a              move.w   #$a,-(a7)                          
  064d4  4eba14d2              jsr      f2_79a8                            
  064d8  5940                  subq.w   #4,d0                              
  064da  548f                  addq.l   #2,a7                              
  064dc  6f4c                  ble.s    L652a                              
  064de  3f3c0003              move.w   #3,-(a7)                           
  064e2  4eba14c4              jsr      f2_79a8                            
  064e6  5240                  addq.w   #1,d0                              
  064e8  3a00                  move.w   d0,d5                              
  064ea  3005                  move.w   d5,d0                              
  064ec  548f                  addq.l   #2,a7                              
  064ee  673a                  beq.s    L652a                              
  064f0  6b38                  bmi.s    L652a                              
  064f2  5740                  subq.w   #3,d0                              
  064f4  6722                  beq.s    L6518                              
  064f6  6a06                  bpl.s    L64fe                              
  064f8  5240                  addq.w   #1,d0                              
  064fa  6a12                  bpl.s    L650e                              
  064fc  6006                  bra.s    L6504                              
L64fe:
  064fe  5540                  subq.w   #2,d0                              
  06500  6a28                  bpl.s    L652a                              
  06502  601e                  bra.s    L6522                              
L6504:
  06504  33fc07d0ffff3af8      move.w   #$7d0,g_c508                       
  0650c  601c                  bra.s    L652a                              
L650e:
  0650e  33fc03e8ffff3af8      move.w   #$3e8,g_c508                       
  06516  6012                  bra.s    L652a                              
L6518:
  06518  33fc01f4ffff3af8      move.w   #$1f4,g_c508                       
  06520  6008                  bra.s    L652a                              
L6522:
  06522  33fc00faffff3af8      move.w   #$fa,g_c508                        
L652a:
  0652a  3f3c0064              move.w   #$64,-(a7)                         
  0652e  4eba1478              jsr      f2_79a8                            
  06532  0c40004e              cmpi.w   #$4e,d0                            
  06536  548f                  addq.l   #2,a7                              
  06538  6e0a                  bgt.s    L6544                              
  0653a  0c790003ffff3afc      cmpi.w   #3,g_c504                          
  06542  6f50                  ble.s    L6594                              
L6544:
  06544  3f3c0004              move.w   #4,-(a7)                           
  06548  4eba145e              jsr      f2_79a8                            
  0654c  3c00                  move.w   d0,d6                              
  0654e  3039ffff3afa          move.w   g_c506,d0                          
  06554  d046                  add.w    d6,d0                              
  06556  0c400055              cmpi.w   #$55,d0                            
  0655a  548f                  addq.l   #2,a7                              
  0655c  6e0c                  bgt.s    L656a                              
  0655e  4a39ffff3b09          tst.b    g_c4f7                             
  06564  6704                  beq.s    L656a                              
  06566  d846                  add.w    d6,d4                              
  06568  6018                  bra.s    L6582                              
L656a:
  0656a  4239ffff3b09          clr.b    g_c4f7                             
  06570  4446                  neg.w    d6                                 
  06572  d846                  add.w    d6,d4                              
  06574  0c440023              cmpi.w   #$23,d4                            
  06578  6c08                  bge.s    L6582                              
  0657a  13fc0001ffff3b09      move.b   #1,g_c4f7                          
L6582:
  06582  33c4ffff3afa          move.w   d4,g_c506                          
  06588  3044                  movea.w  d4,a0                              
  0658a  de88                  add.l    a0,d7                              
  0658c  4279ffff3afc          clr.w    g_c504                             
  06592  600e                  bra.s    L65a2                              
L6594:
  06594  3079ffff3afa          movea.w  g_c506,a0                          
  0659a  de88                  add.l    a0,d7                              
  0659c  5279ffff3afc          addq.w   #1,g_c504                          
L65a2:
  065a2  2f39ffff9792          move.l   g_686e,-(a7)                       
  065a8  3f3c007d              move.w   #$7d,-(a7)                         
  065ac  2f07                  move.l   d7,-(a7)                           
  065ae  3f39ffff3af8          move.w   g_c508,-(a7)                       
  065b4  4ead0332              jsr      f3_460e                            
  065b8  4a39ffff3b09          tst.b    g_c4f7                             
  065be  4fef000c              lea      $c(a7),a7                          
  065c2  6712                  beq.s    L65d6                              
  065c4  3f3c0005              move.w   #5,-(a7)                           
  065c8  4eba13de              jsr      f2_79a8                            
  065cc  3040                  movea.w  d0,a0                              
  065ce  5588                  subq.l   #2,a0                              
  065d0  de88                  add.l    a0,d7                              
  065d2  548f                  addq.l   #2,a7                              
  065d4  6010                  bra.s    L65e6                              
L65d6:
  065d6  3f3c0005              move.w   #5,-(a7)                           
  065da  4eba13cc              jsr      f2_79a8                            
  065de  3040                  movea.w  d0,a0                              
  065e0  5587                  subq.l   #2,d7                              
  065e2  9e88                  sub.l    a0,d7                              
  065e4  548f                  addq.l   #2,a7                              
L65e6:
  065e6  2f39ffff9796          move.l   g_686a,-(a7)                       
  065ec  3f3c007d              move.w   #$7d,-(a7)                         
  065f0  2f07                  move.l   d7,-(a7)                           
  065f2  3f39ffff3af8          move.w   g_c508,-(a7)                       
  065f8  4ead0332              jsr      f3_460e                            
L65fc:
  065fc  4cee00f0ffee          movem.l  -$12(a6),d4/d5/d6/d7               
  06602  4e5e                  unlk     a6                                 
  06604  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6606
;----------------------------------------------------------------------
f2_6606:
  06606  4e56fff0              link     a6,#-16                            
  0660a  2f05                  move.l   d5,-(a7)                           
  0660c  3d7c000efff8          move.w   #$e,-$8(a6)                        
  06612  3d7c0001fffa          move.w   #1,-$6(a6)                         
  06618  2d6efff4fffc          move.l   -$c(a6),-$4(a6)                    
  0661e  4267                  clr.w    -(a7)                              
  06620  2f39ffff9792          move.l   g_686e,-(a7)                       
  06626  486efff8              pea      -$8(a6)                            
  0662a  1f3c0001              move.b   #1,-(a7)                           
  0662e  a803                  _SndDoCommand                               ; $a803
  06630  3a1f                  move.w   (a7)+,d5                           
  06632  3d7c000efff8          move.w   #$e,-$8(a6)                        
  06638  426efffa              clr.w    -$6(a6)                            
  0663c  2d6efff0fffc          move.l   -$10(a6),-$4(a6)                   
  06642  4267                  clr.w    -(a7)                              
  06644  2f39ffff9796          move.l   g_686a,-(a7)                       
  0664a  486efff8              pea      -$8(a6)                            
  0664e  1f3c0001              move.b   #1,-(a7)                           
  06652  a803                  _SndDoCommand                               ; $a803
  06654  3a1f                  move.w   (a7)+,d5                           
  06656  2a1f                  move.l   (a7)+,d5                           
  06658  4e5e                  unlk     a6                                 
  0665a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_665c
;----------------------------------------------------------------------
f2_665c:
  0665c  4e56fffe              link     a6,#-2                             
  06660  70f6                  moveq    #-10,d0                            
  06662  d079ffff8378          add.w    g_7c88,d0                          
  06668  3f00                  move.w   d0,-(a7)                           
  0666a  4eba133c              jsr      f2_79a8                            
  0666e  3d40fffe              move.w   d0,-$2(a6)                         
  06672  70f6                  moveq    #-10,d0                            
  06674  d079ffff8376          add.w    g_7c8a,d0                          
  0667a  3e80                  move.w   d0,(a7)                            
  0667c  4eba132a              jsr      f2_79a8                            
  06680  d06efffe              add.w    -$2(a6),d0                         
  06684  33c0ffff8372          move.w   d0,g_7c8e                          
  0668a  33c0ffff8370          move.w   d0,g_7c90                          
  06690  4e5e                  unlk     a6                                 
  06692  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6694   [jump table #47]
;----------------------------------------------------------------------
f2_6694:
  06694  4e56fdc2              link     a6,#-574                           
  06698  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  0669c  3e2e000c              move.w   $c(a6),d7                          
  066a0  3c2e000e              move.w   $e(a6),d6                          
  066a4  266e0012              movea.l  $12(a6),a3                         
  066a8  246e0016              movea.l  $16(a6),a2                         
  066ac  286e0008              movea.l  $8(a6),a4                          
  066b0  41eefdcc              lea      -$234(a6),a0                       
  066b4  43f9ffffa8d4          lea      g_572c,a1                          
  066ba  7005                  moveq    #5,d0                              
L66bc:
  066bc  20d9                  move.l   (a1)+,(a0)+                        
  066be  51c8fffc              dbf      d0,L66bc                           
  066c2  4253                  clr.w    (a3)                               
L66c4:
  066c4  3f3c0004              move.w   #4,-(a7)                           
  066c8  4eba12de              jsr      f2_79a8                            
  066cc  35400006              move.w   d0,$6(a2)                          
  066d0  548f                  addq.l   #2,a7                              
  066d2  306a0006              movea.w  $6(a2),a0                          
  066d6  d1fcffff980f          adda.l   #$ffff980f,a0                      
  066dc  4a10                  tst.b    (a0)                               
  066de  67e4                  beq.s    L66c4                              
  066e0  200c                  move.l   a4,d0                              
  066e2  6708                  beq.s    L66ec                              
  066e4  2f0c                  move.l   a4,-(a7)                           
  066e6  a873                  _SetPort                                    ; $a873
  066e8  4ebaa564              jsr      f2_0c4e                            
L66ec:
  066ec  302a0006              move.w   $6(a2),d0                          
  066f0  670001c8              beq.w    L68ba                              
  066f4  6b0001c4              bmi.w    L68ba                              
  066f8  5740                  subq.w   #3,d0                              
  066fa  6700008a              beq.w    L6786                              
  066fe  6a06                  bpl.s    L6706                              
  06700  5240                  addq.w   #1,d0                              
  06702  6a44                  bpl.s    L6748                              
  06704  600a                  bra.s    L6710                              
L6706:
  06706  5540                  subq.w   #2,d0                              
  06708  6a0001b0              bpl.w    L68ba                              
  0670c  6000010e              bra.w    L681c                              
L6710:
  06710  7601                  moveq    #1,d3                              
  06712  602a                  bra.s    L673e                              
L6714:
  06714  3f07                  move.w   d7,-(a7)                           
  06716  4eba1290              jsr      f2_79a8                            
  0671a  35803200              move.w   d0,$0(a2,d3.w*2)                   
  0671e  be723200              cmp.w    $0(a2,d3.w*2),d7                   
  06722  548f                  addq.l   #2,a7                              
  06724  6c04                  bge.s    L672a                              
  06726  7000                  moveq    #0,d0                              
  06728  6004                  bra.s    L672e                              
L672a:
  0672a  30323200              move.w   $0(a2,d3.w*2),d0                   
L672e:
  0672e  35803200              move.w   d0,$0(a2,d3.w*2)                   
  06732  9e723200              sub.w    $0(a2,d3.w*2),d7                   
  06736  30323200              move.w   $0(a2,d3.w*2),d0                   
  0673a  d153                  add.w    d0,(a3)                            
  0673c  5243                  addq.w   #1,d3                              
L673e:
  0673e  0c430003              cmpi.w   #3,d3                              
  06742  6dd0                  blt.s    L6714                              
  06744  60000174              bra.w    L68ba                              
L6748:
  06748  7a2d                  moveq    #45,d5                             
  0674a  7601                  moveq    #1,d3                              
  0674c  6024                  bra.s    L6772                              
L674e:
  0674e  3f07                  move.w   d7,-(a7)                           
  06750  4eba1256              jsr      f2_79a8                            
  06754  35803200              move.w   d0,$0(a2,d3.w*2)                   
  06758  be723200              cmp.w    $0(a2,d3.w*2),d7                   
  0675c  548f                  addq.l   #2,a7                              
  0675e  6c04                  bge.s    L6764                              
  06760  7000                  moveq    #0,d0                              
  06762  6004                  bra.s    L6768                              
L6764:
  06764  30323200              move.w   $0(a2,d3.w*2),d0                   
L6768:
  06768  35803200              move.w   d0,$0(a2,d3.w*2)                   
  0676c  3e323200              move.w   $0(a2,d3.w*2),d7                   
  06770  5243                  addq.w   #1,d3                              
L6772:
  06772  0c430003              cmpi.w   #3,d3                              
  06776  6dd6                  blt.s    L674e                              
  06778  302a0002              move.w   $2(a2),d0                          
  0677c  906a0004              sub.w    $4(a2),d0                          
  06780  3680                  move.w   d0,(a3)                            
  06782  60000136              bra.w    L68ba                              
L6786:
  06786  7a78                  moveq    #120,d5                            
  06788  7002                  moveq    #2,d0                              
  0678a  d079ffff8894          add.w    g_776c,d0                          
  06790  bc40                  cmp.w    d0,d6                              
  06792  6d08                  blt.s    L679c                              
  06794  7c02                  moveq    #2,d6                              
  06796  dc79ffff8894          add.w    g_776c,d6                          
L679c:
  0679c  3f06                  move.w   d6,-(a7)                           
  0679e  4eba1208              jsr      f2_79a8                            
  067a2  35400002              move.w   d0,$2(a2)                          
  067a6  3e86                  move.w   d6,(a7)                            
  067a8  4eba11fe              jsr      f2_79a8                            
  067ac  35400004              move.w   d0,$4(a2)                          
  067b0  bc6a0002              cmp.w    $2(a2),d6                          
  067b4  548f                  addq.l   #2,a7                              
  067b6  6f28                  ble.s    L67e0                              
  067b8  3f39ffff8894          move.w   g_776c,-(a7)                       
  067be  4eba11e8              jsr      f2_79a8                            
  067c2  3800                  move.w   d0,d4                              
  067c4  302a0002              move.w   $2(a2),d0                          
  067c8  d044                  add.w    d4,d0                              
  067ca  bc40                  cmp.w    d0,d6                              
  067cc  548f                  addq.l   #2,a7                              
  067ce  6d08                  blt.s    L67d8                              
  067d0  302a0002              move.w   $2(a2),d0                          
  067d4  d044                  add.w    d4,d0                              
  067d6  6004                  bra.s    L67dc                              
L67d8:
  067d8  302a0002              move.w   $2(a2),d0                          
L67dc:
  067dc  35400002              move.w   d0,$2(a2)                          
L67e0:
  067e0  bc6a0004              cmp.w    $4(a2),d6                          
  067e4  6f28                  ble.s    L680e                              
  067e6  3f39ffff8894          move.w   g_776c,-(a7)                       
  067ec  4eba11ba              jsr      f2_79a8                            
  067f0  3800                  move.w   d0,d4                              
  067f2  302a0004              move.w   $4(a2),d0                          
  067f6  d044                  add.w    d4,d0                              
  067f8  bc40                  cmp.w    d0,d6                              
  067fa  548f                  addq.l   #2,a7                              
  067fc  6d08                  blt.s    L6806                              
  067fe  302a0004              move.w   $4(a2),d0                          
  06802  d044                  add.w    d4,d0                              
  06804  6004                  bra.s    L680a                              
L6806:
  06806  302a0004              move.w   $4(a2),d0                          
L680a:
  0680a  35400004              move.w   d0,$4(a2)                          
L680e:
  0680e  302a0002              move.w   $2(a2),d0                          
  06812  c1ea0004              muls.w   $4(a2),d0                          
  06816  3680                  move.w   d0,(a3)                            
  06818  600000a0              bra.w    L68ba                              
L681c:
  0681c  7002                  moveq    #2,d0                              
  0681e  d079ffff8894          add.w    g_776c,d0                          
  06824  bc40                  cmp.w    d0,d6                              
  06826  6d08                  blt.s    L6830                              
  06828  7c02                  moveq    #2,d6                              
  0682a  dc79ffff8894          add.w    g_776c,d6                          
L6830:
  06830  3f06                  move.w   d6,-(a7)                           
  06832  4eba1174              jsr      f2_79a8                            
  06836  35400002              move.w   d0,$2(a2)                          
  0683a  3e86                  move.w   d6,(a7)                            
  0683c  4eba116a              jsr      f2_79a8                            
  06840  35400004              move.w   d0,$4(a2)                          
  06844  bc6a0002              cmp.w    $2(a2),d6                          
  06848  548f                  addq.l   #2,a7                              
  0684a  6f28                  ble.s    L6874                              
  0684c  3f39ffff8894          move.w   g_776c,-(a7)                       
  06852  4eba1154              jsr      f2_79a8                            
  06856  3800                  move.w   d0,d4                              
  06858  302a0002              move.w   $2(a2),d0                          
  0685c  d044                  add.w    d4,d0                              
  0685e  bc40                  cmp.w    d0,d6                              
  06860  548f                  addq.l   #2,a7                              
  06862  6d08                  blt.s    L686c                              
  06864  302a0002              move.w   $2(a2),d0                          
  06868  d044                  add.w    d4,d0                              
  0686a  6004                  bra.s    L6870                              
L686c:
  0686c  302a0002              move.w   $2(a2),d0                          
L6870:
  06870  35400002              move.w   d0,$2(a2)                          
L6874:
  06874  bc6a0004              cmp.w    $4(a2),d6                          
  06878  6f28                  ble.s    L68a2                              
  0687a  3f39ffff8894          move.w   g_776c,-(a7)                       
  06880  4eba1126              jsr      f2_79a8                            
  06884  3800                  move.w   d0,d4                              
  06886  302a0004              move.w   $4(a2),d0                          
  0688a  d044                  add.w    d4,d0                              
  0688c  bc40                  cmp.w    d0,d6                              
  0688e  548f                  addq.l   #2,a7                              
  06890  6d08                  blt.s    L689a                              
  06892  302a0004              move.w   $4(a2),d0                          
  06896  d044                  add.w    d4,d0                              
  06898  6004                  bra.s    L689e                              
L689a:
  0689a  302a0004              move.w   $4(a2),d0                          
L689e:
  0689e  35400004              move.w   d0,$4(a2)                          
L68a2:
  068a2  302a0002              move.w   $2(a2),d0                          
  068a6  c1ea0004              muls.w   $4(a2),d0                          
  068aa  35400002              move.w   d0,$2(a2)                          
  068ae  306a0002              movea.w  $2(a2),a0                          
  068b2  2008                  move.l   a0,d0                              
  068b4  81ea0004              divs.w   $4(a2),d0                          
  068b8  3680                  move.w   d0,(a3)                            
L68ba:
  068ba  200c                  move.l   a4,d0                              
  068bc  670c                  beq.s    L68ca                              
  068be  3f2a0006              move.w   $6(a2),-(a7)                       
  068c2  2f0a                  move.l   a2,-(a7)                           
  068c4  4ebaa09e              jsr      f2_0964                            
  068c8  5c8f                  addq.l   #6,a7                              
L68ca:
  068ca  3004                  move.w   d4,d0                              
  068cc  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  068d0  4e5e                  unlk     a6                                 
  068d2  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_68d4   [jump table #48]
;----------------------------------------------------------------------
f2_68d4:
  068d4  4e56ffec              link     a6,#-20                            
  068d8  2f07                  move.l   d7,-(a7)                           
  068da  486effec              pea      -$14(a6)                           
  068de  a874                  _GetPort                                    ; $a874
  068e0  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  068e6  a873                  _SetPort                                    ; $a873
  068e8  3f3c0003              move.w   #3,-(a7)                           
  068ec  a887                  _TextFont                                   ; $a887
  068ee  3f3c000a              move.w   #$a,-(a7)                          
  068f2  a88a                  _TextSize                                   ; $a88a
  068f4  3f3c0001              move.w   #1,-(a7)                           
  068f8  a888                  _TextFace                                   ; $a888
  068fa  4267                  clr.w    -(a7)                              
  068fc  a889                  _TextMode                                   ; $a889
  068fe  4a79ffff837e          tst.w    g_7c82                             
  06904  660c                  bne.s    L6912                              
  06906  3e39ffff83a0          move.w   g_7c60,d7                          
  0690c  064701f3              addi.w   #$1f3,d7                           
  06910  6026                  bra.s    L6938                              
L6912:
  06912  4a79ffff837e          tst.w    g_7c82                             
  06918  6f0c                  ble.s    L6926                              
  0691a  3e39ffff83a0          move.w   g_7c60,d7                          
  06920  06470225              addi.w   #$225,d7                           
  06924  6012                  bra.s    L6938                              
L6926:
  06926  3f39ffff83a0          move.w   g_7c60,-(a7)                       
  0692c  4eba10fe              jsr      f2_7a2c                            
  06930  06400239              addi.w   #$239,d0                           
  06934  3e00                  move.w   d0,d7                              
  06936  548f                  addq.l   #2,a7                              
L6938:
  06938  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  06940  6610                  bne.s    L6952                              
  06942  4279ffff837e          clr.w    g_7c82                             
  06948  3e39ffff83a0          move.w   g_7c60,d7                          
  0694e  064701f3              addi.w   #$1f3,d7                           
L6952:
  06952  486efff8              pea      -$8(a6)                            
  06956  2f3c0005004b          move.l   #$5004b,-(a7)                      
  0695c  2f3c0025006b          move.l   #$25006b,-(a7)                     
  06962  a8a7                  _SetRect                                    ; $a8a7
  06964  486efff8              pea      -$8(a6)                            
  06968  2f3c00250000          move.l   #$250000,-(a7)                     
  0696e  a8a8                  _OffsetRect                                 ; $a8a8
  06970  486efff8              pea      -$8(a6)                            
  06974  a8a3                  _EraseRect                                  ; $a8a3
  06976  3f07                  move.w   d7,-(a7)                           
  06978  486efff8              pea      -$8(a6)                            
  0697c  4ead06d2              jsr      f7_1a72                            
  06980  486efff0              pea      -$10(a6)                           
  06984  7002                  moveq    #2,d0                              
  06986  d06efffe              add.w    -$2(a6),d0                         
  0698a  3f00                  move.w   d0,-(a7)                           
  0698c  3f2efff8              move.w   -$8(a6),-(a7)                      
  06990  7032                  moveq    #50,d0                             
  06992  d06efffe              add.w    -$2(a6),d0                         
  06996  3f00                  move.w   d0,-(a7)                           
  06998  3f2efffc              move.w   -$4(a6),-(a7)                      
  0699c  a8a7                  _SetRect                                    ; $a8a7
  0699e  486efff0              pea      -$10(a6)                           
  069a2  a8a3                  _EraseRect                                  ; $a8a3
  069a4  7005                  moveq    #5,d0                              
  069a6  d06efffe              add.w    -$2(a6),d0                         
  069aa  3e80                  move.w   d0,(a7)                            
  069ac  70fb                  moveq    #-5,d0                             
  069ae  d06efffc              add.w    -$4(a6),d0                         
  069b2  3f00                  move.w   d0,-(a7)                           
  069b4  a893                  _MoveTo                                     ; $a893
  069b6  2ebc000001c8          move.l   STR_01c8,(a7)                      ; "["
  069bc  a884                  _DrawString                                 ; $a884
  069be  3039ffff83a0          move.w   g_7c60,d0                          
  069c4  33f003b0ffff3ae2ffff  move.w   (-$c51e,za0,d0.w*2),g_7c5c         
  069d0  3039ffff83a4          move.w   g_7c5c,d0                          
  069d6  9079ffff8392          sub.w    g_7c6e,d0                          
  069dc  9079ffff838e          sub.w    g_7c72,d0                          
  069e2  9079ffff837e          sub.w    g_7c82,d0                          
  069e8  33c0ffff8374          move.w   d0,g_7c8c                          
  069ee  3f39ffff8374          move.w   g_7c8c,-(a7)                       
  069f4  4eba1000              jsr      f2_79f6                            
  069f8  3ebc005d              move.w   #$5d,(a7)                          
  069fc  a883                  _DrawChar                                   ; $a883
  069fe  4ead0372              jsr      f3_54e6                            
  06a02  2f2effec              move.l   -$14(a6),-(a7)                     
  06a06  a873                  _SetPort                                    ; $a873
  06a08  2e1f                  move.l   (a7)+,d7                           
  06a0a  4e5e                  unlk     a6                                 
  06a0c  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6a0e   [jump table #49]
;----------------------------------------------------------------------
f2_6a0e:
  06a0e  4e56fff2              link     a6,#-14                            
  06a12  4a6e000e              tst.w    $e(a6)                             
  06a16  670e                  beq.s    L6a26                              
  06a18  302e0012              move.w   $12(a6),d0                         
  06a1c  d06e000e              add.w    $e(a6),d0                          
  06a20  206e0014              movea.l  $14(a6),a0                         
  06a24  3080                  move.w   d0,(a0)                            
L6a26:
  06a26  4e5e                  unlk     a6                                 
  06a28  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6a2a   [jump table #50]
;----------------------------------------------------------------------
f2_6a2a:
  06a2a  4e56fe00              link     a6,#-512                           
  06a2e  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  06a34  486eff00              pea      -$100(a6)                          
  06a38  a919                  _GetWTitle                                  ; $a919
  06a3a  41eeff00              lea      -$100(a6),a0                       
  06a3e  43eefe00              lea      -$200(a6),a1                       
  06a42  700b                  moveq    #11,d0                             
  06a44  a02e                  _BlockMove                                  ; $a02e
  06a46  3039ffff83bc          move.w   g_7c44,d0                          
  06a4c  7201                  moveq    #1,d1                              
  06a4e  d2b005b0ffff75b6      add.l    (-$8a4a,za0,d0.w*4),d1             
  06a56  43eefe0b              lea      -$1f5(a6),a1                       
  06a5a  103005b1ffff75b6      move.b   ([-$8a4a,a0],d0.w*4,$0),d0         
  06a62  49c0                  extb.l   d0                                 
  06a64  2041                  movea.l  d1,a0                              
  06a66  a02e                  _BlockMove                                  ; $a02e
  06a68  3039ffff83bc          move.w   g_7c44,d0                          
  06a6e  720a                  moveq    #10,d1                             
  06a70  d23005b1ffff75b6      add.b    ([-$8a4a,a0],d0.w*4,$0),d1         
  06a78  1d41fe00              move.b   d1,-$200(a6)                       
  06a7c  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  06a82  486efe00              pea      -$200(a6)                          
  06a86  a91a                  _SetWTitle                                  ; $a91a
  06a88  4e5e                  unlk     a6                                 
  06a8a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6a8c   [jump table #51]
;----------------------------------------------------------------------
f2_6a8c:
  06a8c  4e56fee8              link     a6,#-280                           
  06a90  486efee8              pea      -$118(a6)                          
  06a94  a874                  _GetPort                                    ; $a874
  06a96  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  06a9c  a873                  _SetPort                                    ; $a873
  06a9e  4267                  clr.w    -(a7)                              
  06aa0  a889                  _TextMode                                   ; $a889
  06aa2  486efff8              pea      -$8(a6)                            
  06aa6  2f3c0005004b          move.l   #$5004b,-(a7)                      
  06aac  2f3c0025006b          move.l   #$25006b,-(a7)                     
  06ab2  a8a7                  _SetRect                                    ; $a8a7
  06ab4  486efff8              pea      -$8(a6)                            
  06ab8  2f3c006f0000          move.l   #$6f0000,-(a7)                     
  06abe  a8a8                  _OffsetRect                                 ; $a8a8
  06ac0  3f3c00d0              move.w   #$d0,-(a7)                         
  06ac4  486efff8              pea      -$8(a6)                            
  06ac8  4ead06d2              jsr      f7_1a72                            
  06acc  2eb9ffff83a6          move.l   g_7c5a,(a7)                        
  06ad2  486efef0              pea      -$110(a6)                          
  06ad6  4ead0512              jsr      f4_150e                            
  06ada  486efff0              pea      -$10(a6)                           
  06ade  7002                  moveq    #2,d0                              
  06ae0  d06efffe              add.w    -$2(a6),d0                         
  06ae4  3f00                  move.w   d0,-(a7)                           
  06ae6  3f2efff8              move.w   -$8(a6),-(a7)                      
  06aea  7032                  moveq    #50,d0                             
  06aec  d06efffe              add.w    -$2(a6),d0                         
  06af0  3f00                  move.w   d0,-(a7)                           
  06af2  3f2efffc              move.w   -$4(a6),-(a7)                      
  06af6  a8a7                  _SetRect                                    ; $a8a7
  06af8  486efff0              pea      -$10(a6)                           
  06afc  a8a3                  _EraseRect                                  ; $a8a3
  06afe  7005                  moveq    #5,d0                              
  06b00  d06efffe              add.w    -$2(a6),d0                         
  06b04  3e80                  move.w   d0,(a7)                            
  06b06  70fb                  moveq    #-5,d0                             
  06b08  d06efffc              add.w    -$4(a6),d0                         
  06b0c  3f00                  move.w   d0,-(a7)                           
  06b0e  a893                  _MoveTo                                     ; $a893
  06b10  2f39ffff83a6          move.l   g_7c5a,-(a7)                       
  06b16  4eba0efa              jsr      f2_7a12                            
  06b1a  2eaefee8              move.l   -$118(a6),(a7)                     
  06b1e  a873                  _SetPort                                    ; $a873
  06b20  4e5e                  unlk     a6                                 
  06b22  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6b24   [jump table #52]
;----------------------------------------------------------------------
f2_6b24:
  06b24  4e560000              link     a6,#0                              
  06b28  2f07                  move.l   d7,-(a7)                           
  06b2a  4a39ffff9853          tst.b    g_67ad                             
  06b30  661e                  bne.s    L6b50                              
  06b32  4ebaf91c              jsr      f2_6450                            
  06b36  7e01                  moveq    #1,d7                              
  06b38  600a                  bra.s    L6b44                              
L6b3a:
  06b3a  3f07                  move.w   d7,-(a7)                           
  06b3c  4eba0162              jsr      f2_6ca0                            
  06b40  548f                  addq.l   #2,a7                              
  06b42  5247                  addq.w   #1,d7                              
L6b44:
  06b44  be79ffff883e          cmp.w    g_77c2,d7                          
  06b4a  6fee                  ble.s    L6b3a                              
  06b4c  4ebad8f2              jsr      f2_4440                            
L6b50:
  06b50  2e1f                  move.l   (a7)+,d7                           
  06b52  4e5e                  unlk     a6                                 
  06b54  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6b56   [jump table #53]
;----------------------------------------------------------------------
f2_6b56:
  06b56  4e56fef6              link     a6,#-266                           
  06b5a  2f07                  move.l   d7,-(a7)                           
  06b5c  42aefef8              clr.l    -$108(a6)                          
  06b60  7e00                  moveq    #0,d7                              
  06b62  a01c                  _FreeMem                                    ; $a01c
  06b64  2d40fef8              move.l   d0,-$108(a6)                       
  06b68  43eefef8              lea      -$108(a6),a1                       
  06b6c  a11d                  _MaxMem                                     ; $a11d
  06b6e  2288                  move.l   a0,(a1)                            
  06b70  2e00                  move.l   d0,d7                              
  06b72  a01c                  _FreeMem                                    ; $a01c
  06b74  2d40fef8              move.l   d0,-$108(a6)                       
  06b78  0c8000005000          cmpi.l   #$5000,d0                          
  06b7e  6c18                  bge.s    L6b98                              
  06b80  4267                  clr.w    -(a7)                              
  06b82  3f3c0fad              move.w   #$fad,-(a7)                        
  06b86  42a7                  clr.l    -(a7)                              
  06b88  a988                  _CautionAlert                               ; $a988
  06b8a  3d5ffef6              move.w   (a7)+,-$10a(a6)                    
  06b8e  43eefef8              lea      -$108(a6),a1                       
  06b92  a11d                  _MaxMem                                     ; $a11d
  06b94  2288                  move.l   a0,(a1)                            
  06b96  2e00                  move.l   d0,d7                              
L6b98:
  06b98  2e1f                  move.l   (a7)+,d7                           
  06b9a  4e5e                  unlk     a6                                 
  06b9c  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6b9e   [jump table #54]
;----------------------------------------------------------------------
f2_6b9e:
  06b9e  4e56fffc              link     a6,#-4                             
  06ba2  486efffc              pea      -$4(a6)                            
  06ba6  a874                  _GetPort                                    ; $a874
  06ba8  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  06bae  a873                  _SetPort                                    ; $a873
  06bb0  2079ffff8fd2          movea.l  g_702e,a0                          
  06bb6  48680010              pea      $10(a0)                            
  06bba  a8a3                  _EraseRect                                  ; $a8a3
  06bbc  3f3c0003              move.w   #3,-(a7)                           
  06bc0  a887                  _TextFont                                   ; $a887
  06bc2  3f3c000a              move.w   #$a,-(a7)                          
  06bc6  a88a                  _TextSize                                   ; $a88a
  06bc8  3f3c0001              move.w   #1,-(a7)                           
  06bcc  a888                  _TextFace                                   ; $a888
  06bce  4267                  clr.w    -(a7)                              
  06bd0  a889                  _TextMode                                   ; $a889
  06bd2  4ead0432              jsr      f4_45a2                            
  06bd6  4ead041a              jsr      f4_43d4                            
  06bda  4ead0422              jsr      f4_444c                            
  06bde  4ead042a              jsr      f4_4524                            
  06be2  4eba0024              jsr      f2_6c08                            
  06be6  4ebafea4              jsr      f2_6a8c                            
  06bea  4ebafce8              jsr      f2_68d4                            
  06bee  4eba04d2              jsr      f2_70c2                            
  06bf2  4ead0742              jsr      f7_2ebe                            
  06bf6  4ead0732              jsr      f7_2b34                            
  06bfa  4ead072a              jsr      f7_2ab2                            
  06bfe  2f2efffc              move.l   -$4(a6),-(a7)                      
  06c02  a873                  _SetPort                                    ; $a873
  06c04  4e5e                  unlk     a6                                 
  06c06  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6c08   [jump table #55]
;----------------------------------------------------------------------
f2_6c08:
  06c08  4e56fff4              link     a6,#-12                            
  06c0c  486efff4              pea      -$c(a6)                            
  06c10  a874                  _GetPort                                    ; $a874
  06c12  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  06c18  a873                  _SetPort                                    ; $a873
  06c1a  486efff8              pea      -$8(a6)                            
  06c1e  2f3c0005004b          move.l   #$5004b,-(a7)                      
  06c24  2f3c0025006b          move.l   #$25006b,-(a7)                     
  06c2a  a8a7                  _SetRect                                    ; $a8a7
  06c2c  486efff8              pea      -$8(a6)                            
  06c30  a8a3                  _EraseRect                                  ; $a8a3
  06c32  3f3c0082              move.w   #$82,-(a7)                         
  06c36  486efff8              pea      -$8(a6)                            
  06c3a  4ead06d2              jsr      f7_1a72                            
  06c3e  4257                  clr.w    (a7)                               
  06c40  a889                  _TextMode                                   ; $a889
  06c42  7005                  moveq    #5,d0                              
  06c44  d06efffe              add.w    -$2(a6),d0                         
  06c48  3e80                  move.w   d0,(a7)                            
  06c4a  70fb                  moveq    #-5,d0                             
  06c4c  d06efffc              add.w    -$4(a6),d0                         
  06c50  3f00                  move.w   d0,-(a7)                           
  06c52  a893                  _MoveTo                                     ; $a893
  06c54  486efff8              pea      -$8(a6)                            
  06c58  2f3c0005006c          move.l   #$5006c,-(a7)                      
  06c5e  2079ffff8fd2          movea.l  g_702e,a0                          
  06c64  3f280016              move.w   $16(a0),-(a7)                      
  06c68  3f3c0025              move.w   #$25,-(a7)                         
  06c6c  a8a7                  _SetRect                                    ; $a8a7
  06c6e  486efff8              pea      -$8(a6)                            
  06c72  a8a3                  _EraseRect                                  ; $a8a3
  06c74  3eb9ffff8370          move.w   g_7c90,(a7)                        
  06c7a  4eba0d7a              jsr      f2_79f6                            
  06c7e  2f3c000001ca          move.l   STR_01ca,-(a7)                     ; " ["
  06c84  a884                  _DrawString                                 ; $a884
  06c86  3eb9ffff8372          move.w   g_7c8e,(a7)                        
  06c8c  4eba0d68              jsr      f2_79f6                            
  06c90  3ebc005d              move.w   #$5d,(a7)                          
  06c94  a883                  _DrawChar                                   ; $a883
  06c96  2f2efff4              move.l   -$c(a6),-(a7)                      
  06c9a  a873                  _SetPort                                    ; $a873
  06c9c  4e5e                  unlk     a6                                 
  06c9e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6ca0   [jump table #56]
;----------------------------------------------------------------------
f2_6ca0:
  06ca0  4e56fff0              link     a6,#-16                            
  06ca4  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  06ca8  3e2e0008              move.w   $8(a6),d7                          
  06cac  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  06cb2  a873                  _SetPort                                    ; $a873
  06cb4  4a39ffff9853          tst.b    g_67ad                             
  06cba  6726                  beq.s    L6ce2                              
  06cbc  42a7                  clr.l    -(a7)                              
  06cbe  3f3c00a1              move.w   #$a1,-(a7)                         
  06cc2  aa0c                  _GetPixPat                                  ; $aa0c
  06cc4  285f                  movea.l  (a7)+,a4                           
  06cc6  3f3c0008              move.w   #8,-(a7)                           
  06cca  a89c                  _PenMode                                    ; $a89c
  06ccc  2079ffff8fb6          movea.l  g_704a,a0                          
  06cd2  48680010              pea      $10(a0)                            
  06cd6  2f0c                  move.l   a4,-(a7)                           
  06cd8  aa0e                  _FillCRect                                  ; $aa0e
  06cda  2f0c                  move.l   a4,-(a7)                           
  06cdc  a9a3                  _ReleaseResource                            ; $a9a3
  06cde  600001be              bra.w    L6e9e                              
L6ce2:
  06ce2  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  06cea  2008                  move.l   a0,d0                              
  06cec  81fc0015              divs.w   #$15,d0                            
  06cf0  c1fc0012              muls.w   #$12,d0                            
  06cf4  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  06cfc  2208                  move.l   a0,d1                              
  06cfe  83fc0015              divs.w   #$15,d1                            
  06d02  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  06d08  3041                  movea.w  d1,a0                              
  06d0a  d1c8                  adda.l   a0,a0                              
  06d0c  4a700800              tst.w    $0(a0,d0.l)                        
  06d10  6c36                  bge.s    L6d48                              
  06d12  7600                  moveq    #0,d3                              
  06d14  6028                  bra.s    L6d3e                              
L6d16:
  06d16  702a                  moveq    #42,d0                             
  06d18  c1c3                  muls.w   d3,d0                              
  06d1a  0680ffff8a2c          addi.l   #$ffff8a2c,d0                      
  06d20  3047                  movea.w  d7,a0                              
  06d22  d1c8                  adda.l   a0,a0                              
  06d24  4a700800              tst.w    $0(a0,d0.l)                        
  06d28  6c12                  bge.s    L6d3c                              
  06d2a  4a39ffff9858          tst.b    g_67a8                             
  06d30  670a                  beq.s    L6d3c                              
  06d32  3f03                  move.w   d3,-(a7)                           
  06d34  3f07                  move.w   d7,-(a7)                           
  06d36  4ebad50c              jsr      f2_4244                            
  06d3a  588f                  addq.l   #4,a7                              
L6d3c:
  06d3c  5243                  addq.w   #1,d3                              
L6d3e:
  06d3e  0c430004              cmpi.w   #4,d3                              
  06d42  6dd2                  blt.s    L6d16                              
  06d44  60000158              bra.w    L6e9e                              
L6d48:
  06d48  486efff0              pea      -$10(a6)                           
  06d4c  3f3073b0ffff8afe      move.w   (-$7502,za0,d7.w*2),-(a7)          
  06d54  3f3073b0ffff8ad4      move.w   (-$752c,za0,d7.w*2),-(a7)          
  06d5c  3f3073b0ffff8b52      move.w   (-$74ae,za0,d7.w*2),-(a7)          
  06d64  3f3073b0ffff8b28      move.w   (-$74d8,za0,d7.w*2),-(a7)          
  06d6c  a8a7                  _SetRect                                    ; $a8a7
  06d6e  486efff0              pea      -$10(a6)                           
  06d72  a8a3                  _EraseRect                                  ; $a8a3
  06d74  486efff0              pea      -$10(a6)                           
  06d78  a8a1                  _FrameRect                                  ; $a8a1
  06d7a  7600                  moveq    #0,d3                              
  06d7c  603c                  bra.s    L6dba                              
L6d7e:
  06d7e  702a                  moveq    #42,d0                             
  06d80  c1c3                  muls.w   d3,d0                              
  06d82  0680ffff8a2c          addi.l   #$ffff8a2c,d0                      
  06d88  3047                  movea.w  d7,a0                              
  06d8a  d1c8                  adda.l   a0,a0                              
  06d8c  4a700800              tst.w    $0(a0,d0.l)                        
  06d90  6e1c                  bgt.s    L6dae                              
  06d92  702a                  moveq    #42,d0                             
  06d94  c1c3                  muls.w   d3,d0                              
  06d96  0680ffff8a2c          addi.l   #$ffff8a2c,d0                      
  06d9c  3047                  movea.w  d7,a0                              
  06d9e  d1c8                  adda.l   a0,a0                              
  06da0  4a700800              tst.w    $0(a0,d0.l)                        
  06da4  6c12                  bge.s    L6db8                              
  06da6  4a39ffff9858          tst.b    g_67a8                             
  06dac  670a                  beq.s    L6db8                              
L6dae:
  06dae  3f03                  move.w   d3,-(a7)                           
  06db0  3f07                  move.w   d7,-(a7)                           
  06db2  4ebad490              jsr      f2_4244                            
  06db6  588f                  addq.l   #4,a7                              
L6db8:
  06db8  5243                  addq.w   #1,d3                              
L6dba:
  06dba  0c430004              cmpi.w   #4,d3                              
  06dbe  6dbe                  blt.s    L6d7e                              
  06dc0  3f3c0001              move.w   #1,-(a7)                           
  06dc4  a889                  _TextMode                                   ; $a889
  06dc6  be79ffff8888          cmp.w    g_7778,d7                          
  06dcc  660a                  bne.s    L6dd8                              
  06dce  3f3c0002              move.w   #2,-(a7)                           
  06dd2  4eba00d2              jsr      f2_6ea6                            
  06dd6  548f                  addq.l   #2,a7                              
L6dd8:
  06dd8  be79ffff884c          cmp.w    g_77b4,d7                          
  06dde  660a                  bne.s    L6dea                              
  06de0  3f3c0001              move.w   #1,-(a7)                           
  06de4  4eba00c0              jsr      f2_6ea6                            
  06de8  548f                  addq.l   #2,a7                              
L6dea:
  06dea  7600                  moveq    #0,d3                              
  06dec  6024                  bra.s    L6e12                              
L6dee:
  06dee  3039ffff8894          move.w   g_776c,d0                          
  06df4  b07033b0ffff3ad4      cmp.w    (-$c52c,za0,d3.w*2),d0             
  06dfc  6612                  bne.s    L6e10                              
  06dfe  be7033b0ffff784a      cmp.w    (-$87b6,za0,d3.w*2),d7             
  06e06  6608                  bne.s    L6e10                              
  06e08  4267                  clr.w    -(a7)                              
  06e0a  4eba009a              jsr      f2_6ea6                            
  06e0e  548f                  addq.l   #2,a7                              
L6e10:
  06e10  5243                  addq.w   #1,d3                              
L6e12:
  06e12  0c430006              cmpi.w   #6,d3                              
  06e16  6dd6                  blt.s    L6dee                              
  06e18  307073b0ffff8afe      movea.w  (-$7502,za0,d7.w*2),a0             
  06e20  2c08                  move.l   a0,d6                              
  06e22  8dfc0015              divs.w   #$15,d6                            
  06e26  307073b0ffff8b52      movea.w  (-$74ae,za0,d7.w*2),a0             
  06e2e  2008                  move.l   a0,d0                              
  06e30  81fc0015              divs.w   #$15,d0                            
  06e34  5340                  subq.w   #1,d0                              
  06e36  3d40fffc              move.w   d0,-$4(a6)                         
  06e3a  307073b0ffff8ad4      movea.w  (-$752c,za0,d7.w*2),a0             
  06e42  2a08                  move.l   a0,d5                              
  06e44  8bfc0015              divs.w   #$15,d5                            
  06e48  307073b0ffff8b28      movea.w  (-$74d8,za0,d7.w*2),a0             
  06e50  2208                  move.l   a0,d1                              
  06e52  83fc0015              divs.w   #$15,d1                            
  06e56  5341                  subq.w   #1,d1                              
  06e58  3d41fffe              move.w   d1,-$2(a6)                         
  06e5c  7412                  moveq    #18,d2                             
  06e5e  c5c6                  muls.w   d6,d2                              
  06e60  0682ffff88b2          addi.l   #$ffff88b2,d2                      
  06e66  3045                  movea.w  d5,a0                              
  06e68  d1c8                  adda.l   a0,a0                              
  06e6a  4a702800              tst.w    $0(a0,d2.l)                        
  06e6e  6f2e                  ble.s    L6e9e                              
  06e70  3606                  move.w   d6,d3                              
  06e72  6024                  bra.s    L6e98                              
L6e74:
  06e74  3805                  move.w   d5,d4                              
  06e76  6018                  bra.s    L6e90                              
L6e78:
  06e78  3007                  move.w   d7,d0                              
  06e7a  4440                  neg.w    d0                                 
  06e7c  7212                  moveq    #18,d1                             
  06e7e  c3c3                  muls.w   d3,d1                              
  06e80  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  06e86  3044                  movea.w  d4,a0                              
  06e88  d1c8                  adda.l   a0,a0                              
  06e8a  31801800              move.w   d0,$0(a0,d1.l)                     
  06e8e  5244                  addq.w   #1,d4                              
L6e90:
  06e90  b86efffe              cmp.w    -$2(a6),d4                         
  06e94  6fe2                  ble.s    L6e78                              
  06e96  5243                  addq.w   #1,d3                              
L6e98:
  06e98  b66efffc              cmp.w    -$4(a6),d3                         
  06e9c  6fd6                  ble.s    L6e74                              
L6e9e:
  06e9e  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  06ea2  4e5e                  unlk     a6                                 
  06ea4  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_6ea6
;----------------------------------------------------------------------
f2_6ea6:
  06ea6  4e56fff8              link     a6,#-8                             
  06eaa  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  06eae  3e2e0008              move.w   $8(a6),d7                          
  06eb2  3007                  move.w   d7,d0                              
  06eb4  670e                  beq.s    L6ec4                              
  06eb6  6b00009a              bmi.w    L6f52                              
  06eba  5540                  subq.w   #2,d0                              
  06ebc  6772                  beq.s    L6f30                              
  06ebe  6a000092              bpl.w    L6f52                              
  06ec2  6048                  bra.s    L6f0c                              
L6ec4:
  06ec4  7600                  moveq    #0,d3                              
  06ec6  603c                  bra.s    L6f04                              
L6ec8:
  06ec8  3039ffff8894          move.w   g_776c,d0                          
  06ece  b07033b0ffff3ad4      cmp.w    (-$c52c,za0,d3.w*2),d0             
  06ed6  662a                  bne.s    L6f02                              
  06ed8  3c3033b0ffff784a      move.w   (-$87b6,za0,d3.w*2),d6             
  06ee0  3a3033b0ffff7856      move.w   (-$87aa,za0,d3.w*2),d5             
  06ee8  7800                  moveq    #0,d4                              
  06eea  6010                  bra.s    L6efc                              
L6eec:
  06eec  41f037b0ffff7862      lea      (-$879e,za0,d3.w*8),a0             
  06ef4  3db0420042f8          move.w   $0(a0,d4.w*2),-$8(a6,d4.w*2)       
  06efa  5244                  addq.w   #1,d4                              
L6efc:
  06efc  0c440004              cmpi.w   #4,d4                              
  06f00  6dea                  blt.s    L6eec                              
L6f02:
  06f02  5243                  addq.w   #1,d3                              
L6f04:
  06f04  0c430006              cmpi.w   #6,d3                              
  06f08  6dbe                  blt.s    L6ec8                              
  06f0a  6046                  bra.s    L6f52                              
L6f0c:
  06f0c  3c39ffff884c          move.w   g_77b4,d6                          
  06f12  3a39ffff884e          move.w   g_77b2,d5                          
  06f18  7800                  moveq    #0,d4                              
  06f1a  600c                  bra.s    L6f28                              
L6f1c:
  06f1c  3db043b0ffff885042f8  move.w   (-$77b0,za0,d4.w*2),-$8(a6,d4.w*2) 
  06f26  5244                  addq.w   #1,d4                              
L6f28:
  06f28  0c440004              cmpi.w   #4,d4                              
  06f2c  6dee                  blt.s    L6f1c                              
  06f2e  6022                  bra.s    L6f52                              
L6f30:
  06f30  3c39ffff8888          move.w   g_7778,d6                          
  06f36  3a39ffff8892          move.w   g_776e,d5                          
  06f3c  7800                  moveq    #0,d4                              
  06f3e  600c                  bra.s    L6f4c                              
L6f40:
  06f40  3db043b0ffff888a42f8  move.w   (-$7776,za0,d4.w*2),-$8(a6,d4.w*2) 
  06f4a  5244                  addq.w   #1,d4                              
L6f4c:
  06f4c  0c440004              cmpi.w   #4,d4                              
  06f50  6dee                  blt.s    L6f40                              
L6f52:
  06f52  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  06f58  a873                  _SetPort                                    ; $a873
  06f5a  3f3c000a              move.w   #$a,-(a7)                          
  06f5e  a89c                  _PenMode                                    ; $a89c
  06f60  3005                  move.w   d5,d0                              
  06f62  6716                  beq.s    L6f7a                              
  06f64  6b00014e              bmi.w    L70b4                              
  06f68  5740                  subq.w   #3,d0                              
  06f6a  67000100              beq.w    L706c                              
  06f6e  6a000144              bpl.w    L70b4                              
  06f72  5240                  addq.w   #1,d0                              
  06f74  6a0000a4              bpl.w    L701a                              
  06f78  604c                  bra.s    L6fc6                              
L6f7a:
  06f7a  7001                  moveq    #1,d0                              
  06f7c  d06efff8              add.w    -$8(a6),d0                         
  06f80  3f00                  move.w   d0,-(a7)                           
  06f82  3f3063b0ffff8ad4      move.w   (-$752c,za0,d6.w*2),-(a7)          
  06f8a  a893                  _MoveTo                                     ; $a893
  06f8c  7013                  moveq    #19,d0                             
  06f8e  d06efff8              add.w    -$8(a6),d0                         
  06f92  3f00                  move.w   d0,-(a7)                           
  06f94  3f3063b0ffff8ad4      move.w   (-$752c,za0,d6.w*2),-(a7)          
  06f9c  a891                  _LineTo                                     ; $a891
  06f9e  3007                  move.w   d7,d0                              
  06fa0  e548                  lsl.w    #2,d0                              
  06fa2  0640006e              addi.w   #$6e,d0                            
  06fa6  3f00                  move.w   d0,-(a7)                           
  06fa8  70fd                  moveq    #-3,d0                             
  06faa  d07063b0ffff8ad4      add.w    (-$752c,za0,d6.w*2),d0             
  06fb2  3f00                  move.w   d0,-(a7)                           
  06fb4  7001                  moveq    #1,d0                              
  06fb6  d06efff8              add.w    -$8(a6),d0                         
  06fba  3f00                  move.w   d0,-(a7)                           
  06fbc  4ebad3ea              jsr      f2_43a8                            
  06fc0  5c8f                  addq.l   #6,a7                              
  06fc2  600000f0              bra.w    L70b4                              
L6fc6:
  06fc6  70ff                  moveq    #-1,d0                             
  06fc8  d07063b0ffff8b52      add.w    (-$74ae,za0,d6.w*2),d0             
  06fd0  3f00                  move.w   d0,-(a7)                           
  06fd2  7001                  moveq    #1,d0                              
  06fd4  d06efffa              add.w    -$6(a6),d0                         
  06fd8  3f00                  move.w   d0,-(a7)                           
  06fda  a893                  _MoveTo                                     ; $a893
  06fdc  70ff                  moveq    #-1,d0                             
  06fde  d07063b0ffff8b52      add.w    (-$74ae,za0,d6.w*2),d0             
  06fe6  3f00                  move.w   d0,-(a7)                           
  06fe8  7013                  moveq    #19,d0                             
  06fea  d06efffa              add.w    -$6(a6),d0                         
  06fee  3f00                  move.w   d0,-(a7)                           
  06ff0  a891                  _LineTo                                     ; $a891
  06ff2  3007                  move.w   d7,d0                              
  06ff4  e548                  lsl.w    #2,d0                              
  06ff6  0640006c              addi.w   #$6c,d0                            
  06ffa  3f00                  move.w   d0,-(a7)                           
  06ffc  7010                  moveq    #16,d0                             
  06ffe  d06efffa              add.w    -$6(a6),d0                         
  07002  3f00                  move.w   d0,-(a7)                           
  07004  70ff                  moveq    #-1,d0                             
  07006  d07063b0ffff8b52      add.w    (-$74ae,za0,d6.w*2),d0             
  0700e  3f00                  move.w   d0,-(a7)                           
  07010  4ebad396              jsr      f2_43a8                            
  07014  5c8f                  addq.l   #6,a7                              
  07016  6000009c              bra.w    L70b4                              
L701a:
  0701a  7001                  moveq    #1,d0                              
  0701c  d06efffc              add.w    -$4(a6),d0                         
  07020  3f00                  move.w   d0,-(a7)                           
  07022  70ff                  moveq    #-1,d0                             
  07024  d07063b0ffff8b28      add.w    (-$74d8,za0,d6.w*2),d0             
  0702c  3f00                  move.w   d0,-(a7)                           
  0702e  a893                  _MoveTo                                     ; $a893
  07030  7013                  moveq    #19,d0                             
  07032  d06efffc              add.w    -$4(a6),d0                         
  07036  3f00                  move.w   d0,-(a7)                           
  07038  70ff                  moveq    #-1,d0                             
  0703a  d07063b0ffff8b28      add.w    (-$74d8,za0,d6.w*2),d0             
  07042  3f00                  move.w   d0,-(a7)                           
  07044  a891                  _LineTo                                     ; $a891
  07046  3007                  move.w   d7,d0                              
  07048  e548                  lsl.w    #2,d0                              
  0704a  0640006d              addi.w   #$6d,d0                            
  0704e  3f00                  move.w   d0,-(a7)                           
  07050  700d                  moveq    #13,d0                             
  07052  d07063b0ffff8b28      add.w    (-$74d8,za0,d6.w*2),d0             
  0705a  3f00                  move.w   d0,-(a7)                           
  0705c  7001                  moveq    #1,d0                              
  0705e  d06efffc              add.w    -$4(a6),d0                         
  07062  3f00                  move.w   d0,-(a7)                           
  07064  4ebad342              jsr      f2_43a8                            
  07068  5c8f                  addq.l   #6,a7                              
  0706a  6048                  bra.s    L70b4                              
L706c:
  0706c  3f3063b0ffff8afe      move.w   (-$7502,za0,d6.w*2),-(a7)          
  07074  7001                  moveq    #1,d0                              
  07076  d06efffe              add.w    -$2(a6),d0                         
  0707a  3f00                  move.w   d0,-(a7)                           
  0707c  a893                  _MoveTo                                     ; $a893
  0707e  3f3063b0ffff8afe      move.w   (-$7502,za0,d6.w*2),-(a7)          
  07086  7013                  moveq    #19,d0                             
  07088  d06efffe              add.w    -$2(a6),d0                         
  0708c  3f00                  move.w   d0,-(a7)                           
  0708e  a891                  _LineTo                                     ; $a891
  07090  3007                  move.w   d7,d0                              
  07092  e548                  lsl.w    #2,d0                              
  07094  0640006b              addi.w   #$6b,d0                            
  07098  3f00                  move.w   d0,-(a7)                           
  0709a  7010                  moveq    #16,d0                             
  0709c  d06efffe              add.w    -$2(a6),d0                         
  070a0  3f00                  move.w   d0,-(a7)                           
  070a2  70ef                  moveq    #-17,d0                            
  070a4  d07063b0ffff8afe      add.w    (-$7502,za0,d6.w*2),d0             
  070ac  3f00                  move.w   d0,-(a7)                           
  070ae  4ebad2f8              jsr      f2_43a8                            
  070b2  5c8f                  addq.l   #6,a7                              
L70b4:
  070b4  3f3c0008              move.w   #8,-(a7)                           
  070b8  a89c                  _PenMode                                    ; $a89c
  070ba  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  070be  4e5e                  unlk     a6                                 
  070c0  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_70c2   [jump table #57]
;----------------------------------------------------------------------
f2_70c2:
  070c2  4e56fff4              link     a6,#-12                            
  070c6  2f07                  move.l   d7,-(a7)                           
  070c8  486efff4              pea      -$c(a6)                            
  070cc  a874                  _GetPort                                    ; $a874
  070ce  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  070d4  a873                  _SetPort                                    ; $a873
  070d6  3f3c0003              move.w   #3,-(a7)                           
  070da  a887                  _TextFont                                   ; $a887
  070dc  3f3c000a              move.w   #$a,-(a7)                          
  070e0  a88a                  _TextSize                                   ; $a88a
  070e2  3f3c0001              move.w   #1,-(a7)                           
  070e6  a888                  _TextFace                                   ; $a888
  070e8  4267                  clr.w    -(a7)                              
  070ea  a889                  _TextMode                                   ; $a889
  070ec  4a79ffff8380          tst.w    g_7c80                             
  070f2  6614                  bne.s    L7108                              
  070f4  3f39ffff83a2          move.w   g_7c5e,-(a7)                       
  070fa  4eba0930              jsr      f2_7a2c                            
  070fe  06400258              addi.w   #$258,d0                           
  07102  3e00                  move.w   d0,d7                              
  07104  548f                  addq.l   #2,a7                              
  07106  602e                  bra.s    L7136                              
L7108:
  07108  4a79ffff8380          tst.w    g_7c80                             
  0710e  6f14                  ble.s    L7124                              
  07110  3f39ffff83a2          move.w   g_7c5e,-(a7)                       
  07116  4eba0914              jsr      f2_7a2c                            
  0711a  0640028a              addi.w   #$28a,d0                           
  0711e  3e00                  move.w   d0,d7                              
  07120  548f                  addq.l   #2,a7                              
  07122  6012                  bra.s    L7136                              
L7124:
  07124  3f39ffff83a2          move.w   g_7c5e,-(a7)                       
  0712a  4eba0900              jsr      f2_7a2c                            
  0712e  0640029e              addi.w   #$29e,d0                           
  07132  3e00                  move.w   d0,d7                              
  07134  548f                  addq.l   #2,a7                              
L7136:
  07136  7006                  moveq    #6,d0                              
  07138  9079ffff83a2          sub.w    g_7c5e,d0                          
  0713e  33c0ffff838c          move.w   d0,g_7c74                          
  07144  486efff8              pea      -$8(a6)                            
  07148  2f3c0005004b          move.l   #$5004b,-(a7)                      
  0714e  2f3c0025006b          move.l   #$25006b,-(a7)                     
  07154  a8a7                  _SetRect                                    ; $a8a7
  07156  486efff8              pea      -$8(a6)                            
  0715a  2f3c004a0000          move.l   #$4a0000,-(a7)                     
  07160  a8a8                  _OffsetRect                                 ; $a8a8
  07162  486efff8              pea      -$8(a6)                            
  07166  a8a3                  _EraseRect                                  ; $a8a3
  07168  3f07                  move.w   d7,-(a7)                           
  0716a  486efff8              pea      -$8(a6)                            
  0716e  4ead06d2              jsr      f7_1a72                            
  07172  2eaefff4              move.l   -$c(a6),(a7)                       
  07176  a873                  _SetPort                                    ; $a873
  07178  2e2efff0              move.l   -$10(a6),d7                        
  0717c  4e5e                  unlk     a6                                 
  0717e  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_7180   [jump table #59]
;----------------------------------------------------------------------
f2_7180:
  07180  4e56fff8              link     a6,#-8                             
  07184  48e70038              movem.l  a2/a3/a4,-(a7)                     
  07188  266e000c              movea.l  $c(a6),a3                          
  0718c  286e0010              movea.l  $10(a6),a4                         
  07190  2d6c0010fff8          move.l   $10(a4),-$8(a6)                    
  07196  2d6c0014fffc          move.l   $14(a4),-$4(a6)                    
  0719c  246b0002              movea.l  $2(a3),a2                          
  071a0  4ebaf2ec              jsr      f2_648e                            
  071a4  0c530003              cmpi.w   #3,(a3)                            
  071a8  662a                  bne.s    L71d4                              
  071aa  202b0002              move.l   $2(a3),d0                          
  071ae  ecc00018              bfclr    d0{0:24}                           
  071b2  5780                  subq.l   #3,d0                              
  071b4  670e                  beq.s    L71c4                              
  071b6  202b0002              move.l   $2(a3),d0                          
  071ba  ecc00018              bfclr    d0{0:24}                           
  071be  720d                  moveq    #13,d1                             
  071c0  b280                  cmp.l    d0,d1                              
  071c2  6610                  bne.s    L71d4                              
L71c4:
  071c4  206e0008              movea.l  $8(a6),a0                          
  071c8  30bc0001              move.w   #1,(a0)                            
  071cc  1d7c00010014          move.b   #1,$14(a6)                         
  071d2  6022                  bra.s    L71f6                              
L71d4:
  071d4  0c530006              cmpi.w   #6,(a3)                            
  071d8  6618                  bne.s    L71f2                              
  071da  b9ca                  cmpa.l   a2,a4                              
  071dc  6614                  bne.s    L71f2                              
  071de  206e0008              movea.l  $8(a6),a0                          
  071e2  30bc0014              move.w   #$14,(a0)                          
  071e6  2f0c                  move.l   a4,-(a7)                           
  071e8  a981                  _DrawDialog                                 ; $a981
  071ea  1d7c00010014          move.b   #1,$14(a6)                         
  071f0  6004                  bra.s    L71f6                              
L71f2:
  071f2  422e0014              clr.b    $14(a6)                            
L71f6:
  071f6  4cdf1c00              movem.l  (a7)+,a2/a3/a4                     
  071fa  4e5e                  unlk     a6                                 
  071fc  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f2_7200   [jump table #58]
;----------------------------------------------------------------------
f2_7200:
  07200  4e56ff42              link     a6,#-190                           
  07204  48e70108              movem.l  d7/a4,-(a7)                        
  07208  42a7                  clr.l    -(a7)                              
  0720a  3f3c008e              move.w   #$8e,-(a7)                         
  0720e  486eff56              pea      -$aa(a6)                           
  07212  4878ffff              pea      ($ffff).w                          
  07216  a97c                  _GetNewDialog                               ; $a97c
  07218  285f                  movea.l  (a7)+,a4                           
  0721a  2f0c                  move.l   a4,-(a7)                           
  0721c  4ead06ba              jsr      f7_161c                            
  07220  2e8c                  move.l   a4,(a7)                            
  07222  3f3c0003              move.w   #3,-(a7)                           
  07226  486eff52              pea      -$ae(a6)                           
  0722a  486eff42              pea      -$be(a6)                           
  0722e  486eff4a              pea      -$b6(a6)                           
  07232  a98d                  _GetDialogItem                              ; $a98d
  07234  2f2eff42              move.l   -$be(a6),-(a7)                     
  07238  7000                  moveq    #0,d0                              
  0723a  1039ffff8df2          move.b   g_720e,d0                          
  07240  3f00                  move.w   d0,-(a7)                           
  07242  a963                  _SetCtlValue                                ; $a963
  07244  2f0c                  move.l   a4,-(a7)                           
  07246  3f3c0004              move.w   #4,-(a7)                           
  0724a  486eff52              pea      -$ae(a6)                           
  0724e  486eff46              pea      -$ba(a6)                           
  07252  486eff4a              pea      -$b6(a6)                           
  07256  a98d                  _GetDialogItem                              ; $a98d
  07258  2f2eff46              move.l   -$ba(a6),-(a7)                     
  0725c  7000                  moveq    #0,d0                              
  0725e  1039ffff9933          move.b   g_66cd,d0                          
  07264  3f00                  move.w   d0,-(a7)                           
  07266  a963                  _SetCtlValue                                ; $a963
L7268:
  07268  486d01fa              pea      f2_7180                            
  0726c  486eff54              pea      -$ac(a6)                           
  07270  a991                  _ModalDialog                                ; $a991
  07272  302eff54              move.w   -$ac(a6),d0                        
  07276  0c400014              cmpi.w   #$14,d0                            
  0727a  620000a2              bhi.w    L731e                              
  0727e  43fa00bc              lea      L733c(pc),a1                       
  07282  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  07286  4ed1                  jmp      (a1)                               
  07288  4267                  clr.w    -(a7)                              
  0728a  2f2eff42              move.l   -$be(a6),-(a7)                     
  0728e  a960                  _GetCtlValue                                ; $a960
  07290  301f                  move.w   (a7)+,d0                           
  07292  13c0ffff8df2          move.b   d0,g_720e                          
  07298  4267                  clr.w    -(a7)                              
  0729a  2f2eff46              move.l   -$ba(a6),-(a7)                     
  0729e  a960                  _GetCtlValue                                ; $a960
  072a0  301f                  move.w   (a7)+,d0                           
  072a2  13c0ffff9933          move.b   d0,g_66cd                          
  072a8  6074                  bra.s    L731e                              
  072aa  4267                  clr.w    -(a7)                              
  072ac  2f2eff42              move.l   -$be(a6),-(a7)                     
  072b0  a960                  _GetCtlValue                                ; $a960
  072b2  3e1f                  move.w   (a7)+,d7                           
  072b4  2f2eff42              move.l   -$be(a6),-(a7)                     
  072b8  3047                  movea.w  d7,a0                              
  072ba  7001                  moveq    #1,d0                              
  072bc  d088                  add.l    a0,d0                              
  072be  81fc0002              divs.w   #2,d0                              
  072c2  4840                  swap     d0                                 
  072c4  3f00                  move.w   d0,-(a7)                           
  072c6  a963                  _SetCtlValue                                ; $a963
  072c8  4a39ffff8df2          tst.b    g_720e                             
  072ce  57c0                  seq      d0                                 
  072d0  4400                  neg.b    d0                                 
  072d2  13c0ffff8df2          move.b   d0,g_720e                          
  072d8  6044                  bra.s    L731e                              
  072da  4267                  clr.w    -(a7)                              
  072dc  2f2eff46              move.l   -$ba(a6),-(a7)                     
  072e0  a960                  _GetCtlValue                                ; $a960
  072e2  3e1f                  move.w   (a7)+,d7                           
  072e4  2f2eff46              move.l   -$ba(a6),-(a7)                     
  072e8  3047                  movea.w  d7,a0                              
  072ea  7001                  moveq    #1,d0                              
  072ec  d088                  add.l    a0,d0                              
  072ee  81fc0002              divs.w   #2,d0                              
  072f2  4840                  swap     d0                                 
  072f4  3f00                  move.w   d0,-(a7)                           
  072f6  a963                  _SetCtlValue                                ; $a963
  072f8  4267                  clr.w    -(a7)                              
  072fa  2f2eff46              move.l   -$ba(a6),-(a7)                     
  072fe  a960                  _GetCtlValue                                ; $a960
  07300  301f                  move.w   (a7)+,d0                           
  07302  13c0ffff9933          move.b   d0,g_66cd                          
  07308  4a00                  tst.b    d0                                 
  0730a  6612                  bne.s    L731e                              
  0730c  4ead033a              jsr      f3_46d8                            
  07310  600c                  bra.s    L731e                              
  07312  2f0c                  move.l   a4,-(a7)                           
  07314  a922                  _BeginUpdate                                ; $a922
  07316  2f0c                  move.l   a4,-(a7)                           
  07318  a981                  _DrawDialog                                 ; $a981
  0731a  2f0c                  move.l   a4,-(a7)                           
  0731c  a923                  _EndUpdate                                  ; $a923
L731e:
  0731e  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  07324  670a                  beq.s    L7330                              
  07326  0c6e0002ff54          cmpi.w   #2,-$ac(a6)                        
  0732c  6600ff3a              bne.w    L7268                              
L7330:
  07330  2f0c                  move.l   a4,-(a7)                           
  07332  a983                  _DisposeDialog                              ; $a983
  07334  4cdf1080              movem.l  (a7)+,d7/a4                        
  07338  4e5e                  unlk     a6                                 
  0733a  4e75                  rts                                         
  0733c  ffe2                  dc.w     $ffe2                              
  0733e  ff4c                  dc.w     $ff4c                              
  07340  ffe2                  dc.w     $ffe2                              
  07342  ff6e                  dc.w     $ff6e                              
  07344  ff9e                  dc.w     $ff9e                              
  07346  ffe2                  dc.w     $ffe2                              
  07348  ffe2                  dc.w     $ffe2                              
  0734a  ffe2                  dc.w     $ffe2                              
  0734c  ffe2                  dc.w     $ffe2                              
  0734e  ffe2                  dc.w     $ffe2                              
  07350  ffe2                  dc.w     $ffe2                              
  07352  ffe2                  dc.w     $ffe2                              
  07354  ffe2                  dc.w     $ffe2                              
  07356  ffe2                  dc.w     $ffe2                              
  07358  ffe2                  dc.w     $ffe2                              
  0735a  ffe2                  dc.w     $ffe2                              
  0735c  ffe2                  dc.w     $ffe2                              
  0735e  ffe2                  dc.w     $ffe2                              
  07360  ffe2                  dc.w     $ffe2                              
  07362  ffe2                  dc.w     $ffe2                              
  07364  ffd6                  dc.w     $ffd6                              

;----------------------------------------------------------------------
; f2_7366   [jump table #60]
;----------------------------------------------------------------------
f2_7366:
  07366  4e56fcda              link     a6,#-806                           
  0736a  48e70f18              movem.l  d4/d5/d6/d7/a3/a4,-(a7)            
  0736e  3e2e0008              move.w   $8(a6),d7                          
  07372  286e000a              movea.l  $a(a6),a4                          
  07376  7a00                  moveq    #0,d5                              
  07378  7800                  moveq    #0,d4                              
  0737a  3007                  move.w   d7,d0                              
  0737c  5740                  subq.w   #3,d0                              
  0737e  0c400009              cmpi.w   #9,d0                              
  07382  62000258              bhi.w    L75dc                              
  07386  43fa02be              lea      L7646(pc),a1                       
  0738a  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  0738e  4ed1                  jmp      (a1)                               
  07390  3f3c02bc              move.w   #$2bc,-(a7)                        
  07394  486eff88              pea      -$78(a6)                           
  07398  486efedc              pea      -$124(a6)                          
  0739c  4ebaa5b0              jsr      f2_194e                            
  073a0  303472fa              move.w   -$6(a4,d7.w*2),d0                  
  073a4  2eb005b0ffff75ca      move.l   (-$8a36,za0,d0.w*4),(a7)           
  073ac  4ead05fa              jsr      f6_0130                            
  073b0  1800                  move.b   d0,d4                              
  073b2  4a04                  tst.b    d4                                 
  073b4  4fef000a              lea      $a(a7),a7                          
  073b8  6710                  beq.s    L73ca                              
  073ba  486efcda              pea      -$326(a6)                          
  073be  2f3c000202bb          move.l   #$202bb,-(a7)                      
  073c4  4ead0522              jsr      f4_153c                            
  073c8  600e                  bra.s    L73d8                              
L73ca:
  073ca  486efcda              pea      -$326(a6)                          
  073ce  2f3c000102bb          move.l   #$102bb,-(a7)                      
  073d4  4ead0522              jsr      f4_153c                            
L73d8:
  073d8  486efcda              pea      -$326(a6)                          
  073dc  303472fa              move.w   -$6(a4,d7.w*2),d0                  
  073e0  2f3005b0ffff75ca      move.l   (-$8a36,za0,d0.w*4),-(a7)          
  073e8  2f367480              move.l   -$80(a6,d7.w*4),-(a7)              
  073ec  2f3c000001ce          move.l   STR_01ce,-(a7)                     ; "?"
  073f2  a98b                  _ParamText                                  ; $a98b
  073f4  600001e6              bra.w    L75dc                              
  073f8  3f3c02bc              move.w   #$2bc,-(a7)                        
  073fc  486eff88              pea      -$78(a6)                           
  07400  486efedc              pea      -$124(a6)                          
  07404  4ebaa548              jsr      f2_194e                            
  07408  303472fa              move.w   -$6(a4,d7.w*2),d0                  
  0740c  2eb005b0ffff75ca      move.l   (-$8a36,za0,d0.w*4),(a7)           
  07414  4ead05fa              jsr      f6_0130                            
  07418  1800                  move.b   d0,d4                              
  0741a  4a04                  tst.b    d4                                 
  0741c  4fef000a              lea      $a(a7),a7                          
  07420  6710                  beq.s    L7432                              
  07422  486efcda              pea      -$326(a6)                          
  07426  2f3c000202bb          move.l   #$202bb,-(a7)                      
  0742c  4ead0522              jsr      f4_153c                            
  07430  600e                  bra.s    L7440                              
L7432:
  07432  486efcda              pea      -$326(a6)                          
  07436  2f3c000102bb          move.l   #$102bb,-(a7)                      
  0743c  4ead0522              jsr      f4_153c                            
L7440:
  07440  486efcda              pea      -$326(a6)                          
  07444  303472fa              move.w   -$6(a4,d7.w*2),d0                  
  07448  2f3005b0ffff75ca      move.l   (-$8a36,za0,d0.w*4),-(a7)          
  07450  2f367484              move.l   -$7c(a6,d7.w*4),-(a7)              
  07454  2f3c000001d0          move.l   STR_01d0,-(a7)                     ; "?"
  0745a  a98b                  _ParamText                                  ; $a98b
  0745c  6000017e              bra.w    L75dc                              
  07460  3f3c01f6              move.w   #$1f6,-(a7)                        
  07464  486eff88              pea      -$78(a6)                           
  07468  486efedc              pea      -$124(a6)                          
  0746c  4ebaa4e0              jsr      f2_194e                            
  07470  302c0006              move.w   $6(a4),d0                          
  07474  2eb60488              move.l   -$78(a6,d0.w*4),(a7)               
  07478  4ead05fa              jsr      f6_0130                            
  0747c  1800                  move.b   d0,d4                              
  0747e  4a04                  tst.b    d4                                 
  07480  4fef000a              lea      $a(a7),a7                          
  07484  6710                  beq.s    L7496                              
  07486  486efcda              pea      -$326(a6)                          
  0748a  2f3c000202bb          move.l   #$202bb,-(a7)                      
  07490  4ead0522              jsr      f4_153c                            
  07494  600e                  bra.s    L74a4                              
L7496:
  07496  486efcda              pea      -$326(a6)                          
  0749a  2f3c000102bb          move.l   #$102bb,-(a7)                      
  074a0  4ead0522              jsr      f4_153c                            
L74a4:
  074a4  486efcda              pea      -$326(a6)                          
  074a8  302c0006              move.w   $6(a4),d0                          
  074ac  2f360488              move.l   -$78(a6,d0.w*4),-(a7)              
  074b0  2f3c000001d2          move.l   STR_01d2,-(a7)                     ; "?"
  074b6  2f3c000001d4          move.l   STR_01d4,-(a7)                     ; "?"
  074bc  a98b                  _ParamText                                  ; $a98b
  074be  6000011c              bra.w    L75dc                              
  074c2  3f3c0259              move.w   #$259,-(a7)                        
  074c6  486eff88              pea      -$78(a6)                           
  074ca  486efedc              pea      -$124(a6)                          
  074ce  4ebaa47e              jsr      f2_194e                            
  074d2  302c0008              move.w   $8(a4),d0                          
  074d6  2eb60488              move.l   -$78(a6,d0.w*4),(a7)               
  074da  4ead05fa              jsr      f6_0130                            
  074de  1800                  move.b   d0,d4                              
  074e0  4a04                  tst.b    d4                                 
  074e2  4fef000a              lea      $a(a7),a7                          
  074e6  6710                  beq.s    L74f8                              
  074e8  486efcda              pea      -$326(a6)                          
  074ec  2f3c000202bb          move.l   #$202bb,-(a7)                      
  074f2  4ead0522              jsr      f4_153c                            
  074f6  600e                  bra.s    L7506                              
L74f8:
  074f8  486efcda              pea      -$326(a6)                          
  074fc  2f3c000102bb          move.l   #$102bb,-(a7)                      
  07502  4ead0522              jsr      f4_153c                            
L7506:
  07506  486efcda              pea      -$326(a6)                          
  0750a  302c0008              move.w   $8(a4),d0                          
  0750e  2f360488              move.l   -$78(a6,d0.w*4),-(a7)              
  07512  2f3c000001d6          move.l   STR_01d6,-(a7)                     ; "?"
  07518  2f3c000001d8          move.l   STR_01d8,-(a7)                     ; "?"
  0751e  a98b                  _ParamText                                  ; $a98b
  07520  600000ba              bra.w    L75dc                              
  07524  3f3c02bc              move.w   #$2bc,-(a7)                        
  07528  486eff88              pea      -$78(a6)                           
  0752c  486efedc              pea      -$124(a6)                          
  07530  4ebaa41c              jsr      f2_194e                            
  07534  2eaeffe0              move.l   -$20(a6),(a7)                      
  07538  4ead05fa              jsr      f6_0130                            
  0753c  1800                  move.b   d0,d4                              
  0753e  4a04                  tst.b    d4                                 
  07540  4fef000a              lea      $a(a7),a7                          
  07544  6710                  beq.s    L7556                              
  07546  486efcda              pea      -$326(a6)                          
  0754a  2f3c000202bb          move.l   #$202bb,-(a7)                      
  07550  4ead0522              jsr      f4_153c                            
  07554  600e                  bra.s    L7564                              
L7556:
  07556  486efcda              pea      -$326(a6)                          
  0755a  2f3c000102bb          move.l   #$102bb,-(a7)                      
  07560  4ead0522              jsr      f4_153c                            
L7564:
  07564  486efcda              pea      -$326(a6)                          
  07568  2f2effe0              move.l   -$20(a6),-(a7)                     
  0756c  2f3c000001da          move.l   STR_01da,-(a7)                     ; "?"
  07572  2f3c000001dc          move.l   STR_01dc,-(a7)                     ; "?"
  07578  a98b                  _ParamText                                  ; $a98b
  0757a  6060                  bra.s    L75dc                              
  0757c  3f3c02bc              move.w   #$2bc,-(a7)                        
  07580  486eff88              pea      -$78(a6)                           
  07584  486efedc              pea      -$124(a6)                          
  07588  4ebaa3c4              jsr      f2_194e                            
  0758c  2eb67484              move.l   -$7c(a6,d7.w*4),(a7)               
  07590  4ead05fa              jsr      f6_0130                            
  07594  1800                  move.b   d0,d4                              
  07596  4a04                  tst.b    d4                                 
  07598  4fef000a              lea      $a(a7),a7                          
  0759c  6710                  beq.s    L75ae                              
  0759e  486efcda              pea      -$326(a6)                          
  075a2  2f3c000202bb          move.l   #$202bb,-(a7)                      
  075a8  4ead0522              jsr      f4_153c                            
  075ac  600e                  bra.s    L75bc                              
L75ae:
  075ae  486efcda              pea      -$326(a6)                          
  075b2  2f3c000102bb          move.l   #$102bb,-(a7)                      
  075b8  4ead0522              jsr      f4_153c                            
L75bc:
  075bc  306c0012              movea.w  $12(a4),a0                         
  075c0  2f08                  move.l   a0,-(a7)                           
  075c2  486efdda              pea      -$226(a6)                          
  075c6  4ead0512              jsr      f4_150e                            
  075ca  486efcda              pea      -$326(a6)                          
  075ce  2f367484              move.l   -$7c(a6,d7.w*4),-(a7)              
  075d2  486efdda              pea      -$226(a6)                          
  075d6  2f367488              move.l   -$78(a6,d7.w*4),-(a7)              
  075da  a98b                  _ParamText                                  ; $a98b
L75dc:
  075dc  42a7                  clr.l    -(a7)                              
  075de  3f3c00f8              move.w   #$f8,-(a7)                         
  075e2  486efede              pea      -$122(a6)                          
  075e6  4878ffff              pea      ($ffff).w                          
  075ea  a97c                  _GetNewDialog                               ; $a97c
  075ec  265f                  movea.l  (a7)+,a3                           
  075ee  2f0b                  move.l   a3,-(a7)                           
  075f0  4ead06ba              jsr      f7_161c                            
  075f4  2e8b                  move.l   a3,(a7)                            
  075f6  a915                  _ShowWindow                                 ; $a915
L75f8:
  075f8  42a7                  clr.l    -(a7)                              
  075fa  486efeda              pea      -$126(a6)                          
  075fe  a991                  _ModalDialog                                ; $a991
  07600  302efeda              move.w   -$126(a6),d0                       
  07604  6b10                  bmi.s    L7616                              
  07606  5740                  subq.w   #3,d0                              
  07608  670a                  beq.s    L7614                              
  0760a  6a0a                  bpl.s    L7616                              
  0760c  5240                  addq.w   #1,d0                              
  0760e  6b06                  bmi.s    L7616                              
  07610  7a01                  moveq    #1,d5                              
  07612  6002                  bra.s    L7616                              
L7614:
  07614  7a00                  moveq    #0,d5                              
L7616:
  07616  0c6e0002feda          cmpi.w   #2,-$126(a6)                       
  0761c  6708                  beq.s    L7626                              
  0761e  0c6e0003feda          cmpi.w   #3,-$126(a6)                       
  07624  66d2                  bne.s    L75f8                              
L7626:
  07626  2f0b                  move.l   a3,-(a7)                           
  07628  a983                  _DisposeDialog                              ; $a983
  0762a  7c01                  moveq    #1,d6                              
  0762c  6008                  bra.s    L7636                              
L762e:
  0762e  20766488              movea.l  -$78(a6,d6.w*4),a0                 
  07632  a01f                  _DisposePtr                                 ; $a01f
  07634  5246                  addq.w   #1,d6                              
L7636:
  07636  bc6efedc              cmp.w    -$124(a6),d6                       
  0763a  6ff2                  ble.s    L762e                              
  0763c  1005                  move.b   d5,d0                              
  0763e  4cdf18f0              movem.l  (a7)+,d4/d5/d6/d7/a3/a4            
  07642  4e5e                  unlk     a6                                 
  07644  4e75                  rts                                         
  07646  fd4a                  dc.w     $fd4a                              
  07648  fd4a                  dc.w     $fd4a                              
  0764a  fd4a                  dc.w     $fd4a                              
  0764c  fe1a                  dc.w     $fe1a                              
  0764e  fe7c                  dc.w     $fe7c                              
  07650  fdb2                  dc.w     $fdb2                              
  07652  fdb2                  dc.w     $fdb2                              
  07654  fdb2                  dc.w     $fdb2                              
  07656  fede                  dc.w     $fede                              
  07658  ff36                  dc.w     $ff36                              

;----------------------------------------------------------------------
; f2_765a   [jump table #61]
;----------------------------------------------------------------------
f2_765a:
  0765a  4e56fd4c              link     a6,#-692                           
  0765e  2f0c                  move.l   a4,-(a7)                           
  07660  426efd4c              clr.w    -$2b4(a6)                          
  07664  306e000c              movea.w  $c(a6),a0                          
  07668  2f08                  move.l   a0,-(a7)                           
  0766a  486eff00              pea      -$100(a6)                          
  0766e  4ead0512              jsr      f4_150e                            
  07672  2f39ffff83a6          move.l   g_7c5a,-(a7)                       
  07678  486efe00              pea      -$200(a6)                          
  0767c  4ead0512              jsr      f4_150e                            
  07680  486efe00              pea      -$200(a6)                          
  07684  2f2e0008              move.l   $8(a6),-(a7)                       
  07688  486eff00              pea      -$100(a6)                          
  0768c  2f3c000001de          move.l   STR_01de,-(a7)                     ; "?"
  07692  a98b                  _ParamText                                  ; $a98b
  07694  42a7                  clr.l    -(a7)                              
  07696  3f3c00fc              move.w   #$fc,-(a7)                         
  0769a  486efd56              pea      -$2aa(a6)                          
  0769e  4878ffff              pea      ($ffff).w                          
  076a2  a97c                  _GetNewDialog                               ; $a97c
  076a4  285f                  movea.l  (a7)+,a4                           
  076a6  2f0c                  move.l   a4,-(a7)                           
  076a8  a915                  _ShowWindow                                 ; $a915
L76aa:
  076aa  42a7                  clr.l    -(a7)                              
  076ac  486efd4c              pea      -$2b4(a6)                          
  076b0  a991                  _ModalDialog                                ; $a991
  076b2  0c6e0001fd4c          cmpi.w   #1,-$2b4(a6)                       
  076b8  66f0                  bne.s    L76aa                              
  076ba  2f0c                  move.l   a4,-(a7)                           
  076bc  a982                  _CloseDialog                                ; $a982
  076be  285f                  movea.l  (a7)+,a4                           
  076c0  4e5e                  unlk     a6                                 
  076c2  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_76c4   [jump table #62]
;----------------------------------------------------------------------
f2_76c4:
  076c4  4e560000              link     a6,#0                              
  076c8  48e70300              movem.l  d6/d7,-(a7)                        
  076cc  3e2e0008              move.w   $8(a6),d7                          
  076d0  3f07                  move.w   d7,-(a7)                           
  076d2  4eba0358              jsr      f2_7a2c                            
  076d6  303003b0ffff8b7c      move.w   (-$7484,za0,d0.w*2),d0             
  076de  548f                  addq.l   #2,a7                              
  076e0  6b000216              bmi.w    L78f8                              
  076e4  044000f5              subi.w   #$f5,d0                            
  076e8  6700020e              beq.w    L78f8                              
  076ec  6a52                  bpl.s    L7740                              
  076ee  0440fff4              subi.w   #$fff4,d0                          
  076f2  670000b6              beq.w    L77aa                              
  076f6  6a22                  bpl.s    L771a                              
  076f8  5a40                  addq.w   #5,d0                              
  076fa  670000ba              beq.w    L77b6                              
  076fe  6a0c                  bpl.s    L770c                              
  07700  0440ff81              subi.w   #$ff81,d0                          
  07704  67000148              beq.w    L784e                              
  07708  600001ee              bra.w    L78f8                              
L770c:
  0770c  5740                  subq.w   #3,d0                              
  0770e  67000082              beq.w    L7792                              
  07712  6a00008a              bpl.w    L779e                              
  07716  600000b6              bra.w    L77ce                              
L771a:
  0771a  5940                  subq.w   #4,d0                              
  0771c  670001da              beq.w    L78f8                              
  07720  6a0e                  bpl.s    L7730                              
  07722  5440                  addq.w   #2,d0                              
  07724  670000cc              beq.w    L77f2                              
  07728  6a0000b0              bpl.w    L77da                              
  0772c  600000b8              bra.w    L77e6                              
L7730:
  07730  5f40                  subq.w   #7,d0                              
  07732  6a00009a              bpl.w    L77ce                              
  07736  5a40                  addq.w   #5,d0                              
  07738  6a0001be              bpl.w    L78f8                              
  0773c  60000084              bra.w    L77c2                              
L7740:
  07740  0440000a              subi.w   #$a,d0                             
  07744  670000fc              beq.w    L7842                              
  07748  6a20                  bpl.s    L776a                              
  0774a  5a40                  addq.w   #5,d0                              
  0774c  670000b0              beq.w    L77fe                              
  07750  6a0a                  bpl.s    L775c                              
  07752  5640                  addq.w   #3,d0                              
  07754  6a0001a2              bpl.w    L78f8                              
  07758  600000ac              bra.w    L7806                              
L775c:
  0775c  5740                  subq.w   #3,d0                              
  0775e  670000fa              beq.w    L785a                              
  07762  6a0000ba              bpl.w    L781e                              
  07766  60000190              bra.w    L78f8                              
L776a:
  0776a  044003ed              subi.w   #$3ed,d0                           
  0776e  67000140              beq.w    L78b0                              
  07772  6a0c                  bpl.s    L7780                              
  07774  0440fff6              subi.w   #$fff6,d0                          
  07778  670000ec              beq.w    L7866                              
  0777c  6000017a              bra.w    L78f8                              
L7780:
  07780  04401a58              subi.w   #$1a58,d0                          
  07784  6a000172              bpl.w    L78f8                              
  07788  5840                  addq.w   #4,d0                              
  0778a  6a000086              bpl.w    L7812                              
  0778e  60000168              bra.w    L78f8                              
L7792:
  07792  3f07                  move.w   d7,-(a7)                           
  07794  4ebaaf84              jsr      f2_271a                            
  07798  548f                  addq.l   #2,a7                              
  0779a  6000015c              bra.w    L78f8                              
L779e:
  0779e  3f07                  move.w   d7,-(a7)                           
  077a0  4ebaadd4              jsr      f2_2576                            
  077a4  548f                  addq.l   #2,a7                              
  077a6  60000150              bra.w    L78f8                              
L77aa:
  077aa  3f07                  move.w   d7,-(a7)                           
  077ac  4ebaaee0              jsr      f2_268e                            
  077b0  548f                  addq.l   #2,a7                              
  077b2  60000144              bra.w    L78f8                              
L77b6:
  077b6  3f07                  move.w   d7,-(a7)                           
  077b8  4ebaa544              jsr      f2_1cfe                            
  077bc  548f                  addq.l   #2,a7                              
  077be  60000138              bra.w    L78f8                              
L77c2:
  077c2  3f07                  move.w   d7,-(a7)                           
  077c4  4ead057a              jsr      f5_2a4e                            
  077c8  548f                  addq.l   #2,a7                              
  077ca  6000012c              bra.w    L78f8                              
L77ce:
  077ce  3f07                  move.w   d7,-(a7)                           
  077d0  4ebaa334              jsr      f2_1b06                            
  077d4  548f                  addq.l   #2,a7                              
  077d6  60000120              bra.w    L78f8                              
L77da:
  077da  3f07                  move.w   d7,-(a7)                           
  077dc  4ebaa5c2              jsr      f2_1da0                            
  077e0  548f                  addq.l   #2,a7                              
  077e2  60000114              bra.w    L78f8                              
L77e6:
  077e6  3f07                  move.w   d7,-(a7)                           
  077e8  4ebaae18              jsr      f2_2602                            
  077ec  548f                  addq.l   #2,a7                              
  077ee  60000108              bra.w    L78f8                              
L77f2:
  077f2  3f07                  move.w   d7,-(a7)                           
  077f4  4ebaa220              jsr      f2_1a16                            
  077f8  548f                  addq.l   #2,a7                              
  077fa  600000fc              bra.w    L78f8                              
L77fe:
  077fe  4ead0442              jsr      f4_47fe                            
  07802  600000f4              bra.w    L78f8                              
L7806:
  07806  3f07                  move.w   d7,-(a7)                           
  07808  4ebaa298              jsr      f2_1aa2                            
  0780c  548f                  addq.l   #2,a7                              
  0780e  600000e8              bra.w    L78f8                              
L7812:
  07812  3f07                  move.w   d7,-(a7)                           
  07814  4ead055a              jsr      f5_1bec                            
  07818  548f                  addq.l   #2,a7                              
  0781a  600000dc              bra.w    L78f8                              
L781e:
  0781e  4a47                  tst.w    d7                                 
  07820  6f10                  ble.s    L7832                              
  07822  3f3c015e              move.w   #$15e,-(a7)                        
  07826  3f07                  move.w   d7,-(a7)                           
  07828  4ead0632              jsr      f6_16da                            
  0782c  588f                  addq.l   #4,a7                              
  0782e  600000c8              bra.w    L78f8                              
L7832:
  07832  3f3c015f              move.w   #$15f,-(a7)                        
  07836  3f07                  move.w   d7,-(a7)                           
  07838  4ead0632              jsr      f6_16da                            
  0783c  588f                  addq.l   #4,a7                              
  0783e  600000b8              bra.w    L78f8                              
L7842:
  07842  3f07                  move.w   d7,-(a7)                           
  07844  4ead062a              jsr      f6_1640                            
  07848  548f                  addq.l   #2,a7                              
  0784a  600000ac              bra.w    L78f8                              
L784e:
  0784e  3f07                  move.w   d7,-(a7)                           
  07850  4ead063a              jsr      f6_17fa                            
  07854  548f                  addq.l   #2,a7                              
  07856  600000a0              bra.w    L78f8                              
L785a:
  0785a  3f07                  move.w   d7,-(a7)                           
  0785c  4ead0642              jsr      f6_1c1a                            
  07860  548f                  addq.l   #2,a7                              
  07862  60000094              bra.w    L78f8                              
L7866:
  07866  7c01                  moveq    #1,d6                              
  07868  603c                  bra.s    L78a6                              
L786a:
  0786a  be7063b0ffff97aa      cmp.w    (-$6856,za0,d6.w*2),d7             
  07872  6630                  bne.s    L78a4                              
  07874  102e000a              move.b   $a(a6),d0                          
  07878  49c0                  extb.l   d0                                 
  0787a  d046                  add.w    d6,d0                              
  0787c  5340                  subq.w   #1,d0                              
  0787e  3f00                  move.w   d0,-(a7)                           
  07880  4ead061a              jsr      f6_109a                            
  07884  3e87                  move.w   d7,(a7)                            
  07886  4eba01a4              jsr      f2_7a2c                            
  0788a  427003b0ffff8b7c      clr.w    (-$7484,za0,d0.w*2)                
  07892  3e87                  move.w   d7,(a7)                            
  07894  4eba0196              jsr      f2_7a2c                            
  07898  427003b0ffff8ba6      clr.w    (-$745a,za0,d0.w*2)                
  078a0  548f                  addq.l   #2,a7                              
  078a2  6054                  bra.s    L78f8                              
L78a4:
  078a4  5246                  addq.w   #1,d6                              
L78a6:
  078a6  bc79ffff8e08          cmp.w    g_71f8,d6                          
  078ac  6fbc                  ble.s    L786a                              
  078ae  6048                  bra.s    L78f8                              
L78b0:
  078b0  7c01                  moveq    #1,d6                              
  078b2  603c                  bra.s    L78f0                              
L78b4:
  078b4  be7063b0ffff97aa      cmp.w    (-$6856,za0,d6.w*2),d7             
  078bc  6630                  bne.s    L78ee                              
  078be  102e000a              move.b   $a(a6),d0                          
  078c2  49c0                  extb.l   d0                                 
  078c4  d046                  add.w    d6,d0                              
  078c6  5340                  subq.w   #1,d0                              
  078c8  3f00                  move.w   d0,-(a7)                           
  078ca  4ead0622              jsr      f6_141e                            
  078ce  3e87                  move.w   d7,(a7)                            
  078d0  4eba015a              jsr      f2_7a2c                            
  078d4  427003b0ffff8b7c      clr.w    (-$7484,za0,d0.w*2)                
  078dc  3e87                  move.w   d7,(a7)                            
  078de  4eba014c              jsr      f2_7a2c                            
  078e2  427003b0ffff8ba6      clr.w    (-$745a,za0,d0.w*2)                
  078ea  548f                  addq.l   #2,a7                              
  078ec  600a                  bra.s    L78f8                              
L78ee:
  078ee  5246                  addq.w   #1,d6                              
L78f0:
  078f0  bc79ffff8e08          cmp.w    g_71f8,d6                          
  078f6  6fbc                  ble.s    L78b4                              
L78f8:
  078f8  4ebacb16              jsr      f2_4410                            
  078fc  4ead05c2              jsr      f5_3984                            
  07900  4cdf00c0              movem.l  (a7)+,d6/d7                        
  07904  4e5e                  unlk     a6                                 
  07906  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_7908   [jump table #63]
;----------------------------------------------------------------------
f2_7908:
  07908  4e56ff52              link     a6,#-174                           
  0790c  2f0c                  move.l   a4,-(a7)                           
  0790e  2f2e0008              move.l   $8(a6),-(a7)                       
  07912  2f3c000001e0          move.l   STR_01e0,-(a7)                     ; "?"
  07918  2f3c000001e2          move.l   STR_01e2,-(a7)                     ; "?"
  0791e  2f3c000001e4          move.l   STR_01e4,-(a7)                     ; "?"
  07924  a98b                  _ParamText                                  ; $a98b
  07926  42a7                  clr.l    -(a7)                              
  07928  3f3c02c8              move.w   #$2c8,-(a7)                        
  0792c  486eff56              pea      -$aa(a6)                           
  07930  4878ffff              pea      ($ffff).w                          
  07934  a97c                  _GetNewDialog                               ; $a97c
  07936  285f                  movea.l  (a7)+,a4                           
  07938  2f0c                  move.l   a4,-(a7)                           
  0793a  a981                  _DrawDialog                                 ; $a981
  0793c  43eeff52              lea      -$ae(a6),a1                        
  07940  307c00b4              movea.w  #$b4,a0                            
  07944  a03b                  _Delay                                      ; $a03b
  07946  2280                  move.l   d0,(a1)                            
  07948  2f0c                  move.l   a4,-(a7)                           
  0794a  a983                  _DisposeDialog                              ; $a983
  0794c  285f                  movea.l  (a7)+,a4                           
  0794e  4e5e                  unlk     a6                                 
  07950  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_7952   [jump table #64]
;----------------------------------------------------------------------
f2_7952:
  07952  4e56ff4e              link     a6,#-178                           
  07956  2f0c                  move.l   a4,-(a7)                           
  07958  426eff4e              clr.w    -$b2(a6)                           
  0795c  2f2e0008              move.l   $8(a6),-(a7)                       
  07960  2f3c000001e6          move.l   STR_01e6,-(a7)                     ; "?"
  07966  2f3c000001e8          move.l   STR_01e8,-(a7)                     ; "?"
  0796c  2f3c000001ea          move.l   STR_01ea,-(a7)                     ; "?"
  07972  a98b                  _ParamText                                  ; $a98b
  07974  42a7                  clr.l    -(a7)                              
  07976  3f3c04ed              move.w   #$4ed,-(a7)                        
  0797a  486eff56              pea      -$aa(a6)                           
  0797e  4878ffff              pea      ($ffff).w                          
  07982  a97c                  _GetNewDialog                               ; $a97c
  07984  285f                  movea.l  (a7)+,a4                           
  07986  2f0c                  move.l   a4,-(a7)                           
  07988  4ead06ba              jsr      f7_161c                            
  0798c  2e8c                  move.l   a4,(a7)                            
  0798e  a981                  _DrawDialog                                 ; $a981
L7990:
  07990  42a7                  clr.l    -(a7)                              
  07992  486eff54              pea      -$ac(a6)                           
  07996  a991                  _ModalDialog                                ; $a991
  07998  4a6eff54              tst.w    -$ac(a6)                           
  0799c  67f2                  beq.s    L7990                              
  0799e  2f0c                  move.l   a4,-(a7)                           
  079a0  a983                  _DisposeDialog                              ; $a983
  079a2  285f                  movea.l  (a7)+,a4                           
  079a4  4e5e                  unlk     a6                                 
  079a6  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_79a8   [jump table #68]
;----------------------------------------------------------------------
f2_79a8:
  079a8  4e560000              link     a6,#0                              
  079ac  48e70300              movem.l  d6/d7,-(a7)                        
  079b0  3e2e0008              move.w   $8(a6),d7                          
  079b4  0c470001              cmpi.w   #1,d7                              
  079b8  6c04                  bge.s    L79be                              
  079ba  7001                  moveq    #1,d0                              
  079bc  6018                  bra.s    L79d6                              
L79be:
  079be  4267                  clr.w    -(a7)                              
  079c0  a861                  _Random                                     ; $a861
  079c2  4eba0068              jsr      f2_7a2c                            
  079c6  3c00                  move.w   d0,d6                              
  079c8  3046                  movea.w  d6,a0                              
  079ca  2008                  move.l   a0,d0                              
  079cc  81c7                  divs.w   d7,d0                              
  079ce  4840                  swap     d0                                 
  079d0  5240                  addq.w   #1,d0                              
  079d2  3e00                  move.w   d0,d7                              
  079d4  3007                  move.w   d7,d0                              
L79d6:
  079d6  4cee00c0fff8          movem.l  -$8(a6),d6/d7                      
  079dc  4e5e                  unlk     a6                                 
  079de  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_79e0
;----------------------------------------------------------------------
f2_79e0:
  079e0  4e560000              link     a6,#0                              
  079e4  2f07                  move.l   d7,-(a7)                           
  079e6  206e0008              movea.l  $8(a6),a0                          
  079ea  7e00                  moveq    #0,d7                              
  079ec  1e10                  move.b   (a0),d7                            
  079ee  3007                  move.w   d7,d0                              
  079f0  2e1f                  move.l   (a7)+,d7                           
  079f2  4e5e                  unlk     a6                                 
  079f4  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_79f6   [jump table #70]
;----------------------------------------------------------------------
f2_79f6:
  079f6  4e56ff00              link     a6,#-256                           
  079fa  306e0008              movea.w  $8(a6),a0                          
  079fe  2f08                  move.l   a0,-(a7)                           
  07a00  486eff00              pea      -$100(a6)                          
  07a04  4ead0512              jsr      f4_150e                            
  07a08  486eff00              pea      -$100(a6)                          
  07a0c  a884                  _DrawString                                 ; $a884
  07a0e  4e5e                  unlk     a6                                 
  07a10  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_7a12
;----------------------------------------------------------------------
f2_7a12:
  07a12  4e56ff00              link     a6,#-256                           
  07a16  2f2e0008              move.l   $8(a6),-(a7)                       
  07a1a  486eff00              pea      -$100(a6)                          
  07a1e  4ead0512              jsr      f4_150e                            
  07a22  486eff00              pea      -$100(a6)                          
  07a26  a884                  _DrawString                                 ; $a884
  07a28  4e5e                  unlk     a6                                 
  07a2a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_7a2c   [jump table #69]
;----------------------------------------------------------------------
f2_7a2c:
  07a2c  4e560000              link     a6,#0                              
  07a30  2f07                  move.l   d7,-(a7)                           
  07a32  3e2e0008              move.w   $8(a6),d7                          
  07a36  4a47                  tst.w    d7                                 
  07a38  6d04                  blt.s    L7a3e                              
  07a3a  3007                  move.w   d7,d0                              
  07a3c  6004                  bra.s    L7a42                              
L7a3e:
  07a3e  3007                  move.w   d7,d0                              
  07a40  4440                  neg.w    d0                                 
L7a42:
  07a42  3e00                  move.w   d0,d7                              
  07a44  3007                  move.w   d7,d0                              
  07a46  2e1f                  move.l   (a7)+,d7                           
  07a48  4e5e                  unlk     a6                                 
  07a4a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_7a4c   [jump table #65]
;----------------------------------------------------------------------
f2_7a4c:
  07a4c  4e56feda              link     a6,#-294                           
  07a50  2f0c                  move.l   a4,-(a7)                           
  07a52  3f3c02bc              move.w   #$2bc,-(a7)                        
  07a56  486efede              pea      -$122(a6)                          
  07a5a  486efeda              pea      -$126(a6)                          
  07a5e  4eba9eee              jsr      f2_194e                            
  07a62  302e0008              move.w   $8(a6),d0                          
  07a66  2eb60520ff0e          move.l   (-$f2,a6,d0.w*4),(a7)              
  07a6c  2f3c0000039c          move.l   STR_039c,-(a7)                     ; "?"
  07a72  2f3c0000039e          move.l   STR_039e,-(a7)                     ; "?"
  07a78  2f3c000003a0          move.l   STR_03a0,-(a7)                     ; "?"
  07a7e  a98b                  _ParamText                                  ; $a98b
  07a80  4297                  clr.l    (a7)                               
  07a82  3f3c04e1              move.w   #$4e1,-(a7)                        
  07a86  486eff56              pea      -$aa(a6)                           
  07a8a  4878ffff              pea      ($ffff).w                          
  07a8e  a97c                  _GetNewDialog                               ; $a97c
  07a90  285f                  movea.l  (a7)+,a4                           
  07a92  2f0c                  move.l   a4,-(a7)                           
  07a94  a915                  _ShowWindow                                 ; $a915
  07a96  2f0c                  move.l   a4,-(a7)                           
  07a98  a981                  _DrawDialog                                 ; $a981
  07a9a  548f                  addq.l   #2,a7                              
L7a9c:
  07a9c  42a7                  clr.l    -(a7)                              
  07a9e  486efedc              pea      -$124(a6)                          
  07aa2  a991                  _ModalDialog                                ; $a991
  07aa4  4a6efedc              tst.w    -$124(a6)                          
  07aa8  67f2                  beq.s    L7a9c                              
  07aaa  2f0c                  move.l   a4,-(a7)                           
  07aac  a983                  _DisposeDialog                              ; $a983
  07aae  3d7c0001fedc          move.w   #1,-$124(a6)                       
  07ab4  6010                  bra.s    L7ac6                              
L7ab6:
  07ab6  302efedc              move.w   -$124(a6),d0                       
  07aba  20760520fede          movea.l  (-$122,a6,d0.w*4),a0               
  07ac0  a01f                  _DisposePtr                                 ; $a01f
  07ac2  526efedc              addq.w   #1,-$124(a6)                       
L7ac6:
  07ac6  302efedc              move.w   -$124(a6),d0                       
  07aca  b06efeda              cmp.w    -$126(a6),d0                       
  07ace  6fe6                  ble.s    L7ab6                              
  07ad0  285f                  movea.l  (a7)+,a4                           
  07ad2  4e5e                  unlk     a6                                 
  07ad4  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_7ad6   [jump table #66]
;----------------------------------------------------------------------
f2_7ad6:
  07ad6  4e56ff86              link     a6,#-122                           
  07ada  48e70308              movem.l  d6/d7/a4,-(a7)                     
  07ade  286e000c              movea.l  $c(a6),a4                          
  07ae2  3e2e0008              move.w   $8(a6),d7                          
  07ae6  0c540004              cmpi.w   #4,(a4)                            
  07aea  6f4e                  ble.s    L7b3a                              
  07aec  3f3c02bc              move.w   #$2bc,-(a7)                        
  07af0  486eff88              pea      -$78(a6)                           
  07af4  486eff86              pea      -$7a(a6)                           
  07af8  4eba9e54              jsr      f2_194e                            
  07afc  302e001a              move.w   $1a(a6),d0                         
  07b00  2eb604ac              move.l   -$54(a6,d0.w*4),(a7)               
  07b04  2f3c000001ec          move.l   STR_01ec,-(a7)                     ; "?"
  07b0a  2f3c000001ee          move.l   STR_01ee,-(a7)                     ; "?"
  07b10  2f3c000001f0          move.l   STR_01f0,-(a7)                     ; "?"
  07b16  a98b                  _ParamText                                  ; $a98b
  07b18  4257                  clr.w    (a7)                               
  07b1a  3f3c04e0              move.w   #$4e0,-(a7)                        
  07b1e  42a7                  clr.l    -(a7)                              
  07b20  a986                  _StopAlert                                  ; $a986
  07b22  3c1f                  move.w   (a7)+,d6                           
  07b24  7c01                  moveq    #1,d6                              
  07b26  588f                  addq.l   #4,a7                              
  07b28  6008                  bra.s    L7b32                              
L7b2a:
  07b2a  20766488              movea.l  -$78(a6,d6.w*4),a0                 
  07b2e  a01f                  _DisposePtr                                 ; $a01f
  07b30  5246                  addq.w   #1,d6                              
L7b32:
  07b32  bc6eff86              cmp.w    -$7a(a6),d6                        
  07b36  6ff2                  ble.s    L7b2a                              
  07b38  6038                  bra.s    L7b72                              
L7b3a:
  07b3a  5254                  addq.w   #1,(a4)                            
  07b3c  3054                  movea.w  (a4),a0                            
  07b3e  d1c8                  adda.l   a0,a0                              
  07b40  d1ee0010              adda.l   $10(a6),a0                         
  07b44  30ae000a              move.w   $a(a6),(a0)                        
  07b48  4aae0014              tst.l    $14(a6)                            
  07b4c  6710                  beq.s    L7b5e                              
  07b4e  3054                  movea.w  (a4),a0                            
  07b50  d1c8                  adda.l   a0,a0                              
  07b52  d1ee0014              adda.l   $14(a6),a0                         
  07b56  30b073b0ffff973a      move.w   (-$68c6,za0,d7.w*2),(a0)           
L7b5e:
  07b5e  427073b0ffff8b7c      clr.w    (-$7484,za0,d7.w*2)                
  07b66  427073b0ffff8ba6      clr.w    (-$745a,za0,d7.w*2)                
  07b6e  4ead05c2              jsr      f5_3984                            
L7b72:
  07b72  4cdf10c0              movem.l  (a7)+,d6/d7/a4                     
  07b76  4e5e                  unlk     a6                                 
  07b78  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_7b7a   [jump table #67]
;----------------------------------------------------------------------
f2_7b7a:
  07b7a  4e56fb54              link     a6,#-1196                          
  07b7e  48e70108              movem.l  d7/a4,-(a7)                        
  07b82  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  07b88  a851                  _SetCursor                                  ; $a851
  07b8a  600001a8              bra.w    L7d34                              
L7b8e:
  07b8e  0cb900001d4cffff8384  cmpi.l   #$1d4c,g_7c7c                      
  07b98  6c0a                  bge.s    L7ba4                              
  07b9a  2039ffff8388          move.l   g_7c78,d0                          
  07ba0  d080                  add.l    d0,d0                              
  07ba2  6022                  bra.s    L7bc6                              
L7ba4:
  07ba4  303c02ee              move.w   #$2ee,d0                           
  07ba8  c1f9ffff8390          muls.w   g_7c70,d0                          
  07bae  323c05dc              move.w   #$5dc,d1                           
  07bb2  c3f9ffff8894          muls.w   g_776c,d1                          
  07bb8  48c1                  ext.l    d1                                 
  07bba  d2b9ffff8384          add.l    g_7c7c,d1                          
  07bc0  3040                  movea.w  d0,a0                              
  07bc2  d288                  add.l    a0,d1                              
  07bc4  2001                  move.l   d1,d0                              
L7bc6:
  07bc6  23c0ffff8384          move.l   d0,g_7c7c                          
  07bcc  5279ffff8390          addq.w   #1,g_7c70                          
  07bd2  7e00                  moveq    #0,d7                              
  07bd4  6018                  bra.s    L7bee                              
L7bd6:
  07bd6  2007                  move.l   d7,d0                              
  07bd8  5480                  addq.l   #2,d0                              
  07bda  3079ffff8390          movea.w  g_7c70,a0                          
  07be0  b088                  cmp.l    a0,d0                              
  07be2  6e08                  bgt.s    L7bec                              
  07be4  52707bb0ffff8e3e      addq.w   #1,(-$71c2,za0,d7.l*2)             
L7bec:
  07bec  5287                  addq.l   #1,d7                              
L7bee:
  07bee  7005                  moveq    #5,d0                              
  07bf0  b087                  cmp.l    d7,d0                              
  07bf2  6ee2                  bgt.s    L7bd6                              
  07bf4  0c790014ffff8390      cmpi.w   #$14,g_7c70                        
  07bfc  6c14                  bge.s    L7c12                              
  07bfe  486efe54              pea      -$1ac(a6)                          
  07c02  3f3c07d5              move.w   #$7d5,-(a7)                        
  07c06  3f39ffff8390          move.w   g_7c70,-(a7)                       
  07c0c  4ead0522              jsr      f4_153c                            
  07c10  600e                  bra.s    L7c20                              
L7c12:
  07c12  486efe54              pea      -$1ac(a6)                          
  07c16  2f3c001407d5          move.l   #$1407d5,-(a7)                     
  07c1c  4ead0522              jsr      f4_153c                            
L7c20:
  07c20  0c790013ffff8390      cmpi.w   #$13,g_7c70                        
  07c28  6c18                  bge.s    L7c42                              
  07c2a  486efd54              pea      -$2ac(a6)                          
  07c2e  3f3c07d5              move.w   #$7d5,-(a7)                        
  07c32  7001                  moveq    #1,d0                              
  07c34  d079ffff8390          add.w    g_7c70,d0                          
  07c3a  3f00                  move.w   d0,-(a7)                           
  07c3c  4ead0522              jsr      f4_153c                            
  07c40  600e                  bra.s    L7c50                              
L7c42:
  07c42  486efd54              pea      -$2ac(a6)                          
  07c46  2f3c001407d5          move.l   #$1407d5,-(a7)                     
  07c4c  4ead0522              jsr      f4_153c                            
L7c50:
  07c50  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  07c56  486efc54              pea      -$3ac(a6)                          
  07c5a  a919                  _GetWTitle                                  ; $a919
  07c5c  2e39ffff8384          move.l   g_7c7c,d7                          
  07c62  9eb9ffff8388          sub.l    g_7c78,d7                          
  07c68  2f07                  move.l   d7,-(a7)                           
  07c6a  486efb54              pea      -$4ac(a6)                          
  07c6e  4ead0512              jsr      f4_150e                            
  07c72  486efc54              pea      -$3ac(a6)                          
  07c76  486efe54              pea      -$1ac(a6)                          
  07c7a  486efb54              pea      -$4ac(a6)                          
  07c7e  486efd54              pea      -$2ac(a6)                          
  07c82  a98b                  _ParamText                                  ; $a98b
  07c84  42a7                  clr.l    -(a7)                              
  07c86  3f3c07d5              move.w   #$7d5,-(a7)                        
  07c8a  486eff54              pea      -$ac(a6)                           
  07c8e  4878ffff              pea      ($ffff).w                          
  07c92  a97c                  _GetNewDialog                               ; $a97c
  07c94  285f                  movea.l  (a7)+,a4                           
  07c96  2f0c                  move.l   a4,-(a7)                           
  07c98  4ead06ba              jsr      f7_161c                            
  07c9c  2e8c                  move.l   a4,(a7)                            
  07c9e  a915                  _ShowWindow                                 ; $a915
  07ca0  2f0c                  move.l   a4,-(a7)                           
  07ca2  a981                  _DrawDialog                                 ; $a981
  07ca4  3f3c5bd2              move.w   #$5bd2,-(a7)                       
  07ca8  4ead030a              jsr      f3_4238                            
  07cac  548f                  addq.l   #2,a7                              
L7cae:
  07cae  42a7                  clr.l    -(a7)                              
  07cb0  486efffe              pea      -$2(a6)                            
  07cb4  a991                  _ModalDialog                                ; $a991
  07cb6  0c6e0001fffe          cmpi.w   #1,-$2(a6)                         
  07cbc  66f0                  bne.s    L7cae                              
  07cbe  2f0c                  move.l   a4,-(a7)                           
  07cc0  a983                  _DisposeDialog                              ; $a983
  07cc2  4ead031a              jsr      f3_4424                            
  07cc6  4ead03c2              jsr      f3_5f7c                            
  07cca  7064                  moveq    #100,d0                            
  07ccc  c1f9ffff8390          muls.w   g_7c70,d0                          
  07cd2  48c0                  ext.l    d0                                 
  07cd4  d1b9ffff83a6          add.l    d0,g_7c5a                          
  07cda  4ebaef2c              jsr      f2_6c08                            
  07cde  4ebaedac              jsr      f2_6a8c                            
  07ce2  4ead074a              jsr      f7_2f40                            
  07ce6  3039ffff8390          move.w   g_7c70,d0                          
  07cec  d179ffff3ad0          add.w    d0,g_c530                          
  07cf2  5279ffff3ad2          addq.w   #1,g_c52e                          
  07cf8  0c79000affff8390      cmpi.w   #$a,g_7c70                         
  07d00  6f12                  ble.s    L7d14                              
  07d02  3039ffff8390          move.w   g_7c70,d0                          
  07d08  d179ffff3ad0          add.w    d0,g_c530                          
  07d0e  5279ffff3ad2          addq.w   #1,g_c52e                          
L7d14:
  07d14  33f9ffff3ad2ffff3d30  move.w   g_c52e,g_c2d0                      
  07d1e  33f9ffff3ad0ffff3d3c  move.w   g_c530,g_c2c4                      
  07d28  4a39ffff8dfb          tst.b    g_7205                             
  07d2e  6604                  bne.s    L7d34                              
  07d30  4ead032a              jsr      f3_44be                            
L7d34:
  07d34  2039ffff8384          move.l   g_7c7c,d0                          
  07d3a  b0b9ffff8388          cmp.l    g_7c78,d0                          
  07d40  6f00fe4c              ble.w    L7b8e                              
  07d44  4cdf1080              movem.l  (a7)+,d7/a4                        
  07d48  4e5e                  unlk     a6                                 
  07d4a  4e75                  rts                                         

;----------------------------------------------------------------------
; f2_7d4c
;----------------------------------------------------------------------
f2_7d4c:
  07d4c  4e56fb54              link     a6,#-1196                          
  07d50  48e70108              movem.l  d7/a4,-(a7)                        
  07d54  0c790012ffff8390      cmpi.w   #$12,g_7c70                        
  07d5c  6c14                  bge.s    L7d72                              
  07d5e  486efe54              pea      -$1ac(a6)                          
  07d62  3f3c07d5              move.w   #$7d5,-(a7)                        
  07d66  3f39ffff8390          move.w   g_7c70,-(a7)                       
  07d6c  4ead0522              jsr      f4_153c                            
  07d70  600e                  bra.s    L7d80                              
L7d72:
  07d72  486efe54              pea      -$1ac(a6)                          
  07d76  2f3c001107d5          move.l   #$1107d5,-(a7)                     
  07d7c  4ead0522              jsr      f4_153c                            
L7d80:
  07d80  486efd54              pea      -$2ac(a6)                          
  07d84  3f3c07d5              move.w   #$7d5,-(a7)                        
  07d88  3f39ffff8390          move.w   g_7c70,-(a7)                       
  07d8e  4ead0522              jsr      f4_153c                            
  07d92  0c790011ffff8390      cmpi.w   #$11,g_7c70                        
  07d9a  6c18                  bge.s    L7db4                              
  07d9c  486efd54              pea      -$2ac(a6)                          
  07da0  3f3c07d5              move.w   #$7d5,-(a7)                        
  07da4  7001                  moveq    #1,d0                              
  07da6  d079ffff8390          add.w    g_7c70,d0                          
  07dac  3f00                  move.w   d0,-(a7)                           
  07dae  4ead0522              jsr      f4_153c                            
  07db2  600e                  bra.s    L7dc2                              
L7db4:
  07db4  486efd54              pea      -$2ac(a6)                          
  07db8  2f3c001107d5          move.l   #$1107d5,-(a7)                     
  07dbe  4ead0522              jsr      f4_153c                            
L7dc2:
  07dc2  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  07dc8  486efc54              pea      -$3ac(a6)                          
  07dcc  a919                  _GetWTitle                                  ; $a919
  07dce  2e39ffff8384          move.l   g_7c7c,d7                          
  07dd4  9eb9ffff8388          sub.l    g_7c78,d7                          
  07dda  2f07                  move.l   d7,-(a7)                           
  07ddc  486efb54              pea      -$4ac(a6)                          
  07de0  4ead0512              jsr      f4_150e                            
  07de4  486efc54              pea      -$3ac(a6)                          
  07de8  486efb54              pea      -$4ac(a6)                          
  07dec  486efd54              pea      -$2ac(a6)                          
  07df0  2f3c000001f2          move.l   STR_01f2,-(a7)                     ; "?"
  07df6  a98b                  _ParamText                                  ; $a98b
  07df8  42a7                  clr.l    -(a7)                              
  07dfa  3f3c07d6              move.w   #$7d6,-(a7)                        
  07dfe  486eff54              pea      -$ac(a6)                           
  07e02  4878ffff              pea      ($ffff).w                          
  07e06  a97c                  _GetNewDialog                               ; $a97c
  07e08  285f                  movea.l  (a7)+,a4                           
  07e0a  2f0c                  move.l   a4,-(a7)                           
  07e0c  4ead06ba              jsr      f7_161c                            
  07e10  2e8c                  move.l   a4,(a7)                            
  07e12  a915                  _ShowWindow                                 ; $a915
L7e14:
  07e14  42a7                  clr.l    -(a7)                              
  07e16  486efffe              pea      -$2(a6)                            
  07e1a  a991                  _ModalDialog                                ; $a991
  07e1c  0c6e0001fffe          cmpi.w   #1,-$2(a6)                         
  07e22  66f0                  bne.s    L7e14                              
  07e24  2f0c                  move.l   a4,-(a7)                           
  07e26  a983                  _DisposeDialog                              ; $a983
  07e28  4cdf1080              movem.l  (a7)+,d7/a4                        
  07e2c  4e5e                  unlk     a6                                 
  07e2e  4e75                  rts                                         
