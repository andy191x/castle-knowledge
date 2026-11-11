; Castle Knowledge 2.6 - CODE segment 7 (16858 bytes)
; Disassembled & annotated. Globals g_XXXX = A5-XXXX; STR_XXXX = STRS literal offset.


;----------------------------------------------------------------------
; f7_0000   [jump table #243]
;----------------------------------------------------------------------
f7_0000:
  00000  4e56fff0              link     a6,#-16                            
  00004  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  00008  1e2e0008              move.b   $8(a6),d7                          
  0000c  3d79ffff8894fffe      move.w   g_776c,-$2(a6)                     
  00014  3d79ffff836cfffc      move.w   g_7c94,-$4(a6)                     
  0001c  3d79ffff836efffa      move.w   g_7c92,-$6(a6)                     
  00024  486efff2              pea      -$e(a6)                            
  00028  48780064              pea      ($64).w                            
  0002c  2f3c0012012c          move.l   #$12012c,-(a7)                     
  00032  a8a7                  _SetRect                                    ; $a8a7
  00034  13fc0001ffff8dea      move.b   #1,g_7216                          
  0003c  4239ffff980e          clr.b    g_67f2                             
  00042  1f07                  move.b   d7,-(a7)                           
  00044  4ead026a              jsr      f3_0000                            
  00048  3079ffff836e          movea.w  g_7c92,a0                          
  0004e  78f1                  moveq    #-15,d4                            
  00050  d888                  add.l    a0,d4                              
  00052  89fc0015              divs.w   #$15,d4                            
  00056  3079ffff836c          movea.w  g_7c94,a0                          
  0005c  2a08                  move.l   a0,d5                              
  0005e  8bfc0015              divs.w   #$15,d5                            
  00062  7012                  moveq    #18,d0                             
  00064  c1c5                  muls.w   d5,d0                              
  00066  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0006c  3044                  movea.w  d4,a0                              
  0006e  d1c8                  adda.l   a0,a0                              
  00070  3eb00800              move.w   $0(a0,d0.l),(a7)                   
  00074  4ead024a              jsr      f2_7a2c                            
  00078  3c00                  move.w   d0,d6                              
  0007a  4217                  clr.b    (a7)                               
  0007c  4ead0272              jsr      f3_0114                            
  00080  4a00                  tst.b    d0                                 
  00082  548f                  addq.l   #2,a7                              
  00084  660006c2              bne.w    L0748                              
  00088  3039ffff83bc          move.w   g_7c44,d0                          
  0008e  670006a6              beq.w    L0736                              
  00092  6b0006a2              bmi.w    L0736                              
  00096  5740                  subq.w   #3,d0                              
  00098  6700035c              beq.w    L03f6                              
  0009c  6a08                  bpl.s    L00a6                              
  0009e  5240                  addq.w   #1,d0                              
  000a0  6a0001a8              bpl.w    L024a                              
  000a4  600a                  bra.s    L00b0                              
L00a6:
  000a6  5540                  subq.w   #2,d0                              
  000a8  6a00068c              bpl.w    L0736                              
  000ac  600004e4              bra.w    L0592                              
L00b0:
  000b0  7012                  moveq    #18,d0                             
  000b2  c1c5                  muls.w   d5,d0                              
  000b4  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  000ba  3044                  movea.w  d4,a0                              
  000bc  d1c8                  adda.l   a0,a0                              
  000be  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  000c2  4ead024a              jsr      f2_7a2c                            
  000c6  3d40fff0              move.w   d0,-$10(a6)                        
  000ca  3e86                  move.w   d6,(a7)                            
  000cc  4ead024a              jsr      f2_7a2c                            
  000d0  b06efff0              cmp.w    -$10(a6),d0                        
  000d4  548f                  addq.l   #2,a7                              
  000d6  6714                  beq.s    L00ec                              
  000d8  70ff                  moveq    #-1,d0                             
  000da  d079ffff836c          add.w    g_7c94,d0                          
  000e0  b07063b0ffff8a80      cmp.w    (-$7580,za0,d6.w*2),d0             
  000e8  6600014e              bne.w    L0238                              
L00ec:
  000ec  70ff                  moveq    #-1,d0                             
  000ee  d079ffff836c          add.w    g_7c94,d0                          
  000f4  b07063b0ffff8a80      cmp.w    (-$7580,za0,d6.w*2),d0             
  000fc  6654                  bne.s    L0152                              
  000fe  7012                  moveq    #18,d0                             
  00100  c1c5                  muls.w   d5,d0                              
  00102  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  00108  3044                  movea.w  d4,a0                              
  0010a  d1c8                  adda.l   a0,a0                              
  0010c  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  00110  4ead024a              jsr      f2_7a2c                            
  00114  3d40fff0              move.w   d0,-$10(a6)                        
  00118  3e86                  move.w   d6,(a7)                            
  0011a  4ead024a              jsr      f2_7a2c                            
  0011e  b06efff0              cmp.w    -$10(a6),d0                        
  00122  548f                  addq.l   #2,a7                              
  00124  672c                  beq.s    L0152                              
  00126  4a3061b0ffff9888      tst.b    (-$6778,za0,d6.w)                  
  0012e  6610                  bne.s    L0140                              
  00130  3f3c0bfe              move.w   #$bfe,-(a7)                        
  00134  4ead030a              jsr      f3_4238                            
  00138  4ead0312              jsr      f3_4384                            
  0013c  548f                  addq.l   #2,a7                              
  0013e  6012                  bra.s    L0152                              
L0140:
  00140  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  00144  4ead030a              jsr      f3_4238                            
  00148  4ead0312              jsr      f3_4384                            
  0014c  548f                  addq.l   #2,a7                              
  0014e  600005e6              bra.w    L0736                              
L0152:
  00152  4a3061b0ffff9888      tst.b    (-$6778,za0,d6.w)                  
  0015a  672e                  beq.s    L018a                              
  0015c  7012                  moveq    #18,d0                             
  0015e  c1c5                  muls.w   d5,d0                              
  00160  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  00166  3044                  movea.w  d4,a0                              
  00168  d1c8                  adda.l   a0,a0                              
  0016a  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  0016e  4ead024a              jsr      f2_7a2c                            
  00172  3d40fff0              move.w   d0,-$10(a6)                        
  00176  3e86                  move.w   d6,(a7)                            
  00178  4ead024a              jsr      f2_7a2c                            
  0017c  b06efff0              cmp.w    -$10(a6),d0                        
  00180  548f                  addq.l   #2,a7                              
  00182  6706                  beq.s    L018a                              
  00184  4a07                  tst.b    d7                                 
  00186  670005ae              beq.w    L0736                              
L018a:
  0018a  7012                  moveq    #18,d0                             
  0018c  c1c5                  muls.w   d5,d0                              
  0018e  0680ffff88b4          addi.l   #$ffff88b4,d0                      
  00194  3044                  movea.w  d4,a0                              
  00196  d1c8                  adda.l   a0,a0                              
  00198  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  0019c  4ead024a              jsr      f2_7a2c                            
  001a0  33c0ffff8d9e          move.w   d0,g_7262                          
  001a6  3e80                  move.w   d0,(a7)                            
  001a8  4ead01e2              jsr      f2_6ca0                            
  001ac  4a39ffff8dea          tst.b    g_7216                             
  001b2  548f                  addq.l   #2,a7                              
  001b4  67000580              beq.w    L0736                              
  001b8  4a39ffff980e          tst.b    g_67f2                             
  001be  66000576              bne.w    L0736                              
  001c2  302efffe              move.w   -$2(a6),d0                         
  001c6  b079ffff8894          cmp.w    g_776c,d0                          
  001cc  671a                  beq.s    L01e8                              
  001ce  302efffc              move.w   -$4(a6),d0                         
  001d2  b079ffff836c          cmp.w    g_7c94,d0                          
  001d8  660e                  bne.s    L01e8                              
  001da  302efffa              move.w   -$6(a6),d0                         
  001de  b079ffff836e          cmp.w    g_7c92,d0                          
  001e4  67000550              beq.w    L0736                              
L01e8:
  001e8  48780015              pea      ($15).w                            
  001ec  4ead0152              jsr      f2_4724                            
  001f0  7601                  moveq    #1,d3                              
  001f2  588f                  addq.l   #4,a7                              
  001f4  6020                  bra.s    L0216                              
L01f6:
  001f6  4a79ffff8370          tst.w    g_7c90                             
  001fc  6f16                  ble.s    L0214                              
  001fe  4a7033b0ffff8c78      tst.w    (-$7388,za0,d3.w*2)                
  00206  670c                  beq.s    L0214                              
  00208  4a07                  tst.b    d7                                 
  0020a  6608                  bne.s    L0214                              
  0020c  3f03                  move.w   d3,-(a7)                           
  0020e  4ead0672              jsr      f6_294e                            
  00212  548f                  addq.l   #2,a7                              
L0214:
  00214  5243                  addq.w   #1,d3                              
L0216:
  00216  b679ffff883e          cmp.w    g_77c2,d3                          
  0021c  6fd8                  ble.s    L01f6                              
  0021e  1f3c0001              move.b   #1,-(a7)                           
  00222  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  00228  4ead016a              jsr      f2_549e                            
  0022c  1e87                  move.b   d7,(a7)                            
  0022e  4ead026a              jsr      f3_0000                            
  00232  588f                  addq.l   #4,a7                              
  00234  60000500              bra.w    L0736                              
L0238:
  00238  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  0023c  4ead030a              jsr      f3_4238                            
  00240  4ead0312              jsr      f3_4384                            
  00244  548f                  addq.l   #2,a7                              
  00246  600004ee              bra.w    L0736                              
L024a:
  0024a  70ff                  moveq    #-1,d0                             
  0024c  d045                  add.w    d5,d0                              
  0024e  c1fc0012              muls.w   #$12,d0                            
  00252  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  00258  3044                  movea.w  d4,a0                              
  0025a  d1c8                  adda.l   a0,a0                              
  0025c  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  00260  4ead024a              jsr      f2_7a2c                            
  00264  3d40fff0              move.w   d0,-$10(a6)                        
  00268  3e86                  move.w   d6,(a7)                            
  0026a  4ead024a              jsr      f2_7a2c                            
  0026e  b06efff0              cmp.w    -$10(a6),d0                        
  00272  548f                  addq.l   #2,a7                              
  00274  6714                  beq.s    L028a                              
  00276  70f1                  moveq    #-15,d0                            
  00278  d079ffff836e          add.w    g_7c92,d0                          
  0027e  b07063b0ffff8aaa      cmp.w    (-$7556,za0,d6.w*2),d0             
  00286  6600015c              bne.w    L03e4                              
L028a:
  0028a  70f1                  moveq    #-15,d0                            
  0028c  d079ffff836e          add.w    g_7c92,d0                          
  00292  b07063b0ffff8a56      cmp.w    (-$75aa,za0,d6.w*2),d0             
  0029a  6658                  bne.s    L02f4                              
  0029c  70ff                  moveq    #-1,d0                             
  0029e  d045                  add.w    d5,d0                              
  002a0  c1fc0012              muls.w   #$12,d0                            
  002a4  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  002aa  3044                  movea.w  d4,a0                              
  002ac  d1c8                  adda.l   a0,a0                              
  002ae  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  002b2  4ead024a              jsr      f2_7a2c                            
  002b6  3d40fff0              move.w   d0,-$10(a6)                        
  002ba  3e86                  move.w   d6,(a7)                            
  002bc  4ead024a              jsr      f2_7a2c                            
  002c0  b06efff0              cmp.w    -$10(a6),d0                        
  002c4  548f                  addq.l   #2,a7                              
  002c6  672c                  beq.s    L02f4                              
  002c8  4a3061b0ffff989d      tst.b    (-$6763,za0,d6.w)                  
  002d0  6610                  bne.s    L02e2                              
  002d2  3f3c0bfe              move.w   #$bfe,-(a7)                        
  002d6  4ead030a              jsr      f3_4238                            
  002da  4ead0312              jsr      f3_4384                            
  002de  548f                  addq.l   #2,a7                              
  002e0  6012                  bra.s    L02f4                              
L02e2:
  002e2  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  002e6  4ead030a              jsr      f3_4238                            
  002ea  4ead0312              jsr      f3_4384                            
  002ee  548f                  addq.l   #2,a7                              
  002f0  60000444              bra.w    L0736                              
L02f4:
  002f4  4a3061b0ffff989d      tst.b    (-$6763,za0,d6.w)                  
  002fc  6732                  beq.s    L0330                              
  002fe  70ff                  moveq    #-1,d0                             
  00300  d045                  add.w    d5,d0                              
  00302  c1fc0012              muls.w   #$12,d0                            
  00306  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0030c  3044                  movea.w  d4,a0                              
  0030e  d1c8                  adda.l   a0,a0                              
  00310  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  00314  4ead024a              jsr      f2_7a2c                            
  00318  3d40fff0              move.w   d0,-$10(a6)                        
  0031c  3e86                  move.w   d6,(a7)                            
  0031e  4ead024a              jsr      f2_7a2c                            
  00322  b06efff0              cmp.w    -$10(a6),d0                        
  00326  548f                  addq.l   #2,a7                              
  00328  6706                  beq.s    L0330                              
  0032a  4a07                  tst.b    d7                                 
  0032c  67000408              beq.w    L0736                              
L0330:
  00330  70ff                  moveq    #-1,d0                             
  00332  d045                  add.w    d5,d0                              
  00334  c1fc0012              muls.w   #$12,d0                            
  00338  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  0033e  3044                  movea.w  d4,a0                              
  00340  d1c8                  adda.l   a0,a0                              
  00342  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  00346  4ead024a              jsr      f2_7a2c                            
  0034a  33c0ffff8d9e          move.w   d0,g_7262                          
  00350  3e80                  move.w   d0,(a7)                            
  00352  4ead01e2              jsr      f2_6ca0                            
  00356  4a39ffff8dea          tst.b    g_7216                             
  0035c  548f                  addq.l   #2,a7                              
  0035e  670003d6              beq.w    L0736                              
  00362  4a39ffff980e          tst.b    g_67f2                             
  00368  660003cc              bne.w    L0736                              
  0036c  302efffe              move.w   -$2(a6),d0                         
  00370  b079ffff8894          cmp.w    g_776c,d0                          
  00376  671a                  beq.s    L0392                              
  00378  302efffc              move.w   -$4(a6),d0                         
  0037c  b079ffff836c          cmp.w    g_7c94,d0                          
  00382  660e                  bne.s    L0392                              
  00384  302efffa              move.w   -$6(a6),d0                         
  00388  b079ffff836e          cmp.w    g_7c92,d0                          
  0038e  670003a6              beq.w    L0736                              
L0392:
  00392  2f3cffeb0000          move.l   #$ffeb0000,-(a7)                   
  00398  4ead0152              jsr      f2_4724                            
  0039c  7601                  moveq    #1,d3                              
  0039e  588f                  addq.l   #4,a7                              
  003a0  6020                  bra.s    L03c2                              
L03a2:
  003a2  4a79ffff8370          tst.w    g_7c90                             
  003a8  6f16                  ble.s    L03c0                              
  003aa  4a7033b0ffff8c78      tst.w    (-$7388,za0,d3.w*2)                
  003b2  670c                  beq.s    L03c0                              
  003b4  4a07                  tst.b    d7                                 
  003b6  6608                  bne.s    L03c0                              
  003b8  3f03                  move.w   d3,-(a7)                           
  003ba  4ead0672              jsr      f6_294e                            
  003be  548f                  addq.l   #2,a7                              
L03c0:
  003c0  5243                  addq.w   #1,d3                              
L03c2:
  003c2  b679ffff883e          cmp.w    g_77c2,d3                          
  003c8  6fd8                  ble.s    L03a2                              
  003ca  1f3c0001              move.b   #1,-(a7)                           
  003ce  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  003d4  4ead016a              jsr      f2_549e                            
  003d8  1e87                  move.b   d7,(a7)                            
  003da  4ead026a              jsr      f3_0000                            
  003de  588f                  addq.l   #4,a7                              
  003e0  60000354              bra.w    L0736                              
L03e4:
  003e4  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  003e8  4ead030a              jsr      f3_4238                            
  003ec  4ead0312              jsr      f3_4384                            
  003f0  548f                  addq.l   #2,a7                              
  003f2  60000342              bra.w    L0736                              
L03f6:
  003f6  7012                  moveq    #18,d0                             
  003f8  c1c5                  muls.w   d5,d0                              
  003fa  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  00400  3044                  movea.w  d4,a0                              
  00402  d1c8                  adda.l   a0,a0                              
  00404  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  00408  4ead024a              jsr      f2_7a2c                            
  0040c  3d40fff0              move.w   d0,-$10(a6)                        
  00410  3e86                  move.w   d6,(a7)                            
  00412  4ead024a              jsr      f2_7a2c                            
  00416  b06efff0              cmp.w    -$10(a6),d0                        
  0041a  548f                  addq.l   #2,a7                              
  0041c  6714                  beq.s    L0432                              
  0041e  70ff                  moveq    #-1,d0                             
  00420  d079ffff836c          add.w    g_7c94,d0                          
  00426  b07063b0ffff8a2c      cmp.w    (-$75d4,za0,d6.w*2),d0             
  0042e  66000150              bne.w    L0580                              
L0432:
  00432  70ff                  moveq    #-1,d0                             
  00434  d079ffff836c          add.w    g_7c94,d0                          
  0043a  b07063b0ffff8a2c      cmp.w    (-$75d4,za0,d6.w*2),d0             
  00442  6654                  bne.s    L0498                              
  00444  7012                  moveq    #18,d0                             
  00446  c1c5                  muls.w   d5,d0                              
  00448  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  0044e  3044                  movea.w  d4,a0                              
  00450  d1c8                  adda.l   a0,a0                              
  00452  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  00456  4ead024a              jsr      f2_7a2c                            
  0045a  3d40fff0              move.w   d0,-$10(a6)                        
  0045e  3e86                  move.w   d6,(a7)                            
  00460  4ead024a              jsr      f2_7a2c                            
  00464  b06efff0              cmp.w    -$10(a6),d0                        
  00468  548f                  addq.l   #2,a7                              
  0046a  672c                  beq.s    L0498                              
  0046c  4a3061b0ffff985e      tst.b    (-$67a2,za0,d6.w)                  
  00474  6610                  bne.s    L0486                              
  00476  3f3c0bfe              move.w   #$bfe,-(a7)                        
  0047a  4ead030a              jsr      f3_4238                            
  0047e  4ead0312              jsr      f3_4384                            
  00482  548f                  addq.l   #2,a7                              
  00484  6012                  bra.s    L0498                              
L0486:
  00486  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  0048a  4ead030a              jsr      f3_4238                            
  0048e  4ead0312              jsr      f3_4384                            
  00492  548f                  addq.l   #2,a7                              
  00494  600002a0              bra.w    L0736                              
L0498:
  00498  4a3061b0ffff985e      tst.b    (-$67a2,za0,d6.w)                  
  004a0  672e                  beq.s    L04d0                              
  004a2  7012                  moveq    #18,d0                             
  004a4  c1c5                  muls.w   d5,d0                              
  004a6  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  004ac  3044                  movea.w  d4,a0                              
  004ae  d1c8                  adda.l   a0,a0                              
  004b0  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  004b4  4ead024a              jsr      f2_7a2c                            
  004b8  3d40fff0              move.w   d0,-$10(a6)                        
  004bc  3e86                  move.w   d6,(a7)                            
  004be  4ead024a              jsr      f2_7a2c                            
  004c2  b06efff0              cmp.w    -$10(a6),d0                        
  004c6  548f                  addq.l   #2,a7                              
  004c8  6706                  beq.s    L04d0                              
  004ca  4a07                  tst.b    d7                                 
  004cc  67000268              beq.w    L0736                              
L04d0:
  004d0  7012                  moveq    #18,d0                             
  004d2  c1c5                  muls.w   d5,d0                              
  004d4  0680ffff88b0          addi.l   #$ffff88b0,d0                      
  004da  3044                  movea.w  d4,a0                              
  004dc  d1c8                  adda.l   a0,a0                              
  004de  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  004e2  4ead024a              jsr      f2_7a2c                            
  004e6  33c0ffff8d9e          move.w   d0,g_7262                          
  004ec  3e80                  move.w   d0,(a7)                            
  004ee  4ead01e2              jsr      f2_6ca0                            
  004f2  4a39ffff8dea          tst.b    g_7216                             
  004f8  548f                  addq.l   #2,a7                              
  004fa  6700023a              beq.w    L0736                              
  004fe  4a39ffff980e          tst.b    g_67f2                             
  00504  66000230              bne.w    L0736                              
  00508  302efffe              move.w   -$2(a6),d0                         
  0050c  b079ffff8894          cmp.w    g_776c,d0                          
  00512  671a                  beq.s    L052e                              
  00514  302efffc              move.w   -$4(a6),d0                         
  00518  b079ffff836c          cmp.w    g_7c94,d0                          
  0051e  660e                  bne.s    L052e                              
  00520  302efffa              move.w   -$6(a6),d0                         
  00524  b079ffff836e          cmp.w    g_7c92,d0                          
  0052a  6700020a              beq.w    L0736                              
L052e:
  0052e  2f3c0000ffeb          move.l   #$ffeb,-(a7)                       
  00534  4ead0152              jsr      f2_4724                            
  00538  7601                  moveq    #1,d3                              
  0053a  588f                  addq.l   #4,a7                              
  0053c  6020                  bra.s    L055e                              
L053e:
  0053e  4a79ffff8370          tst.w    g_7c90                             
  00544  6f16                  ble.s    L055c                              
  00546  4a7033b0ffff8c78      tst.w    (-$7388,za0,d3.w*2)                
  0054e  670c                  beq.s    L055c                              
  00550  4a07                  tst.b    d7                                 
  00552  6608                  bne.s    L055c                              
  00554  3f03                  move.w   d3,-(a7)                           
  00556  4ead0672              jsr      f6_294e                            
  0055a  548f                  addq.l   #2,a7                              
L055c:
  0055c  5243                  addq.w   #1,d3                              
L055e:
  0055e  b679ffff883e          cmp.w    g_77c2,d3                          
  00564  6fd8                  ble.s    L053e                              
  00566  1f3c0001              move.b   #1,-(a7)                           
  0056a  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  00570  4ead016a              jsr      f2_549e                            
  00574  1e87                  move.b   d7,(a7)                            
  00576  4ead026a              jsr      f3_0000                            
  0057a  588f                  addq.l   #4,a7                              
  0057c  600001b8              bra.w    L0736                              
L0580:
  00580  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  00584  4ead030a              jsr      f3_4238                            
  00588  4ead0312              jsr      f3_4384                            
  0058c  548f                  addq.l   #2,a7                              
  0058e  600001a6              bra.w    L0736                              
L0592:
  00592  7001                  moveq    #1,d0                              
  00594  d045                  add.w    d5,d0                              
  00596  c1fc0012              muls.w   #$12,d0                            
  0059a  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  005a0  3044                  movea.w  d4,a0                              
  005a2  d1c8                  adda.l   a0,a0                              
  005a4  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  005a8  4ead024a              jsr      f2_7a2c                            
  005ac  3d40fff0              move.w   d0,-$10(a6)                        
  005b0  3e86                  move.w   d6,(a7)                            
  005b2  4ead024a              jsr      f2_7a2c                            
  005b6  b06efff0              cmp.w    -$10(a6),d0                        
  005ba  548f                  addq.l   #2,a7                              
  005bc  6714                  beq.s    L05d2                              
  005be  70f1                  moveq    #-15,d0                            
  005c0  d079ffff836e          add.w    g_7c92,d0                          
  005c6  b07063b0ffff8a56      cmp.w    (-$75aa,za0,d6.w*2),d0             
  005ce  66000158              bne.w    L0728                              
L05d2:
  005d2  70f1                  moveq    #-15,d0                            
  005d4  d079ffff836e          add.w    g_7c92,d0                          
  005da  b07063b0ffff8a56      cmp.w    (-$75aa,za0,d6.w*2),d0             
  005e2  6658                  bne.s    L063c                              
  005e4  7001                  moveq    #1,d0                              
  005e6  d045                  add.w    d5,d0                              
  005e8  c1fc0012              muls.w   #$12,d0                            
  005ec  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  005f2  3044                  movea.w  d4,a0                              
  005f4  d1c8                  adda.l   a0,a0                              
  005f6  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  005fa  4ead024a              jsr      f2_7a2c                            
  005fe  3d40fff0              move.w   d0,-$10(a6)                        
  00602  3e86                  move.w   d6,(a7)                            
  00604  4ead024a              jsr      f2_7a2c                            
  00608  b06efff0              cmp.w    -$10(a6),d0                        
  0060c  548f                  addq.l   #2,a7                              
  0060e  672c                  beq.s    L063c                              
  00610  4a3061b0ffff9873      tst.b    (-$678d,za0,d6.w)                  
  00618  6610                  bne.s    L062a                              
  0061a  3f3c0bfe              move.w   #$bfe,-(a7)                        
  0061e  4ead030a              jsr      f3_4238                            
  00622  4ead0312              jsr      f3_4384                            
  00626  548f                  addq.l   #2,a7                              
  00628  6012                  bra.s    L063c                              
L062a:
  0062a  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  0062e  4ead030a              jsr      f3_4238                            
  00632  4ead0312              jsr      f3_4384                            
  00636  548f                  addq.l   #2,a7                              
  00638  600000fc              bra.w    L0736                              
L063c:
  0063c  4a3061b0ffff9873      tst.b    (-$678d,za0,d6.w)                  
  00644  6732                  beq.s    L0678                              
  00646  70ff                  moveq    #-1,d0                             
  00648  d045                  add.w    d5,d0                              
  0064a  c1fc0012              muls.w   #$12,d0                            
  0064e  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  00654  3044                  movea.w  d4,a0                              
  00656  d1c8                  adda.l   a0,a0                              
  00658  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  0065c  4ead024a              jsr      f2_7a2c                            
  00660  3d40fff0              move.w   d0,-$10(a6)                        
  00664  3e86                  move.w   d6,(a7)                            
  00666  4ead024a              jsr      f2_7a2c                            
  0066a  b06efff0              cmp.w    -$10(a6),d0                        
  0066e  548f                  addq.l   #2,a7                              
  00670  6706                  beq.s    L0678                              
  00672  4a07                  tst.b    d7                                 
  00674  670000c0              beq.w    L0736                              
L0678:
  00678  7001                  moveq    #1,d0                              
  0067a  d045                  add.w    d5,d0                              
  0067c  c1fc0012              muls.w   #$12,d0                            
  00680  0680ffff88b2          addi.l   #$ffff88b2,d0                      
  00686  3044                  movea.w  d4,a0                              
  00688  d1c8                  adda.l   a0,a0                              
  0068a  3f300800              move.w   $0(a0,d0.l),-(a7)                  
  0068e  4ead024a              jsr      f2_7a2c                            
  00692  33c0ffff8d9e          move.w   d0,g_7262                          
  00698  3e80                  move.w   d0,(a7)                            
  0069a  4ead01e2              jsr      f2_6ca0                            
  0069e  4a39ffff8dea          tst.b    g_7216                             
  006a4  548f                  addq.l   #2,a7                              
  006a6  6700008e              beq.w    L0736                              
  006aa  4a39ffff980e          tst.b    g_67f2                             
  006b0  66000084              bne.w    L0736                              
  006b4  302efffe              move.w   -$2(a6),d0                         
  006b8  b079ffff8894          cmp.w    g_776c,d0                          
  006be  6718                  beq.s    L06d8                              
  006c0  302efffc              move.w   -$4(a6),d0                         
  006c4  b079ffff836c          cmp.w    g_7c94,d0                          
  006ca  660c                  bne.s    L06d8                              
  006cc  302efffa              move.w   -$6(a6),d0                         
  006d0  b079ffff836e          cmp.w    g_7c92,d0                          
  006d6  675e                  beq.s    L0736                              
L06d8:
  006d8  2f3c00150000          move.l   #$150000,-(a7)                     
  006de  4ead0152              jsr      f2_4724                            
  006e2  7601                  moveq    #1,d3                              
  006e4  588f                  addq.l   #4,a7                              
  006e6  6020                  bra.s    L0708                              
L06e8:
  006e8  4a79ffff8370          tst.w    g_7c90                             
  006ee  6f16                  ble.s    L0706                              
  006f0  4a7033b0ffff8c78      tst.w    (-$7388,za0,d3.w*2)                
  006f8  670c                  beq.s    L0706                              
  006fa  4a07                  tst.b    d7                                 
  006fc  6608                  bne.s    L0706                              
  006fe  3f03                  move.w   d3,-(a7)                           
  00700  4ead0672              jsr      f6_294e                            
  00704  548f                  addq.l   #2,a7                              
L0706:
  00706  5243                  addq.w   #1,d3                              
L0708:
  00708  b679ffff883e          cmp.w    g_77c2,d3                          
  0070e  6fd8                  ble.s    L06e8                              
  00710  1f3c0001              move.b   #1,-(a7)                           
  00714  3f39ffff8d9e          move.w   g_7262,-(a7)                       
  0071a  4ead016a              jsr      f2_549e                            
  0071e  1e87                  move.b   d7,(a7)                            
  00720  4ead026a              jsr      f3_0000                            
  00724  588f                  addq.l   #4,a7                              
  00726  600e                  bra.s    L0736                              
L0728:
  00728  3f3c5bd1              move.w   #$5bd1,-(a7)                       
  0072c  4ead030a              jsr      f3_4238                            
  00730  4ead0312              jsr      f3_4384                            
  00734  548f                  addq.l   #2,a7                              
L0736:
  00736  4a39ffff8dfb          tst.b    g_7205                             
  0073c  6604                  bne.s    L0742                              
  0073e  4ead032a              jsr      f3_44be                            
L0742:
  00742  4a79ffff8370          tst.w    g_7c90                             
L0748:
  00748  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  0074c  4e5e                  unlk     a6                                 
  0074e  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_0750   [jump table #242]
;----------------------------------------------------------------------
f7_0750:
  00750  4e56fff2              link     a6,#-14                            
  00754  2f0c                  move.l   a4,-(a7)                           
  00756  206e000c              movea.l  $c(a6),a0                          
  0075a  28680002              movea.l  $2(a0),a4                          
  0075e  4ead0192              jsr      f2_648e                            
  00762  206e000c              movea.l  $c(a6),a0                          
  00766  0c500006              cmpi.w   #6,(a0)                            
  0076a  6616                  bne.s    L0782                              
  0076c  b9ee0010              cmpa.l   $10(a6),a4                         
  00770  6610                  bne.s    L0782                              
  00772  206e0008              movea.l  $8(a6),a0                          
  00776  30bc0014              move.w   #$14,(a0)                          
  0077a  1d7c00010014          move.b   #1,$14(a6)                         
  00780  6004                  bra.s    L0786                              
L0782:
  00782  422e0014              clr.b    $14(a6)                            
L0786:
  00786  285f                  movea.l  (a7)+,a4                           
  00788  4e5e                  unlk     a6                                 
  0078a  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f7_078e   [jump table #241]
;----------------------------------------------------------------------
f7_078e:
  0078e  4e56fb82              link     a6,#-1150                          
  00792  48e71f18              movem.l  d3/d4/d5/d6/d7/a3/a4,-(a7)         
  00796  41eefd5e              lea      -$2a2(a6),a0                       
  0079a  43f9ffffaeda          lea      g_5126,a1                          
  007a0  20d9                  move.l   (a1)+,(a0)+                        
  007a2  20d9                  move.l   (a1)+,(a0)+                        
  007a4  20d9                  move.l   (a1)+,(a0)+                        
  007a6  41eefd52              lea      -$2ae(a6),a0                       
  007aa  43f9ffffaee6          lea      g_511a,a1                          
  007b0  20d9                  move.l   (a1)+,(a0)+                        
  007b2  20d9                  move.l   (a1)+,(a0)+                        
  007b4  20d9                  move.l   (a1)+,(a0)+                        
  007b6  701e                  moveq    #30,d0                             
  007b8  c1ee000e              muls.w   $e(a6),d0                          
  007bc  323c0276              move.w   #$276,d1                           
  007c0  c3ee000c              muls.w   $c(a6),d1                          
  007c4  0680ffff7892          addi.l   #$ffff7892,d0                      
  007ca  d081                  add.l    d1,d0                              
  007cc  2640                  movea.l  d0,a3                              
  007ce  422efcd5              clr.b    -$32b(a6)                          
  007d2  486efc88              pea      -$378(a6)                          
  007d6  a874                  _GetPort                                    ; $a874
  007d8  0c79000fffff8894      cmpi.w   #$f,g_776c                         
  007e0  6f04                  ble.s    L07e6                              
  007e2  7605                  moveq    #5,d3                              
  007e4  601e                  bra.s    L0804                              
L07e6:
  007e6  0c79000affff8894      cmpi.w   #$a,g_776c                         
  007ee  6f04                  ble.s    L07f4                              
  007f0  7604                  moveq    #4,d3                              
  007f2  6010                  bra.s    L0804                              
L07f4:
  007f4  0c790005ffff8894      cmpi.w   #5,g_776c                          
  007fc  6f04                  ble.s    L0802                              
  007fe  7603                  moveq    #3,d3                              
  00800  6002                  bra.s    L0804                              
L0802:
  00802  7602                  moveq    #2,d3                              
L0804:
  00804  4a2e0008              tst.b    $8(a6)                             
  00808  6744                  beq.s    L084e                              
  0080a  7c00                  moveq    #0,d6                              
  0080c  603a                  bra.s    L0848                              
L080e:
  0080e  7a00                  moveq    #0,d5                              
  00810  6030                  bra.s    L0842                              
L0812:
  00812  7005                  moveq    #5,d0                              
  00814  c1c6                  muls.w   d6,d0                              
  00816  41eefd88              lea      -$278(a6),a0                       
  0081a  d088                  add.l    a0,d0                              
  0081c  3045                  movea.w  d5,a0                              
  0081e  42300800              clr.b    $0(a0,d0.l)                        
  00822  7005                  moveq    #5,d0                              
  00824  c1c6                  muls.w   d6,d0                              
  00826  3040                  movea.w  d0,a0                              
  00828  d1cb                  adda.l   a3,a0                              
  0082a  d0c5                  adda.w   d5,a0                              
  0082c  7005                  moveq    #5,d0                              
  0082e  c1c6                  muls.w   d6,d0                              
  00830  43eefd88              lea      -$278(a6),a1                       
  00834  d089                  add.l    a1,d0                              
  00836  3245                  movea.w  d5,a1                              
  00838  d089                  add.l    a1,d0                              
  0083a  2240                  movea.l  d0,a1                              
  0083c  7001                  moveq    #1,d0                              
  0083e  a02e                  _BlockMove                                  ; $a02e
  00840  5245                  addq.w   #1,d5                              
L0842:
  00842  b645                  cmp.w    d5,d3                              
  00844  6ecc                  bgt.s    L0812                              
  00846  5246                  addq.w   #1,d6                              
L0848:
  00848  b646                  cmp.w    d6,d3                              
  0084a  6ec2                  bgt.s    L080e                              
  0084c  6050                  bra.s    L089e                              
L084e:
  0084e  7c00                  moveq    #0,d6                              
  00850  6048                  bra.s    L089a                              
L0852:
  00852  7a00                  moveq    #0,d5                              
  00854  603e                  bra.s    L0894                              
L0856:
  00856  422efcd7              clr.b    -$329(a6)                          
  0085a  6030                  bra.s    L088c                              
L085c:
  0085c  3f3c0005              move.w   #5,-(a7)                           
  00860  4ead0242              jsr      f2_79a8                            
  00864  3800                  move.w   d0,d4                              
  00866  4a764320fd5e          tst.w    (-$2a2,a6,d4.w*2)                  
  0086c  548f                  addq.l   #2,a7                              
  0086e  671c                  beq.s    L088c                              
  00870  7005                  moveq    #5,d0                              
  00872  c1c6                  muls.w   d6,d0                              
  00874  41eefd88              lea      -$278(a6),a0                       
  00878  d088                  add.l    a0,d0                              
  0087a  3045                  movea.w  d5,a0                              
  0087c  11840800              move.b   d4,$0(a0,d0.l)                     
  00880  53764320fd5e          subq.w   #1,(-$2a2,a6,d4.w*2)               
  00886  1d7c0001fcd7          move.b   #1,-$329(a6)                       
L088c:
  0088c  4a2efcd7              tst.b    -$329(a6)                          
  00890  67ca                  beq.s    L085c                              
  00892  5245                  addq.w   #1,d5                              
L0894:
  00894  b645                  cmp.w    d5,d3                              
  00896  6ebe                  bgt.s    L0856                              
  00898  5246                  addq.w   #1,d6                              
L089a:
  0089a  b646                  cmp.w    d6,d3                              
  0089c  6eb4                  bgt.s    L0852                              
L089e:
  0089e  3e03                  move.w   d3,d7                              
  008a0  cfc3                  muls.w   d3,d7                              
  008a2  de47                  add.w    d7,d7                              
  008a4  7c00                  moveq    #0,d6                              
  008a6  600000c2              bra.w    L096a                              
L08aa:
  008aa  700c                  moveq    #12,d0                             
  008ac  c1c6                  muls.w   d6,d0                              
  008ae  42b60920fce2          clr.l    (-$31e,a6,d0.l)                    
  008b4  42b60920fcde          clr.l    (-$322,a6,d0.l)                    
  008ba  42b60920fcda          clr.l    (-$326,a6,d0.l)                    
  008c0  700c                  moveq    #12,d0                             
  008c2  c1c6                  muls.w   d6,d0                              
  008c4  42b60920fd1e          clr.l    (-$2e2,a6,d0.l)                    
  008ca  42b60920fd1a          clr.l    (-$2e6,a6,d0.l)                    
  008d0  42b60920fd16          clr.l    (-$2ea,a6,d0.l)                    
  008d6  7a00                  moveq    #0,d5                              
  008d8  605a                  bra.s    L0934                              
L08da:
  008da  7005                  moveq    #5,d0                              
  008dc  c1c6                  muls.w   d6,d0                              
  008de  41eefd88              lea      -$278(a6),a0                       
  008e2  d088                  add.l    a0,d0                              
  008e4  3045                  movea.w  d5,a0                              
  008e6  10300800              move.b   $0(a0,d0.l),d0                     
  008ea  49c0                  extb.l   d0                                 
  008ec  720c                  moveq    #12,d1                             
  008ee  c3c6                  muls.w   d6,d1                              
  008f0  41f61920fcdc          lea      (-$324,a6,d1.l),a0                 
  008f6  48760b20fd52          pea      (-$2ae,a6,d0.l*2)                  
  008fc  4850                  pea      (a0)                               
  008fe  3f3c2000              move.w   #$2000,-(a7)                       
  00902  a9eb                  _FP68K                                      ; $a9eb
  00904  3110                  move.w   (a0),-(a0)                         
  00906  7005                  moveq    #5,d0                              
  00908  c1c5                  muls.w   d5,d0                              
  0090a  41eefd88              lea      -$278(a6),a0                       
  0090e  d088                  add.l    a0,d0                              
  00910  3046                  movea.w  d6,a0                              
  00912  10300800              move.b   $0(a0,d0.l),d0                     
  00916  49c0                  extb.l   d0                                 
  00918  720c                  moveq    #12,d1                             
  0091a  c3c6                  muls.w   d6,d1                              
  0091c  41f61920fd18          lea      (-$2e8,a6,d1.l),a0                 
  00922  48760b20fd52          pea      (-$2ae,a6,d0.l*2)                  
  00928  4850                  pea      (a0)                               
  0092a  3f3c2000              move.w   #$2000,-(a7)                       
  0092e  a9eb                  _FP68K                                      ; $a9eb
  00930  3110                  move.w   (a0),-(a0)                         
  00932  5245                  addq.w   #1,d5                              
L0934:
  00934  b645                  cmp.w    d5,d3                              
  00936  6ea2                  bgt.s    L08da                              
  00938  700c                  moveq    #12,d0                             
  0093a  c1c6                  muls.w   d6,d0                              
  0093c  41f60920fcdc          lea      (-$324,a6,d0.l),a0                 
  00942  487a0cd6              pea      L161a(pc)                          
  00946  4850                  pea      (a0)                               
  00948  3f3c2006              move.w   #$2006,-(a7)                       
  0094c  a9eb                  _FP68K                                      ; $a9eb
  0094e  3110                  move.w   (a0),-(a0)                         
  00950  700c                  moveq    #12,d0                             
  00952  c1c6                  muls.w   d6,d0                              
  00954  41f60920fd18          lea      (-$2e8,a6,d0.l),a0                 
  0095a  487a0cbc              pea      L1618(pc)                          
  0095e  4850                  pea      (a0)                               
  00960  3f3c2006              move.w   #$2006,-(a7)                       
  00964  a9eb                  _FP68K                                      ; $a9eb
  00966  3110                  move.w   (a0),-(a0)                         
  00968  5246                  addq.w   #1,d6                              
L096a:
  0096a  b646                  cmp.w    d6,d3                              
  0096c  6e00ff3c              bgt.w    L08aa                              
  00970  3f3c03e8              move.w   #$3e8,-(a7)                        
  00974  486efc98              pea      -$368(a6)                          
  00978  486efcd8              pea      -$328(a6)                          
  0097c  4ead025a              jsr      f2_194e                            
  00980  4a2e0008              tst.b    $8(a6)                             
  00984  4fef000a              lea      $a(a7),a7                          
  00988  6706                  beq.s    L0990                              
  0098a  2d6efcb8fcbc          move.l   -$348(a6),-$344(a6)                
L0990:
  00990  4a2e000a              tst.b    $a(a6)                             
  00994  6706                  beq.s    L099c                              
  00996  2d6efcc0fcbc          move.l   -$340(a6),-$344(a6)                
L099c:
  0099c  4a2e000a              tst.b    $a(a6)                             
  009a0  660c                  bne.s    L09ae                              
  009a2  4a2e0008              tst.b    $8(a6)                             
  009a6  6606                  bne.s    L09ae                              
  009a8  2d6efcc4fcbc          move.l   -$33c(a6),-$344(a6)                
L09ae:
  009ae  7c00                  moveq    #0,d6                              
  009b0  6070                  bra.s    L0a22                              
L09b2:
  009b2  7a00                  moveq    #0,d5                              
  009b4  6064                  bra.s    L0a1a                              
L09b6:
  009b6  7018                  moveq    #24,d0                             
  009b8  c1c6                  muls.w   d6,d0                              
  009ba  41eefda2              lea      -$25e(a6),a0                       
  009be  d088                  add.l    a0,d0                              
  009c0  41f05590              lea      ($0,za0,d5.w*4),a0                 
  009c4  42b00800              clr.l    $0(a0,d0.l)                        
  009c8  42a7                  clr.l    -(a7)                              
  009ca  700a                  moveq    #10,d0                             
  009cc  c1c6                  muls.w   d6,d0                              
  009ce  06400097              addi.w   #$97,d0                            
  009d2  d045                  add.w    d5,d0                              
  009d4  3f00                  move.w   d0,-(a7)                           
  009d6  a9bc                  _GetPicture                                 ; $a9bc
  009d8  7018                  moveq    #24,d0                             
  009da  c1c6                  muls.w   d6,d0                              
  009dc  41eefda2              lea      -$25e(a6),a0                       
  009e0  d088                  add.l    a0,d0                              
  009e2  41f05590              lea      ($0,za0,d5.w*4),a0                 
  009e6  219f0800              move.l   (a7)+,$0(a0,d0.l)                  
  009ea  7018                  moveq    #24,d0                             
  009ec  c1c6                  muls.w   d6,d0                              
  009ee  41eefda2              lea      -$25e(a6),a0                       
  009f2  d088                  add.l    a0,d0                              
  009f4  41f05590              lea      ($0,za0,d5.w*4),a0                 
  009f8  4ab00800              tst.l    $0(a0,d0.l)                        
  009fc  6606                  bne.s    L0a04                              
  009fe  7000                  moveq    #0,d0                              
  00a00  60000c0e              bra.w    L1610                              
L0a04:
  00a04  7018                  moveq    #24,d0                             
  00a06  c1c6                  muls.w   d6,d0                              
  00a08  41eefda2              lea      -$25e(a6),a0                       
  00a0c  d088                  add.l    a0,d0                              
  00a0e  41f05590              lea      ($0,za0,d5.w*4),a0                 
  00a12  20700800              movea.l  $0(a0,d0.l),a0                     
  00a16  a029                  _HLock                                      ; $a029
  00a18  5245                  addq.w   #1,d5                              
L0a1a:
  00a1a  0c450005              cmpi.w   #5,d5                              
  00a1e  6d96                  blt.s    L09b6                              
  00a20  5246                  addq.w   #1,d6                              
L0a22:
  00a22  0c460005              cmpi.w   #5,d6                              
  00a26  6d8a                  blt.s    L09b2                              
  00a28  7801                  moveq    #1,d4                              
  00a2a  6038                  bra.s    L0a64                              
L0a2c:
  00a2c  42764320fd5c          clr.w    (-$2a4,a6,d4.w*2)                  
  00a32  7c00                  moveq    #0,d6                              
  00a34  6028                  bra.s    L0a5e                              
L0a36:
  00a36  7a00                  moveq    #0,d5                              
  00a38  601e                  bra.s    L0a58                              
L0a3a:
  00a3a  7005                  moveq    #5,d0                              
  00a3c  c1c6                  muls.w   d6,d0                              
  00a3e  41eefd88              lea      -$278(a6),a0                       
  00a42  d088                  add.l    a0,d0                              
  00a44  3045                  movea.w  d5,a0                              
  00a46  10300800              move.b   $0(a0,d0.l),d0                     
  00a4a  49c0                  extb.l   d0                                 
  00a4c  b840                  cmp.w    d0,d4                              
  00a4e  6606                  bne.s    L0a56                              
  00a50  52764320fd5c          addq.w   #1,(-$2a4,a6,d4.w*2)               
L0a56:
  00a56  5245                  addq.w   #1,d5                              
L0a58:
  00a58  b645                  cmp.w    d5,d3                              
  00a5a  6ede                  bgt.s    L0a3a                              
  00a5c  5246                  addq.w   #1,d6                              
L0a5e:
  00a5e  b646                  cmp.w    d6,d3                              
  00a60  6ed4                  bgt.s    L0a36                              
  00a62  5244                  addq.w   #1,d4                              
L0a64:
  00a64  0c440006              cmpi.w   #6,d4                              
  00a68  6dc2                  blt.s    L0a2c                              
  00a6a  2f2efcbc              move.l   -$344(a6),-(a7)                    
  00a6e  2f3c000011bc          move.l   STR_11bc,-(a7)                     ; "?"
  00a74  2f3c000011be          move.l   STR_11be,-(a7)                     ; "?"
  00a7a  2f3c000011c0          move.l   STR_11c0,-(a7)                     ; "?"
  00a80  a98b                  _ParamText                                  ; $a98b
  00a82  42a7                  clr.l    -(a7)                              
  00a84  3f3c00be              move.w   #$be,-(a7)                         
  00a88  486eff56              pea      -$aa(a6)                           
  00a8c  4878ffff              pea      ($ffff).w                          
  00a90  a97c                  _GetNewDialog                               ; $a97c
  00a92  285f                  movea.l  (a7)+,a4                           
  00a94  2f0c                  move.l   a4,-(a7)                           
  00a96  4eba0b84              jsr      f7_161c                            
  00a9a  2e8c                  move.l   a4,(a7)                            
  00a9c  a915                  _ShowWindow                                 ; $a915
  00a9e  7c03                  moveq    #3,d6                              
  00aa0  6050                  bra.s    L0af2                              
L0aa2:
  00aa2  2f0c                  move.l   a4,-(a7)                           
  00aa4  3f06                  move.w   d6,-(a7)                           
  00aa6  486eff52              pea      -$ae(a6)                           
  00aaa  486eff4e              pea      -$b2(a6)                           
  00aae  48766720ff0a          pea      (-$f6,a6,d6.w*8)                   
  00ab4  a98d                  _GetDialogItem                              ; $a98d
  00ab6  4a766320fd58          tst.w    (-$2a8,a6,d6.w*2)                  
  00abc  6f2c                  ble.s    L0aea                              
  00abe  2f0c                  move.l   a4,-(a7)                           
  00ac0  3f06                  move.w   d6,-(a7)                           
  00ac2  3f3c0040              move.w   #$40,-(a7)                         
  00ac6  70fd                  moveq    #-3,d0                             
  00ac8  d046                  add.w    d6,d0                              
  00aca  c1fc0018              muls.w   #$18,d0                            
  00ace  d08e                  add.l    a6,d0                              
  00ad0  32366320fd58          move.w   (-$2a8,a6,d6.w*2),d1               
  00ad6  41f015a0fd9e          lea      (-$262,za0,d1.w*4),a0              
  00adc  2f300800              move.l   $0(a0,d0.l),-(a7)                  
  00ae0  48766720ff0a          pea      (-$f6,a6,d6.w*8)                   
  00ae6  a98e                  _SetDialogItem                              ; $a98e
  00ae8  6006                  bra.s    L0af0                              
L0aea:
  00aea  2f0c                  move.l   a4,-(a7)                           
  00aec  3f06                  move.w   d6,-(a7)                           
  00aee  a827                  _ShowDialogItem                             ; $a827
L0af0:
  00af0  5246                  addq.w   #1,d6                              
L0af2:
  00af2  0c460008              cmpi.w   #8,d6                              
  00af6  6daa                  blt.s    L0aa2                              
  00af8  2f0c                  move.l   a4,-(a7)                           
  00afa  3f3c000b              move.w   #$b,-(a7)                          
  00afe  486eff52              pea      -$ae(a6)                           
  00b02  486eff4a              pea      -$b6(a6)                           
  00b06  486efe52              pea      -$1ae(a6)                          
  00b0a  a98d                  _GetDialogItem                              ; $a98d
  00b0c  3047                  movea.w  d7,a0                              
  00b0e  2f08                  move.l   a0,-(a7)                           
  00b10  486efb82              pea      -$47e(a6)                          
  00b14  4ead0512              jsr      f4_150e                            
  00b18  2f2eff4a              move.l   -$b6(a6),-(a7)                     
  00b1c  486efb82              pea      -$47e(a6)                          
  00b20  a98f                  _SetDialogItemText                          ; $a98f
  00b22  2f0c                  move.l   a4,-(a7)                           
  00b24  3f3c0009              move.w   #9,-(a7)                           
  00b28  486eff52              pea      -$ae(a6)                           
  00b2c  486eff4e              pea      -$b2(a6)                           
  00b30  486efe52              pea      -$1ae(a6)                          
  00b34  a98d                  _GetDialogItem                              ; $a98d
  00b36  2f0c                  move.l   a4,-(a7)                           
  00b38  a915                  _ShowWindow                                 ; $a915
  00b3a  2f0c                  move.l   a4,-(a7)                           
  00b3c  a873                  _SetPort                                    ; $a873
  00b3e  486efe52              pea      -$1ae(a6)                          
  00b42  2f3cfffefffe          move.l   #$fffefffe,-(a7)                   
  00b48  a8a9                  _InsetRect                                  ; $a8a9
  00b4a  486efe52              pea      -$1ae(a6)                          
  00b4e  2f3c00020000          move.l   #$20000,-(a7)                      
  00b54  a8a8                  _OffsetRect                                 ; $a8a8
  00b56  7c00                  moveq    #0,d6                              
  00b58  600000b4              bra.w    L0c0e                              
L0b5c:
  00b5c  7a00                  moveq    #0,d5                              
  00b5e  600000a6              bra.w    L0c06                              
L0b62:
  00b62  7028                  moveq    #40,d0                             
  00b64  c1c6                  muls.w   d6,d0                              
  00b66  41eefe5a              lea      -$1a6(a6),a0                       
  00b6a  d088                  add.l    a0,d0                              
  00b6c  41f05790              lea      ($0,za0,d5.w*8),a0                 
  00b70  41f00800              lea      $0(a0,d0.l),a0                     
  00b74  20eefe52              move.l   -$1ae(a6),(a0)+                    
  00b78  20eefe56              move.l   -$1aa(a6),(a0)+                    
  00b7c  7028                  moveq    #40,d0                             
  00b7e  c1c6                  muls.w   d6,d0                              
  00b80  41eefe5a              lea      -$1a6(a6),a0                       
  00b84  d088                  add.l    a0,d0                              
  00b86  41f05790              lea      ($0,za0,d5.w*8),a0                 
  00b8a  d088                  add.l    a0,d0                              
  00b8c  2f00                  move.l   d0,-(a7)                           
  00b8e  7028                  moveq    #40,d0                             
  00b90  c1c6                  muls.w   d6,d0                              
  00b92  41eefe5a              lea      -$1a6(a6),a0                       
  00b96  d088                  add.l    a0,d0                              
  00b98  41f05790              lea      ($0,za0,d5.w*8),a0                 
  00b9c  7228                  moveq    #40,d1                             
  00b9e  c3c6                  muls.w   d6,d1                              
  00ba0  43eefe5a              lea      -$1a6(a6),a1                       
  00ba4  d289                  add.l    a1,d1                              
  00ba6  43f05790              lea      ($0,za0,d5.w*8),a1                 
  00baa  32311806              move.w   $6(a1,d1.l),d1                     
  00bae  92700802              sub.w    $2(a0,d0.l),d1                     
  00bb2  c3c6                  muls.w   d6,d1                              
  00bb4  3f01                  move.w   d1,-(a7)                           
  00bb6  7028                  moveq    #40,d0                             
  00bb8  c1c6                  muls.w   d6,d0                              
  00bba  41eefe5a              lea      -$1a6(a6),a0                       
  00bbe  d088                  add.l    a0,d0                              
  00bc0  41f05790              lea      ($0,za0,d5.w*8),a0                 
  00bc4  7228                  moveq    #40,d1                             
  00bc6  c3c6                  muls.w   d6,d1                              
  00bc8  43eefe5a              lea      -$1a6(a6),a1                       
  00bcc  d289                  add.l    a1,d1                              
  00bce  43f05790              lea      ($0,za0,d5.w*8),a1                 
  00bd2  32311804              move.w   $4(a1,d1.l),d1                     
  00bd6  92700800              sub.w    $0(a0,d0.l),d1                     
  00bda  c3c5                  muls.w   d5,d1                              
  00bdc  3f01                  move.w   d1,-(a7)                           
  00bde  a8a8                  _OffsetRect                                 ; $a8a8
  00be0  7028                  moveq    #40,d0                             
  00be2  c1c6                  muls.w   d6,d0                              
  00be4  41eefe5a              lea      -$1a6(a6),a0                       
  00be8  d088                  add.l    a0,d0                              
  00bea  41f05790              lea      ($0,za0,d5.w*8),a0                 
  00bee  d088                  add.l    a0,d0                              
  00bf0  2f00                  move.l   d0,-(a7)                           
  00bf2  a8a1                  _FrameRect                                  ; $a8a1
  00bf4  7005                  moveq    #5,d0                              
  00bf6  c1c6                  muls.w   d6,d0                              
  00bf8  41eefd6e              lea      -$292(a6),a0                       
  00bfc  d088                  add.l    a0,d0                              
  00bfe  3045                  movea.w  d5,a0                              
  00c00  42300800              clr.b    $0(a0,d0.l)                        
  00c04  5245                  addq.w   #1,d5                              
L0c06:
  00c06  b645                  cmp.w    d5,d3                              
  00c08  6e00ff58              bgt.w    L0b62                              
  00c0c  5246                  addq.w   #1,d6                              
L0c0e:
  00c0e  b646                  cmp.w    d6,d3                              
  00c10  6e00ff4a              bgt.w    L0b5c                              
  00c14  7c00                  moveq    #0,d6                              
  00c16  605a                  bra.s    L0c72                              
L0c18:
  00c18  70ff                  moveq    #-1,d0                             
  00c1a  d043                  add.w    d3,d0                              
  00c1c  c1fc0028              muls.w   #$28,d0                            
  00c20  721e                  moveq    #30,d1                             
  00c22  d2760920fe60          add.w    (-$1a0,a6,d0.l),d1                 
  00c28  3d41fd6a              move.w   d1,-$296(a6)                       
  00c2c  30366720fe5e          move.w   (-$1a2,a6,d6.w*8),d0               
  00c32  90766720fe5a          sub.w    (-$1a6,a6,d6.w*8),d0               
  00c38  48c0                  ext.l    d0                                 
  00c3a  81fc0002              divs.w   #2,d0                              
  00c3e  d0766720fe5a          add.w    (-$1a6,a6,d6.w*8),d0               
  00c44  3d40fd6c              move.w   d0,-$294(a6)                       
  00c48  3f01                  move.w   d1,-(a7)                           
  00c4a  3f00                  move.w   d0,-(a7)                           
  00c4c  a893                  _MoveTo                                     ; $a893
  00c4e  3f3c0002              move.w   #2,-(a7)                           
  00c52  700c                  moveq    #12,d0                             
  00c54  c1c6                  muls.w   d6,d0                              
  00c56  2f360920fd1e          move.l   (-$2e2,a6,d0.l),-(a7)              
  00c5c  2f360920fd1a          move.l   (-$2e6,a6,d0.l),-(a7)              
  00c62  2f360920fd16          move.l   (-$2ea,a6,d0.l),-(a7)              
  00c68  4eba18f8              jsr      f7_2562                            
  00c6c  4fef000e              lea      $e(a7),a7                          
  00c70  5246                  addq.w   #1,d6                              
L0c72:
  00c72  b646                  cmp.w    d6,d3                              
  00c74  6ea2                  bgt.s    L0c18                              
  00c76  7c00                  moveq    #0,d6                              
  00c78  6076                  bra.s    L0cf0                              
L0c7a:
  00c7a  7028                  moveq    #40,d0                             
  00c7c  c1c6                  muls.w   d6,d0                              
  00c7e  41eefe52              lea      -$1ae(a6),a0                       
  00c82  d088                  add.l    a0,d0                              
  00c84  41f03790              lea      ($0,za0,d3.w*8),a0                 
  00c88  7228                  moveq    #40,d1                             
  00c8a  c3c6                  muls.w   d6,d1                              
  00c8c  43eefe52              lea      -$1ae(a6),a1                       
  00c90  d289                  add.l    a1,d1                              
  00c92  43f03790              lea      ($0,za0,d3.w*8),a1                 
  00c96  32311806              move.w   $6(a1,d1.l),d1                     
  00c9a  92700802              sub.w    $2(a0,d0.l),d1                     
  00c9e  48c1                  ext.l    d1                                 
  00ca0  83fc0002              divs.w   #2,d1                              
  00ca4  7028                  moveq    #40,d0                             
  00ca6  c1c6                  muls.w   d6,d0                              
  00ca8  41eefe52              lea      -$1ae(a6),a0                       
  00cac  d088                  add.l    a0,d0                              
  00cae  41f03790              lea      ($0,za0,d3.w*8),a0                 
  00cb2  d2700802              add.w    $2(a0,d0.l),d1                     
  00cb6  3d41fd6a              move.w   d1,-$296(a6)                       
  00cba  7014                  moveq    #20,d0                             
  00cbc  d0763720fe56          add.w    (-$1aa,a6,d3.w*8),d0               
  00cc2  3d40fd6c              move.w   d0,-$294(a6)                       
  00cc6  3f01                  move.w   d1,-(a7)                           
  00cc8  3f00                  move.w   d0,-(a7)                           
  00cca  a893                  _MoveTo                                     ; $a893
  00ccc  3f3c0002              move.w   #2,-(a7)                           
  00cd0  700c                  moveq    #12,d0                             
  00cd2  c1c6                  muls.w   d6,d0                              
  00cd4  2f360920fce2          move.l   (-$31e,a6,d0.l),-(a7)              
  00cda  2f360920fcde          move.l   (-$322,a6,d0.l),-(a7)              
  00ce0  2f360920fcda          move.l   (-$326,a6,d0.l),-(a7)              
  00ce6  4eba187a              jsr      f7_2562                            
  00cea  4fef000e              lea      $e(a7),a7                          
  00cee  5246                  addq.w   #1,d6                              
L0cf0:
  00cf0  b646                  cmp.w    d6,d3                              
  00cf2  6e86                  bgt.s    L0c7a                              
  00cf4  426efe52              clr.w    -$1ae(a6)                          
  00cf8  426efe54              clr.w    -$1ac(a6)                          
  00cfc  302eff48              move.w   -$b8(a6),d0                        
  00d00  906eff44              sub.w    -$bc(a6),d0                        
  00d04  3d40fe58              move.w   d0,-$1a8(a6)                       
  00d08  302eff46              move.w   -$ba(a6),d0                        
  00d0c  906eff42              sub.w    -$be(a6),d0                        
  00d10  3d40fe56              move.w   d0,-$1aa(a6)                       
  00d14  2f0c                  move.l   a4,-(a7)                           
  00d16  a981                  _DrawDialog                                 ; $a981
  00d18  2d6c0010fe52          move.l   $10(a4),-$1ae(a6)                  
  00d1e  2d6c0014fe56          move.l   $14(a4),-$1aa(a6)                  
  00d24  486c0002              pea      $2(a4)                             
  00d28  2079ffff99f4          movea.l  g_660c,a0                          
  00d2e  20680002              movea.l  $2(a0),a0                          
  00d32  2f10                  move.l   (a0),-(a7)                         
  00d34  486efe52              pea      -$1ae(a6)                          
  00d38  486efe52              pea      -$1ae(a6)                          
  00d3c  4267                  clr.w    -(a7)                              
  00d3e  42a7                  clr.l    -(a7)                              
  00d40  a8ec                  _CopyBits                                   ; $a8ec
  00d42  426efc84              clr.w    -$37c(a6)                          
  00d46  426efc82              clr.w    -$37e(a6)                          
  00d4a  426efc86              clr.w    -$37a(a6)                          
  00d4e  2079ffff8e72          movea.l  g_718e,a0                          
  00d54  2f10                  move.l   (a0),-(a7)                         
  00d56  a851                  _SetCursor                                  ; $a851
L0d58:
  00d58  486d07b2              pea      f7_0750                            
  00d5c  486eff54              pea      -$ac(a6)                           
  00d60  a991                  _ModalDialog                                ; $a991
  00d62  302eff54              move.w   -$ac(a6),d0                        
  00d66  670007ce              beq.w    L1536                              
  00d6a  6b0007ca              bmi.w    L1536                              
  00d6e  5140                  subq.w   #8,d0                              
  00d70  6a0a                  bpl.s    L0d7c                              
  00d72  5c40                  addq.w   #6,d0                              
  00d74  6712                  beq.s    L0d88                              
  00d76  6a1a                  bpl.s    L0d92                              
  00d78  600007bc              bra.w    L1536                              
L0d7c:
  00d7c  0440000c              subi.w   #$c,d0                             
  00d80  67000782              beq.w    L1504                              
  00d84  600007b0              bra.w    L1536                              
L0d88:
  00d88  1d7c0001fcd5          move.b   #1,-$32b(a6)                       
  00d8e  600007a6              bra.w    L1536                              
L0d92:
  00d92  2f39ffff9a00          move.l   g_6600,-(a7)                       
  00d98  a873                  _SetPort                                    ; $a873
  00d9a  2079ffff9a00          movea.l  g_6600,a0                          
  00da0  48680010              pea      $10(a0)                            
  00da4  a8a3                  _EraseRect                                  ; $a8a3
  00da6  426efe52              clr.w    -$1ae(a6)                          
  00daa  426efe54              clr.w    -$1ac(a6)                          
  00dae  302eff54              move.w   -$ac(a6),d0                        
  00db2  32360720ff10          move.w   (-$f0,a6,d0.w*8),d1                
  00db8  92760720ff0c          sub.w    (-$f4,a6,d0.w*8),d1                
  00dbe  3d41fe58              move.w   d1,-$1a8(a6)                       
  00dc2  302eff54              move.w   -$ac(a6),d0                        
  00dc6  32360720ff0e          move.w   (-$f2,a6,d0.w*8),d1                
  00dcc  92760720ff0a          sub.w    (-$f6,a6,d0.w*8),d1                
  00dd2  3d41fe56              move.w   d1,-$1aa(a6)                       
  00dd6  70fd                  moveq    #-3,d0                             
  00dd8  d06eff54              add.w    -$ac(a6),d0                        
  00ddc  c1fc0018              muls.w   #$18,d0                            
  00de0  2f360920fda2          move.l   (-$25e,a6,d0.l),-(a7)              
  00de6  486efe52              pea      -$1ae(a6)                          
  00dea  a8f6                  _DrawPicture                                ; $a8f6
  00dec  302eff54              move.w   -$ac(a6),d0                        
  00df0  2d760720ff0afe4a      move.l   (-$f6,a6,d0.w*8),-$1b6(a6)         
  00df8  2d760720ff0efe4e      move.l   (-$f2,a6,d0.w*8),-$1b2(a6)         
  00e00  2d6efe4afe42          move.l   -$1b6(a6),-$1be(a6)                
  00e06  2d6efe4efe46          move.l   -$1b2(a6),-$1ba(a6)                
  00e0c  2d6efe52fe3a          move.l   -$1ae(a6),-$1c6(a6)                
  00e12  2d6efe56fe3e          move.l   -$1aa(a6),-$1c2(a6)                
  00e18  302eff54              move.w   -$ac(a6),d0                        
  00e1c  0c7600010320fd58      cmpi.w   #1,(-$2a8,a6,d0.w*2)               
  00e24  660000e4              bne.w    L0f0a                              
  00e28  2f0c                  move.l   a4,-(a7)                           
  00e2a  a873                  _SetPort                                    ; $a873
  00e2c  302eff54              move.w   -$ac(a6),d0                        
  00e30  48760720ff0a          pea      (-$f6,a6,d0.w*8)                   
  00e36  a8a3                  _EraseRect                                  ; $a8a3
  00e38  2f39ffff9a04          move.l   g_65fc,-(a7)                       
  00e3e  a873                  _SetPort                                    ; $a873
  00e40  486efc82              pea      -$37e(a6)                          
  00e44  aa14                  _RGBForeColor                               ; $aa14
  00e46  2079ffff99f4          movea.l  g_660c,a0                          
  00e4c  20680002              movea.l  $2(a0),a0                          
  00e50  2f10                  move.l   (a0),-(a7)                         
  00e52  2079ffff9a04          movea.l  g_65fc,a0                          
  00e58  20680002              movea.l  $2(a0),a0                          
  00e5c  2f10                  move.l   (a0),-(a7)                         
  00e5e  486efe42              pea      -$1be(a6)                          
  00e62  486efe52              pea      -$1ae(a6)                          
  00e66  4267                  clr.w    -(a7)                              
  00e68  42a7                  clr.l    -(a7)                              
  00e6a  a8ec                  _CopyBits                                   ; $a8ec
  00e6c  2f39ffff99f4          move.l   g_660c,-(a7)                       
  00e72  a873                  _SetPort                                    ; $a873
  00e74  486efe42              pea      -$1be(a6)                          
  00e78  a8a3                  _EraseRect                                  ; $a8a3
  00e7a  2079ffff99f4          movea.l  g_660c,a0                          
  00e80  20680002              movea.l  $2(a0),a0                          
  00e84  2f10                  move.l   (a0),-(a7)                         
  00e86  2079ffff99fc          movea.l  g_6604,a0                          
  00e8c  20680002              movea.l  $2(a0),a0                          
  00e90  2f10                  move.l   (a0),-(a7)                         
  00e92  486efe42              pea      -$1be(a6)                          
  00e96  486efe42              pea      -$1be(a6)                          
  00e9a  4267                  clr.w    -(a7)                              
  00e9c  42a7                  clr.l    -(a7)                              
  00e9e  a8ec                  _CopyBits                                   ; $a8ec
  00ea0  2079ffff9a00          movea.l  g_6600,a0                          
  00ea6  20680002              movea.l  $2(a0),a0                          
  00eaa  2f10                  move.l   (a0),-(a7)                         
  00eac  2079ffff99fc          movea.l  g_6604,a0                          
  00eb2  20680002              movea.l  $2(a0),a0                          
  00eb6  2f10                  move.l   (a0),-(a7)                         
  00eb8  486efe3a              pea      -$1c6(a6)                          
  00ebc  486efe4a              pea      -$1b6(a6)                          
  00ec0  3f3c0024              move.w   #$24,-(a7)                         
  00ec4  42a7                  clr.l    -(a7)                              
  00ec6  a8ec                  _CopyBits                                   ; $a8ec
  00ec8  2079ffff99fc          movea.l  g_6604,a0                          
  00ece  20680002              movea.l  $2(a0),a0                          
  00ed2  2f10                  move.l   (a0),-(a7)                         
  00ed4  486c0002              pea      $2(a4)                             
  00ed8  486efe42              pea      -$1be(a6)                          
  00edc  486efe42              pea      -$1be(a6)                          
  00ee0  4267                  clr.w    -(a7)                              
  00ee2  42a7                  clr.l    -(a7)                              
  00ee4  a8ec                  _CopyBits                                   ; $a8ec
  00ee6  2079ffff99fc          movea.l  g_6604,a0                          
  00eec  20680002              movea.l  $2(a0),a0                          
  00ef0  2f10                  move.l   (a0),-(a7)                         
  00ef2  486c0002              pea      $2(a4)                             
  00ef6  486efe4a              pea      -$1b6(a6)                          
  00efa  486efe4a              pea      -$1b6(a6)                          
  00efe  3f3c0024              move.w   #$24,-(a7)                         
  00f02  42a7                  clr.l    -(a7)                              
  00f04  a8ec                  _CopyBits                                   ; $a8ec
  00f06  6000008c              bra.w    L0f94                              
L0f0a:
  00f0a  2f39ffff9a04          move.l   g_65fc,-(a7)                       
  00f10  a873                  _SetPort                                    ; $a873
  00f12  486efc82              pea      -$37e(a6)                          
  00f16  aa14                  _RGBForeColor                               ; $aa14
  00f18  2079ffff99f4          movea.l  g_660c,a0                          
  00f1e  20680002              movea.l  $2(a0),a0                          
  00f22  2f10                  move.l   (a0),-(a7)                         
  00f24  2079ffff9a04          movea.l  g_65fc,a0                          
  00f2a  20680002              movea.l  $2(a0),a0                          
  00f2e  2f10                  move.l   (a0),-(a7)                         
  00f30  486efe42              pea      -$1be(a6)                          
  00f34  486efe52              pea      -$1ae(a6)                          
  00f38  4267                  clr.w    -(a7)                              
  00f3a  42a7                  clr.l    -(a7)                              
  00f3c  a8ec                  _CopyBits                                   ; $a8ec
  00f3e  2f39ffff99f4          move.l   g_660c,-(a7)                       
  00f44  a873                  _SetPort                                    ; $a873
  00f46  486efe42              pea      -$1be(a6)                          
  00f4a  a8a3                  _EraseRect                                  ; $a8a3
  00f4c  70fd                  moveq    #-3,d0                             
  00f4e  d06eff54              add.w    -$ac(a6),d0                        
  00f52  c1fc0018              muls.w   #$18,d0                            
  00f56  322eff54              move.w   -$ac(a6),d1                        
  00f5a  d08e                  add.l    a6,d0                              
  00f5c  32361320fd58          move.w   (-$2a8,a6,d1.w*2),d1               
  00f62  41f015a0fd9a          lea      (-$266,za0,d1.w*4),a0              
  00f68  2f300800              move.l   $0(a0,d0.l),-(a7)                  
  00f6c  486efe42              pea      -$1be(a6)                          
  00f70  a8f6                  _DrawPicture                                ; $a8f6
  00f72  2f0c                  move.l   a4,-(a7)                           
  00f74  a873                  _SetPort                                    ; $a873
  00f76  2079ffff99f4          movea.l  g_660c,a0                          
  00f7c  20680002              movea.l  $2(a0),a0                          
  00f80  2f10                  move.l   (a0),-(a7)                         
  00f82  486c0002              pea      $2(a4)                             
  00f86  486efe42              pea      -$1be(a6)                          
  00f8a  486efe42              pea      -$1be(a6)                          
  00f8e  4267                  clr.w    -(a7)                              
  00f90  42a7                  clr.l    -(a7)                              
  00f92  a8ec                  _CopyBits                                   ; $a8ec
L0f94:
  00f94  2f0c                  move.l   a4,-(a7)                           
  00f96  a873                  _SetPort                                    ; $a873
  00f98  486efc94              pea      -$36c(a6)                          
  00f9c  a972                  _GetMouse                                   ; $a972
  00f9e  2d6efc94fc90          move.l   -$36c(a6),-$370(a6)                
  00fa4  4227                  clr.b    -(a7)                              
  00fa6  2f2efc94              move.l   -$36c(a6),-(a7)                    
  00faa  302eff54              move.w   -$ac(a6),d0                        
  00fae  48760720ff0a          pea      (-$f6,a6,d0.w*8)                   
  00fb4  a8ad                  _PtInRect                                   ; $a8ad
  00fb6  4a1f                  tst.b    (a7)+                              
  00fb8  6600013a              bne.w    L10f4                              
  00fbc  302eff54              move.w   -$ac(a6),d0                        
  00fc0  32360720ff10          move.w   (-$f0,a6,d0.w*8),d1                
  00fc6  92760720ff0c          sub.w    (-$f4,a6,d0.w*8),d1                
  00fcc  48c1                  ext.l    d1                                 
  00fce  83fc0002              divs.w   #2,d1                              
  00fd2  d2760720ff0c          add.w    (-$f4,a6,d0.w*8),d1                
  00fd8  3d41fc96              move.w   d1,-$36a(a6)                       
  00fdc  302eff54              move.w   -$ac(a6),d0                        
  00fe0  32360720ff0e          move.w   (-$f2,a6,d0.w*8),d1                
  00fe6  92760720ff0a          sub.w    (-$f6,a6,d0.w*8),d1                
  00fec  48c1                  ext.l    d1                                 
  00fee  83fc0002              divs.w   #2,d1                              
  00ff2  d2760720ff0a          add.w    (-$f6,a6,d0.w*8),d1                
  00ff8  3d41fc94              move.w   d1,-$36c(a6)                       
  00ffc  600000f6              bra.w    L10f4                              
L1000:
  01000  486efc90              pea      -$370(a6)                          
  01004  a972                  _GetMouse                                   ; $a972
  01006  42a7                  clr.l    -(a7)                              
  01008  2f2efc94              move.l   -$36c(a6),-(a7)                    
  0100c  2f2efc90              move.l   -$370(a6),-(a7)                    
  01010  a94f                  _DeltaPoint                                 ; $a94f
  01012  2d5ffc8c              move.l   (a7)+,-$374(a6)                    
  01016  4aaefc8c              tst.l    -$374(a6)                          
  0101a  670000d8              beq.w    L10f4                              
  0101e  486efe4a              pea      -$1b6(a6)                          
  01022  302efc8e              move.w   -$372(a6),d0                       
  01026  4440                  neg.w    d0                                 
  01028  3f00                  move.w   d0,-(a7)                           
  0102a  202efc8c              move.l   -$374(a6),d0                       
  0102e  7210                  moveq    #16,d1                             
  01030  e2a0                  asr.l    d1,d0                              
  01032  4440                  neg.w    d0                                 
  01034  3f00                  move.w   d0,-(a7)                           
  01036  a8a8                  _OffsetRect                                 ; $a8a8
  01038  2f39ffff99fc          move.l   g_6604,-(a7)                       
  0103e  a873                  _SetPort                                    ; $a873
  01040  2079ffff99fc          movea.l  g_6604,a0                          
  01046  48680010              pea      $10(a0)                            
  0104a  a8a3                  _EraseRect                                  ; $a8a3
  0104c  486efc82              pea      -$37e(a6)                          
  01050  aa14                  _RGBForeColor                               ; $aa14
  01052  2f0c                  move.l   a4,-(a7)                           
  01054  a873                  _SetPort                                    ; $a873
  01056  2079ffff99f4          movea.l  g_660c,a0                          
  0105c  20680002              movea.l  $2(a0),a0                          
  01060  2f10                  move.l   (a0),-(a7)                         
  01062  2079ffff99fc          movea.l  g_6604,a0                          
  01068  20680002              movea.l  $2(a0),a0                          
  0106c  2f10                  move.l   (a0),-(a7)                         
  0106e  486efe42              pea      -$1be(a6)                          
  01072  486efe42              pea      -$1be(a6)                          
  01076  4267                  clr.w    -(a7)                              
  01078  42a7                  clr.l    -(a7)                              
  0107a  a8ec                  _CopyBits                                   ; $a8ec
  0107c  2079ffff9a00          movea.l  g_6600,a0                          
  01082  20680002              movea.l  $2(a0),a0                          
  01086  2f10                  move.l   (a0),-(a7)                         
  01088  2079ffff99fc          movea.l  g_6604,a0                          
  0108e  20680002              movea.l  $2(a0),a0                          
  01092  2f10                  move.l   (a0),-(a7)                         
  01094  486efe3a              pea      -$1c6(a6)                          
  01098  486efe4a              pea      -$1b6(a6)                          
  0109c  3f3c0024              move.w   #$24,-(a7)                         
  010a0  42a7                  clr.l    -(a7)                              
  010a2  a8ec                  _CopyBits                                   ; $a8ec
  010a4  2079ffff99fc          movea.l  g_6604,a0                          
  010aa  20680002              movea.l  $2(a0),a0                          
  010ae  2f10                  move.l   (a0),-(a7)                         
  010b0  486c0002              pea      $2(a4)                             
  010b4  486efe42              pea      -$1be(a6)                          
  010b8  486efe42              pea      -$1be(a6)                          
  010bc  4267                  clr.w    -(a7)                              
  010be  42a7                  clr.l    -(a7)                              
  010c0  a8ec                  _CopyBits                                   ; $a8ec
  010c2  2079ffff99fc          movea.l  g_6604,a0                          
  010c8  20680002              movea.l  $2(a0),a0                          
  010cc  2f10                  move.l   (a0),-(a7)                         
  010ce  486c0002              pea      $2(a4)                             
  010d2  486efe4a              pea      -$1b6(a6)                          
  010d6  486efe4a              pea      -$1b6(a6)                          
  010da  3f3c0024              move.w   #$24,-(a7)                         
  010de  42a7                  clr.l    -(a7)                              
  010e0  a8ec                  _CopyBits                                   ; $a8ec
  010e2  2d6efc90fc94          move.l   -$370(a6),-$36c(a6)                
  010e8  2d6efe4afe42          move.l   -$1b6(a6),-$1be(a6)                
  010ee  2d6efe4efe46          move.l   -$1b2(a6),-$1ba(a6)                
L10f4:
  010f4  4227                  clr.b    -(a7)                              
  010f6  a974                  _Button                                     ; $a974
  010f8  4a1f                  tst.b    (a7)+                              
  010fa  6600ff04              bne.w    L1000                              
  010fe  422efcd6              clr.b    -$32a(a6)                          
  01102  7c00                  moveq    #0,d6                              
  01104  60000352              bra.w    L1458                              
L1108:
  01108  7a00                  moveq    #0,d5                              
  0110a  60000344              bra.w    L1450                              
L110e:
  0110e  4227                  clr.b    -(a7)                              
  01110  2f2efc90              move.l   -$370(a6),-(a7)                    
  01114  7028                  moveq    #40,d0                             
  01116  c1c6                  muls.w   d6,d0                              
  01118  41eefe5a              lea      -$1a6(a6),a0                       
  0111c  d088                  add.l    a0,d0                              
  0111e  41f05790              lea      ($0,za0,d5.w*8),a0                 
  01122  d088                  add.l    a0,d0                              
  01124  2f00                  move.l   d0,-(a7)                           
  01126  a8ad                  _PtInRect                                   ; $a8ad
  01128  4a1f                  tst.b    (a7)+                              
  0112a  67000322              beq.w    L144e                              
  0112e  1d7c0001fcd6          move.b   #1,-$32a(a6)                       
  01134  7005                  moveq    #5,d0                              
  01136  c1c6                  muls.w   d6,d0                              
  01138  41eefd6e              lea      -$292(a6),a0                       
  0113c  d088                  add.l    a0,d0                              
  0113e  3045                  movea.w  d5,a0                              
  01140  4a300800              tst.b    $0(a0,d0.l)                        
  01144  66000246              bne.w    L138c                              
  01148  7005                  moveq    #5,d0                              
  0114a  c1c6                  muls.w   d6,d0                              
  0114c  41eefd88              lea      -$278(a6),a0                       
  01150  d088                  add.l    a0,d0                              
  01152  3045                  movea.w  d5,a0                              
  01154  10300800              move.b   $0(a0,d0.l),d0                     
  01158  49c0                  extb.l   d0                                 
  0115a  72fe                  moveq    #-2,d1                             
  0115c  d26eff54              add.w    -$ac(a6),d1                        
  01160  b041                  cmp.w    d1,d0                              
  01162  66000228              bne.w    L138c                              
  01166  3f3c0ae1              move.w   #$ae1,-(a7)                        
  0116a  4ead030a              jsr      f3_4238                            
  0116e  4ead031a              jsr      f3_4424                            
  01172  7028                  moveq    #40,d0                             
  01174  c1c6                  muls.w   d6,d0                              
  01176  41eefe5a              lea      -$1a6(a6),a0                       
  0117a  d088                  add.l    a0,d0                              
  0117c  41f05790              lea      ($0,za0,d5.w*8),a0                 
  01180  3d700802fe4c          move.w   $2(a0,d0.l),-$1b4(a6)              
  01186  7028                  moveq    #40,d0                             
  01188  c1c6                  muls.w   d6,d0                              
  0118a  41eefe5a              lea      -$1a6(a6),a0                       
  0118e  d088                  add.l    a0,d0                              
  01190  41f05790              lea      ($0,za0,d5.w*8),a0                 
  01194  3d700800fe4a          move.w   $0(a0,d0.l),-$1b6(a6)              
  0119a  302efe48              move.w   -$1b8(a6),d0                       
  0119e  906efe44              sub.w    -$1bc(a6),d0                       
  011a2  d06efe4c              add.w    -$1b4(a6),d0                       
  011a6  3d40fe50              move.w   d0,-$1b0(a6)                       
  011aa  302efe46              move.w   -$1ba(a6),d0                       
  011ae  906efe42              sub.w    -$1be(a6),d0                       
  011b2  d06efe4a              add.w    -$1b6(a6),d0                       
  011b6  3d40fe4e              move.w   d0,-$1b2(a6)                       
  011ba  7028                  moveq    #40,d0                             
  011bc  c1c6                  muls.w   d6,d0                              
  011be  41eefe5a              lea      -$1a6(a6),a0                       
  011c2  d088                  add.l    a0,d0                              
  011c4  41f05790              lea      ($0,za0,d5.w*8),a0                 
  011c8  30300806              move.w   $6(a0,d0.l),d0                     
  011cc  906efe50              sub.w    -$1b0(a6),d0                       
  011d0  48c0                  ext.l    d0                                 
  011d2  81fc0002              divs.w   #2,d0                              
  011d6  3d40fd6a              move.w   d0,-$296(a6)                       
  011da  7228                  moveq    #40,d1                             
  011dc  c3c6                  muls.w   d6,d1                              
  011de  41eefe5a              lea      -$1a6(a6),a0                       
  011e2  d288                  add.l    a0,d1                              
  011e4  41f05790              lea      ($0,za0,d5.w*8),a0                 
  011e8  32301804              move.w   $4(a0,d1.l),d1                     
  011ec  926efe4e              sub.w    -$1b2(a6),d1                       
  011f0  48c1                  ext.l    d1                                 
  011f2  83fc0002              divs.w   #2,d1                              
  011f6  3d41fd6c              move.w   d1,-$294(a6)                       
  011fa  486efe4a              pea      -$1b6(a6)                          
  011fe  3f00                  move.w   d0,-(a7)                           
  01200  3f01                  move.w   d1,-(a7)                           
  01202  a8a8                  _OffsetRect                                 ; $a8a8
  01204  2079ffff99f4          movea.l  g_660c,a0                          
  0120a  20680002              movea.l  $2(a0),a0                          
  0120e  2f10                  move.l   (a0),-(a7)                         
  01210  2079ffff99fc          movea.l  g_6604,a0                          
  01216  20680002              movea.l  $2(a0),a0                          
  0121a  2f10                  move.l   (a0),-(a7)                         
  0121c  486efe42              pea      -$1be(a6)                          
  01220  486efe42              pea      -$1be(a6)                          
  01224  4267                  clr.w    -(a7)                              
  01226  42a7                  clr.l    -(a7)                              
  01228  a8ec                  _CopyBits                                   ; $a8ec
  0122a  2079ffff9a00          movea.l  g_6600,a0                          
  01230  20680002              movea.l  $2(a0),a0                          
  01234  2f10                  move.l   (a0),-(a7)                         
  01236  2079ffff99fc          movea.l  g_6604,a0                          
  0123c  20680002              movea.l  $2(a0),a0                          
  01240  2f10                  move.l   (a0),-(a7)                         
  01242  486efe3a              pea      -$1c6(a6)                          
  01246  486efe4a              pea      -$1b6(a6)                          
  0124a  3f3c0024              move.w   #$24,-(a7)                         
  0124e  42a7                  clr.l    -(a7)                              
  01250  a8ec                  _CopyBits                                   ; $a8ec
  01252  2079ffff99fc          movea.l  g_6604,a0                          
  01258  20680002              movea.l  $2(a0),a0                          
  0125c  2f10                  move.l   (a0),-(a7)                         
  0125e  486c0002              pea      $2(a4)                             
  01262  486efe42              pea      -$1be(a6)                          
  01266  486efe42              pea      -$1be(a6)                          
  0126a  4267                  clr.w    -(a7)                              
  0126c  42a7                  clr.l    -(a7)                              
  0126e  a8ec                  _CopyBits                                   ; $a8ec
  01270  2079ffff99fc          movea.l  g_6604,a0                          
  01276  20680002              movea.l  $2(a0),a0                          
  0127a  2f10                  move.l   (a0),-(a7)                         
  0127c  486c0002              pea      $2(a4)                             
  01280  486efe4a              pea      -$1b6(a6)                          
  01284  486efe4a              pea      -$1b6(a6)                          
  01288  3f3c0024              move.w   #$24,-(a7)                         
  0128c  42a7                  clr.l    -(a7)                              
  0128e  a8ec                  _CopyBits                                   ; $a8ec
  01290  7005                  moveq    #5,d0                              
  01292  c1c6                  muls.w   d6,d0                              
  01294  41eefd6e              lea      -$292(a6),a0                       
  01298  d088                  add.l    a0,d0                              
  0129a  3045                  movea.w  d5,a0                              
  0129c  11bc00010800          move.b   #1,$0(a0,d0.l)                     
  012a2  302eff54              move.w   -$ac(a6),d0                        
  012a6  53760320fd58          subq.w   #1,(-$2a8,a6,d0.w*2)               
  012ac  302eff54              move.w   -$ac(a6),d0                        
  012b0  4a760320fd58          tst.w    (-$2a8,a6,d0.w*2)                  
  012b6  548f                  addq.l   #2,a7                              
  012b8  6770                  beq.s    L132a                              
  012ba  2f0c                  move.l   a4,-(a7)                           
  012bc  3f2eff54              move.w   -$ac(a6),-(a7)                     
  012c0  3f3c0040              move.w   #$40,-(a7)                         
  012c4  70fd                  moveq    #-3,d0                             
  012c6  d06eff54              add.w    -$ac(a6),d0                        
  012ca  c1fc0018              muls.w   #$18,d0                            
  012ce  322eff54              move.w   -$ac(a6),d1                        
  012d2  d08e                  add.l    a6,d0                              
  012d4  32361320fd58          move.w   (-$2a8,a6,d1.w*2),d1               
  012da  41f015a0fd9e          lea      (-$262,za0,d1.w*4),a0              
  012e0  2f300800              move.l   $0(a0,d0.l),-(a7)                  
  012e4  302eff54              move.w   -$ac(a6),d0                        
  012e8  48760720ff0a          pea      (-$f6,a6,d0.w*8)                   
  012ee  a98e                  _SetDialogItem                              ; $a98e
  012f0  302eff54              move.w   -$ac(a6),d0                        
  012f4  48760720ff0a          pea      (-$f6,a6,d0.w*8)                   
  012fa  a8a3                  _EraseRect                                  ; $a8a3
  012fc  70fd                  moveq    #-3,d0                             
  012fe  d06eff54              add.w    -$ac(a6),d0                        
  01302  c1fc0018              muls.w   #$18,d0                            
  01306  322eff54              move.w   -$ac(a6),d1                        
  0130a  d08e                  add.l    a6,d0                              
  0130c  32361320fd58          move.w   (-$2a8,a6,d1.w*2),d1               
  01312  41f015a0fd9e          lea      (-$262,za0,d1.w*4),a0              
  01318  2f300800              move.l   $0(a0,d0.l),-(a7)                  
  0131c  302eff54              move.w   -$ac(a6),d0                        
  01320  48760720ff0a          pea      (-$f6,a6,d0.w*8)                   
  01326  a8f6                  _DrawPicture                                ; $a8f6
  01328  6008                  bra.s    L1332                              
L132a:
  0132a  2f0c                  move.l   a4,-(a7)                           
  0132c  3f2eff54              move.w   -$ac(a6),-(a7)                     
  01330  a827                  _ShowDialogItem                             ; $a827
L1332:
  01332  2d6c0010fe52          move.l   $10(a4),-$1ae(a6)                  
  01338  2d6c0014fe56          move.l   $14(a4),-$1aa(a6)                  
  0133e  7028                  moveq    #40,d0                             
  01340  c1c6                  muls.w   d6,d0                              
  01342  41eefe5a              lea      -$1a6(a6),a0                       
  01346  d088                  add.l    a0,d0                              
  01348  41f05790              lea      ($0,za0,d5.w*8),a0                 
  0134c  d088                  add.l    a0,d0                              
  0134e  2f00                  move.l   d0,-(a7)                           
  01350  a8a1                  _FrameRect                                  ; $a8a1
  01352  5347                  subq.w   #1,d7                              
  01354  3047                  movea.w  d7,a0                              
  01356  2f08                  move.l   a0,-(a7)                           
  01358  486efb82              pea      -$47e(a6)                          
  0135c  4ead0512              jsr      f4_150e                            
  01360  2f2eff4a              move.l   -$b6(a6),-(a7)                     
  01364  486efb82              pea      -$47e(a6)                          
  01368  a98f                  _SetDialogItemText                          ; $a98f
  0136a  486c0002              pea      $2(a4)                             
  0136e  2079ffff99f4          movea.l  g_660c,a0                          
  01374  20680002              movea.l  $2(a0),a0                          
  01378  2f10                  move.l   (a0),-(a7)                         
  0137a  486efe52              pea      -$1ae(a6)                          
  0137e  486efe52              pea      -$1ae(a6)                          
  01382  4267                  clr.w    -(a7)                              
  01384  42a7                  clr.l    -(a7)                              
  01386  a8ec                  _CopyBits                                   ; $a8ec
  01388  600000c4              bra.w    L144e                              
L138c:
  0138c  3f3c0ae2              move.w   #$ae2,-(a7)                        
  01390  4ead030a              jsr      f3_4238                            
  01394  4ead031a              jsr      f3_4424                            
  01398  2079ffff99f4          movea.l  g_660c,a0                          
  0139e  20680002              movea.l  $2(a0),a0                          
  013a2  2f10                  move.l   (a0),-(a7)                         
  013a4  486c0002              pea      $2(a4)                             
  013a8  486efe4a              pea      -$1b6(a6)                          
  013ac  486efe4a              pea      -$1b6(a6)                          
  013b0  4267                  clr.w    -(a7)                              
  013b2  42a7                  clr.l    -(a7)                              
  013b4  a8ec                  _CopyBits                                   ; $a8ec
  013b6  426efe52              clr.w    -$1ae(a6)                          
  013ba  426efe54              clr.w    -$1ac(a6)                          
  013be  302eff54              move.w   -$ac(a6),d0                        
  013c2  32360720ff10          move.w   (-$f0,a6,d0.w*8),d1                
  013c8  92760720ff0c          sub.w    (-$f4,a6,d0.w*8),d1                
  013ce  3d41fe58              move.w   d1,-$1a8(a6)                       
  013d2  302eff54              move.w   -$ac(a6),d0                        
  013d6  32360720ff0e          move.w   (-$f2,a6,d0.w*8),d1                
  013dc  92760720ff0a          sub.w    (-$f6,a6,d0.w*8),d1                
  013e2  3d41fe56              move.w   d1,-$1aa(a6)                       
  013e6  2079ffff9a04          movea.l  g_65fc,a0                          
  013ec  20680002              movea.l  $2(a0),a0                          
  013f0  2f10                  move.l   (a0),-(a7)                         
  013f2  486c0002              pea      $2(a4)                             
  013f6  486efe52              pea      -$1ae(a6)                          
  013fa  302eff54              move.w   -$ac(a6),d0                        
  013fe  48760720ff0a          pea      (-$f6,a6,d0.w*8)                   
  01404  4267                  clr.w    -(a7)                              
  01406  42a7                  clr.l    -(a7)                              
  01408  a8ec                  _CopyBits                                   ; $a8ec
  0140a  2d6c0010fe52          move.l   $10(a4),-$1ae(a6)                  
  01410  2d6c0014fe56          move.l   $14(a4),-$1aa(a6)                  
  01416  5347                  subq.w   #1,d7                              
  01418  3047                  movea.w  d7,a0                              
  0141a  2f08                  move.l   a0,-(a7)                           
  0141c  486efb82              pea      -$47e(a6)                          
  01420  4ead0512              jsr      f4_150e                            
  01424  2f2eff4a              move.l   -$b6(a6),-(a7)                     
  01428  486efb82              pea      -$47e(a6)                          
  0142c  a98f                  _SetDialogItemText                          ; $a98f
  0142e  486c0002              pea      $2(a4)                             
  01432  2079ffff99f4          movea.l  g_660c,a0                          
  01438  20680002              movea.l  $2(a0),a0                          
  0143c  2f10                  move.l   (a0),-(a7)                         
  0143e  486efe52              pea      -$1ae(a6)                          
  01442  486efe52              pea      -$1ae(a6)                          
  01446  4267                  clr.w    -(a7)                              
  01448  42a7                  clr.l    -(a7)                              
  0144a  a8ec                  _CopyBits                                   ; $a8ec
  0144c  548f                  addq.l   #2,a7                              
L144e:
  0144e  5245                  addq.w   #1,d5                              
L1450:
  01450  b645                  cmp.w    d5,d3                              
  01452  6e00fcba              bgt.w    L110e                              
  01456  5246                  addq.w   #1,d6                              
L1458:
  01458  b646                  cmp.w    d6,d3                              
  0145a  6e00fcac              bgt.w    L1108                              
  0145e  4a2efcd6              tst.b    -$32a(a6)                          
  01462  660000d2              bne.w    L1536                              
  01466  2079ffff99f4          movea.l  g_660c,a0                          
  0146c  20680002              movea.l  $2(a0),a0                          
  01470  2f10                  move.l   (a0),-(a7)                         
  01472  486c0002              pea      $2(a4)                             
  01476  486efe4a              pea      -$1b6(a6)                          
  0147a  486efe4a              pea      -$1b6(a6)                          
  0147e  4267                  clr.w    -(a7)                              
  01480  42a7                  clr.l    -(a7)                              
  01482  a8ec                  _CopyBits                                   ; $a8ec
  01484  426efe52              clr.w    -$1ae(a6)                          
  01488  426efe54              clr.w    -$1ac(a6)                          
  0148c  302eff54              move.w   -$ac(a6),d0                        
  01490  32360720ff10          move.w   (-$f0,a6,d0.w*8),d1                
  01496  92760720ff0c          sub.w    (-$f4,a6,d0.w*8),d1                
  0149c  3d41fe58              move.w   d1,-$1a8(a6)                       
  014a0  302eff54              move.w   -$ac(a6),d0                        
  014a4  32360720ff0e          move.w   (-$f2,a6,d0.w*8),d1                
  014aa  92760720ff0a          sub.w    (-$f6,a6,d0.w*8),d1                
  014b0  3d41fe56              move.w   d1,-$1aa(a6)                       
  014b4  2079ffff9a04          movea.l  g_65fc,a0                          
  014ba  20680002              movea.l  $2(a0),a0                          
  014be  2f10                  move.l   (a0),-(a7)                         
  014c0  486c0002              pea      $2(a4)                             
  014c4  486efe52              pea      -$1ae(a6)                          
  014c8  302eff54              move.w   -$ac(a6),d0                        
  014cc  48760720ff0a          pea      (-$f6,a6,d0.w*8)                   
  014d2  4267                  clr.w    -(a7)                              
  014d4  42a7                  clr.l    -(a7)                              
  014d6  a8ec                  _CopyBits                                   ; $a8ec
  014d8  2d6c0010fe52          move.l   $10(a4),-$1ae(a6)                  
  014de  2d6c0014fe56          move.l   $14(a4),-$1aa(a6)                  
  014e4  486c0002              pea      $2(a4)                             
  014e8  2079ffff99f4          movea.l  g_660c,a0                          
  014ee  20680002              movea.l  $2(a0),a0                          
  014f2  2f10                  move.l   (a0),-(a7)                         
  014f4  486efe52              pea      -$1ae(a6)                          
  014f8  486efe52              pea      -$1ae(a6)                          
  014fc  4267                  clr.w    -(a7)                              
  014fe  42a7                  clr.l    -(a7)                              
  01500  a8ec                  _CopyBits                                   ; $a8ec
  01502  6032                  bra.s    L1536                              
L1504:
  01504  2f0c                  move.l   a4,-(a7)                           
  01506  a922                  _BeginUpdate                                ; $a922
  01508  2d6c0010fe4a          move.l   $10(a4),-$1b6(a6)                  
  0150e  2d6c0014fe4e          move.l   $14(a4),-$1b2(a6)                  
  01514  2079ffff99f4          movea.l  g_660c,a0                          
  0151a  20680002              movea.l  $2(a0),a0                          
  0151e  2f10                  move.l   (a0),-(a7)                         
  01520  486c0002              pea      $2(a4)                             
  01524  486efe4a              pea      -$1b6(a6)                          
  01528  486efe4a              pea      -$1b6(a6)                          
  0152c  4267                  clr.w    -(a7)                              
  0152e  42a7                  clr.l    -(a7)                              
  01530  a8ec                  _CopyBits                                   ; $a8ec
  01532  2f0c                  move.l   a4,-(a7)                           
  01534  a923                  _EndUpdate                                  ; $a923
L1536:
  01536  0c6e0002ff54          cmpi.w   #2,-$ac(a6)                        
  0153c  6f06                  ble.s    L1544                              
  0153e  4a47                  tst.w    d7                                 
  01540  6e00f816              bgt.w    L0d58                              
L1544:
  01544  2f2efc88              move.l   -$378(a6),-(a7)                    
  01548  a873                  _SetPort                                    ; $a873
  0154a  2f0c                  move.l   a4,-(a7)                           
  0154c  a983                  _DisposeDialog                              ; $a983
  0154e  7c00                  moveq    #0,d6                              
  01550  604a                  bra.s    L159c                              
L1552:
  01552  7a00                  moveq    #0,d5                              
  01554  603e                  bra.s    L1594                              
L1556:
  01556  7018                  moveq    #24,d0                             
  01558  c1c6                  muls.w   d6,d0                              
  0155a  41eefda2              lea      -$25e(a6),a0                       
  0155e  d088                  add.l    a0,d0                              
  01560  41f05590              lea      ($0,za0,d5.w*4),a0                 
  01564  4ab00800              tst.l    $0(a0,d0.l)                        
  01568  6728                  beq.s    L1592                              
  0156a  7018                  moveq    #24,d0                             
  0156c  c1c6                  muls.w   d6,d0                              
  0156e  41eefda2              lea      -$25e(a6),a0                       
  01572  d088                  add.l    a0,d0                              
  01574  41f05590              lea      ($0,za0,d5.w*4),a0                 
  01578  20700800              movea.l  $0(a0,d0.l),a0                     
  0157c  a02a                  _HUnlock                                    ; $a02a
  0157e  7018                  moveq    #24,d0                             
  01580  c1c6                  muls.w   d6,d0                              
  01582  41eefda2              lea      -$25e(a6),a0                       
  01586  d088                  add.l    a0,d0                              
  01588  41f05590              lea      ($0,za0,d5.w*4),a0                 
  0158c  2f300800              move.l   $0(a0,d0.l),-(a7)                  
  01590  a9a3                  _ReleaseResource                            ; $a9a3
L1592:
  01592  5245                  addq.w   #1,d5                              
L1594:
  01594  0c450005              cmpi.w   #5,d5                              
  01598  6dbc                  blt.s    L1556                              
  0159a  5246                  addq.w   #1,d6                              
L159c:
  0159c  0c460005              cmpi.w   #5,d6                              
  015a0  6db0                  blt.s    L1552                              
  015a2  7c01                  moveq    #1,d6                              
  015a4  600a                  bra.s    L15b0                              
L15a6:
  015a6  20766520fc98          movea.l  (-$368,a6,d6.w*4),a0               
  015ac  a01f                  _DisposePtr                                 ; $a01f
  015ae  5246                  addq.w   #1,d6                              
L15b0:
  015b0  bc6efcd8              cmp.w    -$328(a6),d6                       
  015b4  6ff0                  ble.s    L15a6                              
  015b6  4ead01ca              jsr      f2_6b56                            
  015ba  1d7c0001fcd6          move.b   #1,-$32a(a6)                       
  015c0  7c00                  moveq    #0,d6                              
  015c2  6022                  bra.s    L15e6                              
L15c4:
  015c4  7a00                  moveq    #0,d5                              
  015c6  6018                  bra.s    L15e0                              
L15c8:
  015c8  7005                  moveq    #5,d0                              
  015ca  c1c6                  muls.w   d6,d0                              
  015cc  41eefd6e              lea      -$292(a6),a0                       
  015d0  d088                  add.l    a0,d0                              
  015d2  3045                  movea.w  d5,a0                              
  015d4  4a300800              tst.b    $0(a0,d0.l)                        
  015d8  6604                  bne.s    L15de                              
  015da  422efcd6              clr.b    -$32a(a6)                          
L15de:
  015de  5245                  addq.w   #1,d5                              
L15e0:
  015e0  b645                  cmp.w    d5,d3                              
  015e2  6ee4                  bgt.s    L15c8                              
  015e4  5246                  addq.w   #1,d6                              
L15e6:
  015e6  b646                  cmp.w    d6,d3                              
  015e8  6eda                  bgt.s    L15c4                              
  015ea  4a2efcd6              tst.b    -$32a(a6)                          
  015ee  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  015f4  a851                  _SetCursor                                  ; $a851
  015f6  4a39ffff8dfb          tst.b    g_7205                             
  015fc  6604                  bne.s    L1602                              
  015fe  4ead032a              jsr      f3_44be                            
L1602:
  01602  4a2efcd5              tst.b    -$32b(a6)                          
  01606  6606                  bne.s    L160e                              
  01608  102efcd6              move.b   -$32a(a6),d0                       
  0160c  6002                  bra.s    L1610                              
L160e:
  0160e  7000                  moveq    #0,d0                              
L1610:
  01610  4cdf18f8              movem.l  (a7)+,d3/d4/d5/d6/d7/a3/a4         
  01614  4e5e                  unlk     a6                                 
  01616  4e75                  rts                                         
  01618  00640064              ori.w    #$64,-(a4)                         

;----------------------------------------------------------------------
; f7_161c   [jump table #211]
;----------------------------------------------------------------------
f7_161c:
  0161c  4e560000              link     a6,#0                              
  01620  48e70f08              movem.l  d4/d5/d6/d7/a4,-(a7)               
  01624  286e0008              movea.l  $8(a6),a4                          
  01628  3e2c0016              move.w   $16(a4),d7                         
  0162c  9e6c0012              sub.w    $12(a4),d7                         
  01630  3c2c0014              move.w   $14(a4),d6                         
  01634  9c6c0010              sub.w    $10(a4),d6                         
  01638  3a39ffffabfc          move.w   g_5404,d5                          
  0163e  9a47                  sub.w    d7,d5                              
  01640  48c5                  ext.l    d5                                 
  01642  8bfc0002              divs.w   #2,d5                              
  01646  3839ffffabfa          move.w   g_5406,d4                          
  0164c  9846                  sub.w    d6,d4                              
  0164e  48c4                  ext.l    d4                                 
  01650  89fc0002              divs.w   #2,d4                              
  01654  2f0c                  move.l   a4,-(a7)                           
  01656  3f05                  move.w   d5,-(a7)                           
  01658  3f04                  move.w   d4,-(a7)                           
  0165a  4227                  clr.b    -(a7)                              
  0165c  a91b                  _MoveWindow                                 ; $a91b
  0165e  4cdf10f0              movem.l  (a7)+,d4/d5/d6/d7/a4               
  01662  4e5e                  unlk     a6                                 
  01664  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_1666   [jump table #212]
;----------------------------------------------------------------------
f7_1666:
  01666  4e56feb0              link     a6,#-336                           
  0166a  48e71f38              movem.l  d3/d4/d5/d6/d7/a2/a3/a4,-(a7)      
  0166e  2e3c000011c2          move.l   STR_11c2,d7                        ; "Castle Knowledge v. 2.3  ©1995,1996 by George Herrin, Jr."
  01674  7600                  moveq    #0,d3                              
  01676  426efeb2              clr.w    -$14e(a6)                          
  0167a  426efeb0              clr.w    -$150(a6)                          
  0167e  426efeb4              clr.w    -$14c(a6)                          
  01682  486efece              pea      -$132(a6)                          
  01686  a874                  _GetPort                                    ; $a874
  01688  7800                  moveq    #0,d4                              
  0168a  6022                  bra.s    L16ae                              
L168c:
  0168c  42b64520ff06          clr.l    (-$fa,a6,d4.w*4)                   
  01692  42a7                  clr.l    -(a7)                              
  01694  3004                  move.w   d4,d0                              
  01696  0640157c              addi.w   #$157c,d0                          
  0169a  3f00                  move.w   d0,-(a7)                           
  0169c  a9bc                  _GetPicture                                 ; $a9bc
  0169e  2d9f4520ff06          move.l   (a7)+,(-$fa,a6,d4.w*4)             
  016a4  20764520ff06          movea.l  (-$fa,a6,d4.w*4),a0                
  016aa  a029                  _HLock                                      ; $a029
  016ac  5244                  addq.w   #1,d4                              
L16ae:
  016ae  0c440004              cmpi.w   #4,d4                              
  016b2  6dd8                  blt.s    L168c                              
  016b4  42a7                  clr.l    -(a7)                              
  016b6  3f3c008d              move.w   #$8d,-(a7)                         
  016ba  a9bc                  _GetPicture                                 ; $a9bc
  016bc  265f                  movea.l  (a7)+,a3                           
  016be  204b                  movea.l  a3,a0                              
  016c0  a029                  _HLock                                      ; $a029
  016c2  42a7                  clr.l    -(a7)                              
  016c4  3f3c0086              move.w   #$86,-(a7)                         
  016c8  a9bc                  _GetPicture                                 ; $a9bc
  016ca  245f                  movea.l  (a7)+,a2                           
  016cc  204b                  movea.l  a3,a0                              
  016ce  a029                  _HLock                                      ; $a029
  016d0  42a7                  clr.l    -(a7)                              
  016d2  3f3c0082              move.w   #$82,-(a7)                         
  016d6  486eff56              pea      -$aa(a6)                           
  016da  4878ffff              pea      ($ffff).w                          
  016de  a97c                  _GetNewDialog                               ; $a97c
  016e0  285f                  movea.l  (a7)+,a4                           
  016e2  2f0c                  move.l   a4,-(a7)                           
  016e4  4ebaff36              jsr      f7_161c                            
  016e8  2e8c                  move.l   a4,(a7)                            
  016ea  3f3c0001              move.w   #1,-(a7)                           
  016ee  486efec8              pea      -$138(a6)                          
  016f2  486efed2              pea      -$12e(a6)                          
  016f6  486efefe              pea      -$102(a6)                          
  016fa  a98d                  _GetDialogItem                              ; $a98d
  016fc  2f0c                  move.l   a4,-(a7)                           
  016fe  3f3c0002              move.w   #2,-(a7)                           
  01702  486efec8              pea      -$138(a6)                          
  01706  486efed2              pea      -$12e(a6)                          
  0170a  486efef6              pea      -$10a(a6)                          
  0170e  a98d                  _GetDialogItem                              ; $a98d
  01710  2f0c                  move.l   a4,-(a7)                           
  01712  3f3c0003              move.w   #3,-(a7)                           
  01716  486efec8              pea      -$138(a6)                          
  0171a  486efed2              pea      -$12e(a6)                          
  0171e  486efee6              pea      -$11a(a6)                          
  01722  a98d                  _GetDialogItem                              ; $a98d
  01724  2d6c0010feee          move.l   $10(a4),-$112(a6)                  
  0172a  2d6c0014fef2          move.l   $14(a4),-$10e(a6)                  
  01730  2d6efeeefed6          move.l   -$112(a6),-$12a(a6)                
  01736  2d6efef2feda          move.l   -$10e(a6),-$126(a6)                
  0173c  2f39ffff99fc          move.l   g_6604,-(a7)                       
  01742  a873                  _SetPort                                    ; $a873
  01744  2079ffff99fc          movea.l  g_6604,a0                          
  0174a  48680010              pea      $10(a0)                            
  0174e  a8a3                  _EraseRect                                  ; $a8a3
  01750  486efeb0              pea      -$150(a6)                          
  01754  aa14                  _RGBForeColor                               ; $aa14
  01756  2f0b                  move.l   a3,-(a7)                           
  01758  486efeee              pea      -$112(a6)                          
  0175c  a8f6                  _DrawPicture                                ; $a8f6
  0175e  2f0a                  move.l   a2,-(a7)                           
  01760  486efee6              pea      -$11a(a6)                          
  01764  a8f6                  _DrawPicture                                ; $a8f6
  01766  2f2eff06              move.l   -$fa(a6),-(a7)                     
  0176a  486efef6              pea      -$10a(a6)                          
  0176e  a8f6                  _DrawPicture                                ; $a8f6
  01770  2f0c                  move.l   a4,-(a7)                           
  01772  a915                  _ShowWindow                                 ; $a915
  01774  486efeee              pea      -$112(a6)                          
  01778  2f3c00030003          move.l   #$30003,-(a7)                      
  0177e  a8a9                  _InsetRect                                  ; $a8a9
  01780  7801                  moveq    #1,d4                              
  01782  3d7c0001fec8          move.w   #1,-$138(a6)                       
  01788  42a7                  clr.l    -(a7)                              
  0178a  a975                  _TickCount                                  ; $a975
  0178c  2c1f                  move.l   (a7)+,d6                           
  0178e  42a7                  clr.l    -(a7)                              
  01790  a975                  _TickCount                                  ; $a975
  01792  2a1f                  move.l   (a7)+,d5                           
  01794  486efede              pea      -$122(a6)                          
  01798  42a7                  clr.l    -(a7)                              
  0179a  2f3c00820078          move.l   #$820078,-(a7)                     
  017a0  a8a7                  _SetRect                                    ; $a8a7
L17a2:
  017a2  4a39ffff8dfb          tst.b    g_7205                             
  017a8  670e                  beq.s    L17b8                              
  017aa  3f3c5c68              move.w   #$5c68,-(a7)                       
  017ae  4ead030a              jsr      f3_4238                            
  017b2  4ead031a              jsr      f3_4424                            
  017b6  548f                  addq.l   #2,a7                              
L17b8:
  017b8  42a7                  clr.l    -(a7)                              
  017ba  a975                  _TickCount                                  ; $a975
  017bc  201f                  move.l   (a7)+,d0                           
  017be  9086                  sub.l    d6,d0                              
  017c0  7210                  moveq    #16,d1                             
  017c2  b280                  cmp.l    d0,d1                              
  017c4  626a                  bhi.s    L1830                              
  017c6  2f39ffff99fc          move.l   g_6604,-(a7)                       
  017cc  a873                  _SetPort                                    ; $a873
  017ce  2f0b                  move.l   a3,-(a7)                           
  017d0  486efefe              pea      -$102(a6)                          
  017d4  a8f6                  _DrawPicture                                ; $a8f6
  017d6  207045b2ffff9a200002  movea.l  ([-$65e0,a0],d4.w*4,$2),a0         
  017e0  2f10                  move.l   (a0),-(a7)                         
  017e2  2079ffff99fc          movea.l  g_6604,a0                          
  017e8  20680002              movea.l  $2(a0),a0                          
  017ec  2f10                  move.l   (a0),-(a7)                         
  017ee  486efede              pea      -$122(a6)                          
  017f2  486efefe              pea      -$102(a6)                          
  017f6  3f3c0024              move.w   #$24,-(a7)                         
  017fa  42a7                  clr.l    -(a7)                              
  017fc  a8ec                  _CopyBits                                   ; $a8ec
  017fe  2f0c                  move.l   a4,-(a7)                           
  01800  a873                  _SetPort                                    ; $a873
  01802  2079ffff99fc          movea.l  g_6604,a0                          
  01808  20680002              movea.l  $2(a0),a0                          
  0180c  2f10                  move.l   (a0),-(a7)                         
  0180e  486c0002              pea      $2(a4)                             
  01812  486efeee              pea      -$112(a6)                          
  01816  486efed6              pea      -$12a(a6)                          
  0181a  4267                  clr.w    -(a7)                              
  0181c  42a7                  clr.l    -(a7)                              
  0181e  a8ec                  _CopyBits                                   ; $a8ec
  01820  42a7                  clr.l    -(a7)                              
  01822  a975                  _TickCount                                  ; $a975
  01824  2c1f                  move.l   (a7)+,d6                           
  01826  5244                  addq.w   #1,d4                              
  01828  48c4                  ext.l    d4                                 
  0182a  89fc0010              divs.w   #$10,d4                            
  0182e  4844                  swap     d4                                 
L1830:
  01830  42a7                  clr.l    -(a7)                              
  01832  a975                  _TickCount                                  ; $a975
  01834  201f                  move.l   (a7)+,d0                           
  01836  9085                  sub.l    d5,d0                              
  01838  0c80000000b4          cmpi.l   #$b4,d0                            
  0183e  6552                  bcs.s    L1892                              
  01840  306efec8              movea.w  -$138(a6),a0                       
  01844  7001                  moveq    #1,d0                              
  01846  d088                  add.l    a0,d0                              
  01848  81fc0004              divs.w   #4,d0                              
  0184c  4840                  swap     d0                                 
  0184e  3d40fec8              move.w   d0,-$138(a6)                       
  01852  2f39ffff99fc          move.l   g_6604,-(a7)                       
  01858  a873                  _SetPort                                    ; $a873
  0185a  302efec8              move.w   -$138(a6),d0                       
  0185e  2f360520ff06          move.l   (-$fa,a6,d0.w*4),-(a7)             
  01864  486efef6              pea      -$10a(a6)                          
  01868  a8f6                  _DrawPicture                                ; $a8f6
  0186a  2f0c                  move.l   a4,-(a7)                           
  0186c  a873                  _SetPort                                    ; $a873
  0186e  2079ffff99fc          movea.l  g_6604,a0                          
  01874  20680002              movea.l  $2(a0),a0                          
  01878  2f10                  move.l   (a0),-(a7)                         
  0187a  486c0002              pea      $2(a4)                             
  0187e  486efeee              pea      -$112(a6)                          
  01882  486efed6              pea      -$12a(a6)                          
  01886  4267                  clr.w    -(a7)                              
  01888  42a7                  clr.l    -(a7)                              
  0188a  a8ec                  _CopyBits                                   ; $a8ec
  0188c  42a7                  clr.l    -(a7)                              
  0188e  a975                  _TickCount                                  ; $a975
  01890  2a1f                  move.l   (a7)+,d5                           
L1892:
  01892  4227                  clr.b    -(a7)                              
  01894  a974                  _Button                                     ; $a974
  01896  4a1f                  tst.b    (a7)+                              
  01898  6700ff08              beq.w    L17a2                              
  0189c  4ead032a              jsr      f3_44be                            
  018a0  2f2efece              move.l   -$132(a6),-(a7)                    
  018a4  a873                  _SetPort                                    ; $a873
  018a6  2f0c                  move.l   a4,-(a7)                           
  018a8  a983                  _DisposeDialog                              ; $a983
  018aa  7800                  moveq    #0,d4                              
  018ac  6012                  bra.s    L18c0                              
L18ae:
  018ae  20764520ff06          movea.l  (-$fa,a6,d4.w*4),a0                
  018b4  a02a                  _HUnlock                                    ; $a02a
  018b6  2f364520ff06          move.l   (-$fa,a6,d4.w*4),-(a7)             
  018bc  a9a3                  _ReleaseResource                            ; $a9a3
  018be  5244                  addq.w   #1,d4                              
L18c0:
  018c0  0c440004              cmpi.w   #4,d4                              
  018c4  6de8                  blt.s    L18ae                              
  018c6  204b                  movea.l  a3,a0                              
  018c8  a02a                  _HUnlock                                    ; $a02a
  018ca  204a                  movea.l  a2,a0                              
  018cc  a02a                  _HUnlock                                    ; $a02a
  018ce  2f0b                  move.l   a3,-(a7)                           
  018d0  a9a3                  _ReleaseResource                            ; $a9a3
  018d2  2f0a                  move.l   a2,-(a7)                           
  018d4  a9a3                  _ReleaseResource                            ; $a9a3
  018d6  4ead01ca              jsr      f2_6b56                            
  018da  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  018e0  201f                  move.l   (a7)+,d0                           
  018e2  a032                  _FlushEvents                                ; $a032
  018e4  4cdf1cf8              movem.l  (a7)+,d3/d4/d5/d6/d7/a2/a3/a4      
  018e8  4e5e                  unlk     a6                                 
  018ea  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_18ec   [jump table #213]
;----------------------------------------------------------------------
f7_18ec:
  018ec  4e56fc54              link     a6,#-940                           
  018f0  2f0c                  move.l   a4,-(a7)                           
  018f2  426efc54              clr.w    -$3ac(a6)                          
  018f6  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  018fc  a851                  _SetCursor                                  ; $a851
  018fe  a853                  _ShowCursor                                 ; $a853
  01900  302e0008              move.w   $8(a6),d0                          
  01904  6a2a                  bpl.s    L1930                              
  01906  0440ff94              subi.w   #$ff94,d0                          
  0190a  6764                  beq.s    L1970                              
  0190c  6a16                  bpl.s    L1924                              
  0190e  0440ffac              subi.w   #$ffac,d0                          
  01912  676c                  beq.s    L1980                              
  01914  6a06                  bpl.s    L191c                              
  01916  5240                  addq.w   #1,d0                              
  01918  6a76                  bpl.s    L1990                              
  0191a  6014                  bra.s    L1930                              
L191c:
  0191c  04400048              subi.w   #$48,d0                            
  01920  672e                  beq.s    L1950                              
  01922  600c                  bra.s    L1930                              
L1924:
  01924  04400049              subi.w   #$49,d0                            
  01928  6736                  beq.s    L1960                              
  0192a  6a04                  bpl.s    L1930                              
  0192c  5040                  addq.w   #8,d0                              
  0192e  6710                  beq.s    L1940                              
L1930:
  01930  306e0008              movea.w  $8(a6),a0                          
  01934  2f08                  move.l   a0,-(a7)                           
  01936  486efe56              pea      -$1aa(a6)                          
  0193a  4ead0512              jsr      f4_150e                            
  0193e  605e                  bra.s    L199e                              
L1940:
  01940  486efe56              pea      -$1aa(a6)                          
  01944  2f3c000105dc          move.l   #$105dc,-(a7)                      
  0194a  4ead0522              jsr      f4_153c                            
  0194e  604e                  bra.s    L199e                              
L1950:
  01950  486efe56              pea      -$1aa(a6)                          
  01954  2f3c000205dc          move.l   #$205dc,-(a7)                      
  0195a  4ead0522              jsr      f4_153c                            
  0195e  603e                  bra.s    L199e                              
L1960:
  01960  486efe56              pea      -$1aa(a6)                          
  01964  2f3c000305dc          move.l   #$305dc,-(a7)                      
  0196a  4ead0522              jsr      f4_153c                            
  0196e  602e                  bra.s    L199e                              
L1970:
  01970  486efe56              pea      -$1aa(a6)                          
  01974  2f3c000405dc          move.l   #$405dc,-(a7)                      
  0197a  4ead0522              jsr      f4_153c                            
  0197e  601e                  bra.s    L199e                              
L1980:
  01980  486efe56              pea      -$1aa(a6)                          
  01984  2f3c000505dc          move.l   #$505dc,-(a7)                      
  0198a  4ead0522              jsr      f4_153c                            
  0198e  600e                  bra.s    L199e                              
L1990:
  01990  486efe56              pea      -$1aa(a6)                          
  01994  2f3c000605dc          move.l   #$605dc,-(a7)                      
  0199a  4ead0522              jsr      f4_153c                            
L199e:
  0199e  486efe56              pea      -$1aa(a6)                          
  019a2  2f2e000a              move.l   $a(a6),-(a7)                       
  019a6  2f3c000011fc          move.l   STR_11fc,-(a7)                     ; "?"
  019ac  2f3c000011fe          move.l   STR_11fe,-(a7)                     ; "?"
  019b2  a98b                  _ParamText                                  ; $a98b
  019b4  42a7                  clr.l    -(a7)                              
  019b6  3f3c1b59              move.w   #$1b59,-(a7)                       
  019ba  486eff56              pea      -$aa(a6)                           
  019be  4878ffff              pea      ($ffff).w                          
  019c2  a97c                  _GetNewDialog                               ; $a97c
  019c4  285f                  movea.l  (a7)+,a4                           
  019c6  2f0c                  move.l   a4,-(a7)                           
  019c8  4ebafc52              jsr      f7_161c                            
  019cc  2e8c                  move.l   a4,(a7)                            
  019ce  a915                  _ShowWindow                                 ; $a915
L19d0:
  019d0  42a7                  clr.l    -(a7)                              
  019d2  486efc54              pea      -$3ac(a6)                          
  019d6  a991                  _ModalDialog                                ; $a991
  019d8  0c6e0001fc54          cmpi.w   #1,-$3ac(a6)                       
  019de  66f0                  bne.s    L19d0                              
  019e0  2f0c                  move.l   a4,-(a7)                           
  019e2  a983                  _DisposeDialog                              ; $a983
  019e4  285f                  movea.l  (a7)+,a4                           
  019e6  4e5e                  unlk     a6                                 
  019e8  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_19ea   [jump table #239]
;----------------------------------------------------------------------
f7_19ea:
  019ea  4e560000              link     a6,#0                              
  019ee  2f07                  move.l   d7,-(a7)                           
  019f0  3e2e000c              move.w   $c(a6),d7                          
  019f4  0c470001              cmpi.w   #1,d7                              
  019f8  6608                  bne.s    L1a02                              
  019fa  7e09                  moveq    #9,d7                              
  019fc  de79ffff8894          add.w    g_776c,d7                          
L1a02:
  01a02  4a39ffff3b13          tst.b    g_c4ed                             
  01a08  6710                  beq.s    L1a1a                              
  01a0a  2f2e0008              move.l   $8(a6),-(a7)                       
  01a0e  2f3075b0ffff9426      move.l   (-$6bda,za0,d7.w*4),-(a7)          
  01a16  aa13                  _FillCPoly                                  ; $aa13
  01a18  600e                  bra.s    L1a28                              
L1a1a:
  01a1a  2f2e0008              move.l   $8(a6),-(a7)                       
  01a1e  2f3075b1ffff94ee      move.l   ([-$6b12,a0],d7.w*4,$0),-(a7)      
  01a26  a8ca                  _FillPoly                                   ; $a8ca
L1a28:
  01a28  2e1f                  move.l   (a7)+,d7                           
  01a2a  4e5e                  unlk     a6                                 
  01a2c  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_1a2e   [jump table #240]
;----------------------------------------------------------------------
f7_1a2e:
  01a2e  4e560000              link     a6,#0                              
  01a32  2f07                  move.l   d7,-(a7)                           
  01a34  3e2e000c              move.w   $c(a6),d7                          
  01a38  0c470001              cmpi.w   #1,d7                              
  01a3c  6608                  bne.s    L1a46                              
  01a3e  7e09                  moveq    #9,d7                              
  01a40  de79ffff8894          add.w    g_776c,d7                          
L1a46:
  01a46  4a39ffff3b13          tst.b    g_c4ed                             
  01a4c  6710                  beq.s    L1a5e                              
  01a4e  2f2e0008              move.l   $8(a6),-(a7)                       
  01a52  2f3075b0ffff9426      move.l   (-$6bda,za0,d7.w*4),-(a7)          
  01a5a  aa0e                  _FillCRect                                  ; $aa0e
  01a5c  600e                  bra.s    L1a6c                              
L1a5e:
  01a5e  2f2e0008              move.l   $8(a6),-(a7)                       
  01a62  2f3075b1ffff94ee      move.l   ([-$6b12,a0],d7.w*4,$0),-(a7)      
  01a6a  a8a5                  _FillRect                                   ; $a8a5
L1a6c:
  01a6c  2e1f                  move.l   (a7)+,d7                           
  01a6e  4e5e                  unlk     a6                                 
  01a70  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_1a72   [jump table #214]
;----------------------------------------------------------------------
f7_1a72:
  01a72  4e56ffd4              link     a6,#-44                            
  01a76  48e70318              movem.l  d6/d7/a3/a4,-(a7)                  
  01a7a  3e2e000c              move.w   $c(a6),d7                          
  01a7e  7c00                  moveq    #0,d6                              
  01a80  486effe0              pea      -$20(a6)                           
  01a84  a874                  _GetPort                                    ; $a874
  01a86  4a39ffff9932          tst.b    g_66ce                             
  01a8c  6734                  beq.s    L1ac2                              
  01a8e  42a7                  clr.l    -(a7)                              
  01a90  3f07                  move.w   d7,-(a7)                           
  01a92  aa1e                  _GetCIcon                                   ; $aa1e
  01a94  285f                  movea.l  (a7)+,a4                           
  01a96  200c                  move.l   a4,d0                              
  01a98  6618                  bne.s    L1ab2                              
  01a9a  2f3c00001200          move.l   STR_1200,-(a7)                     ; "could not find color icon"
  01aa0  3f07                  move.w   d7,-(a7)                           
  01aa2  4ebafe48              jsr      f7_18ec                            
  01aa6  4297                  clr.l    (a7)                               
  01aa8  3f3c00d1              move.w   #$d1,-(a7)                         
  01aac  aa1e                  _GetCIcon                                   ; $aa1e
  01aae  285f                  movea.l  (a7)+,a4                           
  01ab0  548f                  addq.l   #2,a7                              
L1ab2:
  01ab2  2f2e0008              move.l   $8(a6),-(a7)                       
  01ab6  2f0c                  move.l   a4,-(a7)                           
  01ab8  aa1f                  _PlotCIcon                                  ; $aa1f
  01aba  2f0c                  move.l   a4,-(a7)                           
  01abc  aa25                  _DisposeCIcon                               ; $aa25
  01abe  600000a4              bra.w    L1b64                              
L1ac2:
  01ac2  42a7                  clr.l    -(a7)                              
  01ac4  2f3c49434e23          move.l   #$49434e23,-(a7)                   
  01aca  3f07                  move.w   d7,-(a7)                           
  01acc  a9a0                  _GetResource                                ; $a9a0
  01ace  265f                  movea.l  (a7)+,a3                           
  01ad0  200b                  move.l   a3,d0                              
  01ad2  6610                  bne.s    L1ae4                              
  01ad4  2f3c0000121a          move.l   STR_121a,-(a7)                     ; "GetIcon"
  01ada  4267                  clr.w    -(a7)                              
  01adc  4ebafe0e              jsr      f7_18ec                            
  01ae0  60000082              bra.w    L1b64                              
L1ae4:
  01ae4  204b                  movea.l  a3,a0                              
  01ae6  a029                  _HLock                                      ; $a029
  01ae8  2d53fff2              move.l   (a3),-$e(a6)                       
  01aec  42a7                  clr.l    -(a7)                              
  01aee  2f0b                  move.l   a3,-(a7)                           
  01af0  4ead04ba              jsr      f4_138c                            
  01af4  2c1f                  move.l   (a7)+,d6                           
  01af6  2d53fff2              move.l   (a3),-$e(a6)                       
  01afa  206efff2              movea.l  -$e(a6),a0                         
  01afe  41e80080              lea      $80(a0),a0                         
  01b02  2d48ffe4              move.l   a0,-$1c(a6)                        
  01b06  3d7c0004fff6          move.w   #4,-$a(a6)                         
  01b0c  3d7c0004ffe8          move.w   #4,-$18(a6)                        
  01b12  486efff8              pea      -$8(a6)                            
  01b16  42a7                  clr.l    -(a7)                              
  01b18  2f3c00200020          move.l   #$200020,-(a7)                     
  01b1e  a8a7                  _SetRect                                    ; $a8a7
  01b20  486effea              pea      -$16(a6)                           
  01b24  42a7                  clr.l    -(a7)                              
  01b26  2f3c00200020          move.l   #$200020,-(a7)                     
  01b2c  a8a7                  _SetRect                                    ; $a8a7
  01b2e  206e0008              movea.l  $8(a6),a0                          
  01b32  2d50ffd8              move.l   (a0),-$28(a6)                      
  01b36  2d680004ffdc          move.l   $4(a0),-$24(a6)                    
  01b3c  486efff2              pea      -$e(a6)                            
  01b40  486effe4              pea      -$1c(a6)                           
  01b44  2279ffffac6a          movea.l  g_5396,a1                          
  01b4a  48690002              pea      $2(a1)                             
  01b4e  486efff8              pea      -$8(a6)                            
  01b52  486effea              pea      -$16(a6)                           
  01b56  486effd8              pea      -$28(a6)                           
  01b5a  a817                  _CopyMask                                   ; $a817
  01b5c  204b                  movea.l  a3,a0                              
  01b5e  a02a                  _HUnlock                                    ; $a02a
  01b60  2f0b                  move.l   a3,-(a7)                           
  01b62  a9a3                  _ReleaseResource                            ; $a9a3
L1b64:
  01b64  4cee18c0ffc4          movem.l  -$3c(a6),d6/d7/a3/a4               
  01b6a  4e5e                  unlk     a6                                 
  01b6c  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_1b6e   [jump table #215]
;----------------------------------------------------------------------
f7_1b6e:
  01b6e  4e56fffe              link     a6,#-2                             
  01b72  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  01b76  3e2e0008              move.w   $8(a6),d7                          
  01b7a  3c2e000a              move.w   $a(a6),d6                          
  01b7e  286e000c              movea.l  $c(a6),a4                          
  01b82  303073b0ffff887c      move.w   (-$7784,za0,d7.w*2),d0             
  01b8a  0440002a              subi.w   #$2a,d0                            
  01b8e  0c40000e              cmpi.w   #$e,d0                             
  01b92  62000316              bhi.w    L1eaa                              
  01b96  43fa031a              lea      L1eb2(pc),a1                       
  01b9a  d2f10200              adda.w   $0(a1,d0.w*2),a1                   
  01b9e  4ed1                  jmp      (a1)                               
  01ba0  3f3c0006              move.w   #6,-(a7)                           
  01ba4  4ead0242              jsr      f2_79a8                            
  01ba8  3d40fffe              move.w   d0,-$2(a6)                         
  01bac  2f0c                  move.l   a4,-(a7)                           
  01bae  3f3c0002              move.w   #2,-(a7)                           
  01bb2  72d7                  moveq    #-41,d1                            
  01bb4  d27073b0ffff887a      add.w    (-$7786,za0,d7.w*2),d1             
  01bbc  3f01                  move.w   d1,-(a7)                           
  01bbe  486efffe              pea      -$2(a6)                            
  01bc2  3f06                  move.w   d6,-(a7)                           
  01bc4  4ead0662              jsr      f6_1f50                            
  01bc8  302efffe              move.w   -$2(a6),d0                         
  01bcc  917063b0ffff8ccc      sub.w    d0,(-$7334,za0,d6.w*2)             
  01bd4  4fef0010              lea      $10(a7),a7                         
  01bd8  600002d0              bra.w    L1eaa                              
  01bdc  3f3c000c              move.w   #$c,-(a7)                          
  01be0  4ead0242              jsr      f2_79a8                            
  01be4  3d40fffe              move.w   d0,-$2(a6)                         
  01be8  2f0c                  move.l   a4,-(a7)                           
  01bea  3f3c0002              move.w   #2,-(a7)                           
  01bee  72d7                  moveq    #-41,d1                            
  01bf0  d27073b0ffff887a      add.w    (-$7786,za0,d7.w*2),d1             
  01bf8  3f01                  move.w   d1,-(a7)                           
  01bfa  486efffe              pea      -$2(a6)                            
  01bfe  3f06                  move.w   d6,-(a7)                           
  01c00  4ead0662              jsr      f6_1f50                            
  01c04  302efffe              move.w   -$2(a6),d0                         
  01c08  917063b0ffff8ccc      sub.w    d0,(-$7334,za0,d6.w*2)             
  01c10  4fef0010              lea      $10(a7),a7                         
  01c14  60000294              bra.w    L1eaa                              
  01c18  3f3c0012              move.w   #$12,-(a7)                         
  01c1c  4ead0242              jsr      f2_79a8                            
  01c20  3d40fffe              move.w   d0,-$2(a6)                         
  01c24  2f0c                  move.l   a4,-(a7)                           
  01c26  3f3c0002              move.w   #2,-(a7)                           
  01c2a  72d7                  moveq    #-41,d1                            
  01c2c  d27073b0ffff887a      add.w    (-$7786,za0,d7.w*2),d1             
  01c34  3f01                  move.w   d1,-(a7)                           
  01c36  486efffe              pea      -$2(a6)                            
  01c3a  3f06                  move.w   d6,-(a7)                           
  01c3c  4ead0662              jsr      f6_1f50                            
  01c40  302efffe              move.w   -$2(a6),d0                         
  01c44  917063b0ffff8ccc      sub.w    d0,(-$7334,za0,d6.w*2)             
  01c4c  4fef0010              lea      $10(a7),a7                         
  01c50  60000258              bra.w    L1eaa                              
  01c54  303063b0ffff8c78      move.w   (-$7388,za0,d6.w*2),d0             
  01c5c  6b00024c              bmi.w    L1eaa                              
  01c60  04400035              subi.w   #$35,d0                            
  01c64  6736                  beq.s    L1c9c                              
  01c66  6a1a                  bpl.s    L1c82                              
  01c68  0440ffe7              subi.w   #$ffe7,d0                          
  01c6c  672e                  beq.s    L1c9c                              
  01c6e  6a0a                  bpl.s    L1c7a                              
  01c70  0440fff1              subi.w   #$fff1,d0                          
  01c74  6726                  beq.s    L1c9c                              
  01c76  60000232              bra.w    L1eaa                              
L1c7a:
  01c7a  5f40                  subq.w   #7,d0                              
  01c7c  671e                  beq.s    L1c9c                              
  01c7e  6000022a              bra.w    L1eaa                              
L1c82:
  01c82  04400024              subi.w   #$24,d0                            
  01c86  6714                  beq.s    L1c9c                              
  01c88  6a0a                  bpl.s    L1c94                              
  01c8a  0440fff6              subi.w   #$fff6,d0                          
  01c8e  670c                  beq.s    L1c9c                              
  01c90  60000218              bra.w    L1eaa                              
L1c94:
  01c94  5b40                  subq.w   #5,d0                              
  01c96  6704                  beq.s    L1c9c                              
  01c98  60000210              bra.w    L1eaa                              
L1c9c:
  01c9c  31bcffff63b0ffff8ccc  move.w   #$ffff,(-$7334,za0,d6.w*2)         
  01ca6  60000202              bra.w    L1eaa                              
  01caa  3f3c0004              move.w   #4,-(a7)                           
  01cae  4ead0242              jsr      f2_79a8                            
  01cb2  3d40fffe              move.w   d0,-$2(a6)                         
  01cb6  2f0c                  move.l   a4,-(a7)                           
  01cb8  3f3c0002              move.w   #2,-(a7)                           
  01cbc  72d7                  moveq    #-41,d1                            
  01cbe  d27073b0ffff887a      add.w    (-$7786,za0,d7.w*2),d1             
  01cc6  3f01                  move.w   d1,-(a7)                           
  01cc8  486efffe              pea      -$2(a6)                            
  01ccc  3f06                  move.w   d6,-(a7)                           
  01cce  4ead0662              jsr      f6_1f50                            
  01cd2  302efffe              move.w   -$2(a6),d0                         
  01cd6  917063b0ffff8ccc      sub.w    d0,(-$7334,za0,d6.w*2)             
  01cde  4fef0010              lea      $10(a7),a7                         
  01ce2  600001c6              bra.w    L1eaa                              
  01ce6  3f3c0008              move.w   #8,-(a7)                           
  01cea  4ead0242              jsr      f2_79a8                            
  01cee  3d40fffe              move.w   d0,-$2(a6)                         
  01cf2  2f0c                  move.l   a4,-(a7)                           
  01cf4  3f3c0002              move.w   #2,-(a7)                           
  01cf8  72d7                  moveq    #-41,d1                            
  01cfa  d27073b0ffff887a      add.w    (-$7786,za0,d7.w*2),d1             
  01d02  3f01                  move.w   d1,-(a7)                           
  01d04  486efffe              pea      -$2(a6)                            
  01d08  3f06                  move.w   d6,-(a7)                           
  01d0a  4ead0662              jsr      f6_1f50                            
  01d0e  302efffe              move.w   -$2(a6),d0                         
  01d12  917063b0ffff8ccc      sub.w    d0,(-$7334,za0,d6.w*2)             
  01d1a  4fef0010              lea      $10(a7),a7                         
  01d1e  6000018a              bra.w    L1eaa                              
  01d22  3f3c000c              move.w   #$c,-(a7)                          
  01d26  4ead0242              jsr      f2_79a8                            
  01d2a  3d40fffe              move.w   d0,-$2(a6)                         
  01d2e  2f0c                  move.l   a4,-(a7)                           
  01d30  3f3c0002              move.w   #2,-(a7)                           
  01d34  72d7                  moveq    #-41,d1                            
  01d36  d27073b0ffff887a      add.w    (-$7786,za0,d7.w*2),d1             
  01d3e  3f01                  move.w   d1,-(a7)                           
  01d40  486efffe              pea      -$2(a6)                            
  01d44  3f06                  move.w   d6,-(a7)                           
  01d46  4ead0662              jsr      f6_1f50                            
  01d4a  302efffe              move.w   -$2(a6),d0                         
  01d4e  917063b0ffff8ccc      sub.w    d0,(-$7334,za0,d6.w*2)             
  01d56  4fef0010              lea      $10(a7),a7                         
  01d5a  6000014e              bra.w    L1eaa                              
  01d5e  303063b0ffff8c78      move.w   (-$7388,za0,d6.w*2),d0             
  01d66  6b000142              bmi.w    L1eaa                              
  01d6a  04400046              subi.w   #$46,d0                            
  01d6e  671a                  beq.s    L1d8a                              
  01d70  6a0e                  bpl.s    L1d80                              
  01d72  5840                  addq.w   #4,d0                              
  01d74  6a000134              bpl.w    L1eaa                              
  01d78  5440                  addq.w   #2,d0                              
  01d7a  6a0e                  bpl.s    L1d8a                              
  01d7c  6000012c              bra.w    L1eaa                              
L1d80:
  01d80  04400011              subi.w   #$11,d0                            
  01d84  6704                  beq.s    L1d8a                              
  01d86  60000122              bra.w    L1eaa                              
L1d8a:
  01d8a  31bcffff63b0ffff8ccc  move.w   #$ffff,(-$7334,za0,d6.w*2)         
  01d94  60000114              bra.w    L1eaa                              
  01d98  3f3c0006              move.w   #6,-(a7)                           
  01d9c  4ead0242              jsr      f2_79a8                            
  01da0  d17063b0ffff8ca2      add.w    d0,(-$735e,za0,d6.w*2)             
  01da8  548f                  addq.l   #2,a7                              
  01daa  600000fe              bra.w    L1eaa                              
  01dae  7a01                  moveq    #1,d5                              
  01db0  6020                  bra.s    L1dd2                              
L1db2:
  01db2  303063b0ffff8c78      move.w   (-$7388,za0,d6.w*2),d0             
  01dba  3f3003b0ffff7258      move.w   (-$8da8,za0,d0.w*2),-(a7)          
  01dc2  4ead0242              jsr      f2_79a8                            
  01dc6  d17063b0ffff8ccc      add.w    d0,(-$7334,za0,d6.w*2)             
  01dce  548f                  addq.l   #2,a7                              
  01dd0  5245                  addq.w   #1,d5                              
L1dd2:
  01dd2  70ff                  moveq    #-1,d0                             
  01dd4  d079ffff8894          add.w    g_776c,d0                          
  01dda  b045                  cmp.w    d5,d0                              
  01ddc  6cd4                  bge.s    L1db2                              
  01dde  31b063b0ffff8ccc63b0  move.w   (-$7334,za0,d6.w*2),(-$730a,za0,d6.w*2)
  01dec  600000bc              bra.w    L1eaa                              
  01df0  7a01                  moveq    #1,d5                              
  01df2  6020                  bra.s    L1e14                              
L1df4:
  01df4  303063b0ffff8c78      move.w   (-$7388,za0,d6.w*2),d0             
  01dfc  3f3003b0ffff7258      move.w   (-$8da8,za0,d0.w*2),-(a7)          
  01e04  4ead0242              jsr      f2_79a8                            
  01e08  d17063b0ffff8ccc      add.w    d0,(-$7334,za0,d6.w*2)             
  01e10  548f                  addq.l   #2,a7                              
  01e12  5245                  addq.w   #1,d5                              
L1e14:
  01e14  7001                  moveq    #1,d0                              
  01e16  d079ffff8894          add.w    g_776c,d0                          
  01e1c  b045                  cmp.w    d5,d0                              
  01e1e  6cd4                  bge.s    L1df4                              
  01e20  31b063b0ffff8ccc63b0  move.w   (-$7334,za0,d6.w*2),(-$730a,za0,d6.w*2)
  01e2e  607a                  bra.s    L1eaa                              
  01e30  303063b0ffff8c78      move.w   (-$7388,za0,d6.w*2),d0             
  01e38  6b70                  bmi.s    L1eaa                              
  01e3a  04400047              subi.w   #$47,d0                            
  01e3e  671a                  beq.s    L1e5a                              
  01e40  6a10                  bpl.s    L1e52                              
  01e42  0440fff7              subi.w   #$fff7,d0                          
  01e46  6712                  beq.s    L1e5a                              
  01e48  6a60                  bpl.s    L1eaa                              
  01e4a  0440ffce              subi.w   #$ffce,d0                          
  01e4e  670a                  beq.s    L1e5a                              
  01e50  6058                  bra.s    L1eaa                              
L1e52:
  01e52  04400016              subi.w   #$16,d0                            
  01e56  6702                  beq.s    L1e5a                              
  01e58  6050                  bra.s    L1eaa                              
L1e5a:
  01e5a  31bcffff63b0ffff8ccc  move.w   #$ffff,(-$7334,za0,d6.w*2)         
  01e64  6044                  bra.s    L1eaa                              
  01e66  31b063b0ffff8cf663b0  move.w   (-$730a,za0,d6.w*2),(-$7334,za0,d6.w*2)
  01e74  6034                  bra.s    L1eaa                              
  01e76  303063b0ffff8c78      move.w   (-$7388,za0,d6.w*2),d0             
  01e7e  6b2a                  bmi.s    L1eaa                              
  01e80  04400048              subi.w   #$48,d0                            
  01e84  671a                  beq.s    L1ea0                              
  01e86  6a10                  bpl.s    L1e98                              
  01e88  0440ffe5              subi.w   #$ffe5,d0                          
  01e8c  6712                  beq.s    L1ea0                              
  01e8e  6a1a                  bpl.s    L1eaa                              
  01e90  0440fff1              subi.w   #$fff1,d0                          
  01e94  670a                  beq.s    L1ea0                              
  01e96  6012                  bra.s    L1eaa                              
L1e98:
  01e98  04400010              subi.w   #$10,d0                            
  01e9c  6702                  beq.s    L1ea0                              
  01e9e  600a                  bra.s    L1eaa                              
L1ea0:
  01ea0  31bcffff63b0ffff8ccc  move.w   #$ffff,(-$7334,za0,d6.w*2)         
L1eaa:
  01eaa  4cdf10e0              movem.l  (a7)+,d5/d6/d7/a4                  
  01eae  4e5e                  unlk     a6                                 
  01eb0  4e75                  rts                                         
  01eb2  fcee                  dc.w     $fcee                              
  01eb4  fd2a                  dc.w     $fd2a                              
  01eb6  fd66                  dc.w     $fd66                              
  01eb8  fda2                  dc.w     $fda2                              
  01eba  fdf8                  dc.w     $fdf8                              
  01ebc  fe34                  dc.w     $fe34                              
  01ebe  fe70                  dc.w     $fe70                              
  01ec0  feac                  dc.w     $feac                              
  01ec2  fff8                  dc.w     $fff8                              
  01ec4  fee6                  dc.w     $fee6                              
  01ec6  fefc                  dc.w     $fefc                              
  01ec8  ff3e                  dc.w     $ff3e                              
  01eca  ff7e                  dc.w     $ff7e                              
  01ecc  ffb4                  dc.w     $ffb4                              
  01ece  ffc4                  dc.w     $ffc4                              

;----------------------------------------------------------------------
; f7_1ed0   [jump table #216]
;----------------------------------------------------------------------
f7_1ed0:
  01ed0  4e560000              link     a6,#0                              
  01ed4  2f07                  move.l   d7,-(a7)                           
  01ed6  4267                  clr.w    -(a7)                              
  01ed8  2f3c61657674          move.l   #$61657674,-(a7)                   
  01ede  2f3c71756974          move.l   #$71756974,-(a7)                   
  01ee4  486d071a              pea      f7_2904                            
  01ee8  42a7                  clr.l    -(a7)                              
  01eea  4227                  clr.b    -(a7)                              
  01eec  303c091f              move.w   #$91f,d0                           
  01ef0  a816                  _Pack8                                      ; $a816
  01ef2  3e1f                  move.w   (a7)+,d7                           
  01ef4  4a47                  tst.w    d7                                 
  01ef6  6706                  beq.s    L1efe                              
  01ef8  3f3c0003              move.w   #3,-(a7)                           
  01efc  a9c8                  _SysBeep                                    ; $a9c8
L1efe:
  01efe  4267                  clr.w    -(a7)                              
  01f00  2f3c61657674          move.l   #$61657674,-(a7)                   
  01f06  2f3c6f646f63          move.l   #$6f646f63,-(a7)                   
  01f0c  486d070a              pea      f7_235c                            
  01f10  42a7                  clr.l    -(a7)                              
  01f12  4227                  clr.b    -(a7)                              
  01f14  303c091f              move.w   #$91f,d0                           
  01f18  a816                  _Pack8                                      ; $a816
  01f1a  3e1f                  move.w   (a7)+,d7                           
  01f1c  4a47                  tst.w    d7                                 
  01f1e  6706                  beq.s    L1f26                              
  01f20  3f3c0003              move.w   #3,-(a7)                           
  01f24  a9c8                  _SysBeep                                    ; $a9c8
L1f26:
  01f26  4267                  clr.w    -(a7)                              
  01f28  2f3c61657674          move.l   #$61657674,-(a7)                   
  01f2e  2f3c6f617070          move.l   #$6f617070,-(a7)                   
  01f34  486d0702              pea      f7_2334                            
  01f38  42a7                  clr.l    -(a7)                              
  01f3a  4227                  clr.b    -(a7)                              
  01f3c  303c091f              move.w   #$91f,d0                           
  01f40  a816                  _Pack8                                      ; $a816
  01f42  3e1f                  move.w   (a7)+,d7                           
  01f44  4a47                  tst.w    d7                                 
  01f46  6706                  beq.s    L1f4e                              
  01f48  3f3c0003              move.w   #3,-(a7)                           
  01f4c  a9c8                  _SysBeep                                    ; $a9c8
L1f4e:
  01f4e  4267                  clr.w    -(a7)                              
  01f50  2f3c61657674          move.l   #$61657674,-(a7)                   
  01f56  2f3c70646f63          move.l   #$70646f63,-(a7)                   
  01f5c  486d0712              pea      f7_247c                            
  01f60  42a7                  clr.l    -(a7)                              
  01f62  4227                  clr.b    -(a7)                              
  01f64  303c091f              move.w   #$91f,d0                           
  01f68  a816                  _Pack8                                      ; $a816
  01f6a  3e1f                  move.w   (a7)+,d7                           
  01f6c  4a47                  tst.w    d7                                 
  01f6e  6706                  beq.s    L1f76                              
  01f70  3f3c0003              move.w   #3,-(a7)                           
  01f74  a9c8                  _SysBeep                                    ; $a9c8
L1f76:
  01f76  2e1f                  move.l   (a7)+,d7                           
  01f78  4e5e                  unlk     a6                                 
  01f7a  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_1f7c   [jump table #217]
;----------------------------------------------------------------------
f7_1f7c:
  01f7c  4e560000              link     a6,#0                              
  01f80  48e70700              movem.l  d5/d6/d7,-(a7)                     
  01f84  7e00                  moveq    #0,d7                              
  01f86  7a01                  moveq    #1,d5                              
  01f88  6010                  bra.s    L1f9a                              
L1f8a:
  01f8a  4a3051b0ffff980f      tst.b    (-$67f1,za0,d5.w)                  
  01f92  6704                  beq.s    L1f98                              
  01f94  7e01                  moveq    #1,d7                              
  01f96  6008                  bra.s    L1fa0                              
L1f98:
  01f98  5245                  addq.w   #1,d5                              
L1f9a:
  01f9a  0c45000e              cmpi.w   #$e,d5                             
  01f9e  6dea                  blt.s    L1f8a                              
L1fa0:
  01fa0  4a07                  tst.b    d7                                 
  01fa2  6610                  bne.s    L1fb4                              
  01fa4  13fc0001ffff9819      move.b   #1,g_67e7                          
  01fac  13fc0001ffff981c      move.b   #1,g_67e4                          
L1fb4:
  01fb4  7e00                  moveq    #0,d7                              
  01fb6  7c00                  moveq    #0,d6                              
L1fb8:
  01fb8  3f3c000d              move.w   #$d,-(a7)                          
  01fbc  4ead0242              jsr      f2_79a8                            
  01fc0  3a00                  move.w   d0,d5                              
  01fc2  548f                  addq.l   #2,a7                              
  01fc4  4a3051b0ffff980f      tst.b    (-$67f1,za0,d5.w)                  
  01fcc  67ea                  beq.s    L1fb8                              
  01fce  0c45000d              cmpi.w   #$d,d5                             
  01fd2  620000ba              bhi.w    L208e                              
  01fd6  43fa00c0              lea      L2098(pc),a1                       
  01fda  d2f15200              adda.w   $0(a1,d5.w*2),a1                   
  01fde  4ed1                  jmp      (a1)                               
  01fe0  2f3cffff0000          move.l   #$ffff0000,-(a7)                   
  01fe6  2f3c01000100          move.l   #$1000100,-(a7)                    
  01fec  4ead0102              jsr      f2_33a2                            
  01ff0  1e00                  move.b   d0,d7                              
  01ff2  7c01                  moveq    #1,d6                              
  01ff4  508f                  addq.l   #8,a7                              
  01ff6  60000096              bra.w    L208e                              
  01ffa  42a7                  clr.l    -(a7)                              
  01ffc  42a7                  clr.l    -(a7)                              
  01ffe  4227                  clr.b    -(a7)                              
  02000  4ead066a              jsr      f6_23e0                            
  02004  1e00                  move.b   d0,d7                              
  02006  7c01                  moveq    #1,d6                              
  02008  4fef000a              lea      $a(a7),a7                          
  0200c  60000080              bra.w    L208e                              
  02010  42a7                  clr.l    -(a7)                              
  02012  42a7                  clr.l    -(a7)                              
  02014  4ead044a              jsr      f4_4d78                            
  02018  1e00                  move.b   d0,d7                              
  0201a  7c01                  moveq    #1,d6                              
  0201c  508f                  addq.l   #8,a7                              
  0201e  606e                  bra.s    L208e                              
  02020  2f3cffff0000          move.l   #$ffff0000,-(a7)                   
  02026  4227                  clr.b    -(a7)                              
  02028  3f3c0002              move.w   #2,-(a7)                           
  0202c  4ead0242              jsr      f2_79a8                            
  02030  5300                  subq.b   #1,d0                              
  02032  1e80                  move.b   d0,(a7)                            
  02034  4ead0682              jsr      f6_3048                            
  02038  1e00                  move.b   d0,d7                              
  0203a  7c01                  moveq    #1,d6                              
  0203c  508f                  addq.l   #8,a7                              
  0203e  604e                  bra.s    L208e                              
  02040  42a7                  clr.l    -(a7)                              
  02042  2f3c00050000          move.l   #$50000,-(a7)                      
  02048  4ead052a              jsr      f5_0b38                            
  0204c  1e00                  move.b   d0,d7                              
  0204e  7c01                  moveq    #1,d6                              
  02050  508f                  addq.l   #8,a7                              
  02052  603a                  bra.s    L208e                              
  02054  42a7                  clr.l    -(a7)                              
  02056  42a7                  clr.l    -(a7)                              
  02058  4ead0282              jsr      f3_07c6                            
  0205c  1e00                  move.b   d0,d7                              
  0205e  7c01                  moveq    #1,d6                              
  02060  508f                  addq.l   #8,a7                              
  02062  602a                  bra.s    L208e                              
  02064  42a7                  clr.l    -(a7)                              
  02066  4227                  clr.b    -(a7)                              
  02068  3f3c0002              move.w   #2,-(a7)                           
  0206c  4ead0242              jsr      f2_79a8                            
  02070  5300                  subq.b   #1,d0                              
  02072  1e80                  move.b   d0,(a7)                            
  02074  4ead069a              jsr      f6_3756                            
  02078  1e00                  move.b   d0,d7                              
  0207a  7c01                  moveq    #1,d6                              
  0207c  508f                  addq.l   #8,a7                              
  0207e  600e                  bra.s    L208e                              
  02080  42a7                  clr.l    -(a7)                              
  02082  42a7                  clr.l    -(a7)                              
  02084  4ebae708              jsr      f7_078e                            
  02088  1e00                  move.b   d0,d7                              
  0208a  7c01                  moveq    #1,d6                              
  0208c  508f                  addq.l   #8,a7                              
L208e:
  0208e  1007                  move.b   d7,d0                              
  02090  4cdf00e0              movem.l  (a7)+,d5/d6/d7                     
  02094  4e5e                  unlk     a6                                 
  02096  4e75                  rts                                         
  02098  fff6                  dc.w     $fff6                              
  0209a  ff48                  dc.w     $ff48                              
  0209c  ff48                  dc.w     $ff48                              
  0209e  ff48                  dc.w     $ff48                              
  020a0  ff48                  dc.w     $ff48                              
  020a2  ff62                  dc.w     $ff62                              
  020a4  ff78                  dc.w     $ff78                              
  020a6  ff78                  dc.w     $ff78                              
  020a8  ff78                  dc.w     $ff78                              
  020aa  ff88                  dc.w     $ff88                              
  020ac  ffa8                  dc.w     $ffa8                              
  020ae  ffbc                  dc.w     $ffbc                              
  020b0  ffcc                  dc.w     $ffcc                              
  020b2  ffe8                  dc.w     $ffe8                              

;----------------------------------------------------------------------
; f7_20b4   [jump table #218]
;----------------------------------------------------------------------
f7_20b4:
  020b4  4e56fdb8              link     a6,#-584                           
  020b8  48e70108              movem.l  d7/a4,-(a7)                        
  020bc  41eefdfe              lea      -$202(a6),a0                       
  020c0  43f9ffffaef2          lea      g_510e,a1                          
  020c6  703f                  moveq    #63,d0                             
L20c8:
  020c8  20d9                  move.l   (a1)+,(a0)+                        
  020ca  51c8fffc              dbf      d0,L20c8                           
  020ce  426efdb8              clr.w    -$248(a6)                          
  020d2  3079ffffa7a4          movea.w  g_585c,a0                          
  020d8  2d48fdba              move.l   a0,-$246(a6)                       
  020dc  41eefdfe              lea      -$202(a6),a0                       
  020e0  43eefdbe              lea      -$242(a6),a1                       
  020e4  7000                  moveq    #0,d0                              
  020e6  102efdfe              move.b   -$202(a6),d0                       
  020ea  5280                  addq.l   #1,d0                              
  020ec  a02e                  _BlockMove                                  ; $a02e
  020ee  0c79000affff3ace      cmpi.w   #$a,g_c532                         
  020f6  6d00008e              blt.w    L2186                              
  020fa  3f39ffff8894          move.w   g_776c,-(a7)                       
  02100  4ead043a              jsr      f4_460e                            
  02104  4257                  clr.w    (a7)                               
  02106  486efdb8              pea      -$248(a6)                          
  0210a  7006                  moveq    #6,d0                              
  0210c  aa52                  _trap    $aa52                              
  0210e  3e1f                  move.w   (a7)+,d7                           
  02110  4a47                  tst.w    d7                                 
  02112  6714                  beq.s    L2128                              
  02114  0c47ffd5              cmpi.w   #$ffd5,d7                          
  02118  670e                  beq.s    L2128                              
  0211a  2f3c00001222          move.l   STR_1222,-(a7)                     ; "deleting backup file"
  02120  3f07                  move.w   d7,-(a7)                           
  02122  4ebaf7c8              jsr      f7_18ec                            
  02126  605e                  bra.s    L2186                              
L2128:
  02128  4267                  clr.w    -(a7)                              
  0212a  486efdb8              pea      -$248(a6)                          
  0212e  2f3c4a444843          move.l   #$4a444843,-(a7)                   
  02134  2f3c4a444847          move.l   #$4a444847,-(a7)                   
  0213a  3f3cffff              move.w   #$ffff,-(a7)                       
  0213e  7004                  moveq    #4,d0                              
  02140  aa52                  _trap    $aa52                              
  02142  3e1f                  move.w   (a7)+,d7                           
  02144  4267                  clr.w    -(a7)                              
  02146  486efdb8              pea      -$248(a6)                          
  0214a  4227                  clr.b    -(a7)                              
  0214c  486efffe              pea      -$2(a6)                            
  02150  7002                  moveq    #2,d0                              
  02152  aa52                  _trap    $aa52                              
  02154  3e1f                  move.w   (a7)+,d7                           
  02156  49ed04e2              lea      f4_140c,a4                         
  0215a  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02160  486efefe              pea      -$102(a6)                          
  02164  a919                  _GetWTitle                                  ; $a919
  02166  486efefe              pea      -$102(a6)                          
  0216a  2f0c                  move.l   a4,-(a7)                           
  0216c  3f2efffe              move.w   -$2(a6),-(a7)                      
  02170  4ead056a              jsr      f5_2096                            
  02174  4257                  clr.w    (a7)                               
  02176  3f2efffe              move.w   -$2(a6),-(a7)                      
  0217a  4ead04d2              jsr      f4_13ee                            
  0217e  3e1f                  move.w   (a7)+,d7                           
  02180  4279ffff3ace          clr.w    g_c532                             
L2186:
  02186  4cee1080fdb0          movem.l  -$250(a6),d7/a4                    
  0218c  4e5e                  unlk     a6                                 
  0218e  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_2190
;----------------------------------------------------------------------
f7_2190:
  02190  4e56fff8              link     a6,#-8                             
  02194  2f07                  move.l   d7,-(a7)                           
  02196  4267                  clr.w    -(a7)                              
  02198  2f2e0008              move.l   $8(a6),-(a7)                       
  0219c  2f3c6d697373          move.l   #$6d697373,-(a7)                   
  021a2  2f3c2a2a2a2a          move.l   #$2a2a2a2a,-(a7)                   
  021a8  486efffc              pea      -$4(a6)                            
  021ac  42a7                  clr.l    -(a7)                              
  021ae  42a7                  clr.l    -(a7)                              
  021b0  486efff8              pea      -$8(a6)                            
  021b4  303c0e15              move.w   #$e15,d0                           
  021b8  a816                  _Pack8                                      ; $a816
  021ba  3e1f                  move.w   (a7)+,d7                           
  021bc  0c47f95b              cmpi.w   #$f95b,d7                          
  021c0  6604                  bne.s    L21c6                              
  021c2  7000                  moveq    #0,d0                              
  021c4  600c                  bra.s    L21d2                              
L21c6:
  021c6  4a47                  tst.w    d7                                 
  021c8  6606                  bne.s    L21d0                              
  021ca  303cf94d              move.w   #$f94d,d0                          
  021ce  6002                  bra.s    L21d2                              
L21d0:
  021d0  3007                  move.w   d7,d0                              
L21d2:
  021d2  2e1f                  move.l   (a7)+,d7                           
  021d4  4e5e                  unlk     a6                                 
  021d6  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_21d8   [jump table #219]
;----------------------------------------------------------------------
f7_21d8:
  021d8  4e56fefc              link     a6,#-260                           
  021dc  48e70318              movem.l  d6/d7/a3/a4,-(a7)                  
  021e0  286e0008              movea.l  $8(a6),a4                          
  021e4  266e000e              movea.l  $e(a6),a3                          
  021e8  4ab9ffff3b14          tst.l    g_c4ec                             
  021ee  6708                  beq.s    L21f8                              
  021f0  2079ffff3b14          movea.l  g_c4ec,a0                          
  021f6  a01f                  _DisposePtr                                 ; $a01f
L21f8:
  021f8  7000                  moveq    #0,d0                              
  021fa  1014                  move.b   (a4),d0                            
  021fc  5240                  addq.w   #1,d0                              
  021fe  48c0                  ext.l    d0                                 
  02200  a11e                  _NewPtr                                     ; $a11e
  02202  23c8ffff3b14          move.l   a0,g_c4ec                          
  02208  4ab9ffff3b14          tst.l    g_c4ec                             
  0220e  661a                  bne.s    L222a                              
  02210  4267                  clr.w    -(a7)                              
  02212  3eb80220              move.w   ($220).w,(a7)                      
  02216  3e1f                  move.w   (a7)+,d7                           
  02218  4a47                  tst.w    d7                                 
  0221a  670e                  beq.s    L222a                              
  0221c  2f3c00001238          move.l   STR_1238,-(a7)                     ; "adding new pointer in openafile. Save your game and restart "
  02222  3f07                  move.w   d7,-(a7)                           
  02224  4ebaf6c6              jsr      f7_18ec                            
  02228  5c8f                  addq.l   #6,a7                              
L222a:
  0222a  7000                  moveq    #0,d0                              
  0222c  1014                  move.b   (a4),d0                            
  0222e  5240                  addq.w   #1,d0                              
  02230  48c0                  ext.l    d0                                 
  02232  2279ffff3b14          movea.l  g_c4ec,a1                          
  02238  204c                  movea.l  a4,a0                              
  0223a  a02e                  _BlockMove                                  ; $a02e
  0223c  200b                  move.l   a3,d0                              
  0223e  660a                  bne.s    L224a                              
  02240  33ee000cffffa798      move.w   $c(a6),g_5868                      
  02248  6006                  bra.s    L2250                              
L224a:
  0224a  33d3ffffa798          move.w   (a3),g_5868                        
L2250:
  02250  200b                  move.l   a3,d0                              
  02252  6744                  beq.s    L2298                              
  02254  4267                  clr.w    -(a7)                              
  02256  2f0b                  move.l   a3,-(a7)                           
  02258  4227                  clr.b    -(a7)                              
  0225a  486efffe              pea      -$2(a6)                            
  0225e  7002                  moveq    #2,d0                              
  02260  aa52                  _trap    $aa52                              
  02262  3e1f                  move.w   (a7)+,d7                           
  02264  4a47                  tst.w    d7                                 
  02266  6710                  beq.s    L2278                              
  02268  2f3c00001282          move.l   STR_1282,-(a7)                     ; "FSpOpenDF"
  0226e  3f07                  move.w   d7,-(a7)                           
  02270  4ebaf67a              jsr      f7_18ec                            
  02274  7000                  moveq    #0,d0                              
  02276  6052                  bra.s    L22ca                              
L2278:
  02278  3f2efffe              move.w   -$2(a6),-(a7)                      
  0227c  4eba0056              jsr      f7_22d4                            
  02280  1c00                  move.b   d0,d6                              
  02282  41f9ffff9936          lea      g_66ca,a0                          
  02288  43d3                  lea      (a3),a1                            
  0228a  7010                  moveq    #16,d0                             
L228c:
  0228c  20d9                  move.l   (a1)+,(a0)+                        
  0228e  51c8fffc              dbf      d0,L228c                           
  02292  30d9                  move.w   (a1)+,(a0)+                        
  02294  1006                  move.b   d6,d0                              
  02296  6032                  bra.s    L22ca                              
L2298:
  02298  4267                  clr.w    -(a7)                              
  0229a  2f0c                  move.l   a4,-(a7)                           
  0229c  3f2e000c              move.w   $c(a6),-(a7)                       
  022a0  486efffe              pea      -$2(a6)                            
  022a4  4ead04ca              jsr      f4_13ae                            
  022a8  3e1f                  move.w   (a7)+,d7                           
  022aa  4a47                  tst.w    d7                                 
  022ac  6710                  beq.s    L22be                              
  022ae  2f3c0000128c          move.l   STR_128c,-(a7)                     ; "opening file in openafile"
  022b4  3f07                  move.w   d7,-(a7)                           
  022b6  4ebaf634              jsr      f7_18ec                            
  022ba  7000                  moveq    #0,d0                              
  022bc  600c                  bra.s    L22ca                              
L22be:
  022be  3f2efffe              move.w   -$2(a6),-(a7)                      
  022c2  4eba0010              jsr      f7_22d4                            
  022c6  1c00                  move.b   d0,d6                              
  022c8  1006                  move.b   d6,d0                              
L22ca:
  022ca  4cee18c0feec          movem.l  -$114(a6),d6/d7/a3/a4              
  022d0  4e5e                  unlk     a6                                 
  022d2  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_22d4
;----------------------------------------------------------------------
f7_22d4:
  022d4  4e56fe00              link     a6,#-512                           
  022d8  48e70108              movem.l  d7/a4,-(a7)                        
  022dc  41eefe00              lea      -$200(a6),a0                       
  022e0  43f9ffffaff2          lea      g_500e,a1                          
  022e6  703f                  moveq    #63,d0                             
L22e8:
  022e8  20d9                  move.l   (a1)+,(a0)+                        
  022ea  51c8fffc              dbf      d0,L22e8                           
  022ee  49ed04da              lea      f4_1408,a4                         
  022f2  486eff00              pea      -$100(a6)                          
  022f6  2f0c                  move.l   a4,-(a7)                           
  022f8  3f2e0008              move.w   $8(a6),-(a7)                       
  022fc  4ead056a              jsr      f5_2096                            
  02300  4257                  clr.w    (a7)                               
  02302  3f2e0008              move.w   $8(a6),-(a7)                       
  02306  4ead04d2              jsr      f4_13ee                            
  0230a  3e1f                  move.w   (a7)+,d7                           
  0230c  4a47                  tst.w    d7                                 
  0230e  508f                  addq.l   #8,a7                              
  02310  6710                  beq.s    L2322                              
  02312  2f3c000012a6          move.l   STR_12a6,-(a7)                     ; "closing filein readthefile"
  02318  3f07                  move.w   d7,-(a7)                           
  0231a  4ebaf5d0              jsr      f7_18ec                            
  0231e  7000                  moveq    #0,d0                              
  02320  6008                  bra.s    L232a                              
L2322:
  02322  4239ffff3b1e          clr.b    g_c4e2                             
  02328  7001                  moveq    #1,d0                              
L232a:
  0232a  4cee1080fdf8          movem.l  -$208(a6),d7/a4                    
  02330  4e5e                  unlk     a6                                 
  02332  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_2334   [jump table #220]
;----------------------------------------------------------------------
f7_2334:
  02334  4e560000              link     a6,#0                              
  02338  2f07                  move.l   d7,-(a7)                           
  0233a  2f2e0010              move.l   $10(a6),-(a7)                      
  0233e  4ebafe50              jsr      f7_2190                            
  02342  3e00                  move.w   d0,d7                              
  02344  4a47                  tst.w    d7                                 
  02346  588f                  addq.l   #4,a7                              
  02348  6706                  beq.s    L2350                              
  0234a  3d470014              move.w   d7,$14(a6)                         
  0234e  6004                  bra.s    L2354                              
L2350:
  02350  426e0014              clr.w    $14(a6)                            
L2354:
  02354  2e1f                  move.l   (a7)+,d7                           
  02356  4e5e                  unlk     a6                                 
  02358  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f7_235c   [jump table #221]
;----------------------------------------------------------------------
f7_235c:
  0235c  4e56fe96              link     a6,#-362                           
  02360  48e70300              movem.l  d6/d7,-(a7)                        
  02364  4267                  clr.w    -(a7)                              
  02366  2f2e0010              move.l   $10(a6),-(a7)                      
  0236a  2f3c2d2d2d2d          move.l   #$2d2d2d2d,-(a7)                   
  02370  2f3c6c697374          move.l   #$6c697374,-(a7)                   
  02376  486effb2              pea      -$4e(a6)                           
  0237a  303c0812              move.w   #$812,d0                           
  0237e  a816                  _Pack8                                      ; $a816
  02380  3e1f                  move.w   (a7)+,d7                           
  02382  4a47                  tst.w    d7                                 
  02384  670e                  beq.s    L2394                              
  02386  2f3c000012c2          move.l   STR_12c2,-(a7)                     ; "AEGetParamDesc"
  0238c  3f07                  move.w   d7,-(a7)                           
  0238e  4ebaf55c              jsr      f7_18ec                            
  02392  5c8f                  addq.l   #6,a7                              
L2394:
  02394  2f2e0010              move.l   $10(a6),-(a7)                      
  02398  4ebafdf6              jsr      f7_2190                            
  0239c  3e00                  move.w   d0,d7                              
  0239e  4a47                  tst.w    d7                                 
  023a0  588f                  addq.l   #4,a7                              
  023a2  6716                  beq.s    L23ba                              
  023a4  4267                  clr.w    -(a7)                              
  023a6  486effb2              pea      -$4e(a6)                           
  023aa  303c0204              move.w   #$204,d0                           
  023ae  a816                  _Pack8                                      ; $a816
  023b0  3e1f                  move.w   (a7)+,d7                           
  023b2  3d470014              move.w   d7,$14(a6)                         
  023b6  600000ba              bra.w    L2472                              
L23ba:
  023ba  4267                  clr.w    -(a7)                              
  023bc  486effb2              pea      -$4e(a6)                           
  023c0  486effaa              pea      -$56(a6)                           
  023c4  303c0407              move.w   #$407,d0                           
  023c8  a816                  _Pack8                                      ; $a816
  023ca  3e1f                  move.w   (a7)+,d7                           
  023cc  4267                  clr.w    -(a7)                              
  023ce  486effb2              pea      -$4e(a6)                           
  023d2  48780001              pea      ($1).w                             
  023d6  2f3c66737320          move.l   #$66737320,-(a7)                   
  023dc  486effa2              pea      -$5e(a6)                           
  023e0  486eff9e              pea      -$62(a6)                           
  023e4  486effba              pea      -$46(a6)                           
  023e8  48780046              pea      ($46).w                            
  023ec  486effa6              pea      -$5a(a6)                           
  023f0  303c100a              move.w   #$100a,d0                          
  023f4  a816                  _Pack8                                      ; $a816
  023f6  3e1f                  move.w   (a7)+,d7                           
  023f8  4a47                  tst.w    d7                                 
  023fa  670e                  beq.s    L240a                              
  023fc  2f3c000012d2          move.l   STR_12d2,-(a7)                     ; "AEGetNthPtr"
  02402  3f07                  move.w   d7,-(a7)                           
  02404  4ebaf4e6              jsr      f7_18ec                            
  02408  5c8f                  addq.l   #6,a7                              
L240a:
  0240a  486effba              pea      -$46(a6)                           
  0240e  4267                  clr.w    -(a7)                              
  02410  486effc0              pea      -$40(a6)                           
  02414  4ebafdc2              jsr      f7_21d8                            
  02418  1c00                  move.b   d0,d6                              
  0241a  4a06                  tst.b    d6                                 
  0241c  4fef000a              lea      $a(a7),a7                          
  02420  672a                  beq.s    L244c                              
  02422  4ead0572              jsr      f5_2770                            
  02426  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  0242c  a915                  _ShowWindow                                 ; $a915
  0242e  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02434  a915                  _ShowWindow                                 ; $a915
  02436  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  0243c  a915                  _ShowWindow                                 ; $a915
  0243e  2f39ffff8dc4          move.l   g_723c,-(a7)                       
  02444  3f3c0003              move.w   #3,-(a7)                           
  02448  a939                  _EnableItem                                 ; $a939
  0244a  6010                  bra.s    L245c                              
L244c:
  0244c  2f3c000012de          move.l   STR_12de,-(a7)                     ; "Bad file read"
  02452  3f3cdcd8              move.w   #$dcd8,-(a7)                       
  02456  4ebaf494              jsr      f7_18ec                            
  0245a  5c8f                  addq.l   #6,a7                              
L245c:
  0245c  4267                  clr.w    -(a7)                              
  0245e  486effb2              pea      -$4e(a6)                           
  02462  303c0204              move.w   #$204,d0                           
  02466  a816                  _Pack8                                      ; $a816
  02468  3e1f                  move.w   (a7)+,d7                           
  0246a  4ead05c2              jsr      f5_3984                            
  0246e  426e0014              clr.w    $14(a6)                            
L2472:
  02472  4cdf00c0              movem.l  (a7)+,d6/d7                        
  02476  4e5e                  unlk     a6                                 
  02478  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f7_247c   [jump table #222]
;----------------------------------------------------------------------
f7_247c:
  0247c  4e56ffa2              link     a6,#-94                            
  02480  48e70300              movem.l  d6/d7,-(a7)                        
  02484  4267                  clr.w    -(a7)                              
  02486  2f2e0010              move.l   $10(a6),-(a7)                      
  0248a  2f3c2d2d2d2d          move.l   #$2d2d2d2d,-(a7)                   
  02490  2f3c6c697374          move.l   #$6c697374,-(a7)                   
  02496  486effb2              pea      -$4e(a6)                           
  0249a  303c0812              move.w   #$812,d0                           
  0249e  a816                  _Pack8                                      ; $a816
  024a0  3e1f                  move.w   (a7)+,d7                           
  024a2  4a47                  tst.w    d7                                 
  024a4  670e                  beq.s    L24b4                              
  024a6  2f3c000012ec          move.l   STR_12ec,-(a7)                     ; "AEGetParamDesc"
  024ac  3f07                  move.w   d7,-(a7)                           
  024ae  4ebaf43c              jsr      f7_18ec                            
  024b2  5c8f                  addq.l   #6,a7                              
L24b4:
  024b4  2f2e0010              move.l   $10(a6),-(a7)                      
  024b8  4ebafcd6              jsr      f7_2190                            
  024bc  3e00                  move.w   d0,d7                              
  024be  4a47                  tst.w    d7                                 
  024c0  588f                  addq.l   #4,a7                              
  024c2  6716                  beq.s    L24da                              
  024c4  4267                  clr.w    -(a7)                              
  024c6  486effb2              pea      -$4e(a6)                           
  024ca  303c0204              move.w   #$204,d0                           
  024ce  a816                  _Pack8                                      ; $a816
  024d0  3e1f                  move.w   (a7)+,d7                           
  024d2  3d470014              move.w   d7,$14(a6)                         
  024d6  60000080              bra.w    L2558                              
L24da:
  024da  4267                  clr.w    -(a7)                              
  024dc  486effb2              pea      -$4e(a6)                           
  024e0  486effae              pea      -$52(a6)                           
  024e4  303c0407              move.w   #$407,d0                           
  024e8  a816                  _Pack8                                      ; $a816
  024ea  3e1f                  move.w   (a7)+,d7                           
  024ec  7c01                  moveq    #1,d6                              
  024ee  6050                  bra.s    L2540                              
L24f0:
  024f0  4267                  clr.w    -(a7)                              
  024f2  486effb2              pea      -$4e(a6)                           
  024f6  2f06                  move.l   d6,-(a7)                           
  024f8  2f3c66737320          move.l   #$66737320,-(a7)                   
  024fe  486effa6              pea      -$5a(a6)                           
  02502  486effa2              pea      -$5e(a6)                           
  02506  486effba              pea      -$46(a6)                           
  0250a  48780046              pea      ($46).w                            
  0250e  486effaa              pea      -$56(a6)                           
  02512  303c100a              move.w   #$100a,d0                          
  02516  a816                  _Pack8                                      ; $a816
  02518  3e1f                  move.w   (a7)+,d7                           
  0251a  4a47                  tst.w    d7                                 
  0251c  670e                  beq.s    L252c                              
  0251e  2f3c000012fc          move.l   STR_12fc,-(a7)                     ; "AEGetNthPtr"
  02524  3f07                  move.w   d7,-(a7)                           
  02526  4ebaf3c4              jsr      f7_18ec                            
  0252a  5c8f                  addq.l   #6,a7                              
L252c:
  0252c  4267                  clr.w    -(a7)                              
  0252e  4878ffff              pea      ($ffff).w                          
  02532  42a7                  clr.l    -(a7)                              
  02534  42a7                  clr.l    -(a7)                              
  02536  303c061c              move.w   #$61c,d0                           
  0253a  a816                  _Pack8                                      ; $a816
  0253c  3e1f                  move.w   (a7)+,d7                           
  0253e  5286                  addq.l   #1,d6                              
L2540:
  02540  bcaeffae              cmp.l    -$52(a6),d6                        
  02544  6faa                  ble.s    L24f0                              
  02546  4267                  clr.w    -(a7)                              
  02548  486effb2              pea      -$4e(a6)                           
  0254c  303c0204              move.w   #$204,d0                           
  02550  a816                  _Pack8                                      ; $a816
  02552  3e1f                  move.w   (a7)+,d7                           
  02554  426e0014              clr.w    $14(a6)                            
L2558:
  02558  4cdf00c0              movem.l  (a7)+,d6/d7                        
  0255c  4e5e                  unlk     a6                                 
  0255e  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f7_2562
;----------------------------------------------------------------------
f7_2562:
  02562  4e56fee4              link     a6,#-284                           
  02566  48e71f00              movem.l  d3/d4/d5/d6/d7,-(a7)               
  0256a  3e2e0014              move.w   $14(a6),d7                         
  0256e  7c00                  moveq    #0,d6                              
  02570  7a01                  moveq    #1,d5                              
  02572  42aefefc              clr.l    -$104(a6)                          
  02576  7800                  moveq    #0,d4                              
  02578  487a0222              pea      L279c(pc)                          
  0257c  486e000a              pea      $a(a6)                             
  02580  3f3c2008              move.w   #$2008,-(a7)                       
  02584  a9eb                  _FP68K                                      ; $a9eb
  02586  6630                  bne.s    L25b8                              
  02588  7002                  moveq    #2,d0                              
  0258a  d007                  add.b    d7,d0                              
  0258c  1d40ff00              move.b   d0,-$100(a6)                       
  02590  1d7c0030ff01          move.b   #$30,-$ff(a6)                      
  02596  1d7c002eff02          move.b   #$2e,-$fe(a6)                      
  0259c  7c00                  moveq    #0,d6                              
  0259e  600a                  bra.s    L25aa                              
L25a0:
  025a0  1dbc00306120ff03      move.b   #$30,(-$fd,a6,d6.w)                
  025a8  5246                  addq.w   #1,d6                              
L25aa:
  025aa  be46                  cmp.w    d6,d7                              
  025ac  6ef2                  bgt.s    L25a0                              
  025ae  486eff00              pea      -$100(a6)                          
  025b2  a884                  _DrawString                                 ; $a884
  025b4  600001d0              bra.w    L2786                              
L25b8:
  025b8  487a01e0              pea      L279a(pc)                          
  025bc  486e000a              pea      $a(a6)                             
  025c0  3f3c2008              move.w   #$2008,-(a7)                       
  025c4  a9eb                  _FP68K                                      ; $a9eb
  025c6  6d74                  blt.s    L263c                              
  025c8  41eefef2              lea      -$10e(a6),a0                       
  025cc  43ee000a              lea      $a(a6),a1                          
  025d0  20d9                  move.l   (a1)+,(a0)+                        
  025d2  20d9                  move.l   (a1)+,(a0)+                        
  025d4  30d9                  move.w   (a1)+,(a0)+                        
  025d6  487a01c0              pea      L2798(pc)                          
  025da  4868fff6              pea      -$a(a0)                            
  025de  3f3c2006              move.w   #$2006,-(a7)                       
  025e2  a9eb                  _FP68K                                      ; $a9eb
  025e4  43eefee4              lea      -$11c(a6),a1                       
  025e8  41e8fff6              lea      -$a(a0),a0                         
  025ec  22d8                  move.l   (a0)+,(a1)+                        
  025ee  22d8                  move.l   (a0)+,(a1)+                        
  025f0  32d8                  move.w   (a0)+,(a1)+                        
  025f2  4869fff6              pea      -$a(a1)                            
  025f6  3f3c0016              move.w   #$16,-(a7)                         
  025fa  a9eb                  _FP68K                                      ; $a9eb
  025fc  4869fff6              pea      -$a(a1)                            
  02600  486efeee              pea      -$112(a6)                          
  02604  3f3c2810              move.w   #$2810,-(a7)                       
  02608  a9eb                  _FP68K                                      ; $a9eb
  0260a  262efeee              move.l   -$112(a6),d3                       
  0260e  2f03                  move.l   d3,-(a7)                           
  02610  486eff00              pea      -$100(a6)                          
  02614  4ead0512              jsr      f4_150e                            
  02618  486eff00              pea      -$100(a6)                          
  0261c  a884                  _DrawString                                 ; $a884
  0261e  7801                  moveq    #1,d4                              
  02620  601a                  bra.s    L263c                              
L2622:
  02622  cbfc000a              muls.w   #$a,d5                             
  02626  41ee000a              lea      $a(a6),a0                          
  0262a  487a016a              pea      L2796(pc)                          
  0262e  4850                  pea      (a0)                               
  02630  3f3c2004              move.w   #$2004,-(a7)                       
  02634  a9eb                  _FP68K                                      ; $a9eb
  02636  3110                  move.w   (a0),-(a0)                         
  02638  52aefefc              addq.l   #1,-$104(a6)                       
L263c:
  0263c  487a0156              pea      L2794(pc)                          
  02640  486e000a              pea      $a(a6)                             
  02644  3f3c2008              move.w   #$2008,-(a7)                       
  02648  a9eb                  _FP68K                                      ; $a9eb
  0264a  6dd6                  blt.s    L2622                              
  0264c  3047                  movea.w  d7,a0                              
  0264e  b1eefefc              cmpa.l   -$104(a6),a0                       
  02652  6ece                  bgt.s    L2622                              
  02654  4a04                  tst.b    d4                                 
  02656  671e                  beq.s    L2676                              
  02658  3045                  movea.w  d5,a0                              
  0265a  2008                  move.l   a0,d0                              
  0265c  4c030000              mulu.l   d3,d0                              
  02660  41ee000a              lea      $a(a6),a0                          
  02664  2d40fef8              move.l   d0,-$108(a6)                       
  02668  486efef8              pea      -$108(a6)                          
  0266c  4850                  pea      (a0)                               
  0266e  3f3c2802              move.w   #$2802,-(a7)                       
  02672  a9eb                  _FP68K                                      ; $a9eb
  02674  3110                  move.w   (a0),-(a0)                         
L2676:
  02676  41eefef2              lea      -$10e(a6),a0                       
  0267a  43ee000a              lea      $a(a6),a1                          
  0267e  20d9                  move.l   (a1)+,(a0)+                        
  02680  20d9                  move.l   (a1)+,(a0)+                        
  02682  30d9                  move.w   (a1)+,(a0)+                        
  02684  487a010c              pea      L2792(pc)                          
  02688  4868fff6              pea      -$a(a0)                            
  0268c  3f3c2004              move.w   #$2004,-(a7)                       
  02690  a9eb                  _FP68K                                      ; $a9eb
  02692  43eefee4              lea      -$11c(a6),a1                       
  02696  41e8fff6              lea      -$a(a0),a0                         
  0269a  22d8                  move.l   (a0)+,(a1)+                        
  0269c  22d8                  move.l   (a0)+,(a1)+                        
  0269e  32d8                  move.w   (a0)+,(a1)+                        
  026a0  4869fff6              pea      -$a(a1)                            
  026a4  3f3c0016              move.w   #$16,-(a7)                         
  026a8  a9eb                  _FP68K                                      ; $a9eb
  026aa  4869fff6              pea      -$a(a1)                            
  026ae  486efeee              pea      -$112(a6)                          
  026b2  3f3c2810              move.w   #$2810,-(a7)                       
  026b6  a9eb                  _FP68K                                      ; $a9eb
  026b8  262efeee              move.l   -$112(a6),d3                       
  026bc  2f03                  move.l   d3,-(a7)                           
  026be  486eff00              pea      -$100(a6)                          
  026c2  4ead0512              jsr      f4_150e                            
  026c6  7000                  moveq    #0,d0                              
  026c8  102eff00              move.b   -$100(a6),d0                       
  026cc  7201                  moveq    #1,d1                              
  026ce  d247                  add.w    d7,d1                              
  026d0  b240                  cmp.w    d0,d1                              
  026d2  6f06                  ble.s    L26da                              
  026d4  700a                  moveq    #10,d0                             
  026d6  4c003000              mulu.l   d0,d3                              
L26da:
  026da  2f03                  move.l   d3,-(a7)                           
  026dc  486eff00              pea      -$100(a6)                          
  026e0  4ead0512              jsr      f4_150e                            
  026e4  7000                  moveq    #0,d0                              
  026e6  102eff00              move.b   -$100(a6),d0                       
  026ea  0c3600350920ff00      cmpi.b   #$35,(-$100,a6,d0.l)               
  026f2  6508                  bcs.s    L26fc                              
  026f4  700a                  moveq    #10,d0                             
  026f6  4c403803              divs.l   d0,d3                              
  026fa  5283                  addq.l   #1,d3                              
L26fc:
  026fc  4a04                  tst.b    d4                                 
  026fe  6606                  bne.s    L2706                              
  02700  3f3c0030              move.w   #$30,-(a7)                         
  02704  a883                  _DrawChar                                   ; $a883
L2706:
  02706  3f3c002e              move.w   #$2e,-(a7)                         
  0270a  a883                  _DrawChar                                   ; $a883
  0270c  487a0082              pea      L2790(pc)                          
  02710  486e000a              pea      $a(a6)                             
  02714  3f3c2008              move.w   #$2008,-(a7)                       
  02718  a9eb                  _FP68K                                      ; $a9eb
  0271a  6c56                  bge.s    L2772                              
  0271c  1d47ff00              move.b   d7,-$100(a6)                       
  02720  7c01                  moveq    #1,d6                              
  02722  6008                  bra.s    L272c                              
L2724:
  02724  1d7c0030ff01          move.b   #$30,-$ff(a6)                      
  0272a  5246                  addq.w   #1,d6                              
L272c:
  0272c  be46                  cmp.w    d6,d7                              
  0272e  6ef4                  bgt.s    L2724                              
  02730  487a005c              pea      L278e(pc)                          
  02734  486efef2              pea      -$10e(a6)                          
  02738  3f3c200e              move.w   #$200e,-(a7)                       
  0273c  a9eb                  _FP68K                                      ; $a9eb
  0273e  486e000a              pea      $a(a6)                             
  02742  486efef2              pea      -$10e(a6)                          
  02746  4267                  clr.w    -(a7)                              
  02748  a9eb                  _FP68K                                      ; $a9eb
  0274a  486efef2              pea      -$10e(a6)                          
  0274e  3f3c0016              move.w   #$16,-(a7)                         
  02752  a9eb                  _FP68K                                      ; $a9eb
  02754  486efef2              pea      -$10e(a6)                          
  02758  486efef0              pea      -$110(a6)                          
  0275c  3f3c2010              move.w   #$2010,-(a7)                       
  02760  a9eb                  _FP68K                                      ; $a9eb
  02762  1daefef17120ff00      move.b   -$10f(a6),(-$100,a6,d7.w)          
  0276a  486eff00              pea      -$100(a6)                          
  0276e  a884                  _DrawString                                 ; $a884
  02770  6014                  bra.s    L2786                              
L2772:
  02772  2f03                  move.l   d3,-(a7)                           
  02774  486eff00              pea      -$100(a6)                          
  02778  4ead0512              jsr      f4_150e                            
  0277c  1d47ff00              move.b   d7,-$100(a6)                       
  02780  486eff00              pea      -$100(a6)                          
  02784  a884                  _DrawString                                 ; $a884
L2786:
  02786  4cdf00f8              movem.l  (a7)+,d3/d4/d5/d6/d7               
  0278a  4e5e                  unlk     a6                                 
  0278c  4e75                  rts                                         
  0278e  0030000a000a          ori.b    #$a,$a(a0,d0.w)                    
  02794  0001000a              ori.b    #$a,d1                             
  02798  00010001              ori.b    #1,d1                              
  0279c  00004e56              ori.b    #$56,d0                            
  027a0  fef8                  dc.w     $fef8                              
  027a2  2f06                  move.l   d6,-(a7)                           
  027a4  3d7c0001fefc          move.w   #1,-$104(a6)                       
  027aa  7c00                  moveq    #0,d6                              
  027ac  42aefef8              clr.l    -$108(a6)                          
  027b0  487a0150              pea      L2902(pc)                          
  027b4  486e000a              pea      $a(a6)                             
  027b8  3f3c2008              move.w   #$2008,-(a7)                       
  027bc  a9eb                  _FP68K                                      ; $a9eb
  027be  6c16                  bge.s    L27d6                              
  027c0  604e                  bra.s    L2810                              
L27c2:
  027c2  5246                  addq.w   #1,d6                              
  027c4  41ee000a              lea      $a(a6),a0                          
  027c8  487a0136              pea      L2900(pc)                          
  027cc  4850                  pea      (a0)                               
  027ce  3f3c2006              move.w   #$2006,-(a7)                       
  027d2  a9eb                  _FP68K                                      ; $a9eb
  027d4  3110                  move.w   (a0),-(a0)                         
L27d6:
  027d6  487a0126              pea      L28fe(pc)                          
  027da  486e000a              pea      $a(a6)                             
  027de  3f3c2008              move.w   #$2008,-(a7)                       
  027e2  a9eb                  _FP68K                                      ; $a9eb
  027e4  6cdc                  bge.s    L27c2                              
  027e6  5346                  subq.w   #1,d6                              
  027e8  41ee000a              lea      $a(a6),a0                          
  027ec  487a010e              pea      L28fc(pc)                          
  027f0  4850                  pea      (a0)                               
  027f2  3f3c2004              move.w   #$2004,-(a7)                       
  027f6  a9eb                  _FP68K                                      ; $a9eb
  027f8  3110                  move.w   (a0),-(a0)                         
  027fa  6026                  bra.s    L2822                              
L27fc:
  027fc  5246                  addq.w   #1,d6                              
  027fe  41ee000a              lea      $a(a6),a0                          
  02802  487a00f6              pea      L28fa(pc)                          
  02806  4850                  pea      (a0)                               
  02808  3f3c2004              move.w   #$2004,-(a7)                       
  0280c  a9eb                  _FP68K                                      ; $a9eb
  0280e  3110                  move.w   (a0),-(a0)                         
L2810:
  02810  487a00e6              pea      L28f8(pc)                          
  02814  486e000a              pea      $a(a6)                             
  02818  3f3c2008              move.w   #$2008,-(a7)                       
  0281c  a9eb                  _FP68K                                      ; $a9eb
  0281e  6ddc                  blt.s    L27fc                              
  02820  4446                  neg.w    d6                                 
L2822:
  02822  3f2e0014              move.w   $14(a6),-(a7)                      
  02826  2f2e0010              move.l   $10(a6),-(a7)                      
  0282a  2f2e000c              move.l   $c(a6),-(a7)                       
  0282e  2f2e0008              move.l   $8(a6),-(a7)                       
  02832  4ebafd2e              jsr      f7_2562                            
  02836  3046                  movea.w  d6,a0                              
  02838  2e88                  move.l   a0,(a7)                            
  0283a  486efefe              pea      -$102(a6)                          
  0283e  4ead0512              jsr      f4_150e                            
  02842  4a46                  tst.w    d6                                 
  02844  4fef000a              lea      $a(a7),a7                          
  02848  6d54                  blt.s    L289e                              
  0284a  102efefe              move.b   -$102(a6),d0                       
  0284e  6700009c              beq.w    L28ec                              
  02852  6b000098              bmi.w    L28ec                              
  02856  5500                  subq.b   #2,d0                              
  02858  6724                  beq.s    L287e                              
  0285a  6a000090              bpl.w    L28ec                              
  0285e  1d7c0004fefe          move.b   #4,-$102(a6)                       
  02864  1d6efeffff02          move.b   -$101(a6),-$fe(a6)                 
  0286a  1d7c0030ff01          move.b   #$30,-$ff(a6)                      
  02870  1d7c0045feff          move.b   #$45,-$101(a6)                     
  02876  1d7c002bff00          move.b   #$2b,-$100(a6)                     
  0287c  606e                  bra.s    L28ec                              
L287e:
  0287e  1d7c0004fefe          move.b   #4,-$102(a6)                       
  02884  1d6eff00ff02          move.b   -$100(a6),-$fe(a6)                 
  0288a  1d6efeffff01          move.b   -$101(a6),-$ff(a6)                 
  02890  1d7c0045feff          move.b   #$45,-$101(a6)                     
  02896  1d7c002bff00          move.b   #$2b,-$100(a6)                     
  0289c  604e                  bra.s    L28ec                              
L289e:
  0289e  102efefe              move.b   -$102(a6),d0                       
  028a2  6b48                  bmi.s    L28ec                              
  028a4  5700                  subq.b   #3,d0                              
  028a6  6726                  beq.s    L28ce                              
  028a8  6a42                  bpl.s    L28ec                              
  028aa  5200                  addq.b   #1,d0                              
  028ac  6b3e                  bmi.s    L28ec                              
  028ae  1d7c0004fefe          move.b   #4,-$102(a6)                       
  028b4  1d6eff00ff02          move.b   -$100(a6),-$fe(a6)                 
  028ba  1d7c0030ff01          move.b   #$30,-$ff(a6)                      
  028c0  1d7c0045feff          move.b   #$45,-$101(a6)                     
  028c6  1d7c002dff00          move.b   #$2d,-$100(a6)                     
  028cc  601e                  bra.s    L28ec                              
L28ce:
  028ce  1d7c0004fefe          move.b   #4,-$102(a6)                       
  028d4  1d6eff01ff02          move.b   -$ff(a6),-$fe(a6)                  
  028da  1d6eff00ff01          move.b   -$100(a6),-$ff(a6)                 
  028e0  1d7c0045feff          move.b   #$45,-$101(a6)                     
  028e6  1d7c002dff00          move.b   #$2d,-$100(a6)                     
L28ec:
  028ec  486efefe              pea      -$102(a6)                          
  028f0  a884                  _DrawString                                 ; $a884
  028f2  2c1f                  move.l   (a7)+,d6                           
  028f4  4e5e                  unlk     a6                                 
  028f6  4e75                  rts                                         
  028f8  0001000a              ori.b    #$a,d1                             
  028fc  000a0001              ori.b    #1,a2                              
  02900  000a0001              ori.b    #1,a2                              

;----------------------------------------------------------------------
; f7_2904   [jump table #223]
;----------------------------------------------------------------------
f7_2904:
  02904  4e56fff8              link     a6,#-8                             
  02908  48e70300              movem.l  d6/d7,-(a7)                        
  0290c  206e000c              movea.l  $c(a6),a0                          
  02910  2d50fff8              move.l   (a0),-$8(a6)                       
  02914  2d680004fffc          move.l   $4(a0),-$4(a6)                     
  0291a  2f2e0010              move.l   $10(a6),-(a7)                      
  0291e  4ebaf870              jsr      f7_2190                            
  02922  3e00                  move.w   d0,d7                              
  02924  4a47                  tst.w    d7                                 
  02926  588f                  addq.l   #4,a7                              
  02928  6706                  beq.s    L2930                              
  0292a  3d470014              move.w   d7,$14(a6)                         
  0292e  6032                  bra.s    L2962                              
L2930:
  02930  4267                  clr.w    -(a7)                              
  02932  4878ffff              pea      ($ffff).w                          
  02936  42a7                  clr.l    -(a7)                              
  02938  42a7                  clr.l    -(a7)                              
  0293a  303c061c              move.w   #$61c,d0                           
  0293e  a816                  _Pack8                                      ; $a816
  02940  3e1f                  move.w   (a7)+,d7                           
  02942  4a47                  tst.w    d7                                 
  02944  6706                  beq.s    L294c                              
  02946  3d470014              move.w   d7,$14(a6)                         
  0294a  6016                  bra.s    L2962                              
L294c:
  0294c  4ead05ba              jsr      f5_36ba                            
  02950  1c00                  move.b   d0,d6                              
  02952  4a06                  tst.b    d6                                 
  02954  6708                  beq.s    L295e                              
  02956  3d7cff800014          move.w   #$ff80,$14(a6)                     
  0295c  6004                  bra.s    L2962                              
L295e:
  0295e  426e0014              clr.w    $14(a6)                            
L2962:
  02962  4cdf00c0              movem.l  (a7)+,d6/d7                        
  02966  4e5e                  unlk     a6                                 
  02968  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f7_296c   [jump table #224]
;----------------------------------------------------------------------
f7_296c:
  0296c  4e56fe36              link     a6,#-458                           
  02970  2f0c                  move.l   a4,-(a7)                           
  02972  486efe36              pea      -$1ca(a6)                          
  02976  a874                  _GetPort                                    ; $a874
  02978  42a7                  clr.l    -(a7)                              
  0297a  3f3c00d4              move.w   #$d4,-(a7)                         
  0297e  486eff56              pea      -$aa(a6)                           
  02982  4878ffff              pea      ($ffff).w                          
  02986  a97c                  _GetNewDialog                               ; $a97c
  02988  285f                  movea.l  (a7)+,a4                           
  0298a  2f0c                  move.l   a4,-(a7)                           
  0298c  4ebaec8e              jsr      f7_161c                            
  02990  2e8c                  move.l   a4,(a7)                            
  02992  3f3c0006              move.w   #6,-(a7)                           
  02996  486eff52              pea      -$ae(a6)                           
  0299a  486eff46              pea      -$ba(a6)                           
  0299e  486eff3e              pea      -$c2(a6)                           
  029a2  a98d                  _GetDialogItem                              ; $a98d
  029a4  2f0c                  move.l   a4,-(a7)                           
  029a6  3f3c0007              move.w   #7,-(a7)                           
  029aa  486eff52              pea      -$ae(a6)                           
  029ae  486eff4a              pea      -$b6(a6)                           
  029b2  486eff3e              pea      -$c2(a6)                           
  029b6  a98d                  _GetDialogItem                              ; $a98d
  029b8  2f0c                  move.l   a4,-(a7)                           
  029ba  3f3c0008              move.w   #8,-(a7)                           
  029be  486eff52              pea      -$ae(a6)                           
  029c2  486eff4e              pea      -$b2(a6)                           
  029c6  486eff3e              pea      -$c2(a6)                           
  029ca  a98d                  _GetDialogItem                              ; $a98d
  029cc  3079ffff83b6          movea.w  g_7c4a,a0                          
  029d2  2f08                  move.l   a0,-(a7)                           
  029d4  486efe3e              pea      -$1c2(a6)                          
  029d8  4ead0512              jsr      f4_150e                            
  029dc  2f2eff46              move.l   -$ba(a6),-(a7)                     
  029e0  486efe3e              pea      -$1c2(a6)                          
  029e4  a98f                  _SetDialogItemText                          ; $a98f
  029e6  3079ffff3ad0          movea.w  g_c530,a0                          
  029ec  2f08                  move.l   a0,-(a7)                           
  029ee  486efe3e              pea      -$1c2(a6)                          
  029f2  4ead0512              jsr      f4_150e                            
  029f6  2f2eff4a              move.l   -$b6(a6),-(a7)                     
  029fa  486efe3e              pea      -$1c2(a6)                          
  029fe  a98f                  _SetDialogItemText                          ; $a98f
  02a00  3079ffff3ad2          movea.w  g_c52e,a0                          
  02a06  2f08                  move.l   a0,-(a7)                           
  02a08  486efe3e              pea      -$1c2(a6)                          
  02a0c  4ead0512              jsr      f4_150e                            
  02a10  2f2eff4e              move.l   -$b2(a6),-(a7)                     
  02a14  486efe3e              pea      -$1c2(a6)                          
  02a18  a98f                  _SetDialogItemText                          ; $a98f
L2a1a:
  02a1a  42a7                  clr.l    -(a7)                              
  02a1c  486eff54              pea      -$ac(a6)                           
  02a20  a991                  _ModalDialog                                ; $a991
  02a22  0c6e0001ff54          cmpi.w   #1,-$ac(a6)                        
  02a28  66f0                  bne.s    L2a1a                              
  02a2a  2f2eff46              move.l   -$ba(a6),-(a7)                     
  02a2e  486efe3e              pea      -$1c2(a6)                          
  02a32  a990                  _GetDialogItemText                          ; $a990
  02a34  486efe3e              pea      -$1c2(a6)                          
  02a38  486efe3a              pea      -$1c6(a6)                          
  02a3c  4ead050a              jsr      f4_14fa                            
  02a40  33eefe3cffff83b6      move.w   -$1c4(a6),g_7c4a                   
  02a48  2f2eff4a              move.l   -$b6(a6),-(a7)                     
  02a4c  486efe3e              pea      -$1c2(a6)                          
  02a50  a990                  _GetDialogItemText                          ; $a990
  02a52  486efe3e              pea      -$1c2(a6)                          
  02a56  486efe3a              pea      -$1c6(a6)                          
  02a5a  4ead050a              jsr      f4_14fa                            
  02a5e  33eefe3cffff3ad0      move.w   -$1c4(a6),g_c530                   
  02a66  2f2eff4e              move.l   -$b2(a6),-(a7)                     
  02a6a  486efe3e              pea      -$1c2(a6)                          
  02a6e  a990                  _GetDialogItemText                          ; $a990
  02a70  486efe3e              pea      -$1c2(a6)                          
  02a74  486efe3a              pea      -$1c6(a6)                          
  02a78  4ead050a              jsr      f4_14fa                            
  02a7c  33eefe3cffff3ad2      move.w   -$1c4(a6),g_c52e                   
  02a84  33f9ffff3ad0ffff3d3c  move.w   g_c530,g_c2c4                      
  02a8e  33f9ffff3ad2ffff3d30  move.w   g_c52e,g_c2d0                      
  02a98  33f9ffff83b6ffff8c78  move.w   g_7c4a,g_7388                      
  02aa2  2f0c                  move.l   a4,-(a7)                           
  02aa4  a983                  _DisposeDialog                              ; $a983
  02aa6  2f2efe36              move.l   -$1ca(a6),-(a7)                    
  02aaa  a873                  _SetPort                                    ; $a873
  02aac  285f                  movea.l  (a7)+,a4                           
  02aae  4e5e                  unlk     a6                                 
  02ab0  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_2ab2   [jump table #225]
;----------------------------------------------------------------------
f7_2ab2:
  02ab2  4e56fff4              link     a6,#-12                            
  02ab6  48e70700              movem.l  d5/d6/d7,-(a7)                     
  02aba  7a00                  moveq    #0,d5                              
  02abc  486efff4              pea      -$c(a6)                            
  02ac0  a874                  _GetPort                                    ; $a874
  02ac2  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02ac8  a873                  _SetPort                                    ; $a873
  02aca  7c01                  moveq    #1,d6                              
  02acc  6010                  bra.s    L2ade                              
L2ace:
  02ace  4a3061b0ffff9850      tst.b    (-$67b0,za0,d6.w)                  
  02ad6  6704                  beq.s    L2adc                              
  02ad8  7a01                  moveq    #1,d5                              
  02ada  6008                  bra.s    L2ae4                              
L2adc:
  02adc  5246                  addq.w   #1,d6                              
L2ade:
  02ade  0c460006              cmpi.w   #6,d6                              
  02ae2  6fea                  ble.s    L2ace                              
L2ae4:
  02ae4  486efff8              pea      -$8(a6)                            
  02ae8  2f3c0005004b          move.l   #$5004b,-(a7)                      
  02aee  2f3c0025006b          move.l   #$25006b,-(a7)                     
  02af4  a8a7                  _SetRect                                    ; $a8a7
  02af6  486efff8              pea      -$8(a6)                            
  02afa  2f3c004a005a          move.l   #$4a005a,-(a7)                     
  02b00  a8a8                  _OffsetRect                                 ; $a8a8
  02b02  4a05                  tst.b    d5                                 
  02b04  6706                  beq.s    L2b0c                              
  02b06  3e3c04d3              move.w   #$4d3,d7                           
  02b0a  6008                  bra.s    L2b14                              
L2b0c:
  02b0c  486efff8              pea      -$8(a6)                            
  02b10  a8a3                  _EraseRect                                  ; $a8a3
  02b12  6016                  bra.s    L2b2a                              
L2b14:
  02b14  486efff8              pea      -$8(a6)                            
  02b18  a8a3                  _EraseRect                                  ; $a8a3
  02b1a  3f07                  move.w   d7,-(a7)                           
  02b1c  486efff8              pea      -$8(a6)                            
  02b20  4ebaef50              jsr      f7_1a72                            
  02b24  2eaefff4              move.l   -$c(a6),(a7)                       
  02b28  a873                  _SetPort                                    ; $a873
L2b2a:
  02b2a  4cee00e0ffe8          movem.l  -$18(a6),d5/d6/d7                  
  02b30  4e5e                  unlk     a6                                 
  02b32  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_2b34   [jump table #226]
;----------------------------------------------------------------------
f7_2b34:
  02b34  4e56fff4              link     a6,#-12                            
  02b38  48e70700              movem.l  d5/d6/d7,-(a7)                     
  02b3c  7a00                  moveq    #0,d5                              
  02b3e  486efff4              pea      -$c(a6)                            
  02b42  a874                  _GetPort                                    ; $a874
  02b44  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02b4a  a873                  _SetPort                                    ; $a873
  02b4c  7c01                  moveq    #1,d6                              
  02b4e  6010                  bra.s    L2b60                              
L2b50:
  02b50  4a3061b0ffff8df5      tst.b    (-$720b,za0,d6.w)                  
  02b58  6704                  beq.s    L2b5e                              
  02b5a  7a01                  moveq    #1,d5                              
  02b5c  6008                  bra.s    L2b66                              
L2b5e:
  02b5e  5246                  addq.w   #1,d6                              
L2b60:
  02b60  0c460004              cmpi.w   #4,d6                              
  02b64  6fea                  ble.s    L2b50                              
L2b66:
  02b66  486efff8              pea      -$8(a6)                            
  02b6a  2f3c0005004b          move.l   #$5004b,-(a7)                      
  02b70  2f3c0025006b          move.l   #$25006b,-(a7)                     
  02b76  a8a7                  _SetRect                                    ; $a8a7
  02b78  486efff8              pea      -$8(a6)                            
  02b7c  2f3c0025008c          move.l   #$25008c,-(a7)                     
  02b82  a8a8                  _OffsetRect                                 ; $a8a8
  02b84  4a05                  tst.b    d5                                 
  02b86  6706                  beq.s    L2b8e                              
  02b88  3e3c04d4              move.w   #$4d4,d7                           
  02b8c  6008                  bra.s    L2b96                              
L2b8e:
  02b8e  486efff8              pea      -$8(a6)                            
  02b92  a8a3                  _EraseRect                                  ; $a8a3
  02b94  6016                  bra.s    L2bac                              
L2b96:
  02b96  486efff8              pea      -$8(a6)                            
  02b9a  a8a3                  _EraseRect                                  ; $a8a3
  02b9c  3f07                  move.w   d7,-(a7)                           
  02b9e  486efff8              pea      -$8(a6)                            
  02ba2  4ebaeece              jsr      f7_1a72                            
  02ba6  2eaefff4              move.l   -$c(a6),(a7)                       
  02baa  a873                  _SetPort                                    ; $a873
L2bac:
  02bac  4cee00e0ffe8          movem.l  -$18(a6),d5/d6/d7                  
  02bb2  4e5e                  unlk     a6                                 
  02bb4  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_2bb6   [jump table #227]
;----------------------------------------------------------------------
f7_2bb6:
  02bb6  4e56fff4              link     a6,#-12                            
  02bba  2f0c                  move.l   a4,-(a7)                           
  02bbc  486efffc              pea      -$4(a6)                            
  02bc0  a874                  _GetPort                                    ; $a874
  02bc2  42a7                  clr.l    -(a7)                              
  02bc4  a924                  _FrontWindow                                ; $a924
  02bc6  285f                  movea.l  (a7)+,a4                           
  02bc8  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  02bce  a915                  _ShowWindow                                 ; $a915
  02bd0  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  02bd6  a920                  _BringToFront                               ; $a920
  02bd8  2f39ffff9a1c          move.l   g_65e4,-(a7)                       
  02bde  a873                  _SetPort                                    ; $a873
  02be0  2079ffff9a1c          movea.l  g_65e4,a0                          
  02be6  48680010              pea      $10(a0)                            
  02bea  a8a3                  _EraseRect                                  ; $a8a3
  02bec  4267                  clr.w    -(a7)                              
  02bee  a89c                  _PenMode                                    ; $a89c
  02bf0  486efff4              pea      -$c(a6)                            
  02bf4  2f3c00050005          move.l   #$50005,-(a7)                      
  02bfa  2f3c00250025          move.l   #$250025,-(a7)                     
  02c00  a8a7                  _SetRect                                    ; $a8a7
  02c02  4a79ffff8da2          tst.w    g_725e                             
  02c08  6f10                  ble.s    L2c1a                              
  02c0a  3f3c04d0              move.w   #$4d0,-(a7)                        
  02c0e  486efff4              pea      -$c(a6)                            
  02c12  4ebaee5e              jsr      f7_1a72                            
  02c16  5c8f                  addq.l   #6,a7                              
  02c18  6006                  bra.s    L2c20                              
L2c1a:
  02c1a  486efff4              pea      -$c(a6)                            
  02c1e  a8a3                  _EraseRect                                  ; $a8a3
L2c20:
  02c20  486efff4              pea      -$c(a6)                            
  02c24  2f3c002d0005          move.l   #$2d0005,-(a7)                     
  02c2a  2f3c004d0025          move.l   #$4d0025,-(a7)                     
  02c30  a8a7                  _SetRect                                    ; $a8a7
  02c32  4a79ffff8da0          tst.w    g_7260                             
  02c38  6f10                  ble.s    L2c4a                              
  02c3a  3f3c04d1              move.w   #$4d1,-(a7)                        
  02c3e  486efff4              pea      -$c(a6)                            
  02c42  4ebaee2e              jsr      f7_1a72                            
  02c46  5c8f                  addq.l   #6,a7                              
  02c48  6006                  bra.s    L2c50                              
L2c4a:
  02c4a  486efff4              pea      -$c(a6)                            
  02c4e  a8a3                  _EraseRect                                  ; $a8a3
L2c50:
  02c50  486efff4              pea      -$c(a6)                            
  02c54  2f3c00550005          move.l   #$550005,-(a7)                     
  02c5a  2f3c00750025          move.l   #$750025,-(a7)                     
  02c60  a8a7                  _SetRect                                    ; $a8a7
  02c62  4a79ffff8da4          tst.w    g_725c                             
  02c68  6f10                  ble.s    L2c7a                              
  02c6a  3f3c04cf              move.w   #$4cf,-(a7)                        
  02c6e  486efff4              pea      -$c(a6)                            
  02c72  4ebaedfe              jsr      f7_1a72                            
  02c76  5c8f                  addq.l   #6,a7                              
  02c78  6006                  bra.s    L2c80                              
L2c7a:
  02c7a  486efff4              pea      -$c(a6)                            
  02c7e  a8a3                  _EraseRect                                  ; $a8a3
L2c80:
  02c80  486efff4              pea      -$c(a6)                            
  02c84  2f3c007d0005          move.l   #$7d0005,-(a7)                     
  02c8a  2f3c009d0025          move.l   #$9d0025,-(a7)                     
  02c90  a8a7                  _SetRect                                    ; $a8a7
  02c92  4a79ffff8dac          tst.w    g_7254                             
  02c98  6e12                  bgt.s    L2cac                              
  02c9a  4a79ffff83a0          tst.w    g_7c60                             
  02ca0  6f42                  ble.s    L2ce4                              
  02ca2  0c790006ffff83a0      cmpi.w   #6,g_7c60                          
  02caa  6738                  beq.s    L2ce4                              
L2cac:
  02cac  4a79ffff8dac          tst.w    g_7254                             
  02cb2  6f18                  ble.s    L2ccc                              
  02cb4  3039ffff8dac          move.w   g_7254,d0                          
  02cba  064001f3              addi.w   #$1f3,d0                           
  02cbe  3f00                  move.w   d0,-(a7)                           
  02cc0  486efff4              pea      -$c(a6)                            
  02cc4  4ebaedac              jsr      f7_1a72                            
  02cc8  5c8f                  addq.l   #6,a7                              
  02cca  601e                  bra.s    L2cea                              
L2ccc:
  02ccc  3039ffff83a0          move.w   g_7c60,d0                          
  02cd2  064001f3              addi.w   #$1f3,d0                           
  02cd6  3f00                  move.w   d0,-(a7)                           
  02cd8  486efff4              pea      -$c(a6)                            
  02cdc  4ebaed94              jsr      f7_1a72                            
  02ce0  5c8f                  addq.l   #6,a7                              
  02ce2  6006                  bra.s    L2cea                              
L2ce4:
  02ce4  486efff4              pea      -$c(a6)                            
  02ce8  a8a3                  _EraseRect                                  ; $a8a3
L2cea:
  02cea  486efff4              pea      -$c(a6)                            
  02cee  2f3c0005002d          move.l   #$5002d,-(a7)                      
  02cf4  2f3c0025004d          move.l   #$25004d,-(a7)                     
  02cfa  a8a7                  _SetRect                                    ; $a8a7
  02cfc  4a79ffff8db2          tst.w    g_724e                             
  02d02  6e12                  bgt.s    L2d16                              
  02d04  4a79ffff83a2          tst.w    g_7c5e                             
  02d0a  6f42                  ble.s    L2d4e                              
  02d0c  0c790006ffff83a2      cmpi.w   #6,g_7c5e                          
  02d14  6738                  beq.s    L2d4e                              
L2d16:
  02d16  4a79ffff8db2          tst.w    g_724e                             
  02d1c  6f18                  ble.s    L2d36                              
  02d1e  3039ffff8db2          move.w   g_724e,d0                          
  02d24  06400258              addi.w   #$258,d0                           
  02d28  3f00                  move.w   d0,-(a7)                           
  02d2a  486efff4              pea      -$c(a6)                            
  02d2e  4ebaed42              jsr      f7_1a72                            
  02d32  5c8f                  addq.l   #6,a7                              
  02d34  601e                  bra.s    L2d54                              
L2d36:
  02d36  3039ffff83a2          move.w   g_7c5e,d0                          
  02d3c  06400258              addi.w   #$258,d0                           
  02d40  3f00                  move.w   d0,-(a7)                           
  02d42  486efff4              pea      -$c(a6)                            
  02d46  4ebaed2a              jsr      f7_1a72                            
  02d4a  5c8f                  addq.l   #6,a7                              
  02d4c  6006                  bra.s    L2d54                              
L2d4e:
  02d4e  486efff4              pea      -$c(a6)                            
  02d52  a8a3                  _EraseRect                                  ; $a8a3
L2d54:
  02d54  486efff4              pea      -$c(a6)                            
  02d58  2f3c002d002d          move.l   #$2d002d,-(a7)                     
  02d5e  2f3c004d004d          move.l   #$4d004d,-(a7)                     
  02d64  a8a7                  _SetRect                                    ; $a8a7
  02d66  4a79ffff8da8          tst.w    g_7258                             
  02d6c  6e08                  bgt.s    L2d76                              
  02d6e  4a79ffff8392          tst.w    g_7c6e                             
  02d74  6f38                  ble.s    L2dae                              
L2d76:
  02d76  4a79ffff8da8          tst.w    g_7258                             
  02d7c  6f18                  ble.s    L2d96                              
  02d7e  3039ffff8da8          move.w   g_7258,d0                          
  02d84  064002bc              addi.w   #$2bc,d0                           
  02d88  3f00                  move.w   d0,-(a7)                           
  02d8a  486efff4              pea      -$c(a6)                            
  02d8e  4ebaece2              jsr      f7_1a72                            
  02d92  5c8f                  addq.l   #6,a7                              
  02d94  601e                  bra.s    L2db4                              
L2d96:
  02d96  3039ffff8392          move.w   g_7c6e,d0                          
  02d9c  064002bc              addi.w   #$2bc,d0                           
  02da0  3f00                  move.w   d0,-(a7)                           
  02da2  486efff4              pea      -$c(a6)                            
  02da6  4ebaecca              jsr      f7_1a72                            
  02daa  5c8f                  addq.l   #6,a7                              
  02dac  6006                  bra.s    L2db4                              
L2dae:
  02dae  486efff4              pea      -$c(a6)                            
  02db2  a8a3                  _EraseRect                                  ; $a8a3
L2db4:
  02db4  486efff4              pea      -$c(a6)                            
  02db8  2f3c0055002d          move.l   #$55002d,-(a7)                     
  02dbe  2f3c0075004d          move.l   #$75004d,-(a7)                     
  02dc4  a8a7                  _SetRect                                    ; $a8a7
  02dc6  4a79ffff8db8          tst.w    g_7248                             
  02dcc  6f10                  ble.s    L2dde                              
  02dce  3f3c04d2              move.w   #$4d2,-(a7)                        
  02dd2  486efff4              pea      -$c(a6)                            
  02dd6  4ebaec9a              jsr      f7_1a72                            
  02dda  5c8f                  addq.l   #6,a7                              
  02ddc  6006                  bra.s    L2de4                              
L2dde:
  02dde  486efff4              pea      -$c(a6)                            
  02de2  a8a3                  _EraseRect                                  ; $a8a3
L2de4:
  02de4  486efff4              pea      -$c(a6)                            
  02de8  2f3c007d002d          move.l   #$7d002d,-(a7)                     
  02dee  2f3c009d004d          move.l   #$9d004d,-(a7)                     
  02df4  a8a7                  _SetRect                                    ; $a8a7
  02df6  4a79ffff8dba          tst.w    g_7246                             
  02dfc  6f10                  ble.s    L2e0e                              
  02dfe  3f3c04d4              move.w   #$4d4,-(a7)                        
  02e02  486efff4              pea      -$c(a6)                            
  02e06  4ebaec6a              jsr      f7_1a72                            
  02e0a  5c8f                  addq.l   #6,a7                              
  02e0c  6006                  bra.s    L2e14                              
L2e0e:
  02e0e  486efff4              pea      -$c(a6)                            
  02e12  a8a3                  _EraseRect                                  ; $a8a3
L2e14:
  02e14  486efff4              pea      -$c(a6)                            
  02e18  2f3c00050055          move.l   #$50055,-(a7)                      
  02e1e  2f3c00250075          move.l   #$250075,-(a7)                     
  02e24  a8a7                  _SetRect                                    ; $a8a7
  02e26  4a79ffff8dbc          tst.w    g_7244                             
  02e2c  6f10                  ble.s    L2e3e                              
  02e2e  3f3c04d3              move.w   #$4d3,-(a7)                        
  02e32  486efff4              pea      -$c(a6)                            
  02e36  4ebaec3a              jsr      f7_1a72                            
  02e3a  5c8f                  addq.l   #6,a7                              
  02e3c  6006                  bra.s    L2e44                              
L2e3e:
  02e3e  486efff4              pea      -$c(a6)                            
  02e42  a8a3                  _EraseRect                                  ; $a8a3
L2e44:
  02e44  486efff4              pea      -$c(a6)                            
  02e48  2f3c002d0055          move.l   #$2d0055,-(a7)                     
  02e4e  2f3c004d0075          move.l   #$4d0075,-(a7)                     
  02e54  a8a7                  _SetRect                                    ; $a8a7
  02e56  4a79ffff8dbe          tst.w    g_7242                             
  02e5c  6f10                  ble.s    L2e6e                              
  02e5e  3f3c2328              move.w   #$2328,-(a7)                       
  02e62  486efff4              pea      -$c(a6)                            
  02e66  4ebaec0a              jsr      f7_1a72                            
  02e6a  5c8f                  addq.l   #6,a7                              
  02e6c  6006                  bra.s    L2e74                              
L2e6e:
  02e6e  486efff4              pea      -$c(a6)                            
  02e72  a8a3                  _EraseRect                                  ; $a8a3
L2e74:
  02e74  2079ffff8fc6          movea.l  g_703a,a0                          
  02e7a  2d680010fff4          move.l   $10(a0),-$c(a6)                    
  02e80  2d680014fff8          move.l   $14(a0),-$8(a6)                    
  02e86  2f08                  move.l   a0,-(a7)                           
  02e88  a873                  _SetPort                                    ; $a873
  02e8a  2079ffff9a1c          movea.l  g_65e4,a0                          
  02e90  20680002              movea.l  $2(a0),a0                          
  02e94  2f10                  move.l   (a0),-(a7)                         
  02e96  2079ffff8fc6          movea.l  g_703a,a0                          
  02e9c  48680002              pea      $2(a0)                             
  02ea0  486efff4              pea      -$c(a6)                            
  02ea4  486efff4              pea      -$c(a6)                            
  02ea8  4267                  clr.w    -(a7)                              
  02eaa  42a7                  clr.l    -(a7)                              
  02eac  a8ec                  _CopyBits                                   ; $a8ec
  02eae  2f2efffc              move.l   -$4(a6),-(a7)                      
  02eb2  a873                  _SetPort                                    ; $a873
  02eb4  2f0c                  move.l   a4,-(a7)                           
  02eb6  a91f                  _SelectWindow                               ; $a91f
  02eb8  285f                  movea.l  (a7)+,a4                           
  02eba  4e5e                  unlk     a6                                 
  02ebc  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_2ebe   [jump table #228]
;----------------------------------------------------------------------
f7_2ebe:
  02ebe  4e56fff4              link     a6,#-12                            
  02ec2  48e70700              movem.l  d5/d6/d7,-(a7)                     
  02ec6  7a00                  moveq    #0,d5                              
  02ec8  486efff4              pea      -$c(a6)                            
  02ecc  a874                  _GetPort                                    ; $a874
  02ece  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  02ed4  a873                  _SetPort                                    ; $a873
  02ed6  7c01                  moveq    #1,d6                              
  02ed8  6010                  bra.s    L2eea                              
L2eda:
  02eda  4a3061b0ffff9858      tst.b    (-$67a8,za0,d6.w)                  
  02ee2  6704                  beq.s    L2ee8                              
  02ee4  7a01                  moveq    #1,d5                              
  02ee6  6008                  bra.s    L2ef0                              
L2ee8:
  02ee8  5246                  addq.w   #1,d6                              
L2eea:
  02eea  0c460005              cmpi.w   #5,d6                              
  02eee  6fea                  ble.s    L2eda                              
L2ef0:
  02ef0  486efff8              pea      -$8(a6)                            
  02ef4  2f3c0005004b          move.l   #$5004b,-(a7)                      
  02efa  2f3c0025006b          move.l   #$25006b,-(a7)                     
  02f00  a8a7                  _SetRect                                    ; $a8a7
  02f02  486efff8              pea      -$8(a6)                            
  02f06  2f3c006f005a          move.l   #$6f005a,-(a7)                     
  02f0c  a8a8                  _OffsetRect                                 ; $a8a8
  02f0e  4a05                  tst.b    d5                                 
  02f10  6706                  beq.s    L2f18                              
  02f12  3e3c04d2              move.w   #$4d2,d7                           
  02f16  6008                  bra.s    L2f20                              
L2f18:
  02f18  486efff8              pea      -$8(a6)                            
  02f1c  a8a3                  _EraseRect                                  ; $a8a3
  02f1e  6016                  bra.s    L2f36                              
L2f20:
  02f20  486efff8              pea      -$8(a6)                            
  02f24  a8a3                  _EraseRect                                  ; $a8a3
  02f26  3f07                  move.w   d7,-(a7)                           
  02f28  486efff8              pea      -$8(a6)                            
  02f2c  4ebaeb44              jsr      f7_1a72                            
  02f30  2eaefff4              move.l   -$c(a6),(a7)                       
  02f34  a873                  _SetPort                                    ; $a873
L2f36:
  02f36  4cee00e0ffe8          movem.l  -$18(a6),d5/d6/d7                  
  02f3c  4e5e                  unlk     a6                                 
  02f3e  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_2f40   [jump table #229]
;----------------------------------------------------------------------
f7_2f40:
  02f40  4e56ffbc              link     a6,#-68                            
  02f44  48e70f00              movem.l  d4/d5/d6/d7,-(a7)                  
  02f48  7c01                  moveq    #1,d6                              
  02f4a  7800                  moveq    #0,d4                              
  02f4c  7e00                  moveq    #0,d7                              
  02f4e  6012                  bra.s    L2f62                              
L2f50:
  02f50  4a7073b0ffff8e3e      tst.w    (-$71c2,za0,d7.w*2)                
  02f58  6f06                  ble.s    L2f60                              
  02f5a  7801                  moveq    #1,d4                              
  02f5c  7c01                  moveq    #1,d6                              
  02f5e  dc47                  add.w    d7,d6                              
L2f60:
  02f60  5247                  addq.w   #1,d7                              
L2f62:
  02f62  0c470006              cmpi.w   #6,d7                              
  02f66  6de8                  blt.s    L2f50                              
  02f68  4a04                  tst.b    d4                                 
  02f6a  660c                  bne.s    L2f78                              
  02f6c  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  02f72  a916                  _HideWindow                                 ; $a916
  02f74  60000172              bra.w    L30e8                              
L2f78:
  02f78  3f3c07d1              move.w   #$7d1,-(a7)                        
  02f7c  486effbc              pea      -$44(a6)                           
  02f80  486effe4              pea      -$1c(a6)                           
  02f84  4ead025a              jsr      f2_194e                            
  02f88  486efffc              pea      -$4(a6)                            
  02f8c  a874                  _GetPort                                    ; $a874
  02f8e  2eb9ffff9382          move.l   g_6c7e,(a7)                        
  02f94  a873                  _SetPort                                    ; $a873
  02f96  2079ffff9382          movea.l  g_6c7e,a0                          
  02f9c  3d680010ffe8          move.w   $10(a0),-$18(a6)                   
  02fa2  3d680012ffea          move.w   $12(a0),-$16(a6)                   
  02fa8  486effe8              pea      -$18(a6)                           
  02fac  a870                  _LocalToGlobal                              ; $a870
  02fae  2eb9ffff8fc2          move.l   g_703e,(a7)                        
  02fb4  70d2                  moveq    #-46,d0                            
  02fb6  d06effea              add.w    -$16(a6),d0                        
  02fba  3f00                  move.w   d0,-(a7)                           
  02fbc  70ed                  moveq    #-19,d0                            
  02fbe  d06effe8              add.w    -$18(a6),d0                        
  02fc2  3f00                  move.w   d0,-(a7)                           
  02fc4  4227                  clr.b    -(a7)                              
  02fc6  a91b                  _MoveWindow                                 ; $a91b
  02fc8  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  02fce  3f3c002d              move.w   #$2d,-(a7)                         
  02fd2  702d                  moveq    #45,d0                             
  02fd4  c1c6                  muls.w   d6,d0                              
  02fd6  3f00                  move.w   d0,-(a7)                           
  02fd8  1f3c0001              move.b   #1,-(a7)                           
  02fdc  a91d                  _SizeWindow                                 ; $a91d
  02fde  486effe8              pea      -$18(a6)                           
  02fe2  a871                  _GlobalToLocal                              ; $a871
  02fe4  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  02fea  a915                  _ShowWindow                                 ; $a915
  02fec  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  02ff2  a920                  _BringToFront                               ; $a920
  02ff4  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  02ffa  a873                  _SetPort                                    ; $a873
  02ffc  3ebc0009              move.w   #9,(a7)                            
  03000  a88a                  _TextSize                                   ; $a88a
  03002  4267                  clr.w    -(a7)                              
  03004  a889                  _TextMode                                   ; $a889
  03006  486efff4              pea      -$c(a6)                            
  0300a  48780005              pea      ($5).w                             
  0300e  2f3c00200025          move.l   #$200025,-(a7)                     
  03014  a8a7                  _SetRect                                    ; $a8a7
  03016  7e00                  moveq    #0,d7                              
  03018  600000ae              bra.w    L30c8                              
L301c:
  0301c  4a7073b0ffff8e3e      tst.w    (-$71c2,za0,d7.w*2)                
  03024  6f66                  ble.s    L308c                              
  03026  3f3c4e44              move.w   #$4e44,-(a7)                       
  0302a  486efff4              pea      -$c(a6)                            
  0302e  4ebaea42              jsr      f7_1a72                            
  03032  4257                  clr.w    (a7)                               
  03034  2f3674c0              move.l   -$40(a6,d7.w*4),-(a7)              
  03038  a88c                  _StringWidth                                ; $a88c
  0303a  3c1f                  move.w   (a7)+,d6                           
  0303c  3046                  movea.w  d6,a0                              
  0303e  2008                  move.l   a0,d0                              
  03040  81fc0002              divs.w   #2,d0                              
  03044  7a16                  moveq    #22,d5                             
  03046  9a40                  sub.w    d0,d5                              
  03048  4a45                  tst.w    d5                                 
  0304a  588f                  addq.l   #4,a7                              
  0304c  6c02                  bge.s    L3050                              
  0304e  7a00                  moveq    #0,d5                              
L3050:
  03050  486effec              pea      -$14(a6)                           
  03054  4267                  clr.w    -(a7)                              
  03056  7001                  moveq    #1,d0                              
  03058  d06efff8              add.w    -$8(a6),d0                         
  0305c  3f00                  move.w   d0,-(a7)                           
  0305e  2079ffff8fc2          movea.l  g_703e,a0                          
  03064  3f280016              move.w   $16(a0),-(a7)                      
  03068  700a                  moveq    #10,d0                             
  0306a  d06efff8              add.w    -$8(a6),d0                         
  0306e  3f00                  move.w   d0,-(a7)                           
  03070  a8a7                  _SetRect                                    ; $a8a7
  03072  486effec              pea      -$14(a6)                           
  03076  a8a3                  _EraseRect                                  ; $a8a3
  03078  3f05                  move.w   d5,-(a7)                           
  0307a  700a                  moveq    #10,d0                             
  0307c  d06efff8              add.w    -$8(a6),d0                         
  03080  3f00                  move.w   d0,-(a7)                           
  03082  a893                  _MoveTo                                     ; $a893
  03084  2f3674c0              move.l   -$40(a6,d7.w*4),-(a7)              
  03088  a884                  _DrawString                                 ; $a884
  0308a  602e                  bra.s    L30ba                              
L308c:
  0308c  486efff4              pea      -$c(a6)                            
  03090  a8a3                  _EraseRect                                  ; $a8a3
  03092  486effec              pea      -$14(a6)                           
  03096  4267                  clr.w    -(a7)                              
  03098  7001                  moveq    #1,d0                              
  0309a  d06efff8              add.w    -$8(a6),d0                         
  0309e  3f00                  move.w   d0,-(a7)                           
  030a0  2079ffff8fc2          movea.l  g_703e,a0                          
  030a6  3f280016              move.w   $16(a0),-(a7)                      
  030aa  700a                  moveq    #10,d0                             
  030ac  d06efff8              add.w    -$8(a6),d0                         
  030b0  3f00                  move.w   d0,-(a7)                           
  030b2  a8a7                  _SetRect                                    ; $a8a7
  030b4  486effec              pea      -$14(a6)                           
  030b8  a8a3                  _EraseRect                                  ; $a8a3
L30ba:
  030ba  486efff4              pea      -$c(a6)                            
  030be  2f3c002d0000          move.l   #$2d0000,-(a7)                     
  030c4  a8a8                  _OffsetRect                                 ; $a8a8
  030c6  5247                  addq.w   #1,d7                              
L30c8:
  030c8  0c470006              cmpi.w   #6,d7                              
  030cc  6d00ff4e              blt.w    L301c                              
  030d0  2f2efffc              move.l   -$4(a6),-(a7)                      
  030d4  a873                  _SetPort                                    ; $a873
  030d6  7e01                  moveq    #1,d7                              
  030d8  6008                  bra.s    L30e2                              
L30da:
  030da  207674bc              movea.l  -$44(a6,d7.w*4),a0                 
  030de  a01f                  _DisposePtr                                 ; $a01f
  030e0  5247                  addq.w   #1,d7                              
L30e2:
  030e2  be6effe4              cmp.w    -$1c(a6),d7                        
  030e6  6ff2                  ble.s    L30da                              
L30e8:
  030e8  4cdf00f0              movem.l  (a7)+,d4/d5/d6/d7                  
  030ec  4e5e                  unlk     a6                                 
  030ee  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_30f0   [jump table #230]
;----------------------------------------------------------------------
f7_30f0:
  030f0  4e56fdd4              link     a6,#-556                           
  030f4  48e70308              movem.l  d6/d7/a4,-(a7)                     
  030f8  3e2e0008              move.w   $8(a6),d7                          
  030fc  7c00                  moveq    #0,d6                              
  030fe  4a79ffff97e0          tst.w    g_6820                             
  03104  662a                  bne.s    L3130                              
  03106  42a7                  clr.l    -(a7)                              
  03108  3f3c008c              move.w   #$8c,-(a7)                         
  0310c  486efede              pea      -$122(a6)                          
  03110  4878ffff              pea      ($ffff).w                          
  03114  a97c                  _GetNewDialog                               ; $a97c
  03116  285f                  movea.l  (a7)+,a4                           
L3118:
  03118  42a7                  clr.l    -(a7)                              
  0311a  486efddc              pea      -$224(a6)                          
  0311e  a991                  _ModalDialog                                ; $a991
  03120  0c6e0001fddc          cmpi.w   #1,-$224(a6)                       
  03126  66f0                  bne.s    L3118                              
  03128  2f0c                  move.l   a4,-(a7)                           
  0312a  a983                  _DisposeDialog                              ; $a983
  0312c  600000ba              bra.w    L31e8                              
L3130:
  03130  3f3c02bc              move.w   #$2bc,-(a7)                        
  03134  486eff88              pea      -$78(a6)                           
  03138  486efdd8              pea      -$228(a6)                          
  0313c  4ead025a              jsr      f2_194e                            
  03140  2eb075b0ffff735a      move.l   (-$8ca6,za0,d7.w*4),(a7)           
  03148  4ead05fa              jsr      f6_0130                            
  0314c  1c00                  move.b   d0,d6                              
  0314e  4a06                  tst.b    d6                                 
  03150  4fef000a              lea      $a(a7),a7                          
  03154  6710                  beq.s    L3166                              
  03156  486efdde              pea      -$222(a6)                          
  0315a  2f3c000202bb          move.l   #$202bb,-(a7)                      
  03160  4ead0522              jsr      f4_153c                            
  03164  600e                  bra.s    L3174                              
L3166:
  03166  486efdde              pea      -$222(a6)                          
  0316a  2f3c000102bb          move.l   #$102bb,-(a7)                      
  03170  4ead0522              jsr      f4_153c                            
L3174:
  03174  486efdde              pea      -$222(a6)                          
  03178  2f3075b0ffff735a      move.l   (-$8ca6,za0,d7.w*4),-(a7)          
  03180  2f2eff94              move.l   -$6c(a6),-(a7)                     
  03184  2f3c00001308          move.l   STR_1308,-(a7)                     ; "?"
  0318a  a98b                  _ParamText                                  ; $a98b
  0318c  42a7                  clr.l    -(a7)                              
  0318e  3f3c02c7              move.w   #$2c7,-(a7)                        
  03192  486efede              pea      -$122(a6)                          
  03196  4878ffff              pea      ($ffff).w                          
  0319a  a97c                  _GetNewDialog                               ; $a97c
  0319c  285f                  movea.l  (a7)+,a4                           
  0319e  2f0c                  move.l   a4,-(a7)                           
  031a0  a981                  _DrawDialog                                 ; $a981
  031a2  43eefdd4              lea      -$22c(a6),a1                       
  031a6  307c00b4              movea.w  #$b4,a0                            
  031aa  a03b                  _Delay                                      ; $a03b
  031ac  2280                  move.l   d0,(a1)                            
  031ae  2f0c                  move.l   a4,-(a7)                           
  031b0  a983                  _DisposeDialog                              ; $a983
  031b2  21b075b0ffff735a75b0  move.l   (-$8ca6,za0,d7.w*4),(-$8a36,za0,d7.w*4)
  031c0  318773b0ffff83be      move.w   d7,(-$7c42,za0,d7.w*2)             
  031c8  3d7c0001fddc          move.w   #1,-$224(a6)                       
  031ce  600e                  bra.s    L31de                              
L31d0:
  031d0  302efddc              move.w   -$224(a6),d0                       
  031d4  20760488              movea.l  -$78(a6,d0.w*4),a0                 
  031d8  a01f                  _DisposePtr                                 ; $a01f
  031da  526efddc              addq.w   #1,-$224(a6)                       
L31de:
  031de  302efddc              move.w   -$224(a6),d0                       
  031e2  b06efdd8              cmp.w    -$228(a6),d0                       
  031e6  6fe8                  ble.s    L31d0                              
L31e8:
  031e8  4cdf10c0              movem.l  (a7)+,d6/d7/a4                     
  031ec  4e5e                  unlk     a6                                 
  031ee  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_31f0   [jump table #231]
;----------------------------------------------------------------------
f7_31f0:
  031f0  4e56ffe8              link     a6,#-24                            
  031f4  48e70708              movem.l  d5/d6/d7/a4,-(a7)                  
  031f8  4a79ffff8da4          tst.w    g_725c                             
  031fe  660c                  bne.s    L320c                              
  03200  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  03206  a916                  _HideWindow                                 ; $a916
  03208  60000148              bra.w    L3352                              
L320c:
  0320c  486efffc              pea      -$4(a6)                            
  03210  a874                  _GetPort                                    ; $a874
  03212  42a7                  clr.l    -(a7)                              
  03214  a924                  _FrontWindow                                ; $a924
  03216  285f                  movea.l  (a7)+,a4                           
  03218  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  0321e  a873                  _SetPort                                    ; $a873
  03220  2079ffff9382          movea.l  g_6c7e,a0                          
  03226  3d680010ffe8          move.w   $10(a0),-$18(a6)                   
  0322c  3d680012ffea          move.w   $12(a0),-$16(a6)                   
  03232  486effe8              pea      -$18(a6)                           
  03236  a870                  _LocalToGlobal                              ; $a870
  03238  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  0323e  2079ffff9382          movea.l  g_6c7e,a0                          
  03244  7001                  moveq    #1,d0                              
  03246  d06effea              add.w    -$16(a6),d0                        
  0324a  d0680016              add.w    $16(a0),d0                         
  0324e  3f00                  move.w   d0,-(a7)                           
  03250  70ed                  moveq    #-19,d0                            
  03252  d06effe8              add.w    -$18(a6),d0                        
  03256  3f00                  move.w   d0,-(a7)                           
  03258  4227                  clr.b    -(a7)                              
  0325a  a91b                  _MoveWindow                                 ; $a91b
  0325c  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  03262  3f3c0041              move.w   #$41,-(a7)                         
  03266  702d                  moveq    #45,d0                             
  03268  c1f9ffff8da4          muls.w   g_725c,d0                          
  0326e  3f00                  move.w   d0,-(a7)                           
  03270  1f3c0001              move.b   #1,-(a7)                           
  03274  a91d                  _SizeWindow                                 ; $a91d
  03276  486effe8              pea      -$18(a6)                           
  0327a  a871                  _GlobalToLocal                              ; $a871
  0327c  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  03282  a915                  _ShowWindow                                 ; $a915
  03284  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  0328a  a91f                  _SelectWindow                               ; $a91f
  0328c  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  03292  a873                  _SetPort                                    ; $a873
  03294  3f3c0009              move.w   #9,-(a7)                           
  03298  a88a                  _TextSize                                   ; $a88a
  0329a  4267                  clr.w    -(a7)                              
  0329c  a889                  _TextMode                                   ; $a889
  0329e  486efff4              pea      -$c(a6)                            
  032a2  48780010              pea      ($10).w                            
  032a6  2f3c00200030          move.l   #$200030,-(a7)                     
  032ac  a8a7                  _SetRect                                    ; $a8a7
  032ae  7e01                  moveq    #1,d7                              
  032b0  60000090              bra.w    L3342                              
L32b4:
  032b4  3f3c04cf              move.w   #$4cf,-(a7)                        
  032b8  486efff4              pea      -$c(a6)                            
  032bc  4ebae7b4              jsr      f7_1a72                            
  032c0  4257                  clr.w    (a7)                               
  032c2  303073b0ffff887c      move.w   (-$7784,za0,d7.w*2),d0             
  032ca  2f3005b0ffff75ca      move.l   (-$8a36,za0,d0.w*4),-(a7)          
  032d2  a88c                  _StringWidth                                ; $a88c
  032d4  3c1f                  move.w   (a7)+,d6                           
  032d6  3046                  movea.w  d6,a0                              
  032d8  2008                  move.l   a0,d0                              
  032da  81fc0002              divs.w   #2,d0                              
  032de  7a16                  moveq    #22,d5                             
  032e0  9a40                  sub.w    d0,d5                              
  032e2  4a45                  tst.w    d5                                 
  032e4  588f                  addq.l   #4,a7                              
  032e6  6c02                  bge.s    L32ea                              
  032e8  7a00                  moveq    #0,d5                              
L32ea:
  032ea  486effec              pea      -$14(a6)                           
  032ee  4267                  clr.w    -(a7)                              
  032f0  7001                  moveq    #1,d0                              
  032f2  d06efff8              add.w    -$8(a6),d0                         
  032f6  3f00                  move.w   d0,-(a7)                           
  032f8  2079ffff8fd6          movea.l  g_702a,a0                          
  032fe  3f280016              move.w   $16(a0),-(a7)                      
  03302  700c                  moveq    #12,d0                             
  03304  d06efff8              add.w    -$8(a6),d0                         
  03308  3f00                  move.w   d0,-(a7)                           
  0330a  a8a7                  _SetRect                                    ; $a8a7
  0330c  486effec              pea      -$14(a6)                           
  03310  a8a3                  _EraseRect                                  ; $a8a3
  03312  7001                  moveq    #1,d0                              
  03314  d045                  add.w    d5,d0                              
  03316  3f00                  move.w   d0,-(a7)                           
  03318  700a                  moveq    #10,d0                             
  0331a  d06efff8              add.w    -$8(a6),d0                         
  0331e  3f00                  move.w   d0,-(a7)                           
  03320  a893                  _MoveTo                                     ; $a893
  03322  303073b0ffff887c      move.w   (-$7784,za0,d7.w*2),d0             
  0332a  2f3005b0ffff75ca      move.l   (-$8a36,za0,d0.w*4),-(a7)          
  03332  a884                  _DrawString                                 ; $a884
  03334  486efff4              pea      -$c(a6)                            
  03338  2f3c002d0000          move.l   #$2d0000,-(a7)                     
  0333e  a8a8                  _OffsetRect                                 ; $a8a8
  03340  5247                  addq.w   #1,d7                              
L3342:
  03342  be79ffff8da4          cmp.w    g_725c,d7                          
  03348  6f00ff6a              ble.w    L32b4                              
  0334c  2f2efffc              move.l   -$4(a6),-(a7)                      
  03350  a873                  _SetPort                                    ; $a873
L3352:
  03352  4cdf10e0              movem.l  (a7)+,d5/d6/d7/a4                  
  03356  4e5e                  unlk     a6                                 
  03358  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_335a   [jump table #232]
;----------------------------------------------------------------------
f7_335a:
  0335a  4e56fff0              link     a6,#-16                            
  0335e  48e70018              movem.l  a3/a4,-(a7)                        
  03362  286e0010              movea.l  $10(a6),a4                         
  03366  2d6c0010fff8          move.l   $10(a4),-$8(a6)                    
  0336c  2d6c0014fffc          move.l   $14(a4),-$4(a6)                    
  03372  2d6c0010fff0          move.l   $10(a4),-$10(a6)                   
  03378  2d6c0014fff4          move.l   $14(a4),-$c(a6)                    
  0337e  206e000c              movea.l  $c(a6),a0                          
  03382  26680002              movea.l  $2(a0),a3                          
  03386  4a39ffff8dfb          tst.b    g_7205                             
  0338c  670c                  beq.s    L339a                              
  0338e  3f3c5c68              move.w   #$5c68,-(a7)                       
  03392  4ead030a              jsr      f3_4238                            
  03396  548f                  addq.l   #2,a7                              
  03398  6004                  bra.s    L339e                              
L339a:
  0339a  4ead031a              jsr      f3_4424                            
L339e:
  0339e  206e000c              movea.l  $c(a6),a0                          
  033a2  0c500006              cmpi.w   #6,(a0)                            
  033a6  6648                  bne.s    L33f0                              
  033a8  b9cb                  cmpa.l   a3,a4                              
  033aa  6644                  bne.s    L33f0                              
  033ac  2f0c                  move.l   a4,-(a7)                           
  033ae  a922                  _BeginUpdate                                ; $a922
  033b0  486efff8              pea      -$8(a6)                            
  033b4  2f3c00020002          move.l   #$20002,-(a7)                      
  033ba  a8a9                  _InsetRect                                  ; $a8a9
  033bc  2079ffffac6e          movea.l  g_5392,a0                          
  033c2  20680002              movea.l  $2(a0),a0                          
  033c6  2f10                  move.l   (a0),-(a7)                         
  033c8  486c0002              pea      $2(a4)                             
  033cc  486efff8              pea      -$8(a6)                            
  033d0  486efff0              pea      -$10(a6)                           
  033d4  4267                  clr.w    -(a7)                              
  033d6  42a7                  clr.l    -(a7)                              
  033d8  a8ec                  _CopyBits                                   ; $a8ec
  033da  2f0c                  move.l   a4,-(a7)                           
  033dc  a981                  _DrawDialog                                 ; $a981
  033de  206e0008              movea.l  $8(a6),a0                          
  033e2  4250                  clr.w    (a0)                               
  033e4  2f0c                  move.l   a4,-(a7)                           
  033e6  a923                  _EndUpdate                                  ; $a923
  033e8  1d7c00010014          move.b   #1,$14(a6)                         
  033ee  6004                  bra.s    L33f4                              
L33f0:
  033f0  422e0014              clr.b    $14(a6)                            
L33f4:
  033f4  4cdf1800              movem.l  (a7)+,a3/a4                        
  033f8  4e5e                  unlk     a6                                 
  033fa  4e74000c              rtd      #12                                

;----------------------------------------------------------------------
; f7_33fe   [jump table #233]
;----------------------------------------------------------------------
f7_33fe:
  033fe  4e56fefe              link     a6,#-258                           
  03402  48e70138              movem.l  d7/a2/a3/a4,-(a7)                  
  03406  2f39ffff8fd2          move.l   g_702e,-(a7)                       
  0340c  a916                  _HideWindow                                 ; $a916
  0340e  2f39ffff8fc6          move.l   g_703a,-(a7)                       
  03414  a916                  _HideWindow                                 ; $a916
  03416  2f39ffff9382          move.l   g_6c7e,-(a7)                       
  0341c  a916                  _HideWindow                                 ; $a916
  0341e  2f39ffff8fc2          move.l   g_703e,-(a7)                       
  03424  a916                  _HideWindow                                 ; $a916
  03426  2f39ffff8fd6          move.l   g_702a,-(a7)                       
  0342c  a916                  _HideWindow                                 ; $a916
  0342e  2f39ffff8fb6          move.l   g_704a,-(a7)                       
  03434  a916                  _HideWindow                                 ; $a916
  03436  3d7c0001ff36          move.w   #1,-$ca(a6)                        
  0343c  6014                  bra.s    L3452                              
L343e:
  0343e  302eff36              move.w   -$ca(a6),d0                        
  03442  2f3005b0ffff8dc0      move.l   (-$7240,za0,d0.w*4),-(a7)          
  0344a  4267                  clr.w    -(a7)                              
  0344c  a93a                  _DisableItem                                ; $a93a
  0344e  526eff36              addq.w   #1,-$ca(a6)                        
L3452:
  03452  0c6e0005ff36          cmpi.w   #5,-$ca(a6)                        
  03458  6fe4                  ble.s    L343e                              
  0345a  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  03460  a851                  _SetCursor                                  ; $a851
  03462  a853                  _ShowCursor                                 ; $a853
  03464  3d7c0001ff36          move.w   #1,-$ca(a6)                        
  0346a  6028                  bra.s    L3494                              
L346c:
  0346c  42a7                  clr.l    -(a7)                              
  0346e  302eff36              move.w   -$ca(a6),d0                        
  03472  06401392              addi.w   #$1392,d0                          
  03476  3f00                  move.w   d0,-(a7)                           
  03478  a9bc                  _GetPicture                                 ; $a9bc
  0347a  302eff36              move.w   -$ca(a6),d0                        
  0347e  2d9f0520ff3a          move.l   (a7)+,(-$c6,a6,d0.w*4)             
  03484  302eff36              move.w   -$ca(a6),d0                        
  03488  20760520ff3a          movea.l  (-$c6,a6,d0.w*4),a0                
  0348e  a029                  _HLock                                      ; $a029
  03490  526eff36              addq.w   #1,-$ca(a6)                        
L3494:
  03494  0c6e0007ff36          cmpi.w   #7,-$ca(a6)                        
  0349a  6dd0                  blt.s    L346c                              
  0349c  426eff36              clr.w    -$ca(a6)                           
  034a0  42a7                  clr.l    -(a7)                              
  034a2  3f3c0a28              move.w   #$a28,-(a7)                        
  034a6  486eff56              pea      -$aa(a6)                           
  034aa  4878ffff              pea      ($ffff).w                          
  034ae  a97c                  _GetNewDialog                               ; $a97c
  034b0  285f                  movea.l  (a7)+,a4                           
  034b2  2f0c                  move.l   a4,-(a7)                           
  034b4  4ebae166              jsr      f7_161c                            
  034b8  2d6c0010ff0e          move.l   $10(a4),-$f2(a6)                   
  034be  2d6c0014ff12          move.l   $14(a4),-$ee(a6)                   
  034c4  2d6eff0eff06          move.l   -$f2(a6),-$fa(a6)                  
  034ca  2d6eff12ff0a          move.l   -$ee(a6),-$f6(a6)                  
  034d0  486eff0e              pea      -$f2(a6)                           
  034d4  2f3c00020002          move.l   #$20002,-(a7)                      
  034da  a8a9                  _InsetRect                                  ; $a8a9
  034dc  2e8c                  move.l   a4,(a7)                            
  034de  a915                  _ShowWindow                                 ; $a915
  034e0  2f0c                  move.l   a4,-(a7)                           
  034e2  a873                  _SetPort                                    ; $a873
  034e4  2079ffffac6e          movea.l  g_5392,a0                          
  034ea  20680002              movea.l  $2(a0),a0                          
  034ee  2f10                  move.l   (a0),-(a7)                         
  034f0  486c0002              pea      $2(a4)                             
  034f4  486eff0e              pea      -$f2(a6)                           
  034f8  486eff06              pea      -$fa(a6)                           
  034fc  4267                  clr.w    -(a7)                              
  034fe  42a7                  clr.l    -(a7)                              
  03500  a8ec                  _CopyBits                                   ; $a8ec
  03502  13fc0001ffff8dfb      move.b   #1,g_7205                          
L350a:
  0350a  486d0762              pea      f7_335a                            
  0350e  486eff38              pea      -$c8(a6)                           
  03512  a991                  _ModalDialog                                ; $a991
  03514  0c6e0001ff38          cmpi.w   #1,-$c8(a6)                        
  0351a  6708                  beq.s    L3524                              
  0351c  0c6e0006ff38          cmpi.w   #6,-$c8(a6)                        
  03522  6672                  bne.s    L3596                              
L3524:
  03524  486c0002              pea      $2(a4)                             
  03528  2079ffff99f8          movea.l  g_6608,a0                          
  0352e  20680002              movea.l  $2(a0),a0                          
  03532  2f10                  move.l   (a0),-(a7)                         
  03534  486eff06              pea      -$fa(a6)                           
  03538  486eff06              pea      -$fa(a6)                           
  0353c  4267                  clr.w    -(a7)                              
  0353e  42a7                  clr.l    -(a7)                              
  03540  a8ec                  _CopyBits                                   ; $a8ec
  03542  2f0c                  move.l   a4,-(a7)                           
  03544  3f2eff38              move.w   -$c8(a6),-(a7)                     
  03548  486eff36              pea      -$ca(a6)                           
  0354c  486eff2a              pea      -$d6(a6)                           
  03550  486eff2e              pea      -$d2(a6)                           
  03554  a98d                  _GetDialogItem                              ; $a98d
  03556  302eff38              move.w   -$c8(a6),d0                        
  0355a  2f360520ff3a          move.l   (-$c6,a6,d0.w*4),-(a7)             
  03560  486eff2e              pea      -$d2(a6)                           
  03564  a8f6                  _DrawPicture                                ; $a8f6
  03566  0c6e0001ff38          cmpi.w   #1,-$c8(a6)                        
  0356c  6606                  bne.s    L3574                              
  0356e  4ebae0f6              jsr      f7_1666                            
  03572  6004                  bra.s    L3578                              
L3574:
  03574  4ead00da              jsr      f2_27ae                            
L3578:
  03578  2079ffff99f8          movea.l  g_6608,a0                          
  0357e  20680002              movea.l  $2(a0),a0                          
  03582  2f10                  move.l   (a0),-(a7)                         
  03584  486c0002              pea      $2(a4)                             
  03588  486eff06              pea      -$fa(a6)                           
  0358c  486eff06              pea      -$fa(a6)                           
  03590  4267                  clr.w    -(a7)                              
  03592  42a7                  clr.l    -(a7)                              
  03594  a8ec                  _CopyBits                                   ; $a8ec
L3596:
  03596  4a6eff38              tst.w    -$c8(a6)                           
  0359a  6700ff6e              beq.w    L350a                              
  0359e  0c6e0001ff38          cmpi.w   #1,-$c8(a6)                        
  035a4  6700ff64              beq.w    L350a                              
  035a8  0c6e0006ff38          cmpi.w   #6,-$c8(a6)                        
  035ae  6700ff5a              beq.w    L350a                              
  035b2  302eff38              move.w   -$c8(a6),d0                        
  035b6  6b000124              bmi.w    L36dc                              
  035ba  5940                  subq.w   #4,d0                              
  035bc  6742                  beq.s    L3600                              
  035be  6a0a                  bpl.s    L35ca                              
  035c0  5440                  addq.w   #2,d0                              
  035c2  6710                  beq.s    L35d4                              
  035c4  6a66                  bpl.s    L362c                              
  035c6  60000114              bra.w    L36dc                              
L35ca:
  035ca  5540                  subq.w   #2,d0                              
  035cc  6a00010e              bpl.w    L36dc                              
  035d0  60000086              bra.w    L3658                              
L35d4:
  035d4  2f0c                  move.l   a4,-(a7)                           
  035d6  3f2eff38              move.w   -$c8(a6),-(a7)                     
  035da  486eff36              pea      -$ca(a6)                           
  035de  486eff2a              pea      -$d6(a6)                           
  035e2  486eff2e              pea      -$d2(a6)                           
  035e6  a98d                  _GetDialogItem                              ; $a98d
  035e8  302eff38              move.w   -$c8(a6),d0                        
  035ec  2f360520ff3a          move.l   (-$c6,a6,d0.w*4),-(a7)             
  035f2  486eff2e              pea      -$d2(a6)                           
  035f6  a8f6                  _DrawPicture                                ; $a8f6
  035f8  45ed010a              lea      f2_39fc,a2                         
  035fc  600000de              bra.w    L36dc                              
L3600:
  03600  2f0c                  move.l   a4,-(a7)                           
  03602  3f2eff38              move.w   -$c8(a6),-(a7)                     
  03606  486eff36              pea      -$ca(a6)                           
  0360a  486eff2a              pea      -$d6(a6)                           
  0360e  486eff2e              pea      -$d2(a6)                           
  03612  a98d                  _GetDialogItem                              ; $a98d
  03614  302eff38              move.w   -$c8(a6),d0                        
  03618  2f360520ff3a          move.l   (-$c6,a6,d0.w*4),-(a7)             
  0361e  486eff2e              pea      -$d2(a6)                           
  03622  a8f6                  _DrawPicture                                ; $a8f6
  03624  45ed0112              lea      f2_3b0a,a2                         
  03628  600000b2              bra.w    L36dc                              
L362c:
  0362c  2f0c                  move.l   a4,-(a7)                           
  0362e  3f2eff38              move.w   -$c8(a6),-(a7)                     
  03632  486eff36              pea      -$ca(a6)                           
  03636  486eff2a              pea      -$d6(a6)                           
  0363a  486eff2e              pea      -$d2(a6)                           
  0363e  a98d                  _GetDialogItem                              ; $a98d
  03640  302eff38              move.w   -$c8(a6),d0                        
  03644  2f360520ff3a          move.l   (-$c6,a6,d0.w*4),-(a7)             
  0364a  486eff2e              pea      -$d2(a6)                           
  0364e  a8f6                  _DrawPicture                                ; $a8f6
  03650  45ed0122              lea      f2_3bf0,a2                         
  03654  60000086              bra.w    L36dc                              
L3658:
  03658  2f0c                  move.l   a4,-(a7)                           
  0365a  3f2eff38              move.w   -$c8(a6),-(a7)                     
  0365e  486eff36              pea      -$ca(a6)                           
  03662  486eff2a              pea      -$d6(a6)                           
  03666  486eff2e              pea      -$d2(a6)                           
  0366a  a98d                  _GetDialogItem                              ; $a98d
  0366c  302eff38              move.w   -$c8(a6),d0                        
  03670  2f360520ff3a          move.l   (-$c6,a6,d0.w*4),-(a7)             
  03676  486eff2e              pea      -$d2(a6)                           
  0367a  a8f6                  _DrawPicture                                ; $a8f6
  0367c  43eeff26              lea      -$da(a6),a1                        
  03680  307c005a              movea.w  #$5a,a0                            
  03684  a03b                  _Delay                                      ; $a03b
  03686  2280                  move.l   d0,(a1)                            
  03688  2f0c                  move.l   a4,-(a7)                           
  0368a  a983                  _DisposeDialog                              ; $a983
  0368c  3d7c0001ff36          move.w   #1,-$ca(a6)                        
  03692  6010                  bra.s    L36a4                              
L3694:
  03694  302eff36              move.w   -$ca(a6),d0                        
  03698  20760520ff3a          movea.l  (-$c6,a6,d0.w*4),a0                
  0369e  a02a                  _HUnlock                                    ; $a02a
  036a0  526eff36              addq.w   #1,-$ca(a6)                        
L36a4:
  036a4  0c6e0007ff36          cmpi.w   #7,-$ca(a6)                        
  036aa  6de8                  blt.s    L3694                              
  036ac  204b                  movea.l  a3,a0                              
  036ae  a02a                  _HUnlock                                    ; $a02a
  036b0  3d7c0001ff36          move.w   #1,-$ca(a6)                        
  036b6  6010                  bra.s    L36c8                              
L36b8:
  036b8  302eff36              move.w   -$ca(a6),d0                        
  036bc  2f360520ff3a          move.l   (-$c6,a6,d0.w*4),-(a7)             
  036c2  a9a3                  _ReleaseResource                            ; $a9a3
  036c4  526eff36              addq.w   #1,-$ca(a6)                        
L36c8:
  036c8  0c6e0007ff36          cmpi.w   #7,-$ca(a6)                        
  036ce  6de8                  blt.s    L36b8                              
  036d0  2f0b                  move.l   a3,-(a7)                           
  036d2  a9a3                  _ReleaseResource                            ; $a9a3
  036d4  4ead05ba              jsr      f5_36ba                            
  036d8  1e00                  move.b   d0,d7                              
  036da  606e                  bra.s    L374a                              
L36dc:
  036dc  43eeff26              lea      -$da(a6),a1                        
  036e0  307c005a              movea.w  #$5a,a0                            
  036e4  a03b                  _Delay                                      ; $a03b
  036e6  2280                  move.l   d0,(a1)                            
  036e8  2f0c                  move.l   a4,-(a7)                           
  036ea  a983                  _DisposeDialog                              ; $a983
  036ec  4ead032a              jsr      f3_44be                            
  036f0  3d7c0001ff36          move.w   #1,-$ca(a6)                        
  036f6  6010                  bra.s    L3708                              
L36f8:
  036f8  302eff36              move.w   -$ca(a6),d0                        
  036fc  20760520ff3a          movea.l  (-$c6,a6,d0.w*4),a0                
  03702  a02a                  _HUnlock                                    ; $a02a
  03704  526eff36              addq.w   #1,-$ca(a6)                        
L3708:
  03708  0c6e0007ff36          cmpi.w   #7,-$ca(a6)                        
  0370e  6de8                  blt.s    L36f8                              
  03710  3d7c0001ff36          move.w   #1,-$ca(a6)                        
  03716  6010                  bra.s    L3728                              
L3718:
  03718  302eff36              move.w   -$ca(a6),d0                        
  0371c  2f360520ff3a          move.l   (-$c6,a6,d0.w*4),-(a7)             
  03722  a9a3                  _ReleaseResource                            ; $a9a3
  03724  526eff36              addq.w   #1,-$ca(a6)                        
L3728:
  03728  0c6e0007ff36          cmpi.w   #7,-$ca(a6)                        
  0372e  6de8                  blt.s    L3718                              
  03730  2f39ffff8dc4          move.l   g_723c,-(a7)                       
  03736  4267                  clr.w    -(a7)                              
  03738  a939                  _EnableItem                                 ; $a939
  0373a  4e92                  jsr      (a2)                               
  0373c  4ead05c2              jsr      f5_3984                            
  03740  2f3c0000ffff          move.l   #$ffff,-(a7)                       
  03746  201f                  move.l   (a7)+,d0                           
  03748  a032                  _FlushEvents                                ; $a032
L374a:
  0374a  4cdf1c80              movem.l  (a7)+,d7/a2/a3/a4                  
  0374e  4e5e                  unlk     a6                                 
  03750  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_3752   [jump table #234]
;----------------------------------------------------------------------
f7_3752:
  03752  4e56fffc              link     a6,#-4                             
  03756  48e70700              movem.l  d5/d6/d7,-(a7)                     
  0375a  3e2e0008              move.w   $8(a6),d7                          
  0375e  4a7073b0ffff8e3c      tst.w    (-$71c4,za0,d7.w*2)                
  03766  6608                  bne.s    L3770                              
  03768  7000                  moveq    #0,d0                              
  0376a  60000120              bra.w    L388c                              
L376e:
  0376e  5247                  addq.w   #1,d7                              
L3770:
  03770  4a7073b0ffff8e3c      tst.w    (-$71c4,za0,d7.w*2)                
  03778  6ff4                  ble.s    L376e                              
  0377a  537073b0ffff8e3c      subq.w   #1,(-$71c4,za0,d7.w*2)             
  03782  0c470006              cmpi.w   #6,d7                              
  03786  664e                  bne.s    L37d6                              
  03788  7a01                  moveq    #1,d5                              
  0378a  603a                  bra.s    L37c6                              
L378c:
  0378c  4a7053b0ffff8c78      tst.w    (-$7388,za0,d5.w*2)                
  03794  672e                  beq.s    L37c4                              
  03796  427053b0ffff8c78      clr.w    (-$7388,za0,d5.w*2)                
  0379e  3f3c5c02              move.w   #$5c02,-(a7)                       
  037a2  4ead030a              jsr      f3_4238                            
  037a6  4ead031a              jsr      f3_4424                            
  037aa  548f                  addq.l   #2,a7                              
L37ac:
  037ac  4a39ffff8dfb          tst.b    g_7205                             
  037b2  67f8                  beq.s    L37ac                              
  037b4  427053b0ffff8ccc      clr.w    (-$7334,za0,d5.w*2)                
  037bc  427053b0ffff8cf6      clr.w    (-$730a,za0,d5.w*2)                
L37c4:
  037c4  5245                  addq.w   #1,d5                              
L37c6:
  037c6  ba79ffff883e          cmp.w    g_77c2,d5                          
  037cc  6fbe                  ble.s    L378c                              
  037ce  4ead0312              jsr      f3_4384                            
  037d2  600000b8              bra.w    L388c                              
L37d6:
  037d6  4a39ffff8df1          tst.b    g_720f                             
  037dc  6620                  bne.s    L37fe                              
  037de  7019                  moveq    #25,d0                             
  037e0  d079ffff8390          add.w    g_7c70,d0                          
  037e6  3f00                  move.w   d0,-(a7)                           
  037e8  4ead0242              jsr      f2_79a8                            
  037ec  3239ffff8382          move.w   g_7c7e,d1                          
  037f2  d279ffff8390          add.w    g_7c70,d1                          
  037f8  b240                  cmp.w    d0,d1                              
  037fa  548f                  addq.l   #2,a7                              
  037fc  6d08                  blt.s    L3806                              
L37fe:
  037fe  4a39ffff8df9          tst.b    g_7207                             
  03804  6710                  beq.s    L3816                              
L3806:
  03806  3f3c07da              move.w   #$7da,-(a7)                        
  0380a  4ead030a              jsr      f3_4238                            
  0380e  4ead0312              jsr      f3_4384                            
  03812  7000                  moveq    #0,d0                              
  03814  6076                  bra.s    L388c                              
L3816:
  03816  3f3c000f              move.w   #$f,-(a7)                          
  0381a  4ead0242              jsr      f2_79a8                            
  0381e  72ff                  moveq    #-1,d1                             
  03820  d247                  add.w    d7,d1                              
  03822  c3fc000f              muls.w   #$f,d1                             
  03826  d240                  add.w    d0,d1                              
  03828  3c01                  move.w   d1,d6                              
  0382a  3ebc0003              move.w   #3,(a7)                            
  0382e  4ead0242              jsr      f2_79a8                            
  03832  4a40                  tst.w    d0                                 
  03834  548f                  addq.l   #2,a7                              
  03836  672e                  beq.s    L3866                              
  03838  6b2c                  bmi.s    L3866                              
  0383a  5740                  subq.w   #3,d0                              
  0383c  671e                  beq.s    L385c                              
  0383e  6a26                  bpl.s    L3866                              
  03840  5240                  addq.w   #1,d0                              
  03842  6a0c                  bpl.s    L3850                              
  03844  3f3c5bd7              move.w   #$5bd7,-(a7)                       
  03848  4ead030a              jsr      f3_4238                            
  0384c  548f                  addq.l   #2,a7                              
  0384e  6016                  bra.s    L3866                              
L3850:
  03850  3f3c5be8              move.w   #$5be8,-(a7)                       
  03854  4ead030a              jsr      f3_4238                            
  03858  548f                  addq.l   #2,a7                              
  0385a  600a                  bra.s    L3866                              
L385c:
  0385c  3f3c07e4              move.w   #$7e4,-(a7)                        
  03860  4ead030a              jsr      f3_4238                            
  03864  548f                  addq.l   #2,a7                              
L3866:
  03866  4ead031a              jsr      f3_4424                            
  0386a  4a39ffff8df2          tst.b    g_720e                             
  03870  660c                  bne.s    L387e                              
  03872  43eefffc              lea      -$4(a6),a1                         
  03876  307c000f              movea.w  #$f,a0                             
  0387a  a03b                  _Delay                                      ; $a03b
  0387c  2280                  move.l   d0,(a1)                            
L387e:
  0387e  302e000a              move.w   $a(a6),d0                          
  03882  9d7003b0ffff8ccc      sub.w    d6,(-$7334,za0,d0.w*2)             
  0388a  7001                  moveq    #1,d0                              
L388c:
  0388c  4cee00e0fff0          movem.l  -$10(a6),d5/d6/d7                  
  03892  4e5e                  unlk     a6                                 
  03894  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_3896
;----------------------------------------------------------------------
f7_3896:
  03896  4e56fffc              link     a6,#-4                             
  0389a  42a7                  clr.l    -(a7)                              
  0389c  2f3c0100a86e          move.l   #$100a86e,-(a7)                    
  038a2  4ead04c2              jsr      f4_139a                            
  038a6  2d5ffffc              move.l   (a7)+,-$4(a6)                      
  038aa  42a7                  clr.l    -(a7)                              
  038ac  2f3c0100aa6e          move.l   #$100aa6e,-(a7)                    
  038b2  4ead04c2              jsr      f4_139a                            
  038b6  202efffc              move.l   -$4(a6),d0                         
  038ba  b09f                  cmp.l    (a7)+,d0                           
  038bc  6606                  bne.s    L38c4                              
  038be  303c0200              move.w   #$200,d0                           
  038c2  6004                  bra.s    L38c8                              
L38c4:
  038c4  303c0400              move.w   #$400,d0                           
L38c8:
  038c8  4e5e                  unlk     a6                                 
  038ca  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_38cc
;----------------------------------------------------------------------
f7_38cc:
  038cc  4e560000              link     a6,#0                              
  038d0  302e0008              move.w   $8(a6),d0                          
  038d4  02400800              andi.w   #$800,d0                           
  038d8  4a40                  tst.w    d0                                 
  038da  6f04                  ble.s    L38e0                              
  038dc  7001                  moveq    #1,d0                              
  038de  6002                  bra.s    L38e2                              
L38e0:
  038e0  7000                  moveq    #0,d0                              
L38e2:
  038e2  4e5e                  unlk     a6                                 
  038e4  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_38e6   [jump table #235]
;----------------------------------------------------------------------
f7_38e6:
  038e6  4e56fffc              link     a6,#-4                             
  038ea  48e70300              movem.l  d6/d7,-(a7)                        
  038ee  3e2e0008              move.w   $8(a6),d7                          
  038f2  3f07                  move.w   d7,-(a7)                           
  038f4  4ebaffd6              jsr      f7_38cc                            
  038f8  1c00                  move.b   d0,d6                              
  038fa  0c060001              cmpi.b   #1,d6                              
  038fe  548f                  addq.l   #2,a7                              
  03900  6604                  bne.s    L3906                              
  03902  024707ff              andi.w   #$7ff,d7                           
L3906:
  03906  4ebaff8e              jsr      f7_3896                            
  0390a  b047                  cmp.w    d7,d0                              
  0390c  6e04                  bgt.s    L3912                              
  0390e  3e3ca89f              move.w   #$a89f,d7                          
L3912:
  03912  42a7                  clr.l    -(a7)                              
  03914  3f07                  move.w   d7,-(a7)                           
  03916  1f06                  move.b   d6,-(a7)                           
  03918  4ead04c2              jsr      f4_139a                            
  0391c  2d5ffffc              move.l   (a7)+,-$4(a6)                      
  03920  42a7                  clr.l    -(a7)                              
  03922  2f3c0100a89f          move.l   #$100a89f,-(a7)                    
  03928  4ead04c2              jsr      f4_139a                            
  0392c  202efffc              move.l   -$4(a6),d0                         
  03930  b09f                  cmp.l    (a7)+,d0                           
  03932  56c0                  sne      d0                                 
  03934  4400                  neg.b    d0                                 
  03936  4cdf00c0              movem.l  (a7)+,d6/d7                        
  0393a  4e5e                  unlk     a6                                 
  0393c  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_393e
;----------------------------------------------------------------------
f7_393e:
  0393e  4e560000              link     a6,#0                              
  03942  3f3ca860              move.w   #$a860,-(a7)                       
  03946  4ebaff9e              jsr      f7_38e6                            
  0394a  4e5e                  unlk     a6                                 
  0394c  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_394e   [jump table #236]
;----------------------------------------------------------------------
f7_394e:
  0394e  4e56fbb4              link     a6,#-1100                          
  03952  48e70738              movem.l  d5/d6/d7/a2/a3/a4,-(a7)            
  03956  41eefe8e              lea      -$172(a6),a0                       
  0395a  43f9ffffb0f2          lea      g_4f0e,a1                          
  03960  700f                  moveq    #15,d0                             
L3962:
  03962  20d9                  move.l   (a1)+,(a0)+                        
  03964  51c8fffc              dbf      d0,L3962                           
  03968  41eefe4e              lea      -$1b2(a6),a0                       
  0396c  43f9ffffb132          lea      g_4ece,a1                          
  03972  700f                  moveq    #15,d0                             
L3974:
  03974  20d9                  move.l   (a1)+,(a0)+                        
  03976  51c8fffc              dbf      d0,L3974                           
  0397a  41eefd4e              lea      -$2b2(a6),a0                       
  0397e  43f9ffffb172          lea      g_4e8e,a1                          
  03984  703f                  moveq    #63,d0                             
L3986:
  03986  20d9                  move.l   (a1)+,(a0)+                        
  03988  51c8fffc              dbf      d0,L3986                           
  0398c  41eefc4e              lea      -$3b2(a6),a0                       
  03990  43f9ffffb272          lea      g_4d8e,a1                          
  03996  703f                  moveq    #63,d0                             
L3998:
  03998  20d9                  move.l   (a1)+,(a0)+                        
  0399a  51c8fffc              dbf      d0,L3998                           
  0399e  1f3c0001              move.b   #1,-(a7)                           
  039a2  a99b                  _SetResLoad                                 ; $a99b
  039a4  2d79ffffabf6fbc4      move.l   g_540a,-$43c(a6)                   
  039ac  2d79ffffabfafbc8      move.l   g_5406,-$438(a6)                   
  039b4  2d7c72737263fbb4      move.l   #$72737263,-$44c(a6)               
  039bc  486efc16              pea      -$3ea(a6)                          
  039c0  7064                  moveq    #100,d0                            
  039c2  d06efbc4              add.w    -$43c(a6),d0                       
  039c6  3f00                  move.w   d0,-(a7)                           
  039c8  3f3c007d              move.w   #$7d,-(a7)                         
  039cc  a880                  _SetPt                                      ; $a880
  039ce  42aefc26              clr.l    -$3da(a6)                          
  039d2  426efc2a              clr.w    -$3d6(a6)                          
  039d6  41eefece              lea      -$132(a6),a0                       
  039da  2d48fc2c              move.l   a0,-$3d4(a6)                       
  039de  2d7c4552494bfc36      move.l   #$4552494b,-$3ca(a6)               
  039e6  42aefc1a              clr.l    -$3e6(a6)                          
  039ea  3d7c0002fc1e          move.w   #2,-$3e2(a6)                       
  039f0  41eefc1a              lea      -$3e6(a6),a0                       
  039f4  a214                  _GetVol.clear                               ; $a214
  039f6  3c00                  move.w   d0,d6                              
  039f8  4a46                  tst.w    d6                                 
  039fa  670e                  beq.s    L3a0a                              
  039fc  2f3c0000130a          move.l   STR_130a,-(a7)                     ; "PBHGetVol"
  03a02  3f06                  move.w   d6,-(a7)                           
  03a04  4ebadee6              jsr      f7_18ec                            
  03a08  5c8f                  addq.l   #6,a7                              
L3a0a:
  03a0a  41eefece              lea      -$132(a6),a0                       
  03a0e  7000                  moveq    #0,d0                              
  03a10  102efece              move.b   -$132(a6),d0                       
  03a14  5240                  addq.w   #1,d0                              
  03a16  48c0                  ext.l    d0                                 
  03a18  227cffffa7aa          movea.l  #$ffffa7aa,a1                      
  03a1e  a02e                  _BlockMove                                  ; $a02e
  03a20  3f2efc30              move.w   -$3d0(a6),-(a7)                    
  03a24  2f3c4a444843          move.l   #$4a444843,-(a7)                   
  03a2a  2f3c72737263          move.l   #$72737263,-(a7)                   
  03a30  486efe8e              pea      -$172(a6)                          
  03a34  4eba037e              jsr      f7_3db4                            
  03a38  4a39ffffb3f4          tst.b    g_4c0c                             
  03a3e  4fef000e              lea      $e(a7),a7                          
  03a42  6314                  bls.s    L3a58                              
  03a44  4267                  clr.w    -(a7)                              
  03a46  2f3cffffb3ee          move.l   #$ffffb3ee,-(a7)                   
  03a4c  4227                  clr.b    -(a7)                              
  03a4e  700d                  moveq    #13,d0                             
  03a50  aa52                  _trap    $aa52                              
  03a52  33dfffffa79c          move.w   (a7)+,g_5864                       
L3a58:
  03a58  4267                  clr.w    -(a7)                              
  03a5a  a9af                  _ResError                                   ; $a9af
  03a5c  3c1f                  move.w   (a7)+,d6                           
  03a5e  4a39ffffb3f4          tst.b    g_4c0c                             
  03a64  670e                  beq.s    L3a74                              
  03a66  4a79ffffa79c          tst.w    g_5864                             
  03a6c  6d06                  blt.s    L3a74                              
  03a6e  4a46                  tst.w    d6                                 
  03a70  670000be              beq.w    L3b30                              
L3a74:
  03a74  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  03a7a  a851                  _SetCursor                                  ; $a851
  03a7c  a853                  _ShowCursor                                 ; $a853
  03a7e  2f3c00001314          move.l   STR_1314,-(a7)                     ; "I couldn't open the game sounds.  Please locate the file 'ca"
  03a84  2f3c0000135e          move.l   STR_135e,-(a7)                     ; "?"
  03a8a  2f3c00001360          move.l   STR_1360,-(a7)                     ; "?"
  03a90  2f3c00001362          move.l   STR_1362,-(a7)                     ; "?"
  03a96  a98b                  _ParamText                                  ; $a98b
  03a98  42a7                  clr.l    -(a7)                              
  03a9a  3f3c0fae              move.w   #$fae,-(a7)                        
  03a9e  486eff56              pea      -$aa(a6)                           
  03aa2  4878ffff              pea      ($ffff).w                          
  03aa6  a97c                  _GetNewDialog                               ; $a97c
  03aa8  285f                  movea.l  (a7)+,a4                           
  03aaa  2f0c                  move.l   a4,-(a7)                           
  03aac  a915                  _ShowWindow                                 ; $a915
  03aae  2f0c                  move.l   a4,-(a7)                           
  03ab0  a981                  _DrawDialog                                 ; $a981
  03ab2  2f2efc16              move.l   -$3ea(a6),-(a7)                    
  03ab6  42a7                  clr.l    -(a7)                              
  03ab8  42a7                  clr.l    -(a7)                              
  03aba  3f3c0001              move.w   #1,-(a7)                           
  03abe  486efbb4              pea      -$44c(a6)                          
  03ac2  42a7                  clr.l    -(a7)                              
  03ac4  486efbcc              pea      -$434(a6)                          
  03ac8  3f3c0002              move.w   #2,-(a7)                           
  03acc  a9ea                  _Pack3                                      ; $a9ea
  03ace  4a2efbcc              tst.b    -$434(a6)                          
  03ad2  6716                  beq.s    L3aea                              
  03ad4  4267                  clr.w    -(a7)                              
  03ad6  3f2efbd2              move.w   -$42e(a6),-(a7)                    
  03ada  42a7                  clr.l    -(a7)                              
  03adc  486efbd6              pea      -$42a(a6)                          
  03ae0  4227                  clr.b    -(a7)                              
  03ae2  a81a                  _HOpenResFile                               ; $a81a
  03ae4  33dfffffa79c          move.w   (a7)+,g_5864                       
L3aea:
  03aea  4267                  clr.w    -(a7)                              
  03aec  a9af                  _ResError                                   ; $a9af
  03aee  3e1f                  move.w   (a7)+,d7                           
  03af0  4a2efbcc              tst.b    -$434(a6)                          
  03af4  6708                  beq.s    L3afe                              
  03af6  4a79ffffa79c          tst.w    g_5864                             
  03afc  6c2c                  bge.s    L3b2a                              
L3afe:
  03afe  2f0c                  move.l   a4,-(a7)                           
  03b00  a983                  _DisposeDialog                              ; $a983
  03b02  2f3c00001364          move.l   STR_1364,-(a7)                     ; "Exiting game now, data problem"
  03b08  2f3c00001384          move.l   STR_1384,-(a7)                     ; "?"
  03b0e  2f3c00001386          move.l   STR_1386,-(a7)                     ; "?"
  03b14  2f3c00001388          move.l   STR_1388,-(a7)                     ; "?"
  03b1a  a98b                  _ParamText                                  ; $a98b
  03b1c  4267                  clr.w    -(a7)                              
  03b1e  3f3c0fab              move.w   #$fab,-(a7)                        
  03b22  42a7                  clr.l    -(a7)                              
  03b24  a986                  _StopAlert                                  ; $a986
  03b26  a9f4                  _ExitToShell                                ; $a9f4
  03b28  548f                  addq.l   #2,a7                              
L3b2a:
  03b2a  2f0c                  move.l   a4,-(a7)                           
  03b2c  a983                  _DisposeDialog                              ; $a983
  03b2e  a852                  _HideCursor                                 ; $a852
L3b30:
  03b30  3f2efc30              move.w   -$3d0(a6),-(a7)                    
  03b34  2f3c4a444843          move.l   #$4a444843,-(a7)                   
  03b3a  2f3c72737263          move.l   #$72737263,-(a7)                   
  03b40  486efd4e              pea      -$2b2(a6)                          
  03b44  4eba026e              jsr      f7_3db4                            
  03b48  4a39ffffb3f4          tst.b    g_4c0c                             
  03b4e  4fef000e              lea      $e(a7),a7                          
  03b52  631a                  bls.s    L3b6e                              
  03b54  4267                  clr.w    -(a7)                              
  03b56  4267                  clr.w    -(a7)                              
  03b58  2f39ffffb3f0          move.l   g_4c10,-(a7)                       
  03b5e  2f3cffffb3f4          move.l   #$ffffb3f4,-(a7)                   
  03b64  4227                  clr.b    -(a7)                              
  03b66  a81a                  _HOpenResFile                               ; $a81a
  03b68  33dfffffa7a0          move.w   (a7)+,g_5860                       
L3b6e:
  03b6e  4267                  clr.w    -(a7)                              
  03b70  a9af                  _ResError                                   ; $a9af
  03b72  3c1f                  move.w   (a7)+,d6                           
  03b74  4a39ffffb3f4          tst.b    g_4c0c                             
  03b7a  670e                  beq.s    L3b8a                              
  03b7c  4a79ffffa7a0          tst.w    g_5860                             
  03b82  6d06                  blt.s    L3b8a                              
  03b84  4a46                  tst.w    d6                                 
  03b86  670000be              beq.w    L3c46                              
L3b8a:
  03b8a  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  03b90  a851                  _SetCursor                                  ; $a851
  03b92  a853                  _ShowCursor                                 ; $a853
  03b94  2f3c0000138a          move.l   STR_138a,-(a7)                     ; "I couldn't open the game art.  Please locate the file 'CK ar"
  03b9a  2f3c000013d0          move.l   STR_13d0,-(a7)                     ; "?"
  03ba0  2f3c000013d2          move.l   STR_13d2,-(a7)                     ; "?"
  03ba6  2f3c000013d4          move.l   STR_13d4,-(a7)                     ; "?"
  03bac  a98b                  _ParamText                                  ; $a98b
  03bae  42a7                  clr.l    -(a7)                              
  03bb0  3f3c0fae              move.w   #$fae,-(a7)                        
  03bb4  486eff56              pea      -$aa(a6)                           
  03bb8  4878ffff              pea      ($ffff).w                          
  03bbc  a97c                  _GetNewDialog                               ; $a97c
  03bbe  285f                  movea.l  (a7)+,a4                           
  03bc0  2f0c                  move.l   a4,-(a7)                           
  03bc2  a915                  _ShowWindow                                 ; $a915
  03bc4  2f0c                  move.l   a4,-(a7)                           
  03bc6  a981                  _DrawDialog                                 ; $a981
  03bc8  2f2efc16              move.l   -$3ea(a6),-(a7)                    
  03bcc  42a7                  clr.l    -(a7)                              
  03bce  42a7                  clr.l    -(a7)                              
  03bd0  3f3c0001              move.w   #1,-(a7)                           
  03bd4  486efbb4              pea      -$44c(a6)                          
  03bd8  42a7                  clr.l    -(a7)                              
  03bda  486efbcc              pea      -$434(a6)                          
  03bde  3f3c0002              move.w   #2,-(a7)                           
  03be2  a9ea                  _Pack3                                      ; $a9ea
  03be4  4a2efbcc              tst.b    -$434(a6)                          
  03be8  6716                  beq.s    L3c00                              
  03bea  4267                  clr.w    -(a7)                              
  03bec  3f2efbd2              move.w   -$42e(a6),-(a7)                    
  03bf0  42a7                  clr.l    -(a7)                              
  03bf2  486efbd6              pea      -$42a(a6)                          
  03bf6  4227                  clr.b    -(a7)                              
  03bf8  a81a                  _HOpenResFile                               ; $a81a
  03bfa  33dfffffa7a0          move.w   (a7)+,g_5860                       
L3c00:
  03c00  4267                  clr.w    -(a7)                              
  03c02  a9af                  _ResError                                   ; $a9af
  03c04  3e1f                  move.w   (a7)+,d7                           
  03c06  4a2efbcc              tst.b    -$434(a6)                          
  03c0a  6708                  beq.s    L3c14                              
  03c0c  4a79ffffa7a0          tst.w    g_5860                             
  03c12  6c2c                  bge.s    L3c40                              
L3c14:
  03c14  2f0c                  move.l   a4,-(a7)                           
  03c16  a983                  _DisposeDialog                              ; $a983
  03c18  2f3c000013d6          move.l   STR_13d6,-(a7)                     ; "Exiting game now, data problem"
  03c1e  2f3c000013f6          move.l   STR_13f6,-(a7)                     ; "?"
  03c24  2f3c000013f8          move.l   STR_13f8,-(a7)                     ; "?"
  03c2a  2f3c000013fa          move.l   STR_13fa,-(a7)                     ; "?"
  03c30  a98b                  _ParamText                                  ; $a98b
  03c32  4267                  clr.w    -(a7)                              
  03c34  3f3c0fab              move.w   #$fab,-(a7)                        
  03c38  42a7                  clr.l    -(a7)                              
  03c3a  a986                  _StopAlert                                  ; $a986
  03c3c  a9f4                  _ExitToShell                                ; $a9f4
  03c3e  548f                  addq.l   #2,a7                              
L3c40:
  03c40  2f0c                  move.l   a4,-(a7)                           
  03c42  a983                  _DisposeDialog                              ; $a983
  03c44  a852                  _HideCursor                                 ; $a852
L3c46:
  03c46  42a7                  clr.l    -(a7)                              
  03c48  3f3c008c              move.w   #$8c,-(a7)                         
  03c4c  aa0c                  _GetPixPat                                  ; $aa0c
  03c4e  245f                  movea.l  (a7)+,a2                           
  03c50  200a                  move.l   a2,d0                              
  03c52  6610                  bne.s    L3c64                              
  03c54  42a7                  clr.l    -(a7)                              
  03c56  2f3c70706174          move.l   #$70706174,-(a7)                   
  03c5c  3f3c008c              move.w   #$8c,-(a7)                         
  03c60  a9a0                  _GetResource                                ; $a9a0
  03c62  2a1f                  move.l   (a7)+,d5                           
L3c64:
  03c64  3f2efc30              move.w   -$3d0(a6),-(a7)                    
  03c68  2f3c4a444843          move.l   #$4a444843,-(a7)                   
  03c6e  2f3c72737263          move.l   #$72737263,-(a7)                   
  03c74  486efc4e              pea      -$3b2(a6)                          
  03c78  4eba013a              jsr      f7_3db4                            
  03c7c  4a39ffffb3f4          tst.b    g_4c0c                             
  03c82  4fef000e              lea      $e(a7),a7                          
  03c86  6314                  bls.s    L3c9c                              
  03c88  4267                  clr.w    -(a7)                              
  03c8a  2f3cffffb3ee          move.l   #$ffffb3ee,-(a7)                   
  03c90  4227                  clr.b    -(a7)                              
  03c92  700d                  moveq    #13,d0                             
  03c94  aa52                  _trap    $aa52                              
  03c96  33dfffffa7a6          move.w   (a7)+,g_585a                       
L3c9c:
  03c9c  4267                  clr.w    -(a7)                              
  03c9e  a9af                  _ResError                                   ; $a9af
  03ca0  3c1f                  move.w   (a7)+,d6                           
  03ca2  4a39ffffb3f4          tst.b    g_4c0c                             
  03ca8  670e                  beq.s    L3cb8                              
  03caa  4a79ffffa7a6          tst.w    g_585a                             
  03cb0  6d06                  blt.s    L3cb8                              
  03cb2  4a46                  tst.w    d6                                 
  03cb4  670000b8              beq.w    L3d6e                              
L3cb8:
  03cb8  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  03cbe  a851                  _SetCursor                                  ; $a851
  03cc0  a853                  _ShowCursor                                 ; $a853
  03cc2  2f3c000013fc          move.l   STR_13fc,-(a7)                     ; "I couldn't open the game help file.  Please locate the file "
  03cc8  2f3c00001448          move.l   STR_1448,-(a7)                     ; "?"
  03cce  2f3c0000144a          move.l   STR_144a,-(a7)                     ; "?"
  03cd4  2f3c0000144c          move.l   STR_144c,-(a7)                     ; "?"
  03cda  a98b                  _ParamText                                  ; $a98b
  03cdc  42a7                  clr.l    -(a7)                              
  03cde  3f3c0fae              move.w   #$fae,-(a7)                        
  03ce2  486eff56              pea      -$aa(a6)                           
  03ce6  4878ffff              pea      ($ffff).w                          
  03cea  a97c                  _GetNewDialog                               ; $a97c
  03cec  285f                  movea.l  (a7)+,a4                           
  03cee  2f0c                  move.l   a4,-(a7)                           
  03cf0  a915                  _ShowWindow                                 ; $a915
  03cf2  2f0c                  move.l   a4,-(a7)                           
  03cf4  a981                  _DrawDialog                                 ; $a981
  03cf6  2f2efc16              move.l   -$3ea(a6),-(a7)                    
  03cfa  42a7                  clr.l    -(a7)                              
  03cfc  42a7                  clr.l    -(a7)                              
  03cfe  3f3c0001              move.w   #1,-(a7)                           
  03d02  486efbb4              pea      -$44c(a6)                          
  03d06  42a7                  clr.l    -(a7)                              
  03d08  486efbcc              pea      -$434(a6)                          
  03d0c  3f3c0002              move.w   #2,-(a7)                           
  03d10  a9ea                  _Pack3                                      ; $a9ea
  03d12  4a2efbcc              tst.b    -$434(a6)                          
  03d16  6716                  beq.s    L3d2e                              
  03d18  4267                  clr.w    -(a7)                              
  03d1a  3f2efbd2              move.w   -$42e(a6),-(a7)                    
  03d1e  42a7                  clr.l    -(a7)                              
  03d20  486efbd6              pea      -$42a(a6)                          
  03d24  4227                  clr.b    -(a7)                              
  03d26  a81a                  _HOpenResFile                               ; $a81a
  03d28  33dfffffa7a6          move.w   (a7)+,g_585a                       
L3d2e:
  03d2e  4a2efbcc              tst.b    -$434(a6)                          
  03d32  6708                  beq.s    L3d3c                              
  03d34  4a79ffffa7a6          tst.w    g_585a                             
  03d3a  6c2c                  bge.s    L3d68                              
L3d3c:
  03d3c  2f0c                  move.l   a4,-(a7)                           
  03d3e  a983                  _DisposeDialog                              ; $a983
  03d40  2f3c0000144e          move.l   STR_144e,-(a7)                     ; "Exiting game now, data problem"
  03d46  2f3c0000146e          move.l   STR_146e,-(a7)                     ; "?"
  03d4c  2f3c00001470          move.l   STR_1470,-(a7)                     ; "?"
  03d52  2f3c00001472          move.l   STR_1472,-(a7)                     ; "?"
  03d58  a98b                  _ParamText                                  ; $a98b
  03d5a  4267                  clr.w    -(a7)                              
  03d5c  3f3c0fab              move.w   #$fab,-(a7)                        
  03d60  42a7                  clr.l    -(a7)                              
  03d62  a986                  _StopAlert                                  ; $a986
  03d64  a9f4                  _ExitToShell                                ; $a9f4
  03d66  548f                  addq.l   #2,a7                              
L3d68:
  03d68  2f0c                  move.l   a4,-(a7)                           
  03d6a  a983                  _DisposeDialog                              ; $a983
  03d6c  a852                  _HideCursor                                 ; $a852
L3d6e:
  03d6e  4a79ffffa79c          tst.w    g_5864                             
  03d74  6c30                  bge.s    L3da6                              
  03d76  4267                  clr.w    -(a7)                              
  03d78  486eff0e              pea      -$f2(a6)                           
  03d7c  a997                  _OpenResFile                                ; $a997
  03d7e  33dfffffa79c          move.w   (a7)+,g_5864                       
  03d84  4a79ffffa79c          tst.w    g_5864                             
  03d8a  6c1a                  bge.s    L3da6                              
  03d8c  4267                  clr.w    -(a7)                              
  03d8e  a9af                  _ResError                                   ; $a9af
  03d90  3e1f                  move.w   (a7)+,d7                           
  03d92  4267                  clr.w    -(a7)                              
  03d94  3f3c0fac              move.w   #$fac,-(a7)                        
  03d98  42a7                  clr.l    -(a7)                              
  03d9a  a986                  _StopAlert                                  ; $a986
  03d9c  3e1f                  move.w   (a7)+,d7                           
  03d9e  204b                  movea.l  a3,a0                              
  03da0  a01f                  _DisposePtr                                 ; $a01f
  03da2  7000                  moveq    #0,d0                              
  03da4  6006                  bra.s    L3dac                              
L3da6:
  03da6  4eba00dc              jsr      f7_3e84                            
  03daa  7001                  moveq    #1,d0                              
L3dac:
  03dac  4cdf1ce0              movem.l  (a7)+,d5/d6/d7/a2/a3/a4            
  03db0  4e5e                  unlk     a6                                 
  03db2  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_3db4
;----------------------------------------------------------------------
f7_3db4:
  03db4  4e56fffa              link     a6,#-6                             
  03db8  2f07                  move.l   d7,-(a7)                           
  03dba  7e00                  moveq    #0,d7                              
  03dbc  42b9ffffb380          clr.l    g_4c80                             
  03dc2  42b9ffffb386          clr.l    g_4c7a                             
  03dc8  33ee0014ffffb38a      move.w   $14(a6),g_4c76                     
  03dd0  23fcffffb3eeffffb38c  move.l   #$ffffb3ee,g_4c74                  
  03dda  701e                  moveq    #30,d0                             
  03ddc  23c0ffffb390          move.l   d0,g_4c70                          
  03de2  7009                  moveq    #9,d0                              
  03de4  23c0ffffb398          move.l   d0,g_4c68                          
  03dea  23fcffffbc22ffffb39c  move.l   #$ffffbc22,g_4c64                  
  03df4  23fcffffbc8effffb3a0  move.l   #$ffffbc8e,g_4c60                  
  03dfe  70ff                  moveq    #-1,d0                             
  03e00  23c0ffffb3a4          move.l   d0,g_4c5c                          
  03e06  42b9ffffb3a8          clr.l    g_4c58                             
  03e0c  23fcffffbcfaffffb3b8  move.l   #$ffffbcfa,g_4c48                  
  03e16  23fc00004000ffffb3bc  move.l   #$4000,g_4c44                      
  03e20  23ee0008ffffbc34      move.l   $8(a6),g_43cc                      
  03e28  4239ffffbc40          clr.b    g_43c0                             
  03e2e  23ee000cffffbc42      move.l   $c(a6),g_43be                      
  03e36  23ee0010ffffbc46      move.l   $10(a6),g_43ba                     
  03e3e  42b9ffffbca0          clr.l    g_4360                             
  03e44  13fc0010ffffbcac      move.b   #$10,g_4354                        
  03e4c  23ee000cffffbcae      move.l   $c(a6),g_4352                      
  03e54  23ee0010ffffbcb2      move.l   $10(a6),g_434e                     
  03e5c  4239ffffb3f4          clr.b    g_4c0c                             
L3e62:
  03e62  207cffffb374          movea.l  #$ffffb374,a0                      
  03e68  7018                  moveq    #24,d0                             
  03e6a  a260                  _HFSDispatch.clear                          ; $a260
  03e6c  33c0ffffb372          move.w   d0,g_4c8e                          
  03e72  0c40ffd9              cmpi.w   #$ffd9,d0                          
  03e76  57c7                  seq      d7                                 
  03e78  4407                  neg.b    d7                                 
  03e7a  4a07                  tst.b    d7                                 
  03e7c  67e4                  beq.s    L3e62                              
  03e7e  2e1f                  move.l   (a7)+,d7                           
  03e80  4e5e                  unlk     a6                                 
  03e82  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_3e84
;----------------------------------------------------------------------
f7_3e84:
  03e84  4e56fc80              link     a6,#-896                           
  03e88  48e70318              movem.l  d6/d7/a3/a4,-(a7)                  
  03e8c  41eefdf4              lea      -$20c(a6),a0                       
  03e90  43f9fffffdfa          lea      g_0206,a1                          
  03e96  703f                  moveq    #63,d0                             
L3e98:
  03e98  20d9                  move.l   (a1)+,(a0)+                        
  03e9a  51c8fffc              dbf      d0,L3e98                           
  03e9e  7c01                  moveq    #1,d6                              
  03ea0  2d79ffffabf6fd3e      move.l   g_540a,-$2c2(a6)                   
  03ea8  2d79ffffabfafd42      move.l   g_5406,-$2be(a6)                   
  03eb0  2d7c72737263fd2e      move.l   #$72737263,-$2d2(a6)               
  03eb8  486efd2a              pea      -$2d6(a6)                          
  03ebc  302efd44              move.w   -$2bc(a6),d0                       
  03ec0  906efd42              sub.w    -$2be(a6),d0                       
  03ec4  48c0                  ext.l    d0                                 
  03ec6  81fc0002              divs.w   #2,d0                              
  03eca  3f00                  move.w   d0,-(a7)                           
  03ecc  3f3c004b              move.w   #$4b,-(a7)                         
  03ed0  a880                  _SetPt                                      ; $a880
  03ed2  426efd90              clr.w    -$270(a6)                          
  03ed6  3079ffffa7a4          movea.w  g_585c,a0                          
  03edc  2d48fd92              move.l   a0,-$26e(a6)                       
  03ee0  41eefdf4              lea      -$20c(a6),a0                       
  03ee4  43eefd96              lea      -$26a(a6),a1                       
  03ee8  7000                  moveq    #0,d0                              
  03eea  102efdf4              move.b   -$20c(a6),d0                       
  03eee  5280                  addq.l   #1,d0                              
  03ef0  a02e                  _BlockMove                                  ; $a02e
  03ef2  4267                  clr.w    -(a7)                              
  03ef4  2f3c4d535744          move.l   #$4d535744,-(a7)                   
  03efa  2f3c636b7478          move.l   #$636b7478,-(a7)                   
  03f00  486efdf4              pea      -$20c(a6)                          
  03f04  4ebafeae              jsr      f7_3db4                            
  03f08  4257                  clr.w    (a7)                               
  03f0a  2f3cffffb3ee          move.l   #$ffffb3ee,-(a7)                   
  03f10  4227                  clr.b    -(a7)                              
  03f12  2f3cffffa7a8          move.l   #$ffffa7a8,-(a7)                   
  03f18  7002                  moveq    #2,d0                              
  03f1a  aa52                  _trap    $aa52                              
  03f1c  3e1f                  move.w   (a7)+,d7                           
  03f1e  4a47                  tst.w    d7                                 
  03f20  4fef000c              lea      $c(a7),a7                          
  03f24  670000b0              beq.w    L3fd6                              
  03f28  2f3cffffabfe          move.l   #$ffffabfe,-(a7)                   
  03f2e  a851                  _SetCursor                                  ; $a851
  03f30  a853                  _ShowCursor                                 ; $a853
  03f32  2f3c00001474          move.l   STR_1474,-(a7)                     ; "I couldn't open the game story.  Please locate the file 'CK "
  03f38  2f3c000014b8          move.l   STR_14b8,-(a7)                     ; "?"
  03f3e  2f3c000014ba          move.l   STR_14ba,-(a7)                     ; "?"
  03f44  2f3c000014bc          move.l   STR_14bc,-(a7)                     ; "?"
  03f4a  a98b                  _ParamText                                  ; $a98b
  03f4c  42a7                  clr.l    -(a7)                              
  03f4e  3f3c0fae              move.w   #$fae,-(a7)                        
  03f52  486efc80              pea      -$380(a6)                          
  03f56  4878ffff              pea      ($ffff).w                          
  03f5a  a97c                  _GetNewDialog                               ; $a97c
  03f5c  265f                  movea.l  (a7)+,a3                           
  03f5e  2f0b                  move.l   a3,-(a7)                           
  03f60  a981                  _DrawDialog                                 ; $a981
  03f62  2f2efd2a              move.l   -$2d6(a6),-(a7)                    
  03f66  42a7                  clr.l    -(a7)                              
  03f68  42a7                  clr.l    -(a7)                              
  03f6a  3f3c0001              move.w   #1,-(a7)                           
  03f6e  486efd2e              pea      -$2d2(a6)                          
  03f72  42a7                  clr.l    -(a7)                              
  03f74  486efd46              pea      -$2ba(a6)                          
  03f78  3f3c0002              move.w   #2,-(a7)                           
  03f7c  a9ea                  _Pack3                                      ; $a9ea
  03f7e  4a2efd46              tst.b    -$2ba(a6)                          
  03f82  6718                  beq.s    L3f9c                              
  03f84  4267                  clr.w    -(a7)                              
  03f86  486efd50              pea      -$2b0(a6)                          
  03f8a  3f2efd4c              move.w   -$2b4(a6),-(a7)                    
  03f8e  2f3cffffa7a8          move.l   #$ffffa7a8,-(a7)                   
  03f94  4ead04ca              jsr      f4_13ae                            
  03f98  548f                  addq.l   #2,a7                              
  03f9a  602c                  bra.s    L3fc8                              
L3f9c:
  03f9c  2f0b                  move.l   a3,-(a7)                           
  03f9e  a983                  _DisposeDialog                              ; $a983
  03fa0  2f3c000014be          move.l   STR_14be,-(a7)                     ; "Exiting game now, data problem"
  03fa6  2f3c000014de          move.l   STR_14de,-(a7)                     ; "?"
  03fac  2f3c000014e0          move.l   STR_14e0,-(a7)                     ; "?"
  03fb2  2f3c000014e2          move.l   STR_14e2,-(a7)                     ; "?"
  03fb8  a98b                  _ParamText                                  ; $a98b
  03fba  4267                  clr.w    -(a7)                              
  03fbc  3f3c0fab              move.w   #$fab,-(a7)                        
  03fc0  42a7                  clr.l    -(a7)                              
  03fc2  a986                  _StopAlert                                  ; $a986
  03fc4  a9f4                  _ExitToShell                                ; $a9f4
  03fc6  548f                  addq.l   #2,a7                              
L3fc8:
  03fc8  200c                  move.l   a4,d0                              
  03fca  6704                  beq.s    L3fd0                              
  03fcc  204c                  movea.l  a4,a0                              
  03fce  a01f                  _DisposePtr                                 ; $a01f
L3fd0:
  03fd0  2f0b                  move.l   a3,-(a7)                           
  03fd2  a983                  _DisposeDialog                              ; $a983
  03fd4  a852                  _HideCursor                                 ; $a852
L3fd6:
  03fd6  4cdf18c0              movem.l  (a7)+,d6/d7/a3/a4                  
  03fda  4e5e                  unlk     a6                                 
  03fdc  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_3fde   [jump table #237]
;----------------------------------------------------------------------
f7_3fde:
  03fde  4e56fd2a              link     a6,#-726                           
  03fe2  48e70318              movem.l  d6/d7/a3/a4,-(a7)                  
  03fe6  286e0008              movea.l  $8(a6),a4                          
  03fea  41eefdf4              lea      -$20c(a6),a0                       
  03fee  43f9fffffefa          lea      g_0106,a1                          
  03ff4  703f                  moveq    #63,d0                             
L3ff6:
  03ff6  20d9                  move.l   (a1)+,(a0)+                        
  03ff8  51c8fffc              dbf      d0,L3ff6                           
  03ffc  7c01                  moveq    #1,d6                              
  03ffe  2f0c                  move.l   a4,-(a7)                           
  04000  2f3c00040004          move.l   #$40004,-(a7)                      
  04006  a8a9                  _InsetRect                                  ; $a8a9
  04008  5a6c0006              addq.w   #5,$6(a4)                          
  0400c  42a7                  clr.l    -(a7)                              
  0400e  2f0c                  move.l   a4,-(a7)                           
  04010  2f0c                  move.l   a4,-(a7)                           
  04012  a9d2                  _TENew                                      ; $a9d2
  04014  23dfffff979e          move.l   (a7)+,g_6862                       
  0401a  2079ffff979e          movea.l  g_6862,a0                          
  04020  2050                  movea.l  (a0),a0                            
  04022  216e000c0052          move.l   $c(a6),$52(a0)                     
  04028  2079ffff979e          movea.l  g_6862,a0                          
  0402e  2050                  movea.l  (a0),a0                            
  04030  317c0001004a          move.w   #1,$4a(a0)                         
  04036  2079ffff979e          movea.l  g_6862,a0                          
  0403c  2050                  movea.l  (a0),a0                            
  0403e  117c0011004c          move.b   #$11,$4c(a0)                       
  04044  2079ffff979e          movea.l  g_6862,a0                          
  0404a  2050                  movea.l  (a0),a0                            
  0404c  317c000c0050          move.w   #$c,$50(a0)                        
  04052  2079ffff979e          movea.l  g_6862,a0                          
  04058  2050                  movea.l  (a0),a0                            
  0405a  e3e80018              lsl.w    $18(a0)                            
  0405e  2079ffff979e          movea.l  g_6862,a0                          
  04064  2050                  movea.l  (a0),a0                            
  04066  4268003a              clr.w    $3a(a0)                            
  0406a  2079ffff979e          movea.l  g_6862,a0                          
  04070  2050                  movea.l  (a0),a0                            
  04072  33e80018fffffffe      move.w   $18(a0),g_0002                     
  0407a  2f39ffff979e          move.l   g_6862,-(a7)                       
  04080  3f39ffffa7a8          move.w   g_5858,-(a7)                       
  04086  4eba003c              jsr      f7_40c4                            
  0408a  3e00                  move.w   d0,d7                              
  0408c  4a47                  tst.w    d7                                 
  0408e  5c8f                  addq.l   #6,a7                              
  04090  6706                  beq.s    L4098                              
  04092  0c47ffd9              cmpi.w   #$ffd9,d7                          
  04096  6624                  bne.s    L40bc                              
L4098:
  04098  2079ffff979e          movea.l  g_6862,a0                          
  0409e  2050                  movea.l  (a0),a0                            
  040a0  2668003e              movea.l  $3e(a0),a3                         
  040a4  2f39ffff979e          move.l   g_6862,-(a7)                       
  040aa  a9d0                  _TECalText                                  ; $a9d0
  040ac  42a7                  clr.l    -(a7)                              
  040ae  a975                  _TickCount                                  ; $a975
  040b0  23dffffffffa          move.l   (a7)+,g_0006                       
  040b6  4279ffff836a          clr.w    g_7c96                             
L40bc:
  040bc  4cdf18c0              movem.l  (a7)+,d6/d7/a3/a4                  
  040c0  4e5e                  unlk     a6                                 
  040c2  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_40c4
;----------------------------------------------------------------------
f7_40c4:
  040c4  4e56fff6              link     a6,#-10                            
  040c8  48e70138              movem.l  d7/a2/a3/a4,-(a7)                  
  040cc  286e000a              movea.l  $a(a6),a4                          
  040d0  42a7                  clr.l    -(a7)                              
  040d2  2054                  movea.l  (a4),a0                            
  040d4  3068003c              movea.w  $3c(a0),a0                         
  040d8  2f08                  move.l   a0,-(a7)                           
  040da  2f0c                  move.l   a4,-(a7)                           
  040dc  a9d1                  _TESetSelect                                ; $a9d1
  040de  2f0c                  move.l   a4,-(a7)                           
  040e0  a9d7                  _TEDelete                                   ; $a9d7
  040e2  4267                  clr.w    -(a7)                              
  040e4  3f39ffffa7a8          move.w   g_5858,-(a7)                       
  040ea  3f3c0001              move.w   #1,-(a7)                           
  040ee  42a7                  clr.l    -(a7)                              
  040f0  4ead0502              jsr      f4_14d4                            
  040f4  4257                  clr.w    (a7)                               
  040f6  3f2e0008              move.w   $8(a6),-(a7)                       
  040fa  486efff8              pea      -$8(a6)                            
  040fe  4ead04fa              jsr      f4_14b2                            
  04102  202efff8              move.l   -$8(a6),d0                         
  04106  a11e                  _NewPtr                                     ; $a11e
  04108  2648                  movea.l  a0,a3                              
  0410a  200b                  move.l   a3,d0                              
  0410c  548f                  addq.l   #2,a7                              
  0410e  6616                  bne.s    L4126                              
  04110  4267                  clr.w    -(a7)                              
  04112  3eb80220              move.w   ($220).w,(a7)                      
  04116  3e1f                  move.w   (a7)+,d7                           
  04118  2f3c000014e4          move.l   STR_14e4,-(a7)                     ; "adding pointer in readfile(story)."
  0411e  3f07                  move.w   d7,-(a7)                           
  04120  4ebad7ca              jsr      f7_18ec                            
  04124  603a                  bra.s    L4160                              
L4126:
  04126  4267                  clr.w    -(a7)                              
  04128  3f2e0008              move.w   $8(a6),-(a7)                       
  0412c  486efff8              pea      -$8(a6)                            
  04130  2f0b                  move.l   a3,-(a7)                           
  04132  4ead04da              jsr      f4_1408                            
  04136  3e1f                  move.w   (a7)+,d7                           
  04138  4a47                  tst.w    d7                                 
  0413a  670e                  beq.s    L414a                              
  0413c  2f3c00001508          move.l   STR_1508,-(a7)                     ; "reading file in readfile(story)."
  04142  3f07                  move.w   d7,-(a7)                           
  04144  4ebad7a6              jsr      f7_18ec                            
  04148  6016                  bra.s    L4160                              
L414a:
  0414a  2f0b                  move.l   a3,-(a7)                           
  0414c  2f2efff8              move.l   -$8(a6),-(a7)                      
  04150  2f0c                  move.l   a4,-(a7)                           
  04152  a9de                  _TEInsert                                   ; $a9de
  04154  2054                  movea.l  (a4),a0                            
  04156  2468003e              movea.l  $3e(a0),a2                         
  0415a  204b                  movea.l  a3,a0                              
  0415c  a01f                  _DisposePtr                                 ; $a01f
  0415e  3007                  move.w   d7,d0                              
L4160:
  04160  4cee1c80ffe6          movem.l  -$1a(a6),d7/a2/a3/a4               
  04166  4e5e                  unlk     a6                                 
  04168  4e75                  rts                                         

;----------------------------------------------------------------------
; f7_416a   [jump table #238]
;----------------------------------------------------------------------
f7_416a:
  0416a  4e56fff8              link     a6,#-8                             
  0416e  2079ffff979e          movea.l  g_6862,a0                          
  04174  2050                  movea.l  (a0),a0                            
  04176  2d680008fff8          move.l   $8(a0),-$8(a6)                     
  0417c  2d68000cfffc          move.l   $c(a0),-$4(a6)                     
  04182  2f39ffff979e          move.l   g_6862,-(a7)                       
  04188  a9d0                  _TECalText                                  ; $a9d0
  0418a  4267                  clr.w    -(a7)                              
  0418c  3039fffffffe          move.w   g_0002,d0                          
  04192  4440                  neg.w    d0                                 
  04194  48c0                  ext.l    d0                                 
  04196  81ee0008              divs.w   $8(a6),d0                          
  0419a  3f00                  move.w   d0,-(a7)                           
  0419c  2f39ffff979e          move.l   g_6862,-(a7)                       
  041a2  a9dd                  _TEScroll                                   ; $a9dd
  041a4  2079ffff979e          movea.l  g_6862,a0                          
  041aa  2050                  movea.l  (a0),a0                            
  041ac  2f280052              move.l   $52(a0),-(a7)                      
  041b0  a922                  _BeginUpdate                                ; $a922
  041b2  486efff8              pea      -$8(a6)                            
  041b6  2f39ffff979e          move.l   g_6862,-(a7)                       
  041bc  a9d3                  _TEUpdate                                   ; $a9d3
  041be  2079ffff979e          movea.l  g_6862,a0                          
  041c4  2050                  movea.l  (a0),a0                            
  041c6  2f280052              move.l   $52(a0),-(a7)                      
  041ca  a923                  _EndUpdate                                  ; $a923
  041cc  5479ffff836a          addq.w   #2,g_7c96                          
  041d2  4e5e                  unlk     a6                                 
  041d4  4e75                  rts                                         
