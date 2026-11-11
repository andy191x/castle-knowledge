; Castle Knowledge 2.6 - CODE segment 3 (31634 bytes)
; Disassembled & annotated. Globals g_XXXX = A5-XXXX; STR_XXXX = STRS literal offset.


;----------------------------------------------------------------------
; f3_0000   [jump table #73]
;----------------------------------------------------------------------
f3_0000:
  00000  4e560000              link     a6,#0                              
  00004  2f07                  move.l   d7,-(a7)                           
  00006  4a2e0008              tst.b    $8(a6)                             
  0000a  6646                  bne.s    L0052                              
  0000c  7e01                  moveq    #1,d7                              
  0000e  603a                  bra.s    L004a                              
L0010:
  00010  4a7073b0ffff8c78      tst.w    (-$7388,za0,d7.w*2)                
  00018  6f2e                  ble.s    L0048                              
  0001a  3039ffff836c          move.w   g_7c94,d0                          
  00020  b07073b0ffff8c24      cmp.w    (-$73dc,za0,d7.w*2),d0             
  00028  661e                  bne.s    L0048                              
  0002a  3039ffff836e          move.w   g_7c92,d0                          
  00030  b07073b0ffff8c4e      cmp.w    (-$73b2,za0,d7.w*2),d0             
  00038  660e                  bne.s    L0048                              
  0003a  2f3c07d00001          move.l   #$7d00001,-(a7)                    
  00040  3f07                  move.w   d7,-(a7)                           
  00042  4eba229c              jsr      f3_22e0                            
  00046  5c8f                  addq.l   #6,a7                              
L0048:
  00048  5247                  addq.w   #1,d7                              
L004a:
  0004a  be79ffff883e          cmp.w    g_77c2,d7                          
  00050  6fbe                  ble.s    L0010                              
L0052:
  00052  2e1f                  move.l   (a7)+,d7                           
  00054  4e5e                  unlk     a6                                 
  00056  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_0058
;----------------------------------------------------------------------
f3_0058:
  00058  4e56fa36              link     a6,#-1482                          
  0005c  48e70308              movem.l  d6/d7/a4,-(a7)                     
  00060  41eefae4              lea      -$51c(a6),a0                       
  00064  43f9ffffa904          lea      g_56fc,a1                          
  0006a  703f                  moveq    #63,d0                             
L006c:
  0006c  20d9                  move.l   (a1)+,(a0)+                        
  0006e  51c8fffc              dbf      d0,L006c                           
  00072  43eefee5              lea      -$11b(a6),a1                       
  00076  7000                  moveq    #0,d0                              
  00078  1039ffffa7aa          move.b   g_5856,d0                          
  0007e  207cffffa7ab          movea.l  #$ffffa7ab,a0                      
  00084  a02e                  _BlockMove                                  ; $a02e
  00086  41eefae5              lea      -$51b(a6),a0                       
  0008a  7000                  moveq    #0,d0                              
  0008c  1039ffffa7aa          move.b   g_5856,d0                          
  00092  43eefee5              lea      -$11b(a6),a1                       
  00096  d2c0                  adda.w   d0,a1                              
  00098  7000                  moveq    #0,d0                              
  0009a  102efae4              move.b   -$51c(a6),d0                       
  0009e  a02e                  _BlockMove                                  ; $a02e
  000a0  102efae4              move.b   -$51c(a6),d0                       
  000a4  d039ffffa7aa          add.b    g_5856,d0                          
  000aa  1d40fee4              move.b   d0,-$11c(a6)                       
  000ae  4267                  clr.w    -(a7)                              
  000b0  3f39ffffa7a2          move.w   g_585e,-(a7)                       
  000b6  2f39ffff9820          move.l   g_67e0,-(a7)                       
  000bc  486efae4              pea      -$51c(a6)                          
  000c0  4227                  clr.b    -(a7)                              
  000c2  a81a                  _HOpenResFile                               ; $a81a
  000c4  3e1f                  move.w   (a7)+,d7                           
  000c6  4267                  clr.w    -(a7)                              
  000c8  a9af                  _ResError                                   ; $a9af
  000ca  3c1f                  move.w   (a7)+,d6                           
  000cc  4a46                  tst.w    d6                                 
  000ce  6714                  beq.s    L00e4                              
  000d0  0c46ffd5              cmpi.w   #$ffd5,d6                          
  000d4  670e                  beq.s    L00e4                              
  000d6  2f3c000001f4          move.l   STR_01f4,-(a7)                     ; "checking registration"
  000dc  3f06                  move.w   d6,-(a7)                           
  000de  4ead06ca              jsr      f7_18ec                            
  000e2  5c8f                  addq.l   #6,a7                              
L00e4:
  000e4  4a47                  tst.w    d7                                 
  000e6  6d24                  blt.s    L010c                              
  000e8  42a7                  clr.l    -(a7)                              
  000ea  2f3c636b7269          move.l   #$636b7269,-(a7)                   
  000f0  3f3c0080              move.w   #$80,-(a7)                         
  000f4  a9a0                  _GetResource                                ; $a9a0
  000f6  285f                  movea.l  (a7)+,a4                           
  000f8  200c                  move.l   a4,d0                              
  000fa  670c                  beq.s    L0108                              
  000fc  13fc0001ffff3b0d      move.b   #1,g_c4f3                          
  00104  2f0c                  move.l   a4,-(a7)                           
  00106  a9a3                  _ReleaseResource                            ; $a9a3
L0108:
  00108  3f07                  move.w   d7,-(a7)                           
  0010a  a99a                  _CloseResFile                               ; $a99a
L010c:
  0010c  4cdf10c0              movem.l  (a7)+,d6/d7/a4                     
  00110  4e5e                  unlk     a6                                 
  00112  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_0114   [jump table #74]
;----------------------------------------------------------------------
f3_0114:
  00114  4e560000              link     a6,#0                              
  00118  48e70700              movem.l  d5/d6/d7,-(a7)                     
  0011c  1e2e0008              move.b   $8(a6),d7                          
  00120  7c00                  moveq    #0,d6                              
  00122  3039ffff83bc          move.w   g_7c44,d0                          
  00128  670005ea              beq.w    L0714                              
  0012c  6b0005e6              bmi.w    L0714                              
  00130  5740                  subq.w   #3,d0                              
  00132  670002fe              beq.w    L0432                              
  00136  6a08                  bpl.s    L0140                              
  00138  5240                  addq.w   #1,d0                              
  0013a  6a000182              bpl.w    L02be                              
  0013e  600a                  bra.s    L014a                              
L0140:
  00140  5540                  subq.w   #2,d0                              
  00142  6a0005d0              bpl.w    L0714                              
  00146  6000045e              bra.w    L05a6                              
L014a:
  0014a  3039ffff8888          move.w   g_7778,d0                          
  00150  72f1                  moveq    #-15,d1                            
  00152  d279ffff836e          add.w    g_7c92,d1                          
  00158  b27003b0ffff8ad4      cmp.w    (-$752c,za0,d0.w*2),d1             
  00160  6614                  bne.s    L0176                              
  00162  70ff                  moveq    #-1,d0                             
  00164  d079ffff836c          add.w    g_7c94,d0                          
  0016a  b079ffff888a          cmp.w    g_7776,d0                          
  00170  6604                  bne.s    L0176                              
  00172  4a07                  tst.b    d7                                 
  00174  662c                  bne.s    L01a2                              
L0176:
  00176  3039ffff8888          move.w   g_7778,d0                          
  0017c  720f                  moveq    #15,d1                             
  0017e  d279ffff836e          add.w    g_7c92,d1                          
  00184  b27003b0ffff8ad4      cmp.w    (-$752c,za0,d0.w*2),d1             
  0018c  6624                  bne.s    L01b2                              
  0018e  70ff                  moveq    #-1,d0                             
  00190  d079ffff836c          add.w    g_7c94,d0                          
  00196  b079ffff888a          cmp.w    g_7776,d0                          
  0019c  6614                  bne.s    L01b2                              
  0019e  4a07                  tst.b    d7                                 
  001a0  6610                  bne.s    L01b2                              
L01a2:
  001a2  1f3c007d              move.b   #$7d,-(a7)                         
  001a6  4ead00d2              jsr      f2_2042                            
  001aa  7c01                  moveq    #1,d6                              
  001ac  548f                  addq.l   #2,a7                              
  001ae  60000564              bra.w    L0714                              
L01b2:
  001b2  3039ffff884c          move.w   g_77b4,d0                          
  001b8  72f1                  moveq    #-15,d1                            
  001ba  d279ffff836e          add.w    g_7c92,d1                          
  001c0  b27003b0ffff8ad4      cmp.w    (-$752c,za0,d0.w*2),d1             
  001c8  6614                  bne.s    L01de                              
  001ca  70ff                  moveq    #-1,d0                             
  001cc  d079ffff836c          add.w    g_7c94,d0                          
  001d2  b079ffff8850          cmp.w    g_77b0,d0                          
  001d8  6604                  bne.s    L01de                              
  001da  4a07                  tst.b    d7                                 
  001dc  662c                  bne.s    L020a                              
L01de:
  001de  3039ffff884c          move.w   g_77b4,d0                          
  001e4  720f                  moveq    #15,d1                             
  001e6  d279ffff836e          add.w    g_7c92,d1                          
  001ec  b27003b0ffff8ad4      cmp.w    (-$752c,za0,d0.w*2),d1             
  001f4  6624                  bne.s    L021a                              
  001f6  70ff                  moveq    #-1,d0                             
  001f8  d079ffff836c          add.w    g_7c94,d0                          
  001fe  b079ffff8850          cmp.w    g_77b0,d0                          
  00204  6614                  bne.s    L021a                              
  00206  4a07                  tst.b    d7                                 
  00208  6610                  bne.s    L021a                              
L020a:
  0020a  1f3c007b              move.b   #$7b,-(a7)                         
  0020e  4ead00d2              jsr      f2_2042                            
  00212  7c01                  moveq    #1,d6                              
  00214  548f                  addq.l   #2,a7                              
  00216  600004fc              bra.w    L0714                              
L021a:
  0021a  7a00                  moveq    #0,d5                              
  0021c  60000094              bra.w    L02b2                              
L0220:
  00220  3039ffff8894          move.w   g_776c,d0                          
  00226  b07053b0ffff3ad4      cmp.w    (-$c52c,za0,d5.w*2),d0             
  0022e  6630                  bne.s    L0260                              
  00230  303053b0ffff784a      move.w   (-$87b6,za0,d5.w*2),d0             
  00238  72f1                  moveq    #-15,d1                            
  0023a  d279ffff836e          add.w    g_7c92,d1                          
  00240  b27003b0ffff8ad4      cmp.w    (-$752c,za0,d0.w*2),d1             
  00248  6616                  bne.s    L0260                              
  0024a  70ff                  moveq    #-1,d0                             
  0024c  d079ffff836c          add.w    g_7c94,d0                          
  00252  b07057b0ffff7862      cmp.w    (-$879e,za0,d5.w*8),d0             
  0025a  6604                  bne.s    L0260                              
  0025c  4a07                  tst.b    d7                                 
  0025e  6640                  bne.s    L02a0                              
L0260:
  00260  3039ffff8894          move.w   g_776c,d0                          
  00266  b07053b0ffff3ad4      cmp.w    (-$c52c,za0,d5.w*2),d0             
  0026e  6640                  bne.s    L02b0                              
  00270  303053b0ffff784a      move.w   (-$87b6,za0,d5.w*2),d0             
  00278  720f                  moveq    #15,d1                             
  0027a  d279ffff836e          add.w    g_7c92,d1                          
  00280  b27003b0ffff8ad4      cmp.w    (-$752c,za0,d0.w*2),d1             
  00288  6626                  bne.s    L02b0                              
  0028a  70ff                  moveq    #-1,d0                             
  0028c  d079ffff836c          add.w    g_7c94,d0                          
  00292  b07057b0ffff7862      cmp.w    (-$879e,za0,d5.w*8),d0             
  0029a  6614                  bne.s    L02b0                              
  0029c  4a07                  tst.b    d7                                 
  0029e  6610                  bne.s    L02b0                              
L02a0:
  002a0  1f3c0024              move.b   #$24,-(a7)                         
  002a4  4ead00d2              jsr      f2_2042                            
  002a8  7c01                  moveq    #1,d6                              
  002aa  548f                  addq.l   #2,a7                              
  002ac  60000466              bra.w    L0714                              
L02b0:
  002b0  5245                  addq.w   #1,d5                              
L02b2:
  002b2  0c450006              cmpi.w   #6,d5                              
  002b6  6d00ff68              blt.w    L0220                              
  002ba  60000458              bra.w    L0714                              
L02be:
  002be  3039ffff8888          move.w   g_7778,d0                          
  002c4  7214                  moveq    #20,d1                             
  002c6  d279ffff836c          add.w    g_7c94,d1                          
  002cc  b27003b0ffff8b52      cmp.w    (-$74ae,za0,d0.w*2),d1             
  002d4  6614                  bne.s    L02ea                              
  002d6  70f1                  moveq    #-15,d0                            
  002d8  d079ffff836e          add.w    g_7c92,d0                          
  002de  b079ffff888c          cmp.w    g_7774,d0                          
  002e4  6604                  bne.s    L02ea                              
  002e6  4a07                  tst.b    d7                                 
  002e8  662c                  bne.s    L0316                              
L02ea:
  002ea  3039ffff8888          move.w   g_7778,d0                          
  002f0  72ec                  moveq    #-20,d1                            
  002f2  d279ffff836c          add.w    g_7c94,d1                          
  002f8  b27003b0ffff8b52      cmp.w    (-$74ae,za0,d0.w*2),d1             
  00300  6624                  bne.s    L0326                              
  00302  70f1                  moveq    #-15,d0                            
  00304  d079ffff836e          add.w    g_7c92,d0                          
  0030a  b079ffff888c          cmp.w    g_7774,d0                          
  00310  6614                  bne.s    L0326                              
  00312  4a07                  tst.b    d7                                 
  00314  6610                  bne.s    L0326                              
L0316:
  00316  1f3c007d              move.b   #$7d,-(a7)                         
  0031a  4ead00d2              jsr      f2_2042                            
  0031e  7c01                  moveq    #1,d6                              
  00320  548f                  addq.l   #2,a7                              
  00322  600003f0              bra.w    L0714                              
L0326:
  00326  3039ffff884c          move.w   g_77b4,d0                          
  0032c  7214                  moveq    #20,d1                             
  0032e  d279ffff836c          add.w    g_7c94,d1                          
  00334  b27003b0ffff8b52      cmp.w    (-$74ae,za0,d0.w*2),d1             
  0033c  6614                  bne.s    L0352                              
  0033e  70f1                  moveq    #-15,d0                            
  00340  d079ffff836e          add.w    g_7c92,d0                          
  00346  b079ffff8852          cmp.w    g_77ae,d0                          
  0034c  6604                  bne.s    L0352                              
  0034e  4a07                  tst.b    d7                                 
  00350  662c                  bne.s    L037e                              
L0352:
  00352  3039ffff884c          move.w   g_77b4,d0                          
  00358  72ec                  moveq    #-20,d1                            
  0035a  d279ffff836c          add.w    g_7c94,d1                          
  00360  b27003b0ffff8b52      cmp.w    (-$74ae,za0,d0.w*2),d1             
  00368  6624                  bne.s    L038e                              
  0036a  70f1                  moveq    #-15,d0                            
  0036c  d079ffff836e          add.w    g_7c92,d0                          
  00372  b079ffff8852          cmp.w    g_77ae,d0                          
  00378  6614                  bne.s    L038e                              
  0037a  4a07                  tst.b    d7                                 
  0037c  6610                  bne.s    L038e                              
L037e:
  0037e  1f3c007b              move.b   #$7b,-(a7)                         
  00382  4ead00d2              jsr      f2_2042                            
  00386  7c01                  moveq    #1,d6                              
  00388  548f                  addq.l   #2,a7                              
  0038a  60000388              bra.w    L0714                              
L038e:
  0038e  7a00                  moveq    #0,d5                              
  00390  60000094              bra.w    L0426                              
L0394:
  00394  3039ffff8894          move.w   g_776c,d0                          
  0039a  b07053b0ffff3ad4      cmp.w    (-$c52c,za0,d5.w*2),d0             
  003a2  6630                  bne.s    L03d4                              
  003a4  303053b0ffff784a      move.w   (-$87b6,za0,d5.w*2),d0             
  003ac  7214                  moveq    #20,d1                             
  003ae  d279ffff836c          add.w    g_7c94,d1                          
  003b4  b27003b0ffff8b52      cmp.w    (-$74ae,za0,d0.w*2),d1             
  003bc  6616                  bne.s    L03d4                              
  003be  70f1                  moveq    #-15,d0                            
  003c0  d079ffff836e          add.w    g_7c92,d0                          
  003c6  b07057b0ffff7864      cmp.w    (-$879c,za0,d5.w*8),d0             
  003ce  6604                  bne.s    L03d4                              
  003d0  4a07                  tst.b    d7                                 
  003d2  6640                  bne.s    L0414                              
L03d4:
  003d4  3039ffff8894          move.w   g_776c,d0                          
  003da  b07053b0ffff3ad4      cmp.w    (-$c52c,za0,d5.w*2),d0             
  003e2  6640                  bne.s    L0424                              
  003e4  303053b0ffff784a      move.w   (-$87b6,za0,d5.w*2),d0             
  003ec  72ec                  moveq    #-20,d1                            
  003ee  d279ffff836c          add.w    g_7c94,d1                          
  003f4  b27003b0ffff8b52      cmp.w    (-$74ae,za0,d0.w*2),d1             
  003fc  6626                  bne.s    L0424                              
  003fe  70f1                  moveq    #-15,d0                            
  00400  d079ffff836e          add.w    g_7c92,d0                          
  00406  b07057b0ffff7864      cmp.w    (-$879c,za0,d5.w*8),d0             
  0040e  6614                  bne.s    L0424                              
  00410  4a07                  tst.b    d7                                 
  00412  6610                  bne.s    L0424                              
L0414:
  00414  1f3c0024              move.b   #$24,-(a7)                         
  00418  4ead00d2              jsr      f2_2042                            
  0041c  7c01                  moveq    #1,d6                              
  0041e  548f                  addq.l   #2,a7                              
  00420  600002f2              bra.w    L0714                              
L0424:
  00424  5245                  addq.w   #1,d5                              
L0426:
  00426  0c450006              cmpi.w   #6,d5                              
  0042a  6d00ff68              blt.w    L0394                              
  0042e  600002e4              bra.w    L0714                              
L0432:
  00432  3039ffff8888          move.w   g_7778,d0                          
  00438  7206                  moveq    #6,d1                              
  0043a  d279ffff836e          add.w    g_7c92,d1                          
  00440  b27003b0ffff8b28      cmp.w    (-$74d8,za0,d0.w*2),d1             
  00448  6614                  bne.s    L045e                              
  0044a  70ff                  moveq    #-1,d0                             
  0044c  d079ffff836c          add.w    g_7c94,d0                          
  00452  b079ffff888e          cmp.w    g_7772,d0                          
  00458  6604                  bne.s    L045e                              
  0045a  4a07                  tst.b    d7                                 
  0045c  662c                  bne.s    L048a                              
L045e:
  0045e  3039ffff8888          move.w   g_7778,d0                          
  00464  72fa                  moveq    #-6,d1                             
  00466  d279ffff836e          add.w    g_7c92,d1                          
  0046c  b27003b0ffff8b28      cmp.w    (-$74d8,za0,d0.w*2),d1             
  00474  6624                  bne.s    L049a                              
  00476  70ff                  moveq    #-1,d0                             
  00478  d079ffff836c          add.w    g_7c94,d0                          
  0047e  b079ffff888e          cmp.w    g_7772,d0                          
  00484  6614                  bne.s    L049a                              
  00486  4a07                  tst.b    d7                                 
  00488  6610                  bne.s    L049a                              
L048a:
  0048a  1f3c007d              move.b   #$7d,-(a7)                         
  0048e  4ead00d2              jsr      f2_2042                            
  00492  7c01                  moveq    #1,d6                              
  00494  548f                  addq.l   #2,a7                              
  00496  6000027c              bra.w    L0714                              
L049a:
  0049a  3039ffff884c          move.w   g_77b4,d0                          
  004a0  7206                  moveq    #6,d1                              
  004a2  d279ffff836e          add.w    g_7c92,d1                          
  004a8  b27003b0ffff8b28      cmp.w    (-$74d8,za0,d0.w*2),d1             
  004b0  6614                  bne.s    L04c6                              
  004b2  70ff                  moveq    #-1,d0                             
  004b4  d079ffff836c          add.w    g_7c94,d0                          
  004ba  b079ffff8854          cmp.w    g_77ac,d0                          
  004c0  6604                  bne.s    L04c6                              
  004c2  4a07                  tst.b    d7                                 
  004c4  662c                  bne.s    L04f2                              
L04c6:
  004c6  3039ffff884c          move.w   g_77b4,d0                          
  004cc  72fa                  moveq    #-6,d1                             
  004ce  d279ffff836e          add.w    g_7c92,d1                          
  004d4  b27003b0ffff8b28      cmp.w    (-$74d8,za0,d0.w*2),d1             
  004dc  6624                  bne.s    L0502                              
  004de  70ff                  moveq    #-1,d0                             
  004e0  d079ffff836c          add.w    g_7c94,d0                          
  004e6  b079ffff8854          cmp.w    g_77ac,d0                          
  004ec  6614                  bne.s    L0502                              
  004ee  4a07                  tst.b    d7                                 
  004f0  6610                  bne.s    L0502                              
L04f2:
  004f2  1f3c007b              move.b   #$7b,-(a7)                         
  004f6  4ead00d2              jsr      f2_2042                            
  004fa  7c01                  moveq    #1,d6                              
  004fc  548f                  addq.l   #2,a7                              
  004fe  60000214              bra.w    L0714                              
L0502:
  00502  7a00                  moveq    #0,d5                              
  00504  60000094              bra.w    L059a                              
L0508:
  00508  3039ffff8894          move.w   g_776c,d0                          
  0050e  b07053b0ffff3ad4      cmp.w    (-$c52c,za0,d5.w*2),d0             
  00516  6630                  bne.s    L0548                              
  00518  303053b0ffff784a      move.w   (-$87b6,za0,d5.w*2),d0             
  00520  7206                  moveq    #6,d1                              
  00522  d279ffff836e          add.w    g_7c92,d1                          
  00528  b27003b0ffff8b28      cmp.w    (-$74d8,za0,d0.w*2),d1             
  00530  6616                  bne.s    L0548                              
  00532  70ff                  moveq    #-1,d0                             
  00534  d079ffff836c          add.w    g_7c94,d0                          
  0053a  b07057b0ffff7866      cmp.w    (-$879a,za0,d5.w*8),d0             
  00542  6604                  bne.s    L0548                              
  00544  4a07                  tst.b    d7                                 
  00546  6640                  bne.s    L0588                              
L0548:
  00548  3039ffff8894          move.w   g_776c,d0                          
  0054e  b07053b0ffff3ad4      cmp.w    (-$c52c,za0,d5.w*2),d0             
  00556  6640                  bne.s    L0598                              
  00558  303053b0ffff784a      move.w   (-$87b6,za0,d5.w*2),d0             
  00560  72fa                  moveq    #-6,d1                             
  00562  d279ffff836e          add.w    g_7c92,d1                          
  00568  b27003b0ffff8b28      cmp.w    (-$74d8,za0,d0.w*2),d1             
  00570  6626                  bne.s    L0598                              
  00572  70ff                  moveq    #-1,d0                             
  00574  d079ffff836c          add.w    g_7c94,d0                          
  0057a  b07057b0ffff7866      cmp.w    (-$879a,za0,d5.w*8),d0             
  00582  6614                  bne.s    L0598                              
  00584  4a07                  tst.b    d7                                 
  00586  6610                  bne.s    L0598                              
L0588:
  00588  1f3c0024              move.b   #$24,-(a7)                         
  0058c  4ead00d2              jsr      f2_2042                            
  00590  7c01                  moveq    #1,d6                              
  00592  548f                  addq.l   #2,a7                              
  00594  6000017e              bra.w    L0714                              
L0598:
  00598  5245                  addq.w   #1,d5                              
L059a:
  0059a  0c450006              cmpi.w   #6,d5                              
  0059e  6d00ff68              blt.w    L0508                              
  005a2  60000170              bra.w    L0714                              
L05a6:
  005a6  3039ffff8888          move.w   g_7778,d0                          
  005ac  72ff                  moveq    #-1,d1                             
  005ae  d279ffff836c          add.w    g_7c94,d1                          
  005b4  b27003b0ffff8afe      cmp.w    (-$7502,za0,d0.w*2),d1             
  005bc  6614                  bne.s    L05d2                              
  005be  70f1                  moveq    #-15,d0                            
  005c0  d079ffff836e          add.w    g_7c92,d0                          
  005c6  b079ffff8890          cmp.w    g_7770,d0                          
  005cc  6604                  bne.s    L05d2                              
  005ce  4a07                  tst.b    d7                                 
  005d0  662c                  bne.s    L05fe                              
L05d2:
  005d2  3039ffff8888          move.w   g_7778,d0                          
  005d8  7201                  moveq    #1,d1                              
  005da  d279ffff836c          add.w    g_7c94,d1                          
  005e0  b27003b0ffff8afe      cmp.w    (-$7502,za0,d0.w*2),d1             
  005e8  6624                  bne.s    L060e                              
  005ea  70f1                  moveq    #-15,d0                            
  005ec  d079ffff836e          add.w    g_7c92,d0                          
  005f2  b079ffff8890          cmp.w    g_7770,d0                          
  005f8  6614                  bne.s    L060e                              
  005fa  4a07                  tst.b    d7                                 
  005fc  6610                  bne.s    L060e                              
L05fe:
  005fe  1f3c007d              move.b   #$7d,-(a7)                         
  00602  4ead00d2              jsr      f2_2042                            
  00606  7c01                  moveq    #1,d6                              
  00608  548f                  addq.l   #2,a7                              
  0060a  60000108              bra.w    L0714                              
L060e:
  0060e  3039ffff884c          move.w   g_77b4,d0                          
  00614  72ff                  moveq    #-1,d1                             
  00616  d279ffff836c          add.w    g_7c94,d1                          
  0061c  b27003b0ffff8afe      cmp.w    (-$7502,za0,d0.w*2),d1             
  00624  6614                  bne.s    L063a                              
  00626  70f1                  moveq    #-15,d0                            
  00628  d079ffff836e          add.w    g_7c92,d0                          
  0062e  b079ffff8856          cmp.w    g_77aa,d0                          
  00634  6604                  bne.s    L063a                              
  00636  4a07                  tst.b    d7                                 
  00638  662c                  bne.s    L0666                              
L063a:
  0063a  3039ffff884c          move.w   g_77b4,d0                          
  00640  7201                  moveq    #1,d1                              
  00642  d279ffff836c          add.w    g_7c94,d1                          
  00648  b27003b0ffff8afe      cmp.w    (-$7502,za0,d0.w*2),d1             
  00650  6624                  bne.s    L0676                              
  00652  70f1                  moveq    #-15,d0                            
  00654  d079ffff836e          add.w    g_7c92,d0                          
  0065a  b079ffff8856          cmp.w    g_77aa,d0                          
  00660  6614                  bne.s    L0676                              
  00662  4a07                  tst.b    d7                                 
  00664  6610                  bne.s    L0676                              
L0666:
  00666  1f3c007b              move.b   #$7b,-(a7)                         
  0066a  4ead00d2              jsr      f2_2042                            
  0066e  7c01                  moveq    #1,d6                              
  00670  548f                  addq.l   #2,a7                              
  00672  600000a0              bra.w    L0714                              
L0676:
  00676  7a00                  moveq    #0,d5                              
  00678  60000092              bra.w    L070c                              
L067c:
  0067c  3039ffff8894          move.w   g_776c,d0                          
  00682  b07053b0ffff3ad4      cmp.w    (-$c52c,za0,d5.w*2),d0             
  0068a  6630                  bne.s    L06bc                              
  0068c  303053b0ffff784a      move.w   (-$87b6,za0,d5.w*2),d0             
  00694  72ff                  moveq    #-1,d1                             
  00696  d279ffff836c          add.w    g_7c94,d1                          
  0069c  b27003b0ffff8afe      cmp.w    (-$7502,za0,d0.w*2),d1             
  006a4  6616                  bne.s    L06bc                              
  006a6  70f1                  moveq    #-15,d0                            
  006a8  d079ffff836e          add.w    g_7c92,d0                          
  006ae  b07057b0ffff7868      cmp.w    (-$8798,za0,d5.w*8),d0             
  006b6  6604                  bne.s    L06bc                              
  006b8  4a07                  tst.b    d7                                 
  006ba  6640                  bne.s    L06fc                              
L06bc:
  006bc  3039ffff8894          move.w   g_776c,d0                          
  006c2  b07053b0ffff3ad4      cmp.w    (-$c52c,za0,d5.w*2),d0             
  006ca  663e                  bne.s    L070a                              
  006cc  303053b0ffff784a      move.w   (-$87b6,za0,d5.w*2),d0             
  006d4  7201                  moveq    #1,d1                              
  006d6  d279ffff836c          add.w    g_7c94,d1                          
  006dc  b27003b0ffff8afe      cmp.w    (-$7502,za0,d0.w*2),d1             
  006e4  6624                  bne.s    L070a                              
  006e6  70f1                  moveq    #-15,d0                            
  006e8  d079ffff836e          add.w    g_7c92,d0                          
  006ee  b07057b0ffff7868      cmp.w    (-$8798,za0,d5.w*8),d0             
  006f6  6612                  bne.s    L070a                              
  006f8  4a07                  tst.b    d7                                 
  006fa  670e                  beq.s    L070a                              
L06fc:
  006fc  1f3c0024              move.b   #$24,-(a7)                         
  00700  4ead00d2              jsr      f2_2042                            
  00704  7c01                  moveq    #1,d6                              
  00706  548f                  addq.l   #2,a7                              
  00708  600a                  bra.s    L0714                              
L070a:
  0070a  5245                  addq.w   #1,d5                              
L070c:
  0070c  0c450006              cmpi.w   #6,d5                              
  00710  6d00ff6a              blt.w    L067c                              
L0714:
  00714  1006                  move.b   d6,d0                              
  00716  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  0071a  4e5e                  unlk     a6                                 
  0071c  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_071e   [jump table #75]
;----------------------------------------------------------------------
f3_071e:
  0071e  4e560000              link     a6,#0                              
  00722  4ead03e2              jsr      f4_1750                            
  00726  3039ffff883e          move.w   g_77c2,d0                          
  0072c  b079ffff3ae0          cmp.w    g_c520,d0                          
  00732  6f06                  ble.s    L073a                              
  00734  5379ffff883e          subq.w   #1,g_77c2                          
L073a:
  0073a  4ead03ea              jsr      f4_1db6                            
  0073e  4ead0472              jsr      f4_5d44                            
  00742  4e5e                  unlk     a6                                 
  00744  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_0746   [jump table #77]
;----------------------------------------------------------------------
f3_0746:
  00746  4e56fff8              link     a6,#-8                             
  0074a  48e70038              movem.l  a2/a3/a4,-(a7)                     
  0074e  266e000c              movea.l  $c(a6),a3                          
  00752  286e0010              movea.l  $10(a6),a4                         
  00756  2d6c0010fff8          move.l   $10(a4),-$8(a6)                    
  0075c  2d6c0014fffc          move.l   $14(a4),-$4(a6)                    
  00762  246b0002              movea.l  $2(a3),a2                          
  00766  4ead0192              jsr      f2_648e                            
  0076a  0c530003              cmpi.w   #3,(a3)                            
  0076e  662a                  bne.s    L079a                              
  00770  202b0002              move.l   $2(a3),d0                          
  00774  ecc00018              bfclr    d0{0:24}                           
  00778  5780                  subq.l   #3,d0                              
  0077a  670e                  beq.s    L078a                              
  0077c  202b0002              move.l   $2(a3),d0                          
  00780  ecc00018              bfclr    d0{0:24}                           
  00784  720d                  moveq    #13,d1                             
  00786  b280                  cmp.l    d0,d1                              
  00788  6610                  bne.s    L079a                              
L078a:
  0078a  206e0008              movea.l  $8(a6),a0                          
  0078e  30bc0001              move.w   #1,(a0)                            
  00792  1d7c00010014          move.b   #1,$14(a6)                         
  00798  6022                  bra.s    L07bc                              
L079a:
  0079a  0c530006              cmpi.w   #6,(a3)                            
  0079e  6618                  bne.s    L07b8                              
  007a0  b9ca                  cmpa.l   a2,a4                              
  007a2  6614                  bne.s    L07b8                              
  007a4  206e0008              movea.l  $8(a6),a0                          
  007a8  30bc0014              move.w   #$14,(a0)                          
  007ac  2f0c                  move.l   a4,-(a7)                           
  007ae  a981                  _DrawDialog                                 ; $a981
  007b0  1d7c00010014          move.b   #1,$14(a6)                         
  007b6  6004                  bra.s    L07bc                              
L07b8:
  007b8  422e0014              clr.b    $14(a6)                            
L07bc:
  007bc  4cdf1c00              movem.l  (a7)+,a2/a3/a4                     
  007c0  4e5e                  unlk     a6                                 
  007c2  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f3_07c6   [jump table #76]
;----------------------------------------------------------------------
f3_07c6:
  007c6  4e56fe34              link     a6,#-460                           
  007ca  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  007ce  7805                  moveq    #5,d4                              
  007d0  c9f9ffff8894          muls.w   g_776c,d4                          
  007d6  7600                  moveq    #0,d3                              
  007d8  486eff3c              pea      -$c4(a6)                           
  007dc  a874                  _GetPort                                    ; $a874
  007de  4a2e0008              tst.b    $8(a6)                             
  007e2  6722                  beq.s    L0806                              
  007e4  303c0276              move.w   #$276,d0                           
  007e8  c1ee000c              muls.w   $c(a6),d0                          
  007ec  721e                  moveq    #30,d1                             
  007ee  c3ee000e              muls.w   $e(a6),d1                          
  007f2  0680ffff7892          addi.l   #$ffff7892,d0                      
  007f8  d081                  add.l    d1,d0                              
  007fa  2040                  movea.l  d0,a0                              
  007fc  3e280002              move.w   $2(a0),d7                          
  00800  06470467              addi.w   #$467,d7                           
  00804  6010                  bra.s    L0816                              
L0806:
  00806  3f3c0064              move.w   #$64,-(a7)                         
  0080a  4ead0242              jsr      f2_79a8                            
  0080e  06400467              addi.w   #$467,d0                           
  00812  3e00                  move.w   d0,d7                              
  00814  548f                  addq.l   #2,a7                              
L0816:
  00816  0c470497              cmpi.w   #$497,d7                           
  0081a  6602                  bne.s    L081e                              
  0081c  5247                  addq.w   #1,d7                              
L081e:
  0081e  2f3075b0ffff58ac      move.l   (-$a754,za0,d7.w*4),-(a7)          
  00826  2f3c0000020a          move.l   STR_020a,-(a7)                     ; "?"
  0082c  2f3c0000020c          move.l   STR_020c,-(a7)                     ; "?"
  00832  2f3c0000020e          move.l   STR_020e,-(a7)                     ; "?"
  00838  a98b                  _ParamText                                  ; $a98b
  0083a  42a7                  clr.l    -(a7)                              
  0083c  3f3c05e6              move.w   #$5e6,-(a7)                        
  00840  486eff56              pea      -$aa(a6)                           
  00844  4878ffff              pea      ($ffff).w                          
  00848  a97c                  _GetNewDialog                               ; $a97c
  0084a  285f                  movea.l  (a7)+,a4                           
  0084c  2f0c                  move.l   a4,-(a7)                           
  0084e  4ead06ba              jsr      f7_161c                            
  00852  2e8c                  move.l   a4,(a7)                            
  00854  a915                  _ShowWindow                                 ; $a915
  00856  2f0c                  move.l   a4,-(a7)                           
  00858  a873                  _SetPort                                    ; $a873
  0085a  486eff48              pea      -$b8(a6)                           
  0085e  2f3c00280032          move.l   #$280032,-(a7)                     
  00864  2f3c00480052          move.l   #$480052,-(a7)                     
  0086a  a8a7                  _SetRect                                    ; $a8a7
  0086c  4a79ffff83b6          tst.w    g_7c4a                             
  00872  6614                  bne.s    L0888                              
  00874  7005                  moveq    #5,d0                              
  00876  c1f9ffff8894          muls.w   g_776c,d0                          
  0087c  33c0ffff8c78          move.w   d0,g_7388                          
  00882  33c0ffff83b6          move.w   d0,g_7c4a                          
L0888:
  00888  4a2e0008              tst.b    $8(a6)                             
  0088c  671c                  beq.s    L08aa                              
  0088e  303c0276              move.w   #$276,d0                           
  00892  c1ee000c              muls.w   $c(a6),d0                          
  00896  721e                  moveq    #30,d1                             
  00898  c3ee000e              muls.w   $e(a6),d1                          
  0089c  0680ffff7892          addi.l   #$ffff7892,d0                      
  008a2  d081                  add.l    d1,d0                              
  008a4  2040                  movea.l  d0,a0                              
  008a6  3a10                  move.w   (a0),d5                            
  008a8  601c                  bra.s    L08c6                              
L08aa:
  008aa  3f39ffff83b6          move.w   g_7c4a,-(a7)                       
  008b0  4ead0242              jsr      f2_79a8                            
  008b4  3a00                  move.w   d0,d5                              
  008b6  0c450064              cmpi.w   #$64,d5                            
  008ba  548f                  addq.l   #2,a7                              
  008bc  6f04                  ble.s    L08c2                              
  008be  7064                  moveq    #100,d0                            
  008c0  6002                  bra.s    L08c4                              
L08c2:
  008c2  3005                  move.w   d5,d0                              
L08c4:
  008c4  3a00                  move.w   d0,d5                              
L08c6:
  008c6  7c00                  moveq    #0,d6                              
  008c8  6038                  bra.s    L0902                              
L08ca:
  008ca  3046                  movea.w  d6,a0                              
  008cc  2008                  move.l   a0,d0                              
  008ce  81fc000a              divs.w   #$a,d0                             
  008d2  4840                  swap     d0                                 
  008d4  4a40                  tst.w    d0                                 
  008d6  6612                  bne.s    L08ea                              
  008d8  4a46                  tst.w    d6                                 
  008da  6f0e                  ble.s    L08ea                              
  008dc  486eff48              pea      -$b8(a6)                           
  008e0  2f3c0024febc          move.l   #$24febc,-(a7)                     
  008e6  a8a8                  _OffsetRect                                 ; $a8a8
  008e8  600a                  bra.s    L08f4                              
L08ea:
  008ea  486eff48              pea      -$b8(a6)                           
  008ee  48780024              pea      ($24).w                            
  008f2  a8a8                  _OffsetRect                                 ; $a8a8
L08f4:
  008f4  3f07                  move.w   d7,-(a7)                           
  008f6  486eff48              pea      -$b8(a6)                           
  008fa  4ead06d2              jsr      f7_1a72                            
  008fe  5c8f                  addq.l   #6,a7                              
  00900  5246                  addq.w   #1,d6                              
L0902:
  00902  ba46                  cmp.w    d6,d5                              
  00904  6ec4                  bgt.s    L08ca                              
L0906:
  00906  486d028a              pea      f3_0746                            
  0090a  486eff52              pea      -$ae(a6)                           
  0090e  a991                  _ModalDialog                                ; $a991
  00910  302eff52              move.w   -$ae(a6),d0                        
  00914  670000bc              beq.w    L09d2                              
  00918  6b0000b8              bmi.w    L09d2                              
  0091c  04400014              subi.w   #$14,d0                            
  00920  6756                  beq.s    L0978                              
  00922  6a0000ae              bpl.w    L09d2                              
  00926  0440ffee              subi.w   #$ffee,d0                          
  0092a  6a0000a6              bpl.w    L09d2                              
  0092e  2f0c                  move.l   a4,-(a7)                           
  00930  3f3c0003              move.w   #3,-(a7)                           
  00934  486eff50              pea      -$b0(a6)                           
  00938  486eff38              pea      -$c8(a6)                           
  0093c  486eff40              pea      -$c0(a6)                           
  00940  a98d                  _GetDialogItem                              ; $a98d
  00942  2f2eff38              move.l   -$c8(a6),-(a7)                     
  00946  486efe38              pea      -$1c8(a6)                          
  0094a  a990                  _GetDialogItemText                          ; $a990
  0094c  486efe38              pea      -$1c8(a6)                          
  00950  486efe34              pea      -$1cc(a6)                          
  00954  4ead050a              jsr      f4_14fa                            
  00958  3045                  movea.w  d5,a0                              
  0095a  b1eefe34              cmpa.l   -$1cc(a6),a0                       
  0095e  6714                  beq.s    L0974                              
  00960  3f3c0001              move.w   #1,-(a7)                           
  00964  a9c8                  _SysBeep                                    ; $a9c8
  00966  2f2eff38              move.l   -$c8(a6),-(a7)                     
  0096a  2f3c00000210          move.l   STR_0210,-(a7)                     ; "?"
  00970  a98f                  _SetDialogItemText                          ; $a98f
  00972  605e                  bra.s    L09d2                              
L0974:
  00974  7601                  moveq    #1,d3                              
  00976  605a                  bra.s    L09d2                              
L0978:
  00978  2f0c                  move.l   a4,-(a7)                           
  0097a  a922                  _BeginUpdate                                ; $a922
  0097c  486eff48              pea      -$b8(a6)                           
  00980  2f3c00280032          move.l   #$280032,-(a7)                     
  00986  2f3c00480052          move.l   #$480052,-(a7)                     
  0098c  a8a7                  _SetRect                                    ; $a8a7
  0098e  7c00                  moveq    #0,d6                              
  00990  6038                  bra.s    L09ca                              
L0992:
  00992  3046                  movea.w  d6,a0                              
  00994  2008                  move.l   a0,d0                              
  00996  81fc000a              divs.w   #$a,d0                             
  0099a  4840                  swap     d0                                 
  0099c  4a40                  tst.w    d0                                 
  0099e  6612                  bne.s    L09b2                              
  009a0  4a46                  tst.w    d6                                 
  009a2  6f0e                  ble.s    L09b2                              
  009a4  486eff48              pea      -$b8(a6)                           
  009a8  2f3c0024febc          move.l   #$24febc,-(a7)                     
  009ae  a8a8                  _OffsetRect                                 ; $a8a8
  009b0  600a                  bra.s    L09bc                              
L09b2:
  009b2  486eff48              pea      -$b8(a6)                           
  009b6  48780024              pea      ($24).w                            
  009ba  a8a8                  _OffsetRect                                 ; $a8a8
L09bc:
  009bc  3f07                  move.w   d7,-(a7)                           
  009be  486eff48              pea      -$b8(a6)                           
  009c2  4ead06d2              jsr      f7_1a72                            
  009c6  5c8f                  addq.l   #6,a7                              
  009c8  5246                  addq.w   #1,d6                              
L09ca:
  009ca  ba46                  cmp.w    d6,d5                              
  009cc  6ec4                  bgt.s    L0992                              
  009ce  2f0c                  move.l   a4,-(a7)                           
  009d0  a923                  _EndUpdate                                  ; $a923
L09d2:
  009d2  0c6e0002ff52          cmpi.w   #2,-$ae(a6)                        
  009d8  6e00ff2c              bgt.w    L0906                              
  009dc  4a03                  tst.b    d3                                 
  009de  660a                  bne.s    L09ea                              
  009e0  0c6e0001ff52          cmpi.w   #1,-$ae(a6)                        
  009e6  6700ff1e              beq.w    L0906                              
L09ea:
  009ea  2f0c                  move.l   a4,-(a7)                           
  009ec  a983                  _DisposeDialog                              ; $a983
  009ee  1003                  move.b   d3,d0                              
  009f0  6006                  bra.s    L09f8                              
  009f2  2f2eff3c              move.l   -$c4(a6),-(a7)                     
  009f6  a873                  _SetPort                                    ; $a873
L09f8:
  009f8  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  009fc  4e5e                  unlk     a6                                 
  009fe  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_0a00   [jump table #78]
;----------------------------------------------------------------------
f3_0a00:
  00a00  4e56fffe              link     a6,#-2                             
  00a04  4eba2e2e              jsr      f3_3834                            
  00a08  33fc0007ffff8370      move.w   #7,g_7c90                          
  00a10  33fc0007ffff8372      move.w   #7,g_7c8e                          
  00a18  33fc0010ffff8378      move.w   #$10,g_7c88                        
  00a20  33fc0010ffff8376      move.w   #$10,g_7c8a                        
  00a28  33fc000effff8382      move.w   #$e,g_7c7e                         
  00a30  33fc0010ffff837c      move.w   #$10,g_7c84                        
  00a38  33fc0001ffff8390      move.w   #1,g_7c70                          
  00a40  42b9ffff8388          clr.l    g_7c78                             
  00a46  23f9ffff69b8ffff8398  move.l   g_9648,g_7c68                      
  00a50  33f9ffff3aeaffff8374  move.w   g_c516,g_7c8c                      
  00a5a  33fc0004ffff83a0      move.w   #4,g_7c60                          
  00a62  33f9ffff8374ffff83a4  move.w   g_7c8c,g_7c5c                      
  00a6c  23f9ffff6a04ffff839c  move.l   g_95fc,g_7c64                      
  00a76  33fc0003ffff83a2      move.w   #3,g_7c5e                          
  00a7e  4279ffff8392          clr.w    g_7c6e                             
  00a84  4239ffff3af3          clr.b    g_c50d                             
  00a8a  42b9ffff83a6          clr.l    g_7c5a                             
  00a90  4ead01d2              jsr      f2_6b9e                            
  00a94  33fc0001ffff8894      move.w   #1,g_776c                          
  00a9c  4ead00b2              jsr      f2_15da                            
  00aa0  4e5e                  unlk     a6                                 
  00aa2  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_0aa4
;----------------------------------------------------------------------
f3_0aa4:
  00aa4  4e56fd50              link     a6,#-688                           
  00aa8  2f0c                  move.l   a4,-(a7)                           
  00aaa  486efd50              pea      -$2b0(a6)                          
  00aae  a874                  _GetPort                                    ; $a874
  00ab0  306e000c              movea.w  $c(a6),a0                          
  00ab4  2f08                  move.l   a0,-(a7)                           
  00ab6  486efd54              pea      -$2ac(a6)                          
  00aba  4ead0512              jsr      f4_150e                            
  00abe  486efe54              pea      -$1ac(a6)                          
  00ac2  3f3c058c              move.w   #$58c,-(a7)                        
  00ac6  3f2e000a              move.w   $a(a6),-(a7)                       
  00aca  4ead0522              jsr      f4_153c                            
  00ace  486efd54              pea      -$2ac(a6)                          
  00ad2  486efe54              pea      -$1ac(a6)                          
  00ad6  2f3c00000212          move.l   STR_0212,-(a7)                     ; "?"
  00adc  2f3c00000214          move.l   STR_0214,-(a7)                     ; "?"
  00ae2  a98b                  _ParamText                                  ; $a98b
  00ae4  42a7                  clr.l    -(a7)                              
  00ae6  3f3c058c              move.w   #$58c,-(a7)                        
  00aea  486eff56              pea      -$aa(a6)                           
  00aee  4878ffff              pea      ($ffff).w                          
  00af2  a97c                  _GetNewDialog                               ; $a97c
  00af4  285f                  movea.l  (a7)+,a4                           
  00af6  2f0c                  move.l   a4,-(a7)                           
  00af8  4ead06ba              jsr      f7_161c                            
  00afc  2e8c                  move.l   a4,(a7)                            
  00afe  a915                  _ShowWindow                                 ; $a915
  00b00  3f2e000e              move.w   $e(a6),-(a7)                       
  00b04  4eba3732              jsr      f3_4238                            
  00b08  548f                  addq.l   #2,a7                              
L0b0a:
  00b0a  42a7                  clr.l    -(a7)                              
  00b0c  486eff54              pea      -$ac(a6)                           
  00b10  a991                  _ModalDialog                                ; $a991
  00b12  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  00b18  66f0                  bne.s    L0b0a                              
  00b1a  2f0c                  move.l   a4,-(a7)                           
  00b1c  a983                  _DisposeDialog                              ; $a983
  00b1e  2f2efd50              move.l   -$2b0(a6),-(a7)                    
  00b22  a873                  _SetPort                                    ; $a873
  00b24  285f                  movea.l  (a7)+,a4                           
  00b26  4e5e                  unlk     a6                                 
  00b28  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_0b2a   [jump table #79]
;----------------------------------------------------------------------
f3_0b2a:
  00b2a  4e56fede              link     a6,#-290                           
  00b2e  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  00b32  1e2e0008              move.b   $8(a6),d7                          
  00b36  3d7c0029ffe0          move.w   #$29,-$20(a6)                      
  00b3c  2079ffff9382          movea.l  g_6c7e,a0                          
  00b42  2d680010ffbe          move.l   $10(a0),-$42(a6)                   
  00b48  2d680014ffc2          move.l   $14(a0),-$3e(a6)                   
  00b4e  3279ffff836e          movea.w  g_7c92,a1                          
  00b54  70f1                  moveq    #-15,d0                            
  00b56  d089                  add.l    a1,d0                              
  00b58  81fc0015              divs.w   #$15,d0                            
  00b5c  3d40fff6              move.w   d0,-$a(a6)                         
  00b60  3279ffff836c          movea.w  g_7c94,a1                          
  00b66  2209                  move.l   a1,d1                              
  00b68  83fc0015              divs.w   #$15,d1                            
  00b6c  3d41ffde              move.w   d1,-$22(a6)                        
  00b70  c3fc0012              muls.w   #$12,d1                            
  00b74  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  00b7a  3240                  movea.w  d0,a1                              
  00b7c  d3c9                  adda.l   a1,a1                              
  00b7e  3f311800              move.w   $0(a1,d1.l),-(a7)                  
  00b82  4ead024a              jsr      f2_7a2c                            
  00b86  3d40fff8              move.w   d0,-$8(a6)                         
  00b8a  0c0700ff              cmpi.b   #$ff,d7                            
  00b8e  548f                  addq.l   #2,a7                              
  00b90  6708                  beq.s    L0b9a                              
  00b92  0c0700fe              cmpi.b   #$fe,d7                            
  00b96  66000ce8              bne.w    L1880                              
L0b9a:
  00b9a  2079ffff9382          movea.l  g_6c7e,a0                          
  00ba0  48680002              pea      $2(a0)                             
  00ba4  2279ffff99f4          movea.l  g_660c,a1                          
  00baa  22690002              movea.l  $2(a1),a1                          
  00bae  2f11                  move.l   (a1),-(a7)                         
  00bb0  486effbe              pea      -$42(a6)                           
  00bb4  486effbe              pea      -$42(a6)                           
  00bb8  4267                  clr.w    -(a7)                              
  00bba  42a7                  clr.l    -(a7)                              
  00bbc  a8ec                  _CopyBits                                   ; $a8ec
  00bbe  486effce              pea      -$32(a6)                           
  00bc2  a874                  _GetPort                                    ; $a874
  00bc4  0c0700ff              cmpi.b   #$ff,d7                            
  00bc8  660a                  bne.s    L0bd4                              
  00bca  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  00bd0  a873                  _SetPort                                    ; $a873
  00bd2  6008                  bra.s    L0bdc                              
L0bd4:
  00bd4  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  00bda  a873                  _SetPort                                    ; $a873
L0bdc:
  00bdc  2d79ffff8e2affda      move.l   g_71d6,-$26(a6)                    
  00be4  486effda              pea      -$26(a6)                           
  00be8  a871                  _GlobalToLocal                              ; $a871
  00bea  306effda              movea.w  -$26(a6),a0                        
  00bee  2008                  move.l   a0,d0                              
  00bf0  81fc002d              divs.w   #$2d,d0                            
  00bf4  5240                  addq.w   #1,d0                              
  00bf6  3d40ffde              move.w   d0,-$22(a6)                        
  00bfa  0c0700ff              cmpi.b   #$ff,d7                            
  00bfe  661a                  bne.s    L0c1a                              
  00c00  4a79ffff97e0          tst.w    g_6820                             
  00c06  6f12                  ble.s    L0c1a                              
  00c08  302effde              move.w   -$22(a6),d0                        
  00c0c  3f3003b0ffff887c      move.w   (-$7784,za0,d0.w*2),-(a7)          
  00c14  4ead0752              jsr      f7_30f0                            
  00c18  548f                  addq.l   #2,a7                              
L0c1a:
  00c1a  0c0700fe              cmpi.b   #$fe,d7                            
  00c1e  6610                  bne.s    L0c30                              
  00c20  4a79ffff97e0          tst.w    g_6820                             
  00c26  6608                  bne.s    L0c30                              
  00c28  0c6e0006ffde          cmpi.w   #6,-$22(a6)                        
  00c2e  6d0e                  blt.s    L0c3e                              
L0c30:
  00c30  0c0700ff              cmpi.b   #$ff,d7                            
  00c34  663c                  bne.s    L0c72                              
  00c36  4a79ffff97e0          tst.w    g_6820                             
  00c3c  6634                  bne.s    L0c72                              
L0c3e:
  00c3e  42a7                  clr.l    -(a7)                              
  00c40  3f3c008c              move.w   #$8c,-(a7)                         
  00c44  486efeec              pea      -$114(a6)                          
  00c48  4878ffff              pea      ($ffff).w                          
  00c4c  a97c                  _GetNewDialog                               ; $a97c
  00c4e  285f                  movea.l  (a7)+,a4                           
  00c50  2f0c                  move.l   a4,-(a7)                           
  00c52  4ead06ba              jsr      f7_161c                            
  00c56  2e8c                  move.l   a4,(a7)                            
  00c58  a915                  _ShowWindow                                 ; $a915
L0c5a:
  00c5a  42a7                  clr.l    -(a7)                              
  00c5c  486effde              pea      -$22(a6)                           
  00c60  a991                  _ModalDialog                                ; $a991
  00c62  0c6e0001ffde          cmpi.w   #1,-$22(a6)                        
  00c68  66f0                  bne.s    L0c5a                              
  00c6a  2f0c                  move.l   a4,-(a7)                           
  00c6c  a983                  _DisposeDialog                              ; $a983
  00c6e  60000c9a              bra.w    L190a                              
L0c72:
  00c72  0c0700fe              cmpi.b   #$fe,d7                            
  00c76  6624                  bne.s    L0c9c                              
  00c78  0c6e0006ffde          cmpi.w   #6,-$22(a6)                        
  00c7e  661c                  bne.s    L0c9c                              
  00c80  2f3c00060000          move.l   #$60000,-(a7)                      
  00c86  4ead0772              jsr      f7_3752                            
  00c8a  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  00c90  4ead0532              jsr      f5_146e                            
  00c94  4ead074a              jsr      f7_2f40                            
  00c98  60000c70              bra.w    L190a                              
L0c9c:
  00c9c  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  00ca2  4ead0532              jsr      f5_146e                            
  00ca6  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  00cac  a873                  _SetPort                                    ; $a873
  00cae  4a79ffff97e0          tst.w    g_6820                             
  00cb4  6f000bae              ble.w    L1864                              
  00cb8  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  00cbe  a873                  _SetPort                                    ; $a873
  00cc0  0c790001ffff97e0      cmpi.w   #1,g_6820                          
  00cc8  6f0000ae              ble.w    L0d78                              
  00ccc  3f3c07f9              move.w   #$7f9,-(a7)                        
  00cd0  4eba3566              jsr      f3_4238                            
  00cd4  4eba374e              jsr      f3_4424                            
  00cd8  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  00cde  201f                  move.l   (a7)+,d0                           
  00ce0  a032                  _FlushEvents                                ; $a032
  00ce2  78ff                  moveq    #-1,d4                             
  00ce4  548f                  addq.l   #2,a7                              
  00ce6  60000086              bra.w    L0d6e                              
L0cea:
  00cea  4227                  clr.b    -(a7)                              
  00cec  3f3cffff              move.w   #$ffff,-(a7)                       
  00cf0  2f3cffff8e20          move.l   #$ffff8e20,-(a7)                   
  00cf6  a970                  _GetNextEvent                               ; $a970
  00cf8  7800                  moveq    #0,d4                              
  00cfa  181f                  move.b   (a7)+,d4                           
  00cfc  3039ffff8e20          move.w   g_71e0,d0                          
  00d02  6768                  beq.s    L0d6c                              
  00d04  6b66                  bmi.s    L0d6c                              
  00d06  5540                  subq.w   #2,d0                              
  00d08  6a62                  bpl.s    L0d6c                              
  00d0a  4267                  clr.w    -(a7)                              
  00d0c  2f39ffff8e2a          move.l   g_71d6,-(a7)                       
  00d12  486effc6              pea      -$3a(a6)                           
  00d16  a92c                  _FindWindow                                 ; $a92c
  00d18  381f                  move.w   (a7)+,d4                           
  00d1a  202effc6              move.l   -$3a(a6),d0                        
  00d1e  b0b9ffff9382          cmp.l    g_6c7e,d0                          
  00d24  6648                  bne.s    L0d6e                              
  00d26  2d79ffff8e2affda      move.l   g_71d6,-$26(a6)                    
  00d2e  486effda              pea      -$26(a6)                           
  00d32  a871                  _GlobalToLocal                              ; $a871
  00d34  7800                  moveq    #0,d4                              
  00d36  3d7c0001fff6          move.w   #1,-$a(a6)                         
  00d3c  6020                  bra.s    L0d5e                              
L0d3e:
  00d3e  4227                  clr.b    -(a7)                              
  00d40  2f2effda              move.l   -$26(a6),-(a7)                     
  00d44  302efff6              move.w   -$a(a6),d0                         
  00d48  487007b0ffff96c2      pea      (-$693e,za0,d0.w*8)                
  00d50  a8ad                  _PtInRect                                   ; $a8ad
  00d52  4a1f                  tst.b    (a7)+                              
  00d54  6704                  beq.s    L0d5a                              
  00d56  382efff6              move.w   -$a(a6),d4                         
L0d5a:
  00d5a  526efff6              addq.w   #1,-$a(a6)                         
L0d5e:
  00d5e  302efff6              move.w   -$a(a6),d0                         
  00d62  b079ffff97e0          cmp.w    g_6820,d0                          
  00d68  6fd4                  ble.s    L0d3e                              
  00d6a  6002                  bra.s    L0d6e                              
L0d6c:
  00d6c  78ff                  moveq    #-1,d4                             
L0d6e:
  00d6e  0c44ffff              cmpi.w   #$ffff,d4                          
  00d72  6700ff76              beq.w    L0cea                              
  00d76  6002                  bra.s    L0d7a                              
L0d78:
  00d78  7801                  moveq    #1,d4                              
L0d7a:
  00d7a  4a44                  tst.w    d4                                 
  00d7c  6f000ae6              ble.w    L1864                              
  00d80  0c0700ff              cmpi.b   #$ff,d7                            
  00d84  6608                  bne.s    L0d8e                              
  00d86  2f39ffff9446          move.l   g_6bba,-(a7)                       
  00d8c  aa0a                  _PenPixPat                                  ; $aa0a
L0d8e:
  00d8e  0c0700fe              cmpi.b   #$fe,d7                            
  00d92  6608                  bne.s    L0d9c                              
  00d94  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  00d9a  aa0a                  _PenPixPat                                  ; $aa0a
L0d9c:
  00d9c  2f3c00020002          move.l   #$20002,-(a7)                      
  00da2  a89b                  _PenSize                                    ; $a89b
  00da4  3f3c0064              move.w   #$64,-(a7)                         
  00da8  2079ffff9382          movea.l  g_6c7e,a0                          
  00dae  3f280014              move.w   $14(a0),-(a7)                      
  00db2  a893                  _MoveTo                                     ; $a893
  00db4  303047b0ffff96c8      move.w   (-$6938,za0,d4.w*8),d0             
  00dbc  907047b0ffff96c4      sub.w    (-$693c,za0,d4.w*8),d0             
  00dc4  48c0                  ext.l    d0                                 
  00dc6  81fc0002              divs.w   #2,d0                              
  00dca  d07047b0ffff96c4      add.w    (-$693c,za0,d4.w*8),d0             
  00dd2  3d40fffa              move.w   d0,-$6(a6)                         
  00dd6  323047b0ffff96c6      move.w   (-$693a,za0,d4.w*8),d1             
  00dde  927047b0ffff96c2      sub.w    (-$693e,za0,d4.w*8),d1             
  00de6  48c1                  ext.l    d1                                 
  00de8  83fc0002              divs.w   #2,d1                              
  00dec  d27047b0ffff96c2      add.w    (-$693e,za0,d4.w*8),d1             
  00df4  3d41fffc              move.w   d1,-$4(a6)                         
  00df8  3d40ffea              move.w   d0,-$16(a6)                        
  00dfc  3d41ffe8              move.w   d1,-$18(a6)                        
  00e00  0c0700ff              cmpi.b   #$ff,d7                            
  00e04  66000470              bne.w    L1276                              
  00e08  2f39ffffac72          move.l   g_538e,-(a7)                       
  00e0e  a873                  _SetPort                                    ; $a873
  00e10  486effa6              pea      -$5a(a6)                           
  00e14  42a7                  clr.l    -(a7)                              
  00e16  2f3c0020001e          move.l   #$20001e,-(a7)                     
  00e1c  a8a7                  _SetRect                                    ; $a8a7
  00e1e  2d6effa6ffae          move.l   -$5a(a6),-$52(a6)                  
  00e24  2d6effaaffb2          move.l   -$56(a6),-$4e(a6)                  
  00e2a  2d6effaeffb6          move.l   -$52(a6),-$4a(a6)                  
  00e30  2d6effb2ffba          move.l   -$4e(a6),-$46(a6)                  
  00e36  486effae              pea      -$52(a6)                           
  00e3a  4878001e              pea      ($1e).w                            
  00e3e  a8a8                  _OffsetRect                                 ; $a8a8
  00e40  486effb6              pea      -$4a(a6)                           
  00e44  4878003c              pea      ($3c).w                            
  00e48  a8a8                  _OffsetRect                                 ; $a8a8
  00e4a  302effde              move.w   -$22(a6),d0                        
  00e4e  303003b0ffff887c      move.w   (-$7784,za0,d0.w*2),d0             
  00e56  906effe0              sub.w    -$20(a6),d0                        
  00e5a  0c40000a              cmpi.w   #$a,d0                             
  00e5e  6f06                  ble.s    L0e66                              
  00e60  303c0082              move.w   #$82,d0                            
  00e64  6034                  bra.s    L0e9a                              
L0e66:
  00e66  302effde              move.w   -$22(a6),d0                        
  00e6a  303003b0ffff887c      move.w   (-$7784,za0,d0.w*2),d0             
  00e72  906effe0              sub.w    -$20(a6),d0                        
  00e76  5b40                  subq.w   #5,d0                              
  00e78  6f1c                  ble.s    L0e96                              
  00e7a  302effde              move.w   -$22(a6),d0                        
  00e7e  303003b0ffff887c      move.w   (-$7784,za0,d0.w*2),d0             
  00e86  906effe0              sub.w    -$20(a6),d0                        
  00e8a  0c40000b              cmpi.w   #$b,d0                             
  00e8e  6c06                  bge.s    L0e96                              
  00e90  303c0088              move.w   #$88,d0                            
  00e94  6004                  bra.s    L0e9a                              
L0e96:
  00e96  303c00c8              move.w   #$c8,d0                            
L0e9a:
  00e9a  3d40ffe2              move.w   d0,-$1e(a6)                        
  00e9e  7600                  moveq    #0,d3                              
  00ea0  6028                  bra.s    L0eca                              
L0ea2:
  00ea2  42a7                  clr.l    -(a7)                              
  00ea4  302effe2              move.w   -$1e(a6),d0                        
  00ea8  d043                  add.w    d3,d0                              
  00eaa  3f00                  move.w   d0,-(a7)                           
  00eac  a9bc                  _GetPicture                                 ; $a9bc
  00eae  2d9f3520fede          move.l   (a7)+,(-$122,a6,d3.w*4)            
  00eb4  2f363520fede          move.l   (-$122,a6,d3.w*4),-(a7)            
  00eba  487636a6              pea      -$5a(a6,d3.w*8)                    
  00ebe  a8f6                  _DrawPicture                                ; $a8f6
  00ec0  2f363520fede          move.l   (-$122,a6,d3.w*4),-(a7)            
  00ec6  a9a3                  _ReleaseResource                            ; $a9a3
  00ec8  5243                  addq.w   #1,d3                              
L0eca:
  00eca  0c430003              cmpi.w   #3,d3                              
  00ece  6dd2                  blt.s    L0ea2                              
  00ed0  2079ffff9382          movea.l  g_6c7e,a0                          
  00ed6  70a6                  moveq    #-90,d0                            
  00ed8  d0680016              add.w    $16(a0),d0                         
  00edc  3d40ffa0              move.w   d0,-$60(a6)                        
  00ee0  30280010              move.w   $10(a0),d0                         
  00ee4  0640008c              addi.w   #$8c,d0                            
  00ee8  3d40ff9e              move.w   d0,-$62(a6)                        
  00eec  702d                  moveq    #45,d0                             
  00eee  d06effa0              add.w    -$60(a6),d0                        
  00ef2  3d40ffa4              move.w   d0,-$5c(a6)                        
  00ef6  702a                  moveq    #42,d0                             
  00ef8  d06eff9e              add.w    -$62(a6),d0                        
  00efc  3d40ffa2              move.w   d0,-$5e(a6)                        
  00f00  3a39ffff836c          move.w   g_7c94,d5                          
  00f06  3c39ffff836e          move.w   g_7c92,d6                          
  00f0c  48680002              pea      $2(a0)                             
  00f10  2279ffff99f8          movea.l  g_6608,a1                          
  00f16  22690002              movea.l  $2(a1),a1                          
  00f1a  2f11                  move.l   (a1),-(a7)                         
  00f1c  486effbe              pea      -$42(a6)                           
  00f20  486effbe              pea      -$42(a6)                           
  00f24  4267                  clr.w    -(a7)                              
  00f26  42a7                  clr.l    -(a7)                              
  00f28  a8ec                  _CopyBits                                   ; $a8ec
  00f2a  2079ffff9382          movea.l  g_6c7e,a0                          
  00f30  48680002              pea      $2(a0)                             
  00f34  2279ffff99fc          movea.l  g_6604,a1                          
  00f3a  22690002              movea.l  $2(a1),a1                          
  00f3e  2f11                  move.l   (a1),-(a7)                         
  00f40  486effbe              pea      -$42(a6)                           
  00f44  486effbe              pea      -$42(a6)                           
  00f48  4267                  clr.w    -(a7)                              
  00f4a  42a7                  clr.l    -(a7)                              
  00f4c  a8ec                  _CopyBits                                   ; $a8ec
  00f4e  7600                  moveq    #0,d3                              
  00f50  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  00f56  a873                  _SetPort                                    ; $a873
  00f58  303043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),d0             
  00f60  3d7003b0ffff8c24fff4  move.w   (-$73dc,za0,d0.w*2),-$c(a6)        
  00f6a  303043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),d0             
  00f72  3d7003b0ffff8c4efff2  move.w   (-$73b2,za0,d0.w*2),-$e(a6)        
  00f7c  486effd6              pea      -$2a(a6)                           
  00f80  3f2effa0              move.w   -$60(a6),-(a7)                     
  00f84  3f2eff9e              move.w   -$62(a6),-(a7)                     
  00f88  a880                  _SetPt                                      ; $a880
  00f8a  486effd2              pea      -$2e(a6)                           
  00f8e  3f2effa4              move.w   -$5c(a6),-(a7)                     
  00f92  3f2effa2              move.w   -$5e(a6),-(a7)                     
  00f96  a880                  _SetPt                                      ; $a880
  00f98  302effa4              move.w   -$5c(a6),d0                        
  00f9c  906effa0              sub.w    -$60(a6),d0                        
  00fa0  48c0                  ext.l    d0                                 
  00fa2  81fc0002              divs.w   #2,d0                              
  00fa6  d06effa0              add.w    -$60(a6),d0                        
  00faa  3d40ffe6              move.w   d0,-$1a(a6)                        
  00fae  322effa2              move.w   -$5e(a6),d1                        
  00fb2  926eff9e              sub.w    -$62(a6),d1                        
  00fb6  48c1                  ext.l    d1                                 
  00fb8  83fc0002              divs.w   #2,d1                              
  00fbc  d26eff9e              add.w    -$62(a6),d1                        
  00fc0  3d41ffe4              move.w   d1,-$1c(a6)                        
L0fc4:
  00fc4  302efff4              move.w   -$c(a6),d0                         
  00fc8  9045                  sub.w    d5,d0                              
  00fca  3f00                  move.w   d0,-(a7)                           
  00fcc  4ead024a              jsr      f2_7a2c                            
  00fd0  5740                  subq.w   #3,d0                              
  00fd2  548f                  addq.l   #2,a7                              
  00fd4  6e3c                  bgt.s    L1012                              
  00fd6  302efff2              move.w   -$e(a6),d0                         
  00fda  9046                  sub.w    d6,d0                              
  00fdc  3f00                  move.w   d0,-(a7)                           
  00fde  4ead024a              jsr      f2_7a2c                            
  00fe2  5740                  subq.w   #3,d0                              
  00fe4  548f                  addq.l   #2,a7                              
  00fe6  6e2a                  bgt.s    L1012                              
  00fe8  302effea              move.w   -$16(a6),d0                        
  00fec  906effe6              sub.w    -$1a(a6),d0                        
  00ff0  3f00                  move.w   d0,-(a7)                           
  00ff2  4ead024a              jsr      f2_7a2c                            
  00ff6  5740                  subq.w   #3,d0                              
  00ff8  548f                  addq.l   #2,a7                              
  00ffa  6e16                  bgt.s    L1012                              
  00ffc  302effe8              move.w   -$18(a6),d0                        
  01000  906effe4              sub.w    -$1c(a6),d0                        
  01004  3f00                  move.w   d0,-(a7)                           
  01006  4ead024a              jsr      f2_7a2c                            
  0100a  5740                  subq.w   #3,d0                              
  0100c  548f                  addq.l   #2,a7                              
  0100e  6f000178              ble.w    L1188                              
L1012:
  01012  3003                  move.w   d3,d0                              
  01014  5243                  addq.w   #1,d3                              
  01016  48c0                  ext.l    d0                                 
  01018  81fc0003              divs.w   #3,d0                              
  0101c  4840                  swap     d0                                 
  0101e  3d40ffec              move.w   d0,-$14(a6)                        
  01022  720a                  moveq    #10,d1                             
  01024  2439ffff9828          move.l   g_67d8,d2                          
  0102a  4c412802              divs.l   d1,d2                              
  0102e  43eeffca              lea      -$36(a6),a1                        
  01032  2042                  movea.l  d2,a0                              
  01034  a03b                  _Delay                                      ; $a03b
  01036  2280                  move.l   d0,(a1)                            
  01038  ba6efff4              cmp.w    -$c(a6),d5                         
  0103c  6c04                  bge.s    L1042                              
  0103e  7001                  moveq    #1,d0                              
  01040  600c                  bra.s    L104e                              
L1042:
  01042  ba6efff4              cmp.w    -$c(a6),d5                         
  01046  6f04                  ble.s    L104c                              
  01048  70ff                  moveq    #-1,d0                             
  0104a  6002                  bra.s    L104e                              
L104c:
  0104c  7000                  moveq    #0,d0                              
L104e:
  0104e  3d40fff0              move.w   d0,-$10(a6)                        
  01052  bc6efff2              cmp.w    -$e(a6),d6                         
  01056  6c04                  bge.s    L105c                              
  01058  7001                  moveq    #1,d0                              
  0105a  600c                  bra.s    L1068                              
L105c:
  0105c  bc6efff2              cmp.w    -$e(a6),d6                         
  01060  6f04                  ble.s    L1066                              
  01062  70ff                  moveq    #-1,d0                             
  01064  6002                  bra.s    L1068                              
L1066:
  01066  7000                  moveq    #0,d0                              
L1068:
  01068  3d40ffee              move.w   d0,-$12(a6)                        
  0106c  da6efff0              add.w    -$10(a6),d5                        
  01070  dc40                  add.w    d0,d6                              
  01072  2079ffffac72          movea.l  g_538e,a0                          
  01078  20680002              movea.l  $2(a0),a0                          
  0107c  2f10                  move.l   (a0),-(a7)                         
  0107e  2079ffff99f8          movea.l  g_6608,a0                          
  01084  20680002              movea.l  $2(a0),a0                          
  01088  2f10                  move.l   (a0),-(a7)                         
  0108a  322effec              move.w   -$14(a6),d1                        
  0108e  487616a6              pea      -$5a(a6,d1.w*8)                    
  01092  486eff9e              pea      -$62(a6)                           
  01096  3f3c0024              move.w   #$24,-(a7)                         
  0109a  42a7                  clr.l    -(a7)                              
  0109c  a8ec                  _CopyBits                                   ; $a8ec
  0109e  2079ffff99f8          movea.l  g_6608,a0                          
  010a4  20680002              movea.l  $2(a0),a0                          
  010a8  2f10                  move.l   (a0),-(a7)                         
  010aa  2079ffff9382          movea.l  g_6c7e,a0                          
  010b0  48680002              pea      $2(a0)                             
  010b4  486effbe              pea      -$42(a6)                           
  010b8  486effbe              pea      -$42(a6)                           
  010bc  4267                  clr.w    -(a7)                              
  010be  42a7                  clr.l    -(a7)                              
  010c0  a8ec                  _CopyBits                                   ; $a8ec
  010c2  2079ffff99fc          movea.l  g_6604,a0                          
  010c8  20680002              movea.l  $2(a0),a0                          
  010cc  2f10                  move.l   (a0),-(a7)                         
  010ce  2079ffff99f8          movea.l  g_6608,a0                          
  010d4  20680002              movea.l  $2(a0),a0                          
  010d8  2f10                  move.l   (a0),-(a7)                         
  010da  486eff9e              pea      -$62(a6)                           
  010de  486eff9e              pea      -$62(a6)                           
  010e2  4267                  clr.w    -(a7)                              
  010e4  42a7                  clr.l    -(a7)                              
  010e6  a8ec                  _CopyBits                                   ; $a8ec
  010e8  302effa2              move.w   -$5e(a6),d0                        
  010ec  906eff9e              sub.w    -$62(a6),d0                        
  010f0  5b40                  subq.w   #5,d0                              
  010f2  6f14                  ble.s    L1108                              
  010f4  0c6e0002ffec          cmpi.w   #2,-$14(a6)                        
  010fa  660c                  bne.s    L1108                              
  010fc  486eff9e              pea      -$62(a6)                           
  01100  2f3c00010001          move.l   #$10001,-(a7)                      
  01106  a8a9                  _InsetRect                                  ; $a8a9
L1108:
  01108  302effe6              move.w   -$1a(a6),d0                        
  0110c  b06effea              cmp.w    -$16(a6),d0                        
  01110  6f04                  ble.s    L1116                              
  01112  70fd                  moveq    #-3,d0                             
  01114  6010                  bra.s    L1126                              
L1116:
  01116  302effe6              move.w   -$1a(a6),d0                        
  0111a  b06effea              cmp.w    -$16(a6),d0                        
  0111e  6c04                  bge.s    L1124                              
  01120  7003                  moveq    #3,d0                              
  01122  6002                  bra.s    L1126                              
L1124:
  01124  7000                  moveq    #0,d0                              
L1126:
  01126  3d40fff0              move.w   d0,-$10(a6)                        
  0112a  322effe4              move.w   -$1c(a6),d1                        
  0112e  b26effe8              cmp.w    -$18(a6),d1                        
  01132  6f04                  ble.s    L1138                              
  01134  70fd                  moveq    #-3,d0                             
  01136  6010                  bra.s    L1148                              
L1138:
  01138  302effe4              move.w   -$1c(a6),d0                        
  0113c  b06effe8              cmp.w    -$18(a6),d0                        
  01140  6c04                  bge.s    L1146                              
  01142  7003                  moveq    #3,d0                              
  01144  6002                  bra.s    L1148                              
L1146:
  01146  7000                  moveq    #0,d0                              
L1148:
  01148  3d40ffee              move.w   d0,-$12(a6)                        
  0114c  486eff9e              pea      -$62(a6)                           
  01150  3f2efff0              move.w   -$10(a6),-(a7)                     
  01154  3f00                  move.w   d0,-(a7)                           
  01156  a8a8                  _OffsetRect                                 ; $a8a8
  01158  302effa4              move.w   -$5c(a6),d0                        
  0115c  906effa0              sub.w    -$60(a6),d0                        
  01160  48c0                  ext.l    d0                                 
  01162  81fc0002              divs.w   #2,d0                              
  01166  d06effa0              add.w    -$60(a6),d0                        
  0116a  3d40ffe6              move.w   d0,-$1a(a6)                        
  0116e  322effa2              move.w   -$5e(a6),d1                        
  01172  926eff9e              sub.w    -$62(a6),d1                        
  01176  48c1                  ext.l    d1                                 
  01178  83fc0002              divs.w   #2,d1                              
  0117c  d26eff9e              add.w    -$62(a6),d1                        
  01180  3d41ffe4              move.w   d1,-$1c(a6)                        
  01184  6000fe3e              bra.w    L0fc4                              
L1188:
  01188  a89e                  _PenNormal                                  ; $a89e
  0118a  3f3c0003              move.w   #3,-(a7)                           
  0118e  4ead0242              jsr      f2_79a8                            
  01192  4a40                  tst.w    d0                                 
  01194  548f                  addq.l   #2,a7                              
  01196  672e                  beq.s    L11c6                              
  01198  6b2c                  bmi.s    L11c6                              
  0119a  5740                  subq.w   #3,d0                              
  0119c  671e                  beq.s    L11bc                              
  0119e  6a26                  bpl.s    L11c6                              
  011a0  5240                  addq.w   #1,d0                              
  011a2  6a0c                  bpl.s    L11b0                              
  011a4  3f3c07f8              move.w   #$7f8,-(a7)                        
  011a8  4eba308e              jsr      f3_4238                            
  011ac  548f                  addq.l   #2,a7                              
  011ae  6016                  bra.s    L11c6                              
L11b0:
  011b0  3f3c5c26              move.w   #$5c26,-(a7)                       
  011b4  4eba3082              jsr      f3_4238                            
  011b8  548f                  addq.l   #2,a7                              
  011ba  600a                  bra.s    L11c6                              
L11bc:
  011bc  3f3c5bec              move.w   #$5bec,-(a7)                       
  011c0  4eba3076              jsr      f3_4238                            
  011c4  548f                  addq.l   #2,a7                              
L11c6:
  011c6  4eba325c              jsr      f3_4424                            
  011ca  302effe2              move.w   -$1e(a6),d0                        
  011ce  6b50                  bmi.s    L1220                              
  011d0  04400088              subi.w   #$88,d0                            
  011d4  6724                  beq.s    L11fa                              
  011d6  6a06                  bpl.s    L11de                              
  011d8  5c40                  addq.w   #6,d0                              
  011da  670a                  beq.s    L11e6                              
  011dc  6042                  bra.s    L1220                              
L11de:
  011de  04400040              subi.w   #$40,d0                            
  011e2  672a                  beq.s    L120e                              
  011e4  603a                  bra.s    L1220                              
L11e6:
  011e6  3f3c4e20              move.w   #$4e20,-(a7)                       
  011ea  487047b0ffff96c2      pea      (-$693e,za0,d4.w*8)                
  011f2  4ead06d2              jsr      f7_1a72                            
  011f6  5c8f                  addq.l   #6,a7                              
  011f8  6026                  bra.s    L1220                              
L11fa:
  011fa  3f3c4e21              move.w   #$4e21,-(a7)                       
  011fe  487047b0ffff96c2      pea      (-$693e,za0,d4.w*8)                
  01206  4ead06d2              jsr      f7_1a72                            
  0120a  5c8f                  addq.l   #6,a7                              
  0120c  6012                  bra.s    L1220                              
L120e:
  0120e  3f3c4e22              move.w   #$4e22,-(a7)                       
  01212  487047b0ffff96c2      pea      (-$693e,za0,d4.w*8)                
  0121a  4ead06d2              jsr      f7_1a72                            
  0121e  5c8f                  addq.l   #6,a7                              
L1220:
  01220  7003                  moveq    #3,d0                              
  01222  4c390000ffff9828      mulu.l   g_67d8,d0                          
  0122a  43eeffca              lea      -$36(a6),a1                        
  0122e  2040                  movea.l  d0,a0                              
  01230  a03b                  _Delay                                      ; $a03b
  01232  2280                  move.l   d0,(a1)                            
  01234  42a7                  clr.l    -(a7)                              
  01236  3f3043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),-(a7)          
  0123e  3f2effde              move.w   -$22(a6),-(a7)                     
  01242  4ead06da              jsr      f7_1b6e                            
  01246  7003                  moveq    #3,d0                              
  01248  4c390000ffff9828      mulu.l   g_67d8,d0                          
  01250  43eeffca              lea      -$36(a6),a1                        
  01254  2040                  movea.l  d0,a0                              
  01256  a03b                  _Delay                                      ; $a03b
  01258  2280                  move.l   d0,(a1)                            
  0125a  1ebc0001              move.b   #1,(a7)                            
  0125e  3f2effde              move.w   -$22(a6),-(a7)                     
  01262  4eba1048              jsr      f3_22ac                            
  01266  4ead075a              jsr      f7_31f0                            
  0126a  4ead073a              jsr      f7_2bb6                            
  0126e  4fef000a              lea      $a(a7),a7                          
  01272  6000054c              bra.w    L17c0                              
L1276:
  01276  3f3043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),-(a7)          
  0127e  3f2effde              move.w   -$22(a6),-(a7)                     
  01282  4ead0772              jsr      f7_3752                            
  01286  1d40feeb              move.b   d0,-$115(a6)                       
  0128a  4a00                  tst.b    d0                                 
  0128c  588f                  addq.l   #4,a7                              
  0128e  6700052e              beq.w    L17be                              
  01292  2f39ffffac72          move.l   g_538e,-(a7)                       
  01298  a873                  _SetPort                                    ; $a873
  0129a  486effa6              pea      -$5a(a6)                           
  0129e  42a7                  clr.l    -(a7)                              
  012a0  2f3c000f000f          move.l   #$f000f,-(a7)                      
  012a6  a8a7                  _SetRect                                    ; $a8a7
  012a8  2d6effa6ffae          move.l   -$5a(a6),-$52(a6)                  
  012ae  2d6effaaffb2          move.l   -$56(a6),-$4e(a6)                  
  012b4  2d6effaeffb6          move.l   -$52(a6),-$4a(a6)                  
  012ba  2d6effb2ffba          move.l   -$4e(a6),-$46(a6)                  
  012c0  486effae              pea      -$52(a6)                           
  012c4  4878001e              pea      ($1e).w                            
  012c8  a8a8                  _OffsetRect                                 ; $a8a8
  012ca  486effb6              pea      -$4a(a6)                           
  012ce  4878003c              pea      ($3c).w                            
  012d2  a8a8                  _OffsetRect                                 ; $a8a8
  012d4  7005                  moveq    #5,d0                              
  012d6  c1eeffde              muls.w   -$22(a6),d0                        
  012da  0640012c              addi.w   #$12c,d0                           
  012de  3d40ffe2              move.w   d0,-$1e(a6)                        
  012e2  42a7                  clr.l    -(a7)                              
  012e4  3f3c012c              move.w   #$12c,-(a7)                        
  012e8  a9bc                  _GetPicture                                 ; $a9bc
  012ea  2d5ffede              move.l   (a7)+,-$122(a6)                    
  012ee  42a7                  clr.l    -(a7)                              
  012f0  3f3c012d              move.w   #$12d,-(a7)                        
  012f4  a9bc                  _GetPicture                                 ; $a9bc
  012f6  2d5ffee2              move.l   (a7)+,-$11e(a6)                    
  012fa  2f2efede              move.l   -$122(a6),-(a7)                    
  012fe  486effa6              pea      -$5a(a6)                           
  01302  a8f6                  _DrawPicture                                ; $a8f6
  01304  2f2efee2              move.l   -$11e(a6),-(a7)                    
  01308  486effae              pea      -$52(a6)                           
  0130c  a8f6                  _DrawPicture                                ; $a8f6
  0130e  486eff9e              pea      -$62(a6)                           
  01312  2f3c00780000          move.l   #$780000,-(a7)                     
  01318  2f3c0087000f          move.l   #$87000f,-(a7)                     
  0131e  a8a7                  _SetRect                                    ; $a8a7
  01320  486eff96              pea      -$6a(a6)                           
  01324  2f3c007800b9          move.l   #$7800b9,-(a7)                     
  0132a  2f3c008700c8          move.l   #$8700c8,-(a7)                     
  01330  a8a7                  _SetRect                                    ; $a8a7
  01332  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  01338  a873                  _SetPort                                    ; $a873
  0133a  2079ffff9382          movea.l  g_6c7e,a0                          
  01340  48680002              pea      $2(a0)                             
  01344  2279ffff99f8          movea.l  g_6608,a1                          
  0134a  22690002              movea.l  $2(a1),a1                          
  0134e  2f11                  move.l   (a1),-(a7)                         
  01350  486effbe              pea      -$42(a6)                           
  01354  486effbe              pea      -$42(a6)                           
  01358  4267                  clr.w    -(a7)                              
  0135a  42a7                  clr.l    -(a7)                              
  0135c  a8ec                  _CopyBits                                   ; $a8ec
  0135e  2079ffff9382          movea.l  g_6c7e,a0                          
  01364  48680002              pea      $2(a0)                             
  01368  2279ffff99fc          movea.l  g_6604,a1                          
  0136e  22690002              movea.l  $2(a1),a1                          
  01372  2f11                  move.l   (a1),-(a7)                         
  01374  486effbe              pea      -$42(a6)                           
  01378  486effbe              pea      -$42(a6)                           
  0137c  4267                  clr.w    -(a7)                              
  0137e  42a7                  clr.l    -(a7)                              
  01380  a8ec                  _CopyBits                                   ; $a8ec
  01382  600000b2              bra.w    L1436                              
L1386:
  01386  2079ffffac72          movea.l  g_538e,a0                          
  0138c  20680002              movea.l  $2(a0),a0                          
  01390  2f10                  move.l   (a0),-(a7)                         
  01392  2079ffff99f8          movea.l  g_6608,a0                          
  01398  20680002              movea.l  $2(a0),a0                          
  0139c  2f10                  move.l   (a0),-(a7)                         
  0139e  486effa6              pea      -$5a(a6)                           
  013a2  486eff9e              pea      -$62(a6)                           
  013a6  3f3c0024              move.w   #$24,-(a7)                         
  013aa  42a7                  clr.l    -(a7)                              
  013ac  a8ec                  _CopyBits                                   ; $a8ec
  013ae  2079ffffac72          movea.l  g_538e,a0                          
  013b4  20680002              movea.l  $2(a0),a0                          
  013b8  2f10                  move.l   (a0),-(a7)                         
  013ba  2079ffff99f8          movea.l  g_6608,a0                          
  013c0  20680002              movea.l  $2(a0),a0                          
  013c4  2f10                  move.l   (a0),-(a7)                         
  013c6  486effae              pea      -$52(a6)                           
  013ca  486eff96              pea      -$6a(a6)                           
  013ce  3f3c0024              move.w   #$24,-(a7)                         
  013d2  42a7                  clr.l    -(a7)                              
  013d4  a8ec                  _CopyBits                                   ; $a8ec
  013d6  2079ffff99f8          movea.l  g_6608,a0                          
  013dc  20680002              movea.l  $2(a0),a0                          
  013e0  2f10                  move.l   (a0),-(a7)                         
  013e2  2079ffff9382          movea.l  g_6c7e,a0                          
  013e8  48680002              pea      $2(a0)                             
  013ec  486effbe              pea      -$42(a6)                           
  013f0  486effbe              pea      -$42(a6)                           
  013f4  4267                  clr.w    -(a7)                              
  013f6  42a7                  clr.l    -(a7)                              
  013f8  a8ec                  _CopyBits                                   ; $a8ec
  013fa  2079ffff99fc          movea.l  g_6604,a0                          
  01400  20680002              movea.l  $2(a0),a0                          
  01404  2f10                  move.l   (a0),-(a7)                         
  01406  2079ffff99f8          movea.l  g_6608,a0                          
  0140c  20680002              movea.l  $2(a0),a0                          
  01410  2f10                  move.l   (a0),-(a7)                         
  01412  486effbe              pea      -$42(a6)                           
  01416  486effbe              pea      -$42(a6)                           
  0141a  4267                  clr.w    -(a7)                              
  0141c  42a7                  clr.l    -(a7)                              
  0141e  a8ec                  _CopyBits                                   ; $a8ec
  01420  486eff9e              pea      -$62(a6)                           
  01424  48780002              pea      ($2).w                             
  01428  a8a8                  _OffsetRect                                 ; $a8a8
  0142a  486eff96              pea      -$6a(a6)                           
  0142e  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  01434  a8a8                  _OffsetRect                                 ; $a8a8
L1436:
  01436  302effa4              move.w   -$5c(a6),d0                        
  0143a  b06eff9c              cmp.w    -$64(a6),d0                        
  0143e  6d00ff46              blt.w    L1386                              
  01442  2f39ffffac72          move.l   g_538e,-(a7)                       
  01448  a873                  _SetPort                                    ; $a873
  0144a  2079ffffac72          movea.l  g_538e,a0                          
  01450  48680010              pea      $10(a0)                            
  01454  a8a3                  _EraseRect                                  ; $a8a3
  01456  486effa6              pea      -$5a(a6)                           
  0145a  42a7                  clr.l    -(a7)                              
  0145c  2f3c0020001e          move.l   #$20001e,-(a7)                     
  01462  a8a7                  _SetRect                                    ; $a8a7
  01464  2d6effa6ffae          move.l   -$5a(a6),-$52(a6)                  
  0146a  2d6effaaffb2          move.l   -$56(a6),-$4e(a6)                  
  01470  2d6effaeffb6          move.l   -$52(a6),-$4a(a6)                  
  01476  2d6effb2ffba          move.l   -$4e(a6),-$46(a6)                  
  0147c  486effae              pea      -$52(a6)                           
  01480  4878001e              pea      ($1e).w                            
  01484  a8a8                  _OffsetRect                                 ; $a8a8
  01486  486effb6              pea      -$4a(a6)                           
  0148a  4878003c              pea      ($3c).w                            
  0148e  a8a8                  _OffsetRect                                 ; $a8a8
  01490  7600                  moveq    #0,d3                              
  01492  6028                  bra.s    L14bc                              
L1494:
  01494  42a7                  clr.l    -(a7)                              
  01496  302effe2              move.w   -$1e(a6),d0                        
  0149a  d043                  add.w    d3,d0                              
  0149c  3f00                  move.w   d0,-(a7)                           
  0149e  a9bc                  _GetPicture                                 ; $a9bc
  014a0  2d9f3520fede          move.l   (a7)+,(-$122,a6,d3.w*4)            
  014a6  2f363520fede          move.l   (-$122,a6,d3.w*4),-(a7)            
  014ac  487636a6              pea      -$5a(a6,d3.w*8)                    
  014b0  a8f6                  _DrawPicture                                ; $a8f6
  014b2  2f363520fede          move.l   (-$122,a6,d3.w*4),-(a7)            
  014b8  a9a3                  _ReleaseResource                            ; $a9a3
  014ba  5243                  addq.w   #1,d3                              
L14bc:
  014bc  0c430003              cmpi.w   #3,d3                              
  014c0  6dd2                  blt.s    L1494                              
  014c2  702d                  moveq    #45,d0                             
  014c4  d06effa0              add.w    -$60(a6),d0                        
  014c8  3d40ffa4              move.w   d0,-$5c(a6)                        
  014cc  702a                  moveq    #42,d0                             
  014ce  d06eff9e              add.w    -$62(a6),d0                        
  014d2  3d40ffa2              move.w   d0,-$5e(a6)                        
  014d6  3a39ffff836c          move.w   g_7c94,d5                          
  014dc  3c39ffff836e          move.w   g_7c92,d6                          
  014e2  7600                  moveq    #0,d3                              
  014e4  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  014ea  a873                  _SetPort                                    ; $a873
  014ec  303043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),d0             
  014f4  3d7003b0ffff8c24fff4  move.w   (-$73dc,za0,d0.w*2),-$c(a6)        
  014fe  303043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),d0             
  01506  3d7003b0ffff8c4efff2  move.w   (-$73b2,za0,d0.w*2),-$e(a6)        
  01510  486effd6              pea      -$2a(a6)                           
  01514  3f2effa0              move.w   -$60(a6),-(a7)                     
  01518  3f2eff9e              move.w   -$62(a6),-(a7)                     
  0151c  a880                  _SetPt                                      ; $a880
  0151e  486effd2              pea      -$2e(a6)                           
  01522  3f2effa4              move.w   -$5c(a6),-(a7)                     
  01526  3f2effa2              move.w   -$5e(a6),-(a7)                     
  0152a  a880                  _SetPt                                      ; $a880
  0152c  302effa4              move.w   -$5c(a6),d0                        
  01530  906effa0              sub.w    -$60(a6),d0                        
  01534  48c0                  ext.l    d0                                 
  01536  81fc0002              divs.w   #2,d0                              
  0153a  d06effa0              add.w    -$60(a6),d0                        
  0153e  3d40ffe6              move.w   d0,-$1a(a6)                        
  01542  322effa2              move.w   -$5e(a6),d1                        
  01546  926eff9e              sub.w    -$62(a6),d1                        
  0154a  48c1                  ext.l    d1                                 
  0154c  83fc0002              divs.w   #2,d1                              
  01550  d26eff9e              add.w    -$62(a6),d1                        
  01554  3d41ffe4              move.w   d1,-$1c(a6)                        
L1558:
  01558  302efff4              move.w   -$c(a6),d0                         
  0155c  9045                  sub.w    d5,d0                              
  0155e  3f00                  move.w   d0,-(a7)                           
  01560  4ead024a              jsr      f2_7a2c                            
  01564  5740                  subq.w   #3,d0                              
  01566  548f                  addq.l   #2,a7                              
  01568  6e3c                  bgt.s    L15a6                              
  0156a  302efff2              move.w   -$e(a6),d0                         
  0156e  9046                  sub.w    d6,d0                              
  01570  3f00                  move.w   d0,-(a7)                           
  01572  4ead024a              jsr      f2_7a2c                            
  01576  5740                  subq.w   #3,d0                              
  01578  548f                  addq.l   #2,a7                              
  0157a  6e2a                  bgt.s    L15a6                              
  0157c  302effea              move.w   -$16(a6),d0                        
  01580  906effe6              sub.w    -$1a(a6),d0                        
  01584  3f00                  move.w   d0,-(a7)                           
  01586  4ead024a              jsr      f2_7a2c                            
  0158a  5740                  subq.w   #3,d0                              
  0158c  548f                  addq.l   #2,a7                              
  0158e  6e16                  bgt.s    L15a6                              
  01590  302effe8              move.w   -$18(a6),d0                        
  01594  906effe4              sub.w    -$1c(a6),d0                        
  01598  3f00                  move.w   d0,-(a7)                           
  0159a  4ead024a              jsr      f2_7a2c                            
  0159e  5740                  subq.w   #3,d0                              
  015a0  548f                  addq.l   #2,a7                              
  015a2  6f000178              ble.w    L171c                              
L15a6:
  015a6  3003                  move.w   d3,d0                              
  015a8  5243                  addq.w   #1,d3                              
  015aa  48c0                  ext.l    d0                                 
  015ac  81fc0003              divs.w   #3,d0                              
  015b0  4840                  swap     d0                                 
  015b2  3d40ffec              move.w   d0,-$14(a6)                        
  015b6  720a                  moveq    #10,d1                             
  015b8  2439ffff9828          move.l   g_67d8,d2                          
  015be  4c412802              divs.l   d1,d2                              
  015c2  43eeffca              lea      -$36(a6),a1                        
  015c6  2042                  movea.l  d2,a0                              
  015c8  a03b                  _Delay                                      ; $a03b
  015ca  2280                  move.l   d0,(a1)                            
  015cc  ba6efff4              cmp.w    -$c(a6),d5                         
  015d0  6c04                  bge.s    L15d6                              
  015d2  7001                  moveq    #1,d0                              
  015d4  600c                  bra.s    L15e2                              
L15d6:
  015d6  ba6efff4              cmp.w    -$c(a6),d5                         
  015da  6f04                  ble.s    L15e0                              
  015dc  70ff                  moveq    #-1,d0                             
  015de  6002                  bra.s    L15e2                              
L15e0:
  015e0  7000                  moveq    #0,d0                              
L15e2:
  015e2  3d40fff0              move.w   d0,-$10(a6)                        
  015e6  bc6efff2              cmp.w    -$e(a6),d6                         
  015ea  6c04                  bge.s    L15f0                              
  015ec  7001                  moveq    #1,d0                              
  015ee  600c                  bra.s    L15fc                              
L15f0:
  015f0  bc6efff2              cmp.w    -$e(a6),d6                         
  015f4  6f04                  ble.s    L15fa                              
  015f6  70ff                  moveq    #-1,d0                             
  015f8  6002                  bra.s    L15fc                              
L15fa:
  015fa  7000                  moveq    #0,d0                              
L15fc:
  015fc  3d40ffee              move.w   d0,-$12(a6)                        
  01600  da6efff0              add.w    -$10(a6),d5                        
  01604  dc40                  add.w    d0,d6                              
  01606  2079ffffac72          movea.l  g_538e,a0                          
  0160c  20680002              movea.l  $2(a0),a0                          
  01610  2f10                  move.l   (a0),-(a7)                         
  01612  2079ffff99f8          movea.l  g_6608,a0                          
  01618  20680002              movea.l  $2(a0),a0                          
  0161c  2f10                  move.l   (a0),-(a7)                         
  0161e  322effec              move.w   -$14(a6),d1                        
  01622  487616a6              pea      -$5a(a6,d1.w*8)                    
  01626  486eff9e              pea      -$62(a6)                           
  0162a  3f3c0024              move.w   #$24,-(a7)                         
  0162e  42a7                  clr.l    -(a7)                              
  01630  a8ec                  _CopyBits                                   ; $a8ec
  01632  2079ffff99f8          movea.l  g_6608,a0                          
  01638  20680002              movea.l  $2(a0),a0                          
  0163c  2f10                  move.l   (a0),-(a7)                         
  0163e  2079ffff9382          movea.l  g_6c7e,a0                          
  01644  48680002              pea      $2(a0)                             
  01648  486effbe              pea      -$42(a6)                           
  0164c  486effbe              pea      -$42(a6)                           
  01650  4267                  clr.w    -(a7)                              
  01652  42a7                  clr.l    -(a7)                              
  01654  a8ec                  _CopyBits                                   ; $a8ec
  01656  2079ffff99fc          movea.l  g_6604,a0                          
  0165c  20680002              movea.l  $2(a0),a0                          
  01660  2f10                  move.l   (a0),-(a7)                         
  01662  2079ffff99f8          movea.l  g_6608,a0                          
  01668  20680002              movea.l  $2(a0),a0                          
  0166c  2f10                  move.l   (a0),-(a7)                         
  0166e  486effbe              pea      -$42(a6)                           
  01672  486effbe              pea      -$42(a6)                           
  01676  4267                  clr.w    -(a7)                              
  01678  42a7                  clr.l    -(a7)                              
  0167a  a8ec                  _CopyBits                                   ; $a8ec
  0167c  302effa2              move.w   -$5e(a6),d0                        
  01680  906eff9e              sub.w    -$62(a6),d0                        
  01684  5b40                  subq.w   #5,d0                              
  01686  6f14                  ble.s    L169c                              
  01688  0c6e0002ffec          cmpi.w   #2,-$14(a6)                        
  0168e  660c                  bne.s    L169c                              
  01690  486eff9e              pea      -$62(a6)                           
  01694  2f3c00010001          move.l   #$10001,-(a7)                      
  0169a  a8a9                  _InsetRect                                  ; $a8a9
L169c:
  0169c  302effe6              move.w   -$1a(a6),d0                        
  016a0  b06effea              cmp.w    -$16(a6),d0                        
  016a4  6f04                  ble.s    L16aa                              
  016a6  70fd                  moveq    #-3,d0                             
  016a8  6010                  bra.s    L16ba                              
L16aa:
  016aa  302effe6              move.w   -$1a(a6),d0                        
  016ae  b06effea              cmp.w    -$16(a6),d0                        
  016b2  6c04                  bge.s    L16b8                              
  016b4  7003                  moveq    #3,d0                              
  016b6  6002                  bra.s    L16ba                              
L16b8:
  016b8  7000                  moveq    #0,d0                              
L16ba:
  016ba  3d40fff0              move.w   d0,-$10(a6)                        
  016be  322effe4              move.w   -$1c(a6),d1                        
  016c2  b26effe8              cmp.w    -$18(a6),d1                        
  016c6  6f04                  ble.s    L16cc                              
  016c8  70fd                  moveq    #-3,d0                             
  016ca  6010                  bra.s    L16dc                              
L16cc:
  016cc  302effe4              move.w   -$1c(a6),d0                        
  016d0  b06effe8              cmp.w    -$18(a6),d0                        
  016d4  6c04                  bge.s    L16da                              
  016d6  7003                  moveq    #3,d0                              
  016d8  6002                  bra.s    L16dc                              
L16da:
  016da  7000                  moveq    #0,d0                              
L16dc:
  016dc  3d40ffee              move.w   d0,-$12(a6)                        
  016e0  486eff9e              pea      -$62(a6)                           
  016e4  3f2efff0              move.w   -$10(a6),-(a7)                     
  016e8  3f00                  move.w   d0,-(a7)                           
  016ea  a8a8                  _OffsetRect                                 ; $a8a8
  016ec  302effa4              move.w   -$5c(a6),d0                        
  016f0  906effa0              sub.w    -$60(a6),d0                        
  016f4  48c0                  ext.l    d0                                 
  016f6  81fc0002              divs.w   #2,d0                              
  016fa  d06effa0              add.w    -$60(a6),d0                        
  016fe  3d40ffe6              move.w   d0,-$1a(a6)                        
  01702  322effa2              move.w   -$5e(a6),d1                        
  01706  926eff9e              sub.w    -$62(a6),d1                        
  0170a  48c1                  ext.l    d1                                 
  0170c  83fc0002              divs.w   #2,d1                              
  01710  d26eff9e              add.w    -$62(a6),d1                        
  01714  3d41ffe4              move.w   d1,-$1c(a6)                        
  01718  6000fe3e              bra.w    L1558                              
L171c:
  0171c  4ead074a              jsr      f7_2f40                            
  01720  302effe2              move.w   -$1e(a6),d0                        
  01724  04400131              subi.w   #$131,d0                           
  01728  0c400014              cmpi.w   #$14,d0                            
  0172c  626c                  bhi.s    L179a                              
  0172e  43fa01e4              lea      L1914(pc),a1                       
  01732  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  01736  4ed1                  jmp      (a1)                               
  01738  3f3c4e22              move.w   #$4e22,-(a7)                       
  0173c  487047b0ffff96c2      pea      (-$693e,za0,d4.w*8)                
  01744  4ead06d2              jsr      f7_1a72                            
  01748  5c8f                  addq.l   #6,a7                              
  0174a  604e                  bra.s    L179a                              
  0174c  3f3c4e23              move.w   #$4e23,-(a7)                       
  01750  487047b0ffff96c2      pea      (-$693e,za0,d4.w*8)                
  01758  4ead06d2              jsr      f7_1a72                            
  0175c  5c8f                  addq.l   #6,a7                              
  0175e  603a                  bra.s    L179a                              
  01760  3f3c4e24              move.w   #$4e24,-(a7)                       
  01764  487047b0ffff96c2      pea      (-$693e,za0,d4.w*8)                
  0176c  4ead06d2              jsr      f7_1a72                            
  01770  5c8f                  addq.l   #6,a7                              
  01772  6026                  bra.s    L179a                              
  01774  3f3c4e25              move.w   #$4e25,-(a7)                       
  01778  487047b0ffff96c2      pea      (-$693e,za0,d4.w*8)                
  01780  4ead06d2              jsr      f7_1a72                            
  01784  5c8f                  addq.l   #6,a7                              
  01786  6012                  bra.s    L179a                              
  01788  3f3c4e26              move.w   #$4e26,-(a7)                       
  0178c  487047b0ffff96c2      pea      (-$693e,za0,d4.w*8)                
  01794  4ead06d2              jsr      f7_1a72                            
  01798  5c8f                  addq.l   #6,a7                              
L179a:
  0179a  2039ffff9828          move.l   g_67d8,d0                          
  017a0  e588                  lsl.l    #2,d0                              
  017a2  43eeffca              lea      -$36(a6),a1                        
  017a6  2040                  movea.l  d0,a0                              
  017a8  a03b                  _Delay                                      ; $a03b
  017aa  2280                  move.l   d0,(a1)                            
  017ac  4a39ffff8df2          tst.b    g_720e                             
  017b2  670c                  beq.s    L17c0                              
L17b4:
  017b4  4a39ffff8dfb          tst.b    g_7205                             
  017ba  67f8                  beq.s    L17b4                              
  017bc  6002                  bra.s    L17c0                              
L17be:
  017be  a89e                  _PenNormal                                  ; $a89e
L17c0:
  017c0  2079ffff99f4          movea.l  g_660c,a0                          
  017c6  20680002              movea.l  $2(a0),a0                          
  017ca  2f10                  move.l   (a0),-(a7)                         
  017cc  2079ffff9382          movea.l  g_6c7e,a0                          
  017d2  48680002              pea      $2(a0)                             
  017d6  486effbe              pea      -$42(a6)                           
  017da  486effbe              pea      -$42(a6)                           
  017de  4267                  clr.w    -(a7)                              
  017e0  42a7                  clr.l    -(a7)                              
  017e2  a8ec                  _CopyBits                                   ; $a8ec
  017e4  4a39ffff981e          tst.b    g_67e2                             
  017ea  6722                  beq.s    L180e                              
  017ec  303043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),d0             
  017f4  4a7003b0ffff8ccc      tst.w    (-$7334,za0,d0.w*2)                
  017fc  6f10                  ble.s    L180e                              
  017fe  0c0700fe              cmpi.b   #$fe,d7                            
  01802  66000106              bne.w    L190a                              
  01806  4ead074a              jsr      f7_2f40                            
  0180a  600000fe              bra.w    L190a                              
L180e:
  0180e  303043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),d0             
  01816  4a7003b0ffff8ccc      tst.w    (-$7334,za0,d0.w*2)                
  0181e  6e18                  bgt.s    L1838                              
  01820  487047b0ffff96c2      pea      (-$693e,za0,d4.w*8)                
  01828  3f3043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),-(a7)          
  01830  4eba11dc              jsr      f3_2a0e                            
  01834  5c8f                  addq.l   #6,a7                              
  01836  602c                  bra.s    L1864                              
L1838:
  01838  307043b0ffff8e0c      movea.w  (-$71f4,za0,d4.w*2),a0             
  01840  d1fcffff97e4          adda.l   #$ffff97e4,a0                      
  01846  10bc0001              move.b   #1,(a0)                            
  0184a  3f3043b0ffff8e0c      move.w   (-$71f4,za0,d4.w*2),-(a7)          
  01852  4ead0672              jsr      f6_294e                            
  01856  1ebc0001              move.b   #1,(a7)                            
  0185a  3f2efff8              move.w   -$8(a6),-(a7)                      
  0185e  4ead016a              jsr      f2_549e                            
  01862  588f                  addq.l   #4,a7                              
L1864:
  01864  4a39ffff8dfb          tst.b    g_7205                             
  0186a  67f8                  beq.s    L1864                              
  0186c  0c0700fe              cmpi.b   #$fe,d7                            
  01870  6604                  bne.s    L1876                              
  01872  4ead074a              jsr      f7_2f40                            
L1876:
  01876  2f2effce              move.l   -$32(a6),-(a7)                     
  0187a  a873                  _SetPort                                    ; $a873
  0187c  6000008c              bra.w    L190a                              
L1880:
  01880  0c07000a              cmpi.b   #$a,d7                             
  01884  6c16                  bge.s    L189c                              
  01886  1f07                  move.b   d7,-(a7)                           
  01888  1007                  move.b   d7,d0                              
  0188a  49c0                  extb.l   d0                                 
  0188c  3f300bb0ffff97aa      move.w   (-$6856,za0,d0.l*2),-(a7)          
  01894  4ead0212              jsr      f2_76c4                            
  01898  588f                  addq.l   #4,a7                              
  0189a  600a                  bra.s    L18a6                              
L189c:
  0189c  1f3c0046              move.b   #$46,-(a7)                         
  018a0  4ead00d2              jsr      f2_2042                            
  018a4  548f                  addq.l   #2,a7                              
L18a6:
  018a6  4a39ffff8dfb          tst.b    g_7205                             
  018ac  6604                  bne.s    L18b2                              
  018ae  4eba2c0e              jsr      f3_44be                            
L18b2:
  018b2  4a79ffff836c          tst.w    g_7c94                             
  018b8  6750                  beq.s    L190a                              
  018ba  4a79ffff8894          tst.w    g_776c                             
  018c0  6f48                  ble.s    L190a                              
  018c2  3079ffff836e          movea.w  g_7c92,a0                          
  018c8  70f1                  moveq    #-15,d0                            
  018ca  d088                  add.l    a0,d0                              
  018cc  81fc0015              divs.w   #$15,d0                            
  018d0  3d40fff6              move.w   d0,-$a(a6)                         
  018d4  3079ffff836c          movea.w  g_7c94,a0                          
  018da  2208                  move.l   a0,d1                              
  018dc  83fc0015              divs.w   #$15,d1                            
  018e0  3d41ffde              move.w   d1,-$22(a6)                        
  018e4  c3fc0012              muls.w   #$12,d1                            
  018e8  0681ffff88b2          addi.l   #$ffff88b2,d1                      
  018ee  3040                  movea.w  d0,a0                              
  018f0  d1c8                  adda.l   a0,a0                              
  018f2  3f301800              move.w   $0(a0,d1.l),-(a7)                  
  018f6  4ead024a              jsr      f2_7a2c                            
  018fa  3d40fff8              move.w   d0,-$8(a6)                         
  018fe  1ebc0001              move.b   #1,(a7)                            
  01902  3f00                  move.w   d0,-(a7)                           
  01904  4ead016a              jsr      f2_549e                            
  01908  588f                  addq.l   #4,a7                              
L190a:
  0190a  4cee10f8fec6          movem.l  -$13a(a6),d3/d4/d5/d6/d7/a4        
  01910  4e5e                  unlk     a6                                 
  01912  4e75                  rts                                         
  01914  fe24                  dc.w     $fe24                              
  01916  fe86                  dc.w     $fe86                              
  01918  fe86                  dc.w     $fe86                              
  0191a  fe86                  dc.w     $fe86                              
  0191c  fe86                  dc.w     $fe86                              
  0191e  fe38                  dc.w     $fe38                              
  01920  fe86                  dc.w     $fe86                              
  01922  fe86                  dc.w     $fe86                              
  01924  fe86                  dc.w     $fe86                              
  01926  fe86                  dc.w     $fe86                              
  01928  fe4c                  dc.w     $fe4c                              
  0192a  fe86                  dc.w     $fe86                              
  0192c  fe86                  dc.w     $fe86                              
  0192e  fe86                  dc.w     $fe86                              
  01930  fe86                  dc.w     $fe86                              
  01932  fe60                  dc.w     $fe60                              
  01934  fe86                  dc.w     $fe86                              
  01936  fe86                  dc.w     $fe86                              
  01938  fe86                  dc.w     $fe86                              
  0193a  fe86                  dc.w     $fe86                              
  0193c  fe74                  dc.w     $fe74                              

;----------------------------------------------------------------------
; f3_193e   [jump table #80]
;----------------------------------------------------------------------
f3_193e:
  0193e  4e56ffe8              link     a6,#-24                            
  01942  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  01946  3e2e000e              move.w   $e(a6),d7                          
  0194a  2079ffff9382          movea.l  g_6c7e,a0                          
  01950  2d680010fff0          move.l   $10(a0),-$10(a6)                   
  01956  2d680014fff4          move.l   $14(a0),-$c(a6)                    
  0195c  2d6efff0ffe8          move.l   -$10(a6),-$18(a6)                  
  01962  2d6efff4ffec          move.l   -$c(a6),-$14(a6)                   
  01968  7800                  moveq    #0,d4                              
  0196a  6012                  bra.s    L197e                              
L196c:
  0196c  427043b0ffff97aa      clr.w    (-$6856,za0,d4.w*2)                
  01974  427043b0ffff97be      clr.w    (-$6842,za0,d4.w*2)                
  0197c  5244                  addq.w   #1,d4                              
L197e:
  0197e  0c44000a              cmpi.w   #$a,d4                             
  01982  6de8                  blt.s    L196c                              
  01984  4279ffff8e08          clr.w    g_71f8                             
  0198a  4279ffff8e0a          clr.w    g_71f6                             
  01990  4239ffff3b0c          clr.b    g_c4f4                             
  01996  4279ffff97e0          clr.w    g_6820                             
  0199c  2f39ffff99f8          move.l   g_6608,-(a7)                       
  019a2  a873                  _SetPort                                    ; $a873
  019a4  2079ffff99f4          movea.l  g_660c,a0                          
  019aa  20680002              movea.l  $2(a0),a0                          
  019ae  2f10                  move.l   (a0),-(a7)                         
  019b0  2079ffff99f8          movea.l  g_6608,a0                          
  019b6  20680002              movea.l  $2(a0),a0                          
  019ba  2f10                  move.l   (a0),-(a7)                         
  019bc  486efff0              pea      -$10(a6)                           
  019c0  486efff0              pea      -$10(a6)                           
  019c4  4267                  clr.w    -(a7)                              
  019c6  42a7                  clr.l    -(a7)                              
  019c8  a8ec                  _CopyBits                                   ; $a8ec
  019ca  7603                  moveq    #3,d3                              
  019cc  600003a8              bra.w    L1d76                              
L19d0:
  019d0  7801                  moveq    #1,d4                              
  019d2  600001ac              bra.w    L1b80                              
L19d6:
  019d6  4a7043b0ffff8b7c      tst.w    (-$7484,za0,d4.w*2)                
  019de  6f00019e              ble.w    L1b7e                              
  019e2  307043b0ffff8d4a      movea.w  (-$72b6,za0,d4.w*2),a0             
  019ea  70ff                  moveq    #-1,d0                             
  019ec  d088                  add.l    a0,d0                              
  019ee  81fc0015              divs.w   #$15,d0                            
  019f2  c1fc0012              muls.w   #$12,d0                            
  019f6  307043b0ffff8d74      movea.w  (-$728c,za0,d4.w*2),a0             
  019fe  72f1                  moveq    #-15,d1                            
  01a00  d288                  add.l    a0,d1                              
  01a02  83fc0015              divs.w   #$15,d1                            
  01a06  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01a0c  3041                  movea.w  d1,a0                              
  01a0e  d1c8                  adda.l   a0,a0                              
  01a10  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  01a14  4ead024a              jsr      f2_7a2c                            
  01a18  b06e0008              cmp.w    $8(a6),d0                          
  01a1c  548f                  addq.l   #2,a7                              
  01a1e  6600015e              bne.w    L1b7e                              
  01a22  3039ffff83bc          move.w   g_7c44,d0                          
  01a28  67000154              beq.w    L1b7e                              
  01a2c  6b000150              bmi.w    L1b7e                              
  01a30  5740                  subq.w   #3,d0                              
  01a32  670000b4              beq.w    L1ae8                              
  01a36  6a06                  bpl.s    L1a3e                              
  01a38  5240                  addq.w   #1,d0                              
  01a3a  6a5c                  bpl.s    L1a98                              
  01a3c  600a                  bra.s    L1a48                              
L1a3e:
  01a3e  5540                  subq.w   #2,d0                              
  01a40  6a00013c              bpl.w    L1b7e                              
  01a44  600000ee              bra.w    L1b34                              
L1a48:
  01a48  3079ffff836c          movea.w  g_7c94,a0                          
  01a4e  2008                  move.l   a0,d0                              
  01a50  81fc0015              divs.w   #$15,d0                            
  01a54  307043b0ffff8d4a      movea.w  (-$72b6,za0,d4.w*2),a0             
  01a5c  2c08                  move.l   a0,d6                              
  01a5e  8dfc0015              divs.w   #$15,d6                            
  01a62  9c40                  sub.w    d0,d6                              
  01a64  307043b0ffff8d74      movea.w  (-$728c,za0,d4.w*2),a0             
  01a6c  2008                  move.l   a0,d0                              
  01a6e  81fc0015              divs.w   #$15,d0                            
  01a72  3079ffff836e          movea.w  g_7c92,a0                          
  01a78  2a08                  move.l   a0,d5                              
  01a7a  8bfc0015              divs.w   #$15,d5                            
  01a7e  9a40                  sub.w    d0,d5                              
  01a80  b645                  cmp.w    d5,d3                              
  01a82  660000fa              bne.w    L1b7e                              
  01a86  3f04                  move.w   d4,-(a7)                           
  01a88  3f07                  move.w   d7,-(a7)                           
  01a8a  3f06                  move.w   d6,-(a7)                           
  01a8c  3f05                  move.w   d5,-(a7)                           
  01a8e  4ead06a2              jsr      f6_0498                            
  01a92  508f                  addq.l   #8,a7                              
  01a94  600000e8              bra.w    L1b7e                              
L1a98:
  01a98  3079ffff836e          movea.w  g_7c92,a0                          
  01a9e  2008                  move.l   a0,d0                              
  01aa0  81fc0015              divs.w   #$15,d0                            
  01aa4  307043b0ffff8d74      movea.w  (-$728c,za0,d4.w*2),a0             
  01aac  2a08                  move.l   a0,d5                              
  01aae  8bfc0015              divs.w   #$15,d5                            
  01ab2  9a40                  sub.w    d0,d5                              
  01ab4  3079ffff836c          movea.w  g_7c94,a0                          
  01aba  2008                  move.l   a0,d0                              
  01abc  81fc0015              divs.w   #$15,d0                            
  01ac0  307043b0ffff8d4a      movea.w  (-$72b6,za0,d4.w*2),a0             
  01ac8  2c08                  move.l   a0,d6                              
  01aca  8dfc0015              divs.w   #$15,d6                            
  01ace  9c40                  sub.w    d0,d6                              
  01ad0  b646                  cmp.w    d6,d3                              
  01ad2  660000aa              bne.w    L1b7e                              
  01ad6  3f04                  move.w   d4,-(a7)                           
  01ad8  3f07                  move.w   d7,-(a7)                           
  01ada  3f05                  move.w   d5,-(a7)                           
  01adc  3f06                  move.w   d6,-(a7)                           
  01ade  4ead06a2              jsr      f6_0498                            
  01ae2  508f                  addq.l   #8,a7                              
  01ae4  60000098              bra.w    L1b7e                              
L1ae8:
  01ae8  307043b0ffff8d4a      movea.w  (-$72b6,za0,d4.w*2),a0             
  01af0  2008                  move.l   a0,d0                              
  01af2  81fc0015              divs.w   #$15,d0                            
  01af6  3079ffff836c          movea.w  g_7c94,a0                          
  01afc  2c08                  move.l   a0,d6                              
  01afe  8dfc0015              divs.w   #$15,d6                            
  01b02  9c40                  sub.w    d0,d6                              
  01b04  3079ffff836e          movea.w  g_7c92,a0                          
  01b0a  2008                  move.l   a0,d0                              
  01b0c  81fc0015              divs.w   #$15,d0                            
  01b10  307043b0ffff8d74      movea.w  (-$728c,za0,d4.w*2),a0             
  01b18  2a08                  move.l   a0,d5                              
  01b1a  8bfc0015              divs.w   #$15,d5                            
  01b1e  9a40                  sub.w    d0,d5                              
  01b20  b645                  cmp.w    d5,d3                              
  01b22  665a                  bne.s    L1b7e                              
  01b24  3f04                  move.w   d4,-(a7)                           
  01b26  3f07                  move.w   d7,-(a7)                           
  01b28  3f06                  move.w   d6,-(a7)                           
  01b2a  3f05                  move.w   d5,-(a7)                           
  01b2c  4ead06a2              jsr      f6_0498                            
  01b30  508f                  addq.l   #8,a7                              
  01b32  604a                  bra.s    L1b7e                              
L1b34:
  01b34  307043b0ffff8d74      movea.w  (-$728c,za0,d4.w*2),a0             
  01b3c  2008                  move.l   a0,d0                              
  01b3e  81fc0015              divs.w   #$15,d0                            
  01b42  3079ffff836e          movea.w  g_7c92,a0                          
  01b48  2a08                  move.l   a0,d5                              
  01b4a  8bfc0015              divs.w   #$15,d5                            
  01b4e  9a40                  sub.w    d0,d5                              
  01b50  307043b0ffff8d4a      movea.w  (-$72b6,za0,d4.w*2),a0             
  01b58  2008                  move.l   a0,d0                              
  01b5a  81fc0015              divs.w   #$15,d0                            
  01b5e  3079ffff836c          movea.w  g_7c94,a0                          
  01b64  2c08                  move.l   a0,d6                              
  01b66  8dfc0015              divs.w   #$15,d6                            
  01b6a  9c40                  sub.w    d0,d6                              
  01b6c  b646                  cmp.w    d6,d3                              
  01b6e  660e                  bne.s    L1b7e                              
  01b70  3f04                  move.w   d4,-(a7)                           
  01b72  3f07                  move.w   d7,-(a7)                           
  01b74  3f05                  move.w   d5,-(a7)                           
  01b76  3f06                  move.w   d6,-(a7)                           
  01b78  4ead06a2              jsr      f6_0498                            
  01b7c  508f                  addq.l   #8,a7                              
L1b7e:
  01b7e  5244                  addq.w   #1,d4                              
L1b80:
  01b80  b879ffff883e          cmp.w    g_77c2,d4                          
  01b86  6f00fe4e              ble.w    L19d6                              
  01b8a  486effe8              pea      -$18(a6)                           
  01b8e  487800c8              pea      ($c8).w                            
  01b92  a8a8                  _OffsetRect                                 ; $a8a8
  01b94  2079ffff99f8          movea.l  g_6608,a0                          
  01b9a  20680002              movea.l  $2(a0),a0                          
  01b9e  2f10                  move.l   (a0),-(a7)                         
  01ba0  2079ffff99f8          movea.l  g_6608,a0                          
  01ba6  20680002              movea.l  $2(a0),a0                          
  01baa  2f10                  move.l   (a0),-(a7)                         
  01bac  486efff0              pea      -$10(a6)                           
  01bb0  486effe8              pea      -$18(a6)                           
  01bb4  4267                  clr.w    -(a7)                              
  01bb6  42a7                  clr.l    -(a7)                              
  01bb8  a8ec                  _CopyBits                                   ; $a8ec
  01bba  7801                  moveq    #1,d4                              
  01bbc  600001ac              bra.w    L1d6a                              
L1bc0:
  01bc0  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  01bc8  6f00019e              ble.w    L1d68                              
  01bcc  307043b0ffff8c24      movea.w  (-$73dc,za0,d4.w*2),a0             
  01bd4  70ff                  moveq    #-1,d0                             
  01bd6  d088                  add.l    a0,d0                              
  01bd8  81fc0015              divs.w   #$15,d0                            
  01bdc  c1fc0012              muls.w   #$12,d0                            
  01be0  307043b0ffff8c4e      movea.w  (-$73b2,za0,d4.w*2),a0             
  01be8  72f1                  moveq    #-15,d1                            
  01bea  d288                  add.l    a0,d1                              
  01bec  83fc0015              divs.w   #$15,d1                            
  01bf0  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  01bf6  3041                  movea.w  d1,a0                              
  01bf8  d1c8                  adda.l   a0,a0                              
  01bfa  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  01bfe  4ead024a              jsr      f2_7a2c                            
  01c02  b06e0008              cmp.w    $8(a6),d0                          
  01c06  548f                  addq.l   #2,a7                              
  01c08  6600015e              bne.w    L1d68                              
  01c0c  3039ffff83bc          move.w   g_7c44,d0                          
  01c12  67000154              beq.w    L1d68                              
  01c16  6b000150              bmi.w    L1d68                              
  01c1a  5740                  subq.w   #3,d0                              
  01c1c  670000b4              beq.w    L1cd2                              
  01c20  6a06                  bpl.s    L1c28                              
  01c22  5240                  addq.w   #1,d0                              
  01c24  6a5c                  bpl.s    L1c82                              
  01c26  600a                  bra.s    L1c32                              
L1c28:
  01c28  5540                  subq.w   #2,d0                              
  01c2a  6a00013c              bpl.w    L1d68                              
  01c2e  600000ee              bra.w    L1d1e                              
L1c32:
  01c32  3079ffff836c          movea.w  g_7c94,a0                          
  01c38  2008                  move.l   a0,d0                              
  01c3a  81fc0015              divs.w   #$15,d0                            
  01c3e  307043b0ffff8c24      movea.w  (-$73dc,za0,d4.w*2),a0             
  01c46  2c08                  move.l   a0,d6                              
  01c48  8dfc0015              divs.w   #$15,d6                            
  01c4c  9c40                  sub.w    d0,d6                              
  01c4e  307043b0ffff8c4e      movea.w  (-$73b2,za0,d4.w*2),a0             
  01c56  2008                  move.l   a0,d0                              
  01c58  81fc0015              divs.w   #$15,d0                            
  01c5c  3079ffff836e          movea.w  g_7c92,a0                          
  01c62  2a08                  move.l   a0,d5                              
  01c64  8bfc0015              divs.w   #$15,d5                            
  01c68  9a40                  sub.w    d0,d5                              
  01c6a  b645                  cmp.w    d5,d3                              
  01c6c  660000fa              bne.w    L1d68                              
  01c70  3f04                  move.w   d4,-(a7)                           
  01c72  3f07                  move.w   d7,-(a7)                           
  01c74  3f06                  move.w   d6,-(a7)                           
  01c76  3f05                  move.w   d5,-(a7)                           
  01c78  4eba036c              jsr      f3_1fe6                            
  01c7c  508f                  addq.l   #8,a7                              
  01c7e  600000e8              bra.w    L1d68                              
L1c82:
  01c82  3079ffff836e          movea.w  g_7c92,a0                          
  01c88  2008                  move.l   a0,d0                              
  01c8a  81fc0015              divs.w   #$15,d0                            
  01c8e  307043b0ffff8c4e      movea.w  (-$73b2,za0,d4.w*2),a0             
  01c96  2a08                  move.l   a0,d5                              
  01c98  8bfc0015              divs.w   #$15,d5                            
  01c9c  9a40                  sub.w    d0,d5                              
  01c9e  3079ffff836c          movea.w  g_7c94,a0                          
  01ca4  2008                  move.l   a0,d0                              
  01ca6  81fc0015              divs.w   #$15,d0                            
  01caa  307043b0ffff8c24      movea.w  (-$73dc,za0,d4.w*2),a0             
  01cb2  2c08                  move.l   a0,d6                              
  01cb4  8dfc0015              divs.w   #$15,d6                            
  01cb8  9c40                  sub.w    d0,d6                              
  01cba  b646                  cmp.w    d6,d3                              
  01cbc  660000aa              bne.w    L1d68                              
  01cc0  3f04                  move.w   d4,-(a7)                           
  01cc2  3f07                  move.w   d7,-(a7)                           
  01cc4  3f05                  move.w   d5,-(a7)                           
  01cc6  3f06                  move.w   d6,-(a7)                           
  01cc8  4eba031c              jsr      f3_1fe6                            
  01ccc  508f                  addq.l   #8,a7                              
  01cce  60000098              bra.w    L1d68                              
L1cd2:
  01cd2  307043b0ffff8c24      movea.w  (-$73dc,za0,d4.w*2),a0             
  01cda  2008                  move.l   a0,d0                              
  01cdc  81fc0015              divs.w   #$15,d0                            
  01ce0  3079ffff836c          movea.w  g_7c94,a0                          
  01ce6  2c08                  move.l   a0,d6                              
  01ce8  8dfc0015              divs.w   #$15,d6                            
  01cec  9c40                  sub.w    d0,d6                              
  01cee  3079ffff836e          movea.w  g_7c92,a0                          
  01cf4  2008                  move.l   a0,d0                              
  01cf6  81fc0015              divs.w   #$15,d0                            
  01cfa  307043b0ffff8c4e      movea.w  (-$73b2,za0,d4.w*2),a0             
  01d02  2a08                  move.l   a0,d5                              
  01d04  8bfc0015              divs.w   #$15,d5                            
  01d08  9a40                  sub.w    d0,d5                              
  01d0a  b645                  cmp.w    d5,d3                              
  01d0c  665a                  bne.s    L1d68                              
  01d0e  3f04                  move.w   d4,-(a7)                           
  01d10  3f07                  move.w   d7,-(a7)                           
  01d12  3f06                  move.w   d6,-(a7)                           
  01d14  3f05                  move.w   d5,-(a7)                           
  01d16  4eba02ce              jsr      f3_1fe6                            
  01d1a  508f                  addq.l   #8,a7                              
  01d1c  604a                  bra.s    L1d68                              
L1d1e:
  01d1e  307043b0ffff8c4e      movea.w  (-$73b2,za0,d4.w*2),a0             
  01d26  2008                  move.l   a0,d0                              
  01d28  81fc0015              divs.w   #$15,d0                            
  01d2c  3079ffff836e          movea.w  g_7c92,a0                          
  01d32  2a08                  move.l   a0,d5                              
  01d34  8bfc0015              divs.w   #$15,d5                            
  01d38  9a40                  sub.w    d0,d5                              
  01d3a  307043b0ffff8c24      movea.w  (-$73dc,za0,d4.w*2),a0             
  01d42  2008                  move.l   a0,d0                              
  01d44  81fc0015              divs.w   #$15,d0                            
  01d48  3079ffff836c          movea.w  g_7c94,a0                          
  01d4e  2c08                  move.l   a0,d6                              
  01d50  8dfc0015              divs.w   #$15,d6                            
  01d54  9c40                  sub.w    d0,d6                              
  01d56  b646                  cmp.w    d6,d3                              
  01d58  660e                  bne.s    L1d68                              
  01d5a  3f04                  move.w   d4,-(a7)                           
  01d5c  3f07                  move.w   d7,-(a7)                           
  01d5e  3f05                  move.w   d5,-(a7)                           
  01d60  3f06                  move.w   d6,-(a7)                           
  01d62  4eba0282              jsr      f3_1fe6                            
  01d66  508f                  addq.l   #8,a7                              
L1d68:
  01d68  5244                  addq.w   #1,d4                              
L1d6a:
  01d6a  b879ffff883e          cmp.w    g_77c2,d4                          
  01d70  6f00fe4e              ble.w    L1bc0                              
  01d74  5343                  subq.w   #1,d3                              
L1d76:
  01d76  4a43                  tst.w    d3                                 
  01d78  6c00fc56              bge.w    L19d0                              
  01d7c  2079ffff99f8          movea.l  g_6608,a0                          
  01d82  20680002              movea.l  $2(a0),a0                          
  01d86  2f10                  move.l   (a0),-(a7)                         
  01d88  2079ffff9382          movea.l  g_6c7e,a0                          
  01d8e  48680002              pea      $2(a0)                             
  01d92  486efff0              pea      -$10(a6)                           
  01d96  486efff0              pea      -$10(a6)                           
  01d9a  4267                  clr.w    -(a7)                              
  01d9c  42a7                  clr.l    -(a7)                              
  01d9e  a8ec                  _CopyBits                                   ; $a8ec
  01da0  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  01da6  a873                  _SetPort                                    ; $a873
  01da8  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  01dac  4e5e                  unlk     a6                                 
  01dae  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_1db0
;----------------------------------------------------------------------
f3_1db0:
  01db0  4e56fff0              link     a6,#-16                            
  01db4  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  01db8  3e2e0008              move.w   $8(a6),d7                          
  01dbc  3f2e000a              move.w   $a(a6),-(a7)                       
  01dc0  4ead024a              jsr      f2_7a2c                            
  01dc4  5540                  subq.w   #2,d0                              
  01dc6  548f                  addq.l   #2,a7                              
  01dc8  6e000214              bgt.w    L1fde                              
  01dcc  42a7                  clr.l    -(a7)                              
  01dce  3f3c0083              move.w   #$83,-(a7)                         
  01dd2  a9bc                  _GetPicture                                 ; $a9bc
  01dd4  285f                  movea.l  (a7)+,a4                           
  01dd6  701e                  moveq    #30,d0                             
  01dd8  a122                  _NewHandle                                  ; $a122
  01dda  2648                  movea.l  a0,a3                              
  01ddc  701e                  moveq    #30,d0                             
  01dde  a122                  _NewHandle                                  ; $a122
  01de0  2448                  movea.l  a0,a2                              
  01de2  701e                  moveq    #30,d0                             
  01de4  2253                  movea.l  (a3),a1                            
  01de6  207075b1ffff990a      movea.l  ([-$66f6,a0],d7.w*4,$0),a0         
  01dee  a02e                  _BlockMove                                  ; $a02e
  01df0  701e                  moveq    #30,d0                             
  01df2  2252                  movea.l  (a2),a1                            
  01df4  207075b1ffff991e      movea.l  ([-$66e2,a0],d7.w*4,$0),a0         
  01dfc  a02e                  _BlockMove                                  ; $a02e
  01dfe  3f2e000e              move.w   $e(a6),-(a7)                       
  01e02  4ead024a              jsr      f2_7a2c                            
  01e06  3d40fff0              move.w   d0,-$10(a6)                        
  01e0a  3eae0010              move.w   $10(a6),(a7)                       
  01e0e  4ead024a              jsr      f2_7a2c                            
  01e12  d06efff0              add.w    -$10(a6),d0                        
  01e16  5240                  addq.w   #1,d0                              
  01e18  3c00                  move.w   d0,d6                              
  01e1a  2053                  movea.l  (a3),a0                            
  01e1c  38280014              move.w   $14(a0),d4                         
  01e20  2252                  movea.l  (a2),a1                            
  01e22  36290014              move.w   $14(a1),d3                         
  01e26  3d680012fff4          move.w   $12(a0),-$c(a6)                    
  01e2c  4a47                  tst.w    d7                                 
  01e2e  548f                  addq.l   #2,a7                              
  01e30  6f18                  ble.s    L1e4a                              
  01e32  701e                  moveq    #30,d0                             
  01e34  2253                  movea.l  (a3),a1                            
  01e36  207075b1ffff9906      movea.l  ([-$66fa,a0],d7.w*4,$0),a0         
  01e3e  a02e                  _BlockMove                                  ; $a02e
  01e40  2053                  movea.l  (a3),a0                            
  01e42  3d680012fff2          move.w   $12(a0),-$e(a6)                    
  01e48  600c                  bra.s    L1e56                              
L1e4a:
  01e4a  2079ffff9382          movea.l  g_6c7e,a0                          
  01e50  3d680014fff2          move.w   $14(a0),-$e(a6)                    
L1e56:
  01e56  302e000a              move.w   $a(a6),d0                          
  01e5a  67000136              beq.w    L1f92                              
  01e5e  6a0a                  bpl.s    L1e6a                              
  01e60  5440                  addq.w   #2,d0                              
  01e62  6710                  beq.s    L1e74                              
  01e64  6a78                  bpl.s    L1ede                              
  01e66  6000012c              bra.w    L1f94                              
L1e6a:
  01e6a  5540                  subq.w   #2,d0                              
  01e6c  6706                  beq.s    L1e74                              
  01e6e  6a000124              bpl.w    L1f94                              
  01e72  606a                  bra.s    L1ede                              
L1e74:
  01e74  302e000c              move.w   $c(a6),d0                          
  01e78  6b00011a              bmi.w    L1f94                              
  01e7c  5d40                  subq.w   #6,d0                              
  01e7e  6a000114              bpl.w    L1f94                              
  01e82  5640                  addq.w   #3,d0                              
  01e84  6a08                  bpl.s    L1e8e                              
  01e86  3a3c012c              move.w   #$12c,d5                           
  01e8a  60000108              bra.w    L1f94                              
L1e8e:
  01e8e  3007                  move.w   d7,d0                              
  01e90  6712                  beq.s    L1ea4                              
  01e92  6b000100              bmi.w    L1f94                              
  01e96  5740                  subq.w   #3,d0                              
  01e98  673c                  beq.s    L1ed6                              
  01e9a  6a0000f8              bpl.w    L1f94                              
  01e9e  5240                  addq.w   #1,d0                              
  01ea0  6a16                  bpl.s    L1eb8                              
  01ea2  6008                  bra.s    L1eac                              
L1ea4:
  01ea4  3a3c012c              move.w   #$12c,d5                           
  01ea8  600000ea              bra.w    L1f94                              
L1eac:
  01eac  3a03                  move.w   d3,d5                              
  01eae  9a44                  sub.w    d4,d5                              
  01eb0  0645ffb0              addi.w   #$ffb0,d5                          
  01eb4  600000de              bra.w    L1f94                              
L1eb8:
  01eb8  3a03                  move.w   d3,d5                              
  01eba  9a44                  sub.w    d4,d5                              
  01ebc  0645ffec              addi.w   #$ffec,d5                          
  01ec0  0644fff6              addi.w   #$fff6,d4                          
  01ec4  3003                  move.w   d3,d0                              
  01ec6  9044                  sub.w    d4,d0                              
  01ec8  48c0                  ext.l    d0                                 
  01eca  81c6                  divs.w   d6,d0                              
  01ecc  d044                  add.w    d4,d0                              
  01ece  760a                  moveq    #10,d3                             
  01ed0  d640                  add.w    d0,d3                              
  01ed2  600000c0              bra.w    L1f94                              
L1ed6:
  01ed6  3a03                  move.w   d3,d5                              
  01ed8  9a44                  sub.w    d4,d5                              
  01eda  600000b8              bra.w    L1f94                              
L1ede:
  01ede  302e000c              move.w   $c(a6),d0                          
  01ee2  6712                  beq.s    L1ef6                              
  01ee4  6b0000ae              bmi.w    L1f94                              
  01ee8  5540                  subq.w   #2,d0                              
  01eea  6730                  beq.s    L1f1c                              
  01eec  6b10                  bmi.s    L1efe                              
  01eee  5940                  subq.w   #4,d0                              
  01ef0  6a0000a2              bpl.w    L1f94                              
  01ef4  6046                  bra.s    L1f3c                              
L1ef6:
  01ef6  3a3c00c8              move.w   #$c8,d5                            
  01efa  60000098              bra.w    L1f94                              
L1efe:
  01efe  3007                  move.w   d7,d0                              
  01f00  670c                  beq.s    L1f0e                              
  01f02  6b000090              bmi.w    L1f94                              
  01f06  5540                  subq.w   #2,d0                              
  01f08  6a00008a              bpl.w    L1f94                              
  01f0c  6008                  bra.s    L1f16                              
L1f0e:
  01f0e  3a3c00c8              move.w   #$c8,d5                            
  01f12  60000080              bra.w    L1f94                              
L1f16:
  01f16  3a03                  move.w   d3,d5                              
  01f18  9a44                  sub.w    d4,d5                              
  01f1a  6078                  bra.s    L1f94                              
L1f1c:
  01f1c  3007                  move.w   d7,d0                              
  01f1e  670a                  beq.s    L1f2a                              
  01f20  6b72                  bmi.s    L1f94                              
  01f22  5540                  subq.w   #2,d0                              
  01f24  6710                  beq.s    L1f36                              
  01f26  6a6c                  bpl.s    L1f94                              
  01f28  6006                  bra.s    L1f30                              
L1f2a:
  01f2a  3a3c00c8              move.w   #$c8,d5                            
  01f2e  6064                  bra.s    L1f94                              
L1f30:
  01f30  3a03                  move.w   d3,d5                              
  01f32  9a44                  sub.w    d4,d5                              
  01f34  605e                  bra.s    L1f94                              
L1f36:
  01f36  3a03                  move.w   d3,d5                              
  01f38  9a44                  sub.w    d4,d5                              
  01f3a  6058                  bra.s    L1f94                              
L1f3c:
  01f3c  3007                  move.w   d7,d0                              
  01f3e  670e                  beq.s    L1f4e                              
  01f40  6b52                  bmi.s    L1f94                              
  01f42  5740                  subq.w   #3,d0                              
  01f44  6746                  beq.s    L1f8c                              
  01f46  6a4c                  bpl.s    L1f94                              
  01f48  5240                  addq.w   #1,d0                              
  01f4a  6a24                  bpl.s    L1f70                              
  01f4c  6006                  bra.s    L1f54                              
L1f4e:
  01f4e  3a3c00c8              move.w   #$c8,d5                            
  01f52  6040                  bra.s    L1f94                              
L1f54:
  01f54  3a03                  move.w   d3,d5                              
  01f56  9a44                  sub.w    d4,d5                              
  01f58  0645ffb0              addi.w   #$ffb0,d5                          
  01f5c  0644fff6              addi.w   #$fff6,d4                          
  01f60  3003                  move.w   d3,d0                              
  01f62  9044                  sub.w    d4,d0                              
  01f64  48c0                  ext.l    d0                                 
  01f66  81c6                  divs.w   d6,d0                              
  01f68  d044                  add.w    d4,d0                              
  01f6a  760a                  moveq    #10,d3                             
  01f6c  d640                  add.w    d0,d3                              
  01f6e  6024                  bra.s    L1f94                              
L1f70:
  01f70  3a03                  move.w   d3,d5                              
  01f72  9a44                  sub.w    d4,d5                              
  01f74  0645ffec              addi.w   #$ffec,d5                          
  01f78  0644fff6              addi.w   #$fff6,d4                          
  01f7c  3003                  move.w   d3,d0                              
  01f7e  9044                  sub.w    d4,d0                              
  01f80  48c0                  ext.l    d0                                 
  01f82  81c6                  divs.w   d6,d0                              
  01f84  d044                  add.w    d4,d0                              
  01f86  760a                  moveq    #10,d3                             
  01f88  d640                  add.w    d0,d3                              
  01f8a  6008                  bra.s    L1f94                              
L1f8c:
  01f8c  3a03                  move.w   d3,d5                              
  01f8e  9a44                  sub.w    d4,d5                              
  01f90  6002                  bra.s    L1f94                              
L1f92:
  01f92  7a00                  moveq    #0,d5                              
L1f94:
  01f94  cbee000a              muls.w   $a(a6),d5                          
  01f98  486efff8              pea      -$8(a6)                            
  01f9c  3f04                  move.w   d4,-(a7)                           
  01f9e  3f2efff4              move.w   -$c(a6),-(a7)                      
  01fa2  3f03                  move.w   d3,-(a7)                           
  01fa4  3f2efff2              move.w   -$e(a6),-(a7)                      
  01fa8  a8a7                  _SetRect                                    ; $a8a7
  01faa  486efff8              pea      -$8(a6)                            
  01fae  3f05                  move.w   d5,-(a7)                           
  01fb0  4267                  clr.w    -(a7)                              
  01fb2  a8a8                  _OffsetRect                                 ; $a8a8
  01fb4  2f0c                  move.l   a4,-(a7)                           
  01fb6  486efff8              pea      -$8(a6)                            
  01fba  a8f6                  _DrawPicture                                ; $a8f6
  01fbc  0c470002              cmpi.w   #2,d7                              
  01fc0  6c1c                  bge.s    L1fde                              
  01fc2  4a6e000a              tst.w    $a(a6)                             
  01fc6  6616                  bne.s    L1fde                              
  01fc8  33fc0001ffff97aa      move.w   #1,g_6856                          
  01fd0  41f9ffff9622          lea      g_69de,a0                          
  01fd6  20eefff8              move.l   -$8(a6),(a0)+                      
  01fda  20eefffc              move.l   -$4(a6),(a0)+                      
L1fde:
  01fde  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  01fe2  4e5e                  unlk     a6                                 
  01fe4  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_1fe6
;----------------------------------------------------------------------
f3_1fe6:
  01fe6  4e56ffca              link     a6,#-54                            
  01fea  48e71f18              movem.l  d3/d4/d5/d6/d7/a3/a4,-(a7)         
  01fee  3e2e0008              move.w   $8(a6),d7                          
  01ff2  41eeffca              lea      -$36(a6),a0                        
  01ff6  43f9ffffaa04          lea      g_55fc,a1                          
  01ffc  7007                  moveq    #7,d0                              
L1ffe:
  01ffe  20d9                  move.l   (a1)+,(a0)+                        
  02000  51c8fffc              dbf      d0,L1ffe                           
  02004  302e000e              move.w   $e(a6),d0                          
  02008  323003b0ffff8c78      move.w   (-$7388,za0,d0.w*2),d1             
  02010  06410467              addi.w   #$467,d1                           
  02014  3d41fff4              move.w   d1,-$c(a6)                         
  02018  701e                  moveq    #30,d0                             
  0201a  a122                  _NewHandle                                  ; $a122
  0201c  2848                  movea.l  a0,a4                              
  0201e  701e                  moveq    #30,d0                             
  02020  a122                  _NewHandle                                  ; $a122
  02022  2648                  movea.l  a0,a3                              
  02024  701e                  moveq    #30,d0                             
  02026  2254                  movea.l  (a4),a1                            
  02028  207075b1ffff990a      movea.l  ([-$66f6,a0],d7.w*4,$0),a0         
  02030  a02e                  _BlockMove                                  ; $a02e
  02032  701e                  moveq    #30,d0                             
  02034  2253                  movea.l  (a3),a1                            
  02036  207075b1ffff991e      movea.l  ([-$66e2,a0],d7.w*4,$0),a0         
  0203e  a02e                  _BlockMove                                  ; $a02e
  02040  3007                  move.w   d7,d0                              
  02042  e948                  lsl.w    #4,d0                              
  02044  7240                  moveq    #64,d1                             
  02046  9240                  sub.w    d0,d1                              
  02048  3d41ffea              move.w   d1,-$16(a6)                        
  0204c  2054                  movea.l  (a4),a0                            
  0204e  38280014              move.w   $14(a0),d4                         
  02052  3c04                  move.w   d4,d6                              
  02054  2253                  movea.l  (a3),a1                            
  02056  3a290014              move.w   $14(a1),d5                         
  0205a  3d45ffee              move.w   d5,-$12(a6)                        
  0205e  48c1                  ext.l    d1                                 
  02060  83fc0002              divs.w   #2,d1                              
  02064  30280012              move.w   $12(a0),d0                         
  02068  9041                  sub.w    d1,d0                              
  0206a  3d40fff0              move.w   d0,-$10(a6)                        
  0206e  d06effea              add.w    -$16(a6),d0                        
  02072  3d40fff2              move.w   d0,-$e(a6)                         
  02076  306effea              movea.w  -$16(a6),a0                        
  0207a  2208                  move.l   a0,d1                              
  0207c  83fc0002              divs.w   #2,d1                              
  02080  342effee              move.w   -$12(a6),d2                        
  02084  9446                  sub.w    d6,d2                              
  02086  48c2                  ext.l    d2                                 
  02088  85fc0002              divs.w   #2,d2                              
  0208c  dc42                  add.w    d2,d6                              
  0208e  9c41                  sub.w    d1,d6                              
  02090  322effea              move.w   -$16(a6),d1                        
  02094  d246                  add.w    d6,d1                              
  02096  3d41ffee              move.w   d1,-$12(a6)                        
  0209a  4a47                  tst.w    d7                                 
  0209c  6616                  bne.s    L20b4                              
  0209e  2079ffff9382          movea.l  g_6c7e,a0                          
  020a4  70c0                  moveq    #-64,d0                            
  020a6  d0680014              add.w    $14(a0),d0                         
  020aa  3d40fff0              move.w   d0,-$10(a6)                        
  020ae  3d680014fff2          move.w   $14(a0),-$e(a6)                    
L20b4:
  020b4  486efff8              pea      -$8(a6)                            
  020b8  3f06                  move.w   d6,-(a7)                           
  020ba  3f2efff0              move.w   -$10(a6),-(a7)                     
  020be  3f2effee              move.w   -$12(a6),-(a7)                     
  020c2  3f2efff2              move.w   -$e(a6),-(a7)                      
  020c6  a8a7                  _SetRect                                    ; $a8a7
  020c8  2d7676cafff8          move.l   -$36(a6,d7.w*8),-$8(a6)            
  020ce  2d7676cefffc          move.l   -$32(a6,d7.w*8),-$4(a6)            
  020d4  302e000a              move.w   $a(a6),d0                          
  020d8  5c40                  addq.w   #6,d0                              
  020da  0c40000c              cmpi.w   #$c,d0                             
  020de  620000e2              bhi.w    L21c2                              
  020e2  43fa01ae              lea      L2292(pc),a1                       
  020e6  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  020ea  4ed1                  jmp      (a1)                               
  020ec  363c0190              move.w   #$190,d3                           
  020f0  600000d0              bra.w    L21c2                              
  020f4  302e000c              move.w   $c(a6),d0                          
  020f8  6b0000c8              bmi.w    L21c2                              
  020fc  5d40                  subq.w   #6,d0                              
  020fe  6a0000c2              bpl.w    L21c2                              
  02102  5640                  addq.w   #3,d0                              
  02104  6a08                  bpl.s    L210e                              
  02106  363c012c              move.w   #$12c,d3                           
  0210a  600000b6              bra.w    L21c2                              
L210e:
  0210e  3007                  move.w   d7,d0                              
  02110  6712                  beq.s    L2124                              
  02112  6b0000ae              bmi.w    L21c2                              
  02116  5740                  subq.w   #3,d0                              
  02118  6722                  beq.s    L213c                              
  0211a  6a0000a6              bpl.w    L21c2                              
  0211e  5240                  addq.w   #1,d0                              
  02120  6a12                  bpl.s    L2134                              
  02122  6008                  bra.s    L212c                              
L2124:
  02124  363c012c              move.w   #$12c,d3                           
  02128  60000098              bra.w    L21c2                              
L212c:
  0212c  3605                  move.w   d5,d3                              
  0212e  9644                  sub.w    d4,d3                              
  02130  60000090              bra.w    L21c2                              
L2134:
  02134  3605                  move.w   d5,d3                              
  02136  9644                  sub.w    d4,d3                              
  02138  60000088              bra.w    L21c2                              
L213c:
  0213c  3605                  move.w   d5,d3                              
  0213e  9644                  sub.w    d4,d3                              
  02140  60000080              bra.w    L21c2                              
  02144  302e000c              move.w   $c(a6),d0                          
  02148  670e                  beq.s    L2158                              
  0214a  6b76                  bmi.s    L21c2                              
  0214c  5540                  subq.w   #2,d0                              
  0214e  6726                  beq.s    L2176                              
  02150  6b0c                  bmi.s    L215e                              
  02152  5940                  subq.w   #4,d0                              
  02154  6a6c                  bpl.s    L21c2                              
  02156  603e                  bra.s    L2196                              
L2158:
  02158  363c0190              move.w   #$190,d3                           
  0215c  6064                  bra.s    L21c2                              
L215e:
  0215e  3007                  move.w   d7,d0                              
  02160  6708                  beq.s    L216a                              
  02162  6b5e                  bmi.s    L21c2                              
  02164  5540                  subq.w   #2,d0                              
  02166  6a5a                  bpl.s    L21c2                              
  02168  6006                  bra.s    L2170                              
L216a:
  0216a  363c0190              move.w   #$190,d3                           
  0216e  6052                  bra.s    L21c2                              
L2170:
  02170  3605                  move.w   d5,d3                              
  02172  9644                  sub.w    d4,d3                              
  02174  604c                  bra.s    L21c2                              
L2176:
  02176  3007                  move.w   d7,d0                              
  02178  670a                  beq.s    L2184                              
  0217a  6b46                  bmi.s    L21c2                              
  0217c  5540                  subq.w   #2,d0                              
  0217e  6710                  beq.s    L2190                              
  02180  6a40                  bpl.s    L21c2                              
  02182  6006                  bra.s    L218a                              
L2184:
  02184  363c0190              move.w   #$190,d3                           
  02188  6038                  bra.s    L21c2                              
L218a:
  0218a  3605                  move.w   d5,d3                              
  0218c  9644                  sub.w    d4,d3                              
  0218e  6032                  bra.s    L21c2                              
L2190:
  02190  3605                  move.w   d5,d3                              
  02192  9644                  sub.w    d4,d3                              
  02194  602c                  bra.s    L21c2                              
L2196:
  02196  3007                  move.w   d7,d0                              
  02198  670e                  beq.s    L21a8                              
  0219a  6b26                  bmi.s    L21c2                              
  0219c  5740                  subq.w   #3,d0                              
  0219e  671a                  beq.s    L21ba                              
  021a0  6a20                  bpl.s    L21c2                              
  021a2  5240                  addq.w   #1,d0                              
  021a4  6a0e                  bpl.s    L21b4                              
  021a6  6006                  bra.s    L21ae                              
L21a8:
  021a8  363c0190              move.w   #$190,d3                           
  021ac  6014                  bra.s    L21c2                              
L21ae:
  021ae  3605                  move.w   d5,d3                              
  021b0  9644                  sub.w    d4,d3                              
  021b2  600e                  bra.s    L21c2                              
L21b4:
  021b4  3605                  move.w   d5,d3                              
  021b6  9644                  sub.w    d4,d3                              
  021b8  6008                  bra.s    L21c2                              
L21ba:
  021ba  3605                  move.w   d5,d3                              
  021bc  9644                  sub.w    d4,d3                              
  021be  6002                  bra.s    L21c2                              
  021c0  7600                  moveq    #0,d3                              
L21c2:
  021c2  c7ee000a              muls.w   $a(a6),d3                          
  021c6  486efff8              pea      -$8(a6)                            
  021ca  3f03                  move.w   d3,-(a7)                           
  021cc  4267                  clr.w    -(a7)                              
  021ce  a8a8                  _OffsetRect                                 ; $a8a8
  021d0  3d7c0001ffec          move.w   #1,-$14(a6)                        
  021d6  6038                  bra.s    L2210                              
L21d8:
  021d8  302effec              move.w   -$14(a6),d0                        
  021dc  303007b0ffff9674      move.w   (-$698c,za0,d0.w*8),d0             
  021e4  b06efffa              cmp.w    -$6(a6),d0                         
  021e8  6622                  bne.s    L220c                              
  021ea  302effec              move.w   -$14(a6),d0                        
  021ee  303007b0ffff9676      move.w   (-$698a,za0,d0.w*8),d0             
  021f6  b06efffc              cmp.w    -$4(a6),d0                         
  021fa  6610                  bne.s    L220c                              
  021fc  486efff8              pea      -$8(a6)                            
  02200  302effee              move.w   -$12(a6),d0                        
  02204  9046                  sub.w    d6,d0                              
  02206  3f00                  move.w   d0,-(a7)                           
  02208  4267                  clr.w    -(a7)                              
  0220a  a8a8                  _OffsetRect                                 ; $a8a8
L220c:
  0220c  526effec              addq.w   #1,-$14(a6)                        
L2210:
  02210  302effec              move.w   -$14(a6),d0                        
  02214  b079ffff8e0a          cmp.w    g_71f6,d0                          
  0221a  6fbc                  ble.s    L21d8                              
  0221c  3f2efff4              move.w   -$c(a6),-(a7)                      
  02220  486efff8              pea      -$8(a6)                            
  02224  4ead06d2              jsr      f7_1a72                            
  02228  5279ffff97e0          addq.w   #1,g_6820                          
  0222e  3039ffff97e0          move.w   g_6820,d0                          
  02234  41f007b0ffff96c2      lea      (-$693e,za0,d0.w*8),a0             
  0223c  20eefff8              move.l   -$8(a6),(a0)+                      
  02240  20eefffc              move.l   -$4(a6),(a0)+                      
  02244  31ae000e03b0ffff8e0c  move.w   $e(a6),(-$71f4,za0,d0.w*2)         
  0224e  0c470002              cmpi.w   #2,d7                              
  02252  5c8f                  addq.l   #6,a7                              
  02254  6c2c                  bge.s    L2282                              
  02256  4a6e000a              tst.w    $a(a6)                             
  0225a  6626                  bne.s    L2282                              
  0225c  5279ffff8e0a          addq.w   #1,g_71f6                          
  02262  3039ffff8e0a          move.w   g_71f6,d0                          
  02268  31ae000e03b0ffff97be  move.w   $e(a6),(-$6842,za0,d0.w*2)         
  02272  41f007b0ffff9672      lea      (-$698e,za0,d0.w*8),a0             
  0227a  20eefff8              move.l   -$8(a6),(a0)+                      
  0227e  20eefffc              move.l   -$4(a6),(a0)+                      
L2282:
  02282  204c                  movea.l  a4,a0                              
  02284  a023                  _DisposeHandle                              ; $a023
  02286  204b                  movea.l  a3,a0                              
  02288  a023                  _DisposeHandle                              ; $a023
  0228a  4cdf18f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a3/a4         
  0228e  4e5e                  unlk     a6                                 
  02290  4e75                  rts                                         
  02292  fe5a                  dc.w     $fe5a                              
  02294  fe5a                  dc.w     $fe5a                              
  02296  fe5a                  dc.w     $fe5a                              
  02298  fe5a                  dc.w     $fe5a                              
  0229a  fe62                  dc.w     $fe62                              
  0229c  feb2                  dc.w     $feb2                              
  0229e  ff2e                  dc.w     $ff2e                              
  022a0  feb2                  dc.w     $feb2                              
  022a2  fe62                  dc.w     $fe62                              
  022a4  fe5a                  dc.w     $fe5a                              
  022a6  fe5a                  dc.w     $fe5a                              
  022a8  fe5a                  dc.w     $fe5a                              
  022aa  fe5a                  dc.w     $fe5a                              

;----------------------------------------------------------------------
; f3_22ac   [jump table #81]
;----------------------------------------------------------------------
f3_22ac:
  022ac  4e560000              link     a6,#0                              
  022b0  3f3c00e7              move.w   #$e7,-(a7)                         
  022b4  1f2e000a              move.b   $a(a6),-(a7)                       
  022b8  3f3c0003              move.w   #3,-(a7)                           
  022bc  42a7                  clr.l    -(a7)                              
  022be  42a7                  clr.l    -(a7)                              
  022c0  42a7                  clr.l    -(a7)                              
  022c2  2f3cffff8870          move.l   #$ffff8870,-(a7)                   
  022c8  2f3cffff887c          move.l   #$ffff887c,-(a7)                   
  022ce  2f3cffff8da4          move.l   #$ffff8da4,-(a7)                   
  022d4  3f2e0008              move.w   $8(a6),-(a7)                       
  022d8  4ead0082              jsr      f2_0b70                            
  022dc  4e5e                  unlk     a6                                 
  022de  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_22e0   [jump table #82]
;----------------------------------------------------------------------
f3_22e0:
  022e0  4e56fe50              link     a6,#-432                           
  022e4  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  022e8  3e2e0008              move.w   $8(a6),d7                          
  022ec  7c00                  moveq    #0,d6                              
  022ee  3079ffff836c          movea.w  g_7c94,a0                          
  022f4  2808                  move.l   a0,d4                              
  022f6  89fc0015              divs.w   #$15,d4                            
  022fa  3079ffff836e          movea.w  g_7c92,a0                          
  02300  76f1                  moveq    #-15,d3                            
  02302  d688                  add.l    a0,d3                              
  02304  87fc0015              divs.w   #$15,d3                            
  02308  7012                  moveq    #18,d0                             
  0230a  c1c4                  muls.w   d4,d0                              
  0230c  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  02312  3043                  movea.w  d3,a0                              
  02314  d1c8                  adda.l   a0,a0                              
  02316  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  0231a  4ead024a              jsr      f2_7a2c                            
  0231e  3a00                  move.w   d0,d5                              
  02320  4a39ffff981e          tst.b    g_67e2                             
  02326  548f                  addq.l   #2,a7                              
  02328  66000126              bne.w    L2450                              
  0232c  4a79ffff8370          tst.w    g_7c90                             
  02332  6f00011c              ble.w    L2450                              
  02336  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  0233c  a851                  _SetCursor                                  ; $a851
  0233e  11bc000171b0ffff97e4  move.b   #1,(-$681c,za0,d7.w)               
  02348  0c470001              cmpi.w   #1,d7                              
  0234c  6d000102              blt.w    L2450                              
  02350  0c470064              cmpi.w   #$64,d7                            
  02354  6e0000fa              bgt.w    L2450                              
  02358  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  02360  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  02368  4ead05fa              jsr      f6_0130                            
  0236c  1c00                  move.b   d0,d6                              
  0236e  4a06                  tst.b    d6                                 
  02370  588f                  addq.l   #4,a7                              
  02372  6710                  beq.s    L2384                              
  02374  486efe50              pea      -$1b0(a6)                          
  02378  2f3c000202bb          move.l   #$202bb,-(a7)                      
  0237e  4ead0522              jsr      f4_153c                            
  02382  600e                  bra.s    L2392                              
L2384:
  02384  486efe50              pea      -$1b0(a6)                          
  02388  2f3c000102bb          move.l   #$102bb,-(a7)                      
  0238e  4ead0522              jsr      f4_153c                            
L2392:
  02392  486efe50              pea      -$1b0(a6)                          
  02396  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  0239e  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  023a6  2f3c00000216          move.l   STR_0216,-(a7)                     ; "?"
  023ac  2f3c00000218          move.l   STR_0218,-(a7)                     ; "?"
  023b2  a98b                  _ParamText                                  ; $a98b
  023b4  42a7                  clr.l    -(a7)                              
  023b6  3f2e000a              move.w   $a(a6),-(a7)                       
  023ba  486eff56              pea      -$aa(a6)                           
  023be  4878ffff              pea      ($ffff).w                          
  023c2  a97c                  _GetNewDialog                               ; $a97c
  023c4  285f                  movea.l  (a7)+,a4                           
  023c6  2f0c                  move.l   a4,-(a7)                           
  023c8  4ead06ba              jsr      f7_161c                            
  023cc  2e8c                  move.l   a4,(a7)                            
  023ce  a915                  _ShowWindow                                 ; $a915
  023d0  2f0c                  move.l   a4,-(a7)                           
  023d2  a981                  _DrawDialog                                 ; $a981
L23d4:
  023d4  42a7                  clr.l    -(a7)                              
  023d6  486eff54              pea      -$ac(a6)                           
  023da  a991                  _ModalDialog                                ; $a991
  023dc  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  023e2  66f0                  bne.s    L23d4                              
  023e4  2f0c                  move.l   a4,-(a7)                           
  023e6  a983                  _DisposeDialog                              ; $a983
  023e8  13fc0001ffff981e      move.b   #1,g_67e2                          
  023f0  4ead01ca              jsr      f2_6b56                            
  023f4  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  023fa  a873                  _SetPort                                    ; $a873
  023fc  31b9ffff836c73b0ffff  move.w   g_7c94,(-$73dc,za0,d7.w*2)         
  02408  31b9ffff836e73b0ffff  move.w   g_7c92,(-$73b2,za0,d7.w*2)         
  02414  1f3c0001              move.b   #1,-(a7)                           
  02418  3f05                  move.w   d5,-(a7)                           
  0241a  4ead016a              jsr      f2_549e                            
  0241e  3eae000c              move.w   $c(a6),(a7)                        
  02422  3f07                  move.w   d7,-(a7)                           
  02424  4ead05ea              jsr      f5_4122                            
  02428  4239ffff981e          clr.b    g_67e2                             
  0242e  4a79ffff8372          tst.w    g_7c8e                             
  02434  5c8f                  addq.l   #6,a7                              
  02436  6e18                  bgt.s    L2450                              
  02438  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  0243e  a916                  _HideWindow                                 ; $a916
  02440  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02446  a916                  _HideWindow                                 ; $a916
  02448  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  0244e  a916                  _HideWindow                                 ; $a916
L2450:
  02450  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  02454  4e5e                  unlk     a6                                 
  02456  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_2458   [jump table #83]
;----------------------------------------------------------------------
f3_2458:
  02458  4e56ffde              link     a6,#-34                            
  0245c  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  02460  7800                  moveq    #0,d4                              
  02462  302e000a              move.w   $a(a6),d0                          
  02466  2d7007b0ffff9672ffe2  move.l   (-$698e,za0,d0.w*8),-$1e(a6)       
  02470  2d7007b0ffff9676ffe6  move.l   (-$698a,za0,d0.w*8),-$1a(a6)       
  0247a  7600                  moveq    #0,d3                              
  0247c  7a00                  moveq    #0,d5                              
  0247e  42a7                  clr.l    -(a7)                              
  02480  a975                  _TickCount                                  ; $a975
  02482  2d5fffde              move.l   (a7)+,-$22(a6)                     
  02486  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  0248c  201f                  move.l   (a7)+,d0                           
  0248e  a032                  _FlushEvents                                ; $a032
  02490  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02496  a873                  _SetPort                                    ; $a873
L2498:
  02498  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  0249e  a873                  _SetPort                                    ; $a873
  024a0  486efff2              pea      -$e(a6)                            
  024a4  a972                  _GetMouse                                   ; $a972
  024a6  4227                  clr.b    -(a7)                              
  024a8  2f2efff2              move.l   -$e(a6),-(a7)                      
  024ac  486effe2              pea      -$1e(a6)                           
  024b0  a8ad                  _PtInRect                                   ; $a8ad
  024b2  4a1f                  tst.b    (a7)+                              
  024b4  670c                  beq.s    L24c2                              
  024b6  2079ffff8e76          movea.l  g_718a,a0                          
  024bc  2f10                  move.l   (a0),-(a7)                         
  024be  a851                  _SetCursor                                  ; $a851
  024c0  6008                  bra.s    L24ca                              
L24c2:
  024c2  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  024c8  a851                  _SetCursor                                  ; $a851
L24ca:
  024ca  4227                  clr.b    -(a7)                              
  024cc  3f3c0042              move.w   #$42,-(a7)                         
  024d0  2f3cffff8e20          move.l   #$ffff8e20,-(a7)                   
  024d6  a970                  _GetNextEvent                               ; $a970
  024d8  7e00                  moveq    #0,d7                              
  024da  1e1f                  move.b   (a7)+,d7                           
  024dc  3039ffff8e20          move.w   g_71e0,d0                          
  024e2  6700018a              beq.w    L266e                              
  024e6  6b000186              bmi.w    L266e                              
  024ea  5d40                  subq.w   #6,d0                              
  024ec  6700016e              beq.w    L265c                              
  024f0  6a00017c              bpl.w    L266e                              
  024f4  5840                  addq.w   #4,d0                              
  024f6  6a000176              bpl.w    L266e                              
  024fa  4267                  clr.w    -(a7)                              
  024fc  2f39ffff8e2a          move.l   g_71d6,-(a7)                       
  02502  486effea              pea      -$16(a6)                           
  02506  a92c                  _FindWindow                                 ; $a92c
  02508  3c1f                  move.w   (a7)+,d6                           
  0250a  2d79ffff8e2afff2      move.l   g_71d6,-$e(a6)                     
  02512  486efff2              pea      -$e(a6)                            
  02516  a871                  _GlobalToLocal                              ; $a871
  02518  4227                  clr.b    -(a7)                              
  0251a  2f2efff2              move.l   -$e(a6),-(a7)                      
  0251e  486effe2              pea      -$1e(a6)                           
  02522  a8ad                  _PtInRect                                   ; $a8ad
  02524  4a1f                  tst.b    (a7)+                              
  02526  6720                  beq.s    L2548                              
  02528  202effea              move.l   -$16(a6),d0                        
  0252c  b0b9ffff9382          cmp.l    g_6c7e,d0                          
  02532  6614                  bne.s    L2548                              
  02534  7601                  moveq    #1,d3                              
  02536  3f2e000c              move.w   $c(a6),-(a7)                       
  0253a  486effe2              pea      -$1e(a6)                           
  0253e  3f2e0008              move.w   $8(a6),-(a7)                       
  02542  4eba013a              jsr      f3_267e                            
  02546  508f                  addq.l   #8,a7                              
L2548:
  02548  4227                  clr.b    -(a7)                              
  0254a  2f2efff2              move.l   -$e(a6),-(a7)                      
  0254e  2f2e000e              move.l   $e(a6),-(a7)                       
  02552  a8ad                  _PtInRect                                   ; $a8ad
  02554  4a1f                  tst.b    (a7)+                              
  02556  6732                  beq.s    L258a                              
  02558  202effea              move.l   -$16(a6),d0                        
  0255c  b0b9ffff9382          cmp.l    g_6c7e,d0                          
  02562  6626                  bne.s    L258a                              
  02564  7601                  moveq    #1,d3                              
  02566  42a7                  clr.l    -(a7)                              
  02568  3f3c0091              move.w   #$91,-(a7)                         
  0256c  a9bc                  _GetPicture                                 ; $a9bc
  0256e  285f                  movea.l  (a7)+,a4                           
  02570  2f0c                  move.l   a4,-(a7)                           
  02572  2f2e000e              move.l   $e(a6),-(a7)                       
  02576  a8f6                  _DrawPicture                                ; $a8f6
  02578  43eefff6              lea      -$a(a6),a1                         
  0257c  307c000f              movea.w  #$f,a0                             
  02580  a03b                  _Delay                                      ; $a03b
  02582  2280                  move.l   d0,(a1)                            
  02584  7a01                  moveq    #1,d5                              
  02586  2f0c                  move.l   a4,-(a7)                           
  02588  a9a3                  _ReleaseResource                            ; $a9a3
L258a:
  0258a  202effea              move.l   -$16(a6),d0                        
  0258e  b0b9ffff8fd6          cmp.l    g_702a,d0                          
  02594  670e                  beq.s    L25a4                              
  02596  202effea              move.l   -$16(a6),d0                        
  0259a  b0b9ffff8fc2          cmp.l    g_703e,d0                          
  025a0  660000cc              bne.w    L266e                              
L25a4:
  025a4  42a7                  clr.l    -(a7)                              
  025a6  a975                  _TickCount                                  ; $a975
  025a8  201f                  move.l   (a7)+,d0                           
  025aa  9084                  sub.l    d4,d0                              
  025ac  721e                  moveq    #30,d1                             
  025ae  b280                  cmp.l    d0,d1                              
  025b0  6412                  bcc.s    L25c4                              
  025b2  42a7                  clr.l    -(a7)                              
  025b4  a975                  _TickCount                                  ; $a975
  025b6  281f                  move.l   (a7)+,d4                           
  025b8  2d79ffff8e2affee      move.l   g_71d6,-$12(a6)                    
  025c0  600000ac              bra.w    L266e                              
L25c4:
  025c4  3039ffff8e2c          move.w   g_71d4,d0                          
  025ca  906efff0              sub.w    -$10(a6),d0                        
  025ce  3f00                  move.w   d0,-(a7)                           
  025d0  4ead024a              jsr      f2_7a2c                            
  025d4  5740                  subq.w   #3,d0                              
  025d6  548f                  addq.l   #2,a7                              
  025d8  6c72                  bge.s    L264c                              
  025da  3039ffff8e2a          move.w   g_71d6,d0                          
  025e0  906effee              sub.w    -$12(a6),d0                        
  025e4  3f00                  move.w   d0,-(a7)                           
  025e6  4ead024a              jsr      f2_7a2c                            
  025ea  5740                  subq.w   #3,d0                              
  025ec  548f                  addq.l   #2,a7                              
  025ee  6c5c                  bge.s    L264c                              
  025f0  42a7                  clr.l    -(a7)                              
  025f2  a975                  _TickCount                                  ; $a975
  025f4  201f                  move.l   (a7)+,d0                           
  025f6  9084                  sub.l    d4,d0                              
  025f8  721e                  moveq    #30,d1                             
  025fa  b280                  cmp.l    d0,d1                              
  025fc  654e                  bcs.s    L264c                              
  025fe  202effea              move.l   -$16(a6),d0                        
  02602  b0b9ffff8fd6          cmp.l    g_702a,d0                          
  02608  661a                  bne.s    L2624                              
  0260a  1f3c00ff              move.b   #$ff,-(a7)                         
  0260e  4ebae51a              jsr      f3_0b2a                            
  02612  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  0261a  5279ffff3ace          addq.w   #1,g_c532                          
  02620  7601                  moveq    #1,d3                              
  02622  548f                  addq.l   #2,a7                              
L2624:
  02624  202effea              move.l   -$16(a6),d0                        
  02628  b0b9ffff8fc2          cmp.l    g_703e,d0                          
  0262e  663e                  bne.s    L266e                              
  02630  1f3c00fe              move.b   #$fe,-(a7)                         
  02634  4ebae4f4              jsr      f3_0b2a                            
  02638  13fc0001ffff3b1e      move.b   #1,g_c4e2                          
  02640  5279ffff3ace          addq.w   #1,g_c532                          
  02646  7601                  moveq    #1,d3                              
  02648  548f                  addq.l   #2,a7                              
  0264a  6022                  bra.s    L266e                              
L264c:
  0264c  42a7                  clr.l    -(a7)                              
  0264e  a975                  _TickCount                                  ; $a975
  02650  281f                  move.l   (a7)+,d4                           
  02652  2d79ffff8e2affee      move.l   g_71d6,-$12(a6)                    
  0265a  6012                  bra.s    L266e                              
L265c:
  0265c  2d79ffff8e22ffea      move.l   g_71de,-$16(a6)                    
  02664  2f2effea              move.l   -$16(a6),-(a7)                     
  02668  4ead0532              jsr      f5_146e                            
  0266c  588f                  addq.l   #4,a7                              
L266e:
  0266e  4a03                  tst.b    d3                                 
  02670  6700fe26              beq.w    L2498                              
  02674  1005                  move.b   d5,d0                              
  02676  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  0267a  4e5e                  unlk     a6                                 
  0267c  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_267e
;----------------------------------------------------------------------
f3_267e:
  0267e  4e560000              link     a6,#0                              
  02682  48e70f08              movem.l  d4/d5/d6/d7/a4,-(a7)               
  02686  3e2e0008              move.w   $8(a6),d7                          
  0268a  286e000a              movea.l  $a(a6),a4                          
  0268e  11bc000171b0ffff97e4  move.b   #1,(-$681c,za0,d7.w)               
  02698  11bc000171b0ffff97f9  move.b   #1,(-$6807,za0,d7.w)               
  026a2  3f3c0006              move.w   #6,-(a7)                           
  026a6  4ead0242              jsr      f2_79a8                            
  026aa  3c00                  move.w   d0,d6                              
  026ac  3ebc0006              move.w   #6,(a7)                            
  026b0  4ead0242              jsr      f2_79a8                            
  026b4  3a00                  move.w   d0,d5                              
  026b6  ba46                  cmp.w    d6,d5                              
  026b8  548f                  addq.l   #2,a7                              
  026ba  6e44                  bgt.s    L2700                              
  026bc  2f0c                  move.l   a4,-(a7)                           
  026be  3f07                  move.w   d7,-(a7)                           
  026c0  3f2e000e              move.w   $e(a6),-(a7)                       
  026c4  4eba3b6c              jsr      f3_6232                            
  026c8  4a7073b0ffff8c78      tst.w    (-$7388,za0,d7.w*2)                
  026d0  508f                  addq.l   #8,a7                              
  026d2  6776                  beq.s    L274a                              
  026d4  7801                  moveq    #1,d4                              
  026d6  601e                  bra.s    L26f6                              
L26d8:
  026d8  4a3041b0ffff97f9      tst.b    (-$6807,za0,d4.w)                  
  026e0  670a                  beq.s    L26ec                              
  026e2  2f0c                  move.l   a4,-(a7)                           
  026e4  3f07                  move.w   d7,-(a7)                           
  026e6  4eba070a              jsr      f3_2df2                            
  026ea  5c8f                  addq.l   #6,a7                              
L26ec:
  026ec  4a79ffff8370          tst.w    g_7c90                             
  026f2  6f56                  ble.s    L274a                              
  026f4  5244                  addq.w   #1,d4                              
L26f6:
  026f6  b879ffff883e          cmp.w    g_77c2,d4                          
  026fc  6fda                  ble.s    L26d8                              
  026fe  604a                  bra.s    L274a                              
L2700:
  02700  7801                  moveq    #1,d4                              
  02702  6028                  bra.s    L272c                              
L2704:
  02704  4a3041b0ffff97f9      tst.b    (-$6807,za0,d4.w)                  
  0270c  6714                  beq.s    L2722                              
  0270e  4a7043b0ffff8c78      tst.w    (-$7388,za0,d4.w*2)                
  02716  670a                  beq.s    L2722                              
  02718  2f0c                  move.l   a4,-(a7)                           
  0271a  3f04                  move.w   d4,-(a7)                           
  0271c  4eba06d4              jsr      f3_2df2                            
  02720  5c8f                  addq.l   #6,a7                              
L2722:
  02722  4a79ffff8370          tst.w    g_7c90                             
  02728  6f20                  ble.s    L274a                              
  0272a  5244                  addq.w   #1,d4                              
L272c:
  0272c  b879ffff883e          cmp.w    g_77c2,d4                          
  02732  6fd0                  ble.s    L2704                              
  02734  2f0c                  move.l   a4,-(a7)                           
  02736  3f07                  move.w   d7,-(a7)                           
  02738  3f2e000e              move.w   $e(a6),-(a7)                       
  0273c  4eba3af4              jsr      f3_6232                            
  02740  4a7073b0ffff8c78      tst.w    (-$7388,za0,d7.w*2)                
  02748  508f                  addq.l   #8,a7                              
L274a:
  0274a  4cdf10f0              movem.l  (a7)+,d4/d5/d6/d7/a4               
  0274e  4e5e                  unlk     a6                                 
  02750  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_2752
;----------------------------------------------------------------------
f3_2752:
  02752  4e56ff12              link     a6,#-238                           
  02756  48e70118              movem.l  d7/a3/a4,-(a7)                     
  0275a  49eeff86              lea      -$7a(a6),a4                        
  0275e  42aeff5e              clr.l    -$a2(a6)                           
  02762  426eff62              clr.w    -$9e(a6)                           
  02766  41eeff12              lea      -$ee(a6),a0                        
  0276a  2d48ff64              move.l   a0,-$9c(a6)                        
  0276e  2d7c4552494bff6e      move.l   #$4552494b,-$92(a6)                
  02776  42aeff52              clr.l    -$ae(a6)                           
  0277a  3d7c0002ff56          move.w   #2,-$aa(a6)                        
  02780  701c                  moveq    #28,d0                             
  02782  a11e                  _NewPtr                                     ; $a11e
  02784  2648                  movea.l  a0,a3                              
  02786  200b                  move.l   a3,d0                              
  02788  0c40ff94              cmpi.w   #$ff94,d0                          
  0278c  6610                  bne.s    L279e                              
  0278e  2f3c0000021a          move.l   STR_021a,-(a7)                     ; "NewPtr"
  02794  200b                  move.l   a3,d0                              
  02796  3f00                  move.w   d0,-(a7)                           
  02798  4ead06ca              jsr      f7_18ec                            
  0279c  5c8f                  addq.l   #6,a7                              
L279e:
  0279e  41eeff52              lea      -$ae(a6),a0                        
  027a2  a214                  _GetVol.clear                               ; $a214
  027a4  3e00                  move.w   d0,d7                              
  027a6  4a47                  tst.w    d7                                 
  027a8  6712                  beq.s    L27bc                              
  027aa  2f3c00000222          move.l   STR_0222,-(a7)                     ; "PBHGetVol"
  027b0  3f07                  move.w   d7,-(a7)                           
  027b2  4ead06ca              jsr      f7_18ec                            
  027b6  204b                  movea.l  a3,a0                              
  027b8  a01f                  _DisposePtr                                 ; $a01f
  027ba  5c8f                  addq.l   #6,a7                              
L27bc:
  027bc  33eeff68ffffa7a2      move.w   -$98(a6),g_585e                    
  027c4  33eeff84ffffa7a4      move.w   -$7c(a6),g_585c                    
  027cc  41eeff12              lea      -$ee(a6),a0                        
  027d0  2d48ff98              move.l   a0,-$68(a6)                        
  027d4  426eff9c              clr.w    -$64(a6)                           
  027d8  3d7c0001ffa2          move.w   #1,-$5e(a6)                        
  027de  42b9ffff9820          clr.l    g_67e0                             
L27e4:
  027e4  204c                  movea.l  a4,a0                              
  027e6  a207                  _GetVolInfo.clear                           ; $a207
  027e8  4a40                  tst.w    d0                                 
  027ea  6628                  bne.s    L2814                              
  027ec  4ab9ffff9820          tst.l    g_67e0                             
  027f2  6620                  bne.s    L2814                              
  027f4  4aaeffe0              tst.l    -$20(a6)                           
  027f8  6f10                  ble.s    L280a                              
  027fa  23eeffe0ffff9820      move.l   -$20(a6),g_67e0                    
  02802  33eeff9cffffa7a2      move.w   -$64(a6),g_585e                    
L280a:
  0280a  426eff9c              clr.w    -$64(a6)                           
  0280e  526effa2              addq.w   #1,-$5e(a6)                        
  02812  60d0                  bra.s    L27e4                              
L2814:
  02814  4cdf1880              movem.l  (a7)+,d7/a3/a4                     
  02818  4e5e                  unlk     a6                                 
  0281a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_281c   [jump table #84]
;----------------------------------------------------------------------
f3_281c:
  0281c  4e560000              link     a6,#0                              
  02820  48e70700              movem.l  d5/d6/d7,-(a7)                     
  02824  7e00                  moveq    #0,d7                              
  02826  7a01                  moveq    #1,d5                              
  02828  6010                  bra.s    L283a                              
L282a:
  0282a  4a3051b0ffff980f      tst.b    (-$67f1,za0,d5.w)                  
  02832  6704                  beq.s    L2838                              
  02834  7e01                  moveq    #1,d7                              
  02836  6008                  bra.s    L2840                              
L2838:
  02838  5245                  addq.w   #1,d5                              
L283a:
  0283a  0c45000e              cmpi.w   #$e,d5                             
  0283e  6dea                  blt.s    L282a                              
L2840:
  02840  4a07                  tst.b    d7                                 
  02842  660c                  bne.s    L2850                              
  02844  4ead064a              jsr      f6_1c8c                            
  02848  4eba22aa              jsr      f3_4af4                            
  0284c  4ebaffce              jsr      f3_281c                            
L2850:
  02850  42780a9a              clr.w    ($a9a).w                           
L2854:
  02854  7e00                  moveq    #0,d7                              
  02856  7c00                  moveq    #0,d6                              
L2858:
  02858  3f3c000d              move.w   #$d,-(a7)                          
  0285c  4ead0242              jsr      f2_79a8                            
  02860  3a00                  move.w   d0,d5                              
  02862  548f                  addq.l   #2,a7                              
  02864  4a3051b0ffff980f      tst.b    (-$67f1,za0,d5.w)                  
  0286c  67ea                  beq.s    L2858                              
  0286e  0c45000d              cmpi.w   #$d,d5                             
  02872  6200010c              bhi.w    L2980                              
  02876  43fa017a              lea      L29f2(pc),a1                       
  0287a  d2f15200              adda.w   $0(a1,d5.w*2),a1                   
  0287e  4ed1                  jmp      (a1)                               
  02880  42a7                  clr.l    -(a7)                              
  02882  2f3c01000100          move.l   #$1000100,-(a7)                    
  02888  4ead0102              jsr      f2_33a2                            
  0288c  1e00                  move.b   d0,d7                              
  0288e  7c01                  moveq    #1,d6                              
  02890  508f                  addq.l   #8,a7                              
  02892  600000ec              bra.w    L2980                              
  02896  42a7                  clr.l    -(a7)                              
  02898  48780100              pea      ($100).w                           
  0289c  4227                  clr.b    -(a7)                              
  0289e  4ead066a              jsr      f6_23e0                            
  028a2  1e00                  move.b   d0,d7                              
  028a4  7c01                  moveq    #1,d6                              
  028a6  4fef000a              lea      $a(a7),a7                          
  028aa  600000d4              bra.w    L2980                              
  028ae  42a7                  clr.l    -(a7)                              
  028b0  48780100              pea      ($100).w                           
  028b4  4ead044a              jsr      f4_4d78                            
  028b8  1e00                  move.b   d0,d7                              
  028ba  7c01                  moveq    #1,d6                              
  028bc  508f                  addq.l   #8,a7                              
  028be  600000c0              bra.w    L2980                              
  028c2  42a7                  clr.l    -(a7)                              
  028c4  4227                  clr.b    -(a7)                              
  028c6  3f3c0002              move.w   #2,-(a7)                           
  028ca  4ead0242              jsr      f2_79a8                            
  028ce  5300                  subq.b   #1,d0                              
  028d0  1e80                  move.b   d0,(a7)                            
  028d2  4ead0682              jsr      f6_3048                            
  028d6  1e00                  move.b   d0,d7                              
  028d8  7c01                  moveq    #1,d6                              
  028da  508f                  addq.l   #8,a7                              
  028dc  600000a2              bra.w    L2980                              
  028e0  0c790006ffff8894      cmpi.w   #6,g_776c                          
  028e8  6c04                  bge.s    L28ee                              
  028ea  7a02                  moveq    #2,d5                              
  028ec  603c                  bra.s    L292a                              
L28ee:
  028ee  0c790005ffff8894      cmpi.w   #5,g_776c                          
  028f6  6f0e                  ble.s    L2906                              
  028f8  0c79000bffff8894      cmpi.w   #$b,g_776c                         
  02900  6c04                  bge.s    L2906                              
  02902  7a03                  moveq    #3,d5                              
  02904  6024                  bra.s    L292a                              
L2906:
  02906  0c79000affff8894      cmpi.w   #$a,g_776c                         
  0290e  6f0e                  ble.s    L291e                              
  02910  0c790010ffff8894      cmpi.w   #$10,g_776c                        
  02918  6c04                  bge.s    L291e                              
  0291a  7a04                  moveq    #4,d5                              
  0291c  600c                  bra.s    L292a                              
L291e:
  0291e  0c79000fffff8894      cmpi.w   #$f,g_776c                         
  02926  6f02                  ble.s    L292a                              
  02928  7a05                  moveq    #5,d5                              
L292a:
  0292a  2f3cffff0000          move.l   #$ffff0000,-(a7)                   
  02930  1f3c0001              move.b   #1,-(a7)                           
  02934  3f05                  move.w   d5,-(a7)                           
  02936  4ead052a              jsr      f5_0b38                            
  0293a  1e00                  move.b   d0,d7                              
  0293c  7c01                  moveq    #1,d6                              
  0293e  508f                  addq.l   #8,a7                              
  02940  603e                  bra.s    L2980                              
  02942  42a7                  clr.l    -(a7)                              
  02944  48780100              pea      ($100).w                           
  02948  4ebade7c              jsr      f3_07c6                            
  0294c  1e00                  move.b   d0,d7                              
  0294e  7c01                  moveq    #1,d6                              
  02950  508f                  addq.l   #8,a7                              
  02952  602c                  bra.s    L2980                              
  02954  42a7                  clr.l    -(a7)                              
  02956  4227                  clr.b    -(a7)                              
  02958  3f3c0002              move.w   #2,-(a7)                           
  0295c  4ead0242              jsr      f2_79a8                            
  02960  5300                  subq.b   #1,d0                              
  02962  1e80                  move.b   d0,(a7)                            
  02964  4ead069a              jsr      f6_3756                            
  02968  1e00                  move.b   d0,d7                              
  0296a  7c01                  moveq    #1,d6                              
  0296c  508f                  addq.l   #8,a7                              
  0296e  6010                  bra.s    L2980                              
  02970  42a7                  clr.l    -(a7)                              
  02972  48780001              pea      ($1).w                             
  02976  4ead07aa              jsr      f7_078e                            
  0297a  1e00                  move.b   d0,d7                              
  0297c  7c01                  moveq    #1,d6                              
  0297e  508f                  addq.l   #8,a7                              
L2980:
  02980  4a07                  tst.b    d7                                 
  02982  6732                  beq.s    L29b6                              
  02984  3039ffff8370          move.w   g_7c90,d0                          
  0298a  d079ffff8390          add.w    g_7c70,d0                          
  02990  b079ffff8372          cmp.w    g_7c8e,d0                          
  02996  6f08                  ble.s    L29a0                              
  02998  3039ffff8372          move.w   g_7c8e,d0                          
  0299e  600c                  bra.s    L29ac                              
L29a0:
  029a0  3039ffff8390          move.w   g_7c70,d0                          
  029a6  d079ffff8370          add.w    g_7c90,d0                          
L29ac:
  029ac  33c0ffff8370          move.w   d0,g_7c90                          
  029b2  4ead01da              jsr      f2_6c08                            
L29b6:
  029b6  4a06                  tst.b    d6                                 
  029b8  6720                  beq.s    L29da                              
  029ba  7a01                  moveq    #1,d5                              
  029bc  6014                  bra.s    L29d2                              
L29be:
  029be  4a7053b0ffff8c78      tst.w    (-$7388,za0,d5.w*2)                
  029c6  6708                  beq.s    L29d0                              
  029c8  3f05                  move.w   d5,-(a7)                           
  029ca  4ead0672              jsr      f6_294e                            
  029ce  548f                  addq.l   #2,a7                              
L29d0:
  029d0  5245                  addq.w   #1,d5                              
L29d2:
  029d2  ba79ffff883e          cmp.w    g_77c2,d5                          
  029d8  6fe4                  ble.s    L29be                              
L29da:
  029da  3039ffff8370          move.w   g_7c90,d0                          
  029e0  b079ffff8372          cmp.w    g_7c8e,d0                          
  029e6  6d00fe6c              blt.w    L2854                              
  029ea  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  029ee  4e5e                  unlk     a6                                 
  029f0  4e75                  rts                                         
  029f2  ff8e                  dc.w     $ff8e                              
  029f4  fe8e                  dc.w     $fe8e                              
  029f6  fe8e                  dc.w     $fe8e                              
  029f8  fe8e                  dc.w     $fe8e                              
  029fa  fe8e                  dc.w     $fe8e                              
  029fc  fea4                  dc.w     $fea4                              
  029fe  febc                  dc.w     $febc                              
  02a00  febc                  dc.w     $febc                              
  02a02  febc                  dc.w     $febc                              
  02a04  fed0                  dc.w     $fed0                              
  02a06  feee                  dc.w     $feee                              
  02a08  ff50                  dc.w     $ff50                              
  02a0a  ff62                  dc.w     $ff62                              
  02a0c  ff7e                  dc.w     $ff7e                              

;----------------------------------------------------------------------
; f3_2a0e
;----------------------------------------------------------------------
f3_2a0e:
  02a0e  4e56fe34              link     a6,#-460                           
  02a12  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  02a16  3e2e0008              move.w   $8(a6),d7                          
  02a1a  426efffa              clr.w    -$6(a6)                            
  02a1e  7a00                  moveq    #0,d5                              
  02a20  42aefe34              clr.l    -$1cc(a6)                          
  02a24  2079ffff9382          movea.l  g_6c7e,a0                          
  02a2a  2d680010ffe6          move.l   $10(a0),-$1a(a6)                   
  02a30  2d680014ffea          move.l   $14(a0),-$16(a6)                   
  02a36  7600                  moveq    #0,d3                              
  02a38  486efe38              pea      -$1c8(a6)                          
  02a3c  a874                  _GetPort                                    ; $a874
  02a3e  4a7073b0ffff8c78      tst.w    (-$7388,za0,d7.w*2)                
  02a46  6700018c              beq.w    L2bd4                              
  02a4a  383c07d2              move.w   #$7d2,d4                           
  02a4e  2079ffff99f4          movea.l  g_660c,a0                          
  02a54  20680002              movea.l  $2(a0),a0                          
  02a58  2f10                  move.l   (a0),-(a7)                         
  02a5a  2079ffff9382          movea.l  g_6c7e,a0                          
  02a60  48680002              pea      $2(a0)                             
  02a64  486effe6              pea      -$1a(a6)                           
  02a68  486effe6              pea      -$1a(a6)                           
  02a6c  4267                  clr.w    -(a7)                              
  02a6e  42a7                  clr.l    -(a7)                              
  02a70  a8ec                  _CopyBits                                   ; $a8ec
  02a72  3f04                  move.w   d4,-(a7)                           
  02a74  2f2e000a              move.l   $a(a6),-(a7)                       
  02a78  4ead06d2              jsr      f7_1a72                            
  02a7c  303073b0ffff8c24      move.w   (-$73dc,za0,d7.w*2),d0             
  02a84  9079ffff836c          sub.w    g_7c94,d0                          
  02a8a  5c8f                  addq.l   #6,a7                              
  02a8c  6628                  bne.s    L2ab6                              
  02a8e  303073b0ffff8c4e      move.w   (-$73b2,za0,d7.w*2),d0             
  02a96  9079ffff836e          sub.w    g_7c92,d0                          
  02a9c  6618                  bne.s    L2ab6                              
  02a9e  700a                  moveq    #10,d0                             
  02aa0  c1f9ffff8894          muls.w   g_776c,d0                          
  02aa6  3f00                  move.w   d0,-(a7)                           
  02aa8  4ead0242              jsr      f2_79a8                            
  02aac  5240                  addq.w   #1,d0                              
  02aae  3c00                  move.w   d0,d6                              
  02ab0  7601                  moveq    #1,d3                              
  02ab2  548f                  addq.l   #2,a7                              
  02ab4  6002                  bra.s    L2ab8                              
L2ab6:
  02ab6  7c00                  moveq    #0,d6                              
L2ab8:
  02ab8  3046                  movea.w  d6,a0                              
  02aba  2f08                  move.l   a0,-(a7)                           
  02abc  486efe3c              pea      -$1c4(a6)                          
  02ac0  4ead0512              jsr      f4_150e                            
L2ac4:
  02ac4  4a39ffff8dfb          tst.b    g_7205                             
  02aca  67f8                  beq.s    L2ac4                              
  02acc  4eba19f0              jsr      f3_44be                            
  02ad0  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  02ad6  201f                  move.l   (a7)+,d0                           
  02ad8  a032                  _FlushEvents                                ; $a032
  02ada  4a03                  tst.b    d3                                 
  02adc  6724                  beq.s    L2b02                              
  02ade  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  02ae6  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  02aee  2f3c0000022c          move.l   STR_022c,-(a7)                     ; "You found"
  02af4  486efe3c              pea      -$1c4(a6)                          
  02af8  2f3c00000236          move.l   STR_0236,-(a7)                     ; "pieces of gold."
  02afe  a98b                  _ParamText                                  ; $a98b
  02b00  6024                  bra.s    L2b26                              
L2b02:
  02b02  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  02b0a  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  02b12  2f3c00000246          move.l   STR_0246,-(a7)                     ; "?"
  02b18  2f3c00000248          move.l   STR_0248,-(a7)                     ; "?"
  02b1e  2f3c0000024a          move.l   STR_024a,-(a7)                     ; "?"
  02b24  a98b                  _ParamText                                  ; $a98b
L2b26:
  02b26  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  02b2c  a851                  _SetCursor                                  ; $a851
  02b2e  42a7                  clr.l    -(a7)                              
  02b30  3f3c07d2              move.w   #$7d2,-(a7)                        
  02b34  486eff3c              pea      -$c4(a6)                           
  02b38  4878ffff              pea      ($ffff).w                          
  02b3c  a97c                  _GetNewDialog                               ; $a97c
  02b3e  285f                  movea.l  (a7)+,a4                           
  02b40  2f0c                  move.l   a4,-(a7)                           
  02b42  4ead06ba              jsr      f7_161c                            
  02b46  2e8c                  move.l   a4,(a7)                            
  02b48  a915                  _ShowWindow                                 ; $a915
L2b4a:
  02b4a  42a7                  clr.l    -(a7)                              
  02b4c  486efffa              pea      -$6(a6)                            
  02b50  a991                  _ModalDialog                                ; $a991
  02b52  4a6efffa              tst.w    -$6(a6)                            
  02b56  67f2                  beq.s    L2b4a                              
  02b58  2f0c                  move.l   a4,-(a7)                           
  02b5a  a983                  _DisposeDialog                              ; $a983
  02b5c  4ead013a              jsr      f2_4410                            
  02b60  3046                  movea.w  d6,a0                              
  02b62  2008                  move.l   a0,d0                              
  02b64  d1b9ffff83a6          add.l    d0,g_7c5a                          
  02b6a  4ead01ba              jsr      f2_6a8c                            
  02b6e  3c3073b0ffff8cf6      move.w   (-$730a,za0,d7.w*2),d6             
  02b76  cdf9ffff8894          muls.w   g_776c,d6                          
  02b7c  3046                  movea.w  d6,a0                              
  02b7e  2008                  move.l   a0,d0                              
  02b80  d1b9ffff8388          add.l    d0,g_7c78                          
  02b86  2039ffff8388          move.l   g_7c78,d0                          
  02b8c  b0b9ffff8384          cmp.l    g_7c7c,d0                          
  02b92  6d04                  blt.s    L2b98                              
  02b94  4ead023a              jsr      f2_7b7a                            
L2b98:
  02b98  427073b0ffff8c78      clr.w    (-$7388,za0,d7.w*2)                
  02ba0  423071b0ffff97f9      clr.b    (-$6807,za0,d7.w)                  
  02ba8  427073b0ffff8c24      clr.w    (-$73dc,za0,d7.w*2)                
  02bb0  427073b0ffff8c4e      clr.w    (-$73b2,za0,d7.w*2)                
  02bb8  423071b0ffff97e4      clr.b    (-$681c,za0,d7.w)                  
  02bc0  1f3c0001              move.b   #1,-(a7)                           
  02bc4  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  02bca  4ead016a              jsr      f2_549e                            
  02bce  2eaefe38              move.l   -$1c8(a6),(a7)                     
  02bd2  a873                  _SetPort                                    ; $a873
L2bd4:
  02bd4  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  02bd8  4e5e                  unlk     a6                                 
  02bda  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_2bdc   [jump table #85]
;----------------------------------------------------------------------
f3_2bdc:
  02bdc  4e56fd50              link     a6,#-688                           
  02be0  48e70108              movem.l  d7/a4,-(a7)                        
  02be4  426eff54              clr.w    -$ac(a6)                           
  02be8  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  02bee  a851                  _SetCursor                                  ; $a851
  02bf0  486efd50              pea      -$2b0(a6)                          
  02bf4  a874                  _GetPort                                    ; $a874
  02bf6  3e3c07d2              move.w   #$7d2,d7                           
  02bfa  486e0008              pea      $8(a6)                             
  02bfe  a8a3                  _EraseRect                                  ; $a8a3
  02c00  3f07                  move.w   d7,-(a7)                           
  02c02  486e0008              pea      $8(a6)                             
  02c06  4ead06d2              jsr      f7_1a72                            
  02c0a  2eb9ffff8fd2          move.l   g_702e,(a7)                        
  02c10  a873                  _SetPort                                    ; $a873
  02c12  2079ffff8fd2          movea.l  g_702e,a0                          
  02c18  48680010              pea      $10(a0)                            
  02c1c  a8a3                  _EraseRect                                  ; $a8a3
  02c1e  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  02c24  a873                  _SetPort                                    ; $a873
  02c26  2079ffff9382          movea.l  g_6c7e,a0                          
  02c2c  48680010              pea      $10(a0)                            
  02c30  a8a3                  _EraseRect                                  ; $a8a3
  02c32  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  02c38  a873                  _SetPort                                    ; $a873
  02c3a  2079ffff8fb6          movea.l  g_704a,a0                          
  02c40  48680010              pea      $10(a0)                            
  02c44  a8a3                  _EraseRect                                  ; $a8a3
  02c46  2f2efd50              move.l   -$2b0(a6),-(a7)                    
  02c4a  a873                  _SetPort                                    ; $a873
  02c4c  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  02c52  201f                  move.l   (a7)+,d0                           
  02c54  a032                  _FlushEvents                                ; $a032
  02c56  486efd54              pea      -$2ac(a6)                          
  02c5a  2f3c000107d3          move.l   #$107d3,-(a7)                      
  02c60  4ead0522              jsr      f4_153c                            
  02c64  486efe54              pea      -$1ac(a6)                          
  02c68  2f3c000207d3          move.l   #$207d3,-(a7)                      
  02c6e  4ead0522              jsr      f4_153c                            
  02c72  0c790001ffff8372      cmpi.w   #1,g_7c8e                          
  02c7a  548f                  addq.l   #2,a7                              
  02c7c  6f1a                  ble.s    L2c98                              
  02c7e  486efd54              pea      -$2ac(a6)                          
  02c82  2f3c0000024c          move.l   STR_024c,-(a7)                     ; "?"
  02c88  2f3c0000024e          move.l   STR_024e,-(a7)                     ; "?"
  02c8e  2f3c00000250          move.l   STR_0250,-(a7)                     ; "?"
  02c94  a98b                  _ParamText                                  ; $a98b
  02c96  6018                  bra.s    L2cb0                              
L2c98:
  02c98  486efe54              pea      -$1ac(a6)                          
  02c9c  2f3c00000252          move.l   STR_0252,-(a7)                     ; "?"
  02ca2  2f3c00000254          move.l   STR_0254,-(a7)                     ; "?"
  02ca8  2f3c00000256          move.l   STR_0256,-(a7)                     ; "?"
  02cae  a98b                  _ParamText                                  ; $a98b
L2cb0:
  02cb0  42a7                  clr.l    -(a7)                              
  02cb2  3f3c07d3              move.w   #$7d3,-(a7)                        
  02cb6  486eff56              pea      -$aa(a6)                           
  02cba  4878ffff              pea      ($ffff).w                          
  02cbe  a97c                  _GetNewDialog                               ; $a97c
  02cc0  285f                  movea.l  (a7)+,a4                           
  02cc2  2f0c                  move.l   a4,-(a7)                           
  02cc4  4ead06ba              jsr      f7_161c                            
  02cc8  2e8c                  move.l   a4,(a7)                            
  02cca  a915                  _ShowWindow                                 ; $a915
L2ccc:
  02ccc  42a7                  clr.l    -(a7)                              
  02cce  486eff54              pea      -$ac(a6)                           
  02cd2  a991                  _ModalDialog                                ; $a991
  02cd4  4a6eff54              tst.w    -$ac(a6)                           
  02cd8  67f2                  beq.s    L2ccc                              
  02cda  2f0c                  move.l   a4,-(a7)                           
  02cdc  a983                  _DisposeDialog                              ; $a983
  02cde  0c790001ffff8372      cmpi.w   #1,g_7c8e                          
  02ce6  6f42                  ble.s    L2d2a                              
  02ce8  3079ffff8372          movea.w  g_7c8e,a0                          
  02cee  2008                  move.l   a0,d0                              
  02cf0  81f9ffff8390          divs.w   g_7c70,d0                          
  02cf6  3f00                  move.w   d0,-(a7)                           
  02cf8  4ead0242              jsr      f2_79a8                            
  02cfc  3d40ff54              move.w   d0,-$ac(a6)                        
  02d00  b079ffff8372          cmp.w    g_7c8e,d0                          
  02d06  548f                  addq.l   #2,a7                              
  02d08  660a                  bne.s    L2d14                              
  02d0a  33fc0001ffff8372      move.w   #1,g_7c8e                          
  02d12  600a                  bra.s    L2d1e                              
L2d14:
  02d14  302eff54              move.w   -$ac(a6),d0                        
  02d18  9179ffff8372          sub.w    d0,g_7c8e                          
L2d1e:
  02d1e  33f9ffff8372ffff8370  move.w   g_7c8e,g_7c90                      
  02d28  600c                  bra.s    L2d36                              
L2d2a:
  02d2a  4279ffff8372          clr.w    g_7c8e                             
  02d30  4279ffff8370          clr.w    g_7c90                             
L2d36:
  02d36  4a79ffff8372          tst.w    g_7c8e                             
  02d3c  66000088              bne.w    L2dc6                              
  02d40  2f39ffff8dc4          move.l   g_723c,-(a7)                       
  02d46  3f3c0003              move.w   #3,-(a7)                           
  02d4a  a93a                  _DisableItem                                ; $a93a
  02d4c  4267                  clr.w    -(a7)                              
  02d4e  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  02d54  a950                  _CountMItems                                ; $a950
  02d56  3e1f                  move.w   (a7)+,d7                           
  02d58  426eff54              clr.w    -$ac(a6)                           
  02d5c  6010                  bra.s    L2d6e                              
L2d5e:
  02d5e  2f39ffff8dc8          move.l   g_7238,-(a7)                       
  02d64  3f2eff54              move.w   -$ac(a6),-(a7)                     
  02d68  a93a                  _DisableItem                                ; $a93a
  02d6a  526eff54              addq.w   #1,-$ac(a6)                        
L2d6e:
  02d6e  be6eff54              cmp.w    -$ac(a6),d7                        
  02d72  6cea                  bge.s    L2d5e                              
  02d74  4267                  clr.w    -(a7)                              
  02d76  2f39ffff8dd0          move.l   g_7230,-(a7)                       
  02d7c  a950                  _CountMItems                                ; $a950
  02d7e  3e1f                  move.w   (a7)+,d7                           
  02d80  426eff54              clr.w    -$ac(a6)                           
  02d84  6010                  bra.s    L2d96                              
L2d86:
  02d86  2f39ffff8dd0          move.l   g_7230,-(a7)                       
  02d8c  3f2eff54              move.w   -$ac(a6),-(a7)                     
  02d90  a93a                  _DisableItem                                ; $a93a
  02d92  526eff54              addq.w   #1,-$ac(a6)                        
L2d96:
  02d96  be6eff54              cmp.w    -$ac(a6),d7                        
  02d9a  6cea                  bge.s    L2d86                              
  02d9c  4267                  clr.w    -(a7)                              
  02d9e  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  02da4  a950                  _CountMItems                                ; $a950
  02da6  3e1f                  move.w   (a7)+,d7                           
  02da8  426eff54              clr.w    -$ac(a6)                           
  02dac  6010                  bra.s    L2dbe                              
L2dae:
  02dae  2f39ffff8dd4          move.l   g_722c,-(a7)                       
  02db4  3f2eff54              move.w   -$ac(a6),-(a7)                     
  02db8  a93a                  _DisableItem                                ; $a93a
  02dba  526eff54              addq.w   #1,-$ac(a6)                        
L2dbe:
  02dbe  be6eff54              cmp.w    -$ac(a6),d7                        
  02dc2  6cea                  bge.s    L2dae                              
  02dc4  a937                  _DrawMenuBar                                ; $a937
L2dc6:
  02dc6  4cdf1080              movem.l  (a7)+,d7/a4                        
  02dca  4e5e                  unlk     a6                                 
  02dcc  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_2dce   [jump table #86]
;----------------------------------------------------------------------
f3_2dce:
  02dce  4e560000              link     a6,#0                              
  02dd2  4ead01f2              jsr      f2_7200                            
  02dd6  4e5e                  unlk     a6                                 
  02dd8  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_2dda   [jump table #87]
;----------------------------------------------------------------------
f3_2dda:
  02dda  4e56fefc              link     a6,#-260                           
  02dde  4a39ffff3b13          tst.b    g_c4ed                             
  02de4  57c0                  seq      d0                                 
  02de6  4400                  neg.b    d0                                 
  02de8  13c0ffff3b13          move.b   d0,g_c4ed                          
  02dee  4e5e                  unlk     a6                                 
  02df0  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_2df2
;----------------------------------------------------------------------
f3_2df2:
  02df2  4e56ffd4              link     a6,#-44                            
  02df6  2f07                  move.l   d7,-(a7)                           
  02df8  3e2e0008              move.w   $8(a6),d7                          
  02dfc  206e000a              movea.l  $a(a6),a0                          
  02e00  2d50ffee              move.l   (a0),-$12(a6)                      
  02e04  2d680004fff2          move.l   $4(a0),-$e(a6)                     
  02e0a  2279ffff9382          movea.l  g_6c7e,a1                          
  02e10  2d690010ffe6          move.l   $10(a1),-$1a(a6)                   
  02e16  2d690014ffea          move.l   $14(a1),-$16(a6)                   
  02e1c  2d6effeeffde          move.l   -$12(a6),-$22(a6)                  
  02e22  2d6efff2ffe2          move.l   -$e(a6),-$1e(a6)                   
  02e28  2d6effe6ffd6          move.l   -$1a(a6),-$2a(a6)                  
  02e2e  2d6effeaffda          move.l   -$16(a6),-$26(a6)                  
  02e34  426effd4              clr.w    -$2c(a6)                           
  02e38  486effd6              pea      -$2a(a6)                           
  02e3c  487800c8              pea      ($c8).w                            
  02e40  a8a8                  _OffsetRect                                 ; $a8a8
  02e42  486effde              pea      -$22(a6)                           
  02e46  2f3cfff0fff0          move.l   #$fff0fff0,-(a7)                   
  02e4c  a8a9                  _InsetRect                                  ; $a8a9
  02e4e  2f39ffff99fc          move.l   g_6604,-(a7)                       
  02e54  a873                  _SetPort                                    ; $a873
  02e56  486effe6              pea      -$1a(a6)                           
  02e5a  a8a3                  _EraseRect                                  ; $a8a3
  02e5c  2079ffff99f4          movea.l  g_660c,a0                          
  02e62  20680002              movea.l  $2(a0),a0                          
  02e66  2f10                  move.l   (a0),-(a7)                         
  02e68  2079ffff99fc          movea.l  g_6604,a0                          
  02e6e  20680002              movea.l  $2(a0),a0                          
  02e72  2f10                  move.l   (a0),-(a7)                         
  02e74  486effe6              pea      -$1a(a6)                           
  02e78  486effe6              pea      -$1a(a6)                           
  02e7c  4267                  clr.w    -(a7)                              
  02e7e  42a7                  clr.l    -(a7)                              
  02e80  a8ec                  _CopyBits                                   ; $a8ec
  02e82  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  02e8a  06400467              addi.w   #$467,d0                           
  02e8e  3f00                  move.w   d0,-(a7)                           
  02e90  486effde              pea      -$22(a6)                           
  02e94  4ead06d2              jsr      f7_1a72                            
  02e98  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  02e9e  a873                  _SetPort                                    ; $a873
  02ea0  2079ffff99fc          movea.l  g_6604,a0                          
  02ea6  20680002              movea.l  $2(a0),a0                          
  02eaa  2f10                  move.l   (a0),-(a7)                         
  02eac  2079ffff9382          movea.l  g_6c7e,a0                          
  02eb2  48680002              pea      $2(a0)                             
  02eb6  486effe6              pea      -$1a(a6)                           
  02eba  486effe6              pea      -$1a(a6)                           
  02ebe  4267                  clr.w    -(a7)                              
  02ec0  42a7                  clr.l    -(a7)                              
  02ec2  a8ec                  _CopyBits                                   ; $a8ec
  02ec4  43eefff6              lea      -$a(a6),a1                         
  02ec8  307c001e              movea.w  #$1e,a0                            
  02ecc  a03b                  _Delay                                      ; $a03b
  02ece  2280                  move.l   d0,(a1)                            
  02ed0  2079ffff99f8          movea.l  g_6608,a0                          
  02ed6  20680002              movea.l  $2(a0),a0                          
  02eda  2f10                  move.l   (a0),-(a7)                         
  02edc  2079ffff9382          movea.l  g_6c7e,a0                          
  02ee2  48680002              pea      $2(a0)                             
  02ee6  486effe6              pea      -$1a(a6)                           
  02eea  486effe6              pea      -$1a(a6)                           
  02eee  4267                  clr.w    -(a7)                              
  02ef0  42a7                  clr.l    -(a7)                              
  02ef2  a8ec                  _CopyBits                                   ; $a8ec
  02ef4  700a                  moveq    #10,d0                             
  02ef6  c1f9ffff883a          muls.w   g_77c6,d0                          
  02efc  d079ffff8374          add.w    g_7c8c,d0                          
  02f02  3e80                  move.w   d0,(a7)                            
  02f04  4ead0242              jsr      f2_79a8                            
  02f08  720f                  moveq    #15,d1                             
  02f0a  9279ffff8376          sub.w    g_7c8a,d1                          
  02f10  7414                  moveq    #20,d2                             
  02f12  9479ffff8894          sub.w    g_776c,d2                          
  02f18  9441                  sub.w    d1,d2                              
  02f1a  b440                  cmp.w    d0,d2                              
  02f1c  548f                  addq.l   #2,a7                              
  02f1e  6c52                  bge.s    L2f72                              
  02f20  3f3c0064              move.w   #$64,-(a7)                         
  02f24  4ead0242              jsr      f2_79a8                            
  02f28  7241                  moveq    #65,d1                             
  02f2a  9279ffff8894          sub.w    g_776c,d1                          
  02f30  b240                  cmp.w    d0,d1                              
  02f32  548f                  addq.l   #2,a7                              
  02f34  6c2c                  bge.s    L2f62                              
  02f36  303073b0ffff8c78      move.w   (-$7388,za0,d7.w*2),d0             
  02f3e  4a7003b0ffff6f52      tst.w    (-$90ae,za0,d0.w*2)                
  02f46  671a                  beq.s    L2f62                              
  02f48  0c79000affff8894      cmpi.w   #$a,g_776c                         
  02f50  6f10                  ble.s    L2f62                              
  02f52  3f07                  move.w   d7,-(a7)                           
  02f54  4ead03f2              jsr      f4_2484                            
  02f58  4a79ffff8370          tst.w    g_7c90                             
  02f5e  548f                  addq.l   #2,a7                              
  02f60  6f1e                  ble.s    L2f80                              
L2f62:
  02f62  3f07                  move.w   d7,-(a7)                           
  02f64  4eba0020              jsr      f3_2f86                            
  02f68  4a79ffff8370          tst.w    g_7c90                             
  02f6e  548f                  addq.l   #2,a7                              
  02f70  600e                  bra.s    L2f80                              
L2f72:
  02f72  3f3c07d1              move.w   #$7d1,-(a7)                        
  02f76  4eba12c0              jsr      f3_4238                            
  02f7a  4eba14a8              jsr      f3_4424                            
  02f7e  548f                  addq.l   #2,a7                              
L2f80:
  02f80  2e1f                  move.l   (a7)+,d7                           
  02f82  4e5e                  unlk     a6                                 
  02f84  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_2f86   [jump table #88]
;----------------------------------------------------------------------
f3_2f86:
  02f86  4e56ffe8              link     a6,#-24                            
  02f8a  2f07                  move.l   d7,-(a7)                           
  02f8c  2079ffff9382          movea.l  g_6c7e,a0                          
  02f92  2d680010ffee          move.l   $10(a0),-$12(a6)                   
  02f98  2d680014fff2          move.l   $14(a0),-$e(a6)                    
  02f9e  3d7c07d0ffe8          move.w   #$7d0,-$18(a6)                     
  02fa4  4a39ffff8df2          tst.b    g_720e                             
  02faa  660c                  bne.s    L2fb8                              
  02fac  43eeffea              lea      -$16(a6),a1                        
  02fb0  307c000f              movea.w  #$f,a0                             
  02fb4  a03b                  _Delay                                      ; $a03b
  02fb6  2280                  move.l   d0,(a1)                            
L2fb8:
  02fb8  3f3c0003              move.w   #3,-(a7)                           
  02fbc  4ead0242              jsr      f2_79a8                            
  02fc0  4a40                  tst.w    d0                                 
  02fc2  548f                  addq.l   #2,a7                              
  02fc4  672e                  beq.s    L2ff4                              
  02fc6  6b2c                  bmi.s    L2ff4                              
  02fc8  5740                  subq.w   #3,d0                              
  02fca  671e                  beq.s    L2fea                              
  02fcc  6a26                  bpl.s    L2ff4                              
  02fce  5240                  addq.w   #1,d0                              
  02fd0  6a0c                  bpl.s    L2fde                              
  02fd2  3f3c07d0              move.w   #$7d0,-(a7)                        
  02fd6  4eba1260              jsr      f3_4238                            
  02fda  548f                  addq.l   #2,a7                              
  02fdc  6016                  bra.s    L2ff4                              
L2fde:
  02fde  3f3c5bf1              move.w   #$5bf1,-(a7)                       
  02fe2  4eba1254              jsr      f3_4238                            
  02fe6  548f                  addq.l   #2,a7                              
  02fe8  600a                  bra.s    L2ff4                              
L2fea:
  02fea  3f3c5c00              move.w   #$5c00,-(a7)                       
  02fee  4eba1248              jsr      f3_4238                            
  02ff2  548f                  addq.l   #2,a7                              
L2ff4:
  02ff4  2f39ffff99fc          move.l   g_6604,-(a7)                       
  02ffa  a873                  _SetPort                                    ; $a873
  02ffc  2079ffff9382          movea.l  g_6c7e,a0                          
  03002  48680010              pea      $10(a0)                            
  03006  2f3cffffac4a          move.l   #$ffffac4a,-(a7)                   
  0300c  a8a5                  _FillRect                                   ; $a8a5
  0300e  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  03014  a873                  _SetPort                                    ; $a873
  03016  2079ffff99fc          movea.l  g_6604,a0                          
  0301c  20680002              movea.l  $2(a0),a0                          
  03020  2f10                  move.l   (a0),-(a7)                         
  03022  2079ffff9382          movea.l  g_6c7e,a0                          
  03028  48680002              pea      $2(a0)                             
  0302c  486effee              pea      -$12(a6)                           
  03030  486effee              pea      -$12(a6)                           
  03034  3f3c0001              move.w   #1,-(a7)                           
  03038  42a7                  clr.l    -(a7)                              
  0303a  a8ec                  _CopyBits                                   ; $a8ec
  0303c  43eeffea              lea      -$16(a6),a1                        
  03040  307c000f              movea.w  #$f,a0                             
  03044  a03b                  _Delay                                      ; $a03b
  03046  2280                  move.l   d0,(a1)                            
  03048  2079ffff99f8          movea.l  g_6608,a0                          
  0304e  20680002              movea.l  $2(a0),a0                          
  03052  2f10                  move.l   (a0),-(a7)                         
  03054  2079ffff9382          movea.l  g_6c7e,a0                          
  0305a  48680002              pea      $2(a0)                             
  0305e  486effee              pea      -$12(a6)                           
  03062  486effee              pea      -$12(a6)                           
  03066  4267                  clr.w    -(a7)                              
  03068  42a7                  clr.l    -(a7)                              
  0306a  a8ec                  _CopyBits                                   ; $a8ec
  0306c  4eba13b6              jsr      f3_4424                            
  03070  3079ffff8894          movea.w  g_776c,a0                          
  03076  2008                  move.l   a0,d0                              
  03078  81fc0002              divs.w   #2,d0                              
  0307c  5440                  addq.w   #2,d0                              
  0307e  3f00                  move.w   d0,-(a7)                           
  03080  4ead0242              jsr      f2_79a8                            
  03084  3e00                  move.w   d0,d7                              
  03086  4a39ffff8df7          tst.b    g_7209                             
  0308c  548f                  addq.l   #2,a7                              
  0308e  6706                  beq.s    L3096                              
  03090  48c7                  ext.l    d7                                 
  03092  8ffc0002              divs.w   #2,d7                              
L3096:
  03096  9f79ffff8370          sub.w    d7,g_7c90                          
  0309c  4ead01da              jsr      f2_6c08                            
L30a0:
  030a0  4a39ffff8dfb          tst.b    g_7205                             
  030a6  67f8                  beq.s    L30a0                              
  030a8  4eba1414              jsr      f3_44be                            
  030ac  2e1f                  move.l   (a7)+,d7                           
  030ae  4e5e                  unlk     a6                                 
  030b0  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_30b2   [jump table #89]
;----------------------------------------------------------------------
f3_30b2:
  030b2  4e56ffe6              link     a6,#-26                            
  030b6  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  030ba  3e2e0012              move.w   $12(a6),d7                         
  030be  206e000a              movea.l  $a(a6),a0                          
  030c2  2d50ffe6              move.l   (a0),-$1a(a6)                      
  030c6  2d680004ffea          move.l   $4(a0),-$16(a6)                    
  030cc  4a6e0008              tst.w    $8(a6)                             
  030d0  6604                  bne.s    L30d6                              
  030d2  566effea              addq.w   #3,-$16(a6)                        
L30d6:
  030d6  302e001e              move.w   $1e(a6),d0                         
  030da  287005b0ffff9a10      movea.l  (-$65f0,za0,d0.w*4),a4             
  030e2  4a40                  tst.w    d0                                 
  030e4  6608                  bne.s    L30ee                              
  030e6  3d7c0088ffee          move.w   #$88,-$12(a6)                      
  030ec  6006                  bra.s    L30f4                              
L30ee:
  030ee  3d7c0084ffee          move.w   #$84,-$12(a6)                      
L30f4:
  030f4  302e001e              move.w   $1e(a6),d0                         
  030f8  6710                  beq.s    L310a                              
  030fa  6b0000b2              bmi.w    L31ae                              
  030fe  5540                  subq.w   #2,d0                              
  03100  6700008a              beq.w    L318c                              
  03104  6a0000a8              bpl.w    L31ae                              
  03108  605e                  bra.s    L3168                              
L310a:
  0310a  426efff0              clr.w    -$10(a6)                           
  0310e  604e                  bra.s    L315e                              
L3110:
  03110  302efff0              move.w   -$10(a6),d0                        
  03114  303003b0ffff3ad4      move.w   (-$c52c,za0,d0.w*2),d0             
  0311c  b079ffff8894          cmp.w    g_776c,d0                          
  03122  6636                  bne.s    L315a                              
  03124  302efff0              move.w   -$10(a6),d0                        
  03128  3a3003b0ffff784a      move.w   (-$87b6,za0,d0.w*2),d5             
  03130  3c3003b0ffff7856      move.w   (-$87aa,za0,d0.w*2),d6             
  03138  7800                  moveq    #0,d4                              
  0313a  6018                  bra.s    L3154                              
L313c:
  0313c  3044                  movea.w  d4,a0                              
  0313e  302efff0              move.w   -$10(a6),d0                        
  03142  41f00400              lea      $0(a0,d0.w*4),a0                   
  03146  d1c8                  adda.l   a0,a0                              
  03148  d1fcffff7862          adda.l   #$ffff7862,a0                      
  0314e  3d9042f2              move.w   (a0),-$e(a6,d4.w*2)                
  03152  5244                  addq.w   #1,d4                              
L3154:
  03154  0c440004              cmpi.w   #4,d4                              
  03158  6de2                  blt.s    L313c                              
L315a:
  0315a  526efff0              addq.w   #1,-$10(a6)                        
L315e:
  0315e  0c6e0006fff0          cmpi.w   #6,-$10(a6)                        
  03164  6daa                  blt.s    L3110                              
  03166  6046                  bra.s    L31ae                              
L3168:
  03168  3a39ffff884c          move.w   g_77b4,d5                          
  0316e  3c39ffff884e          move.w   g_77b2,d6                          
  03174  7800                  moveq    #0,d4                              
  03176  600c                  bra.s    L3184                              
L3178:
  03178  3db043b0ffff885042f2  move.w   (-$77b0,za0,d4.w*2),-$e(a6,d4.w*2) 
  03182  5244                  addq.w   #1,d4                              
L3184:
  03184  0c440004              cmpi.w   #4,d4                              
  03188  6dee                  blt.s    L3178                              
  0318a  6022                  bra.s    L31ae                              
L318c:
  0318c  3a39ffff8888          move.w   g_7778,d5                          
  03192  3c39ffff8892          move.w   g_776e,d6                          
  03198  7800                  moveq    #0,d4                              
  0319a  600c                  bra.s    L31a8                              
L319c:
  0319c  3db043b0ffff888a42f2  move.w   (-$7776,za0,d4.w*2),-$e(a6,d4.w*2) 
  031a6  5244                  addq.w   #1,d4                              
L31a8:
  031a8  0c440004              cmpi.w   #4,d4                              
  031ac  6dee                  blt.s    L319c                              
L31ae:
  031ae  7001                  moveq    #1,d0                              
  031b0  d046                  add.w    d6,d0                              
  031b2  b079ffff83bc          cmp.w    g_7c44,d0                          
  031b8  66000182              bne.w    L333c                              
  031bc  0c6e00040008          cmpi.w   #4,$8(a6)                          
  031c2  6c000178              bge.w    L333c                              
  031c6  3039ffff83bc          move.w   g_7c44,d0                          
  031cc  6700042c              beq.w    L35fa                              
  031d0  6b000428              bmi.w    L35fa                              
  031d4  5740                  subq.w   #3,d0                              
  031d6  6768                  beq.s    L3240                              
  031d8  6a08                  bpl.s    L31e2                              
  031da  5240                  addq.w   #1,d0                              
  031dc  6a0000b6              bpl.w    L3294                              
  031e0  600a                  bra.s    L31ec                              
L31e2:
  031e2  5540                  subq.w   #2,d0                              
  031e4  6a000414              bpl.w    L35fa                              
  031e8  600000fe              bra.w    L32e8                              
L31ec:
  031ec  307053b0ffff8afe      movea.w  (-$7502,za0,d5.w*2),a0             
  031f4  2008                  move.l   a0,d0                              
  031f6  81fc0015              divs.w   #$15,d0                            
  031fa  306efff2              movea.w  -$e(a6),a0                         
  031fe  2608                  move.l   a0,d3                              
  03200  87fc0015              divs.w   #$15,d3                            
  03204  9640                  sub.w    d0,d3                              
  03206  486effe6              pea      -$1a(a6)                           
  0320a  3003                  move.w   d3,d0                              
  0320c  906e0018              sub.w    $18(a6),d0                         
  03210  c1ee001c              muls.w   $1c(a6),d0                         
  03214  3f00                  move.w   d0,-(a7)                           
  03216  4267                  clr.w    -(a7)                              
  03218  a8a8                  _OffsetRect                                 ; $a8a8
  0321a  206c0002              movea.l  $2(a4),a0                          
  0321e  2f10                  move.l   (a0),-(a7)                         
  03220  2079ffff99f4          movea.l  g_660c,a0                          
  03226  20680002              movea.l  $2(a0),a0                          
  0322a  2f10                  move.l   (a0),-(a7)                         
  0322c  486c0010              pea      $10(a4)                            
  03230  486effe6              pea      -$1a(a6)                           
  03234  3f3c0024              move.w   #$24,-(a7)                         
  03238  42a7                  clr.l    -(a7)                              
  0323a  a8ec                  _CopyBits                                   ; $a8ec
  0323c  600003bc              bra.w    L35fa                              
L3240:
  03240  307053b0ffff8afe      movea.w  (-$7502,za0,d5.w*2),a0             
  03248  2008                  move.l   a0,d0                              
  0324a  81fc0015              divs.w   #$15,d0                            
  0324e  306efff6              movea.w  -$a(a6),a0                         
  03252  2608                  move.l   a0,d3                              
  03254  87fc0015              divs.w   #$15,d3                            
  03258  9640                  sub.w    d0,d3                              
  0325a  486effe6              pea      -$1a(a6)                           
  0325e  302e001a              move.w   $1a(a6),d0                         
  03262  9043                  sub.w    d3,d0                              
  03264  c1ee001c              muls.w   $1c(a6),d0                         
  03268  3f00                  move.w   d0,-(a7)                           
  0326a  4267                  clr.w    -(a7)                              
  0326c  a8a8                  _OffsetRect                                 ; $a8a8
  0326e  206c0002              movea.l  $2(a4),a0                          
  03272  2f10                  move.l   (a0),-(a7)                         
  03274  2079ffff99f4          movea.l  g_660c,a0                          
  0327a  20680002              movea.l  $2(a0),a0                          
  0327e  2f10                  move.l   (a0),-(a7)                         
  03280  486c0010              pea      $10(a4)                            
  03284  486effe6              pea      -$1a(a6)                           
  03288  3f3c0024              move.w   #$24,-(a7)                         
  0328c  42a7                  clr.l    -(a7)                              
  0328e  a8ec                  _CopyBits                                   ; $a8ec
  03290  60000368              bra.w    L35fa                              
L3294:
  03294  307053b0ffff8ad4      movea.w  (-$752c,za0,d5.w*2),a0             
  0329c  2008                  move.l   a0,d0                              
  0329e  81fc0015              divs.w   #$15,d0                            
  032a2  306efff4              movea.w  -$c(a6),a0                         
  032a6  2608                  move.l   a0,d3                              
  032a8  87fc0015              divs.w   #$15,d3                            
  032ac  9640                  sub.w    d0,d3                              
  032ae  486effe6              pea      -$1a(a6)                           
  032b2  3003                  move.w   d3,d0                              
  032b4  906e0018              sub.w    $18(a6),d0                         
  032b8  c1ee001c              muls.w   $1c(a6),d0                         
  032bc  3f00                  move.w   d0,-(a7)                           
  032be  4267                  clr.w    -(a7)                              
  032c0  a8a8                  _OffsetRect                                 ; $a8a8
  032c2  206c0002              movea.l  $2(a4),a0                          
  032c6  2f10                  move.l   (a0),-(a7)                         
  032c8  2079ffff99f4          movea.l  g_660c,a0                          
  032ce  20680002              movea.l  $2(a0),a0                          
  032d2  2f10                  move.l   (a0),-(a7)                         
  032d4  486c0010              pea      $10(a4)                            
  032d8  486effe6              pea      -$1a(a6)                           
  032dc  3f3c0024              move.w   #$24,-(a7)                         
  032e0  42a7                  clr.l    -(a7)                              
  032e2  a8ec                  _CopyBits                                   ; $a8ec
  032e4  60000314              bra.w    L35fa                              
L32e8:
  032e8  307053b0ffff8ad4      movea.w  (-$752c,za0,d5.w*2),a0             
  032f0  2008                  move.l   a0,d0                              
  032f2  81fc0015              divs.w   #$15,d0                            
  032f6  306efff8              movea.w  -$8(a6),a0                         
  032fa  2608                  move.l   a0,d3                              
  032fc  87fc0015              divs.w   #$15,d3                            
  03300  9640                  sub.w    d0,d3                              
  03302  486effe6              pea      -$1a(a6)                           
  03306  302e001a              move.w   $1a(a6),d0                         
  0330a  9043                  sub.w    d3,d0                              
  0330c  c1ee001c              muls.w   $1c(a6),d0                         
  03310  3f00                  move.w   d0,-(a7)                           
  03312  4267                  clr.w    -(a7)                              
  03314  a8a8                  _OffsetRect                                 ; $a8a8
  03316  206c0002              movea.l  $2(a4),a0                          
  0331a  2f10                  move.l   (a0),-(a7)                         
  0331c  2079ffff99f4          movea.l  g_660c,a0                          
  03322  20680002              movea.l  $2(a0),a0                          
  03326  2f10                  move.l   (a0),-(a7)                         
  03328  486c0010              pea      $10(a4)                            
  0332c  486effe6              pea      -$1a(a6)                           
  03330  3f3c0024              move.w   #$24,-(a7)                         
  03334  42a7                  clr.l    -(a7)                              
  03336  a8ec                  _CopyBits                                   ; $a8ec
  03338  600002c0              bra.w    L35fa                              
L333c:
  0333c  3039ffff83bc          move.w   g_7c44,d0                          
  03342  670002b6              beq.w    L35fa                              
  03346  6b0002b2              bmi.w    L35fa                              
  0334a  5740                  subq.w   #3,d0                              
  0334c  670000c6              beq.w    L3414                              
  03350  6a08                  bpl.s    L335a                              
  03352  5240                  addq.w   #1,d0                              
  03354  6a00016e              bpl.w    L34c4                              
  03358  600a                  bra.s    L3364                              
L335a:
  0335a  5540                  subq.w   #2,d0                              
  0335c  6a00029c              bpl.w    L35fa                              
  03360  60000202              bra.w    L3564                              
L3364:
  03364  0c460001              cmpi.w   #1,d6                              
  03368  664e                  bne.s    L33b8                              
  0336a  307053b0ffff8ad4      movea.w  (-$752c,za0,d5.w*2),a0             
  03372  2008                  move.l   a0,d0                              
  03374  81fc0015              divs.w   #$15,d0                            
  03378  306efff4              movea.w  -$c(a6),a0                         
  0337c  2608                  move.l   a0,d3                              
  0337e  87fc0015              divs.w   #$15,d3                            
  03382  9640                  sub.w    d0,d3                              
  03384  b66e0014              cmp.w    $14(a6),d3                         
  03388  6e2e                  bgt.s    L33b8                              
  0338a  302e0014              move.w   $14(a6),d0                         
  0338e  9043                  sub.w    d3,d0                              
  03390  5940                  subq.w   #4,d0                              
  03392  6c24                  bge.s    L33b8                              
  03394  3f2effee              move.w   -$12(a6),-(a7)                     
  03398  3f3c0001              move.w   #1,-(a7)                           
  0339c  3f2e0016              move.w   $16(a6),-(a7)                      
  033a0  3f3c0001              move.w   #1,-(a7)                           
  033a4  3f2e0010              move.w   $10(a6),-(a7)                      
  033a8  302e0014              move.w   $14(a6),d0                         
  033ac  9043                  sub.w    d3,d0                              
  033ae  3f00                  move.w   d0,-(a7)                           
  033b0  4ead0172              jsr      f2_6166                            
  033b4  4fef000c              lea      $c(a7),a7                          
L33b8:
  033b8  0c460003              cmpi.w   #3,d6                              
  033bc  6600023c              bne.w    L35fa                              
  033c0  307053b0ffff8ad4      movea.w  (-$752c,za0,d5.w*2),a0             
  033c8  2008                  move.l   a0,d0                              
  033ca  81fc0015              divs.w   #$15,d0                            
  033ce  306efff8              movea.w  -$8(a6),a0                         
  033d2  2608                  move.l   a0,d3                              
  033d4  87fc0015              divs.w   #$15,d3                            
  033d8  9640                  sub.w    d0,d3                              
  033da  b66e0014              cmp.w    $14(a6),d3                         
  033de  6e00021a              bgt.w    L35fa                              
  033e2  302e0014              move.w   $14(a6),d0                         
  033e6  9043                  sub.w    d3,d0                              
  033e8  5940                  subq.w   #4,d0                              
  033ea  6c00020e              bge.w    L35fa                              
  033ee  3f2effee              move.w   -$12(a6),-(a7)                     
  033f2  3f3c0003              move.w   #3,-(a7)                           
  033f6  3f2e0016              move.w   $16(a6),-(a7)                      
  033fa  4267                  clr.w    -(a7)                              
  033fc  3f2e000e              move.w   $e(a6),-(a7)                       
  03400  302e0014              move.w   $14(a6),d0                         
  03404  9043                  sub.w    d3,d0                              
  03406  3f00                  move.w   d0,-(a7)                           
  03408  4ead0172              jsr      f2_6166                            
  0340c  4fef000c              lea      $c(a7),a7                          
  03410  600001e8              bra.w    L35fa                              
L3414:
  03414  0c460001              cmpi.w   #1,d6                              
  03418  664c                  bne.s    L3466                              
  0341a  307053b0ffff8ad4      movea.w  (-$752c,za0,d5.w*2),a0             
  03422  2008                  move.l   a0,d0                              
  03424  81fc0015              divs.w   #$15,d0                            
  03428  306efff4              movea.w  -$c(a6),a0                         
  0342c  2608                  move.l   a0,d3                              
  0342e  87fc0015              divs.w   #$15,d3                            
  03432  9640                  sub.w    d0,d3                              
  03434  b66e0014              cmp.w    $14(a6),d3                         
  03438  6d2c                  blt.s    L3466                              
  0343a  3003                  move.w   d3,d0                              
  0343c  906e0014              sub.w    $14(a6),d0                         
  03440  5940                  subq.w   #4,d0                              
  03442  6c22                  bge.s    L3466                              
  03444  3f2effee              move.w   -$12(a6),-(a7)                     
  03448  3f3c0001              move.w   #1,-(a7)                           
  0344c  3f2e0016              move.w   $16(a6),-(a7)                      
  03450  4267                  clr.w    -(a7)                              
  03452  3f2e000e              move.w   $e(a6),-(a7)                       
  03456  3003                  move.w   d3,d0                              
  03458  906e0014              sub.w    $14(a6),d0                         
  0345c  3f00                  move.w   d0,-(a7)                           
  0345e  4ead0172              jsr      f2_6166                            
  03462  4fef000c              lea      $c(a7),a7                          
L3466:
  03466  0c460003              cmpi.w   #3,d6                              
  0346a  6600018e              bne.w    L35fa                              
  0346e  307053b0ffff8ad4      movea.w  (-$752c,za0,d5.w*2),a0             
  03476  2008                  move.l   a0,d0                              
  03478  81fc0015              divs.w   #$15,d0                            
  0347c  306efff8              movea.w  -$8(a6),a0                         
  03480  2608                  move.l   a0,d3                              
  03482  87fc0015              divs.w   #$15,d3                            
  03486  9640                  sub.w    d0,d3                              
  03488  b66e0014              cmp.w    $14(a6),d3                         
  0348c  6d00016c              blt.w    L35fa                              
  03490  3003                  move.w   d3,d0                              
  03492  906e0014              sub.w    $14(a6),d0                         
  03496  5940                  subq.w   #4,d0                              
  03498  6c000160              bge.w    L35fa                              
  0349c  3f2effee              move.w   -$12(a6),-(a7)                     
  034a0  3f3c0003              move.w   #3,-(a7)                           
  034a4  3f2e0016              move.w   $16(a6),-(a7)                      
  034a8  3f3c0001              move.w   #1,-(a7)                           
  034ac  3f2e0010              move.w   $10(a6),-(a7)                      
  034b0  3003                  move.w   d3,d0                              
  034b2  906e0014              sub.w    $14(a6),d0                         
  034b6  3f00                  move.w   d0,-(a7)                           
  034b8  4ead0172              jsr      f2_6166                            
  034bc  4fef000c              lea      $c(a7),a7                          
  034c0  60000138              bra.w    L35fa                              
L34c4:
  034c4  4a46                  tst.w    d6                                 
  034c6  6644                  bne.s    L350c                              
  034c8  307053b0ffff8afe      movea.w  (-$7502,za0,d5.w*2),a0             
  034d0  2008                  move.l   a0,d0                              
  034d2  81fc0015              divs.w   #$15,d0                            
  034d6  306efff2              movea.w  -$e(a6),a0                         
  034da  2608                  move.l   a0,d3                              
  034dc  87fc0015              divs.w   #$15,d3                            
  034e0  9640                  sub.w    d0,d3                              
  034e2  be43                  cmp.w    d3,d7                              
  034e4  6e26                  bgt.s    L350c                              
  034e6  3003                  move.w   d3,d0                              
  034e8  9047                  sub.w    d7,d0                              
  034ea  5940                  subq.w   #4,d0                              
  034ec  6c1e                  bge.s    L350c                              
  034ee  3f2effee              move.w   -$12(a6),-(a7)                     
  034f2  4267                  clr.w    -(a7)                              
  034f4  3f2e0016              move.w   $16(a6),-(a7)                      
  034f8  4267                  clr.w    -(a7)                              
  034fa  3f2e000e              move.w   $e(a6),-(a7)                       
  034fe  3003                  move.w   d3,d0                              
  03500  9047                  sub.w    d7,d0                              
  03502  3f00                  move.w   d0,-(a7)                           
  03504  4ead0172              jsr      f2_6166                            
  03508  4fef000c              lea      $c(a7),a7                          
L350c:
  0350c  0c460002              cmpi.w   #2,d6                              
  03510  660000e8              bne.w    L35fa                              
  03514  307053b0ffff8afe      movea.w  (-$7502,za0,d5.w*2),a0             
  0351c  2008                  move.l   a0,d0                              
  0351e  81fc0015              divs.w   #$15,d0                            
  03522  306efff6              movea.w  -$a(a6),a0                         
  03526  2608                  move.l   a0,d3                              
  03528  87fc0015              divs.w   #$15,d3                            
  0352c  9640                  sub.w    d0,d3                              
  0352e  be43                  cmp.w    d3,d7                              
  03530  6e0000c8              bgt.w    L35fa                              
  03534  3003                  move.w   d3,d0                              
  03536  9047                  sub.w    d7,d0                              
  03538  5940                  subq.w   #4,d0                              
  0353a  6c0000be              bge.w    L35fa                              
  0353e  3f2effee              move.w   -$12(a6),-(a7)                     
  03542  3f3c0002              move.w   #2,-(a7)                           
  03546  3f2e0016              move.w   $16(a6),-(a7)                      
  0354a  3f3c0001              move.w   #1,-(a7)                           
  0354e  3f2e0010              move.w   $10(a6),-(a7)                      
  03552  3003                  move.w   d3,d0                              
  03554  9047                  sub.w    d7,d0                              
  03556  3f00                  move.w   d0,-(a7)                           
  03558  4ead0172              jsr      f2_6166                            
  0355c  4fef000c              lea      $c(a7),a7                          
  03560  60000098              bra.w    L35fa                              
L3564:
  03564  4a46                  tst.w    d6                                 
  03566  6646                  bne.s    L35ae                              
  03568  307053b0ffff8afe      movea.w  (-$7502,za0,d5.w*2),a0             
  03570  2008                  move.l   a0,d0                              
  03572  81fc0015              divs.w   #$15,d0                            
  03576  306efff2              movea.w  -$e(a6),a0                         
  0357a  2608                  move.l   a0,d3                              
  0357c  87fc0015              divs.w   #$15,d3                            
  03580  9640                  sub.w    d0,d3                              
  03582  be43                  cmp.w    d3,d7                              
  03584  6d28                  blt.s    L35ae                              
  03586  3007                  move.w   d7,d0                              
  03588  9043                  sub.w    d3,d0                              
  0358a  5940                  subq.w   #4,d0                              
  0358c  6c20                  bge.s    L35ae                              
  0358e  3f2effee              move.w   -$12(a6),-(a7)                     
  03592  4267                  clr.w    -(a7)                              
  03594  3f2e0016              move.w   $16(a6),-(a7)                      
  03598  3f3c0001              move.w   #1,-(a7)                           
  0359c  3f2e0010              move.w   $10(a6),-(a7)                      
  035a0  3007                  move.w   d7,d0                              
  035a2  9043                  sub.w    d3,d0                              
  035a4  3f00                  move.w   d0,-(a7)                           
  035a6  4ead0172              jsr      f2_6166                            
  035aa  4fef000c              lea      $c(a7),a7                          
L35ae:
  035ae  0c460002              cmpi.w   #2,d6                              
  035b2  6646                  bne.s    L35fa                              
  035b4  307053b0ffff8afe      movea.w  (-$7502,za0,d5.w*2),a0             
  035bc  2008                  move.l   a0,d0                              
  035be  81fc0015              divs.w   #$15,d0                            
  035c2  306efff6              movea.w  -$a(a6),a0                         
  035c6  2608                  move.l   a0,d3                              
  035c8  87fc0015              divs.w   #$15,d3                            
  035cc  9640                  sub.w    d0,d3                              
  035ce  be43                  cmp.w    d3,d7                              
  035d0  6d28                  blt.s    L35fa                              
  035d2  3007                  move.w   d7,d0                              
  035d4  9043                  sub.w    d3,d0                              
  035d6  5940                  subq.w   #4,d0                              
  035d8  6c20                  bge.s    L35fa                              
  035da  3f2effee              move.w   -$12(a6),-(a7)                     
  035de  3f3c0002              move.w   #2,-(a7)                           
  035e2  3f2e0016              move.w   $16(a6),-(a7)                      
  035e6  4267                  clr.w    -(a7)                              
  035e8  3f2e000e              move.w   $e(a6),-(a7)                       
  035ec  3007                  move.w   d7,d0                              
  035ee  9043                  sub.w    d3,d0                              
  035f0  3f00                  move.w   d0,-(a7)                           
  035f2  4ead0172              jsr      f2_6166                            
  035f6  4fef000c              lea      $c(a7),a7                          
L35fa:
  035fa  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  035fe  4e5e                  unlk     a6                                 
  03600  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_3602
;----------------------------------------------------------------------
f3_3602:
  03602  4e56ffce              link     a6,#-50                            
  03606  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  0360a  7818                  moveq    #24,d4                             
  0360c  7614                  moveq    #20,d3                             
  0360e  7e01                  moveq    #1,d7                              
  03610  6006                  bra.s    L3618                              
L3612:
  03612  3d8772ce              move.w   d7,-$32(a6,d7.w*2)                 
  03616  5247                  addq.w   #1,d7                              
L3618:
  03618  0c470018              cmpi.w   #$18,d7                            
  0361c  6ff4                  ble.s    L3612                              
  0361e  7e01                  moveq    #1,d7                              
  03620  601c                  bra.s    L363e                              
L3622:
  03622  21b075b0ffff735a75b0  move.l   (-$8ca6,za0,d7.w*4),(-$8a36,za0,d7.w*4)
  03630  3007                  move.w   d7,d0                              
  03632  4440                  neg.w    d0                                 
  03634  318073b0ffff83be      move.w   d0,(-$7c42,za0,d7.w*2)             
  0363c  5247                  addq.w   #1,d7                              
L363e:
  0363e  0c470013              cmpi.w   #$13,d7                            
  03642  6fde                  ble.s    L3622                              
  03644  7e01                  moveq    #1,d7                              
  03646  603c                  bra.s    L3684                              
L3648:
  03648  3f04                  move.w   d4,-(a7)                           
  0364a  4ead0242              jsr      f2_79a8                            
  0364e  3c00                  move.w   d0,d6                              
  03650  3a3662ce              move.w   -$32(a6,d6.w*2),d5                 
  03654  3005                  move.w   d5,d0                              
  03656  4440                  neg.w    d0                                 
  03658  318073b0ffff83be      move.w   d0,(-$7c42,za0,d7.w*2)             
  03660  21b055b0ffff686875b0  move.l   (-$9798,za0,d5.w*4),(-$8a36,za0,d7.w*4)
  0366e  5344                  subq.w   #1,d4                              
  03670  3a06                  move.w   d6,d5                              
  03672  548f                  addq.l   #2,a7                              
  03674  6008                  bra.s    L367e                              
L3676:
  03676  3db652d052ce          move.w   -$30(a6,d5.w*2),-$32(a6,d5.w*2)    
  0367c  5245                  addq.w   #1,d5                              
L367e:
  0367e  b845                  cmp.w    d5,d4                              
  03680  6ef4                  bgt.s    L3676                              
  03682  5247                  addq.w   #1,d7                              
L3684:
  03684  0c470013              cmpi.w   #$13,d7                            
  03688  6fbe                  ble.s    L3648                              
  0368a  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  0368e  4e5e                  unlk     a6                                 
  03690  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_3692
;----------------------------------------------------------------------
f3_3692:
  03692  4e56ffdc              link     a6,#-36                            
  03696  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  0369a  7e01                  moveq    #1,d7                              
  0369c  6006                  bra.s    L36a4                              
L369e:
  0369e  3d8772dc              move.w   d7,-$24(a6,d7.w*2)                 
  036a2  5247                  addq.w   #1,d7                              
L36a4:
  036a4  0c470011              cmpi.w   #$11,d7                            
  036a8  6ff4                  ble.s    L369e                              
  036aa  7811                  moveq    #17,d4                             
  036ac  7e01                  moveq    #1,d7                              
  036ae  603c                  bra.s    L36ec                              
L36b0:
  036b0  3f04                  move.w   d4,-(a7)                           
  036b2  4ead0242              jsr      f2_79a8                            
  036b6  3c00                  move.w   d0,d6                              
  036b8  3a3662dc              move.w   -$24(a6,d6.w*2),d5                 
  036bc  3005                  move.w   d5,d0                              
  036be  4440                  neg.w    d0                                 
  036c0  318073b0ffff8410      move.w   d0,(-$7bf0,za0,d7.w*2)             
  036c8  21b055b0ffff68e075b0  move.l   (-$9720,za0,d5.w*4),(-$8992,za0,d7.w*4)
  036d6  5344                  subq.w   #1,d4                              
  036d8  3a06                  move.w   d6,d5                              
  036da  548f                  addq.l   #2,a7                              
  036dc  6008                  bra.s    L36e6                              
L36de:
  036de  3db652de52dc          move.w   -$22(a6,d5.w*2),-$24(a6,d5.w*2)    
  036e4  5245                  addq.w   #1,d5                              
L36e6:
  036e6  b845                  cmp.w    d5,d4                              
  036e8  6ef4                  bgt.s    L36de                              
  036ea  5247                  addq.w   #1,d7                              
L36ec:
  036ec  0c47000f              cmpi.w   #$f,d7                             
  036f0  6fbe                  ble.s    L36b0                              
  036f2  4cdf00f0              movem.l  (a7)+,d4/d5/d6/d7                  
  036f6  4e5e                  unlk     a6                                 
  036f8  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_36fa
;----------------------------------------------------------------------
f3_36fa:
  036fa  4e56ffee              link     a6,#-18                            
  036fe  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  03702  7e01                  moveq    #1,d7                              
  03704  6006                  bra.s    L370c                              
L3706:
  03706  3d8772ee              move.w   d7,-$12(a6,d7.w*2)                 
  0370a  5247                  addq.w   #1,d7                              
L370c:
  0370c  0c470008              cmpi.w   #8,d7                              
  03710  6ff4                  ble.s    L3706                              
  03712  7808                  moveq    #8,d4                              
  03714  7e01                  moveq    #1,d7                              
  03716  603c                  bra.s    L3754                              
L3718:
  03718  3f04                  move.w   d4,-(a7)                           
  0371a  4ead0242              jsr      f2_79a8                            
  0371e  3c00                  move.w   d0,d6                              
  03720  3a3662ee              move.w   -$12(a6,d6.w*2),d5                 
  03724  3005                  move.w   d5,d0                              
  03726  4440                  neg.w    d0                                 
  03728  318073b0ffff842e      move.w   d0,(-$7bd2,za0,d7.w*2)             
  03730  21b055b0ffff695875b0  move.l   (-$96a8,za0,d5.w*4),(-$8956,za0,d7.w*4)
  0373e  5344                  subq.w   #1,d4                              
  03740  3a06                  move.w   d6,d5                              
  03742  548f                  addq.l   #2,a7                              
  03744  6008                  bra.s    L374e                              
L3746:
  03746  3db652f052ee          move.w   -$10(a6,d5.w*2),-$12(a6,d5.w*2)    
  0374c  5245                  addq.w   #1,d5                              
L374e:
  0374e  b845                  cmp.w    d5,d4                              
  03750  6ef4                  bgt.s    L3746                              
  03752  5247                  addq.w   #1,d7                              
L3754:
  03754  0c470005              cmpi.w   #5,d7                              
  03758  6fbe                  ble.s    L3718                              
  0375a  4cdf00f0              movem.l  (a7)+,d4/d5/d6/d7                  
  0375e  4e5e                  unlk     a6                                 
  03760  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_3762
;----------------------------------------------------------------------
f3_3762:
  03762  4e56ffdc              link     a6,#-36                            
  03766  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  0376a  7e01                  moveq    #1,d7                              
  0376c  6006                  bra.s    L3774                              
L376e:
  0376e  3d8772dc              move.w   d7,-$24(a6,d7.w*2)                 
  03772  5247                  addq.w   #1,d7                              
L3774:
  03774  0c470011              cmpi.w   #$11,d7                            
  03778  6ff4                  ble.s    L376e                              
  0377a  7811                  moveq    #17,d4                             
  0377c  7e01                  moveq    #1,d7                              
  0377e  603c                  bra.s    L37bc                              
L3780:
  03780  3f04                  move.w   d4,-(a7)                           
  03782  4ead0242              jsr      f2_79a8                            
  03786  3c00                  move.w   d0,d6                              
  03788  3a3662dc              move.w   -$24(a6,d6.w*2),d5                 
  0378c  3005                  move.w   d5,d0                              
  0378e  4440                  neg.w    d0                                 
  03790  318073b0ffff8438      move.w   d0,(-$7bc8,za0,d7.w*2)             
  03798  21b055b0ffff68e075b0  move.l   (-$9720,za0,d5.w*4),(-$8942,za0,d7.w*4)
  037a6  5344                  subq.w   #1,d4                              
  037a8  3a06                  move.w   d6,d5                              
  037aa  548f                  addq.l   #2,a7                              
  037ac  6008                  bra.s    L37b6                              
L37ae:
  037ae  3db652de52dc          move.w   -$22(a6,d5.w*2),-$24(a6,d5.w*2)    
  037b4  5245                  addq.w   #1,d5                              
L37b6:
  037b6  b845                  cmp.w    d5,d4                              
  037b8  6ef4                  bgt.s    L37ae                              
  037ba  5247                  addq.w   #1,d7                              
L37bc:
  037bc  0c470004              cmpi.w   #4,d7                              
  037c0  6fbe                  ble.s    L3780                              
  037c2  4cdf00f0              movem.l  (a7)+,d4/d5/d6/d7                  
  037c6  4e5e                  unlk     a6                                 
  037c8  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_37ca   [jump table #91]
;----------------------------------------------------------------------
f3_37ca:
  037ca  4e56fffe              link     a6,#-2                             
  037ce  4eba0064              jsr      f3_3834                            
  037d2  4e5e                  unlk     a6                                 
  037d4  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_37d6
;----------------------------------------------------------------------
f3_37d6:
  037d6  4e56fffe              link     a6,#-2                             
  037da  33fc0006ffff83a2      move.w   #6,g_7c5e                          
  037e2  33fc0006ffff83a0      move.w   #6,g_7c60                          
  037ea  33fc000affff8374      move.w   #$a,g_7c8c                         
  037f2  33fc0002ffff8370      move.w   #2,g_7c90                          
  037fa  33f9ffff8370ffff8372  move.w   g_7c90,g_7c8e                      
  03804  33fc000cffff837c      move.w   #$c,g_7c84                         
  0380c  33fc000cffff8382      move.w   #$c,g_7c7e                         
  03814  33fc000cffff8378      move.w   #$c,g_7c88                         
  0381c  33fc000cffff8376      move.w   #$c,g_7c8a                         
  03824  4279ffff838c          clr.w    g_7c74                             
  0382a  42b9ffff83a6          clr.l    g_7c5a                             
  03830  4e5e                  unlk     a6                                 
  03832  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_3834   [jump table #90]
;----------------------------------------------------------------------
f3_3834:
  03834  4e560000              link     a6,#0                              
  03838  48e70300              movem.l  d6/d7,-(a7)                        
  0383c  42b9ffff8388          clr.l    g_7c78                             
  03842  4279ffff8380          clr.w    g_7c80                             
  03848  4279ffff837e          clr.w    g_7c82                             
  0384e  4279ffff8370          clr.w    g_7c90                             
  03854  4279ffff8372          clr.w    g_7c8e                             
  0385a  33fc000cffff837c      move.w   #$c,g_7c84                         
  03862  33fc000cffff8382      move.w   #$c,g_7c7e                         
  0386a  33fc000cffff8378      move.w   #$c,g_7c88                         
  03872  33fc000cffff8376      move.w   #$c,g_7c8a                         
  0387a  33fc0006ffff83a2      move.w   #6,g_7c5e                          
  03882  33fc0006ffff83a0      move.w   #6,g_7c60                          
  0388a  4279ffff8da4          clr.w    g_725c                             
  03890  4279ffff8dac          clr.w    g_7254                             
  03896  4279ffff8db2          clr.w    g_724e                             
  0389c  4279ffff8dae          clr.w    g_7252                             
  038a2  4279ffff8db0          clr.w    g_7250                             
  038a8  4279ffff8db4          clr.w    g_724c                             
  038ae  4279ffff8db6          clr.w    g_724a                             
  038b4  4279ffff8daa          clr.w    g_7256                             
  038ba  4279ffff8dbe          clr.w    g_7242                             
  038c0  33fc0001ffff8894      move.w   #1,g_776c                          
  038c8  7032                  moveq    #50,d0                             
  038ca  23c0ffff8384          move.l   d0,g_7c7c                          
  038d0  33fc0001ffff8390      move.w   #1,g_7c70                          
  038d8  4279ffff8da8          clr.w    g_7258                             
  038de  4279ffff8392          clr.w    g_7c6e                             
  038e4  4279ffff8396          clr.w    g_7c6a                             
  038ea  4279ffff83ae          clr.w    g_7c52                             
  038f0  4279ffff83b0          clr.w    g_7c50                             
  038f6  4279ffff83b4          clr.w    g_7c4c                             
  038fc  4279ffff83b2          clr.w    g_7c4e                             
  03902  33fc0001ffff83b8      move.w   #1,g_7c48                          
  0390a  4279ffff83ba          clr.w    g_7c46                             
  03910  33fc0001ffff8da6      move.w   #1,g_725a                          
  03918  4279ffff838e          clr.w    g_7c72                             
  0391e  4279ffff883c          clr.w    g_77c4                             
  03924  4279ffff8394          clr.w    g_7c6c                             
  0392a  4279ffff8832          clr.w    g_77ce                             
  03930  4279ffff8836          clr.w    g_77ca                             
  03936  4279ffff8834          clr.w    g_77cc                             
  0393c  33fc0002ffff883a      move.w   #2,g_77c6                          
  03944  4279ffff8da0          clr.w    g_7260                             
  0394a  4279ffff8da2          clr.w    g_725e                             
  03950  4279ffff8db8          clr.w    g_7248                             
  03956  4279ffff8dba          clr.w    g_7246                             
  0395c  4279ffff8dbc          clr.w    g_7244                             
  03962  7e00                  moveq    #0,d7                              
  03964  601a                  bra.s    L3980                              
L3966:
  03966  427073b0ffff8864      clr.w    (-$779c,za0,d7.w*2)                
  0396e  427073b0ffff8858      clr.w    (-$77a8,za0,d7.w*2)                
  03976  427073b0ffff8e3e      clr.w    (-$71c2,za0,d7.w*2)                
  0397e  5247                  addq.w   #1,d7                              
L3980:
  03980  0c470006              cmpi.w   #6,d7                              
  03984  6de0                  blt.s    L3966                              
  03986  7e00                  moveq    #0,d7                              
  03988  600a                  bra.s    L3994                              
L398a:
  0398a  423071b0ffff9858      clr.b    (-$67a8,za0,d7.w)                  
  03992  5247                  addq.w   #1,d7                              
L3994:
  03994  0c470005              cmpi.w   #5,d7                              
  03998  6ff0                  ble.s    L398a                              
  0399a  7e00                  moveq    #0,d7                              
  0399c  600a                  bra.s    L39a8                              
L399e:
  0399e  423071b0ffff8df5      clr.b    (-$720b,za0,d7.w)                  
  039a6  5247                  addq.w   #1,d7                              
L39a8:
  039a8  0c470004              cmpi.w   #4,d7                              
  039ac  6ff0                  ble.s    L399e                              
  039ae  7e00                  moveq    #0,d7                              
  039b0  600a                  bra.s    L39bc                              
L39b2:
  039b2  423071b0ffff9850      clr.b    (-$67b0,za0,d7.w)                  
  039ba  5247                  addq.w   #1,d7                              
L39bc:
  039bc  0c470006              cmpi.w   #6,d7                              
  039c0  6ff0                  ble.s    L39b2                              
  039c2  4239ffff8df1          clr.b    g_720f                             
  039c8  4239ffff8df0          clr.b    g_7210                             
  039ce  4239ffffa795          clr.b    g_586b                             
  039d4  4239ffffa794          clr.b    g_586c                             
  039da  4239ffffa796          clr.b    g_586a                             
  039e0  4239ffff8df3          clr.b    g_720d                             
  039e6  4239ffff981f          clr.b    g_67e1                             
  039ec  4279ffff3b10          clr.w    g_c4f0                             
  039f2  4279ffff978e          clr.w    g_6872                             
  039f8  4279ffff9790          clr.w    g_6870                             
  039fe  4279ffff836c          clr.w    g_7c94                             
  03a04  4279ffff836e          clr.w    g_7c92                             
  03a0a  7e01                  moveq    #1,d7                              
  03a0c  6032                  bra.s    L3a40                              
L3a0e:
  03a0e  7c00                  moveq    #0,d6                              
  03a10  6026                  bra.s    L3a38                              
L3a12:
  03a12  7014                  moveq    #20,d0                             
  03a14  c1c7                  muls.w   d7,d0                              
  03a16  0680ffff84ea          addi.l   #$ffff84ea,d0                      
  03a1c  3046                  movea.w  d6,a0                              
  03a1e  d1c8                  adda.l   a0,a0                              
  03a20  42700800              clr.w    $0(a0,d0.l)                        
  03a24  7014                  moveq    #20,d0                             
  03a26  c1c7                  muls.w   d7,d0                              
  03a28  0680ffff868e          addi.l   #$ffff868e,d0                      
  03a2e  3046                  movea.w  d6,a0                              
  03a30  d1c8                  adda.l   a0,a0                              
  03a32  42700800              clr.w    $0(a0,d0.l)                        
  03a36  5246                  addq.w   #1,d6                              
L3a38:
  03a38  0c46000a              cmpi.w   #$a,d6                             
  03a3c  6dd4                  blt.s    L3a12                              
  03a3e  5247                  addq.w   #1,d7                              
L3a40:
  03a40  0c470015              cmpi.w   #$15,d7                            
  03a44  6dc8                  blt.s    L3a0e                              
  03a46  7e00                  moveq    #0,d7                              
  03a48  602a                  bra.s    L3a74                              
L3a4a:
  03a4a  427073b0ffff784a      clr.w    (-$87b6,za0,d7.w*2)                
  03a52  427073b0ffff7856      clr.w    (-$87aa,za0,d7.w*2)                
  03a5a  7c00                  moveq    #0,d6                              
  03a5c  600e                  bra.s    L3a6c                              
L3a5e:
  03a5e  41f077b0ffff7862      lea      (-$879e,za0,d7.w*8),a0             
  03a66  42706200              clr.w    $0(a0,d6.w*2)                      
  03a6a  5246                  addq.w   #1,d6                              
L3a6c:
  03a6c  0c460004              cmpi.w   #4,d6                              
  03a70  6dec                  blt.s    L3a5e                              
  03a72  5247                  addq.w   #1,d7                              
L3a74:
  03a74  0c470006              cmpi.w   #6,d7                              
  03a78  6dd0                  blt.s    L3a4a                              
  03a7a  4ebafb86              jsr      f3_3602                            
  03a7e  4ebafc12              jsr      f3_3692                            
  03a82  4eba006e              jsr      f3_3af2                            
  03a86  4ebafc72              jsr      f3_36fa                            
  03a8a  4ebafcd6              jsr      f3_3762                            
  03a8e  4eba00ca              jsr      f3_3b5a                            
  03a92  4ead0072              jsr      f2_0404                            
  03a96  23f9ffff7486ffff76f6  move.l   g_8b7a,g_890a                      
  03aa0  4ab9ffff3b14          tst.l    g_c4ec                             
  03aa6  6708                  beq.s    L3ab0                              
  03aa8  2079ffff3b14          movea.l  g_c4ec,a0                          
  03aae  a01f                  _DisposePtr                                 ; $a01f
L3ab0:
  03ab0  4ab9ffff3b18          tst.l    g_c4e8                             
  03ab6  6708                  beq.s    L3ac0                              
  03ab8  2079ffff3b18          movea.l  g_c4e8,a0                          
  03abe  a01f                  _DisposePtr                                 ; $a01f
L3ac0:
  03ac0  7005                  moveq    #5,d0                              
  03ac2  33c0ffff3ad2          move.w   d0,g_c52e                          
  03ac8  33c0ffff3d30          move.w   d0,g_c2d0                          
  03ace  720a                  moveq    #10,d1                             
  03ad0  33c1ffff3ad0          move.w   d1,g_c530                          
  03ad6  33c1ffff3d3c          move.w   d1,g_c2c4                          
  03adc  740a                  moveq    #10,d2                             
  03ade  33c2ffff83b6          move.w   d2,g_7c4a                          
  03ae4  33c2ffff8c78          move.w   d2,g_7388                          
  03aea  4cdf00c0              movem.l  (a7)+,d6/d7                        
  03aee  4e5e                  unlk     a6                                 
  03af0  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_3af2
;----------------------------------------------------------------------
f3_3af2:
  03af2  4e56ffc8              link     a6,#-56                            
  03af6  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  03afa  7e01                  moveq    #1,d7                              
  03afc  6006                  bra.s    L3b04                              
L3afe:
  03afe  3d8772c8              move.w   d7,-$38(a6,d7.w*2)                 
  03b02  5247                  addq.w   #1,d7                              
L3b04:
  03b04  0c47001a              cmpi.w   #$1a,d7                            
  03b08  6ff4                  ble.s    L3afe                              
  03b0a  781a                  moveq    #26,d4                             
  03b0c  7e01                  moveq    #1,d7                              
  03b0e  603c                  bra.s    L3b4c                              
L3b10:
  03b10  3f04                  move.w   d4,-(a7)                           
  03b12  4ead0242              jsr      f2_79a8                            
  03b16  3c00                  move.w   d0,d6                              
  03b18  3a3662c8              move.w   -$38(a6,d6.w*2),d5                 
  03b1c  3005                  move.w   d5,d0                              
  03b1e  4440                  neg.w    d0                                 
  03b20  318073b0ffff83e4      move.w   d0,(-$7c1c,za0,d7.w*2)             
  03b28  21b055b0ffff826a75b0  move.l   (-$7d96,za0,d5.w*4),(-$89ea,za0,d7.w*4)
  03b36  5344                  subq.w   #1,d4                              
  03b38  3a06                  move.w   d6,d5                              
  03b3a  548f                  addq.l   #2,a7                              
  03b3c  6008                  bra.s    L3b46                              
L3b3e:
  03b3e  3db652ca52c8          move.w   -$36(a6,d5.w*2),-$38(a6,d5.w*2)    
  03b44  5245                  addq.w   #1,d5                              
L3b46:
  03b46  b845                  cmp.w    d5,d4                              
  03b48  6ef4                  bgt.s    L3b3e                              
  03b4a  5247                  addq.w   #1,d7                              
L3b4c:
  03b4c  0c470016              cmpi.w   #$16,d7                            
  03b50  6fbe                  ble.s    L3b10                              
  03b52  4cdf00f0              movem.l  (a7)+,d4/d5/d6/d7                  
  03b56  4e5e                  unlk     a6                                 
  03b58  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_3b5a
;----------------------------------------------------------------------
f3_3b5a:
  03b5a  4e56ffe6              link     a6,#-26                            
  03b5e  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  03b62  7e01                  moveq    #1,d7                              
  03b64  6006                  bra.s    L3b6c                              
L3b66:
  03b66  3d8772e6              move.w   d7,-$1a(a6,d7.w*2)                 
  03b6a  5247                  addq.w   #1,d7                              
L3b6c:
  03b6c  0c47000b              cmpi.w   #$b,d7                             
  03b70  6ff4                  ble.s    L3b66                              
  03b72  780b                  moveq    #11,d4                             
  03b74  7e01                  moveq    #1,d7                              
  03b76  603c                  bra.s    L3bb4                              
L3b78:
  03b78  3f04                  move.w   d4,-(a7)                           
  03b7a  4ead0242              jsr      f2_79a8                            
  03b7e  3c00                  move.w   d0,d6                              
  03b80  3a3662e6              move.w   -$1a(a6,d6.w*2),d5                 
  03b84  3005                  move.w   d5,d0                              
  03b86  4440                  neg.w    d0                                 
  03b88  318073b0ffff8440      move.w   d0,(-$7bc0,za0,d7.w*2)             
  03b90  21b055b0ffff830a75b0  move.l   (-$7cf6,za0,d5.w*4),(-$8932,za0,d7.w*4)
  03b9e  5344                  subq.w   #1,d4                              
  03ba0  3a06                  move.w   d6,d5                              
  03ba2  548f                  addq.l   #2,a7                              
  03ba4  6008                  bra.s    L3bae                              
L3ba6:
  03ba6  3db652e852e6          move.w   -$18(a6,d5.w*2),-$1a(a6,d5.w*2)    
  03bac  5245                  addq.w   #1,d5                              
L3bae:
  03bae  b845                  cmp.w    d5,d4                              
  03bb0  6ef4                  bgt.s    L3ba6                              
  03bb2  5247                  addq.w   #1,d7                              
L3bb4:
  03bb4  0c470006              cmpi.w   #6,d7                              
  03bb8  6fbe                  ble.s    L3b78                              
  03bba  4cdf00f0              movem.l  (a7)+,d4/d5/d6/d7                  
  03bbe  4e5e                  unlk     a6                                 
  03bc0  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_3bc2   [jump table #92]
;----------------------------------------------------------------------
f3_3bc2:
  03bc2  4e56fdb2              link     a6,#-590                           
  03bc6  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  03bca  1e2e0008              move.b   $8(a6),d7                          
  03bce  3a2e000c              move.w   $c(a6),d5                          
  03bd2  2d79ffffaa24ff36      move.l   g_55dc,-$ca(a6)                    
  03bda  2d79ffffaa28ff3a      move.l   g_55d8,-$c6(a6)                    
  03be2  426eff1c              clr.w    -$e4(a6)                           
  03be6  422efdbb              clr.b    -$245(a6)                          
  03bea  7600                  moveq    #0,d3                              
  03bec  422efdba              clr.b    -$246(a6)                          
  03bf0  3f3c03f5              move.w   #$3f5,-(a7)                        
  03bf4  486efdd8              pea      -$228(a6)                          
  03bf8  486eff1e              pea      -$e2(a6)                           
  03bfc  4ead025a              jsr      f2_194e                            
  03c00  303053b0ffff8ba6      move.w   (-$745a,za0,d5.w*2),d0             
  03c08  064003fc              addi.w   #$3fc,d0                           
  03c0c  3e80                  move.w   d0,(a7)                            
  03c0e  486efdbc              pea      -$244(a6)                          
  03c12  486eff20              pea      -$e0(a6)                           
  03c16  4ead025a              jsr      f2_194e                            
  03c1a  4a07                  tst.b    d7                                 
  03c1c  4fef0012              lea      $12(a7),a7                         
  03c20  6720                  beq.s    L3c42                              
  03c22  4a2e000a              tst.b    $a(a6)                             
  03c26  671a                  beq.s    L3c42                              
  03c28  2f2efde4              move.l   -$21c(a6),-(a7)                    
  03c2c  2f2efdec              move.l   -$214(a6),-(a7)                    
  03c30  2f3c00000258          move.l   STR_0258,-(a7)                     ; "?"
  03c36  2f3c0000025a          move.l   STR_025a,-(a7)                     ; "?"
  03c3c  a98b                  _ParamText                                  ; $a98b
  03c3e  6000020a              bra.w    L3e4a                              
L3c42:
  03c42  4a07                  tst.b    d7                                 
  03c44  660001c0              bne.w    L3e06                              
  03c48  4a2e000a              tst.b    $a(a6)                             
  03c4c  670001b8              beq.w    L3e06                              
  03c50  303053b0ffff8ba6      move.w   (-$745a,za0,d5.w*2),d0             
  03c58  6b0001f0              bmi.w    L3e4a                              
  03c5c  5940                  subq.w   #4,d0                              
  03c5e  6700011c              beq.w    L3d7c                              
  03c62  6a0c                  bpl.s    L3c70                              
  03c64  5440                  addq.w   #2,d0                              
  03c66  6712                  beq.s    L3c7a                              
  03c68  6a0000ac              bpl.w    L3d16                              
  03c6c  600001dc              bra.w    L3e4a                              
L3c70:
  03c70  5540                  subq.w   #2,d0                              
  03c72  6a0001d6              bpl.w    L3e4a                              
  03c76  60000128              bra.w    L3da0                              
L3c7a:
  03c7a  2f2efddc              move.l   -$224(a6),-(a7)                    
  03c7e  2f2efdc0              move.l   -$240(a6),-(a7)                    
  03c82  2f2efdc4              move.l   -$23c(a6),-(a7)                    
  03c86  2f3c0000025c          move.l   STR_025c,-(a7)                     ; "?"
  03c8c  a98b                  _ParamText                                  ; $a98b
  03c8e  700a                  moveq    #10,d0                             
  03c90  9079ffff8392          sub.w    g_7c6e,d0                          
  03c96  9079ffff838e          sub.w    g_7c72,d0                          
  03c9c  33c0ffff8374          move.w   d0,g_7c8c                          
  03ca2  7c01                  moveq    #1,d6                              
  03ca4  602e                  bra.s    L3cd4                              
L3ca6:
  03ca6  307063b0ffff8e56      movea.w  (-$71aa,za0,d6.w*2),a0             
  03cae  d1fcffff8e0c          adda.l   #$ffff8e0c,a0                      
  03cb4  4a10                  tst.b    (a0)                               
  03cb6  671a                  beq.s    L3cd2                              
  03cb8  7017                  moveq    #23,d0                             
  03cba  d07063b0ffff8e56      add.w    (-$71aa,za0,d6.w*2),d0             
  03cc2  660e                  bne.s    L3cd2                              
  03cc4  303063b0ffff8840      move.w   (-$77c0,za0,d6.w*2),d0             
  03ccc  9179ffff8374          sub.w    d0,g_7c8c                          
L3cd2:
  03cd2  5246                  addq.w   #1,d6                              
L3cd4:
  03cd4  bc79ffff8dba          cmp.w    g_7246,d6                          
  03cda  6fca                  ble.s    L3ca6                              
  03cdc  23f9ffff69c0ffff8398  move.l   g_9640,g_7c68                      
  03ce6  33f9ffff3aeeffff83a4  move.w   g_c512,g_7c5c                      
  03cf0  4279ffff837e          clr.w    g_7c82                             
  03cf6  33fc0006ffff83a0      move.w   #6,g_7c60                          
  03cfe  4ead01a2              jsr      f2_68d4                            
  03d02  427053b0ffff8ba6      clr.w    (-$745a,za0,d5.w*2)                
  03d0a  427053b0ffff8b7c      clr.w    (-$7484,za0,d5.w*2)                
  03d12  60000136              bra.w    L3e4a                              
L3d16:
  03d16  31bc000153b0ffff8ba6  move.w   #1,(-$745a,za0,d5.w*2)             
  03d20  3f3c0019              move.w   #$19,-(a7)                         
  03d24  4ead0242              jsr      f2_79a8                            
  03d28  b079ffff837c          cmp.w    g_7c84,d0                          
  03d2e  548f                  addq.l   #2,a7                              
  03d30  6c24                  bge.s    L3d56                              
  03d32  2f2efddc              move.l   -$224(a6),-(a7)                    
  03d36  2f2efdd0              move.l   -$230(a6),-(a7)                    
  03d3a  3f3c0004              move.w   #4,-(a7)                           
  03d3e  4ead0242              jsr      f2_79a8                            
  03d42  548f                  addq.l   #2,a7                              
  03d44  2f360520fdbc          move.l   (-$244,a6,d0.w*4),-(a7)            
  03d4a  2f3c0000025e          move.l   STR_025e,-(a7)                     ; "?"
  03d50  a98b                  _ParamText                                  ; $a98b
  03d52  600000f6              bra.w    L3e4a                              
L3d56:
  03d56  2f2efddc              move.l   -$224(a6),-(a7)                    
  03d5a  2f2efdd4              move.l   -$22c(a6),-(a7)                    
  03d5e  2f3c00000260          move.l   STR_0260,-(a7)                     ; "?"
  03d64  2f3c00000262          move.l   STR_0262,-(a7)                     ; "?"
  03d6a  a98b                  _ParamText                                  ; $a98b
  03d6c  0479001effff8370      subi.w   #$1e,g_7c90                        
  03d74  4ead01da              jsr      f2_6c08                            
  03d78  600000d0              bra.w    L3e4a                              
L3d7c:
  03d7c  2f2efddc              move.l   -$224(a6),-(a7)                    
  03d80  2f2efdc0              move.l   -$240(a6),-(a7)                    
  03d84  3f3c0002              move.w   #2,-(a7)                           
  03d88  4ead0242              jsr      f2_79a8                            
  03d8c  548f                  addq.l   #2,a7                              
  03d8e  2f360520fdc0          move.l   (-$240,a6,d0.w*4),-(a7)            
  03d94  2f3c00000264          move.l   STR_0264,-(a7)                     ; "?"
  03d9a  a98b                  _ParamText                                  ; $a98b
  03d9c  600000ac              bra.w    L3e4a                              
L3da0:
  03da0  3f3c0019              move.w   #$19,-(a7)                         
  03da4  4ead0242              jsr      f2_79a8                            
  03da8  b079ffff837c          cmp.w    g_7c84,d0                          
  03dae  548f                  addq.l   #2,a7                              
  03db0  6c2c                  bge.s    L3dde                              
  03db2  31bc000153b0ffff8ba6  move.w   #1,(-$745a,za0,d5.w*2)             
  03dbc  2f2efddc              move.l   -$224(a6),-(a7)                    
  03dc0  2f2efdcc              move.l   -$234(a6),-(a7)                    
  03dc4  3f3c0003              move.w   #3,-(a7)                           
  03dc8  4ead0242              jsr      f2_79a8                            
  03dcc  548f                  addq.l   #2,a7                              
  03dce  2f360520fdbc          move.l   (-$244,a6,d0.w*4),-(a7)            
  03dd4  2f3c00000266          move.l   STR_0266,-(a7)                     ; "?"
  03dda  a98b                  _ParamText                                  ; $a98b
  03ddc  606c                  bra.s    L3e4a                              
L3dde:
  03dde  2f2efddc              move.l   -$224(a6),-(a7)                    
  03de2  2f2efdd0              move.l   -$230(a6),-(a7)                    
  03de6  2f3c00000268          move.l   STR_0268,-(a7)                     ; "?"
  03dec  2f3c0000026a          move.l   STR_026a,-(a7)                     ; "?"
  03df2  a98b                  _ParamText                                  ; $a98b
  03df4  427053b0ffff8ba6      clr.w    (-$745a,za0,d5.w*2)                
  03dfc  427053b0ffff8b7c      clr.w    (-$7484,za0,d5.w*2)                
  03e04  6044                  bra.s    L3e4a                              
L3e06:
  03e06  4a07                  tst.b    d7                                 
  03e08  671e                  beq.s    L3e28                              
  03e0a  4a2e000a              tst.b    $a(a6)                             
  03e0e  6618                  bne.s    L3e28                              
  03e10  2f2efde8              move.l   -$218(a6),-(a7)                    
  03e14  2f2efdec              move.l   -$214(a6),-(a7)                    
  03e18  2f3c0000026c          move.l   STR_026c,-(a7)                     ; "?"
  03e1e  2f3c0000026e          move.l   STR_026e,-(a7)                     ; "?"
  03e24  a98b                  _ParamText                                  ; $a98b
  03e26  6022                  bra.s    L3e4a                              
L3e28:
  03e28  4a07                  tst.b    d7                                 
  03e2a  661e                  bne.s    L3e4a                              
  03e2c  4a2e000a              tst.b    $a(a6)                             
  03e30  6618                  bne.s    L3e4a                              
  03e32  2f2efde0              move.l   -$220(a6),-(a7)                    
  03e36  2f3c00000270          move.l   STR_0270,-(a7)                     ; "?"
  03e3c  2f3c00000272          move.l   STR_0272,-(a7)                     ; "?"
  03e42  2f3c00000274          move.l   STR_0274,-(a7)                     ; "?"
  03e48  a98b                  _ParamText                                  ; $a98b
L3e4a:
  03e4a  7800                  moveq    #0,d4                              
  03e4c  600e                  bra.s    L3e5c                              
L3e4e:
  03e4e  42764320ff40          clr.w    (-$c0,a6,d4.w*2)                   
  03e54  42764320ff22          clr.w    (-$de,a6,d4.w*2)                   
  03e5a  5244                  addq.w   #1,d4                              
L3e5c:
  03e5c  0c44000a              cmpi.w   #$a,d4                             
  03e60  6dec                  blt.s    L3e4e                              
  03e62  4a07                  tst.b    d7                                 
  03e64  67000086              beq.w    L3eec                              
  03e68  7800                  moveq    #0,d4                              
  03e6a  6020                  bra.s    L3e8c                              
L3e6c:
  03e6c  7014                  moveq    #20,d0                             
  03e6e  c1f9ffff8894          muls.w   g_776c,d0                          
  03e74  0680ffff84ea          addi.l   #$ffff84ea,d0                      
  03e7a  3044                  movea.w  d4,a0                              
  03e7c  d1c8                  adda.l   a0,a0                              
  03e7e  4a700800              tst.w    $0(a0,d0.l)                        
  03e82  6f06                  ble.s    L3e8a                              
  03e84  1d7c0001fdba          move.b   #1,-$246(a6)                       
L3e8a:
  03e8a  5244                  addq.w   #1,d4                              
L3e8c:
  03e8c  0c44000a              cmpi.w   #$a,d4                             
  03e90  6dda                  blt.s    L3e6c                              
  03e92  4a2efdba              tst.b    -$246(a6)                          
  03e96  6742                  beq.s    L3eda                              
  03e98  7800                  moveq    #0,d4                              
  03e9a  6036                  bra.s    L3ed2                              
L3e9c:
  03e9c  7014                  moveq    #20,d0                             
  03e9e  c1f9ffff8894          muls.w   g_776c,d0                          
  03ea4  0680ffff84ea          addi.l   #$ffff84ea,d0                      
  03eaa  3044                  movea.w  d4,a0                              
  03eac  d1c8                  adda.l   a0,a0                              
  03eae  3db008004320ff40      move.w   $0(a0,d0.l),(-$c0,a6,d4.w*2)       
  03eb6  7014                  moveq    #20,d0                             
  03eb8  c1f9ffff8894          muls.w   g_776c,d0                          
  03ebe  0680ffff868e          addi.l   #$ffff868e,d0                      
  03ec4  3044                  movea.w  d4,a0                              
  03ec6  d1c8                  adda.l   a0,a0                              
  03ec8  3db008004320ff22      move.w   $0(a0,d0.l),(-$de,a6,d4.w*2)       
  03ed0  5244                  addq.w   #1,d4                              
L3ed2:
  03ed2  0c44000a              cmpi.w   #$a,d4                             
  03ed6  6dc4                  blt.s    L3e9c                              
  03ed8  6012                  bra.s    L3eec                              
L3eda:
  03eda  486eff22              pea      -$de(a6)                           
  03ede  486eff40              pea      -$c0(a6)                           
  03ee2  3f05                  move.w   d5,-(a7)                           
  03ee4  4ead0092              jsr      f2_0d7c                            
  03ee8  4fef000a              lea      $a(a7),a7                          
L3eec:
  03eec  486efdb6              pea      -$24a(a6)                          
  03ef0  a874                  _GetPort                                    ; $a874
  03ef2  42a7                  clr.l    -(a7)                              
  03ef4  3f3c00f7              move.w   #$f7,-(a7)                         
  03ef8  486eff56              pea      -$aa(a6)                           
  03efc  4878ffff              pea      ($ffff).w                          
  03f00  a97c                  _GetNewDialog                               ; $a97c
  03f02  285f                  movea.l  (a7)+,a4                           
  03f04  2f0c                  move.l   a4,-(a7)                           
  03f06  4ead06ba              jsr      f7_161c                            
  03f0a  486efe04              pea      -$1fc(a6)                          
  03f0e  2f3c0032000f          move.l   #$32000f,-(a7)                     
  03f14  2f3c00d20136          move.l   #$d20136,-(a7)                     
  03f1a  a8a7                  _SetRect                                    ; $a8a7
  03f1c  4297                  clr.l    (a7)                               
  03f1e  a8d8                  _NewRgn                                     ; $a8d8
  03f20  245f                  movea.l  (a7)+,a2                           
  03f22  2f0a                  move.l   a2,-(a7)                           
  03f24  486efe04              pea      -$1fc(a6)                          
  03f28  a8df                  _RectRgn                                    ; $a8df
  03f2a  42a7                  clr.l    -(a7)                              
  03f2c  3f3c00f7              move.w   #$f7,-(a7)                         
  03f30  a9bc                  _GetPicture                                 ; $a9bc
  03f32  265f                  movea.l  (a7)+,a3                           
  03f34  204b                  movea.l  a3,a0                              
  03f36  a029                  _HLock                                      ; $a029
  03f38  2f0c                  move.l   a4,-(a7)                           
  03f3a  a873                  _SetPort                                    ; $a873
  03f3c  7800                  moveq    #0,d4                              
  03f3e  6014                  bra.s    L3f54                              
L3f40:
  03f40  4a764320ff40          tst.w    (-$c0,a6,d4.w*2)                   
  03f46  660a                  bne.s    L3f52                              
  03f48  2f0c                  move.l   a4,-(a7)                           
  03f4a  7003                  moveq    #3,d0                              
  03f4c  d044                  add.w    d4,d0                              
  03f4e  3f00                  move.w   d0,-(a7)                           
  03f50  a827                  _ShowDialogItem                             ; $a827
L3f52:
  03f52  5244                  addq.w   #1,d4                              
L3f54:
  03f54  0c44000a              cmpi.w   #$a,d4                             
  03f58  6de6                  blt.s    L3f40                              
  03f5a  2f0c                  move.l   a4,-(a7)                           
  03f5c  a915                  _ShowWindow                                 ; $a915
  03f5e  2f0b                  move.l   a3,-(a7)                           
  03f60  486efe04              pea      -$1fc(a6)                          
  03f64  a8f6                  _DrawPicture                                ; $a8f6
  03f66  3f2eff48              move.w   -$b8(a6),-(a7)                     
  03f6a  3f2eff46              move.w   -$ba(a6),-(a7)                     
  03f6e  2f0c                  move.l   a4,-(a7)                           
  03f70  4eba021c              jsr      f3_418e                            
  03f74  426eff1c              clr.w    -$e4(a6)                           
  03f78  508f                  addq.l   #8,a7                              
L3f7a:
  03f7a  42a7                  clr.l    -(a7)                              
  03f7c  486eff1c              pea      -$e4(a6)                           
  03f80  a991                  _ModalDialog                                ; $a991
  03f82  302eff1c              move.w   -$e4(a6),d0                        
  03f86  6b000118              bmi.w    L40a0                              
  03f8a  0440000c              subi.w   #$c,d0                             
  03f8e  67000098              beq.w    L4028                              
  03f92  6a00010c              bpl.w    L40a0                              
  03f96  0440fff7              subi.w   #$fff7,d0                          
  03f9a  6b000104              bmi.w    L40a0                              
  03f9e  486eff22              pea      -$de(a6)                           
  03fa2  486eff40              pea      -$c0(a6)                           
  03fa6  3f2eff1c              move.w   -$e4(a6),-(a7)                     
  03faa  4ead0202              jsr      f2_7366                            
  03fae  4a00                  tst.b    d0                                 
  03fb0  4fef000a              lea      $a(a7),a7                          
  03fb4  672a                  beq.s    L3fe0                              
  03fb6  2f0c                  move.l   a4,-(a7)                           
  03fb8  3f2eff1c              move.w   -$e4(a6),-(a7)                     
  03fbc  a827                  _ShowDialogItem                             ; $a827
  03fbe  7601                  moveq    #1,d3                              
  03fc0  486eff22              pea      -$de(a6)                           
  03fc4  486eff40              pea      -$c0(a6)                           
  03fc8  3f2eff1c              move.w   -$e4(a6),-(a7)                     
  03fcc  3f05                  move.w   d5,-(a7)                           
  03fce  4ead00ba              jsr      f2_1652                            
  03fd2  302eff1c              move.w   -$e4(a6),d0                        
  03fd6  42760320ff3a          clr.w    (-$c6,a6,d0.w*2)                   
  03fdc  4fef000c              lea      $c(a7),a7                          
L3fe0:
  03fe0  0c6e0005ff1c          cmpi.w   #5,-$e4(a6)                        
  03fe6  6604                  bne.s    L3fec                              
  03fe8  4ead075a              jsr      f7_31f0                            
L3fec:
  03fec  2f0b                  move.l   a3,-(a7)                           
  03fee  486efe04              pea      -$1fc(a6)                          
  03ff2  a8f6                  _DrawPicture                                ; $a8f6
  03ff4  7800                  moveq    #0,d4                              
  03ff6  6014                  bra.s    L400c                              
L3ff8:
  03ff8  4a764320ff40          tst.w    (-$c0,a6,d4.w*2)                   
  03ffe  6f0a                  ble.s    L400a                              
  04000  2f0c                  move.l   a4,-(a7)                           
  04002  7003                  moveq    #3,d0                              
  04004  d044                  add.w    d4,d0                              
  04006  3f00                  move.w   d0,-(a7)                           
  04008  a828                  _LayerDispatch                              ; $a828
L400a:
  0400a  5244                  addq.w   #1,d4                              
L400c:
  0400c  0c44000a              cmpi.w   #$a,d4                             
  04010  6de6                  blt.s    L3ff8                              
  04012  3f2eff48              move.w   -$b8(a6),-(a7)                     
  04016  3f2eff46              move.w   -$ba(a6),-(a7)                     
  0401a  2f0c                  move.l   a4,-(a7)                           
  0401c  4eba0170              jsr      f3_418e                            
  04020  2e8a                  move.l   a2,(a7)                            
  04022  a927                  _InvalRgn                                   ; $a927
  04024  588f                  addq.l   #4,a7                              
  04026  6078                  bra.s    L40a0                              
L4028:
  04028  486eff22              pea      -$de(a6)                           
  0402c  486eff40              pea      -$c0(a6)                           
  04030  3f2eff1c              move.w   -$e4(a6),-(a7)                     
  04034  4ead0202              jsr      f2_7366                            
  04038  4a00                  tst.b    d0                                 
  0403a  4fef000a              lea      $a(a7),a7                          
  0403e  6726                  beq.s    L4066                              
  04040  2f0c                  move.l   a4,-(a7)                           
  04042  3f2eff1c              move.w   -$e4(a6),-(a7)                     
  04046  a827                  _ShowDialogItem                             ; $a827
  04048  302eff1c              move.w   -$e4(a6),d0                        
  0404c  30760320ff3a          movea.w  (-$c6,a6,d0.w*2),a0                
  04052  2208                  move.l   a0,d1                              
  04054  d3b9ffff83a6          add.l    d1,g_7c5a                          
  0405a  42760320ff3a          clr.w    (-$c6,a6,d0.w*2)                   
  04060  4ead01ba              jsr      f2_6a8c                            
  04064  7601                  moveq    #1,d3                              
L4066:
  04066  2f0b                  move.l   a3,-(a7)                           
  04068  486efe04              pea      -$1fc(a6)                          
  0406c  a8f6                  _DrawPicture                                ; $a8f6
  0406e  7800                  moveq    #0,d4                              
  04070  6014                  bra.s    L4086                              
L4072:
  04072  4a764320ff40          tst.w    (-$c0,a6,d4.w*2)                   
  04078  6f0a                  ble.s    L4084                              
  0407a  2f0c                  move.l   a4,-(a7)                           
  0407c  7003                  moveq    #3,d0                              
  0407e  d044                  add.w    d4,d0                              
  04080  3f00                  move.w   d0,-(a7)                           
  04082  a828                  _LayerDispatch                              ; $a828
L4084:
  04084  5244                  addq.w   #1,d4                              
L4086:
  04086  0c44000a              cmpi.w   #$a,d4                             
  0408a  6de6                  blt.s    L4072                              
  0408c  3f2eff48              move.w   -$b8(a6),-(a7)                     
  04090  3f2eff46              move.w   -$ba(a6),-(a7)                     
  04094  2f0c                  move.l   a4,-(a7)                           
  04096  4eba00f6              jsr      f3_418e                            
  0409a  2e8a                  move.l   a2,(a7)                            
  0409c  a927                  _InvalRgn                                   ; $a927
  0409e  588f                  addq.l   #4,a7                              
L40a0:
  040a0  2f0c                  move.l   a4,-(a7)                           
  040a2  a920                  _BringToFront                               ; $a920
  040a4  7800                  moveq    #0,d4                              
  040a6  600c                  bra.s    L40b4                              
L40a8:
  040a8  4a764320ff40          tst.w    (-$c0,a6,d4.w*2)                   
  040ae  6702                  beq.s    L40b2                              
  040b0  7600                  moveq    #0,d3                              
L40b2:
  040b2  5244                  addq.w   #1,d4                              
L40b4:
  040b4  0c44000a              cmpi.w   #$a,d4                             
  040b8  6dee                  blt.s    L40a8                              
  040ba  4a03                  tst.b    d3                                 
  040bc  6706                  beq.s    L40c4                              
  040be  3d7c0001ff1c          move.w   #1,-$e4(a6)                        
L40c4:
  040c4  0c6e0001ff1c          cmpi.w   #1,-$e4(a6)                        
  040ca  6600feae              bne.w    L3f7a                              
  040ce  204b                  movea.l  a3,a0                              
  040d0  a02a                  _HUnlock                                    ; $a02a
  040d2  2f0b                  move.l   a3,-(a7)                           
  040d4  a9a3                  _ReleaseResource                            ; $a9a3
  040d6  2f0a                  move.l   a2,-(a7)                           
  040d8  a8d9                  _DisposeRgn                                 ; $a8d9
  040da  2f0c                  move.l   a4,-(a7)                           
  040dc  a983                  _DisposeDialog                              ; $a983
  040de  7800                  moveq    #0,d4                              
  040e0  600c                  bra.s    L40ee                              
L40e2:
  040e2  4a764320ff40          tst.w    (-$c0,a6,d4.w*2)                   
  040e8  6702                  beq.s    L40ec                              
  040ea  7600                  moveq    #0,d3                              
L40ec:
  040ec  5244                  addq.w   #1,d4                              
L40ee:
  040ee  0c44000a              cmpi.w   #$a,d4                             
  040f2  6dee                  blt.s    L40e2                              
  040f4  4a03                  tst.b    d3                                 
  040f6  6616                  bne.s    L410e                              
  040f8  31bc000153b0ffff8ba6  move.w   #1,(-$745a,za0,d5.w*2)             
  04102  31bc00f653b0ffff8b7c  move.w   #$f6,(-$7484,za0,d5.w*2)           
  0410c  6010                  bra.s    L411e                              
L410e:
  0410e  427053b0ffff8ba6      clr.w    (-$745a,za0,d5.w*2)                
  04116  427053b0ffff8b7c      clr.w    (-$7484,za0,d5.w*2)                
L411e:
  0411e  7801                  moveq    #1,d4                              
  04120  600a                  bra.s    L412c                              
L4122:
  04122  20764520fdd8          movea.l  (-$228,a6,d4.w*4),a0               
  04128  a01f                  _DisposePtr                                 ; $a01f
  0412a  5244                  addq.w   #1,d4                              
L412c:
  0412c  b86eff1e              cmp.w    -$e2(a6),d4                        
  04130  6ff0                  ble.s    L4122                              
  04132  7801                  moveq    #1,d4                              
  04134  600a                  bra.s    L4140                              
L4136:
  04136  20764520fdbc          movea.l  (-$244,a6,d4.w*4),a0               
  0413c  a01f                  _DisposePtr                                 ; $a01f
  0413e  5244                  addq.w   #1,d4                              
L4140:
  04140  b86eff20              cmp.w    -$e0(a6),d4                        
  04144  6ff0                  ble.s    L4136                              
  04146  7800                  moveq    #0,d4                              
  04148  6036                  bra.s    L4180                              
L414a:
  0414a  7014                  moveq    #20,d0                             
  0414c  c1f9ffff8894          muls.w   g_776c,d0                          
  04152  0680ffff84ea          addi.l   #$ffff84ea,d0                      
  04158  3044                  movea.w  d4,a0                              
  0415a  d1c8                  adda.l   a0,a0                              
  0415c  31b64320ff400800      move.w   (-$c0,a6,d4.w*2),$0(a0,d0.l)       
  04164  7014                  moveq    #20,d0                             
  04166  c1f9ffff8894          muls.w   g_776c,d0                          
  0416c  0680ffff868e          addi.l   #$ffff868e,d0                      
  04172  3044                  movea.w  d4,a0                              
  04174  d1c8                  adda.l   a0,a0                              
  04176  31b64320ff220800      move.w   (-$de,a6,d4.w*2),$0(a0,d0.l)       
  0417e  5244                  addq.w   #1,d4                              
L4180:
  04180  0c44000a              cmpi.w   #$a,d4                             
  04184  6dc4                  blt.s    L414a                              
  04186  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  0418a  4e5e                  unlk     a6                                 
  0418c  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_418e
;----------------------------------------------------------------------
f3_418e:
  0418e  4e56ffe6              link     a6,#-26                            
  04192  2f0c                  move.l   a4,-(a7)                           
  04194  286e0008              movea.l  $8(a6),a4                          
  04198  0c6e0006000c          cmpi.w   #6,$c(a6)                          
  0419e  6e08                  bgt.s    L41a8                              
  041a0  0c6e0005000e          cmpi.w   #5,$e(a6)                          
  041a6  6f0a                  ble.s    L41b2                              
L41a8:
  041a8  3f3c0001              move.w   #1,-(a7)                           
  041ac  a9c8                  _SysBeep                                    ; $a9c8
  041ae  60000082              bra.w    L4232                              
L41b2:
  041b2  4a6e000c              tst.w    $c(a6)                             
  041b6  673a                  beq.s    L41f2                              
  041b8  486efffc              pea      -$4(a6)                            
  041bc  487801f3              pea      ($1f3).w                           
  041c0  3f2e000c              move.w   $c(a6),-(a7)                       
  041c4  3f3c0006              move.w   #6,-(a7)                           
  041c8  2f0c                  move.l   a4,-(a7)                           
  041ca  4ead01aa              jsr      f2_6a0e                            
  041ce  2e8c                  move.l   a4,(a7)                            
  041d0  3f3c0006              move.w   #6,-(a7)                           
  041d4  486efffa              pea      -$6(a6)                            
  041d8  486efff6              pea      -$a(a6)                            
  041dc  486effe6              pea      -$1a(a6)                           
  041e0  a98d                  _GetDialogItem                              ; $a98d
  041e2  3eaefffc              move.w   -$4(a6),(a7)                       
  041e6  486effe6              pea      -$1a(a6)                           
  041ea  4ead06d2              jsr      f7_1a72                            
  041ee  4fef0010              lea      $10(a7),a7                         
L41f2:
  041f2  4a6e000e              tst.w    $e(a6)                             
  041f6  673a                  beq.s    L4232                              
  041f8  486efffe              pea      -$2(a6)                            
  041fc  48780258              pea      ($258).w                           
  04200  3f2e000e              move.w   $e(a6),-(a7)                       
  04204  3f3c0007              move.w   #7,-(a7)                           
  04208  2f0c                  move.l   a4,-(a7)                           
  0420a  4ead01aa              jsr      f2_6a0e                            
  0420e  2e8c                  move.l   a4,(a7)                            
  04210  3f3c0007              move.w   #7,-(a7)                           
  04214  486efffa              pea      -$6(a6)                            
  04218  486efff6              pea      -$a(a6)                            
  0421c  486effee              pea      -$12(a6)                           
  04220  a98d                  _GetDialogItem                              ; $a98d
  04222  3eaefffe              move.w   -$2(a6),(a7)                       
  04226  486effee              pea      -$12(a6)                           
  0422a  4ead06d2              jsr      f7_1a72                            
  0422e  4fef0010              lea      $10(a7),a7                         
L4232:
  04232  285f                  movea.l  (a7)+,a4                           
  04234  4e5e                  unlk     a6                                 
  04236  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_4238   [jump table #93]
;----------------------------------------------------------------------
f3_4238:
  04238  4e56fbc4              link     a6,#-1084                          
  0423c  48e70300              movem.l  d6/d7,-(a7)                        
  04240  4eba027c              jsr      f3_44be                            
  04244  4a39ffff8df2          tst.b    g_720e                             
  0424a  6610                  bne.s    L425c                              
  0424c  43eefbd8              lea      -$428(a6),a1                       
  04250  307c001e              movea.w  #$1e,a0                            
  04254  a03b                  _Delay                                      ; $a03b
  04256  2280                  move.l   d0,(a1)                            
  04258  600000ba              bra.w    L4314                              
L425c:
  0425c  4239ffff8dfb          clr.b    g_7205                             
  04262  4ab9ffff979a          tst.l    g_6866                             
  04268  6716                  beq.s    L4280                              
  0426a  2079ffff979a          movea.l  g_6866,a0                          
  04270  a02a                  _HUnlock                                    ; $a02a
  04272  2f39ffff979a          move.l   g_6866,-(a7)                       
  04278  a9a3                  _ReleaseResource                            ; $a9a3
  0427a  42b9ffff979a          clr.l    g_6866                             
L4280:
  04280  42a7                  clr.l    -(a7)                              
  04282  2f3c736e6420          move.l   #$736e6420,-(a7)                   
  04288  3f2e0008              move.w   $8(a6),-(a7)                       
  0428c  a9a0                  _GetResource                                ; $a9a0
  0428e  23dfffff979a          move.l   (a7)+,g_6866                       
  04294  4ab9ffff979a          tst.l    g_6866                             
  0429a  6614                  bne.s    L42b0                              
  0429c  4267                  clr.w    -(a7)                              
  0429e  a9af                  _ResError                                   ; $a9af
  042a0  3c1f                  move.w   (a7)+,d6                           
  042a2  2f3c00000276          move.l   STR_0276,-(a7)                     ; "loading a sound"
  042a8  3f06                  move.w   d6,-(a7)                           
  042aa  4ead06ca              jsr      f7_18ec                            
  042ae  6064                  bra.s    L4314                              
L42b0:
  042b0  2079ffff979a          movea.l  g_6866,a0                          
  042b6  a029                  _HLock                                      ; $a029
  042b8  2079ffff3af4          movea.l  g_c50c,a0                          
  042be  317c0080001e          move.w   #$80,$1e(a0)                       
  042c4  4267                  clr.w    -(a7)                              
  042c6  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  042cc  2f39ffff979a          move.l   g_6866,-(a7)                       
  042d2  1f3c0001              move.b   #1,-(a7)                           
  042d6  a805                  _SndPlay                                    ; $a805
  042d8  3e1f                  move.w   (a7)+,d7                           
  042da  3f3c0014              move.w   #$14,-(a7)                         
  042de  4ead0242              jsr      f2_79a8                            
  042e2  06400032              addi.w   #$32,d0                            
  042e6  33c0ffff3afa          move.w   d0,g_c506                          
  042ec  0c47ff32              cmpi.w   #$ff32,d7                          
  042f0  548f                  addq.l   #2,a7                              
  042f2  6720                  beq.s    L4314                              
  042f4  4a47                  tst.w    d7                                 
  042f6  671c                  beq.s    L4314                              
  042f8  2079ffff979a          movea.l  g_6866,a0                          
  042fe  a02a                  _HUnlock                                    ; $a02a
  04300  2f39ffff979a          move.l   g_6866,-(a7)                       
  04306  a9a3                  _ReleaseResource                            ; $a9a3
  04308  2f3c00000286          move.l   STR_0286,-(a7)                     ; "SndPlay"
  0430e  3f07                  move.w   d7,-(a7)                           
  04310  4ead06ca              jsr      f7_18ec                            
L4314:
  04314  4cee00c0fbbc          movem.l  -$444(a6),d6/d7                    
  0431a  4e5e                  unlk     a6                                 
  0431c  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_431e   [jump table #96]
;----------------------------------------------------------------------
f3_431e:
  0431e  4e56fef2              link     a6,#-270                           
  04322  2f07                  move.l   d7,-(a7)                           
  04324  206e0008              movea.l  $8(a6),a0                          
  04328  2d50fff8              move.l   (a0),-$8(a6)                       
  0432c  2d680004fffc          move.l   $4(a0),-$4(a6)                     
  04332  0c6e000dfff8          cmpi.w   #$d,-$8(a6)                        
  04338  6642                  bne.s    L437c                              
  0433a  202efffc              move.l   -$4(a6),d0                         
  0433e  c18d                  exg      d0,a5                              
  04340  2e00                  move.l   d0,d7                              
  04342  202e000c              move.l   $c(a6),d0                          
  04346  b0b9ffff3af4          cmp.l    g_c50c,d0                          
  0434c  660a                  bne.s    L4358                              
  0434e  13fc0001ffff8dfb      move.b   #1,g_7205                          
  04356  601e                  bra.s    L4376                              
L4358:
  04358  202e000c              move.l   $c(a6),d0                          
  0435c  b0b9ffff9792          cmp.l    g_686e,d0                          
  04362  660a                  bne.s    L436e                              
  04364  13fc0001ffff3b08      move.b   #1,g_c4f8                          
  0436c  6008                  bra.s    L4376                              
L436e:
  0436e  13fc0001ffff3b0a      move.b   #1,g_c4f6                          
L4376:
  04376  2007                  move.l   d7,d0                              
  04378  c18d                  exg      d0,a5                              
  0437a  2e00                  move.l   d0,d7                              
L437c:
  0437c  2e1f                  move.l   (a7)+,d7                           
  0437e  4e5e                  unlk     a6                                 
  04380  4e740008              rtd      #8                                 

;----------------------------------------------------------------------
; f3_4384   [jump table #94]
;----------------------------------------------------------------------
f3_4384:
  04384  4e56fff8              link     a6,#-8                             
  04388  2f07                  move.l   d7,-(a7)                           
  0438a  4a39ffff8df2          tst.b    g_720e                             
  04390  6700008a              beq.w    L441c                              
  04394  4ab9ffff3af4          tst.l    g_c50c                             
  0439a  67000080              beq.w    L441c                              
  0439e  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  043a4  4eba01fa              jsr      f3_45a0                            
  043a8  3e00                  move.w   d0,d7                              
  043aa  588f                  addq.l   #4,a7                              
L43ac:
  043ac  4a39ffff8dfb          tst.b    g_7205                             
  043b2  67f8                  beq.s    L43ac                              
  043b4  3d7c0003fff8          move.w   #3,-$8(a6)                         
  043ba  426efffa              clr.w    -$6(a6)                            
  043be  42aefffc              clr.l    -$4(a6)                            
  043c2  4267                  clr.w    -(a7)                              
  043c4  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  043ca  486efff8              pea      -$8(a6)                            
  043ce  a804                  _SndDoImmediate                             ; $a804
  043d0  3e1f                  move.w   (a7)+,d7                           
  043d2  3d7c0004fff8          move.w   #4,-$8(a6)                         
  043d8  4267                  clr.w    -(a7)                              
  043da  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  043e0  486efff8              pea      -$8(a6)                            
  043e4  a804                  _SndDoImmediate                             ; $a804
  043e6  3e1f                  move.w   (a7)+,d7                           
  043e8  4a47                  tst.w    d7                                 
  043ea  6716                  beq.s    L4402                              
  043ec  2f39ffff979a          move.l   g_6866,-(a7)                       
  043f2  a9a3                  _ReleaseResource                            ; $a9a3
  043f4  2f3c0000028e          move.l   STR_028e,-(a7)                     ; "flushing channel"
  043fa  3f07                  move.w   d7,-(a7)                           
  043fc  4ead06ca              jsr      f7_18ec                            
  04400  601a                  bra.s    L441c                              
L4402:
  04402  4ab9ffff979a          tst.l    g_6866                             
  04408  670e                  beq.s    L4418                              
  0440a  2f39ffff979a          move.l   g_6866,-(a7)                       
  04410  a9a3                  _ReleaseResource                            ; $a9a3
  04412  42b9ffff979a          clr.l    g_6866                             
L4418:
  04418  4ead01ca              jsr      f2_6b56                            
L441c:
  0441c  2e2efff4              move.l   -$c(a6),d7                         
  04420  4e5e                  unlk     a6                                 
  04422  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_4424   [jump table #95]
;----------------------------------------------------------------------
f3_4424:
  04424  4e56fff8              link     a6,#-8                             
  04428  2f07                  move.l   d7,-(a7)                           
  0442a  4a39ffff8df2          tst.b    g_720e                             
  04430  67000084              beq.w    L44b6                              
  04434  4ab9ffff3af4          tst.l    g_c50c                             
  0443a  677a                  beq.s    L44b6                              
  0443c  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  04442  4eba0192              jsr      f3_45d6                            
  04446  3e00                  move.w   d0,d7                              
  04448  4a39ffff8dfb          tst.b    g_7205                             
  0444e  588f                  addq.l   #4,a7                              
  04450  6764                  beq.s    L44b6                              
  04452  3d7c0003fff8          move.w   #3,-$8(a6)                         
  04458  426efffa              clr.w    -$6(a6)                            
  0445c  42aefffc              clr.l    -$4(a6)                            
  04460  4267                  clr.w    -(a7)                              
  04462  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  04468  486efff8              pea      -$8(a6)                            
  0446c  a804                  _SndDoImmediate                             ; $a804
  0446e  3e1f                  move.w   (a7)+,d7                           
  04470  3d7c0004fff8          move.w   #4,-$8(a6)                         
  04476  4267                  clr.w    -(a7)                              
  04478  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  0447e  486efff8              pea      -$8(a6)                            
  04482  a804                  _SndDoImmediate                             ; $a804
  04484  3e1f                  move.w   (a7)+,d7                           
  04486  4a47                  tst.w    d7                                 
  04488  6716                  beq.s    L44a0                              
  0448a  2f39ffff979a          move.l   g_6866,-(a7)                       
  04490  a9a3                  _ReleaseResource                            ; $a9a3
  04492  2f3c000002a0          move.l   STR_02a0,-(a7)                     ; "flushing channel"
  04498  3f07                  move.w   d7,-(a7)                           
  0449a  4ead06ca              jsr      f7_18ec                            
  0449e  6016                  bra.s    L44b6                              
L44a0:
  044a0  4ab9ffff979a          tst.l    g_6866                             
  044a6  670e                  beq.s    L44b6                              
  044a8  2f39ffff979a          move.l   g_6866,-(a7)                       
  044ae  a9a3                  _ReleaseResource                            ; $a9a3
  044b0  42b9ffff979a          clr.l    g_6866                             
L44b6:
  044b6  2e2efff4              move.l   -$c(a6),d7                         
  044ba  4e5e                  unlk     a6                                 
  044bc  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_44be   [jump table #97]
;----------------------------------------------------------------------
f3_44be:
  044be  4e56fff8              link     a6,#-8                             
  044c2  2f07                  move.l   d7,-(a7)                           
  044c4  4a39ffff8df2          tst.b    g_720e                             
  044ca  670000cc              beq.w    L4598                              
  044ce  4ab9ffff3af4          tst.l    g_c50c                             
  044d4  670000c2              beq.w    L4598                              
  044d8  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  044de  4eba02bc              jsr      f3_479c                            
  044e2  3e00                  move.w   d0,d7                              
  044e4  4a47                  tst.w    d7                                 
  044e6  588f                  addq.l   #4,a7                              
  044e8  660000ae              bne.w    L4598                              
L44ec:
  044ec  4a39ffff8dfb          tst.b    g_7205                             
  044f2  67f8                  beq.s    L44ec                              
  044f4  3d7c0003fff8          move.w   #3,-$8(a6)                         
  044fa  426efffa              clr.w    -$6(a6)                            
  044fe  42aefffc              clr.l    -$4(a6)                            
  04502  4267                  clr.w    -(a7)                              
  04504  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  0450a  486efff8              pea      -$8(a6)                            
  0450e  a804                  _SndDoImmediate                             ; $a804
  04510  3e1f                  move.w   (a7)+,d7                           
  04512  3d7c0004fff8          move.w   #4,-$8(a6)                         
  04518  426efffa              clr.w    -$6(a6)                            
  0451c  42aefffc              clr.l    -$4(a6)                            
  04520  4267                  clr.w    -(a7)                              
  04522  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  04528  486efff8              pea      -$8(a6)                            
  0452c  a804                  _SndDoImmediate                             ; $a804
  0452e  3e1f                  move.w   (a7)+,d7                           
  04530  3d7c0005fff8          move.w   #5,-$8(a6)                         
  04536  426efffa              clr.w    -$6(a6)                            
  0453a  42aefffc              clr.l    -$4(a6)                            
  0453e  4267                  clr.w    -(a7)                              
  04540  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  04546  486efff8              pea      -$8(a6)                            
  0454a  a804                  _SndDoImmediate                             ; $a804
  0454c  3e1f                  move.w   (a7)+,d7                           
  0454e  4a47                  tst.w    d7                                 
  04550  6716                  beq.s    L4568                              
  04552  2f39ffff979a          move.l   g_6866,-(a7)                       
  04558  a9a3                  _ReleaseResource                            ; $a9a3
  0455a  2f3c000002b2          move.l   STR_02b2,-(a7)                     ; "flushing channel"
  04560  3f07                  move.w   d7,-(a7)                           
  04562  4ead06ca              jsr      f7_18ec                            
  04566  6030                  bra.s    L4598                              
L4568:
  04568  4ab9ffff979a          tst.l    g_6866                             
  0456e  670e                  beq.s    L457e                              
  04570  2f39ffff979a          move.l   g_6866,-(a7)                       
  04576  a9a3                  _ReleaseResource                            ; $a9a3
  04578  42b9ffff979a          clr.l    g_6866                             
L457e:
  0457e  4ead01ca              jsr      f2_6b56                            
  04582  2f39ffff3af4          move.l   g_c50c,-(a7)                       
  04588  4eba0212              jsr      f3_479c                            
  0458c  3e00                  move.w   d0,d7                              
  0458e  588f                  addq.l   #4,a7                              
L4590:
  04590  4a39ffff8dfb          tst.b    g_7205                             
  04596  67f8                  beq.s    L4590                              
L4598:
  04598  2e2efff4              move.l   -$c(a6),d7                         
  0459c  4e5e                  unlk     a6                                 
  0459e  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_45a0
;----------------------------------------------------------------------
f3_45a0:
  045a0  4e56fff6              link     a6,#-10                            
  045a4  2f07                  move.l   d7,-(a7)                           
  045a6  7e00                  moveq    #0,d7                              
  045a8  3d7c000dfff8          move.w   #$d,-$8(a6)                        
  045ae  3d7c0001fffa          move.w   #1,-$6(a6)                         
  045b4  200d                  move.l   a5,d0                              
  045b6  2a780904              movea.l  ($904).w,a5                        
  045ba  2d40fffc              move.l   d0,-$4(a6)                         
  045be  4267                  clr.w    -(a7)                              
  045c0  2f2e0008              move.l   $8(a6),-(a7)                       
  045c4  486efff8              pea      -$8(a6)                            
  045c8  4227                  clr.b    -(a7)                              
  045ca  a803                  _SndDoCommand                               ; $a803
  045cc  3e1f                  move.w   (a7)+,d7                           
  045ce  3007                  move.w   d7,d0                              
  045d0  2e1f                  move.l   (a7)+,d7                           
  045d2  4e5e                  unlk     a6                                 
  045d4  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_45d6
;----------------------------------------------------------------------
f3_45d6:
  045d6  4e56fff6              link     a6,#-10                            
  045da  2f07                  move.l   d7,-(a7)                           
  045dc  7e00                  moveq    #0,d7                              
  045de  3d7c000dfff8          move.w   #$d,-$8(a6)                        
  045e4  3d7c0001fffa          move.w   #1,-$6(a6)                         
  045ea  200d                  move.l   a5,d0                              
  045ec  2a780904              movea.l  ($904).w,a5                        
  045f0  2d40fffc              move.l   d0,-$4(a6)                         
  045f4  4267                  clr.w    -(a7)                              
  045f6  2f2e0008              move.l   $8(a6),-(a7)                       
  045fa  486efff8              pea      -$8(a6)                            
  045fe  1f3c0001              move.b   #1,-(a7)                           
  04602  a803                  _SndDoCommand                               ; $a803
  04604  3e1f                  move.w   (a7)+,d7                           
  04606  3007                  move.w   d7,d0                              
  04608  2e1f                  move.l   (a7)+,d7                           
  0460a  4e5e                  unlk     a6                                 
  0460c  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_460e   [jump table #98]
;----------------------------------------------------------------------
f3_460e:
  0460e  4e56fff4              link     a6,#-12                            
  04612  48e70108              movem.l  d7/a4,-(a7)                        
  04616  286e0010              movea.l  $10(a6),a4                         
  0461a  7e00                  moveq    #0,d7                              
  0461c  4a39ffff9933          tst.b    g_66cd                             
  04622  670000ac              beq.w    L46d0                              
  04626  397c0080001e          move.w   #$80,$1e(a4)                       
  0462c  b9f9ffff9792          cmpa.l   g_686e,a4                          
  04632  6608                  bne.s    L463c                              
  04634  4239ffff3b08          clr.b    g_c4f8                             
  0463a  6006                  bra.s    L4642                              
L463c:
  0463c  4239ffff3b0a          clr.b    g_c4f6                             
L4642:
  04642  3d7c0028fff8          move.w   #$28,-$8(a6)                       
  04648  3d6e0008fffa          move.w   $8(a6),-$6(a6)                     
  0464e  2d6e000afffc          move.l   $a(a6),-$4(a6)                     
  04654  4267                  clr.w    -(a7)                              
  04656  2f0c                  move.l   a4,-(a7)                           
  04658  486efff8              pea      -$8(a6)                            
  0465c  1f3c0001              move.b   #1,-(a7)                           
  04660  a803                  _SndDoCommand                               ; $a803
  04662  3e1f                  move.w   (a7)+,d7                           
  04664  4a47                  tst.w    d7                                 
  04666  6714                  beq.s    L467c                              
  04668  0c47ff35              cmpi.w   #$ff35,d7                          
  0466c  670e                  beq.s    L467c                              
  0466e  2f3c000002c4          move.l   STR_02c4,-(a7)                     ; "playing a frequency"
  04674  3f07                  move.w   d7,-(a7)                           
  04676  4ead06ca              jsr      f7_18ec                            
  0467a  5c8f                  addq.l   #6,a7                              
L467c:
  0467c  3d7c0029fff8          move.w   #$29,-$8(a6)                       
  04682  3d6e000efffa          move.w   $e(a6),-$6(a6)                     
  04688  42aefffc              clr.l    -$4(a6)                            
  0468c  4267                  clr.w    -(a7)                              
  0468e  2f0c                  move.l   a4,-(a7)                           
  04690  486efff8              pea      -$8(a6)                            
  04694  1f3c0001              move.b   #1,-(a7)                           
  04698  a803                  _SndDoCommand                               ; $a803
  0469a  3e1f                  move.w   (a7)+,d7                           
  0469c  4a47                  tst.w    d7                                 
  0469e  6714                  beq.s    L46b4                              
  046a0  0c47ff35              cmpi.w   #$ff35,d7                          
  046a4  670e                  beq.s    L46b4                              
  046a6  2f3c000002d8          move.l   STR_02d8,-(a7)                     ; "quiet command"
  046ac  3f07                  move.w   d7,-(a7)                           
  046ae  4ead06ca              jsr      f7_18ec                            
  046b2  5c8f                  addq.l   #6,a7                              
L46b4:
  046b4  2f0c                  move.l   a4,-(a7)                           
  046b6  4eba00e4              jsr      f3_479c                            
  046ba  3e00                  move.w   d0,d7                              
  046bc  4a47                  tst.w    d7                                 
  046be  588f                  addq.l   #4,a7                              
  046c0  670e                  beq.s    L46d0                              
  046c2  2f3c000002e6          move.l   STR_02e6,-(a7)                     ; "installing callback in playnote"
  046c8  3f07                  move.w   d7,-(a7)                           
  046ca  4ead06ca              jsr      f7_18ec                            
  046ce  5c8f                  addq.l   #6,a7                              
L46d0:
  046d0  4cdf1080              movem.l  (a7)+,d7/a4                        
  046d4  4e5e                  unlk     a6                                 
  046d6  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_46d8   [jump table #99]
;----------------------------------------------------------------------
f3_46d8:
  046d8  4e56fff4              link     a6,#-12                            
  046dc  2f06                  move.l   d6,-(a7)                           
  046de  426efff4              clr.w    -$c(a6)                            
  046e2  3d7c0003fff8          move.w   #3,-$8(a6)                         
  046e8  426efffa              clr.w    -$6(a6)                            
  046ec  42aefffc              clr.l    -$4(a6)                            
  046f0  4267                  clr.w    -(a7)                              
  046f2  2f39ffff9792          move.l   g_686e,-(a7)                       
  046f8  486efff8              pea      -$8(a6)                            
  046fc  a804                  _SndDoImmediate                             ; $a804
  046fe  3c1f                  move.w   (a7)+,d6                           
  04700  3d7c0004fff8          move.w   #4,-$8(a6)                         
  04706  426efffa              clr.w    -$6(a6)                            
  0470a  42aefffc              clr.l    -$4(a6)                            
  0470e  4267                  clr.w    -(a7)                              
  04710  2f39ffff9792          move.l   g_686e,-(a7)                       
  04716  486efff8              pea      -$8(a6)                            
  0471a  a804                  _SndDoImmediate                             ; $a804
  0471c  3c1f                  move.w   (a7)+,d6                           
  0471e  3d7c0005fff8          move.w   #5,-$8(a6)                         
  04724  426efffa              clr.w    -$6(a6)                            
  04728  42aefffc              clr.l    -$4(a6)                            
  0472c  4267                  clr.w    -(a7)                              
  0472e  2f39ffff9792          move.l   g_686e,-(a7)                       
  04734  486efff8              pea      -$8(a6)                            
  04738  a804                  _SndDoImmediate                             ; $a804
  0473a  3c1f                  move.w   (a7)+,d6                           
  0473c  3d7c0003fff8          move.w   #3,-$8(a6)                         
  04742  426efffa              clr.w    -$6(a6)                            
  04746  42aefffc              clr.l    -$4(a6)                            
  0474a  4267                  clr.w    -(a7)                              
  0474c  2f39ffff9796          move.l   g_686a,-(a7)                       
  04752  486efff8              pea      -$8(a6)                            
  04756  a804                  _SndDoImmediate                             ; $a804
  04758  3c1f                  move.w   (a7)+,d6                           
  0475a  3d7c0004fff8          move.w   #4,-$8(a6)                         
  04760  426efffa              clr.w    -$6(a6)                            
  04764  42aefffc              clr.l    -$4(a6)                            
  04768  4267                  clr.w    -(a7)                              
  0476a  2f39ffff9796          move.l   g_686a,-(a7)                       
  04770  486efff8              pea      -$8(a6)                            
  04774  a804                  _SndDoImmediate                             ; $a804
  04776  3c1f                  move.w   (a7)+,d6                           
  04778  3d7c0005fff8          move.w   #5,-$8(a6)                         
  0477e  426efffa              clr.w    -$6(a6)                            
  04782  42aefffc              clr.l    -$4(a6)                            
  04786  4267                  clr.w    -(a7)                              
  04788  2f39ffff9796          move.l   g_686a,-(a7)                       
  0478e  486efff8              pea      -$8(a6)                            
  04792  a804                  _SndDoImmediate                             ; $a804
  04794  3c1f                  move.w   (a7)+,d6                           
  04796  2c1f                  move.l   (a7)+,d6                           
  04798  4e5e                  unlk     a6                                 
  0479a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_479c
;----------------------------------------------------------------------
f3_479c:
  0479c  4e56fff6              link     a6,#-10                            
  047a0  2f07                  move.l   d7,-(a7)                           
  047a2  7e00                  moveq    #0,d7                              
  047a4  3d7c000dfff8          move.w   #$d,-$8(a6)                        
  047aa  3d7c0001fffa          move.w   #1,-$6(a6)                         
  047b0  200d                  move.l   a5,d0                              
  047b2  2a780904              movea.l  ($904).w,a5                        
  047b6  2d40fffc              move.l   d0,-$4(a6)                         
  047ba  4267                  clr.w    -(a7)                              
  047bc  2f2e0008              move.l   $8(a6),-(a7)                       
  047c0  486efff8              pea      -$8(a6)                            
  047c4  a804                  _SndDoImmediate                             ; $a804
  047c6  3e1f                  move.w   (a7)+,d7                           
  047c8  3007                  move.w   d7,d0                              
  047ca  2e1f                  move.l   (a7)+,d7                           
  047cc  4e5e                  unlk     a6                                 
  047ce  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_47d0   [jump table #100]
;----------------------------------------------------------------------
f3_47d0:
  047d0  4e56fca8              link     a6,#-856                           
  047d4  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  047d8  41eefd3c              lea      -$2c4(a6),a0                       
  047dc  43f9ffffaa2c          lea      g_55d4,a1                          
  047e2  700f                  moveq    #15,d0                             
L47e4:
  047e4  20d9                  move.l   (a1)+,(a0)+                        
  047e6  51c8fffc              dbf      d0,L47e4                           
  047ea  7800                  moveq    #0,d4                              
  047ec  4267                  clr.w    -(a7)                              
  047ee  a994                  _CurResFile                                 ; $a994
  047f0  3c1f                  move.w   (a7)+,d6                           
  047f2  42a7                  clr.l    -(a7)                              
  047f4  3f3c0084              move.w   #$84,-(a7)                         
  047f8  486eff56              pea      -$aa(a6)                           
  047fc  4878ffff              pea      ($ffff).w                          
  04800  a97c                  _GetNewDialog                               ; $a97c
  04802  285f                  movea.l  (a7)+,a4                           
  04804  2f0c                  move.l   a4,-(a7)                           
  04806  4ead06ba              jsr      f7_161c                            
  0480a  588f                  addq.l   #4,a7                              
L480c:
  0480c  42a7                  clr.l    -(a7)                              
  0480e  486eff54              pea      -$ac(a6)                           
  04812  a991                  _ModalDialog                                ; $a991
  04814  302eff54              move.w   -$ac(a6),d0                        
  04818  6738                  beq.s    L4852                              
  0481a  6b36                  bmi.s    L4852                              
  0481c  5540                  subq.w   #2,d0                              
  0481e  6730                  beq.s    L4850                              
  04820  6a30                  bpl.s    L4852                              
  04822  2f0c                  move.l   a4,-(a7)                           
  04824  3f3c0003              move.w   #3,-(a7)                           
  04828  486eff52              pea      -$ae(a6)                           
  0482c  486efcb8              pea      -$348(a6)                          
  04830  486efcac              pea      -$354(a6)                          
  04834  a98d                  _GetDialogItem                              ; $a98d
  04836  2f2efcb8              move.l   -$348(a6),-(a7)                    
  0483a  486efefc              pea      -$104(a6)                          
  0483e  a990                  _GetDialogItemText                          ; $a990
  04840  4a2efefc              tst.b    -$104(a6)                          
  04844  6608                  bne.s    L484e                              
  04846  3f3c0001              move.w   #1,-(a7)                           
  0484a  a9c8                  _SysBeep                                    ; $a9c8
  0484c  6002                  bra.s    L4850                              
L484e:
  0484e  7801                  moveq    #1,d4                              
L4850:
  04850  7801                  moveq    #1,d4                              
L4852:
  04852  4a04                  tst.b    d4                                 
  04854  67b6                  beq.s    L480c                              
  04856  0c6e0002ff54          cmpi.w   #2,-$ac(a6)                        
  0485c  6608                  bne.s    L4866                              
  0485e  2f0c                  move.l   a4,-(a7)                           
  04860  a983                  _DisposeDialog                              ; $a983
  04862  60000286              bra.w    L4aea                              
L4866:
  04866  2f0c                  move.l   a4,-(a7)                           
  04868  3f3c0003              move.w   #3,-(a7)                           
  0486c  486eff52              pea      -$ae(a6)                           
  04870  486efcb8              pea      -$348(a6)                          
  04874  486efcac              pea      -$354(a6)                          
  04878  a98d                  _GetDialogItem                              ; $a98d
  0487a  2f2efcb8              move.l   -$348(a6),-(a7)                    
  0487e  486efebc              pea      -$144(a6)                          
  04882  a990                  _GetDialogItemText                          ; $a990
  04884  0c2e0007febc          cmpi.b   #7,-$144(a6)                       
  0488a  6308                  bls.s    L4894                              
  0488c  1d7c0007fdbc          move.b   #7,-$244(a6)                       
  04892  6006                  bra.s    L489a                              
L4894:
  04894  1d6efebcfdbc          move.b   -$144(a6),-$244(a6)                
L489a:
  0489a  41eefebd              lea      -$143(a6),a0                       
  0489e  43eefdbd              lea      -$243(a6),a1                       
  048a2  7000                  moveq    #0,d0                              
  048a4  102efdbc              move.b   -$244(a6),d0                       
  048a8  a02e                  _BlockMove                                  ; $a02e
  048aa  486efdbc              pea      -$244(a6)                          
  048ae  486eff48              pea      -$b8(a6)                           
  048b2  4ead050a              jsr      f4_14fa                            
  048b6  2f0c                  move.l   a4,-(a7)                           
  048b8  3f3c0004              move.w   #4,-(a7)                           
  048bc  486eff52              pea      -$ae(a6)                           
  048c0  486efcb8              pea      -$348(a6)                          
  048c4  486efcac              pea      -$354(a6)                          
  048c8  a98d                  _GetDialogItem                              ; $a98d
  048ca  2f2efcb8              move.l   -$348(a6),-(a7)                    
  048ce  486efe3c              pea      -$1c4(a6)                          
  048d2  a990                  _GetDialogItemText                          ; $a990
  048d4  2f0c                  move.l   a4,-(a7)                           
  048d6  a983                  _DisposeDialog                              ; $a983
  048d8  41eefe40              lea      -$1c0(a6),a0                       
  048dc  43eefdfd              lea      -$203(a6),a1                       
  048e0  7005                  moveq    #5,d0                              
  048e2  a02e                  _BlockMove                                  ; $a02e
  048e4  1d7c0005fdfc          move.b   #5,-$204(a6)                       
  048ea  486efdfc              pea      -$204(a6)                          
  048ee  486eff4c              pea      -$b4(a6)                           
  048f2  4ead050a              jsr      f4_14fa                            
  048f6  41eefe46              lea      -$1ba(a6),a0                       
  048fa  43eefdfd              lea      -$203(a6),a1                       
  048fe  7008                  moveq    #8,d0                              
  04900  a02e                  _BlockMove                                  ; $a02e
  04902  1d7c0008fdfc          move.b   #8,-$204(a6)                       
  04908  486efdfc              pea      -$204(a6)                          
  0490c  486eff44              pea      -$bc(a6)                           
  04910  4ead050a              jsr      f4_14fa                            
  04914  202eff48              move.l   -$b8(a6),d0                        
  04918  d0aeff4c              add.l    -$b4(a6),d0                        
  0491c  b0aeff44              cmp.l    -$bc(a6),d0                        
  04920  6026                  bra.s    L4948                              
  04922  42a7                  clr.l    -(a7)                              
  04924  3f3c0086              move.w   #$86,-(a7)                         
  04928  486eff56              pea      -$aa(a6)                           
  0492c  4878ffff              pea      ($ffff).w                          
  04930  a97c                  _GetNewDialog                               ; $a97c
  04932  285f                  movea.l  (a7)+,a4                           
L4934:
  04934  42a7                  clr.l    -(a7)                              
  04936  486eff54              pea      -$ac(a6)                           
  0493a  a991                  _ModalDialog                                ; $a991
  0493c  4a6eff54              tst.w    -$ac(a6)                           
  04940  67f2                  beq.s    L4934                              
  04942  2f0c                  move.l   a4,-(a7)                           
  04944  a983                  _DisposeDialog                              ; $a983
  04946  a9f4                  _ExitToShell                                ; $a9f4
L4948:
  04948  42a7                  clr.l    -(a7)                              
  0494a  3f3c008a              move.w   #$8a,-(a7)                         
  0494e  486eff56              pea      -$aa(a6)                           
  04952  4878ffff              pea      ($ffff).w                          
  04956  a97c                  _GetNewDialog                               ; $a97c
  04958  285f                  movea.l  (a7)+,a4                           
  0495a  2f0c                  move.l   a4,-(a7)                           
  0495c  a981                  _DrawDialog                                 ; $a981
  0495e  2f05                  move.l   d5,-(a7)                           
  04960  486efdfc              pea      -$204(a6)                          
  04964  4ead0512              jsr      f4_150e                            
  04968  41eefebd              lea      -$143(a6),a0                       
  0496c  43eefefd              lea      -$103(a6),a1                       
  04970  7000                  moveq    #0,d0                              
  04972  102efebc              move.b   -$144(a6),d0                       
  04976  a02e                  _BlockMove                                  ; $a02e
  04978  41eefe3d              lea      -$1c3(a6),a0                       
  0497c  7000                  moveq    #0,d0                              
  0497e  102efebc              move.b   -$144(a6),d0                       
  04982  43eefefd              lea      -$103(a6),a1                       
  04986  d2c0                  adda.w   d0,a1                              
  04988  7011                  moveq    #17,d0                             
  0498a  a02e                  _BlockMove                                  ; $a02e
  0498c  41eeff48              lea      -$b8(a6),a0                        
  04990  7000                  moveq    #0,d0                              
  04992  102efebc              move.b   -$144(a6),d0                       
  04996  43eeff0e              lea      -$f2(a6),a1                        
  0499a  d2c0                  adda.w   d0,a1                              
  0499c  7004                  moveq    #4,d0                              
  0499e  a02e                  _BlockMove                                  ; $a02e
  049a0  7011                  moveq    #17,d0                             
  049a2  d02efebc              add.b    -$144(a6),d0                       
  049a6  5800                  addq.b   #4,d0                              
  049a8  1d40fefc              move.b   d0,-$104(a6)                       
  049ac  4267                  clr.w    -(a7)                              
  049ae  486efefc              pea      -$104(a6)                          
  049b2  486efcb4              pea      -$34c(a6)                          
  049b6  7000                  moveq    #0,d0                              
  049b8  102efefc              move.b   -$104(a6),d0                       
  049bc  3040                  movea.w  d0,a0                              
  049be  48680001              pea      $1(a0)                             
  049c2  4ead051a              jsr      f4_1520                            
  049c6  42a7                  clr.l    -(a7)                              
  049c8  2f2efcb4              move.l   -$34c(a6),-(a7)                    
  049cc  4ead04ba              jsr      f4_138c                            
  049d0  2d5ffca8              move.l   (a7)+,-$358(a6)                    
  049d4  43eefcfd              lea      -$303(a6),a1                       
  049d8  7000                  moveq    #0,d0                              
  049da  1039ffffa7aa          move.b   g_5856,d0                          
  049e0  207cffffa7ab          movea.l  #$ffffa7ab,a0                      
  049e6  a02e                  _BlockMove                                  ; $a02e
  049e8  41eefd3d              lea      -$2c3(a6),a0                       
  049ec  7000                  moveq    #0,d0                              
  049ee  1039ffffa7aa          move.b   g_5856,d0                          
  049f4  43eefcfd              lea      -$303(a6),a1                       
  049f8  d2c0                  adda.w   d0,a1                              
  049fa  7000                  moveq    #0,d0                              
  049fc  102efd3c              move.b   -$2c4(a6),d0                       
  04a00  a02e                  _BlockMove                                  ; $a02e
  04a02  102efd3c              move.b   -$2c4(a6),d0                       
  04a06  d039ffffa7aa          add.b    g_5856,d0                          
  04a0c  1d40fcfc              move.b   d0,-$304(a6)                       
  04a10  3eb9ffffa7a2          move.w   g_585e,(a7)                        
  04a16  2f39ffff9820          move.l   g_67e0,-(a7)                       
  04a1c  486efd3c              pea      -$2c4(a6)                          
  04a20  a81b                  _HCreateResFile                             ; $a81b
  04a22  4267                  clr.w    -(a7)                              
  04a24  a9af                  _ResError                                   ; $a9af
  04a26  361f                  move.w   (a7)+,d3                           
  04a28  4a43                  tst.w    d3                                 
  04a2a  6714                  beq.s    L4a40                              
  04a2c  2f3c00000306          move.l   STR_0306,-(a7)                     ; "creating registration file"
  04a32  3f03                  move.w   d3,-(a7)                           
  04a34  4ead06ca              jsr      f7_18ec                            
  04a38  2e8c                  move.l   a4,(a7)                            
  04a3a  a983                  _DisposeDialog                              ; $a983
  04a3c  600000ac              bra.w    L4aea                              
L4a40:
  04a40  4267                  clr.w    -(a7)                              
  04a42  3f39ffffa7a2          move.w   g_585e,-(a7)                       
  04a48  2f39ffff9820          move.l   g_67e0,-(a7)                       
  04a4e  486efd3c              pea      -$2c4(a6)                          
  04a52  4227                  clr.b    -(a7)                              
  04a54  a81a                  _HOpenResFile                               ; $a81a
  04a56  3e1f                  move.w   (a7)+,d7                           
  04a58  4a43                  tst.w    d3                                 
  04a5a  6712                  beq.s    L4a6e                              
  04a5c  2f3c00000322          move.l   STR_0322,-(a7)                     ; "opening registration file"
  04a62  3f03                  move.w   d3,-(a7)                           
  04a64  4ead06ca              jsr      f7_18ec                            
  04a68  2e8c                  move.l   a4,(a7)                            
  04a6a  a983                  _DisposeDialog                              ; $a983
  04a6c  607c                  bra.s    L4aea                              
L4a6e:
  04a6e  3f07                  move.w   d7,-(a7)                           
  04a70  a998                  _UseResFile                                 ; $a998
  04a72  2f2efcb4              move.l   -$34c(a6),-(a7)                    
  04a76  2f3c636b7269          move.l   #$636b7269,-(a7)                   
  04a7c  3f3c0080              move.w   #$80,-(a7)                         
  04a80  2f3c0000033c          move.l   STR_033c,-(a7)                     ; "?"
  04a86  a9ab                  _AddResource                                ; $a9ab
  04a88  4267                  clr.w    -(a7)                              
  04a8a  a9af                  _ResError                                   ; $a9af
  04a8c  361f                  move.w   (a7)+,d3                           
  04a8e  4a43                  tst.w    d3                                 
  04a90  6712                  beq.s    L4aa4                              
  04a92  2f3c0000033e          move.l   STR_033e,-(a7)                     ; "saving registration info"
  04a98  3f03                  move.w   d3,-(a7)                           
  04a9a  4ead06ca              jsr      f7_18ec                            
  04a9e  2e8c                  move.l   a4,(a7)                            
  04aa0  a983                  _DisposeDialog                              ; $a983
  04aa2  6046                  bra.s    L4aea                              
L4aa4:
  04aa4  4267                  clr.w    -(a7)                              
  04aa6  a994                  _CurResFile                                 ; $a994
  04aa8  a999                  _UpdateResFile                              ; $a999
  04aaa  4267                  clr.w    -(a7)                              
  04aac  a9af                  _ResError                                   ; $a9af
  04aae  361f                  move.w   (a7)+,d3                           
  04ab0  3f07                  move.w   d7,-(a7)                           
  04ab2  a99a                  _CloseResFile                               ; $a99a
  04ab4  2f0c                  move.l   a4,-(a7)                           
  04ab6  a983                  _DisposeDialog                              ; $a983
  04ab8  42a7                  clr.l    -(a7)                              
  04aba  3f3c0085              move.w   #$85,-(a7)                         
  04abe  486eff56              pea      -$aa(a6)                           
  04ac2  4878ffff              pea      ($ffff).w                          
  04ac6  a97c                  _GetNewDialog                               ; $a97c
  04ac8  285f                  movea.l  (a7)+,a4                           
L4aca:
  04aca  42a7                  clr.l    -(a7)                              
  04acc  486eff54              pea      -$ac(a6)                           
  04ad0  a991                  _ModalDialog                                ; $a991
  04ad2  0c6e0002ff54          cmpi.w   #2,-$ac(a6)                        
  04ad8  66f0                  bne.s    L4aca                              
  04ada  13fc0001ffff3b0d      move.b   #1,g_c4f3                          
  04ae2  2f0c                  move.l   a4,-(a7)                           
  04ae4  a983                  _DisposeDialog                              ; $a983
  04ae6  3f06                  move.w   d6,-(a7)                           
  04ae8  a998                  _UseResFile                                 ; $a998
L4aea:
  04aea  4cee10f8fc90          movem.l  -$370(a6),d3/d4/d5/d6/d7/a4        
  04af0  4e5e                  unlk     a6                                 
  04af2  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_4af4   [jump table #101]
;----------------------------------------------------------------------
f3_4af4:
  04af4  4e56fde2              link     a6,#-542                           
  04af8  48e70308              movem.l  d6/d7/a4,-(a7)                     
  04afc  7c00                  moveq    #0,d6                              
  04afe  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  04b04  a851                  _SetCursor                                  ; $a851
  04b06  42a7                  clr.l    -(a7)                              
  04b08  3f3c05dc              move.w   #$5dc,-(a7)                        
  04b0c  486eff56              pea      -$aa(a6)                           
  04b10  4878ffff              pea      ($ffff).w                          
  04b14  a97c                  _GetNewDialog                               ; $a97c
  04b16  285f                  movea.l  (a7)+,a4                           
  04b18  2f0c                  move.l   a4,-(a7)                           
  04b1a  4ead06ba              jsr      f7_161c                            
  04b1e  7e01                  moveq    #1,d7                              
  04b20  588f                  addq.l   #4,a7                              
  04b22  602e                  bra.s    L4b52                              
L4b24:
  04b24  2f0c                  move.l   a4,-(a7)                           
  04b26  7006                  moveq    #6,d0                              
  04b28  d047                  add.w    d7,d0                              
  04b2a  3f00                  move.w   d0,-(a7)                           
  04b2c  486eff52              pea      -$ae(a6)                           
  04b30  48767520feee          pea      (-$112,a6,d7.w*4)                  
  04b36  486efee6              pea      -$11a(a6)                          
  04b3a  a98d                  _GetDialogItem                              ; $a98d
  04b3c  2f367520feee          move.l   (-$112,a6,d7.w*4),-(a7)            
  04b42  7000                  moveq    #0,d0                              
  04b44  103071b0ffff980f      move.b   (-$67f1,za0,d7.w),d0               
  04b4c  3f00                  move.w   d0,-(a7)                           
  04b4e  a963                  _SetCtlValue                                ; $a963
  04b50  5247                  addq.w   #1,d7                              
L4b52:
  04b52  0c47000e              cmpi.w   #$e,d7                             
  04b56  6dcc                  blt.s    L4b24                              
  04b58  2f0c                  move.l   a4,-(a7)                           
  04b5a  a915                  _ShowWindow                                 ; $a915
  04b5c  2f0c                  move.l   a4,-(a7)                           
  04b5e  a981                  _DrawDialog                                 ; $a981
L4b60:
  04b60  42a7                  clr.l    -(a7)                              
  04b62  486eff54              pea      -$ac(a6)                           
  04b66  a991                  _ModalDialog                                ; $a991
  04b68  302eff54              move.w   -$ac(a6),d0                        
  04b6c  0c400016              cmpi.w   #$16,d0                            
  04b70  62000184              bhi.w    L4cf6                              
  04b74  43fa01ac              lea      L4d22(pc),a1                       
  04b78  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  04b7c  4ed1                  jmp      (a1)                               
  04b7e  7e01                  moveq    #1,d7                              
  04b80  6010                  bra.s    L4b92                              
L4b82:
  04b82  3007                  move.w   d7,d0                              
  04b84  5247                  addq.w   #1,d7                              
  04b86  4a3001b0ffff980f      tst.b    (-$67f1,za0,d0.w)                  
  04b8e  6702                  beq.s    L4b92                              
  04b90  7c01                  moveq    #1,d6                              
L4b92:
  04b92  0c47000e              cmpi.w   #$e,d7                             
  04b96  6c04                  bge.s    L4b9c                              
  04b98  4a06                  tst.b    d6                                 
  04b9a  67e6                  beq.s    L4b82                              
L4b9c:
  04b9c  4a06                  tst.b    d6                                 
  04b9e  66000156              bne.w    L4cf6                              
  04ba2  486efde6              pea      -$21a(a6)                          
  04ba6  2f3c00070fa0          move.l   #$70fa0,-(a7)                      
  04bac  4ead0522              jsr      f4_153c                            
  04bb0  486efde6              pea      -$21a(a6)                          
  04bb4  2f3c00000358          move.l   STR_0358,-(a7)                     ; "?"
  04bba  2f3c0000035a          move.l   STR_035a,-(a7)                     ; "?"
  04bc0  2f3c0000035c          move.l   STR_035c,-(a7)                     ; "?"
  04bc6  a98b                  _ParamText                                  ; $a98b
  04bc8  4267                  clr.w    -(a7)                              
  04bca  3f3c0fab              move.w   #$fab,-(a7)                        
  04bce  42a7                  clr.l    -(a7)                              
  04bd0  a987                  _NoteAlert                                  ; $a987
  04bd2  426eff54              clr.w    -$ac(a6)                           
  04bd6  548f                  addq.l   #2,a7                              
  04bd8  6000011c              bra.w    L4cf6                              
  04bdc  4267                  clr.w    -(a7)                              
  04bde  302eff54              move.w   -$ac(a6),d0                        
  04be2  2f360520fed6          move.l   (-$12a,a6,d0.w*4),-(a7)            
  04be8  a960                  _GetCtlValue                                ; $a960
  04bea  3d5fff52              move.w   (a7)+,-$ae(a6)                     
  04bee  306eff52              movea.w  -$ae(a6),a0                        
  04bf2  7001                  moveq    #1,d0                              
  04bf4  d088                  add.l    a0,d0                              
  04bf6  81fc0002              divs.w   #2,d0                              
  04bfa  4840                  swap     d0                                 
  04bfc  3d40ff52              move.w   d0,-$ae(a6)                        
  04c00  322eff54              move.w   -$ac(a6),d1                        
  04c04  2f361520fed6          move.l   (-$12a,a6,d1.w*4),-(a7)            
  04c0a  3f00                  move.w   d0,-(a7)                           
  04c0c  a963                  _SetCtlValue                                ; $a963
  04c0e  306eff54              movea.w  -$ac(a6),a0                        
  04c12  d1fcffff9809          adda.l   #$ffff9809,a0                      
  04c18  10aeff53              move.b   -$ad(a6),(a0)                      
  04c1c  600000d8              bra.w    L4cf6                              
  04c20  4ead0722              jsr      f7_296c                            
  04c24  4a79ffff3ad0          tst.w    g_c530                             
  04c2a  6e3c                  bgt.s    L4c68                              
  04c2c  486efde6              pea      -$21a(a6)                          
  04c30  2f3c00050fa0          move.l   #$50fa0,-(a7)                      
  04c36  4ead0522              jsr      f4_153c                            
  04c3a  486efde6              pea      -$21a(a6)                          
  04c3e  2f3c0000035e          move.l   STR_035e,-(a7)                     ; "?"
  04c44  2f3c00000360          move.l   STR_0360,-(a7)                     ; "?"
  04c4a  2f3c00000362          move.l   STR_0362,-(a7)                     ; "?"
  04c50  a98b                  _ParamText                                  ; $a98b
  04c52  4267                  clr.w    -(a7)                              
  04c54  3f3c0fab              move.w   #$fab,-(a7)                        
  04c58  42a7                  clr.l    -(a7)                              
  04c5a  a987                  _NoteAlert                                  ; $a987
  04c5c  3d5fff54              move.w   (a7)+,-$ac(a6)                     
  04c60  33fc0002ffff3ad0      move.w   #2,g_c530                          
L4c68:
  04c68  4a79ffff3ad2          tst.w    g_c52e                             
  04c6e  6e3c                  bgt.s    L4cac                              
  04c70  486efde6              pea      -$21a(a6)                          
  04c74  2f3c00060fa0          move.l   #$60fa0,-(a7)                      
  04c7a  4ead0522              jsr      f4_153c                            
  04c7e  486efde6              pea      -$21a(a6)                          
  04c82  2f3c00000364          move.l   STR_0364,-(a7)                     ; "?"
  04c88  2f3c00000366          move.l   STR_0366,-(a7)                     ; "?"
  04c8e  2f3c00000368          move.l   STR_0368,-(a7)                     ; "?"
  04c94  a98b                  _ParamText                                  ; $a98b
  04c96  4267                  clr.w    -(a7)                              
  04c98  3f3c0fab              move.w   #$fab,-(a7)                        
  04c9c  42a7                  clr.l    -(a7)                              
  04c9e  a987                  _NoteAlert                                  ; $a987
  04ca0  3d5fff54              move.w   (a7)+,-$ac(a6)                     
  04ca4  33fc0001ffff3ad2      move.w   #1,g_c52e                          
L4cac:
  04cac  3d7c0014ff54          move.w   #$14,-$ac(a6)                      
  04cb2  6042                  bra.s    L4cf6                              
  04cb4  7e07                  moveq    #7,d7                              
  04cb6  6018                  bra.s    L4cd0                              
L4cb8:
  04cb8  2f367520fed6          move.l   (-$12a,a6,d7.w*4),-(a7)            
  04cbe  3f3c0001              move.w   #1,-(a7)                           
  04cc2  a963                  _SetCtlValue                                ; $a963
  04cc4  11bc000171b0ffff9809  move.b   #1,(-$67f7,za0,d7.w)               
  04cce  5247                  addq.w   #1,d7                              
L4cd0:
  04cd0  0c470014              cmpi.w   #$14,d7                            
  04cd4  6de2                  blt.s    L4cb8                              
  04cd6  601e                  bra.s    L4cf6                              
  04cd8  7e07                  moveq    #7,d7                              
  04cda  6014                  bra.s    L4cf0                              
L4cdc:
  04cdc  2f367520fed6          move.l   (-$12a,a6,d7.w*4),-(a7)            
  04ce2  4267                  clr.w    -(a7)                              
  04ce4  a963                  _SetCtlValue                                ; $a963
  04ce6  423071b0ffff9809      clr.b    (-$67f7,za0,d7.w)                  
  04cee  5247                  addq.w   #1,d7                              
L4cf0:
  04cf0  0c470014              cmpi.w   #$14,d7                            
  04cf4  6de6                  blt.s    L4cdc                              
L4cf6:
  04cf6  0c6e0002ff54          cmpi.w   #2,-$ac(a6)                        
  04cfc  6e00fe62              bgt.w    L4b60                              
  04d00  4a6eff54              tst.w    -$ac(a6)                           
  04d04  6700fe5a              beq.w    L4b60                              
  04d08  2f0c                  move.l   a4,-(a7)                           
  04d0a  a983                  _DisposeDialog                              ; $a983
  04d0c  4ead01ca              jsr      f2_6b56                            
  04d10  1f3c0001              move.b   #1,-(a7)                           
  04d14  4ead03d2              jsr      f4_0a1a                            
  04d18  4cee10c0fdd6          movem.l  -$22a(a6),d6/d7/a4                 
  04d1e  4e5e                  unlk     a6                                 
  04d20  4e75                  rts                                         
  04d22  ffd4                  dc.w     $ffd4                              
  04d24  fe5c                  dc.w     $fe5c                              
  04d26  ffd4                  dc.w     $ffd4                              
  04d28  ffd4                  dc.w     $ffd4                              
  04d2a  ffd4                  dc.w     $ffd4                              
  04d2c  ffd4                  dc.w     $ffd4                              
  04d2e  ffd4                  dc.w     $ffd4                              
  04d30  feba                  dc.w     $feba                              
  04d32  feba                  dc.w     $feba                              
  04d34  feba                  dc.w     $feba                              
  04d36  feba                  dc.w     $feba                              
  04d38  feba                  dc.w     $feba                              
  04d3a  feba                  dc.w     $feba                              
  04d3c  feba                  dc.w     $feba                              
  04d3e  feba                  dc.w     $feba                              
  04d40  feba                  dc.w     $feba                              
  04d42  feba                  dc.w     $feba                              
  04d44  feba                  dc.w     $feba                              
  04d46  feba                  dc.w     $feba                              
  04d48  feba                  dc.w     $feba                              
  04d4a  fefe                  dc.w     $fefe                              
  04d4c  ff92                  dc.w     $ff92                              
  04d4e  ffb6                  dc.w     $ffb6                              

;----------------------------------------------------------------------
; f3_4d50   [jump table #102]
;----------------------------------------------------------------------
f3_4d50:
  04d50  4e56fe4e              link     a6,#-434                           
  04d54  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  04d58  3e2e0008              move.w   $8(a6),d7                          
  04d5c  286e000a              movea.l  $a(a6),a4                          
  04d60  266e000e              movea.l  $e(a6),a3                          
  04d64  7600                  moveq    #0,d3                              
  04d66  2d79ffffaa6cff4c      move.l   g_5594,-$b4(a6)                    
  04d6e  3d79ffffaa70ff50      move.w   g_5590,-$b0(a6)                    
  04d76  7a00                  moveq    #0,d5                              
  04d78  41eefe5c              lea      -$1a4(a6),a0                       
  04d7c  43f9ffffaa72          lea      g_558e,a1                          
  04d82  20d9                  move.l   (a1)+,(a0)+                        
  04d84  20d9                  move.l   (a1)+,(a0)+                        
  04d86  20d9                  move.l   (a1)+,(a0)+                        
  04d88  2d79ffffaa7efe56      move.l   g_5582,-$1aa(a6)                   
  04d90  3d79ffffaa82fe5a      move.w   g_557e,-$1a6(a6)                   
  04d98  486efe4e              pea      -$1b2(a6)                          
  04d9c  a874                  _GetPort                                    ; $a874
  04d9e  3c367320ff44          move.w   (-$bc,a6,d7.w*2),d6                
  04da4  3f3c02c6              move.w   #$2c6,-(a7)                        
  04da8  486efe68              pea      -$198(a6)                          
  04dac  486eff4a              pea      -$b6(a6)                           
  04db0  4ead025a              jsr      f2_194e                            
  04db4  3ebc02bc              move.w   #$2bc,(a7)                         
  04db8  486efea4              pea      -$15c(a6)                          
  04dbc  486eff48              pea      -$b8(a6)                           
  04dc0  4ead025a              jsr      f2_194e                            
  04dc4  2eb67520fed4          move.l   (-$12c,a6,d7.w*4),(a7)             
  04dca  2f3c0000036a          move.l   STR_036a,-(a7)                     ; "?"
  04dd0  2f3c0000036c          move.l   STR_036c,-(a7)                     ; "?"
  04dd6  2f3c0000036e          move.l   STR_036e,-(a7)                     ; "?"
  04ddc  a98b                  _ParamText                                  ; $a98b
  04dde  4297                  clr.l    (a7)                               
  04de0  3f3c0105              move.w   #$105,-(a7)                        
  04de4  486eff56              pea      -$aa(a6)                           
  04de8  4878ffff              pea      ($ffff).w                          
  04dec  a97c                  _GetNewDialog                               ; $a97c
  04dee  245f                  movea.l  (a7)+,a2                           
  04df0  2e8a                  move.l   a2,(a7)                            
  04df2  4ead06ba              jsr      f7_161c                            
  04df6  2e8a                  move.l   a2,(a7)                            
  04df8  a873                  _SetPort                                    ; $a873
  04dfa  2e8a                  move.l   a2,(a7)                            
  04dfc  3f3c0003              move.w   #3,-(a7)                           
  04e00  486eff52              pea      -$ae(a6)                           
  04e04  486eff40              pea      -$c0(a6)                           
  04e08  486eff2c              pea      -$d4(a6)                           
  04e0c  a98d                  _GetDialogItem                              ; $a98d
  04e0e  2f0a                  move.l   a2,-(a7)                           
  04e10  3f3c0004              move.w   #4,-(a7)                           
  04e14  486eff52              pea      -$ae(a6)                           
  04e18  486eff3c              pea      -$c4(a6)                           
  04e1c  486eff2c              pea      -$d4(a6)                           
  04e20  a98d                  _GetDialogItem                              ; $a98d
  04e22  2f0a                  move.l   a2,-(a7)                           
  04e24  3f3c0007              move.w   #7,-(a7)                           
  04e28  486eff52              pea      -$ae(a6)                           
  04e2c  486eff34              pea      -$cc(a6)                           
  04e30  486eff24              pea      -$dc(a6)                           
  04e34  a98d                  _GetDialogItem                              ; $a98d
  04e36  2f0a                  move.l   a2,-(a7)                           
  04e38  3f3c0008              move.w   #8,-(a7)                           
  04e3c  486eff52              pea      -$ae(a6)                           
  04e40  486eff38              pea      -$c8(a6)                           
  04e44  486eff1c              pea      -$e4(a6)                           
  04e48  a98d                  _GetDialogItem                              ; $a98d
  04e4a  2f2eff40              move.l   -$c0(a6),-(a7)                     
  04e4e  2f367520fe68          move.l   (-$198,a6,d7.w*4),-(a7)            
  04e54  a95f                  _SetCTitle                                  ; $a95f
  04e56  486efe52              pea      -$1ae(a6)                          
  04e5a  486efe54              pea      -$1ac(a6)                          
  04e5e  3f06                  move.w   d6,-(a7)                           
  04e60  2f2eff3c              move.l   -$c4(a6),-(a7)                     
  04e64  2f2eff40              move.l   -$c0(a6),-(a7)                     
  04e68  2f2e0022              move.l   $22(a6),-(a7)                      
  04e6c  2f0b                  move.l   a3,-(a7)                           
  04e6e  2f0c                  move.l   a4,-(a7)                           
  04e70  2f0a                  move.l   a2,-(a7)                           
  04e72  4eba035a              jsr      f3_51ce                            
  04e76  1a00                  move.b   d0,d5                              
  04e78  4a6efe54              tst.w    -$1ac(a6)                          
  04e7c  4fef0024              lea      $24(a7),a7                         
  04e80  6714                  beq.s    L4e96                              
  04e82  486eff24              pea      -$dc(a6)                           
  04e86  a8a3                  _EraseRect                                  ; $a8a3
  04e88  3f2efe54              move.w   -$1ac(a6),-(a7)                    
  04e8c  486eff24              pea      -$dc(a6)                           
  04e90  4ead06d2              jsr      f7_1a72                            
  04e94  5c8f                  addq.l   #6,a7                              
L4e96:
  04e96  4a6efe52              tst.w    -$1ae(a6)                          
  04e9a  6714                  beq.s    L4eb0                              
  04e9c  486eff1c              pea      -$e4(a6)                           
  04ea0  a8a3                  _EraseRect                                  ; $a8a3
  04ea2  3f2efe52              move.w   -$1ae(a6),-(a7)                    
  04ea6  486eff1c              pea      -$e4(a6)                           
  04eaa  4ead06d2              jsr      f7_1a72                            
  04eae  5c8f                  addq.l   #6,a7                              
L4eb0:
  04eb0  42a7                  clr.l    -(a7)                              
  04eb2  486eff54              pea      -$ac(a6)                           
  04eb6  a991                  _ModalDialog                                ; $a991
  04eb8  302eff54              move.w   -$ac(a6),d0                        
  04ebc  0c400008              cmpi.w   #8,d0                              
  04ec0  620002ba              bhi.w    L517c                              
  04ec4  43fa02f6              lea      L51bc(pc),a1                       
  04ec8  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  04ecc  4ed1                  jmp      (a1)                               
  04ece  4a43                  tst.w    d3                                 
  04ed0  671a                  beq.s    L4eec                              
  04ed2  2f0a                  move.l   a2,-(a7)                           
  04ed4  3f03                  move.w   d3,-(a7)                           
  04ed6  486eff52              pea      -$ae(a6)                           
  04eda  486eff44              pea      -$bc(a6)                           
  04ede  486eff2c              pea      -$d4(a6)                           
  04ee2  a98d                  _GetDialogItem                              ; $a98d
  04ee4  2f2eff44              move.l   -$bc(a6),-(a7)                     
  04ee8  4267                  clr.w    -(a7)                              
  04eea  a963                  _SetCtlValue                                ; $a963
L4eec:
  04eec  2f0a                  move.l   a2,-(a7)                           
  04eee  3f3c0001              move.w   #1,-(a7)                           
  04ef2  486eff52              pea      -$ae(a6)                           
  04ef6  486eff44              pea      -$bc(a6)                           
  04efa  486eff2c              pea      -$d4(a6)                           
  04efe  a98d                  _GetDialogItem                              ; $a98d
  04f00  2f2eff44              move.l   -$bc(a6),-(a7)                     
  04f04  3f3c0001              move.w   #1,-(a7)                           
  04f08  a963                  _SetCtlValue                                ; $a963
  04f0a  2f2eff40              move.l   -$c0(a6),-(a7)                     
  04f0e  4267                  clr.w    -(a7)                              
  04f10  a95d                  _HiliteControl                              ; $a95d
  04f12  2f2eff3c              move.l   -$c4(a6),-(a7)                     
  04f16  4267                  clr.w    -(a7)                              
  04f18  a95d                  _HiliteControl                              ; $a95d
  04f1a  7601                  moveq    #1,d3                              
  04f1c  6000025e              bra.w    L517c                              
  04f20  4a43                  tst.w    d3                                 
  04f22  671a                  beq.s    L4f3e                              
  04f24  2f0a                  move.l   a2,-(a7)                           
  04f26  3f03                  move.w   d3,-(a7)                           
  04f28  486eff52              pea      -$ae(a6)                           
  04f2c  486eff44              pea      -$bc(a6)                           
  04f30  486eff2c              pea      -$d4(a6)                           
  04f34  a98d                  _GetDialogItem                              ; $a98d
  04f36  2f2eff44              move.l   -$bc(a6),-(a7)                     
  04f3a  4267                  clr.w    -(a7)                              
  04f3c  a963                  _SetCtlValue                                ; $a963
L4f3e:
  04f3e  2f0a                  move.l   a2,-(a7)                           
  04f40  3f3c0002              move.w   #2,-(a7)                           
  04f44  486eff52              pea      -$ae(a6)                           
  04f48  486eff44              pea      -$bc(a6)                           
  04f4c  486eff2c              pea      -$d4(a6)                           
  04f50  a98d                  _GetDialogItem                              ; $a98d
  04f52  2f2eff44              move.l   -$bc(a6),-(a7)                     
  04f56  3f3c0001              move.w   #1,-(a7)                           
  04f5a  a963                  _SetCtlValue                                ; $a963
  04f5c  2f2eff40              move.l   -$c0(a6),-(a7)                     
  04f60  3f3c00ff              move.w   #$ff,-(a7)                         
  04f64  a95d                  _HiliteControl                              ; $a95d
  04f66  2f2eff3c              move.l   -$c4(a6),-(a7)                     
  04f6a  4267                  clr.w    -(a7)                              
  04f6c  a95d                  _HiliteControl                              ; $a95d
  04f6e  7602                  moveq    #2,d3                              
  04f70  6000020a              bra.w    L517c                              
  04f74  206e0016              movea.l  $16(a6),a0                         
  04f78  4a50                  tst.w    (a0)                               
  04f7a  6d000090              blt.w    L500c                              
  04f7e  2f2e001e              move.l   $1e(a6),-(a7)                      
  04f82  2f2e001a              move.l   $1a(a6),-(a7)                      
  04f86  2f2e0016              move.l   $16(a6),-(a7)                      
  04f8a  2f2e0012              move.l   $12(a6),-(a7)                      
  04f8e  2f0b                  move.l   a3,-(a7)                           
  04f90  2f0c                  move.l   a4,-(a7)                           
  04f92  4eba1238              jsr      f3_61cc                            
  04f96  4eb67521fe4c          jsr      ([-$1b4,a6],d7.w*4,$0)             
  04f9c  486efe52              pea      -$1ae(a6)                          
  04fa0  486efe54              pea      -$1ac(a6)                          
  04fa4  3f06                  move.w   d6,-(a7)                           
  04fa6  2f2eff3c              move.l   -$c4(a6),-(a7)                     
  04faa  2f2eff40              move.l   -$c0(a6),-(a7)                     
  04fae  2f2e0022              move.l   $22(a6),-(a7)                      
  04fb2  2f0b                  move.l   a3,-(a7)                           
  04fb4  2f0c                  move.l   a4,-(a7)                           
  04fb6  2f0a                  move.l   a2,-(a7)                           
  04fb8  4eba0214              jsr      f3_51ce                            
  04fbc  1a00                  move.b   d0,d5                              
  04fbe  4a6efe54              tst.w    -$1ac(a6)                          
  04fc2  4fef003a              lea      $3a(a7),a7                         
  04fc6  6716                  beq.s    L4fde                              
  04fc8  486eff24              pea      -$dc(a6)                           
  04fcc  a8a3                  _EraseRect                                  ; $a8a3
  04fce  3f2efe54              move.w   -$1ac(a6),-(a7)                    
  04fd2  486eff24              pea      -$dc(a6)                           
  04fd6  4ead06d2              jsr      f7_1a72                            
  04fda  5c8f                  addq.l   #6,a7                              
  04fdc  6006                  bra.s    L4fe4                              
L4fde:
  04fde  486eff24              pea      -$dc(a6)                           
  04fe2  a8a3                  _EraseRect                                  ; $a8a3
L4fe4:
  04fe4  4a6efe52              tst.w    -$1ae(a6)                          
  04fe8  6718                  beq.s    L5002                              
  04fea  486eff1c              pea      -$e4(a6)                           
  04fee  a8a3                  _EraseRect                                  ; $a8a3
  04ff0  3f2efe52              move.w   -$1ae(a6),-(a7)                    
  04ff4  486eff1c              pea      -$e4(a6)                           
  04ff8  4ead06d2              jsr      f7_1a72                            
  04ffc  5c8f                  addq.l   #6,a7                              
  04ffe  6000017c              bra.w    L517c                              
L5002:
  05002  486eff1c              pea      -$e4(a6)                           
  05006  a8a3                  _EraseRect                                  ; $a8a3
  05008  60000172              bra.w    L517c                              
L500c:
  0500c  2f367520fed4          move.l   (-$12c,a6,d7.w*4),-(a7)            
  05012  4ead0222              jsr      f2_7952                            
  05016  4a6efe54              tst.w    -$1ac(a6)                          
  0501a  588f                  addq.l   #4,a7                              
  0501c  6716                  beq.s    L5034                              
  0501e  486eff24              pea      -$dc(a6)                           
  05022  a8a3                  _EraseRect                                  ; $a8a3
  05024  3f2efe54              move.w   -$1ac(a6),-(a7)                    
  05028  486eff24              pea      -$dc(a6)                           
  0502c  4ead06d2              jsr      f7_1a72                            
  05030  5c8f                  addq.l   #6,a7                              
  05032  6006                  bra.s    L503a                              
L5034:
  05034  486eff24              pea      -$dc(a6)                           
  05038  a8a3                  _EraseRect                                  ; $a8a3
L503a:
  0503a  4a6efe52              tst.w    -$1ae(a6)                          
  0503e  6718                  beq.s    L5058                              
  05040  486eff1c              pea      -$e4(a6)                           
  05044  a8a3                  _EraseRect                                  ; $a8a3
  05046  3f2efe52              move.w   -$1ae(a6),-(a7)                    
  0504a  486eff1c              pea      -$e4(a6)                           
  0504e  4ead06d2              jsr      f7_1a72                            
  05052  5c8f                  addq.l   #6,a7                              
  05054  60000126              bra.w    L517c                              
L5058:
  05058  486eff1c              pea      -$e4(a6)                           
  0505c  a8a3                  _EraseRect                                  ; $a8a3
  0505e  6000011c              bra.w    L517c                              
  05062  3003                  move.w   d3,d0                              
  05064  67000116              beq.w    L517c                              
  05068  6b000112              bmi.w    L517c                              
  0506c  5540                  subq.w   #2,d0                              
  0506e  6724                  beq.s    L5094                              
  05070  6a00010a              bpl.w    L517c                              
  05074  3f367320fe4e          move.w   (-$1b2,a6,d7.w*2),-(a7)            
  0507a  4227                  clr.b    -(a7)                              
  0507c  2f2e001a              move.l   $1a(a6),-(a7)                      
  05080  2f2e0012              move.l   $12(a6),-(a7)                      
  05084  2f0c                  move.l   a4,-(a7)                           
  05086  4ead007a              jsr      f2_0aa8                            
  0508a  7a01                  moveq    #1,d5                              
  0508c  4fef0010              lea      $10(a7),a7                         
  05090  600000ea              bra.w    L517c                              
L5094:
  05094  206e0016              movea.l  $16(a6),a0                         
  05098  4a50                  tst.w    (a0)                               
  0509a  6d00008c              blt.w    L5128                              
  0509e  3f367320fe4e          move.w   (-$1b2,a6,d7.w*2),-(a7)            
  050a4  1f3c0001              move.b   #1,-(a7)                           
  050a8  2f2e001e              move.l   $1e(a6),-(a7)                      
  050ac  2f2e0016              move.l   $16(a6),-(a7)                      
  050b0  2f0b                  move.l   a3,-(a7)                           
  050b2  4ead007a              jsr      f2_0aa8                            
  050b6  4eb67521fe4c          jsr      ([-$1b4,a6],d7.w*4,$0)             
  050bc  486efe52              pea      -$1ae(a6)                          
  050c0  486efe54              pea      -$1ac(a6)                          
  050c4  3f06                  move.w   d6,-(a7)                           
  050c6  2f2eff3c              move.l   -$c4(a6),-(a7)                     
  050ca  2f2eff40              move.l   -$c0(a6),-(a7)                     
  050ce  2f2e0022              move.l   $22(a6),-(a7)                      
  050d2  2f0b                  move.l   a3,-(a7)                           
  050d4  2f0c                  move.l   a4,-(a7)                           
  050d6  2f0a                  move.l   a2,-(a7)                           
  050d8  4eba00f4              jsr      f3_51ce                            
  050dc  1a00                  move.b   d0,d5                              
  050de  4a6efe54              tst.w    -$1ac(a6)                          
  050e2  4fef0032              lea      $32(a7),a7                         
  050e6  6716                  beq.s    L50fe                              
  050e8  486eff24              pea      -$dc(a6)                           
  050ec  a8a3                  _EraseRect                                  ; $a8a3
  050ee  3f2efe54              move.w   -$1ac(a6),-(a7)                    
  050f2  486eff24              pea      -$dc(a6)                           
  050f6  4ead06d2              jsr      f7_1a72                            
  050fa  5c8f                  addq.l   #6,a7                              
  050fc  6006                  bra.s    L5104                              
L50fe:
  050fe  486eff24              pea      -$dc(a6)                           
  05102  a8a3                  _EraseRect                                  ; $a8a3
L5104:
  05104  4a6efe52              tst.w    -$1ae(a6)                          
  05108  6716                  beq.s    L5120                              
  0510a  486eff1c              pea      -$e4(a6)                           
  0510e  a8a3                  _EraseRect                                  ; $a8a3
  05110  3f2efe52              move.w   -$1ae(a6),-(a7)                    
  05114  486eff1c              pea      -$e4(a6)                           
  05118  4ead06d2              jsr      f7_1a72                            
  0511c  5c8f                  addq.l   #6,a7                              
  0511e  605c                  bra.s    L517c                              
L5120:
  05120  486eff1c              pea      -$e4(a6)                           
  05124  a8a3                  _EraseRect                                  ; $a8a3
  05126  6054                  bra.s    L517c                              
L5128:
  05128  2f367520fed4          move.l   (-$12c,a6,d7.w*4),-(a7)            
  0512e  4ead0222              jsr      f2_7952                            
  05132  4a6efe54              tst.w    -$1ac(a6)                          
  05136  588f                  addq.l   #4,a7                              
  05138  6716                  beq.s    L5150                              
  0513a  486eff24              pea      -$dc(a6)                           
  0513e  a8a3                  _EraseRect                                  ; $a8a3
  05140  3f2efe54              move.w   -$1ac(a6),-(a7)                    
  05144  486eff24              pea      -$dc(a6)                           
  05148  4ead06d2              jsr      f7_1a72                            
  0514c  5c8f                  addq.l   #6,a7                              
  0514e  6006                  bra.s    L5156                              
L5150:
  05150  486eff24              pea      -$dc(a6)                           
  05154  a8a3                  _EraseRect                                  ; $a8a3
L5156:
  05156  4a6efe52              tst.w    -$1ae(a6)                          
  0515a  6716                  beq.s    L5172                              
  0515c  486eff1c              pea      -$e4(a6)                           
  05160  a8a3                  _EraseRect                                  ; $a8a3
  05162  3f2efe52              move.w   -$1ae(a6),-(a7)                    
  05166  486eff1c              pea      -$e4(a6)                           
  0516a  4ead06d2              jsr      f7_1a72                            
  0516e  5c8f                  addq.l   #6,a7                              
  05170  600a                  bra.s    L517c                              
L5172:
  05172  486eff1c              pea      -$e4(a6)                           
  05176  a8a3                  _EraseRect                                  ; $a8a3
  05178  6002                  bra.s    L517c                              
  0517a  7a01                  moveq    #1,d5                              
L517c:
  0517c  4a05                  tst.b    d5                                 
  0517e  6700fd30              beq.w    L4eb0                              
  05182  2f0a                  move.l   a2,-(a7)                           
  05184  a983                  _DisposeDialog                              ; $a983
  05186  7801                  moveq    #1,d4                              
  05188  600a                  bra.s    L5194                              
L518a:
  0518a  20764520fea4          movea.l  (-$15c,a6,d4.w*4),a0               
  05190  a01f                  _DisposePtr                                 ; $a01f
  05192  5244                  addq.w   #1,d4                              
L5194:
  05194  b86eff48              cmp.w    -$b8(a6),d4                        
  05198  6ff0                  ble.s    L518a                              
  0519a  7801                  moveq    #1,d4                              
  0519c  600a                  bra.s    L51a8                              
L519e:
  0519e  20764520fe68          movea.l  (-$198,a6,d4.w*4),a0               
  051a4  a01f                  _DisposePtr                                 ; $a01f
  051a6  5244                  addq.w   #1,d4                              
L51a8:
  051a8  b86eff4a              cmp.w    -$b6(a6),d4                        
  051ac  6ff0                  ble.s    L519e                              
  051ae  2f2efe4e              move.l   -$1b2(a6),-(a7)                    
  051b2  a873                  _SetPort                                    ; $a873
  051b4  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  051b8  4e5e                  unlk     a6                                 
  051ba  4e75                  rts                                         
  051bc  ffc0                  dc.w     $ffc0                              
  051be  fd12                  dc.w     $fd12                              
  051c0  fd64                  dc.w     $fd64                              
  051c2  fdb8                  dc.w     $fdb8                              
  051c4  fea6                  dc.w     $fea6                              
  051c6  ffbe                  dc.w     $ffbe                              
  051c8  ffc0                  dc.w     $ffc0                              
  051ca  fd12                  dc.w     $fd12                              
  051cc  fd64                  dc.w     $fd64                              

;----------------------------------------------------------------------
; f3_51ce
;----------------------------------------------------------------------
f3_51ce:
  051ce  4e56fdee              link     a6,#-530                           
  051d2  48e70338              movem.l  d6/d7/a2/a3/a4,-(a7)               
  051d6  2e2e0014              move.l   $14(a6),d7                         
  051da  286e0008              movea.l  $8(a6),a4                          
  051de  266e000c              movea.l  $c(a6),a3                          
  051e2  246e0010              movea.l  $10(a6),a2                         
  051e6  41eefeee              lea      -$112(a6),a0                       
  051ea  43f9ffffaa84          lea      g_557c,a1                          
  051f0  703f                  moveq    #63,d0                             
L51f2:
  051f2  20d9                  move.l   (a1)+,(a0)+                        
  051f4  51c8fffc              dbf      d0,L51f2                           
  051f8  206e0022              movea.l  $22(a6),a0                         
  051fc  4250                  clr.w    (a0)                               
  051fe  226e0026              movea.l  $26(a6),a1                         
  05202  4251                  clr.w    (a1)                               
  05204  2f2e0018              move.l   $18(a6),-(a7)                      
  05208  3f3c00ff              move.w   #$ff,-(a7)                         
  0520c  a95d                  _HiliteControl                              ; $a95d
  0520e  2f2e001c              move.l   $1c(a6),-(a7)                      
  05212  3f3c00ff              move.w   #$ff,-(a7)                         
  05216  a95d                  _HiliteControl                              ; $a95d
  05218  4a53                  tst.w    (a3)                               
  0521a  6610                  bne.s    L522c                              
  0521c  4a52                  tst.w    (a2)                               
  0521e  6706                  beq.s    L5226                              
  05220  0c520006              cmpi.w   #6,(a2)                            
  05224  6606                  bne.s    L522c                              
L5226:
  05226  7001                  moveq    #1,d0                              
  05228  600000f6              bra.w    L5320                              
L522c:
  0522c  4a53                  tst.w    (a3)                               
  0522e  6740                  beq.s    L5270                              
  05230  2f0c                  move.l   a4,-(a7)                           
  05232  3f3c0001              move.w   #1,-(a7)                           
  05236  a828                  _LayerDispatch                              ; $a828
  05238  2f0c                  move.l   a4,-(a7)                           
  0523a  3f3c0001              move.w   #1,-(a7)                           
  0523e  486efffe              pea      -$2(a6)                            
  05242  486efff2              pea      -$e(a6)                            
  05246  486efff6              pea      -$a(a6)                            
  0524a  a98d                  _GetDialogItem                              ; $a98d
  0524c  2f2efff2              move.l   -$e(a6),-(a7)                      
  05250  2047                  movea.l  d7,a0                              
  05252  3013                  move.w   (a3),d0                            
  05254  2f300400              move.l   $0(a0,d0.w*4),-(a7)                
  05258  a95f                  _SetCTitle                                  ; $a95f
  0525a  2f2efff2              move.l   -$e(a6),-(a7)                      
  0525e  4267                  clr.w    -(a7)                              
  05260  a963                  _SetCtlValue                                ; $a963
  05262  302e0020              move.w   $20(a6),d0                         
  05266  d053                  add.w    (a3),d0                            
  05268  206e0022              movea.l  $22(a6),a0                         
  0526c  3080                  move.w   d0,(a0)                            
  0526e  6008                  bra.s    L5278                              
L5270:
  05270  2f0c                  move.l   a4,-(a7)                           
  05272  3f3c0001              move.w   #1,-(a7)                           
  05276  a827                  _ShowDialogItem                             ; $a827
L5278:
  05278  4a52                  tst.w    (a2)                               
  0527a  6f00008a              ble.w    L5306                              
  0527e  0c520006              cmpi.w   #6,(a2)                            
  05282  6c000082              bge.w    L5306                              
  05286  2f0c                  move.l   a4,-(a7)                           
  05288  3f3c0002              move.w   #2,-(a7)                           
  0528c  486efffe              pea      -$2(a6)                            
  05290  486efff2              pea      -$e(a6)                            
  05294  486efff6              pea      -$a(a6)                            
  05298  a98d                  _GetDialogItem                              ; $a98d
  0529a  2047                  movea.l  d7,a0                              
  0529c  3012                  move.w   (a2),d0                            
  0529e  20700400              movea.l  $0(a0,d0.w*4),a0                   
  052a2  43eefdee              lea      -$212(a6),a1                       
  052a6  48c0                  ext.l    d0                                 
  052a8  e588                  lsl.l    #2,d0                              
  052aa  d087                  add.l    d7,d0                              
  052ac  10300991              move.b   ([$0,a0],d0.l,$0),d0               
  052b0  49c0                  extb.l   d0                                 
  052b2  5240                  addq.w   #1,d0                              
  052b4  48c0                  ext.l    d0                                 
  052b6  a02e                  _BlockMove                                  ; $a02e
  052b8  2047                  movea.l  d7,a0                              
  052ba  3012                  move.w   (a2),d0                            
  052bc  1c300511              move.b   ([$0,a0],d0.w*4,$0),d6             
  052c0  49c6                  extb.l   d6                                 
  052c2  41eefeef              lea      -$111(a6),a0                       
  052c6  43eefdef              lea      -$211(a6),a1                       
  052ca  d2c6                  adda.w   d6,a1                              
  052cc  7000                  moveq    #0,d0                              
  052ce  102efeee              move.b   -$112(a6),d0                       
  052d2  a02e                  _BlockMove                                  ; $a02e
  052d4  102efeee              move.b   -$112(a6),d0                       
  052d8  d006                  add.b    d6,d0                              
  052da  1d40fdee              move.b   d0,-$212(a6)                       
  052de  2f2efff2              move.l   -$e(a6),-(a7)                      
  052e2  486efdee              pea      -$212(a6)                          
  052e6  a95f                  _SetCTitle                                  ; $a95f
  052e8  2f2efff2              move.l   -$e(a6),-(a7)                      
  052ec  4267                  clr.w    -(a7)                              
  052ee  a963                  _SetCtlValue                                ; $a963
  052f0  302e0020              move.w   $20(a6),d0                         
  052f4  d052                  add.w    (a2),d0                            
  052f6  206e0026              movea.l  $26(a6),a0                         
  052fa  3080                  move.w   d0,(a0)                            
  052fc  2f0c                  move.l   a4,-(a7)                           
  052fe  3f3c0002              move.w   #2,-(a7)                           
  05302  a828                  _LayerDispatch                              ; $a828
  05304  6010                  bra.s    L5316                              
L5306:
  05306  2f0c                  move.l   a4,-(a7)                           
  05308  3f3c0002              move.w   #2,-(a7)                           
  0530c  a827                  _ShowDialogItem                             ; $a827
  0530e  2f0c                  move.l   a4,-(a7)                           
  05310  3f3c0008              move.w   #8,-(a7)                           
  05314  a827                  _ShowDialogItem                             ; $a827
L5316:
  05316  2f0c                  move.l   a4,-(a7)                           
  05318  a915                  _ShowWindow                                 ; $a915
  0531a  2f0c                  move.l   a4,-(a7)                           
  0531c  a981                  _DrawDialog                                 ; $a981
  0531e  7000                  moveq    #0,d0                              
L5320:
  05320  4cdf1cc0              movem.l  (a7)+,d6/d7/a2/a3/a4               
  05324  4e5e                  unlk     a6                                 
  05326  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_5328   [jump table #103]
;----------------------------------------------------------------------
f3_5328:
  05328  4e56ff54              link     a6,#-172                           
  0532c  2f0c                  move.l   a4,-(a7)                           
  0532e  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  05334  a851                  _SetCursor                                  ; $a851
  05336  a853                  _ShowCursor                                 ; $a853
  05338  42a7                  clr.l    -(a7)                              
  0533a  3f3c008b              move.w   #$8b,-(a7)                         
  0533e  486eff56              pea      -$aa(a6)                           
  05342  4878ffff              pea      ($ffff).w                          
  05346  a97c                  _GetNewDialog                               ; $a97c
  05348  285f                  movea.l  (a7)+,a4                           
  0534a  2f0c                  move.l   a4,-(a7)                           
  0534c  4ead06ba              jsr      f7_161c                            
  05350  588f                  addq.l   #4,a7                              
L5352:
  05352  42a7                  clr.l    -(a7)                              
  05354  486eff54              pea      -$ac(a6)                           
  05358  a991                  _ModalDialog                                ; $a991
  0535a  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  05360  66f0                  bne.s    L5352                              
  05362  2f0c                  move.l   a4,-(a7)                           
  05364  a983                  _DisposeDialog                              ; $a983
  05366  285f                  movea.l  (a7)+,a4                           
  05368  4e5e                  unlk     a6                                 
  0536a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_536c   [jump table #105]
;----------------------------------------------------------------------
f3_536c:
  0536c  4e56fff2              link     a6,#-14                            
  05370  2f0b                  move.l   a3,-(a7)                           
  05372  206e000c              movea.l  $c(a6),a0                          
  05376  26680002              movea.l  $2(a0),a3                          
  0537a  0c500006              cmpi.w   #6,(a0)                            
  0537e  664e                  bne.s    L53ce                              
  05380  b7ee0010              cmpa.l   $10(a6),a3                         
  05384  6648                  bne.s    L53ce                              
  05386  206e0008              movea.l  $8(a6),a0                          
  0538a  30bc0014              move.w   #$14,(a0)                          
  0538e  2f2e0010              move.l   $10(a6),-(a7)                      
  05392  3f3c0001              move.w   #1,-(a7)                           
  05396  486efff6              pea      -$a(a6)                            
  0539a  486efff2              pea      -$e(a6)                            
  0539e  486efff8              pea      -$8(a6)                            
  053a2  a98d                  _GetDialogItem                              ; $a98d
  053a4  2079ffff99f4          movea.l  g_660c,a0                          
  053aa  20680002              movea.l  $2(a0),a0                          
  053ae  2f10                  move.l   (a0),-(a7)                         
  053b0  206e0010              movea.l  $10(a6),a0                         
  053b4  48680002              pea      $2(a0)                             
  053b8  486efff8              pea      -$8(a6)                            
  053bc  486efff8              pea      -$8(a6)                            
  053c0  4267                  clr.w    -(a7)                              
  053c2  42a7                  clr.l    -(a7)                              
  053c4  a8ec                  _CopyBits                                   ; $a8ec
  053c6  1d7c00010014          move.b   #1,$14(a6)                         
  053cc  6004                  bra.s    L53d2                              
L53ce:
  053ce  422e0014              clr.b    $14(a6)                            
L53d2:
  053d2  265f                  movea.l  (a7)+,a3                           
  053d4  4e5e                  unlk     a6                                 
  053d6  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f3_53da   [jump table #104]
;----------------------------------------------------------------------
f3_53da:
  053da  4e56ff3e              link     a6,#-194                           
  053de  48e70118              movem.l  d7/a3/a4,-(a7)                     
  053e2  7e00                  moveq    #0,d7                              
  053e4  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  053ea  a851                  _SetCursor                                  ; $a851
  053ec  a853                  _ShowCursor                                 ; $a853
  053ee  2f39ffff99f4          move.l   g_660c,-(a7)                       
  053f4  a873                  _SetPort                                    ; $a873
  053f6  2079ffff99f4          movea.l  g_660c,a0                          
  053fc  48680010              pea      $10(a0)                            
  05400  a8a3                  _EraseRect                                  ; $a8a3
  05402  2f39ffff99f8          move.l   g_6608,-(a7)                       
  05408  a873                  _SetPort                                    ; $a873
  0540a  2079ffff99f8          movea.l  g_6608,a0                          
  05410  48680010              pea      $10(a0)                            
  05414  a8a3                  _EraseRect                                  ; $a8a3
  05416  2f39ffff99fc          move.l   g_6604,-(a7)                       
  0541c  a873                  _SetPort                                    ; $a873
  0541e  2079ffff99fc          movea.l  g_6604,a0                          
  05424  48680010              pea      $10(a0)                            
  05428  a8a3                  _EraseRect                                  ; $a8a3
  0542a  2f39ffff99f4          move.l   g_660c,-(a7)                       
  05430  a873                  _SetPort                                    ; $a873
  05432  42a7                  clr.l    -(a7)                              
  05434  3f3c0083              move.w   #$83,-(a7)                         
  05438  486eff56              pea      -$aa(a6)                           
  0543c  4878ffff              pea      ($ffff).w                          
  05440  a97c                  _GetNewDialog                               ; $a97c
  05442  285f                  movea.l  (a7)+,a4                           
  05444  2f0c                  move.l   a4,-(a7)                           
  05446  4ead06ba              jsr      f7_161c                            
  0544a  2e8c                  move.l   a4,(a7)                            
  0544c  3f3c0001              move.w   #1,-(a7)                           
  05450  486eff52              pea      -$ae(a6)                           
  05454  486eff3e              pea      -$c2(a6)                           
  05458  486eff4a              pea      -$b6(a6)                           
  0545c  a98d                  _GetDialogItem                              ; $a98d
  0545e  42a7                  clr.l    -(a7)                              
  05460  3f3c0092              move.w   #$92,-(a7)                         
  05464  a9bc                  _GetPicture                                 ; $a9bc
  05466  265f                  movea.l  (a7)+,a3                           
  05468  2f0b                  move.l   a3,-(a7)                           
  0546a  486eff4a              pea      -$b6(a6)                           
  0546e  a8f6                  _DrawPicture                                ; $a8f6
  05470  2f0c                  move.l   a4,-(a7)                           
  05472  a915                  _ShowWindow                                 ; $a915
  05474  2079ffff99f4          movea.l  g_660c,a0                          
  0547a  20680002              movea.l  $2(a0),a0                          
  0547e  2f10                  move.l   (a0),-(a7)                         
  05480  486c0002              pea      $2(a4)                             
  05484  486eff4a              pea      -$b6(a6)                           
  05488  486eff4a              pea      -$b6(a6)                           
  0548c  4267                  clr.w    -(a7)                              
  0548e  42a7                  clr.l    -(a7)                              
  05490  a8ec                  _CopyBits                                   ; $a8ec
L5492:
  05492  486d036a              pea      f3_536c                            
  05496  486eff54              pea      -$ac(a6)                           
  0549a  a991                  _ModalDialog                                ; $a991
  0549c  302eff54              move.w   -$ac(a6),d0                        
  054a0  6b34                  bmi.s    L54d6                              
  054a2  5740                  subq.w   #3,d0                              
  054a4  6718                  beq.s    L54be                              
  054a6  6a06                  bpl.s    L54ae                              
  054a8  5240                  addq.w   #1,d0                              
  054aa  6a0a                  bpl.s    L54b6                              
  054ac  6028                  bra.s    L54d6                              
L54ae:
  054ae  04400011              subi.w   #$11,d0                            
  054b2  6716                  beq.s    L54ca                              
  054b4  6020                  bra.s    L54d6                              
L54b6:
  054b6  2f0c                  move.l   a4,-(a7)                           
  054b8  a983                  _DisposeDialog                              ; $a983
  054ba  7e01                  moveq    #1,d7                              
  054bc  6018                  bra.s    L54d6                              
L54be:
  054be  2f0c                  move.l   a4,-(a7)                           
  054c0  a983                  _DisposeDialog                              ; $a983
  054c2  4ead017a              jsr      f2_6264                            
  054c6  7e01                  moveq    #1,d7                              
  054c8  600c                  bra.s    L54d6                              
L54ca:
  054ca  2f0c                  move.l   a4,-(a7)                           
  054cc  a922                  _BeginUpdate                                ; $a922
  054ce  2f0c                  move.l   a4,-(a7)                           
  054d0  a981                  _DrawDialog                                 ; $a981
  054d2  2f0c                  move.l   a4,-(a7)                           
  054d4  a923                  _EndUpdate                                  ; $a923
L54d6:
  054d6  4a07                  tst.b    d7                                 
  054d8  67b8                  beq.s    L5492                              
  054da  2f0b                  move.l   a3,-(a7)                           
  054dc  a9a3                  _ReleaseResource                            ; $a9a3
  054de  4cdf1880              movem.l  (a7)+,d7/a3/a4                     
  054e2  4e5e                  unlk     a6                                 
  054e4  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_54e6   [jump table #106]
;----------------------------------------------------------------------
f3_54e6:
  054e6  4e56ffec              link     a6,#-20                            
  054ea  2f07                  move.l   d7,-(a7)                           
  054ec  486efff8              pea      -$8(a6)                            
  054f0  2f3c0005004b          move.l   #$5004b,-(a7)                      
  054f6  2f3c0025006b          move.l   #$25006b,-(a7)                     
  054fc  a8a7                  _SetRect                                    ; $a8a7
  054fe  486efff8              pea      -$8(a6)                            
  05502  2f3c0025005a          move.l   #$25005a,-(a7)                     
  05508  a8a8                  _OffsetRect                                 ; $a8a8
  0550a  4a79ffff8392          tst.w    g_7c6e                             
  05510  6608                  bne.s    L551a                              
  05512  486efff8              pea      -$8(a6)                            
  05516  a8a3                  _EraseRect                                  ; $a8a3
  05518  6056                  bra.s    L5570                              
L551a:
  0551a  486effec              pea      -$14(a6)                           
  0551e  a874                  _GetPort                                    ; $a874
  05520  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  05526  a873                  _SetPort                                    ; $a873
  05528  4a79ffff838e          tst.w    g_7c72                             
  0552e  660c                  bne.s    L553c                              
  05530  3e39ffff8392          move.w   g_7c6e,d7                          
  05536  064702bc              addi.w   #$2bc,d7                           
  0553a  601e                  bra.s    L555a                              
L553c:
  0553c  4a79ffff838e          tst.w    g_7c72                             
  05542  6f0c                  ble.s    L5550                              
  05544  3e39ffff8392          move.w   g_7c6e,d7                          
  0554a  064702ee              addi.w   #$2ee,d7                           
  0554e  600a                  bra.s    L555a                              
L5550:
  05550  3e39ffff8392          move.w   g_7c6e,d7                          
  05556  06470302              addi.w   #$302,d7                           
L555a:
  0555a  486efff8              pea      -$8(a6)                            
  0555e  a8a3                  _EraseRect                                  ; $a8a3
  05560  3f07                  move.w   d7,-(a7)                           
  05562  486efff8              pea      -$8(a6)                            
  05566  4ead06d2              jsr      f7_1a72                            
  0556a  2eaeffec              move.l   -$14(a6),(a7)                      
  0556e  a873                  _SetPort                                    ; $a873
L5570:
  05570  2e2effe8              move.l   -$18(a6),d7                        
  05574  4e5e                  unlk     a6                                 
  05576  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_5578   [jump table #111]
;----------------------------------------------------------------------
f3_5578:
  05578  4e56ffee              link     a6,#-18                            
  0557c  5279ffff3afe          addq.w   #1,g_c502                          
  05582  4a2e0008              tst.b    $8(a6)                             
  05586  660000f8              bne.w    L5680                              
  0558a  33f9ffff884cffff8d9e  move.w   g_77b4,g_7262                      
  05594  3039ffff884e          move.w   g_77b2,d0                          
  0559a  6714                  beq.s    L55b0                              
  0559c  6b0000ca              bmi.w    L5668                              
  055a0  5740                  subq.w   #3,d0                              
  055a2  67000098              beq.w    L563c                              
  055a6  6a0000c0              bpl.w    L5668                              
  055aa  5240                  addq.w   #1,d0                              
  055ac  6a32                  bpl.s    L55e0                              
  055ae  605e                  bra.s    L560e                              
L55b0:
  055b0  3039ffff884e          move.w   g_77b2,d0                          
  055b6  7201                  moveq    #1,d1                              
  055b8  d27003b0ffff8850      add.w    (-$77b0,za0,d0.w*2),d1             
  055c0  33c1ffff836c          move.w   d1,g_7c94                          
  055c6  3239ffff8d9e          move.w   g_7262,d1                          
  055cc  740f                  moveq    #15,d2                             
  055ce  d47013b0ffff8ad4      add.w    (-$752c,za0,d1.w*2),d2             
  055d6  33c2ffff836e          move.w   d2,g_7c92                          
  055dc  6000008a              bra.w    L5668                              
L55e0:
  055e0  3039ffff884e          move.w   g_77b2,d0                          
  055e6  7201                  moveq    #1,d1                              
  055e8  d27003b0ffff8850      add.w    (-$77b0,za0,d0.w*2),d1             
  055f0  33c1ffff836c          move.w   d1,g_7c94                          
  055f6  3239ffff8d9e          move.w   g_7262,d1                          
  055fc  74fa                  moveq    #-6,d2                             
  055fe  d47013b0ffff8b28      add.w    (-$74d8,za0,d1.w*2),d2             
  05606  33c2ffff836e          move.w   d2,g_7c92                          
  0560c  605a                  bra.s    L5668                              
L560e:
  0560e  3039ffff8d9e          move.w   g_7262,d0                          
  05614  72ec                  moveq    #-20,d1                            
  05616  d27003b0ffff8b52      add.w    (-$74ae,za0,d0.w*2),d1             
  0561e  33c1ffff836c          move.w   d1,g_7c94                          
  05624  3239ffff884e          move.w   g_77b2,d1                          
  0562a  740f                  moveq    #15,d2                             
  0562c  d47013b0ffff8850      add.w    (-$77b0,za0,d1.w*2),d2             
  05634  33c2ffff836e          move.w   d2,g_7c92                          
  0563a  602c                  bra.s    L5668                              
L563c:
  0563c  3039ffff8d9e          move.w   g_7262,d0                          
  05642  7201                  moveq    #1,d1                              
  05644  d27003b0ffff8afe      add.w    (-$7502,za0,d0.w*2),d1             
  0564c  33c1ffff836c          move.w   d1,g_7c94                          
  05652  3239ffff884e          move.w   g_77b2,d1                          
  05658  740f                  moveq    #15,d2                             
  0565a  d47013b0ffff8850      add.w    (-$77b0,za0,d1.w*2),d2             
  05662  33c2ffff836e          move.w   d2,g_7c92                          
L5668:
  05668  3079ffff884e          movea.w  g_77b2,a0                          
  0566e  7002                  moveq    #2,d0                              
  05670  d088                  add.l    a0,d0                              
  05672  81fc0004              divs.w   #4,d0                              
  05676  4840                  swap     d0                                 
  05678  5240                  addq.w   #1,d0                              
  0567a  33c0ffff83bc          move.w   d0,g_7c44                          
L5680:
  05680  4a2e0008              tst.b    $8(a6)                             
  05684  670000f8              beq.w    L577e                              
  05688  33f9ffff8888ffff8d9e  move.w   g_7778,g_7262                      
  05692  3039ffff8892          move.w   g_776e,d0                          
  05698  6714                  beq.s    L56ae                              
  0569a  6b0000ca              bmi.w    L5766                              
  0569e  5740                  subq.w   #3,d0                              
  056a0  67000098              beq.w    L573a                              
  056a4  6a0000c0              bpl.w    L5766                              
  056a8  5240                  addq.w   #1,d0                              
  056aa  6a32                  bpl.s    L56de                              
  056ac  605e                  bra.s    L570c                              
L56ae:
  056ae  3039ffff8892          move.w   g_776e,d0                          
  056b4  7201                  moveq    #1,d1                              
  056b6  d27003b0ffff888a      add.w    (-$7776,za0,d0.w*2),d1             
  056be  33c1ffff836c          move.w   d1,g_7c94                          
  056c4  3239ffff8d9e          move.w   g_7262,d1                          
  056ca  740f                  moveq    #15,d2                             
  056cc  d47013b0ffff8ad4      add.w    (-$752c,za0,d1.w*2),d2             
  056d4  33c2ffff836e          move.w   d2,g_7c92                          
  056da  6000008a              bra.w    L5766                              
L56de:
  056de  3039ffff8892          move.w   g_776e,d0                          
  056e4  7201                  moveq    #1,d1                              
  056e6  d27003b0ffff888a      add.w    (-$7776,za0,d0.w*2),d1             
  056ee  33c1ffff836c          move.w   d1,g_7c94                          
  056f4  3239ffff8d9e          move.w   g_7262,d1                          
  056fa  74fa                  moveq    #-6,d2                             
  056fc  d47013b0ffff8b28      add.w    (-$74d8,za0,d1.w*2),d2             
  05704  33c2ffff836e          move.w   d2,g_7c92                          
  0570a  605a                  bra.s    L5766                              
L570c:
  0570c  3039ffff8d9e          move.w   g_7262,d0                          
  05712  72ec                  moveq    #-20,d1                            
  05714  d27003b0ffff8b52      add.w    (-$74ae,za0,d0.w*2),d1             
  0571c  33c1ffff836c          move.w   d1,g_7c94                          
  05722  3239ffff8892          move.w   g_776e,d1                          
  05728  740f                  moveq    #15,d2                             
  0572a  d47013b0ffff888a      add.w    (-$7776,za0,d1.w*2),d2             
  05732  33c2ffff836e          move.w   d2,g_7c92                          
  05738  602c                  bra.s    L5766                              
L573a:
  0573a  3039ffff8d9e          move.w   g_7262,d0                          
  05740  7201                  moveq    #1,d1                              
  05742  d27003b0ffff8afe      add.w    (-$7502,za0,d0.w*2),d1             
  0574a  33c1ffff836c          move.w   d1,g_7c94                          
  05750  3239ffff8892          move.w   g_776e,d1                          
  05756  740f                  moveq    #15,d2                             
  05758  d47013b0ffff888a      add.w    (-$7776,za0,d1.w*2),d2             
  05760  33c2ffff836e          move.w   d2,g_7c92                          
L5766:
  05766  3079ffff8892          movea.w  g_776e,a0                          
  0576c  7002                  moveq    #2,d0                              
  0576e  d088                  add.l    a0,d0                              
  05770  81fc0004              divs.w   #4,d0                              
  05774  4840                  swap     d0                                 
  05776  5240                  addq.w   #1,d0                              
  05778  33c0ffff83bc          move.w   d0,g_7c44                          
L577e:
  0577e  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  05784  a873                  _SetPort                                    ; $a873
  05786  4ead018a              jsr      f2_6450                            
  0578a  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  05790  4ead01e2              jsr      f2_6ca0                            
  05794  4ead0142              jsr      f2_4440                            
  05798  1ebc0001              move.b   #1,(a7)                            
  0579c  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  057a2  4ead016a              jsr      f2_549e                            
  057a6  4ead013a              jsr      f2_4410                            
  057aa  4ead01b2              jsr      f2_6a2a                            
  057ae  4e5e                  unlk     a6                                 
  057b0  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_57b2   [jump table #112]
;----------------------------------------------------------------------
f3_57b2:
  057b2  4e560000              link     a6,#0                              
  057b6  4a39ffff3b12          tst.b    g_c4ee                             
  057bc  57c0                  seq      d0                                 
  057be  4400                  neg.b    d0                                 
  057c0  13c0ffff3b12          move.b   d0,g_c4ee                          
  057c6  4a00                  tst.b    d0                                 
  057c8  671c                  beq.s    L57e6                              
  057ca  2f39ffff8dcc          move.l   g_7234,-(a7)                       
  057d0  3f3c0004              move.w   #4,-(a7)                           
  057d4  2f3c00000370          move.l   STR_0370,-(a7)                     ; "Hide Overhead View"
  057da  a947                  _SetMenuItemText                            ; $a947
  057dc  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  057e2  a915                  _ShowWindow                                 ; $a915
  057e4  601a                  bra.s    L5800                              
L57e6:
  057e6  2f39ffff8dcc          move.l   g_7234,-(a7)                       
  057ec  3f3c0004              move.w   #4,-(a7)                           
  057f0  2f3c00000384          move.l   STR_0384,-(a7)                     ; "Show Overhead View"
  057f6  a947                  _SetMenuItemText                            ; $a947
  057f8  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  057fe  a916                  _HideWindow                                 ; $a916
L5800:
  05800  4e5e                  unlk     a6                                 
  05802  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_5804   [jump table #113]
;----------------------------------------------------------------------
f3_5804:
  05804  4e56ff5e              link     a6,#-162                           
  05808  48e70308              movem.l  d6/d7/a4,-(a7)                     
  0580c  7c00                  moveq    #0,d6                              
  0580e  426eff60              clr.w    -$a0(a6)                           
  05812  426eff5e              clr.w    -$a2(a6)                           
  05816  426eff62              clr.w    -$9e(a6)                           
  0581a  3079ffffabfc          movea.w  g_5404,a0                          
  05820  2008                  move.l   a0,d0                              
  05822  81fc0002              divs.w   #2,d0                              
  05826  0640feff              addi.w   #$feff,d0                          
  0582a  3d40fffa              move.w   d0,-$6(a6)                         
  0582e  302efffa              move.w   -$6(a6),d0                         
  05832  06400201              addi.w   #$201,d0                           
  05836  3d40fffe              move.w   d0,-$2(a6)                         
  0583a  3079ffffabfa          movea.w  g_5406,a0                          
  05840  2008                  move.l   a0,d0                              
  05842  81fc0002              divs.w   #2,d0                              
  05846  0640ff98              addi.w   #$ff98,d0                          
  0584a  3d40fff8              move.w   d0,-$8(a6)                         
  0584e  302efff8              move.w   -$8(a6),d0                         
  05852  064000d0              addi.w   #$d0,d0                            
  05856  3d40fffc              move.w   d0,-$4(a6)                         
  0585a  486effd8              pea      -$28(a6)                           
  0585e  486efff8              pea      -$8(a6)                            
  05862  486eff64              pea      -$9c(a6)                           
  05866  486eff68              pea      -$98(a6)                           
  0586a  486effd4              pea      -$2c(a6)                           
  0586e  4ead04a2              jsr      f4_15ee                            
  05872  206effd4              movea.l  -$2c(a6),a0                        
  05876  20680002              movea.l  $2(a0),a0                          
  0587a  a029                  _HLock                                      ; $a029
  0587c  2eaeffd4              move.l   -$2c(a6),(a7)                      
  05880  a873                  _SetPort                                    ; $a873
  05882  486eff5e              pea      -$a2(a6)                           
  05886  aa14                  _RGBForeColor                               ; $aa14
  05888  2d6efff8fff0          move.l   -$8(a6),-$10(a6)                   
  0588e  2d6efffcfff4          move.l   -$4(a6),-$c(a6)                    
  05894  486efff0              pea      -$10(a6)                           
  05898  2f3c00640064          move.l   #$640064,-(a7)                     
  0589e  a8a9                  _InsetRect                                  ; $a8a9
  058a0  2eb9ffff99f4          move.l   g_660c,(a7)                        
  058a6  a873                  _SetPort                                    ; $a873
  058a8  2079ffff99f4          movea.l  g_660c,a0                          
  058ae  48680010              pea      $10(a0)                            
  058b2  a8a3                  _EraseRect                                  ; $a8a3
  058b4  2eaeffd4              move.l   -$2c(a6),(a7)                      
  058b8  a873                  _SetPort                                    ; $a873
  058ba  206effd4              movea.l  -$2c(a6),a0                        
  058be  48680010              pea      $10(a0)                            
  058c2  a8a3                  _EraseRect                                  ; $a8a3
  058c4  4297                  clr.l    (a7)                               
  058c6  3f3c0087              move.w   #$87,-(a7)                         
  058ca  a9bc                  _GetPicture                                 ; $a9bc
  058cc  285f                  movea.l  (a7)+,a4                           
  058ce  2079ffff8fca          movea.l  g_7036,a0                          
  058d4  48680002              pea      $2(a0)                             
  058d8  226effd4              movea.l  -$2c(a6),a1                        
  058dc  22690002              movea.l  $2(a1),a1                          
  058e0  2f11                  move.l   (a1),-(a7)                         
  058e2  486efff8              pea      -$8(a6)                            
  058e6  486efff8              pea      -$8(a6)                            
  058ea  4267                  clr.w    -(a7)                              
  058ec  42a7                  clr.l    -(a7)                              
  058ee  a8ec                  _CopyBits                                   ; $a8ec
  058f0  2e8c                  move.l   a4,(a7)                            
  058f2  486efff8              pea      -$8(a6)                            
  058f6  a8f6                  _DrawPicture                                ; $a8f6
  058f8  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  058fe  201f                  move.l   (a7)+,d0                           
  05900  a032                  _FlushEvents                                ; $a032
  05902  3f3c5c30              move.w   #$5c30,-(a7)                       
  05906  4ebae930              jsr      f3_4238                            
  0590a  4ebaeb18              jsr      f3_4424                            
  0590e  7e00                  moveq    #0,d7                              
  05910  548f                  addq.l   #2,a7                              
  05912  6076                  bra.s    L598a                              
L5914:
  05914  4227                  clr.b    -(a7)                              
  05916  3f3c0002              move.w   #2,-(a7)                           
  0591a  486effdc              pea      -$24(a6)                           
  0591e  a970                  _GetNextEvent                               ; $a970
  05920  7e00                  moveq    #0,d7                              
  05922  1e1f                  move.b   (a7)+,d7                           
  05924  4a39ffff8dfb          tst.b    g_7205                             
  0592a  6720                  beq.s    L594c                              
  0592c  4a06                  tst.b    d6                                 
  0592e  660e                  bne.s    L593e                              
  05930  3f3c5c31              move.w   #$5c31,-(a7)                       
  05934  4ebae902              jsr      f3_4238                            
  05938  7c01                  moveq    #1,d6                              
  0593a  548f                  addq.l   #2,a7                              
  0593c  600a                  bra.s    L5948                              
L593e:
  0593e  3f3c5c30              move.w   #$5c30,-(a7)                       
  05942  4ebae8f4              jsr      f3_4238                            
  05946  548f                  addq.l   #2,a7                              
L5948:
  05948  4ebaeada              jsr      f3_4424                            
L594c:
  0594c  206effd4              movea.l  -$2c(a6),a0                        
  05950  20680002              movea.l  $2(a0),a0                          
  05954  2f10                  move.l   (a0),-(a7)                         
  05956  2079ffff8fca          movea.l  g_7036,a0                          
  0595c  48680002              pea      $2(a0)                             
  05960  486efff8              pea      -$8(a6)                            
  05964  486efff0              pea      -$10(a6)                           
  05968  3f3c0024              move.w   #$24,-(a7)                         
  0596c  42a7                  clr.l    -(a7)                              
  0596e  a8ec                  _CopyBits                                   ; $a8ec
  05970  43eeffec              lea      -$14(a6),a1                        
  05974  2079ffff9828          movea.l  g_67d8,a0                          
  0597a  a03b                  _Delay                                      ; $a03b
  0597c  2280                  move.l   d0,(a1)                            
  0597e  486efff0              pea      -$10(a6)                           
  05982  2f3cfffefffe          move.l   #$fffefffe,-(a7)                   
  05988  a8a9                  _InsetRect                                  ; $a8a9
L598a:
  0598a  302efff0              move.w   -$10(a6),d0                        
  0598e  b06efff8              cmp.w    -$8(a6),d0                         
  05992  6f06                  ble.s    L599a                              
  05994  4a47                  tst.w    d7                                 
  05996  6700ff7c              beq.w    L5914                              
L599a:
  0599a  2f0c                  move.l   a4,-(a7)                           
  0599c  a9a3                  _ReleaseResource                            ; $a9a3
  0599e  4a39ffff8dfb          tst.b    g_7205                             
  059a4  6614                  bne.s    L59ba                              
  059a6  4a06                  tst.b    d6                                 
  059a8  6610                  bne.s    L59ba                              
  059aa  3f3c5c31              move.w   #$5c31,-(a7)                       
  059ae  4ebae888              jsr      f3_4238                            
  059b2  7c01                  moveq    #1,d6                              
  059b4  4ebaea6e              jsr      f3_4424                            
  059b8  548f                  addq.l   #2,a7                              
L59ba:
  059ba  42a7                  clr.l    -(a7)                              
  059bc  a975                  _TickCount                                  ; $a975
  059be  2d5fffec              move.l   (a7)+,-$14(a6)                     
L59c2:
  059c2  42a7                  clr.l    -(a7)                              
  059c4  a975                  _TickCount                                  ; $a975
  059c6  201f                  move.l   (a7)+,d0                           
  059c8  90aeffec              sub.l    -$14(a6),d0                        
  059cc  0c8000000190          cmpi.l   #$190,d0                           
  059d2  6430                  bcc.s    L5a04                              
  059d4  4a47                  tst.w    d7                                 
  059d6  662c                  bne.s    L5a04                              
  059d8  4227                  clr.b    -(a7)                              
  059da  3f3c0002              move.w   #2,-(a7)                           
  059de  486effdc              pea      -$24(a6)                           
  059e2  a970                  _GetNextEvent                               ; $a970
  059e4  7e00                  moveq    #0,d7                              
  059e6  1e1f                  move.b   (a7)+,d7                           
  059e8  4a39ffff8dfb          tst.b    g_7205                             
  059ee  67d2                  beq.s    L59c2                              
  059f0  4a06                  tst.b    d6                                 
  059f2  66ce                  bne.s    L59c2                              
  059f4  3f3c5c30              move.w   #$5c30,-(a7)                       
  059f8  4ebae83e              jsr      f3_4238                            
  059fc  4ebaea26              jsr      f3_4424                            
  05a00  548f                  addq.l   #2,a7                              
  05a02  60be                  bra.s    L59c2                              
L5a04:
  05a04  4a06                  tst.b    d6                                 
  05a06  6632                  bne.s    L5a3a                              
  05a08  4a47                  tst.w    d7                                 
  05a0a  6726                  beq.s    L5a32                              
  05a0c  602c                  bra.s    L5a3a                              
L5a0e:
  05a0e  4a06                  tst.b    d6                                 
  05a10  6610                  bne.s    L5a22                              
  05a12  3f3c5c31              move.w   #$5c31,-(a7)                       
  05a16  4ebae820              jsr      f3_4238                            
  05a1a  7c01                  moveq    #1,d6                              
  05a1c  4ebaea06              jsr      f3_4424                            
  05a20  548f                  addq.l   #2,a7                              
L5a22:
  05a22  4227                  clr.b    -(a7)                              
  05a24  3f3c0002              move.w   #2,-(a7)                           
  05a28  486effdc              pea      -$24(a6)                           
  05a2c  a970                  _GetNextEvent                               ; $a970
  05a2e  7e00                  moveq    #0,d7                              
  05a30  1e1f                  move.b   (a7)+,d7                           
L5a32:
  05a32  4a39ffff8dfb          tst.b    g_7205                             
  05a38  67d4                  beq.s    L5a0e                              
L5a3a:
  05a3a  4a39ffff8dfb          tst.b    g_7205                             
  05a40  6604                  bne.s    L5a46                              
  05a42  4a47                  tst.w    d7                                 
  05a44  67f4                  beq.s    L5a3a                              
L5a46:
  05a46  4ebaea76              jsr      f3_44be                            
  05a4a  2f39ffff99f4          move.l   g_660c,-(a7)                       
  05a50  a873                  _SetPort                                    ; $a873
  05a52  2079ffff99f4          movea.l  g_660c,a0                          
  05a58  48680010              pea      $10(a0)                            
  05a5c  a8a3                  _EraseRect                                  ; $a8a3
  05a5e  2f39ffff99fc          move.l   g_6604,-(a7)                       
  05a64  a873                  _SetPort                                    ; $a873
  05a66  2079ffff99fc          movea.l  g_6604,a0                          
  05a6c  48680010              pea      $10(a0)                            
  05a70  a8a3                  _EraseRect                                  ; $a8a3
  05a72  2f39ffff8fca          move.l   g_7036,-(a7)                       
  05a78  a873                  _SetPort                                    ; $a873
  05a7a  2079ffff8fca          movea.l  g_7036,a0                          
  05a80  48680010              pea      $10(a0)                            
  05a84  a8a3                  _EraseRect                                  ; $a8a3
  05a86  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  05a8c  201f                  move.l   (a7)+,d0                           
  05a8e  a032                  _FlushEvents                                ; $a032
  05a90  206effd4              movea.l  -$2c(a6),a0                        
  05a94  20680002              movea.l  $2(a0),a0                          
  05a98  a02a                  _HUnlock                                    ; $a02a
  05a9a  2f2effd4              move.l   -$2c(a6),-(a7)                     
  05a9e  a87d                  _ClosePort                                  ; $a87d
  05aa0  206effd8              movea.l  -$28(a6),a0                        
  05aa4  a01f                  _DisposePtr                                 ; $a01f
  05aa6  4cdf10c0              movem.l  (a7)+,d6/d7/a4                     
  05aaa  4e5e                  unlk     a6                                 
  05aac  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_5aae   [jump table #114]
;----------------------------------------------------------------------
f3_5aae:
  05aae  4e56fffc              link     a6,#-4                             
  05ab2  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  05ab6  4267                  clr.w    -(a7)                              
  05ab8  a994                  _CurResFile                                 ; $a994
  05aba  3e1f                  move.w   (a7)+,d7                           
  05abc  42a7                  clr.l    -(a7)                              
  05abe  2f3c6f636e74          move.l   #$6f636e74,-(a7)                   
  05ac4  3f3c0080              move.w   #$80,-(a7)                         
  05ac8  a9a0                  _GetResource                                ; $a9a0
  05aca  285f                  movea.l  (a7)+,a4                           
  05acc  200c                  move.l   a4,d0                              
  05ace  6606                  bne.s    L5ad6                              
  05ad0  3f3c0001              move.w   #1,-(a7)                           
  05ad4  a9c8                  _SysBeep                                    ; $a9c8
L5ad6:
  05ad6  4267                  clr.w    -(a7)                              
  05ad8  a9af                  _ResError                                   ; $a9af
  05ada  3d5ffffe              move.w   (a7)+,-$2(a6)                      
  05ade  204c                  movea.l  a4,a0                              
  05ae0  a029                  _HLock                                      ; $a029
  05ae2  426efffe              clr.w    -$2(a6)                            
  05ae6  43eefffe              lea      -$2(a6),a1                         
  05aea  7002                  moveq    #2,d0                              
  05aec  2054                  movea.l  (a4),a0                            
  05aee  a02e                  _BlockMove                                  ; $a02e
  05af0  526efffe              addq.w   #1,-$2(a6)                         
  05af4  41eefffe              lea      -$2(a6),a0                         
  05af8  7002                  moveq    #2,d0                              
  05afa  2254                  movea.l  (a4),a1                            
  05afc  a02e                  _BlockMove                                  ; $a02e
  05afe  2f0c                  move.l   a4,-(a7)                           
  05b00  a9aa                  _ChangedResource                            ; $a9aa
  05b02  2f0c                  move.l   a4,-(a7)                           
  05b04  a9b0                  _WriteResource                              ; $a9b0
  05b06  4267                  clr.w    -(a7)                              
  05b08  a994                  _CurResFile                                 ; $a994
  05b0a  a999                  _UpdateResFile                              ; $a999
  05b0c  306efffe              movea.w  -$2(a6),a0                         
  05b10  2008                  move.l   a0,d0                              
  05b12  81fc000a              divs.w   #$a,d0                             
  05b16  4a40                  tst.w    d0                                 
  05b18  6f42                  ble.s    L5b5c                              
  05b1a  306efffe              movea.w  -$2(a6),a0                         
  05b1e  2008                  move.l   a0,d0                              
  05b20  81fc000a              divs.w   #$a,d0                             
  05b24  5940                  subq.w   #4,d0                              
  05b26  6c0c                  bge.s    L5b34                              
  05b28  306efffe              movea.w  -$2(a6),a0                         
  05b2c  2008                  move.l   a0,d0                              
  05b2e  81fc000a              divs.w   #$a,d0                             
  05b32  6002                  bra.s    L5b36                              
L5b34:
  05b34  7003                  moveq    #3,d0                              
L5b36:
  05b36  3c00                  move.w   d0,d6                              
  05b38  0c460001              cmpi.w   #1,d6                              
  05b3c  6f06                  ble.s    L5b44                              
  05b3e  303c5c1e              move.w   #$5c1e,d0                          
  05b42  6004                  bra.s    L5b48                              
L5b44:
  05b44  303c5c1d              move.w   #$5c1d,d0                          
L5b48:
  05b48  3a00                  move.w   d0,d5                              
  05b4a  3f05                  move.w   d5,-(a7)                           
  05b4c  3f2efffe              move.w   -$2(a6),-(a7)                      
  05b50  3f06                  move.w   d6,-(a7)                           
  05b52  3f3c058c              move.w   #$58c,-(a7)                        
  05b56  4ebaaf4c              jsr      f3_0aa4                            
  05b5a  508f                  addq.l   #8,a7                              
L5b5c:
  05b5c  204c                  movea.l  a4,a0                              
  05b5e  a02a                  _HUnlock                                    ; $a02a
  05b60  204c                  movea.l  a4,a0                              
  05b62  a023                  _DisposeHandle                              ; $a023
  05b64  4cdf10e0              movem.l  (a7)+,d5/d6/d7/a4                  
  05b68  4e5e                  unlk     a6                                 
  05b6a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_5b6c   [jump table #115]
;----------------------------------------------------------------------
f3_5b6c:
  05b6c  4e56fd6a              link     a6,#-662                           
  05b70  48e70f08              movem.l  d4/d5/d6/d7/a4,-(a7)               
  05b74  3e2e0008              move.w   $8(a6),d7                          
  05b78  1c2e000a              move.b   $a(a6),d6                          
  05b7c  7a00                  moveq    #0,d5                              
  05b7e  7800                  moveq    #0,d4                              
  05b80  4a06                  tst.b    d6                                 
  05b82  6628                  bne.s    L5bac                              
  05b84  3f3c00e8              move.w   #$e8,-(a7)                         
  05b88  1f06                  move.b   d6,-(a7)                           
  05b8a  3f3c0001              move.w   #1,-(a7)                           
  05b8e  42a7                  clr.l    -(a7)                              
  05b90  42a7                  clr.l    -(a7)                              
  05b92  42a7                  clr.l    -(a7)                              
  05b94  42a7                  clr.l    -(a7)                              
  05b96  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  05b9c  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  05ba2  3f07                  move.w   d7,-(a7)                           
  05ba4  4ead0082              jsr      f2_0b70                            
  05ba8  60000352              bra.w    L5efc                              
L5bac:
  05bac  3f3c02bc              move.w   #$2bc,-(a7)                        
  05bb0  486efec6              pea      -$13a(a6)                          
  05bb4  486eff4a              pea      -$b6(a6)                           
  05bb8  4ead025a              jsr      f2_194e                            
  05bbc  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05bc4  2eb005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),(a7)           
  05bcc  4ead05fa              jsr      f6_0130                            
  05bd0  1800                  move.b   d0,d4                              
  05bd2  4a04                  tst.b    d4                                 
  05bd4  4fef000a              lea      $a(a7),a7                          
  05bd8  6710                  beq.s    L5bea                              
  05bda  486efd6e              pea      -$292(a6)                          
  05bde  2f3c000202bb          move.l   #$202bb,-(a7)                      
  05be4  4ead0522              jsr      f4_153c                            
  05be8  600e                  bra.s    L5bf8                              
L5bea:
  05bea  486efd6e              pea      -$292(a6)                          
  05bee  2f3c000102bb          move.l   #$102bb,-(a7)                      
  05bf4  4ead0522              jsr      f4_153c                            
L5bf8:
  05bf8  486efd6e              pea      -$292(a6)                          
  05bfc  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05c04  2f3005b0ffff735a      move.l   (-$8ca6,za0,d0.w*4),-(a7)          
  05c0c  2f2efeca              move.l   -$136(a6),-(a7)                    
  05c10  2f3c00000398          move.l   STR_0398,-(a7)                     ; "?"
  05c16  a98b                  _ParamText                                  ; $a98b
  05c18  42a7                  clr.l    -(a7)                              
  05c1a  3f3c02c7              move.w   #$2c7,-(a7)                        
  05c1e  486eff54              pea      -$ac(a6)                           
  05c22  4878ffff              pea      ($ffff).w                          
  05c26  a97c                  _GetNewDialog                               ; $a97c
  05c28  285f                  movea.l  (a7)+,a4                           
  05c2a  2f0c                  move.l   a4,-(a7)                           
  05c2c  4ead06ba              jsr      f7_161c                            
  05c30  2e8c                  move.l   a4,(a7)                            
  05c32  a981                  _DrawDialog                                 ; $a981
  05c34  3f3c0002              move.w   #2,-(a7)                           
  05c38  4ead0242              jsr      f2_79a8                            
  05c3c  4a40                  tst.w    d0                                 
  05c3e  548f                  addq.l   #2,a7                              
  05c40  671e                  beq.s    L5c60                              
  05c42  6b1c                  bmi.s    L5c60                              
  05c44  5540                  subq.w   #2,d0                              
  05c46  670e                  beq.s    L5c56                              
  05c48  6a16                  bpl.s    L5c60                              
  05c4a  3f3c5bd7              move.w   #$5bd7,-(a7)                       
  05c4e  4ebae5e8              jsr      f3_4238                            
  05c52  548f                  addq.l   #2,a7                              
  05c54  600a                  bra.s    L5c60                              
L5c56:
  05c56  3f3c5be8              move.w   #$5be8,-(a7)                       
  05c5a  4ebae5dc              jsr      f3_4238                            
  05c5e  548f                  addq.l   #2,a7                              
L5c60:
  05c60  4ebae7c2              jsr      f3_4424                            
  05c64  43eefd6a              lea      -$296(a6),a1                       
  05c68  307c00b4              movea.w  #$b4,a0                            
  05c6c  a03b                  _Delay                                      ; $a03b
  05c6e  2280                  move.l   d0,(a1)                            
  05c70  2f0c                  move.l   a4,-(a7)                           
  05c72  a983                  _DisposeDialog                              ; $a983
  05c74  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05c7c  323073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d1             
  05c84  21b005b0ffff735a15b0  move.l   (-$8ca6,za0,d0.w*4),(-$8a36,za0,d1.w*4)
  05c92  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05c9a  31b073b0ffff885803b0  move.w   (-$77a8,za0,d7.w*2),(-$7c42,za0,d0.w*2)
  05ca8  3f3c02c7              move.w   #$2c7,-(a7)                        
  05cac  486efe6e              pea      -$192(a6)                          
  05cb0  486eff4c              pea      -$b4(a6)                           
  05cb4  4ead025a              jsr      f2_194e                            
  05cb8  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05cc0  0c400013              cmpi.w   #$13,d0                            
  05cc4  4fef000a              lea      $a(a7),a7                          
  05cc8  620001d6              bhi.w    L5ea0                              
  05ccc  43fa0238              lea      L5f06(pc),a1                       
  05cd0  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  05cd4  4ed1                  jmp      (a1)                               
  05cd6  486d0432              pea      f4_45a2                            
  05cda  2f3c00190001          move.l   #$190001,-(a7)                     
  05ce0  3f3c000c              move.w   #$c,-(a7)                          
  05ce4  2f3cffff8378          move.l   #$ffff8378,-(a7)                   
  05cea  4ead014a              jsr      f2_46ee                            
  05cee  4fef000e              lea      $e(a7),a7                          
  05cf2  600001ac              bra.w    L5ea0                              
  05cf6  486d0432              pea      f4_45a2                            
  05cfa  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  05d00  3f3c000d              move.w   #$d,-(a7)                          
  05d04  2f3cffff8378          move.l   #$ffff8378,-(a7)                   
  05d0a  4ead014a              jsr      f2_46ee                            
  05d0e  4fef000e              lea      $e(a7),a7                          
  05d12  6000018c              bra.w    L5ea0                              
  05d16  486d041a              pea      f4_43d4                            
  05d1a  2f3c00190001          move.l   #$190001,-(a7)                     
  05d20  3f3c000c              move.w   #$c,-(a7)                          
  05d24  2f3cffff8376          move.l   #$ffff8376,-(a7)                   
  05d2a  4ead014a              jsr      f2_46ee                            
  05d2e  4fef000e              lea      $e(a7),a7                          
  05d32  6000016c              bra.w    L5ea0                              
  05d36  486d041a              pea      f4_43d4                            
  05d3a  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  05d40  3f3c000d              move.w   #$d,-(a7)                          
  05d44  2f3cffff8376          move.l   #$ffff8376,-(a7)                   
  05d4a  4ead014a              jsr      f2_46ee                            
  05d4e  4fef000e              lea      $e(a7),a7                          
  05d52  6000014c              bra.w    L5ea0                              
  05d56  4eba020e              jsr      f3_5f66                            
  05d5a  60000144              bra.w    L5ea0                              
  05d5e  4eba021c              jsr      f3_5f7c                            
  05d62  6000013c              bra.w    L5ea0                              
  05d66  4eba025a              jsr      f3_5fc2                            
  05d6a  60000134              bra.w    L5ea0                              
  05d6e  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05d76  2f360520fe6e          move.l   (-$192,a6,d0.w*4),-(a7)            
  05d7c  4eba029c              jsr      f3_601a                            
  05d80  588f                  addq.l   #4,a7                              
  05d82  6000011c              bra.w    L5ea0                              
  05d86  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05d8e  2f360520fe6e          move.l   (-$192,a6,d0.w*4),-(a7)            
  05d94  4eba029c              jsr      f3_6032                            
  05d98  588f                  addq.l   #4,a7                              
  05d9a  60000104              bra.w    L5ea0                              
  05d9e  486d042a              pea      f4_4524                            
  05da2  2f3c00190001          move.l   #$190001,-(a7)                     
  05da8  3f3c000c              move.w   #$c,-(a7)                          
  05dac  2f3cffff837c          move.l   #$ffff837c,-(a7)                   
  05db2  4ead014a              jsr      f2_46ee                            
  05db6  4fef000e              lea      $e(a7),a7                          
  05dba  600000e4              bra.w    L5ea0                              
  05dbe  486d042a              pea      f4_4524                            
  05dc2  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  05dc8  3f3c000d              move.w   #$d,-(a7)                          
  05dcc  2f3cffff837c          move.l   #$ffff837c,-(a7)                   
  05dd2  4ead014a              jsr      f2_46ee                            
  05dd6  4fef000e              lea      $e(a7),a7                          
  05dda  600000c4              bra.w    L5ea0                              
  05dde  486d0422              pea      f4_444c                            
  05de2  2f3c00190001          move.l   #$190001,-(a7)                     
  05de8  3f3c000c              move.w   #$c,-(a7)                          
  05dec  2f3cffff8382          move.l   #$ffff8382,-(a7)                   
  05df2  4ead014a              jsr      f2_46ee                            
  05df6  4fef000e              lea      $e(a7),a7                          
  05dfa  600000a4              bra.w    L5ea0                              
  05dfe  486d0422              pea      f4_444c                            
  05e02  2f3c0019ffff          move.l   #$19ffff,-(a7)                     
  05e08  3f3c000d              move.w   #$d,-(a7)                          
  05e0c  2f3cffff8382          move.l   #$ffff8382,-(a7)                   
  05e12  4ead014a              jsr      f2_46ee                            
  05e16  4fef000e              lea      $e(a7),a7                          
  05e1a  60000084              bra.w    L5ea0                              
  05e1e  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05e26  2f360520fe6e          move.l   (-$192,a6,d0.w*4),-(a7)            
  05e2c  4eba0254              jsr      f3_6082                            
  05e30  588f                  addq.l   #4,a7                              
  05e32  606c                  bra.s    L5ea0                              
  05e34  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05e3c  2f360520fe6e          move.l   (-$192,a6,d0.w*4),-(a7)            
  05e42  4eba02c8              jsr      f3_610c                            
  05e46  588f                  addq.l   #4,a7                              
  05e48  6056                  bra.s    L5ea0                              
  05e4a  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05e52  2f360520fe6e          move.l   (-$192,a6,d0.w*4),-(a7)            
  05e58  4eba0312              jsr      f3_616c                            
  05e5c  588f                  addq.l   #4,a7                              
  05e5e  6040                  bra.s    L5ea0                              
  05e60  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05e68  2f360520fe6e          move.l   (-$192,a6,d0.w*4),-(a7)            
  05e6e  4eba0314              jsr      f3_6184                            
  05e72  588f                  addq.l   #4,a7                              
  05e74  602a                  bra.s    L5ea0                              
  05e76  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05e7e  2f360520fe6e          move.l   (-$192,a6,d0.w*4),-(a7)            
  05e84  4eba0316              jsr      f3_619c                            
  05e88  588f                  addq.l   #4,a7                              
  05e8a  6014                  bra.s    L5ea0                              
  05e8c  303073b0ffff8858      move.w   (-$77a8,za0,d7.w*2),d0             
  05e94  2f360520fe6e          move.l   (-$192,a6,d0.w*4),-(a7)            
  05e9a  4eba0318              jsr      f3_61b4                            
  05e9e  588f                  addq.l   #4,a7                              
L5ea0:
  05ea0  3f3c00e8              move.w   #$e8,-(a7)                         
  05ea4  1f06                  move.b   d6,-(a7)                           
  05ea6  3f3c0001              move.w   #1,-(a7)                           
  05eaa  42a7                  clr.l    -(a7)                              
  05eac  42a7                  clr.l    -(a7)                              
  05eae  42a7                  clr.l    -(a7)                              
  05eb0  42a7                  clr.l    -(a7)                              
  05eb2  2f3cffff8858          move.l   #$ffff8858,-(a7)                   
  05eb8  2f3cffff8da2          move.l   #$ffff8da2,-(a7)                   
  05ebe  3f07                  move.w   d7,-(a7)                           
  05ec0  4ead0082              jsr      f2_0b70                            
  05ec4  7e01                  moveq    #1,d7                              
  05ec6  4fef0020              lea      $20(a7),a7                         
  05eca  600a                  bra.s    L5ed6                              
L5ecc:
  05ecc  20767520fec6          movea.l  (-$13a,a6,d7.w*4),a0               
  05ed2  a01f                  _DisposePtr                                 ; $a01f
  05ed4  5247                  addq.w   #1,d7                              
L5ed6:
  05ed6  be6eff4a              cmp.w    -$b6(a6),d7                        
  05eda  6ff0                  ble.s    L5ecc                              
  05edc  7e01                  moveq    #1,d7                              
  05ede  600a                  bra.s    L5eea                              
L5ee0:
  05ee0  20767520fe6e          movea.l  (-$192,a6,d7.w*4),a0               
  05ee6  a01f                  _DisposePtr                                 ; $a01f
  05ee8  5247                  addq.w   #1,d7                              
L5eea:
  05eea  be6eff4c              cmp.w    -$b4(a6),d7                        
  05eee  6ff0                  ble.s    L5ee0                              
  05ef0  4a39ffff8dfb          tst.b    g_7205                             
  05ef6  6604                  bne.s    L5efc                              
  05ef8  4ebae5c4              jsr      f3_44be                            
L5efc:
  05efc  4cee10f0fd56          movem.l  -$2aa(a6),d4/d5/d6/d7/a4           
  05f02  4e5e                  unlk     a6                                 
  05f04  4e75                  rts                                         
  05f06  ff9a                  dc.w     $ff9a                              
  05f08  fdd0                  dc.w     $fdd0                              
  05f0a  fdf0                  dc.w     $fdf0                              
  05f0c  fe10                  dc.w     $fe10                              
  05f0e  fe30                  dc.w     $fe30                              
  05f10  fe50                  dc.w     $fe50                              
  05f12  fe58                  dc.w     $fe58                              
  05f14  fe60                  dc.w     $fe60                              
  05f16  fe68                  dc.w     $fe68                              
  05f18  fe80                  dc.w     $fe80                              
  05f1a  fe98                  dc.w     $fe98                              
  05f1c  feb8                  dc.w     $feb8                              
  05f1e  fed8                  dc.w     $fed8                              
  05f20  fef8                  dc.w     $fef8                              
  05f22  ff18                  dc.w     $ff18                              
  05f24  ff2e                  dc.w     $ff2e                              
  05f26  ff44                  dc.w     $ff44                              
  05f28  ff5a                  dc.w     $ff5a                              
  05f2a  ff70                  dc.w     $ff70                              
  05f2c  ff86                  dc.w     $ff86                              

;----------------------------------------------------------------------
; f3_5f2e
;----------------------------------------------------------------------
f3_5f2e:
  05f2e  4e560000              link     a6,#0                              
  05f32  0c790019ffff8378      cmpi.w   #$19,g_7c88                        
  05f3a  6c0a                  bge.s    L5f46                              
  05f3c  5279ffff8378          addq.w   #1,g_7c88                          
  05f42  4ead0432              jsr      f4_45a2                            
L5f46:
  05f46  4e5e                  unlk     a6                                 
  05f48  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_5f4a
;----------------------------------------------------------------------
f3_5f4a:
  05f4a  4e560000              link     a6,#0                              
  05f4e  0c790019ffff8376      cmpi.w   #$19,g_7c8a                        
  05f56  6c0a                  bge.s    L5f62                              
  05f58  5279ffff8376          addq.w   #1,g_7c8a                          
  05f5e  4ead041a              jsr      f4_43d4                            
L5f62:
  05f62  4e5e                  unlk     a6                                 
  05f64  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_5f66
;----------------------------------------------------------------------
f3_5f66:
  05f66  4e560000              link     a6,#0                              
  05f6a  33f9ffff8372ffff8370  move.w   g_7c8e,g_7c90                      
  05f74  4ead01da              jsr      f2_6c08                            
  05f78  4e5e                  unlk     a6                                 
  05f7a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_5f7c   [jump table #116]
;----------------------------------------------------------------------
f3_5f7c:
  05f7c  4e560000              link     a6,#0                              
  05f80  3039ffff8370          move.w   g_7c90,d0                          
  05f86  b079ffff8372          cmp.w    g_7c8e,d0                          
  05f8c  661c                  bne.s    L5faa                              
  05f8e  3f3c0007              move.w   #7,-(a7)                           
  05f92  4ead0242              jsr      f2_79a8                            
  05f96  d179ffff8372          add.w    d0,g_7c8e                          
  05f9c  33f9ffff8372ffff8370  move.w   g_7c8e,g_7c90                      
  05fa6  548f                  addq.l   #2,a7                              
  05fa8  6010                  bra.s    L5fba                              
L5faa:
  05faa  3f3c0007              move.w   #7,-(a7)                           
  05fae  4ead0242              jsr      f2_79a8                            
  05fb2  d179ffff8372          add.w    d0,g_7c8e                          
  05fb8  548f                  addq.l   #2,a7                              
L5fba:
  05fba  4ead01da              jsr      f2_6c08                            
  05fbe  4e5e                  unlk     a6                                 
  05fc0  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_5fc2
;----------------------------------------------------------------------
f3_5fc2:
  05fc2  4e560000              link     a6,#0                              
  05fc6  2f07                  move.l   d7,-(a7)                           
  05fc8  0c790002ffff8372      cmpi.w   #2,g_7c8e                          
  05fd0  6d42                  blt.s    L6014                              
  05fd2  0c790008ffff8372      cmpi.w   #8,g_7c8e                          
  05fda  6c0a                  bge.s    L5fe6                              
  05fdc  70fe                  moveq    #-2,d0                             
  05fde  d079ffff8372          add.w    g_7c8e,d0                          
  05fe4  6002                  bra.s    L5fe8                              
L5fe6:
  05fe6  7008                  moveq    #8,d0                              
L5fe8:
  05fe8  3e00                  move.w   d0,d7                              
  05fea  3f07                  move.w   d7,-(a7)                           
  05fec  4ead0242              jsr      f2_79a8                            
  05ff0  9179ffff8372          sub.w    d0,g_7c8e                          
  05ff6  3039ffff8370          move.w   g_7c90,d0                          
  05ffc  b079ffff8372          cmp.w    g_7c8e,d0                          
  06002  548f                  addq.l   #2,a7                              
  06004  6f0a                  ble.s    L6010                              
  06006  33f9ffff8372ffff8370  move.w   g_7c8e,g_7c90                      
L6010:
  06010  4ead01da              jsr      f2_6c08                            
L6014:
  06014  2e1f                  move.l   (a7)+,d7                           
  06016  4e5e                  unlk     a6                                 
  06018  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_601a
;----------------------------------------------------------------------
f3_601a:
  0601a  4e560000              link     a6,#0                              
  0601e  33fc0001ffff883a      move.w   #1,g_77c6                          
  06026  2f2e0008              move.l   $8(a6),-(a7)                       
  0602a  4ead021a              jsr      f2_7908                            
  0602e  4e5e                  unlk     a6                                 
  06030  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_6032
;----------------------------------------------------------------------
f3_6032:
  06032  4e560000              link     a6,#0                              
  06036  33fc0004ffff883a      move.w   #4,g_77c6                          
  0603e  2f2e0008              move.l   $8(a6),-(a7)                       
  06042  4ead021a              jsr      f2_7908                            
  06046  4e5e                  unlk     a6                                 
  06048  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_604a
;----------------------------------------------------------------------
f3_604a:
  0604a  4e560000              link     a6,#0                              
  0604e  0c790019ffff837c      cmpi.w   #$19,g_7c84                        
  06056  6c0a                  bge.s    L6062                              
  06058  5279ffff837c          addq.w   #1,g_7c84                          
  0605e  4ead042a              jsr      f4_4524                            
L6062:
  06062  4e5e                  unlk     a6                                 
  06064  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_6066
;----------------------------------------------------------------------
f3_6066:
  06066  4e560000              link     a6,#0                              
  0606a  0c790019ffff8382      cmpi.w   #$19,g_7c7e                        
  06072  6c0a                  bge.s    L607e                              
  06074  5279ffff8382          addq.w   #1,g_7c7e                          
  0607a  4ead0422              jsr      f4_444c                            
L607e:
  0607e  4e5e                  unlk     a6                                 
  06080  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_6082
;----------------------------------------------------------------------
f3_6082:
  06082  4e560000              link     a6,#0                              
  06086  2f07                  move.l   d7,-(a7)                           
  06088  0c790001ffff8390      cmpi.w   #1,g_7c70                          
  06090  6f46                  ble.s    L60d8                              
  06092  2f2e0008              move.l   $8(a6),-(a7)                       
  06096  4ead021a              jsr      f2_7908                            
  0609a  5379ffff8390          subq.w   #1,g_7c70                          
  060a0  7002                  moveq    #2,d0                              
  060a2  2239ffff8384          move.l   g_7c7c,d1                          
  060a8  4c401801              divs.l   d0,d1                              
  060ac  23c1ffff8384          move.l   d1,g_7c7c                          
  060b2  23c1ffff8384          move.l   d1,g_7c7c                          
  060b8  7004                  moveq    #4,d0                              
  060ba  2239ffff8384          move.l   g_7c7c,d1                          
  060c0  4c401801              divs.l   d0,d1                              
  060c4  2039ffff8384          move.l   g_7c7c,d0                          
  060ca  9081                  sub.l    d1,d0                              
  060cc  23c0ffff8388          move.l   d0,g_7c78                          
  060d2  4ebafeee              jsr      f3_5fc2                            
  060d6  588f                  addq.l   #4,a7                              
L60d8:
  060d8  7e00                  moveq    #0,d7                              
  060da  6024                  bra.s    L6100                              
L60dc:
  060dc  7002                  moveq    #2,d0                              
  060de  d047                  add.w    d7,d0                              
  060e0  3239ffff8390          move.w   g_7c70,d1                          
  060e6  d247                  add.w    d7,d1                              
  060e8  b041                  cmp.w    d1,d0                              
  060ea  6f12                  ble.s    L60fe                              
  060ec  4a7073b0ffff8e3e      tst.w    (-$71c2,za0,d7.w*2)                
  060f4  6f08                  ble.s    L60fe                              
  060f6  537073b0ffff8e3e      subq.w   #1,(-$71c2,za0,d7.w*2)             
L60fe:
  060fe  5247                  addq.w   #1,d7                              
L6100:
  06100  0c470005              cmpi.w   #5,d7                              
  06104  6dd6                  blt.s    L60dc                              
  06106  2e1f                  move.l   (a7)+,d7                           
  06108  4e5e                  unlk     a6                                 
  0610a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_610c
;----------------------------------------------------------------------
f3_610c:
  0610c  4e560000              link     a6,#0                              
  06110  2f07                  move.l   d7,-(a7)                           
  06112  5279ffff8390          addq.w   #1,g_7c70                          
  06118  2f2e0008              move.l   $8(a6),-(a7)                       
  0611c  4ead021a              jsr      f2_7908                            
  06120  7002                  moveq    #2,d0                              
  06122  d0b9ffff8384          add.l    g_7c7c,d0                          
  06128  23c0ffff8388          move.l   d0,g_7c78                          
  0612e  2039ffff8384          move.l   g_7c7c,d0                          
  06134  d080                  add.l    d0,d0                              
  06136  23c0ffff8384          move.l   d0,g_7c7c                          
  0613c  4ebafe3e              jsr      f3_5f7c                            
  06140  7e00                  moveq    #0,d7                              
  06142  588f                  addq.l   #4,a7                              
  06144  601a                  bra.s    L6160                              
L6146:
  06146  7002                  moveq    #2,d0                              
  06148  d047                  add.w    d7,d0                              
  0614a  3239ffff8390          move.w   g_7c70,d1                          
  06150  d247                  add.w    d7,d1                              
  06152  b041                  cmp.w    d1,d0                              
  06154  6e08                  bgt.s    L615e                              
  06156  527073b0ffff8e3e      addq.w   #1,(-$71c2,za0,d7.w*2)             
L615e:
  0615e  5247                  addq.w   #1,d7                              
L6160:
  06160  0c470005              cmpi.w   #5,d7                              
  06164  6de0                  blt.s    L6146                              
  06166  2e1f                  move.l   (a7)+,d7                           
  06168  4e5e                  unlk     a6                                 
  0616a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_616c
;----------------------------------------------------------------------
f3_616c:
  0616c  4e560000              link     a6,#0                              
  06170  33fc0003ffff883c      move.w   #3,g_77c4                          
  06178  2f2e0008              move.l   $8(a6),-(a7)                       
  0617c  4ead021a              jsr      f2_7908                            
  06180  4e5e                  unlk     a6                                 
  06182  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_6184
;----------------------------------------------------------------------
f3_6184:
  06184  4e560000              link     a6,#0                              
  06188  2f2e0008              move.l   $8(a6),-(a7)                       
  0618c  4ead021a              jsr      f2_7908                            
  06190  33fcfffdffff883c      move.w   #$fffd,g_77c4                      
  06198  4e5e                  unlk     a6                                 
  0619a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_619c
;----------------------------------------------------------------------
f3_619c:
  0619c  4e560000              link     a6,#0                              
  061a0  2f2e0008              move.l   $8(a6),-(a7)                       
  061a4  4ead021a              jsr      f2_7908                            
  061a8  33fc0006ffff883c      move.w   #6,g_77c4                          
  061b0  4e5e                  unlk     a6                                 
  061b2  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_61b4
;----------------------------------------------------------------------
f3_61b4:
  061b4  4e560000              link     a6,#0                              
  061b8  2f2e0008              move.l   $8(a6),-(a7)                       
  061bc  4ead021a              jsr      f2_7908                            
  061c0  33fcfffaffff883c      move.w   #$fffa,g_77c4                      
  061c8  4e5e                  unlk     a6                                 
  061ca  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_61cc
;----------------------------------------------------------------------
f3_61cc:
  061cc  4e560000              link     a6,#0                              
  061d0  48e70738              movem.l  d5/d6/d7/a2/a3/a4,-(a7)            
  061d4  286e0008              movea.l  $8(a6),a4                          
  061d8  266e0018              movea.l  $18(a6),a3                         
  061dc  246e0010              movea.l  $10(a6),a2                         
  061e0  2e2e0014              move.l   $14(a6),d7                         
  061e4  2c2e000c              move.l   $c(a6),d6                          
  061e8  2a2e001c              move.l   $1c(a6),d5                         
  061ec  3014                  move.w   (a4),d0                            
  061ee  2046                  movea.l  d6,a0                              
  061f0  b150                  eor.w    d0,(a0)                            
  061f2  2046                  movea.l  d6,a0                              
  061f4  3010                  move.w   (a0),d0                            
  061f6  b154                  eor.w    d0,(a4)                            
  061f8  3014                  move.w   (a4),d0                            
  061fa  2046                  movea.l  d6,a0                              
  061fc  b150                  eor.w    d0,(a0)                            
  061fe  3012                  move.w   (a2),d0                            
  06200  2047                  movea.l  d7,a0                              
  06202  b150                  eor.w    d0,(a0)                            
  06204  2047                  movea.l  d7,a0                              
  06206  3010                  move.w   (a0),d0                            
  06208  b152                  eor.w    d0,(a2)                            
  0620a  3012                  move.w   (a2),d0                            
  0620c  2047                  movea.l  d7,a0                              
  0620e  b150                  eor.w    d0,(a0)                            
  06210  2045                  movea.l  d5,a0                              
  06212  3093                  move.w   (a3),(a0)                          
  06214  2045                  movea.l  d5,a0                              
  06216  3010                  move.w   (a0),d0                            
  06218  b153                  eor.w    d0,(a3)                            
  0621a  2045                  movea.l  d5,a0                              
  0621c  3093                  move.w   (a3),(a0)                          
  0621e  0c540005              cmpi.w   #5,(a4)                            
  06222  6f06                  ble.s    L622a                              
  06224  4254                  clr.w    (a4)                               
  06226  4252                  clr.w    (a2)                               
  06228  4253                  clr.w    (a3)                               
L622a:
  0622a  4cdf1ce0              movem.l  (a7)+,d5/d6/d7/a2/a3/a4            
  0622e  4e5e                  unlk     a6                                 
  06230  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_6232
;----------------------------------------------------------------------
f3_6232:
  06232  4e56ffca              link     a6,#-54                            
  06236  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  0623a  286e000c              movea.l  $c(a6),a4                          
  0623e  2d54fff0              move.l   (a4),-$10(a6)                      
  06242  2d6c0004fff4          move.l   $4(a4),-$c(a6)                     
  06248  2d6efff0ffe8          move.l   -$10(a6),-$18(a6)                  
  0624e  2d6efff4ffec          move.l   -$c(a6),-$14(a6)                   
  06254  2079ffff9382          movea.l  g_6c7e,a0                          
  0625a  2d680010ffe0          move.l   $10(a0),-$20(a6)                   
  06260  2d680014ffe4          move.l   $14(a0),-$1c(a6)                   
  06266  426effd4              clr.w    -$2c(a6)                           
  0626a  382e000a              move.w   $a(a6),d4                          
  0626e  326e0008              movea.w  $8(a6),a1                          
  06272  2009                  move.l   a1,d0                              
  06274  81fc000a              divs.w   #$a,d0                             
  06278  4840                  swap     d0                                 
  0627a  4a40                  tst.w    d0                                 
  0627c  6620                  bne.s    L629e                              
  0627e  7601                  moveq    #1,d3                              
  06280  6014                  bra.s    L6296                              
L6282:
  06282  4a7033b0ffff8c78      tst.w    (-$7388,za0,d3.w*2)                
  0628a  6708                  beq.s    L6294                              
  0628c  3f03                  move.w   d3,-(a7)                           
  0628e  4ead0672              jsr      f6_294e                            
  06292  548f                  addq.l   #2,a7                              
L6294:
  06294  5243                  addq.w   #1,d3                              
L6296:
  06296  b679ffff883e          cmp.w    g_77c2,d3                          
  0629c  6fe4                  ble.s    L6282                              
L629e:
  0629e  4a79ffff8370          tst.w    g_7c90                             
  062a4  6f000444              ble.w    L66ea                              
  062a8  3d7c07d0ffca          move.w   #$7d0,-$36(a6)                     
  062ae  426effd6              clr.w    -$2a(a6)                           
  062b2  426effcc              clr.w    -$34(a6)                           
  062b6  3079ffff8390          movea.w  g_7c70,a0                          
  062bc  2008                  move.l   a0,d0                              
  062be  81fc0005              divs.w   #5,d0                              
  062c2  5240                  addq.w   #1,d0                              
  062c4  33c0ffff83b8          move.w   d0,g_7c48                          
  062ca  4a39ffff985a          tst.b    g_67a6                             
  062d0  6608                  bne.s    L62da                              
  062d2  4a39ffff8df8          tst.b    g_7208                             
  062d8  6712                  beq.s    L62ec                              
L62da:
  062da  3079ffff83b8          movea.w  g_7c48,a0                          
  062e0  2008                  move.l   a0,d0                              
  062e2  81fc0002              divs.w   #2,d0                              
  062e6  d179ffff83b8          add.w    d0,g_7c48                          
L62ec:
  062ec  4a39ffff8df6          tst.b    g_720a                             
  062f2  6712                  beq.s    L6306                              
  062f4  3079ffff83b8          movea.w  g_7c48,a0                          
  062fa  2008                  move.l   a0,d0                              
  062fc  81fc0002              divs.w   #2,d0                              
  06300  33c0ffff83b8          move.w   d0,g_7c48                          
L6306:
  06306  7601                  moveq    #1,d3                              
  06308  600000b0              bra.w    L63ba                              
L630c:
  0630c  7e00                  moveq    #0,d7                              
  0630e  4a79ffff838c          tst.w    g_7c74                             
  06314  6708                  beq.s    L631e                              
  06316  4a39ffff8dfa          tst.b    g_7206                             
  0631c  6704                  beq.s    L6322                              
L631e:
  0631e  7c06                  moveq    #6,d6                              
  06320  600c                  bra.s    L632e                              
L6322:
  06322  3c39ffff838c          move.w   g_7c74,d6                          
  06328  dc46                  add.w    d6,d6                              
  0632a  06460012              addi.w   #$12,d6                            
L632e:
  0632e  3006                  move.w   d6,d0                              
  06330  d07043b0ffff8ca2      add.w    (-$735e,za0,d4.w*2),d0             
  06338  3f00                  move.w   d0,-(a7)                           
  0633a  4ead0242              jsr      f2_79a8                            
  0633e  72f3                  moveq    #-13,d1                            
  06340  d279ffff8378          add.w    g_7c88,d1                          
  06346  9279ffff838c          sub.w    g_7c74,d1                          
  0634c  7414                  moveq    #20,d2                             
  0634e  9441                  sub.w    d1,d2                              
  06350  9479ffff8390          sub.w    g_7c70,d2                          
  06356  9479ffff883c          sub.w    g_77c4,d2                          
  0635c  b440                  cmp.w    d0,d2                              
  0635e  548f                  addq.l   #2,a7                              
  06360  6c56                  bge.s    L63b8                              
  06362  3079ffff838c          movea.w  g_7c74,a0                          
  06368  2008                  move.l   a0,d0                              
  0636a  81fc0003              divs.w   #3,d0                              
  0636e  3c39ffff838c          move.w   g_7c74,d6                          
  06374  dc46                  add.w    d6,d6                              
  06376  9c79ffff8836          sub.w    g_77ca,d6                          
  0637c  9c40                  sub.w    d0,d6                              
  0637e  3f06                  move.w   d6,-(a7)                           
  06380  4ead0242              jsr      f2_79a8                            
  06384  7ef1                  moveq    #-15,d7                            
  06386  de79ffff8378          add.w    g_7c88,d7                          
  0638c  de40                  add.w    d0,d7                              
  0638e  de79ffff8380          add.w    g_7c80,d7                          
  06394  4a39ffff9859          tst.b    g_67a7                             
  0639a  548f                  addq.l   #2,a7                              
  0639c  6608                  bne.s    L63a6                              
  0639e  4a39ffff8df8          tst.b    g_7208                             
  063a4  670a                  beq.s    L63b0                              
L63a6:
  063a6  3047                  movea.w  d7,a0                              
  063a8  2008                  move.l   a0,d0                              
  063aa  81fc0002              divs.w   #2,d0                              
  063ae  de40                  add.w    d0,d7                              
L63b0:
  063b0  df6effd6              add.w    d7,-$2a(a6)                        
  063b4  526effcc              addq.w   #1,-$34(a6)                        
L63b8:
  063b8  5243                  addq.w   #1,d3                              
L63ba:
  063ba  b679ffff83b8          cmp.w    g_7c48,d3                          
  063c0  6f00ff4a              ble.w    L630c                              
  063c4  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  063ca  a873                  _SetPort                                    ; $a873
  063cc  3f3c0003              move.w   #3,-(a7)                           
  063d0  4ead0242              jsr      f2_79a8                            
  063d4  3a00                  move.w   d0,d5                              
  063d6  3005                  move.w   d5,d0                              
  063d8  548f                  addq.l   #2,a7                              
  063da  6734                  beq.s    L6410                              
  063dc  6b32                  bmi.s    L6410                              
  063de  5740                  subq.w   #3,d0                              
  063e0  6722                  beq.s    L6404                              
  063e2  6a2c                  bpl.s    L6410                              
  063e4  5240                  addq.w   #1,d0                              
  063e6  6a0e                  bpl.s    L63f6                              
  063e8  486effe8              pea      -$18(a6)                           
  063ec  2f3c00460046          move.l   #$460046,-(a7)                     
  063f2  a8a8                  _OffsetRect                                 ; $a8a8
  063f4  601a                  bra.s    L6410                              
L63f6:
  063f6  486effe8              pea      -$18(a6)                           
  063fa  2f3c0046ffba          move.l   #$46ffba,-(a7)                     
  06400  a8a8                  _OffsetRect                                 ; $a8a8
  06402  600c                  bra.s    L6410                              
L6404:
  06404  486effe8              pea      -$18(a6)                           
  06408  2f3c00460000          move.l   #$460000,-(a7)                     
  0640e  a8a8                  _OffsetRect                                 ; $a8a8
L6410:
  06410  2f39ffff99fc          move.l   g_6604,-(a7)                       
  06416  a873                  _SetPort                                    ; $a873
  06418  7600                  moveq    #0,d3                              
  0641a  600000a8              bra.w    L64c4                              
L641e:
  0641e  2079ffff99f8          movea.l  g_6608,a0                          
  06424  20680002              movea.l  $2(a0),a0                          
  06428  2f10                  move.l   (a0),-(a7)                         
  0642a  2079ffff99fc          movea.l  g_6604,a0                          
  06430  20680002              movea.l  $2(a0),a0                          
  06434  2f10                  move.l   (a0),-(a7)                         
  06436  486effe0              pea      -$20(a6)                           
  0643a  486effe0              pea      -$20(a6)                           
  0643e  4267                  clr.w    -(a7)                              
  06440  42a7                  clr.l    -(a7)                              
  06442  a8ec                  _CopyBits                                   ; $a8ec
  06444  2f39ffff99fc          move.l   g_6604,-(a7)                       
  0644a  a873                  _SetPort                                    ; $a873
  0644c  3005                  move.w   d5,d0                              
  0644e  06400084              addi.w   #$84,d0                            
  06452  3f00                  move.w   d0,-(a7)                           
  06454  486effe8              pea      -$18(a6)                           
  06458  4ead06d2              jsr      f7_1a72                            
  0645c  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  06462  a873                  _SetPort                                    ; $a873
  06464  2079ffff99fc          movea.l  g_6604,a0                          
  0646a  20680002              movea.l  $2(a0),a0                          
  0646e  2f10                  move.l   (a0),-(a7)                         
  06470  2079ffff9382          movea.l  g_6c7e,a0                          
  06476  48680002              pea      $2(a0)                             
  0647a  486efff0              pea      -$10(a6)                           
  0647e  486efff0              pea      -$10(a6)                           
  06482  4267                  clr.w    -(a7)                              
  06484  42a7                  clr.l    -(a7)                              
  06486  a8ec                  _CopyBits                                   ; $a8ec
  06488  3005                  move.w   d5,d0                              
  0648a  548f                  addq.l   #2,a7                              
  0648c  6734                  beq.s    L64c2                              
  0648e  6b32                  bmi.s    L64c2                              
  06490  5740                  subq.w   #3,d0                              
  06492  6722                  beq.s    L64b6                              
  06494  6a2c                  bpl.s    L64c2                              
  06496  5240                  addq.w   #1,d0                              
  06498  6a0e                  bpl.s    L64a8                              
  0649a  486effe8              pea      -$18(a6)                           
  0649e  2f3cfff6fff6          move.l   #$fff6fff6,-(a7)                   
  064a4  a8a8                  _OffsetRect                                 ; $a8a8
  064a6  601a                  bra.s    L64c2                              
L64a8:
  064a8  486effe8              pea      -$18(a6)                           
  064ac  2f3cfff6000a          move.l   #$fff6000a,-(a7)                   
  064b2  a8a8                  _OffsetRect                                 ; $a8a8
  064b4  600c                  bra.s    L64c2                              
L64b6:
  064b6  486effe8              pea      -$18(a6)                           
  064ba  2f3cfff60000          move.l   #$fff60000,-(a7)                   
  064c0  a8a8                  _OffsetRect                                 ; $a8a8
L64c2:
  064c2  5243                  addq.w   #1,d3                              
L64c4:
  064c4  0c430007              cmpi.w   #7,d3                              
  064c8  6d00ff54              blt.w    L641e                              
  064cc  4a6effd6              tst.w    -$2a(a6)                           
  064d0  6f0000ee              ble.w    L65c0                              
  064d4  3f2effca              move.w   -$36(a6),-(a7)                     
  064d8  2f0c                  move.l   a4,-(a7)                           
  064da  4ead06d2              jsr      f7_1a72                            
  064de  3ebc0005              move.w   #5,(a7)                            
  064e2  4ead0242              jsr      f2_79a8                            
  064e6  4a40                  tst.w    d0                                 
  064e8  5c8f                  addq.l   #6,a7                              
  064ea  6750                  beq.s    L653c                              
  064ec  6b4e                  bmi.s    L653c                              
  064ee  5940                  subq.w   #4,d0                              
  064f0  6734                  beq.s    L6526                              
  064f2  6a08                  bpl.s    L64fc                              
  064f4  5440                  addq.w   #2,d0                              
  064f6  6716                  beq.s    L650e                              
  064f8  6a20                  bpl.s    L651a                              
  064fa  6006                  bra.s    L6502                              
L64fc:
  064fc  5540                  subq.w   #2,d0                              
  064fe  6a3c                  bpl.s    L653c                              
  06500  6030                  bra.s    L6532                              
L6502:
  06502  3f3c07d0              move.w   #$7d0,-(a7)                        
  06506  4ebadd30              jsr      f3_4238                            
  0650a  548f                  addq.l   #2,a7                              
  0650c  602e                  bra.s    L653c                              
L650e:
  0650e  3f3c5be6              move.w   #$5be6,-(a7)                       
  06512  4ebadd24              jsr      f3_4238                            
  06516  548f                  addq.l   #2,a7                              
  06518  6022                  bra.s    L653c                              
L651a:
  0651a  3f3c5c01              move.w   #$5c01,-(a7)                       
  0651e  4ebadd18              jsr      f3_4238                            
  06522  548f                  addq.l   #2,a7                              
  06524  6016                  bra.s    L653c                              
L6526:
  06526  3f3c5bfe              move.w   #$5bfe,-(a7)                       
  0652a  4ebadd0c              jsr      f3_4238                            
  0652e  548f                  addq.l   #2,a7                              
  06530  600a                  bra.s    L653c                              
L6532:
  06532  3f3c5c08              move.w   #$5c08,-(a7)                       
  06536  4ebadd00              jsr      f3_4238                            
  0653a  548f                  addq.l   #2,a7                              
L653c:
  0653c  4ebadee6              jsr      f3_4424                            
  06540  43eeffd0              lea      -$30(a6),a1                        
  06544  307c000f              movea.w  #$f,a0                             
  06548  a03b                  _Delay                                      ; $a03b
  0654a  2280                  move.l   d0,(a1)                            
  0654c  3f3c0064              move.w   #$64,-(a7)                         
  06550  4ead0242              jsr      f2_79a8                            
  06554  7264                  moveq    #100,d1                            
  06556  9279ffff8894          sub.w    g_776c,d1                          
  0655c  9279ffff8390          sub.w    g_7c70,d1                          
  06562  5b41                  subq.w   #5,d1                              
  06564  b240                  cmp.w    d0,d1                              
  06566  548f                  addq.l   #2,a7                              
  06568  6c10                  bge.s    L657a                              
  0656a  42a7                  clr.l    -(a7)                              
  0656c  486effd6              pea      -$2a(a6)                           
  06570  3f04                  move.w   d4,-(a7)                           
  06572  4ead0662              jsr      f6_1f50                            
  06576  4fef000a              lea      $a(a7),a7                          
L657a:
  0657a  302effd6              move.w   -$2a(a6),d0                        
  0657e  917043b0ffff8ccc      sub.w    d0,(-$7334,za0,d4.w*2)             
  06586  2079ffff99f8          movea.l  g_6608,a0                          
  0658c  20680002              movea.l  $2(a0),a0                          
  06590  2f10                  move.l   (a0),-(a7)                         
  06592  2079ffff9382          movea.l  g_6c7e,a0                          
  06598  48680002              pea      $2(a0)                             
  0659c  486efff0              pea      -$10(a6)                           
  065a0  486efff0              pea      -$10(a6)                           
  065a4  4267                  clr.w    -(a7)                              
  065a6  42a7                  clr.l    -(a7)                              
  065a8  a8ec                  _CopyBits                                   ; $a8ec
  065aa  4a39ffff8df2          tst.b    g_720e                             
  065b0  661c                  bne.s    L65ce                              
  065b2  43eeffd0              lea      -$30(a6),a1                        
  065b6  307c000f              movea.w  #$f,a0                             
  065ba  a03b                  _Delay                                      ; $a03b
  065bc  2280                  move.l   d0,(a1)                            
  065be  600e                  bra.s    L65ce                              
L65c0:
  065c0  3f3c07d1              move.w   #$7d1,-(a7)                        
  065c4  4ebadc72              jsr      f3_4238                            
  065c8  4ebaddba              jsr      f3_4384                            
  065cc  548f                  addq.l   #2,a7                              
L65ce:
  065ce  7600                  moveq    #0,d3                              
  065d0  600000be              bra.w    L6690                              
L65d4:
  065d4  2079ffff99f8          movea.l  g_6608,a0                          
  065da  20680002              movea.l  $2(a0),a0                          
  065de  2f10                  move.l   (a0),-(a7)                         
  065e0  2079ffff99fc          movea.l  g_6604,a0                          
  065e6  20680002              movea.l  $2(a0),a0                          
  065ea  2f10                  move.l   (a0),-(a7)                         
  065ec  486effe0              pea      -$20(a6)                           
  065f0  486effe0              pea      -$20(a6)                           
  065f4  4267                  clr.w    -(a7)                              
  065f6  42a7                  clr.l    -(a7)                              
  065f8  a8ec                  _CopyBits                                   ; $a8ec
  065fa  2f39ffff99fc          move.l   g_6604,-(a7)                       
  06600  a873                  _SetPort                                    ; $a873
  06602  3005                  move.w   d5,d0                              
  06604  06400084              addi.w   #$84,d0                            
  06608  3f00                  move.w   d0,-(a7)                           
  0660a  486effe8              pea      -$18(a6)                           
  0660e  4ead06d2              jsr      f7_1a72                            
  06612  7004                  moveq    #4,d0                              
  06614  2239ffff9828          move.l   g_67d8,d1                          
  0661a  4c401801              divs.l   d0,d1                              
  0661e  43eeffd0              lea      -$30(a6),a1                        
  06622  2041                  movea.l  d1,a0                              
  06624  a03b                  _Delay                                      ; $a03b
  06626  2280                  move.l   d0,(a1)                            
  06628  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  0662e  a873                  _SetPort                                    ; $a873
  06630  2079ffff99fc          movea.l  g_6604,a0                          
  06636  20680002              movea.l  $2(a0),a0                          
  0663a  2f10                  move.l   (a0),-(a7)                         
  0663c  2079ffff9382          movea.l  g_6c7e,a0                          
  06642  48680002              pea      $2(a0)                             
  06646  486effe0              pea      -$20(a6)                           
  0664a  486effe0              pea      -$20(a6)                           
  0664e  4267                  clr.w    -(a7)                              
  06650  42a7                  clr.l    -(a7)                              
  06652  a8ec                  _CopyBits                                   ; $a8ec
  06654  3005                  move.w   d5,d0                              
  06656  548f                  addq.l   #2,a7                              
  06658  6734                  beq.s    L668e                              
  0665a  6b32                  bmi.s    L668e                              
  0665c  5740                  subq.w   #3,d0                              
  0665e  6722                  beq.s    L6682                              
  06660  6a2c                  bpl.s    L668e                              
  06662  5240                  addq.w   #1,d0                              
  06664  6a0e                  bpl.s    L6674                              
  06666  486effe8              pea      -$18(a6)                           
  0666a  2f3c000afff6          move.l   #$afff6,-(a7)                      
  06670  a8a8                  _OffsetRect                                 ; $a8a8
  06672  601a                  bra.s    L668e                              
L6674:
  06674  486effe8              pea      -$18(a6)                           
  06678  2f3c000a000a          move.l   #$a000a,-(a7)                      
  0667e  a8a8                  _OffsetRect                                 ; $a8a8
  06680  600c                  bra.s    L668e                              
L6682:
  06682  486effe8              pea      -$18(a6)                           
  06686  2f3c000a0000          move.l   #$a0000,-(a7)                      
  0668c  a8a8                  _OffsetRect                                 ; $a8a8
L668e:
  0668e  5243                  addq.w   #1,d3                              
L6690:
  06690  0c430008              cmpi.w   #8,d3                              
  06694  6d00ff3e              blt.w    L65d4                              
  06698  2079ffff99f8          movea.l  g_6608,a0                          
  0669e  20680002              movea.l  $2(a0),a0                          
  066a2  2f10                  move.l   (a0),-(a7)                         
  066a4  2079ffff9382          movea.l  g_6c7e,a0                          
  066aa  48680002              pea      $2(a0)                             
  066ae  486efff0              pea      -$10(a6)                           
  066b2  486efff0              pea      -$10(a6)                           
  066b6  4267                  clr.w    -(a7)                              
  066b8  42a7                  clr.l    -(a7)                              
  066ba  a8ec                  _CopyBits                                   ; $a8ec
  066bc  4a7043b0ffff8ccc      tst.w    (-$7334,za0,d4.w*2)                
  066c4  6e12                  bgt.s    L66d8                              
  066c6  2f0c                  move.l   a4,-(a7)                           
  066c8  3f04                  move.w   d4,-(a7)                           
  066ca  4ebac342              jsr      f3_2a0e                            
  066ce  2e8c                  move.l   a4,(a7)                            
  066d0  42a7                  clr.l    -(a7)                              
  066d2  42a7                  clr.l    -(a7)                              
  066d4  a8a7                  _SetRect                                    ; $a8a7
  066d6  548f                  addq.l   #2,a7                              
L66d8:
  066d8  4239ffff8dfa          clr.b    g_7206                             
L66de:
  066de  4a39ffff8dfb          tst.b    g_7205                             
  066e4  67f8                  beq.s    L66de                              
  066e6  4ebaddd6              jsr      f3_44be                            
L66ea:
  066ea  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  066ee  4e5e                  unlk     a6                                 
  066f0  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_66f2
;----------------------------------------------------------------------
f3_66f2:
  066f2  4e560000              link     a6,#0                              
  066f6  2f07                  move.l   d7,-(a7)                           
  066f8  3f3c0001              move.w   #1,-(a7)                           
  066fc  a9c8                  _SysBeep                                    ; $a9c8
  066fe  4a79ffff8370          tst.w    g_7c90                             
  06704  6f12                  ble.s    L6718                              
  06706  4267                  clr.w    -(a7)                              
  06708  3f3c0320              move.w   #$320,-(a7)                        
  0670c  42a7                  clr.l    -(a7)                              
  0670e  a986                  _StopAlert                                  ; $a986
  06710  3e1f                  move.w   (a7)+,d7                           
  06712  4ead011a              jsr      f2_3bd4                            
  06716  600c                  bra.s    L6724                              
L6718:
  06718  4267                  clr.w    -(a7)                              
  0671a  3f3c0320              move.w   #$320,-(a7)                        
  0671e  42a7                  clr.l    -(a7)                              
  06720  a986                  _StopAlert                                  ; $a986
  06722  3e1f                  move.w   (a7)+,d7                           
L6724:
  06724  a9f4                  _ExitToShell                                ; $a9f4
  06726  2e1f                  move.l   (a7)+,d7                           
  06728  4e5e                  unlk     a6                                 
  0672a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_672c   [jump table #107]
;----------------------------------------------------------------------
f3_672c:
  0672c  4e56fe1a              link     a6,#-486                           
  06730  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  06734  426efe22              clr.w    -$1de(a6)                          
  06738  426efe20              clr.w    -$1e0(a6)                          
  0673c  426efe24              clr.w    -$1dc(a6)                          
  06740  2f3cffffac6a          move.l   #$ffffac6a,-(a7)                   
  06746  a86e                  _InitGraf                                   ; $a86e
  06748  a8fe                  _InitFonts                                  ; $a8fe
  0674a  a912                  _InitWindows                                ; $a912
  0674c  a930                  _InitMenus                                  ; $a930
  0674e  a9cc                  _TEInit                                     ; $a9cc
  06750  42a7                  clr.l    -(a7)                              
  06752  a97b                  _InitDialogs                                ; $a97b
  06754  a850                  _InitCursor                                 ; $a850
  06756  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  0675c  201f                  move.l   (a7)+,d0                           
  0675e  a032                  _FlushEvents                                ; $a032
  06760  a063                  _MaxApplZone                                ; $a063
  06762  42a7                  clr.l    -(a7)                              
  06764  aa2a                  _GetMainDevice                              ; $aa2a
  06766  261f                  move.l   (a7)+,d3                           
  06768  2043                  movea.l  d3,a0                              
  0676a  2050                  movea.l  (a0),a0                            
  0676c  33e8002cffff97e2      move.w   $2c(a0),g_681e                     
  06774  2043                  movea.l  d3,a0                              
  06776  2050                  movea.l  (a0),a0                            
  06778  0c68bc200014          cmpi.w   #$bc20,$14(a0)                     
  0677e  6608                  bne.s    L6788                              
  06780  4239ffff9934          clr.b    g_66cc                             
  06786  6008                  bra.s    L6790                              
L6788:
  06788  13fc0001ffff9934      move.b   #1,g_66cc                          
L6790:
  06790  4267                  clr.w    -(a7)                              
  06792  2f03                  move.l   d3,-(a7)                           
  06794  2f3c00010008          move.l   #$10008,-(a7)                      
  0679a  3f3c0001              move.w   #1,-(a7)                           
  0679e  303c0a13              move.w   #$a13,d0                           
  067a2  aaa2                  _PaletteDispatch                            ; $aaa2
  067a4  4217                  clr.b    (a7)                               
  067a6  2f3c00120015          move.l   #$120015,-(a7)                     
  067ac  a902                  _RealFont                                   ; $a902
  067ae  7c00                  moveq    #0,d6                              
  067b0  1c1f                  move.b   (a7)+,d6                           
  067b2  42a7                  clr.l    -(a7)                              
  067b4  3f3c0004              move.w   #4,-(a7)                           
  067b8  a9b9                  _GetCursor                                  ; $a9b9
  067ba  2d5ffe26              move.l   (a7)+,-$1da(a6)                    
  067be  206efe26              movea.l  -$1da(a6),a0                       
  067c2  2f10                  move.l   (a0),-(a7)                         
  067c4  a851                  _SetCursor                                  ; $a851
  067c6  42780a9a              clr.w    ($a9a).w                           
  067ca  4ebabf86              jsr      f3_2752                            
  067ce  4267                  clr.w    -(a7)                              
  067d0  a994                  _CurResFile                                 ; $a994
  067d2  33dfffff98e6          move.w   (a7)+,g_671a                       
  067d8  4ead0782              jsr      f7_394e                            
  067dc  4a00                  tst.b    d0                                 
  067de  6602                  bne.s    L67e2                              
  067e0  a9f4                  _ExitToShell                                ; $a9f4
L67e2:
  067e2  4267                  clr.w    -(a7)                              
  067e4  2f3c71647277          move.l   #$71647277,-(a7)                   
  067ea  486efffc              pea      -$4(a6)                            
  067ee  4ead04aa              jsr      f4_1170                            
  067f2  3c1f                  move.w   (a7)+,d6                           
  067f4  4eba9862              jsr      f3_0058                            
  067f8  4a46                  tst.w    d6                                 
  067fa  6718                  beq.s    L6814                              
  067fc  4267                  clr.w    -(a7)                              
  067fe  3f3c0834              move.w   #$834,-(a7)                        
  06802  42a7                  clr.l    -(a7)                              
  06804  a985                  _Alert                                      ; $a985
  06806  3c1f                  move.w   (a7)+,d6                           
  06808  4239ffff9932          clr.b    g_66ce                             
  0680e  4239ffff3b13          clr.b    g_c4ed                             
L6814:
  06814  4a39ffff3b13          tst.b    g_c4ed                             
  0681a  673a                  beq.s    L6856                              
  0681c  7a00                  moveq    #0,d5                              
  0681e  4227                  clr.b    -(a7)                              
  06820  486efffc              pea      -$4(a6)                            
  06824  701f                  moveq    #31,d0                             
  06826  9045                  sub.w    d5,d0                              
  06828  3040                  movea.w  d0,a0                              
  0682a  2f08                  move.l   a0,-(a7)                           
  0682c  a85d                  _BitTst                                     ; $a85d
  0682e  4a1f                  tst.b    (a7)+                              
  06830  670a                  beq.s    L683c                              
  06832  13fc0001ffff9932      move.b   #1,g_66ce                          
  0683a  6006                  bra.s    L6842                              
L683c:
  0683c  4239ffff9932          clr.b    g_66ce                             
L6842:
  06842  3f3caa0c              move.w   #$aa0c,-(a7)                       
  06846  4ead077a              jsr      f7_38e6                            
  0684a  4a00                  tst.b    d0                                 
  0684c  548f                  addq.l   #2,a7                              
  0684e  6606                  bne.s    L6856                              
  06850  4239ffff3b13          clr.b    g_c4ed                             
L6856:
  06856  42aefffc              clr.l    -$4(a6)                            
  0685a  4267                  clr.w    -(a7)                              
  0685c  2f3c63707574          move.l   #$63707574,-(a7)                   
  06862  486efffc              pea      -$4(a6)                            
  06866  4ead04aa              jsr      f4_1170                            
  0686a  3c1f                  move.w   (a7)+,d6                           
  0686c  202efffc              move.l   -$4(a6),d0                         
  06870  674c                  beq.s    L68be                              
  06872  6b4a                  bmi.s    L68be                              
  06874  048000000102          subi.l   #$102,d0                           
  0687a  6742                  beq.s    L68be                              
  0687c  6a14                  bpl.s    L6892                              
  0687e  0480ffffff03          subi.l   #$ffffff03,d0                      
  06884  671c                  beq.s    L68a2                              
  06886  6b12                  bmi.s    L689a                              
  06888  0480000000fc          subi.l   #$fc,d0                            
  0688e  6a1c                  bpl.s    L68ac                              
  06890  602c                  bra.s    L68be                              
L6892:
  06892  5580                  subq.l   #2,d0                              
  06894  6720                  beq.s    L68b6                              
  06896  6a26                  bpl.s    L68be                              
  06898  6012                  bra.s    L68ac                              
L689a:
  0689a  42b9ffff9828          clr.l    g_67d8                             
  068a0  601c                  bra.s    L68be                              
L68a2:
  068a2  7006                  moveq    #6,d0                              
  068a4  23c0ffff9828          move.l   d0,g_67d8                          
  068aa  6012                  bra.s    L68be                              
L68ac:
  068ac  7009                  moveq    #9,d0                              
  068ae  23c0ffff9828          move.l   d0,g_67d8                          
  068b4  6008                  bra.s    L68be                              
L68b6:
  068b6  700f                  moveq    #15,d0                             
  068b8  23c0ffff9828          move.l   d0,g_67d8                          
L68be:
  068be  4ead0182              jsr      f2_642c                            
  068c2  4eba0a28              jsr      f3_72ec                            
  068c6  486efff4              pea      -$c(a6)                            
  068ca  42a7                  clr.l    -(a7)                              
  068cc  2f3c012c012c          move.l   #$12c012c,-(a7)                    
  068d2  a8a7                  _SetRect                                    ; $a8a7
  068d4  486efff4              pea      -$c(a6)                            
  068d8  486efe1c              pea      -$1e4(a6)                          
  068dc  4ead03da              jsr      f4_1582                            
  068e0  206efe1c              movea.l  -$1e4(a6),a0                       
  068e4  20680002              movea.l  $2(a0),a0                          
  068e8  a029                  _HLock                                      ; $a029
  068ea  4297                  clr.l    (a7)                               
  068ec  3f3c1194              move.w   #$1194,-(a7)                       
  068f0  a9bc                  _GetPicture                                 ; $a9bc
  068f2  265f                  movea.l  (a7)+,a3                           
  068f4  4297                  clr.l    (a7)                               
  068f6  3f3c1195              move.w   #$1195,-(a7)                       
  068fa  a9bc                  _GetPicture                                 ; $a9bc
  068fc  285f                  movea.l  (a7)+,a4                           
  068fe  204b                  movea.l  a3,a0                              
  06900  a029                  _HLock                                      ; $a029
  06902  204c                  movea.l  a4,a0                              
  06904  a029                  _HLock                                      ; $a029
  06906  2f2efe1c              move.l   -$1e4(a6),-(a7)                    
  0690a  a873                  _SetPort                                    ; $a873
  0690c  206efe1c              movea.l  -$1e4(a6),a0                       
  06910  48680010              pea      $10(a0)                            
  06914  a8a3                  _EraseRect                                  ; $a8a3
  06916  486efe20              pea      -$1e0(a6)                          
  0691a  aa14                  _RGBForeColor                               ; $aa14
  0691c  2f0b                  move.l   a3,-(a7)                           
  0691e  486efff4              pea      -$c(a6)                            
  06922  a8f6                  _DrawPicture                                ; $a8f6
  06924  3039ffffabfa          move.w   g_5406,d0                          
  0692a  9079ffffabf6          sub.w    g_540a,d0                          
  06930  48c0                  ext.l    d0                                 
  06932  81fc0002              divs.w   #2,d0                              
  06936  0640ff6a              addi.w   #$ff6a,d0                          
  0693a  3d40ffe4              move.w   d0,-$1c(a6)                        
  0693e  302effe4              move.w   -$1c(a6),d0                        
  06942  0640012c              addi.w   #$12c,d0                           
  06946  3d40ffe8              move.w   d0,-$18(a6)                        
  0694a  3039ffffabfc          move.w   g_5404,d0                          
  06950  9079ffffabf8          sub.w    g_5408,d0                          
  06956  48c0                  ext.l    d0                                 
  06958  81fc0002              divs.w   #2,d0                              
  0695c  0640ff6a              addi.w   #$ff6a,d0                          
  06960  3d40ffe6              move.w   d0,-$1a(a6)                        
  06964  302effe6              move.w   -$1a(a6),d0                        
  06968  0640012c              addi.w   #$12c,d0                           
  0696c  3d40ffea              move.w   d0,-$16(a6)                        
  06970  486efff4              pea      -$c(a6)                            
  06974  2f3c00020002          move.l   #$20002,-(a7)                      
  0697a  a8a9                  _InsetRect                                  ; $a8a9
  0697c  2f39ffff8fca          move.l   g_7036,-(a7)                       
  06982  a873                  _SetPort                                    ; $a873
  06984  206efe1c              movea.l  -$1e4(a6),a0                       
  06988  20680002              movea.l  $2(a0),a0                          
  0698c  2f10                  move.l   (a0),-(a7)                         
  0698e  2079ffff8fca          movea.l  g_7036,a0                          
  06994  48680002              pea      $2(a0)                             
  06998  486efff4              pea      -$c(a6)                            
  0699c  486effe4              pea      -$1c(a6)                           
  069a0  3f3c0024              move.w   #$24,-(a7)                         
  069a4  42a7                  clr.l    -(a7)                              
  069a6  a8ec                  _CopyBits                                   ; $a8ec
  069a8  2f2efe1c              move.l   -$1e4(a6),-(a7)                    
  069ac  a873                  _SetPort                                    ; $a873
  069ae  486efff4              pea      -$c(a6)                            
  069b2  42a7                  clr.l    -(a7)                              
  069b4  2f3c001200c8          move.l   #$1200c8,-(a7)                     
  069ba  a8a7                  _SetRect                                    ; $a8a7
  069bc  206efe1c              movea.l  -$1e4(a6),a0                       
  069c0  48680010              pea      $10(a0)                            
  069c4  a8a3                  _EraseRect                                  ; $a8a3
  069c6  2f0c                  move.l   a4,-(a7)                           
  069c8  486efff4              pea      -$c(a6)                            
  069cc  a8f6                  _DrawPicture                                ; $a8f6
  069ce  70e2                  moveq    #-30,d0                            
  069d0  d06effe4              add.w    -$1c(a6),d0                        
  069d4  3d40ffe0              move.w   d0,-$20(a6)                        
  069d8  3d40ffdc              move.w   d0,-$24(a6)                        
  069dc  066e0012ffe0          addi.w   #$12,-$20(a6)                      
  069e2  7032                  moveq    #50,d0                             
  069e4  d06effe6              add.w    -$1a(a6),d0                        
  069e8  3d40ffe2              move.w   d0,-$1e(a6)                        
  069ec  3d40ffde              move.w   d0,-$22(a6)                        
  069f0  066e00c8ffe2          addi.w   #$c8,-$1e(a6)                      
  069f6  206efe1c              movea.l  -$1e4(a6),a0                       
  069fa  20680002              movea.l  $2(a0),a0                          
  069fe  2f10                  move.l   (a0),-(a7)                         
  06a00  2079ffff8fca          movea.l  g_7036,a0                          
  06a06  48680002              pea      $2(a0)                             
  06a0a  486efff4              pea      -$c(a6)                            
  06a0e  486effdc              pea      -$24(a6)                           
  06a12  3f3c0024              move.w   #$24,-(a7)                         
  06a16  42a7                  clr.l    -(a7)                              
  06a18  a8ec                  _CopyBits                                   ; $a8ec
  06a1a  2f39ffff8fca          move.l   g_7036,-(a7)                       
  06a20  a873                  _SetPort                                    ; $a873
  06a22  7064                  moveq    #100,d0                            
  06a24  d06effe6              add.w    -$1a(a6),d0                        
  06a28  3d40ffee              move.w   d0,-$12(a6)                        
  06a2c  3d40fff2              move.w   d0,-$e(a6)                         
  06a30  066e0064fff2          addi.w   #$64,-$e(a6)                       
  06a36  7014                  moveq    #20,d0                             
  06a38  d06effe8              add.w    -$18(a6),d0                        
  06a3c  3d40fff0              move.w   d0,-$10(a6)                        
  06a40  3d40ffec              move.w   d0,-$14(a6)                        
  06a44  066e000ffff0          addi.w   #$f,-$10(a6)                       
  06a4a  4ead00aa              jsr      f2_14d4                            
  06a4e  4ebacde4              jsr      f3_3834                            
  06a52  4ead012a              jsr      f2_3ec4                            
  06a56  4ead0132              jsr      f2_409c                            
  06a5a  4a39ffff3b13          tst.b    g_c4ed                             
  06a60  670000a4              beq.w    L6b06                              
  06a64  7e00                  moveq    #0,d7                              
  06a66  6016                  bra.s    L6a7e                              
L6a68:
  06a68  42a7                  clr.l    -(a7)                              
  06a6a  3007                  move.w   d7,d0                              
  06a6c  06400080              addi.w   #$80,d0                            
  06a70  3f00                  move.w   d0,-(a7)                           
  06a72  aa0c                  _GetPixPat                                  ; $aa0c
  06a74  219f75b0ffff9426      move.l   (a7)+,(-$6bda,za0,d7.w*4)          
  06a7c  5247                  addq.w   #1,d7                              
L6a7e:
  06a7e  0c470004              cmpi.w   #4,d7                              
  06a82  6de4                  blt.s    L6a68                              
  06a84  42a7                  clr.l    -(a7)                              
  06a86  3f3c0086              move.w   #$86,-(a7)                         
  06a8a  aa0c                  _GetPixPat                                  ; $aa0c
  06a8c  23dfffff943a          move.l   (a7)+,g_6bc6                       
  06a92  4267                  clr.w    -(a7)                              
  06a94  a9af                  _ResError                                   ; $a9af
  06a96  3c1f                  move.w   (a7)+,d6                           
  06a98  4a46                  tst.w    d6                                 
  06a9a  6710                  beq.s    L6aac                              
  06a9c  2f3c00000492          move.l   STR_0492,-(a7)                     ; "getting patterns"
  06aa2  3f06                  move.w   d6,-(a7)                           
  06aa4  4ead06ca              jsr      f7_18ec                            
  06aa8  60000838              bra.w    L72e2                              
L6aac:
  06aac  42a7                  clr.l    -(a7)                              
  06aae  3f3c0089              move.w   #$89,-(a7)                         
  06ab2  aa0c                  _GetPixPat                                  ; $aa0c
  06ab4  23dfffff943e          move.l   (a7)+,g_6bc2                       
  06aba  42a7                  clr.l    -(a7)                              
  06abc  3f3c008a              move.w   #$8a,-(a7)                         
  06ac0  aa0c                  _GetPixPat                                  ; $aa0c
  06ac2  23dfffff9442          move.l   (a7)+,g_6bbe                       
  06ac8  42a7                  clr.l    -(a7)                              
  06aca  3f3c008b              move.w   #$8b,-(a7)                         
  06ace  aa0c                  _GetPixPat                                  ; $aa0c
  06ad0  23dfffff9446          move.l   (a7)+,g_6bba                       
  06ad6  42a7                  clr.l    -(a7)                              
  06ad8  3f3c008c              move.w   #$8c,-(a7)                         
  06adc  aa0c                  _GetPixPat                                  ; $aa0c
  06ade  23dfffff944a          move.l   (a7)+,g_6bb6                       
  06ae4  7e00                  moveq    #0,d7                              
  06ae6  6016                  bra.s    L6afe                              
L6ae8:
  06ae8  42a7                  clr.l    -(a7)                              
  06aea  3007                  move.w   d7,d0                              
  06aec  0640008d              addi.w   #$8d,d0                            
  06af0  3f00                  move.w   d0,-(a7)                           
  06af2  aa0c                  _GetPixPat                                  ; $aa0c
  06af4  219f75b0ffff944e      move.l   (a7)+,(-$6bb2,za0,d7.w*4)          
  06afc  5247                  addq.w   #1,d7                              
L6afe:
  06afe  0c470014              cmpi.w   #$14,d7                            
  06b02  6de4                  blt.s    L6ae8                              
  06b04  6066                  bra.s    L6b6c                              
L6b06:
  06b06  7e00                  moveq    #0,d7                              
  06b08  6016                  bra.s    L6b20                              
L6b0a:
  06b0a  42a7                  clr.l    -(a7)                              
  06b0c  3007                  move.w   d7,d0                              
  06b0e  06400080              addi.w   #$80,d0                            
  06b12  3f00                  move.w   d0,-(a7)                           
  06b14  a9b8                  _GetPattern                                 ; $a9b8
  06b16  219f75b0ffff94ee      move.l   (a7)+,(-$6b12,za0,d7.w*4)          
  06b1e  5247                  addq.w   #1,d7                              
L6b20:
  06b20  0c470004              cmpi.w   #4,d7                              
  06b24  6de4                  blt.s    L6b0a                              
  06b26  42a7                  clr.l    -(a7)                              
  06b28  3f3c0086              move.w   #$86,-(a7)                         
  06b2c  a9b8                  _GetPattern                                 ; $a9b8
  06b2e  23dfffff9502          move.l   (a7)+,g_6afe                       
  06b34  42a7                  clr.l    -(a7)                              
  06b36  3f3c0089              move.w   #$89,-(a7)                         
  06b3a  a9b8                  _GetPattern                                 ; $a9b8
  06b3c  23dfffff9506          move.l   (a7)+,g_6afa                       
  06b42  42a7                  clr.l    -(a7)                              
  06b44  3f3c008a              move.w   #$8a,-(a7)                         
  06b48  a9b8                  _GetPattern                                 ; $a9b8
  06b4a  23dfffff950a          move.l   (a7)+,g_6af6                       
  06b50  42a7                  clr.l    -(a7)                              
  06b52  3f3c008b              move.w   #$8b,-(a7)                         
  06b56  a9b8                  _GetPattern                                 ; $a9b8
  06b58  23dfffff950e          move.l   (a7)+,g_6af2                       
  06b5e  42a7                  clr.l    -(a7)                              
  06b60  3f3c008c              move.w   #$8c,-(a7)                         
  06b64  a9b8                  _GetPattern                                 ; $a9b8
  06b66  23dfffff9512          move.l   (a7)+,g_6aee                       
L6b6c:
  06b6c  13fc0001ffff8df2      move.b   #1,g_720e                          
  06b74  4239ffff9933          clr.b    g_66cd                             
  06b7a  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  06b80  a873                  _SetPort                                    ; $a873
  06b82  2f3c000f0005          move.l   #$f0005,-(a7)                      
  06b88  a893                  _MoveTo                                     ; $a893
  06b8a  4eba0b80              jsr      f3_770c                            
  06b8e  7e00                  moveq    #0,d7                              
  06b90  600c                  bra.s    L6b9e                              
L6b92:
  06b92  11bc000171b0ffff980f  move.b   #1,(-$67f1,za0,d7.w)               
  06b9c  5247                  addq.w   #1,d7                              
L6b9e:
  06b9e  0c47000a              cmpi.w   #$a,d7                             
  06ba2  6dee                  blt.s    L6b92                              
  06ba4  13fc0001ffff9812      move.b   #1,g_67ee                          
  06bac  13fc0001ffff9813      move.b   #1,g_67ed                          
  06bb4  13fc0001ffff9819      move.b   #1,g_67e7                          
  06bbc  13fc0001ffff981a      move.b   #1,g_67e6                          
  06bc4  13fc0001ffff981b      move.b   #1,g_67e5                          
  06bcc  13fc0001ffff981c      move.b   #1,g_67e4                          
  06bd4  4279ffff8894          clr.w    g_776c                             
  06bda  4279ffff8370          clr.w    g_7c90                             
  06be0  4239ffff993c          clr.b    g_66c4                             
  06be6  486efff4              pea      -$c(a6)                            
  06bea  42a7                  clr.l    -(a7)                              
  06bec  2f3c01e00280          move.l   #$1e00280,-(a7)                    
  06bf2  a8a7                  _SetRect                                    ; $a8a7
  06bf4  486effec              pea      -$14(a6)                           
  06bf8  a8a1                  _FrameRect                                  ; $a8a1
  06bfa  526effee              addq.w   #1,-$12(a6)                        
  06bfe  486effec              pea      -$14(a6)                           
  06c02  2f3c00010000          move.l   #$10000,-(a7)                      
  06c08  a8a9                  _InsetRect                                  ; $a8a9
  06c0a  2f39ffff8fca          move.l   g_7036,-(a7)                       
  06c10  a873                  _SetPort                                    ; $a873
  06c12  7002                  moveq    #2,d0                              
  06c14  d06effee              add.w    -$12(a6),d0                        
  06c18  3d40fff2              move.w   d0,-$e(a6)                         
  06c1c  486effec              pea      -$14(a6)                           
  06c20  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  06c26  aa0e                  _FillCRect                                  ; $aa0e
  06c28  7e00                  moveq    #0,d7                              
  06c2a  6052                  bra.s    L6c7e                              
L6c2c:
  06c2c  486efff4              pea      -$c(a6)                            
  06c30  487075b0ffff99f4      pea      (-$660c,za0,d7.w*4)                
  06c38  4ead03da              jsr      f4_1582                            
  06c3c  207075b2ffff99f40002  movea.l  ([-$660c,a0],d7.w*4,$2),a0         
  06c46  a029                  _HLock                                      ; $a029
  06c48  2eb075b0ffff99f4      move.l   (-$660c,za0,d7.w*4),(a7)           
  06c50  a873                  _SetPort                                    ; $a873
  06c52  486efe20              pea      -$1e0(a6)                          
  06c56  aa14                  _RGBForeColor                               ; $aa14
  06c58  487075b2ffff99f40010  pea      ([-$660c,a0],d7.w*4,$10)           
  06c62  a8a3                  _EraseRect                                  ; $a8a3
  06c64  566efff2              addq.w   #3,-$e(a6)                         
  06c68  2eb9ffff8fca          move.l   g_7036,(a7)                        
  06c6e  a873                  _SetPort                                    ; $a873
  06c70  486effec              pea      -$14(a6)                           
  06c74  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  06c7a  aa0e                  _FillCRect                                  ; $aa0e
  06c7c  5247                  addq.w   #1,d7                              
L6c7e:
  06c7e  0c470003              cmpi.w   #3,d7                              
  06c82  6da8                  blt.s    L6c2c                              
  06c84  486efff4              pea      -$c(a6)                            
  06c88  42a7                  clr.l    -(a7)                              
  06c8a  2f3c01c50280          move.l   #$1c50280,-(a7)                    
  06c90  a8a7                  _SetRect                                    ; $a8a7
  06c92  486efff4              pea      -$c(a6)                            
  06c96  2f3cffffac6e          move.l   #$ffffac6e,-(a7)                   
  06c9c  4ead03da              jsr      f4_1582                            
  06ca0  2079ffffac6e          movea.l  g_5392,a0                          
  06ca6  20680002              movea.l  $2(a0),a0                          
  06caa  a029                  _HLock                                      ; $a029
  06cac  2eb9ffffac6e          move.l   g_5392,(a7)                        
  06cb2  a873                  _SetPort                                    ; $a873
  06cb4  486efe20              pea      -$1e0(a6)                          
  06cb8  aa14                  _RGBForeColor                               ; $aa14
  06cba  2079ffffac6e          movea.l  g_5392,a0                          
  06cc0  48680010              pea      $10(a0)                            
  06cc4  a8a3                  _EraseRect                                  ; $a8a3
  06cc6  4297                  clr.l    (a7)                               
  06cc8  3f3c008b              move.w   #$8b,-(a7)                         
  06ccc  a9bc                  _GetPicture                                 ; $a9bc
  06cce  245f                  movea.l  (a7)+,a2                           
  06cd0  204a                  movea.l  a2,a0                              
  06cd2  a029                  _HLock                                      ; $a029
  06cd4  2f39ffffac6e          move.l   g_5392,-(a7)                       
  06cda  a873                  _SetPort                                    ; $a873
  06cdc  2f0a                  move.l   a2,-(a7)                           
  06cde  486efff4              pea      -$c(a6)                            
  06ce2  a8f6                  _DrawPicture                                ; $a8f6
  06ce4  204a                  movea.l  a2,a0                              
  06ce6  a02a                  _HUnlock                                    ; $a02a
  06ce8  2f0a                  move.l   a2,-(a7)                           
  06cea  a9a3                  _ReleaseResource                            ; $a9a3
  06cec  566efff2              addq.w   #3,-$e(a6)                         
  06cf0  2f39ffff8fca          move.l   g_7036,-(a7)                       
  06cf6  a873                  _SetPort                                    ; $a873
  06cf8  486effec              pea      -$14(a6)                           
  06cfc  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  06d02  aa0e                  _FillCRect                                  ; $aa0e
  06d04  486efff4              pea      -$c(a6)                            
  06d08  42a7                  clr.l    -(a7)                              
  06d0a  2f3c00780078          move.l   #$780078,-(a7)                     
  06d10  a8a7                  _SetRect                                    ; $a8a7
  06d12  7e03                  moveq    #3,d7                              
  06d14  6052                  bra.s    L6d68                              
L6d16:
  06d16  486efff4              pea      -$c(a6)                            
  06d1a  487075b0ffff99f4      pea      (-$660c,za0,d7.w*4)                
  06d22  4ead03da              jsr      f4_1582                            
  06d26  207075b2ffff99f40002  movea.l  ([-$660c,a0],d7.w*4,$2),a0         
  06d30  a029                  _HLock                                      ; $a029
  06d32  2eb075b0ffff99f4      move.l   (-$660c,za0,d7.w*4),(a7)           
  06d3a  a873                  _SetPort                                    ; $a873
  06d3c  486efe20              pea      -$1e0(a6)                          
  06d40  aa14                  _RGBForeColor                               ; $aa14
  06d42  487075b2ffff99f40010  pea      ([-$660c,a0],d7.w*4,$10)           
  06d4c  a8a3                  _EraseRect                                  ; $a8a3
  06d4e  566efff2              addq.w   #3,-$e(a6)                         
  06d52  2eb9ffff8fca          move.l   g_7036,(a7)                        
  06d58  a873                  _SetPort                                    ; $a873
  06d5a  486effec              pea      -$14(a6)                           
  06d5e  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  06d64  aa0e                  _FillCRect                                  ; $aa0e
  06d66  5247                  addq.w   #1,d7                              
L6d68:
  06d68  0c470005              cmpi.w   #5,d7                              
  06d6c  6da8                  blt.s    L6d16                              
  06d6e  486efff4              pea      -$c(a6)                            
  06d72  42a7                  clr.l    -(a7)                              
  06d74  2f3c00fa0192          move.l   #$fa0192,-(a7)                     
  06d7a  a8a7                  _SetRect                                    ; $a8a7
  06d7c  486efff4              pea      -$c(a6)                            
  06d80  2f3cffff9a0c          move.l   #$ffff9a0c,-(a7)                   
  06d86  4ead03da              jsr      f4_1582                            
  06d8a  2079ffff9a0c          movea.l  g_65f4,a0                          
  06d90  20680002              movea.l  $2(a0),a0                          
  06d94  a029                  _HLock                                      ; $a029
  06d96  7e01                  moveq    #1,d7                              
  06d98  508f                  addq.l   #8,a7                              
  06d9a  6030                  bra.s    L6dcc                              
L6d9c:
  06d9c  42a7                  clr.l    -(a7)                              
  06d9e  3007                  move.w   d7,d0                              
  06da0  06400fa0              addi.w   #$fa0,d0                           
  06da4  3f00                  move.w   d0,-(a7)                           
  06da6  a9bc                  _GetPicture                                 ; $a9bc
  06da8  219f75b0ffff95c2      move.l   (a7)+,(-$6a3e,za0,d7.w*4)          
  06db0  4267                  clr.w    -(a7)                              
  06db2  a9af                  _ResError                                   ; $a9af
  06db4  3c1f                  move.w   (a7)+,d6                           
  06db6  4a46                  tst.w    d6                                 
  06db8  6710                  beq.s    L6dca                              
  06dba  2f3c000004a4          move.l   STR_04a4,-(a7)                     ; "getting store pictures, Exiting game"
  06dc0  3f06                  move.w   d6,-(a7)                           
  06dc2  4ead06ca              jsr      f7_18ec                            
  06dc6  a9f4                  _ExitToShell                                ; $a9f4
  06dc8  5c8f                  addq.l   #6,a7                              
L6dca:
  06dca  5247                  addq.w   #1,d7                              
L6dcc:
  06dcc  0c470007              cmpi.w   #7,d7                              
  06dd0  6dca                  blt.s    L6d9c                              
  06dd2  4ead0542              jsr      f5_1740                            
  06dd6  7e01                  moveq    #1,d7                              
  06dd8  600c                  bra.s    L6de6                              
L6dda:
  06dda  2f3075b0ffff95c2      move.l   (-$6a3e,za0,d7.w*4),-(a7)          
  06de2  a9a3                  _ReleaseResource                            ; $a9a3
  06de4  5247                  addq.w   #1,d7                              
L6de6:
  06de6  0c470007              cmpi.w   #7,d7                              
  06dea  6dee                  blt.s    L6dda                              
  06dec  566efff2              addq.w   #3,-$e(a6)                         
  06df0  2f39ffff8fca          move.l   g_7036,-(a7)                       
  06df6  a873                  _SetPort                                    ; $a873
  06df8  486effec              pea      -$14(a6)                           
  06dfc  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  06e02  aa0e                  _FillCRect                                  ; $aa0e
  06e04  486efff4              pea      -$c(a6)                            
  06e08  2f3c000a000a          move.l   #$a000a,-(a7)                      
  06e0e  2f3c00ea00c1          move.l   #$ea00c1,-(a7)                     
  06e14  a8a7                  _SetRect                                    ; $a8a7
  06e16  7e00                  moveq    #0,d7                              
  06e18  606c                  bra.s    L6e86                              
L6e1a:
  06e1a  486efff4              pea      -$c(a6)                            
  06e1e  487075b0ffff9a10      pea      (-$65f0,za0,d7.w*4)                
  06e26  4ead03da              jsr      f4_1582                            
  06e2a  207075b2ffff9a100002  movea.l  ([-$65f0,a0],d7.w*4,$2),a0         
  06e34  a029                  _HLock                                      ; $a029
  06e36  4297                  clr.l    (a7)                               
  06e38  3007                  move.w   d7,d0                              
  06e3a  064007cf              addi.w   #$7cf,d0                           
  06e3e  3f00                  move.w   d0,-(a7)                           
  06e40  a9bc                  _GetPicture                                 ; $a9bc
  06e42  245f                  movea.l  (a7)+,a2                           
  06e44  2eb075b0ffff9a10      move.l   (-$65f0,za0,d7.w*4),(a7)           
  06e4c  a873                  _SetPort                                    ; $a873
  06e4e  486efe20              pea      -$1e0(a6)                          
  06e52  aa14                  _RGBForeColor                               ; $aa14
  06e54  487075b2ffff9a100010  pea      ([-$65f0,a0],d7.w*4,$10)           
  06e5e  a8a3                  _EraseRect                                  ; $a8a3
  06e60  2f0a                  move.l   a2,-(a7)                           
  06e62  486efff4              pea      -$c(a6)                            
  06e66  a8f6                  _DrawPicture                                ; $a8f6
  06e68  2f0a                  move.l   a2,-(a7)                           
  06e6a  a9a3                  _ReleaseResource                            ; $a9a3
  06e6c  566efff2              addq.w   #3,-$e(a6)                         
  06e70  2f39ffff8fca          move.l   g_7036,-(a7)                       
  06e76  a873                  _SetPort                                    ; $a873
  06e78  486effec              pea      -$14(a6)                           
  06e7c  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  06e82  aa0e                  _FillCRect                                  ; $aa0e
  06e84  5247                  addq.w   #1,d7                              
L6e86:
  06e86  0c470003              cmpi.w   #3,d7                              
  06e8a  6d8e                  blt.s    L6e1a                              
  06e8c  486efff4              pea      -$c(a6)                            
  06e90  42a7                  clr.l    -(a7)                              
  06e92  2f3c00820078          move.l   #$820078,-(a7)                     
  06e98  a8a7                  _SetRect                                    ; $a8a7
  06e9a  7e00                  moveq    #0,d7                              
  06e9c  606c                  bra.s    L6f0a                              
L6e9e:
  06e9e  486efff4              pea      -$c(a6)                            
  06ea2  487075b0ffff9a20      pea      (-$65e0,za0,d7.w*4)                
  06eaa  4ead03da              jsr      f4_1582                            
  06eae  207075b2ffff9a200002  movea.l  ([-$65e0,a0],d7.w*4,$2),a0         
  06eb8  a029                  _HLock                                      ; $a029
  06eba  4297                  clr.l    (a7)                               
  06ebc  3007                  move.w   d7,d0                              
  06ebe  064009c5              addi.w   #$9c5,d0                           
  06ec2  3f00                  move.w   d0,-(a7)                           
  06ec4  a9bc                  _GetPicture                                 ; $a9bc
  06ec6  245f                  movea.l  (a7)+,a2                           
  06ec8  2eb075b0ffff9a20      move.l   (-$65e0,za0,d7.w*4),(a7)           
  06ed0  a873                  _SetPort                                    ; $a873
  06ed2  486efe20              pea      -$1e0(a6)                          
  06ed6  aa14                  _RGBForeColor                               ; $aa14
  06ed8  487075b2ffff9a200010  pea      ([-$65e0,a0],d7.w*4,$10)           
  06ee2  a8a3                  _EraseRect                                  ; $a8a3
  06ee4  2f0a                  move.l   a2,-(a7)                           
  06ee6  486efff4              pea      -$c(a6)                            
  06eea  a8f6                  _DrawPicture                                ; $a8f6
  06eec  2f0a                  move.l   a2,-(a7)                           
  06eee  a9a3                  _ReleaseResource                            ; $a9a3
  06ef0  566efff2              addq.w   #3,-$e(a6)                         
  06ef4  2f39ffff8fca          move.l   g_7036,-(a7)                       
  06efa  a873                  _SetPort                                    ; $a873
  06efc  486effec              pea      -$14(a6)                           
  06f00  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  06f06  aa0e                  _FillCRect                                  ; $aa0e
  06f08  5247                  addq.w   #1,d7                              
L6f0a:
  06f0a  0c470010              cmpi.w   #$10,d7                            
  06f0e  6d8e                  blt.s    L6e9e                              
  06f10  486efff4              pea      -$c(a6)                            
  06f14  42a7                  clr.l    -(a7)                              
  06f16  2f3c0023005a          move.l   #$23005a,-(a7)                     
  06f1c  a8a7                  _SetRect                                    ; $a8a7
  06f1e  486efff4              pea      -$c(a6)                            
  06f22  2f3cffffac72          move.l   #$ffffac72,-(a7)                   
  06f28  4ead03da              jsr      f4_1582                            
  06f2c  2079ffffac72          movea.l  g_538e,a0                          
  06f32  20680002              movea.l  $2(a0),a0                          
  06f36  a029                  _HLock                                      ; $a029
  06f38  2eb9ffffac72          move.l   g_538e,(a7)                        
  06f3e  a873                  _SetPort                                    ; $a873
  06f40  486efe20              pea      -$1e0(a6)                          
  06f44  aa14                  _RGBForeColor                               ; $aa14
  06f46  2079ffffac72          movea.l  g_538e,a0                          
  06f4c  48680010              pea      $10(a0)                            
  06f50  a8a3                  _EraseRect                                  ; $a8a3
  06f52  486efff4              pea      -$c(a6)                            
  06f56  42a7                  clr.l    -(a7)                              
  06f58  2f3c01840182          move.l   #$1840182,-(a7)                    
  06f5e  a8a7                  _SetRect                                    ; $a8a7
  06f60  7e00                  moveq    #0,d7                              
  06f62  588f                  addq.l   #4,a7                              
  06f64  6052                  bra.s    L6fb8                              
L6f66:
  06f66  486efff4              pea      -$c(a6)                            
  06f6a  487075b0ffff9a60      pea      (-$65a0,za0,d7.w*4)                
  06f72  4ead03da              jsr      f4_1582                            
  06f76  207075b2ffff9a600002  movea.l  ([-$65a0,a0],d7.w*4,$2),a0         
  06f80  a029                  _HLock                                      ; $a029
  06f82  2eb075b0ffff9a60      move.l   (-$65a0,za0,d7.w*4),(a7)           
  06f8a  a873                  _SetPort                                    ; $a873
  06f8c  486efe20              pea      -$1e0(a6)                          
  06f90  aa14                  _RGBForeColor                               ; $aa14
  06f92  487075b2ffff9a600010  pea      ([-$65a0,a0],d7.w*4,$10)           
  06f9c  a8a3                  _EraseRect                                  ; $a8a3
  06f9e  566efff2              addq.w   #3,-$e(a6)                         
  06fa2  2eb9ffff8fca          move.l   g_7036,(a7)                        
  06fa8  a873                  _SetPort                                    ; $a873
  06faa  486effec              pea      -$14(a6)                           
  06fae  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  06fb4  aa0e                  _FillCRect                                  ; $aa0e
  06fb6  5247                  addq.w   #1,d7                              
L6fb8:
  06fb8  0c470003              cmpi.w   #3,d7                              
  06fbc  6da8                  blt.s    L6f66                              
  06fbe  42a7                  clr.l    -(a7)                              
  06fc0  3f3c0085              move.w   #$85,-(a7)                         
  06fc4  a9bc                  _GetPicture                                 ; $a9bc
  06fc6  245f                  movea.l  (a7)+,a2                           
  06fc8  204a                  movea.l  a2,a0                              
  06fca  a029                  _HLock                                      ; $a029
  06fcc  2f39ffff9a60          move.l   g_65a0,-(a7)                       
  06fd2  a873                  _SetPort                                    ; $a873
  06fd4  3d7c003cfff4          move.w   #$3c,-$c(a6)                       
  06fda  2f0a                  move.l   a2,-(a7)                           
  06fdc  486efff4              pea      -$c(a6)                            
  06fe0  a8f6                  _DrawPicture                                ; $a8f6
  06fe2  2079ffff9a60          movea.l  g_65a0,a0                          
  06fe8  20680002              movea.l  $2(a0),a0                          
  06fec  2f10                  move.l   (a0),-(a7)                         
  06fee  2079ffff9a68          movea.l  g_6598,a0                          
  06ff4  20680002              movea.l  $2(a0),a0                          
  06ff8  2f10                  move.l   (a0),-(a7)                         
  06ffa  486efff4              pea      -$c(a6)                            
  06ffe  486efff4              pea      -$c(a6)                            
  07002  4267                  clr.w    -(a7)                              
  07004  42a7                  clr.l    -(a7)                              
  07006  a8ec                  _CopyBits                                   ; $a8ec
  07008  204a                  movea.l  a2,a0                              
  0700a  a02a                  _HUnlock                                    ; $a02a
  0700c  2f0a                  move.l   a2,-(a7)                           
  0700e  a9a3                  _ReleaseResource                            ; $a9a3
  07010  566efff2              addq.w   #3,-$e(a6)                         
  07014  2f39ffff8fca          move.l   g_7036,-(a7)                       
  0701a  a873                  _SetPort                                    ; $a873
  0701c  486effec              pea      -$14(a6)                           
  07020  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  07026  aa0e                  _FillCRect                                  ; $aa0e
  07028  2079ffff8fc6          movea.l  g_703a,a0                          
  0702e  2d680010fff4          move.l   $10(a0),-$c(a6)                    
  07034  2d680014fff8          move.l   $14(a0),-$8(a6)                    
  0703a  486efff4              pea      -$c(a6)                            
  0703e  2f3cffff9a1c          move.l   #$ffff9a1c,-(a7)                   
  07044  4ead03da              jsr      f4_1582                            
  07048  2079ffff9a1c          movea.l  g_65e4,a0                          
  0704e  20680002              movea.l  $2(a0),a0                          
  07052  a029                  _HLock                                      ; $a029
  07054  2eb9ffff9a1c          move.l   g_65e4,(a7)                        
  0705a  a873                  _SetPort                                    ; $a873
  0705c  486efe20              pea      -$1e0(a6)                          
  07060  aa14                  _RGBForeColor                               ; $aa14
  07062  566efff2              addq.w   #3,-$e(a6)                         
  07066  2eb9ffff8fca          move.l   g_7036,(a7)                        
  0706c  a873                  _SetPort                                    ; $a873
  0706e  486effec              pea      -$14(a6)                           
  07072  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  07078  aa0e                  _FillCRect                                  ; $aa0e
  0707a  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  07080  a873                  _SetPort                                    ; $a873
  07082  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  07088  a851                  _SetCursor                                  ; $a851
  0708a  2079ffff9382          movea.l  g_6c7e,a0                          
  07090  38280014              move.w   $14(a0),d4                         
  07094  98680010              sub.w    $10(a0),d4                         
  07098  48c4                  ext.l    d4                                 
  0709a  89fc0004              divs.w   #4,d4                              
  0709e  c9fc0003              muls.w   #3,d4                              
  070a2  2f3cffff971a          move.l   #$ffff971a,-(a7)                   
  070a8  3f280012              move.w   $12(a0),-(a7)                      
  070ac  3f280010              move.w   $10(a0),-(a7)                      
  070b0  7032                  moveq    #50,d0                             
  070b2  d0680012              add.w    $12(a0),d0                         
  070b6  3f00                  move.w   d0,-(a7)                           
  070b8  3f280014              move.w   $14(a0),-(a7)                      
  070bc  a8a7                  _SetRect                                    ; $a8a7
  070be  2f3cffff9722          move.l   #$ffff9722,-(a7)                   
  070c4  2079ffff9382          movea.l  g_6c7e,a0                          
  070ca  30280012              move.w   $12(a0),d0                         
  070ce  06400096              addi.w   #$96,d0                            
  070d2  3f00                  move.w   d0,-(a7)                           
  070d4  3f280010              move.w   $10(a0),-(a7)                      
  070d8  3f280016              move.w   $16(a0),-(a7)                      
  070dc  3f280014              move.w   $14(a0),-(a7)                      
  070e0  a8a7                  _SetRect                                    ; $a8a7
  070e2  2f3cffff972a          move.l   #$ffff972a,-(a7)                   
  070e8  7001                  moveq    #1,d0                              
  070ea  d079ffff971c          add.w    g_68e4,d0                          
  070f0  3f00                  move.w   d0,-(a7)                           
  070f2  3f39ffff971a          move.w   g_68e6,-(a7)                       
  070f8  70ff                  moveq    #-1,d0                             
  070fa  d079ffff9724          add.w    g_68dc,d0                          
  07100  3f00                  move.w   d0,-(a7)                           
  07102  3f04                  move.w   d4,-(a7)                           
  07104  a8a7                  _SetRect                                    ; $a8a7
  07106  2f3cffff9732          move.l   #$ffff9732,-(a7)                   
  0710c  7001                  moveq    #1,d0                              
  0710e  d079ffff971c          add.w    g_68e4,d0                          
  07114  3f00                  move.w   d0,-(a7)                           
  07116  7001                  moveq    #1,d0                              
  07118  d044                  add.w    d4,d0                              
  0711a  3f00                  move.w   d0,-(a7)                           
  0711c  70ff                  moveq    #-1,d0                             
  0711e  d079ffff9724          add.w    g_68dc,d0                          
  07124  3f00                  move.w   d0,-(a7)                           
  07126  3f39ffff971e          move.w   g_68e2,-(a7)                       
  0712c  a8a7                  _SetRect                                    ; $a8a7
  0712e  7063                  moveq    #99,d0                             
  07130  d06effee              add.w    -$12(a6),d0                        
  07134  3d40fff2              move.w   d0,-$e(a6)                         
  07138  2f39ffff8fca          move.l   g_7036,-(a7)                       
  0713e  a873                  _SetPort                                    ; $a873
  07140  486effec              pea      -$14(a6)                           
  07144  2f39ffff944a          move.l   g_6bb6,-(a7)                       
  0714a  aa0e                  _FillCRect                                  ; $aa0e
  0714c  4267                  clr.w    -(a7)                              
  0714e  2f3c736e6420          move.l   #$736e6420,-(a7)                   
  07154  486efffc              pea      -$4(a6)                            
  07158  4ead04aa              jsr      f4_1170                            
  0715c  3c1f                  move.w   (a7)+,d6                           
  0715e  4227                  clr.b    -(a7)                              
  07160  486efffc              pea      -$4(a6)                            
  07164  4878001f              pea      ($1f).w                            
  07168  a85d                  _BitTst                                     ; $a85d
  0716a  4a1f                  tst.b    (a7)+                              
  0716c  6706                  beq.s    L7174                              
  0716e  1d7c0001fe1b          move.b   #1,-$1e5(a6)                       
L7174:
  07174  4a2efe1b              tst.b    -$1e5(a6)                          
  07178  67000086              beq.w    L7200                              
  0717c  4267                  clr.w    -(a7)                              
  0717e  2f3cffff3af4          move.l   #$ffff3af4,-(a7)                   
  07184  3f3c0005              move.w   #5,-(a7)                           
  07188  487800c0              pea      ($c0).w                            
  0718c  486d0322              pea      f3_431e                            
  07190  a807                  _SndNewChannel                              ; $a807
  07192  3c1f                  move.w   (a7)+,d6                           
  07194  4a46                  tst.w    d6                                 
  07196  670e                  beq.s    L71a6                              
  07198  2f3c000004ca          move.l   STR_04ca,-(a7)                     ; "Trying for sampled sound, stereo"
  0719e  3f06                  move.w   d6,-(a7)                           
  071a0  4ead06ca              jsr      f7_18ec                            
  071a4  5c8f                  addq.l   #6,a7                              
L71a6:
  071a6  4267                  clr.w    -(a7)                              
  071a8  2f3cffff9792          move.l   #$ffff9792,-(a7)                   
  071ae  3f3c0001              move.w   #1,-(a7)                           
  071b2  487800c0              pea      ($c0).w                            
  071b6  486d0322              pea      f3_431e                            
  071ba  a807                  _SndNewChannel                              ; $a807
  071bc  3c1f                  move.w   (a7)+,d6                           
  071be  4a46                  tst.w    d6                                 
  071c0  670e                  beq.s    L71d0                              
  071c2  2f3c000004ec          move.l   STR_04ec,-(a7)                     ; "Trying for squarewave sound, stereo"
  071c8  3f06                  move.w   d6,-(a7)                           
  071ca  4ead06ca              jsr      f7_18ec                            
  071ce  5c8f                  addq.l   #6,a7                              
L71d0:
  071d0  4267                  clr.w    -(a7)                              
  071d2  2f3cffff9796          move.l   #$ffff9796,-(a7)                   
  071d8  3f3c0005              move.w   #5,-(a7)                           
  071dc  487800c0              pea      ($c0).w                            
  071e0  486d0322              pea      f3_431e                            
  071e4  a807                  _SndNewChannel                              ; $a807
  071e6  3c1f                  move.w   (a7)+,d6                           
  071e8  4a46                  tst.w    d6                                 
  071ea  67000092              beq.w    L727e                              
  071ee  2f3c00000510          move.l   STR_0510,-(a7)                     ; "Trying for squarewave sound2, stereo"
  071f4  3f06                  move.w   d6,-(a7)                           
  071f6  4ead06ca              jsr      f7_18ec                            
  071fa  5c8f                  addq.l   #6,a7                              
  071fc  60000080              bra.w    L727e                              
L7200:
  07200  4267                  clr.w    -(a7)                              
  07202  2f3cffff3af4          move.l   #$ffff3af4,-(a7)                   
  07208  3f3c0005              move.w   #5,-(a7)                           
  0720c  48780080              pea      ($80).w                            
  07210  486d0322              pea      f3_431e                            
  07214  a807                  _SndNewChannel                              ; $a807
  07216  3c1f                  move.w   (a7)+,d6                           
  07218  4a46                  tst.w    d6                                 
  0721a  670e                  beq.s    L722a                              
  0721c  2f3c00000536          move.l   STR_0536,-(a7)                     ; "Trying for sampled sound, mono"
  07222  3f06                  move.w   d6,-(a7)                           
  07224  4ead06ca              jsr      f7_18ec                            
  07228  5c8f                  addq.l   #6,a7                              
L722a:
  0722a  4267                  clr.w    -(a7)                              
  0722c  2f3cffff9792          move.l   #$ffff9792,-(a7)                   
  07232  3f3c0005              move.w   #5,-(a7)                           
  07236  48780080              pea      ($80).w                            
  0723a  486d0322              pea      f3_431e                            
  0723e  a807                  _SndNewChannel                              ; $a807
  07240  3c1f                  move.w   (a7)+,d6                           
  07242  4a46                  tst.w    d6                                 
  07244  670e                  beq.s    L7254                              
  07246  2f3c00000556          move.l   STR_0556,-(a7)                     ; "Trying for squarewave sound, mono"
  0724c  3f06                  move.w   d6,-(a7)                           
  0724e  4ead06ca              jsr      f7_18ec                            
  07252  5c8f                  addq.l   #6,a7                              
L7254:
  07254  4267                  clr.w    -(a7)                              
  07256  2f3cffff9796          move.l   #$ffff9796,-(a7)                   
  0725c  3f3c0005              move.w   #5,-(a7)                           
  07260  48780080              pea      ($80).w                            
  07264  486d0322              pea      f3_431e                            
  07268  a807                  _SndNewChannel                              ; $a807
  0726a  3c1f                  move.w   (a7)+,d6                           
  0726c  4a46                  tst.w    d6                                 
  0726e  670e                  beq.s    L727e                              
  07270  2f3c00000578          move.l   STR_0578,-(a7)                     ; "Trying for squarewave sound2, mono"
  07276  3f06                  move.w   d6,-(a7)                           
  07278  4ead06ca              jsr      f7_18ec                            
  0727c  5c8f                  addq.l   #6,a7                              
L727e:
  0727e  4a39ffff9933          tst.b    g_66cd                             
  07284  6704                  beq.s    L728a                              
  07286  4ebad450              jsr      f3_46d8                            
L728a:
  0728a  4a46                  tst.w    d6                                 
  0728c  670e                  beq.s    L729c                              
  0728e  2f3c0000059c          move.l   STR_059c,-(a7)                     ; "opening sound channel"
  07294  3f06                  move.w   d6,-(a7)                           
  07296  4ead06ca              jsr      f7_18ec                            
  0729a  5c8f                  addq.l   #6,a7                              
L729c:
  0729c  204b                  movea.l  a3,a0                              
  0729e  a02a                  _HUnlock                                    ; $a02a
  072a0  2f0b                  move.l   a3,-(a7)                           
  072a2  a9a3                  _ReleaseResource                            ; $a9a3
  072a4  204c                  movea.l  a4,a0                              
  072a6  a02a                  _HUnlock                                    ; $a02a
  072a8  2f0c                  move.l   a4,-(a7)                           
  072aa  a9a3                  _ReleaseResource                            ; $a9a3
  072ac  206efe1c              movea.l  -$1e4(a6),a0                       
  072b0  20680002              movea.l  $2(a0),a0                          
  072b4  a02a                  _HUnlock                                    ; $a02a
  072b6  206efe1c              movea.l  -$1e4(a6),a0                       
  072ba  2f280002              move.l   $2(a0),-(a7)                       
  072be  203c00040002          move.l   #$40002,d0                         
  072c4  ab1d                  _trap    $ab1d                              
  072c6  2f2efe1c              move.l   -$1e4(a6),-(a7)                    
  072ca  203c00040004          move.l   #$40004,d0                         
  072d0  ab1d                  _trap    $ab1d                              
  072d2  2079ffff8fca          movea.l  g_7036,a0                          
  072d8  48680010              pea      $10(a0)                            
  072dc  a8a3                  _EraseRect                                  ; $a8a3
  072de  4ead01ca              jsr      f2_6b56                            
L72e2:
  072e2  4cee1cf8fdfa          movem.l  -$206(a6),d3/d4/d5/d6/d7/a2/a3/a4  
  072e8  4e5e                  unlk     a6                                 
  072ea  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_72ec
;----------------------------------------------------------------------
f3_72ec:
  072ec  4e560000              link     a6,#0                              
  072f0  48e70700              movem.l  d5/d6/d7,-(a7)                     
  072f4  42a7                  clr.l    -(a7)                              
  072f6  3f3c0080              move.w   #$80,-(a7)                         
  072fa  2f3c000005b2          move.l   STR_05b2,-(a7)                     ; ""
  07300  a931                  _NewMenu                                    ; $a931
  07302  23dfffff8dc0          move.l   (a7)+,g_7240                       
  07308  2f39ffff8dc0          move.l   g_7240,-(a7)                       
  0730e  2f3c000005b4          move.l   STR_05b4,-(a7)                     ; "Castle Knowledge Introduction"
  07314  a933                  _AppendMenu                                 ; $a933
  07316  2f39ffff8dc0          move.l   g_7240,-(a7)                       
  0731c  2f3c000005d2          move.l   STR_05d2,-(a7)                     ; "About Castle Knowledge"
  07322  a933                  _AppendMenu                                 ; $a933
  07324  2f39ffff8dc0          move.l   g_7240,-(a7)                       
  0732a  2f3c000005ea          move.l   STR_05ea,-(a7)                     ; "Registration Form"
  07330  a933                  _AppendMenu                                 ; $a933
  07332  2f39ffff8dc0          move.l   g_7240,-(a7)                       
  07338  2f3c000005fc          move.l   STR_05fc,-(a7)                     ; "Help"
  0733e  a933                  _AppendMenu                                 ; $a933
  07340  2f39ffff8dc0          move.l   g_7240,-(a7)                       
  07346  2f3c44525652          move.l   #$44525652,-(a7)                   
  0734c  a94d                  _AppendResMenu                              ; $a94d
  0734e  2f39ffff8dc0          move.l   g_7240,-(a7)                       
  07354  4267                  clr.w    -(a7)                              
  07356  a935                  _InsertMenu                                 ; $a935
  07358  7e01                  moveq    #1,d7                              
  0735a  6020                  bra.s    L737c                              
L735c:
  0735c  42a7                  clr.l    -(a7)                              
  0735e  7001                  moveq    #1,d0                              
  07360  d047                  add.w    d7,d0                              
  07362  3f00                  move.w   d0,-(a7)                           
  07364  a9bf                  _GetMenu                                    ; $a9bf
  07366  219f75b0ffff8dc0      move.l   (a7)+,(-$7240,za0,d7.w*4)          
  0736e  2f3075b0ffff8dc0      move.l   (-$7240,za0,d7.w*4),-(a7)          
  07376  4267                  clr.w    -(a7)                              
  07378  a935                  _InsertMenu                                 ; $a935
  0737a  5247                  addq.w   #1,d7                              
L737c:
  0737c  0c470005              cmpi.w   #5,d7                              
  07380  6fda                  ble.s    L735c                              
  07382  7e02                  moveq    #2,d7                              
  07384  6032                  bra.s    L73b8                              
L7386:
  07386  2f3075b0ffff8dc0      move.l   (-$7240,za0,d7.w*4),-(a7)          
  0738e  4267                  clr.w    -(a7)                              
  07390  a93a                  _DisableItem                                ; $a93a
  07392  4267                  clr.w    -(a7)                              
  07394  2f3075b0ffff8dc0      move.l   (-$7240,za0,d7.w*4),-(a7)          
  0739c  a950                  _CountMItems                                ; $a950
  0739e  3c1f                  move.w   (a7)+,d6                           
  073a0  7a01                  moveq    #1,d5                              
  073a2  600e                  bra.s    L73b2                              
L73a4:
  073a4  2f3075b0ffff8dc0      move.l   (-$7240,za0,d7.w*4),-(a7)          
  073ac  3f05                  move.w   d5,-(a7)                           
  073ae  a93a                  _DisableItem                                ; $a93a
  073b0  5245                  addq.w   #1,d5                              
L73b2:
  073b2  bc45                  cmp.w    d5,d6                              
  073b4  6cee                  bge.s    L73a4                              
  073b6  5247                  addq.w   #1,d7                              
L73b8:
  073b8  0c470005              cmpi.w   #5,d7                              
  073bc  6fc8                  ble.s    L7386                              
  073be  4267                  clr.w    -(a7)                              
  073c0  2f39ffff8dcc          move.l   g_7234,-(a7)                       
  073c6  a950                  _CountMItems                                ; $a950
  073c8  3c1f                  move.w   (a7)+,d6                           
  073ca  7e00                  moveq    #0,d7                              
  073cc  600c                  bra.s    L73da                              
L73ce:
  073ce  2f39ffff8dcc          move.l   g_7234,-(a7)                       
  073d4  3f07                  move.w   d7,-(a7)                           
  073d6  a939                  _EnableItem                                 ; $a939
  073d8  5247                  addq.w   #1,d7                              
L73da:
  073da  bc47                  cmp.w    d7,d6                              
  073dc  6cf0                  bge.s    L73ce                              
  073de  2f39ffff8dc4          move.l   g_723c,-(a7)                       
  073e4  3f3c0003              move.w   #3,-(a7)                           
  073e8  a93a                  _DisableItem                                ; $a93a
  073ea  a937                  _DrawMenuBar                                ; $a937
  073ec  4239ffff8de8          clr.b    g_7218                             
  073f2  42a7                  clr.l    -(a7)                              
  073f4  3f3c0081              move.w   #$81,-(a7)                         
  073f8  2f3cffff8fda          move.l   #$ffff8fda,-(a7)                   
  073fe  4878ffff              pea      ($ffff).w                          
  07402  aa46                  _GetNewCWindow                              ; $aa46
  07404  23dfffff8fca          move.l   (a7)+,g_7036                       
  0740a  2f39ffff8fca          move.l   g_7036,-(a7)                       
  07410  3039ffffabfc          move.w   g_5404,d0                          
  07416  06400190              addi.w   #$190,d0                           
  0741a  3f00                  move.w   d0,-(a7)                           
  0741c  3039ffffabfa          move.w   g_5406,d0                          
  07422  06400190              addi.w   #$190,d0                           
  07426  3f00                  move.w   d0,-(a7)                           
  07428  1f3c0001              move.b   #1,-(a7)                           
  0742c  a91d                  _SizeWindow                                 ; $a91d
  0742e  42a7                  clr.l    -(a7)                              
  07430  3f3c0085              move.w   #$85,-(a7)                         
  07434  2f3cffff92e6          move.l   #$ffff92e6,-(a7)                   
  0743a  4878ffff              pea      ($ffff).w                          
  0743e  a9bd                  _GetNewWindow                               ; $a9bd
  07440  23dfffff8fc6          move.l   (a7)+,g_703a                       
  07446  42a7                  clr.l    -(a7)                              
  07448  3f3c0084              move.w   #$84,-(a7)                         
  0744c  2f3cffff91ae          move.l   #$ffff91ae,-(a7)                   
  07452  4878ffff              pea      ($ffff).w                          
  07456  a9bd                  _GetNewWindow                               ; $a9bd
  07458  23dfffff8fd6          move.l   (a7)+,g_702a                       
  0745e  42a7                  clr.l    -(a7)                              
  07460  3f3c0084              move.w   #$84,-(a7)                         
  07464  2f3cffff924a          move.l   #$ffff924a,-(a7)                   
  0746a  4878ffff              pea      ($ffff).w                          
  0746e  a9bd                  _GetNewWindow                               ; $a9bd
  07470  23dfffff8fc2          move.l   (a7)+,g_703e                       
  07476  4a39ffff9932          tst.b    g_66ce                             
  0747c  671a                  beq.s    L7498                              
  0747e  42a7                  clr.l    -(a7)                              
  07480  3f3c0083              move.w   #$83,-(a7)                         
  07484  2f3cffff938a          move.l   #$ffff938a,-(a7)                   
  0748a  4878ffff              pea      ($ffff).w                          
  0748e  aa46                  _GetNewCWindow                              ; $aa46
  07490  23dfffff9382          move.l   (a7)+,g_6c7e                       
  07496  6018                  bra.s    L74b0                              
L7498:
  07498  42a7                  clr.l    -(a7)                              
  0749a  3f3c0083              move.w   #$83,-(a7)                         
  0749e  2f3cffff938a          move.l   #$ffff938a,-(a7)                   
  074a4  4878ffff              pea      ($ffff).w                          
  074a8  a9bd                  _GetNewWindow                               ; $a9bd
  074aa  23dfffff9382          move.l   (a7)+,g_6c7e                       
L74b0:
  074b0  42a7                  clr.l    -(a7)                              
  074b2  3f3c0080              move.w   #$80,-(a7)                         
  074b6  2f3cffff8e7e          move.l   #$ffff8e7e,-(a7)                   
  074bc  4878ffff              pea      ($ffff).w                          
  074c0  aa46                  _GetNewCWindow                              ; $aa46
  074c2  23dfffff8fb6          move.l   (a7)+,g_704a                       
  074c8  42a7                  clr.l    -(a7)                              
  074ca  3f3c0082              move.w   #$82,-(a7)                         
  074ce  2f3cffff9112          move.l   #$ffff9112,-(a7)                   
  074d4  4878ffff              pea      ($ffff).w                          
  074d8  a9bd                  _GetNewWindow                               ; $a9bd
  074da  23dfffff8fd2          move.l   (a7)+,g_702e                       
  074e0  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  074e6  a873                  _SetPort                                    ; $a873
  074e8  4ead05c2              jsr      f5_3984                            
  074ec  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  074f0  4e5e                  unlk     a6                                 
  074f2  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_74f4   [jump table #110]
;----------------------------------------------------------------------
f3_74f4:
  074f4  4e56fe18              link     a6,#-488                           
  074f8  48e71f08              movem.l  d3/d4/d5/d6/d7/a4,-(a7)            
  074fc  7800                  moveq    #0,d4                              
  074fe  7600                  moveq    #0,d3                              
  07500  41eefe24              lea      -$1dc(a6),a0                       
  07504  43f9ffffa8ec          lea      g_5714,a1                          
  0750a  20d9                  move.l   (a1)+,(a0)+                        
  0750c  20d9                  move.l   (a1)+,(a0)+                        
  0750e  20d9                  move.l   (a1)+,(a0)+                        
  07510  41eefe18              lea      -$1e8(a6),a0                       
  07514  43f9ffffa8f8          lea      g_5708,a1                          
  0751a  20d9                  move.l   (a1)+,(a0)+                        
  0751c  20d9                  move.l   (a1)+,(a0)+                        
  0751e  20d9                  move.l   (a1)+,(a0)+                        
  07520  3f3c00d2              move.w   #$d2,-(a7)                         
  07524  486eff30              pea      -$d0(a6)                           
  07528  486eff50              pea      -$b0(a6)                           
  0752c  4ead025a              jsr      f2_194e                            
  07530  2ebc0000ffff          move.l   #$ffff,(a7)                        
  07536  201f                  move.l   (a7)+,d0                           
  07538  a032                  _FlushEvents                                ; $a032
  0753a  4297                  clr.l    (a7)                               
  0753c  3f3c00d1              move.w   #$d1,-(a7)                         
  07540  486eff56              pea      -$aa(a6)                           
  07544  4878ffff              pea      ($ffff).w                          
  07548  a97c                  _GetNewDialog                               ; $a97c
  0754a  285f                  movea.l  (a7)+,a4                           
  0754c  2f0c                  move.l   a4,-(a7)                           
  0754e  4ead06ba              jsr      f7_161c                            
  07552  2e8c                  move.l   a4,(a7)                            
  07554  a915                  _ShowWindow                                 ; $a915
  07556  2f0c                  move.l   a4,-(a7)                           
  07558  a873                  _SetPort                                    ; $a873
  0755a  486eff48              pea      -$b8(a6)                           
  0755e  42a7                  clr.l    -(a7)                              
  07560  42a7                  clr.l    -(a7)                              
  07562  a8a7                  _SetRect                                    ; $a8a7
  07564  548f                  addq.l   #2,a7                              
L7566:
  07566  42a7                  clr.l    -(a7)                              
  07568  486eff54              pea      -$ac(a6)                           
  0756c  a991                  _ModalDialog                                ; $a991
  0756e  4a6eff54              tst.w    -$ac(a6)                           
  07572  6f00009e              ble.w    L7612                              
  07576  0c6e0006ff54          cmpi.w   #6,-$ac(a6)                        
  0757c  6c000094              bge.w    L7612                              
  07580  302eff54              move.w   -$ac(a6),d0                        
  07584  3e360320fe24          move.w   (-$1dc,a6,d0.w*2),d7               
  0758a  48780001              pea      ($1).w                             
  0758e  323c01f9              move.w   #$1f9,d1                           
  07592  9240                  sub.w    d0,d1                              
  07594  3f01                  move.w   d1,-(a7)                           
  07596  7206                  moveq    #6,d1                              
  07598  9240                  sub.w    d0,d1                              
  0759a  2f3015b0ffff69a8      move.l   (-$9658,za0,d1.w*4),-(a7)          
  075a2  486eff30              pea      -$d0(a6)                           
  075a6  3f07                  move.w   d7,-(a7)                           
  075a8  4ead0262              jsr      f2_0000                            
  075ac  1a00                  move.b   d0,d5                              
  075ae  4a05                  tst.b    d5                                 
  075b0  4fef0010              lea      $10(a7),a7                         
  075b4  675c                  beq.s    L7612                              
  075b6  7006                  moveq    #6,d0                              
  075b8  906eff54              sub.w    -$ac(a6),d0                        
  075bc  23f005b0ffff69a8ffff  move.l   (-$9658,za0,d0.w*4),g_7c68         
  075c8  7006                  moveq    #6,d0                              
  075ca  906eff54              sub.w    -$ac(a6),d0                        
  075ce  33f003b0ffff3ae2ffff  move.w   (-$c51e,za0,d0.w*2),g_7c8c         
  075da  33f9ffff8374ffff83a4  move.w   g_7c8c,g_7c5c                      
  075e4  7006                  moveq    #6,d0                              
  075e6  906eff54              sub.w    -$ac(a6),d0                        
  075ea  33c0ffff83a0          move.w   d0,g_7c60                          
  075f0  2f0c                  move.l   a4,-(a7)                           
  075f2  a91f                  _SelectWindow                               ; $a91f
  075f4  7c01                  moveq    #1,d6                              
  075f6  6012                  bra.s    L760a                              
L75f8:
  075f8  2f0c                  move.l   a4,-(a7)                           
  075fa  3f06                  move.w   d6,-(a7)                           
  075fc  a827                  _ShowDialogItem                             ; $a827
  075fe  2f0c                  move.l   a4,-(a7)                           
  07600  700a                  moveq    #10,d0                             
  07602  d046                  add.w    d6,d0                              
  07604  3f00                  move.w   d0,-(a7)                           
  07606  a827                  _ShowDialogItem                             ; $a827
  07608  5246                  addq.w   #1,d6                              
L760a:
  0760a  0c460006              cmpi.w   #6,d6                              
  0760e  6de8                  blt.s    L75f8                              
  07610  7801                  moveq    #1,d4                              
L7612:
  07612  0c6e0005ff54          cmpi.w   #5,-$ac(a6)                        
  07618  6f7a                  ble.s    L7694                              
  0761a  0c6e000bff54          cmpi.w   #$b,-$ac(a6)                       
  07620  6c72                  bge.s    L7694                              
  07622  302eff54              move.w   -$ac(a6),d0                        
  07626  3e360320fe0e          move.w   (-$1f2,a6,d0.w*2),d7               
  0762c  48780001              pea      ($1).w                             
  07630  06400253              addi.w   #$253,d0                           
  07634  3f00                  move.w   d0,-(a7)                           
  07636  302eff54              move.w   -$ac(a6),d0                        
  0763a  2f3005b0ffff69e4      move.l   (-$961c,za0,d0.w*4),-(a7)          
  07642  486eff30              pea      -$d0(a6)                           
  07646  3f07                  move.w   d7,-(a7)                           
  07648  4ead0262              jsr      f2_0000                            
  0764c  1a00                  move.b   d0,d5                              
  0764e  4a05                  tst.b    d5                                 
  07650  4fef0010              lea      $10(a7),a7                         
  07654  673e                  beq.s    L7694                              
  07656  302eff54              move.w   -$ac(a6),d0                        
  0765a  23f005b0ffff69e4ffff  move.l   (-$961c,za0,d0.w*4),g_7c64         
  07666  5b40                  subq.w   #5,d0                              
  07668  33c0ffff83a2          move.w   d0,g_7c5e                          
  0766e  2f0c                  move.l   a4,-(a7)                           
  07670  a91f                  _SelectWindow                               ; $a91f
  07672  7c06                  moveq    #6,d6                              
  07674  6012                  bra.s    L7688                              
L7676:
  07676  2f0c                  move.l   a4,-(a7)                           
  07678  3f06                  move.w   d6,-(a7)                           
  0767a  a827                  _ShowDialogItem                             ; $a827
  0767c  2f0c                  move.l   a4,-(a7)                           
  0767e  700a                  moveq    #10,d0                             
  07680  d046                  add.w    d6,d0                              
  07682  3f00                  move.w   d0,-(a7)                           
  07684  a827                  _ShowDialogItem                             ; $a827
  07686  5246                  addq.w   #1,d6                              
L7688:
  07688  0c46000b              cmpi.w   #$b,d6                             
  0768c  6de8                  blt.s    L7676                              
  0768e  7601                  moveq    #1,d3                              
  07690  2f0c                  move.l   a4,-(a7)                           
  07692  a91f                  _SelectWindow                               ; $a91f
L7694:
  07694  4a03                  tst.b    d3                                 
  07696  670a                  beq.s    L76a2                              
  07698  4a04                  tst.b    d4                                 
  0769a  6706                  beq.s    L76a2                              
  0769c  3d7c0016ff54          move.w   #$16,-$ac(a6)                      
L76a2:
  076a2  0c6e0016ff54          cmpi.w   #$16,-$ac(a6)                      
  076a8  6600febc              bne.w    L7566                              
  076ac  4a04                  tst.b    d4                                 
  076ae  6626                  bne.s    L76d6                              
  076b0  23f9ffff69c0ffff8398  move.l   g_9640,g_7c68                      
  076ba  33f9ffff3aeeffff8374  move.w   g_c512,g_7c8c                      
  076c4  33f9ffff8374ffff83a4  move.w   g_7c8c,g_7c5c                      
  076ce  33fc0006ffff83a0      move.w   #6,g_7c60                          
L76d6:
  076d6  4a03                  tst.b    d3                                 
  076d8  6612                  bne.s    L76ec                              
  076da  23f9ffff6a10ffff839c  move.l   g_95f0,g_7c64                      
  076e4  33fc0006ffff83a2      move.w   #6,g_7c5e                          
L76ec:
  076ec  2f0c                  move.l   a4,-(a7)                           
  076ee  a983                  _DisposeDialog                              ; $a983
  076f0  7c01                  moveq    #1,d6                              
  076f2  600a                  bra.s    L76fe                              
L76f4:
  076f4  20766520ff30          movea.l  (-$d0,a6,d6.w*4),a0                
  076fa  a01f                  _DisposePtr                                 ; $a01f
  076fc  5246                  addq.w   #1,d6                              
L76fe:
  076fe  bc6eff50              cmp.w    -$b0(a6),d6                        
  07702  6ff0                  ble.s    L76f4                              
  07704  4cdf10f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a4            
  07708  4e5e                  unlk     a6                                 
  0770a  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_770c
;----------------------------------------------------------------------
f3_770c:
  0770c  4e560000              link     a6,#0                              
  07710  42a7                  clr.l    -(a7)                              
  07712  3f3c012c              move.w   #$12c,-(a7)                        
  07716  a9b9                  _GetCursor                                  ; $a9b9
  07718  23dfffff8e62          move.l   (a7)+,g_719e                       
  0771e  42a7                  clr.l    -(a7)                              
  07720  3f3c012d              move.w   #$12d,-(a7)                        
  07724  a9b9                  _GetCursor                                  ; $a9b9
  07726  23dfffff8e66          move.l   (a7)+,g_719a                       
  0772c  42a7                  clr.l    -(a7)                              
  0772e  3f3c012e              move.w   #$12e,-(a7)                        
  07732  a9b9                  _GetCursor                                  ; $a9b9
  07734  23dfffff8e6a          move.l   (a7)+,g_7196                       
  0773a  42a7                  clr.l    -(a7)                              
  0773c  3f3c012f              move.w   #$12f,-(a7)                        
  07740  a9b9                  _GetCursor                                  ; $a9b9
  07742  23dfffff8e6e          move.l   (a7)+,g_7192                       
  07748  42a7                  clr.l    -(a7)                              
  0774a  3f3c0130              move.w   #$130,-(a7)                        
  0774e  a9b9                  _GetCursor                                  ; $a9b9
  07750  23dfffff8e72          move.l   (a7)+,g_718e                       
  07756  42a7                  clr.l    -(a7)                              
  07758  3f3c0131              move.w   #$131,-(a7)                        
  0775c  a9b9                  _GetCursor                                  ; $a9b9
  0775e  23dfffff8e76          move.l   (a7)+,g_718a                       
  07764  42a7                  clr.l    -(a7)                              
  07766  3f3c0132              move.w   #$132,-(a7)                        
  0776a  a9b9                  _GetCursor                                  ; $a9b9
  0776c  23dfffff8e7a          move.l   (a7)+,g_7186                       
  07772  2079ffff8e62          movea.l  g_719e,a0                          
  07778  a029                  _HLock                                      ; $a029
  0777a  2079ffff8e66          movea.l  g_719a,a0                          
  07780  a029                  _HLock                                      ; $a029
  07782  2079ffff8e6a          movea.l  g_7196,a0                          
  07788  a029                  _HLock                                      ; $a029
  0778a  2079ffff8e76          movea.l  g_718a,a0                          
  07790  a029                  _HLock                                      ; $a029
  07792  2079ffff8e72          movea.l  g_718e,a0                          
  07798  a029                  _HLock                                      ; $a029
  0779a  2079ffff8e7a          movea.l  g_7186,a0                          
  077a0  a029                  _HLock                                      ; $a029
  077a2  2079ffff8e6e          movea.l  g_7192,a0                          
  077a8  a029                  _HLock                                      ; $a029
  077aa  4e5e                  unlk     a6                                 
  077ac  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_77ae   [jump table #108]
;----------------------------------------------------------------------
f3_77ae:
  077ae  4e56fe00              link     a6,#-512                           
  077b2  486eff00              pea      -$100(a6)                          
  077b6  3f3c0098              move.w   #$98,-(a7)                         
  077ba  3f2e000a              move.w   $a(a6),-(a7)                       
  077be  4ead0522              jsr      f4_153c                            
  077c2  486efe00              pea      -$200(a6)                          
  077c6  2f3c00010098          move.l   #$10098,-(a7)                      
  077cc  4ead0522              jsr      f4_153c                            
  077d0  302e0008              move.w   $8(a6),d0                          
  077d4  303003b0ffff8c78      move.w   (-$7388,za0,d0.w*2),d0             
  077dc  2f3005b0ffff6a48      move.l   (-$95b8,za0,d0.w*4),-(a7)          
  077e4  486eff00              pea      -$100(a6)                          
  077e8  486efe00              pea      -$200(a6)                          
  077ec  2f3c000003a2          move.l   STR_03a2,-(a7)                     ; "?"
  077f2  a98b                  _ParamText                                  ; $a98b
  077f4  4e5e                  unlk     a6                                 
  077f6  4e75                  rts                                         

;----------------------------------------------------------------------
; f3_77f8   [jump table #109]
;----------------------------------------------------------------------
f3_77f8:
  077f8  4e56fff4              link     a6,#-12                            
  077fc  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  07800  3e2e0008              move.w   $8(a6),d7                          
  07804  3c2e000a              move.w   $a(a6),d6                          
  07808  7a00                  moveq    #0,d5                              
  0780a  7002                  moveq    #2,d0                              
  0780c  d079ffff9714          add.w    g_68ec,d0                          
  07812  3d40fffa              move.w   d0,-$6(a6)                         
  07816  7002                  moveq    #2,d0                              
  07818  d06efffa              add.w    -$6(a6),d0                         
  0781c  3d40fffe              move.w   d0,-$2(a6)                         
  07820  7002                  moveq    #2,d0                              
  07822  d079ffff9712          add.w    g_68ee,d0                          
  07828  3d40fff8              move.w   d0,-$8(a6)                         
  0782c  3d79ffff9716fffc      move.w   g_68ea,-$4(a6)                     
  07834  7015                  moveq    #21,d0                             
  07836  c1c7                  muls.w   d7,d0                              
  07838  0680ffff985e          addi.l   #$ffff985e,d0                      
  0783e  3046                  movea.w  d6,a0                              
  07840  4a300800              tst.b    $0(a0,d0.l)                        
  07844  6708                  beq.s    L784e                              
  07846  4a2e000c              tst.b    $c(a6)                             
  0784a  670000ae              beq.w    L78fa                              
L784e:
  0784e  3f3c0006              move.w   #6,-(a7)                           
  07852  4ead0242              jsr      f2_79a8                            
  07856  0c400006              cmpi.w   #6,d0                              
  0785a  548f                  addq.l   #2,a7                              
  0785c  6250                  bhi.s    L78ae                              
  0785e  43fa0320              lea      L7b80(pc),a1                       
  07862  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  07866  4ed1                  jmp      (a1)                               
  07868  3f3c0bfe              move.w   #$bfe,-(a7)                        
  0786c  4ebac9ca              jsr      f3_4238                            
  07870  548f                  addq.l   #2,a7                              
  07872  603a                  bra.s    L78ae                              
  07874  3f3c5c27              move.w   #$5c27,-(a7)                       
  07878  4ebac9be              jsr      f3_4238                            
  0787c  548f                  addq.l   #2,a7                              
  0787e  602e                  bra.s    L78ae                              
  07880  3f3c5bd9              move.w   #$5bd9,-(a7)                       
  07884  4ebac9b2              jsr      f3_4238                            
  07888  548f                  addq.l   #2,a7                              
  0788a  6022                  bra.s    L78ae                              
  0788c  3f3c5be2              move.w   #$5be2,-(a7)                       
  07890  4ebac9a6              jsr      f3_4238                            
  07894  548f                  addq.l   #2,a7                              
  07896  6016                  bra.s    L78ae                              
  07898  3f3c5bf6              move.w   #$5bf6,-(a7)                       
  0789c  4ebac99a              jsr      f3_4238                            
  078a0  548f                  addq.l   #2,a7                              
  078a2  600a                  bra.s    L78ae                              
  078a4  3f3c5c12              move.w   #$5c12,-(a7)                       
  078a8  4ebac98e              jsr      f3_4238                            
  078ac  548f                  addq.l   #2,a7                              
L78ae:
  078ae  4227                  clr.b    -(a7)                              
  078b0  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  078b6  4ead016a              jsr      f2_549e                            
  078ba  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  078c0  a873                  _SetPort                                    ; $a873
  078c2  6020                  bra.s    L78e4                              
L78c4:
  078c4  3f3c0005              move.w   #5,-(a7)                           
  078c8  486efff8              pea      -$8(a6)                            
  078cc  4ead07a2              jsr      f7_1a2e                            
  078d0  066e000afffe          addi.w   #$a,-$2(a6)                        
  078d6  43eefff4              lea      -$c(a6),a1                         
  078da  307c0003              movea.w  #3,a0                              
  078de  a03b                  _Delay                                      ; $a03b
  078e0  2280                  move.l   d0,(a1)                            
  078e2  5c8f                  addq.l   #6,a7                              
L78e4:
  078e4  70fb                  moveq    #-5,d0                             
  078e6  d079ffff9718          add.w    g_68e8,d0                          
  078ec  b06efffe              cmp.w    -$2(a6),d0                         
  078f0  6ed2                  bgt.s    L78c4                              
  078f2  4ebacbca              jsr      f3_44be                            
  078f6  60000256              bra.w    L7b4e                              
L78fa:
  078fa  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  07900  a851                  _SetCursor                                  ; $a851
  07902  7015                  moveq    #21,d0                             
  07904  c1c7                  muls.w   d7,d0                              
  07906  0680ffff985e          addi.l   #$ffff985e,d0                      
  0790c  3046                  movea.w  d6,a0                              
  0790e  7200                  moveq    #0,d1                              
  07910  12300800              move.b   $0(a0,d0.l),d1                     
  07914  0c41000d              cmpi.w   #$d,d1                             
  07918  62000112              bhi.w    L7a2c                              
  0791c  43fa0246              lea      L7b64(pc),a1                       
  07920  d2f11200              adda.w   $0(a1,d1.w*2),a1                   
  07924  4ed1                  jmp      (a1)                               
  07926  3f06                  move.w   d6,-(a7)                           
  07928  3f07                  move.w   d7,-(a7)                           
  0792a  2f3c01000000          move.l   #$1000000,-(a7)                    
  07930  4ead0102              jsr      f2_33a2                            
  07934  1a00                  move.b   d0,d5                              
  07936  508f                  addq.l   #8,a7                              
  07938  600000f2              bra.w    L7a2c                              
  0793c  3f06                  move.w   d6,-(a7)                           
  0793e  3f07                  move.w   d7,-(a7)                           
  07940  2f3c01000000          move.l   #$1000000,-(a7)                    
  07946  4227                  clr.b    -(a7)                              
  07948  4ead066a              jsr      f6_23e0                            
  0794c  1a00                  move.b   d0,d5                              
  0794e  4fef000a              lea      $a(a7),a7                          
  07952  600000d8              bra.w    L7a2c                              
  07956  3f06                  move.w   d6,-(a7)                           
  07958  3f07                  move.w   d7,-(a7)                           
  0795a  2f3c01000000          move.l   #$1000000,-(a7)                    
  07960  4ead044a              jsr      f4_4d78                            
  07964  1a00                  move.b   d0,d5                              
  07966  508f                  addq.l   #8,a7                              
  07968  600000c2              bra.w    L7a2c                              
  0796c  3f06                  move.w   d6,-(a7)                           
  0796e  3f07                  move.w   d7,-(a7)                           
  07970  1f3c0001              move.b   #1,-(a7)                           
  07974  3f3c0002              move.w   #2,-(a7)                           
  07978  4ead0242              jsr      f2_79a8                            
  0797c  5300                  subq.b   #1,d0                              
  0797e  1e80                  move.b   d0,(a7)                            
  07980  4ead0682              jsr      f6_3048                            
  07984  1a00                  move.b   d0,d5                              
  07986  508f                  addq.l   #8,a7                              
  07988  600000a2              bra.w    L7a2c                              
  0798c  0c790006ffff8894      cmpi.w   #6,g_776c                          
  07994  6c04                  bge.s    L799a                              
  07996  7802                  moveq    #2,d4                              
  07998  603c                  bra.s    L79d6                              
L799a:
  0799a  0c790005ffff8894      cmpi.w   #5,g_776c                          
  079a2  6f0e                  ble.s    L79b2                              
  079a4  0c79000bffff8894      cmpi.w   #$b,g_776c                         
  079ac  6c04                  bge.s    L79b2                              
  079ae  7803                  moveq    #3,d4                              
  079b0  6024                  bra.s    L79d6                              
L79b2:
  079b2  0c79000affff8894      cmpi.w   #$a,g_776c                         
  079ba  6f0e                  ble.s    L79ca                              
  079bc  0c790010ffff8894      cmpi.w   #$10,g_776c                        
  079c4  6c04                  bge.s    L79ca                              
  079c6  7804                  moveq    #4,d4                              
  079c8  600c                  bra.s    L79d6                              
L79ca:
  079ca  0c79000fffff8894      cmpi.w   #$f,g_776c                         
  079d2  6f02                  ble.s    L79d6                              
  079d4  7805                  moveq    #5,d4                              
L79d6:
  079d6  3f06                  move.w   d6,-(a7)                           
  079d8  3f07                  move.w   d7,-(a7)                           
  079da  4227                  clr.b    -(a7)                              
  079dc  3f04                  move.w   d4,-(a7)                           
  079de  4ead052a              jsr      f5_0b38                            
  079e2  1a00                  move.b   d0,d5                              
  079e4  508f                  addq.l   #8,a7                              
  079e6  6044                  bra.s    L7a2c                              
  079e8  3f06                  move.w   d6,-(a7)                           
  079ea  3f07                  move.w   d7,-(a7)                           
  079ec  2f3c01000000          move.l   #$1000000,-(a7)                    
  079f2  4eba8dd2              jsr      f3_07c6                            
  079f6  1a00                  move.b   d0,d5                              
  079f8  508f                  addq.l   #8,a7                              
  079fa  6030                  bra.s    L7a2c                              
  079fc  3f06                  move.w   d6,-(a7)                           
  079fe  3f07                  move.w   d7,-(a7)                           
  07a00  1f3c0001              move.b   #1,-(a7)                           
  07a04  3f3c0002              move.w   #2,-(a7)                           
  07a08  4ead0242              jsr      f2_79a8                            
  07a0c  5300                  subq.b   #1,d0                              
  07a0e  1e80                  move.b   d0,(a7)                            
  07a10  4ead069a              jsr      f6_3756                            
  07a14  1a00                  move.b   d0,d5                              
  07a16  508f                  addq.l   #8,a7                              
  07a18  6012                  bra.s    L7a2c                              
  07a1a  3f06                  move.w   d6,-(a7)                           
  07a1c  3f07                  move.w   d7,-(a7)                           
  07a1e  2f3c01000000          move.l   #$1000000,-(a7)                    
  07a24  4ead07aa              jsr      f7_078e                            
  07a28  1a00                  move.b   d0,d5                              
  07a2a  508f                  addq.l   #8,a7                              
L7a2c:
  07a2c  2079ffff8e6a          movea.l  g_7196,a0                          
  07a32  2f10                  move.l   (a0),-(a7)                         
  07a34  a851                  _SetCursor                                  ; $a851
  07a36  4a05                  tst.b    d5                                 
  07a38  67000114              beq.w    L7b4e                              
  07a3c  7015                  moveq    #21,d0                             
  07a3e  c1c7                  muls.w   d7,d0                              
  07a40  0680ffff985e          addi.l   #$ffff985e,d0                      
  07a46  3046                  movea.w  d6,a0                              
  07a48  42300800              clr.b    $0(a0,d0.l)                        
  07a4c  3079ffff8390          movea.w  g_7c70,a0                          
  07a52  d1c8                  adda.l   a0,a0                              
  07a54  2008                  move.l   a0,d0                              
  07a56  d1b9ffff8388          add.l    d0,g_7c78                          
  07a5c  2039ffff8388          move.l   g_7c78,d0                          
  07a62  b0b9ffff8384          cmp.l    g_7c7c,d0                          
  07a68  6d04                  blt.s    L7a6e                              
  07a6a  4ead023a              jsr      f2_7b7a                            
L7a6e:
  07a6e  3f3c0002              move.w   #2,-(a7)                           
  07a72  4ead0242              jsr      f2_79a8                            
  07a76  4a40                  tst.w    d0                                 
  07a78  548f                  addq.l   #2,a7                              
  07a7a  671e                  beq.s    L7a9a                              
  07a7c  6b1c                  bmi.s    L7a9a                              
  07a7e  5540                  subq.w   #2,d0                              
  07a80  670e                  beq.s    L7a90                              
  07a82  6a16                  bpl.s    L7a9a                              
  07a84  3f3c5bd8              move.w   #$5bd8,-(a7)                       
  07a88  4ebac7ae              jsr      f3_4238                            
  07a8c  548f                  addq.l   #2,a7                              
  07a8e  600a                  bra.s    L7a9a                              
L7a90:
  07a90  3f3c5be1              move.w   #$5be1,-(a7)                       
  07a94  4ebac7a2              jsr      f3_4238                            
  07a98  548f                  addq.l   #2,a7                              
L7a9a:
  07a9a  4227                  clr.b    -(a7)                              
  07a9c  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  07aa2  4ead016a              jsr      f2_549e                            
  07aa6  4ebac8dc              jsr      f3_4384                            
  07aaa  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  07ab0  a873                  _SetPort                                    ; $a873
L7ab2:
  07ab2  4a39ffff8dfb          tst.b    g_7205                             
  07ab8  67f8                  beq.s    L7ab2                              
  07aba  3f3c0006              move.w   #6,-(a7)                           
  07abe  4ead0242              jsr      f2_79a8                            
  07ac2  0c400006              cmpi.w   #6,d0                              
  07ac6  548f                  addq.l   #2,a7                              
  07ac8  6272                  bhi.s    L7b3c                              
  07aca  43fa008a              lea      L7b56(pc),a1                       
  07ace  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  07ad2  4ed1                  jmp      (a1)                               
  07ad4  3f3c0bfe              move.w   #$bfe,-(a7)                        
  07ad8  4ebac75e              jsr      f3_4238                            
  07adc  548f                  addq.l   #2,a7                              
  07ade  605c                  bra.s    L7b3c                              
  07ae0  3f3c5c27              move.w   #$5c27,-(a7)                       
  07ae4  4ebac752              jsr      f3_4238                            
  07ae8  548f                  addq.l   #2,a7                              
  07aea  6050                  bra.s    L7b3c                              
  07aec  3f3c5bd9              move.w   #$5bd9,-(a7)                       
  07af0  4ebac746              jsr      f3_4238                            
  07af4  548f                  addq.l   #2,a7                              
  07af6  6044                  bra.s    L7b3c                              
  07af8  3f3c5be2              move.w   #$5be2,-(a7)                       
  07afc  4ebac73a              jsr      f3_4238                            
  07b00  548f                  addq.l   #2,a7                              
  07b02  6038                  bra.s    L7b3c                              
  07b04  3f3c5bf6              move.w   #$5bf6,-(a7)                       
  07b08  4ebac72e              jsr      f3_4238                            
  07b0c  548f                  addq.l   #2,a7                              
  07b0e  602c                  bra.s    L7b3c                              
  07b10  3f3c5c12              move.w   #$5c12,-(a7)                       
  07b14  4ebac722              jsr      f3_4238                            
  07b18  548f                  addq.l   #2,a7                              
  07b1a  6020                  bra.s    L7b3c                              
L7b1c:
  07b1c  3f3c0005              move.w   #5,-(a7)                           
  07b20  486efff8              pea      -$8(a6)                            
  07b24  4ead07a2              jsr      f7_1a2e                            
  07b28  066e000afffe          addi.w   #$a,-$2(a6)                        
  07b2e  43eefff4              lea      -$c(a6),a1                         
  07b32  307c0002              movea.w  #2,a0                              
  07b36  a03b                  _Delay                                      ; $a03b
  07b38  2280                  move.l   d0,(a1)                            
  07b3a  5c8f                  addq.l   #6,a7                              
L7b3c:
  07b3c  70fb                  moveq    #-5,d0                             
  07b3e  d079ffff9718          add.w    g_68e8,d0                          
  07b44  b06efffe              cmp.w    -$2(a6),d0                         
  07b48  6ed2                  bgt.s    L7b1c                              
  07b4a  4ebac972              jsr      f3_44be                            
L7b4e:
  07b4e  4cdf00f0              movem.l  (a7)+,d4/d5/d6/d7                  
  07b52  4e5e                  unlk     a6                                 
  07b54  4e75                  rts                                         
  07b56  ffe6                  dc.w     $ffe6                              
  07b58  ff7e                  dc.w     $ff7e                              
  07b5a  ff8a                  dc.w     $ff8a                              
  07b5c  ff96                  dc.w     $ff96                              
  07b5e  ffa2                  dc.w     $ffa2                              
  07b60  ffae                  dc.w     $ffae                              
  07b62  ffba                  dc.w     $ffba                              
  07b64  fec8                  dc.w     $fec8                              
  07b66  fdc2                  dc.w     $fdc2                              
  07b68  fdc2                  dc.w     $fdc2                              
  07b6a  fdc2                  dc.w     $fdc2                              
  07b6c  fdc2                  dc.w     $fdc2                              
  07b6e  fdd8                  dc.w     $fdd8                              
  07b70  fdf2                  dc.w     $fdf2                              
  07b72  fdf2                  dc.w     $fdf2                              
  07b74  fdf2                  dc.w     $fdf2                              
  07b76  fe08                  dc.w     $fe08                              
  07b78  fe28                  dc.w     $fe28                              
  07b7a  fe84                  dc.w     $fe84                              
  07b7c  fe98                  dc.w     $fe98                              
  07b7e  feb6                  dc.w     $feb6                              
  07b80  fd2e                  dc.w     $fd2e                              
  07b82  fce8                  dc.w     $fce8                              
  07b84  fcf4                  dc.w     $fcf4                              
  07b86  fd00                  dc.w     $fd00                              
  07b88  fd0c                  dc.w     $fd0c                              
  07b8a  fd18                  dc.w     $fd18                              
  07b8c  fd24                  dc.w     $fd24                              
