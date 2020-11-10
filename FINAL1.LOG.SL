1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0                         Date 11/28/2019  Time 14:09:50   Page     1                
0Invocation parameters:                                                                                                              
  TEST,RENT,APOST,OBJECT,NODYNAM,LIB,SIZE(2097152)                                                                                   
0Options in effect:                                                                                                                  
  NOADATA                                                                                                                            
    ADV                                                                                                                              
    APOST                                                                                                                            
    ARITH(COMPAT)                                                                                                                    
  NOAWO                                                                                                                              
  NOBLOCK0                                                                                                                           
    BUFSIZE(4096)                                                                                                                    
  NOCICS                                                                                                                             
    CODEPAGE(1140)                                                                                                                   
  NOCOMPILE(S)                                                                                                                       
  NOCURRENCY                                                                                                                         
    DATA(31)                                                                                                                         
  NODATEPROC                                                                                                                         
    DBCS                                                                                                                             
  NODECK                                                                                                                             
  NODIAGTRUNC                                                                                                                        
  NODLL                                                                                                                              
  NODUMP                                                                                                                             
  NODYNAM                                                                                                                            
  NOEXIT                                                                                                                             
  NOEXPORTALL                                                                                                                        
  NOFASTSRT                                                                                                                          
    FLAG(I,I)                                                                                                                        
  NOFLAGMIG4                                                                                                                         
  NOFLAGSTD                                                                                                                          
    INTDATE(ANSI)                                                                                                                    
    LANGUAGE(EN)                                                                                                                     
    LIB                                                                                                                              
    LINECOUNT(60)                                                                                                                    
  NOLIST                                                                                                                             
  NOMAP                                                                                                                              
  NOMDECK                                                                                                                            
  NONAME                                                                                                                             
    NSYMBOL(NATIONAL)                                                                                                                
  NONUMBER                                                                                                                           
    NUMPROC(NOPFD)                                                                                                                   
    OBJECT                                                                                                                           
  NOOFFSET                                                                                                                           
  NOOPTIMIZE                                                                                                                         
    OUTDD(SYSOUT)                                                                                                                    
    PGMNAME(COMPAT)                                                                                                                  
    RENT                                                                                                                             
    RMODE(AUTO)                                                                                                                      
    SEQUENCE                                                                                                                         
    SIZE(2097152)                                                                                                                    
    SOURCE                                                                                                                           
    SPACE(1)                                                                                                                         
  NOSQL                                                                                                                              
    SQLCCSID                                                                                                                         
  NOSSRANGE                                                                                                                          
  NOTERM                                                                                                                             
    TEST(HOOK,NOSEPARATE,NOEJPD)                                                                                                     
  NOTHREAD                                                                                                                           
    TRUNC(STD)                                                                                                                       
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0                         Date 11/28/2019  Time 14:09:50   Page     2                
0 NOVBREF                                                                                                                            
  NOWORD                                                                                                                             
    XMLPARSE(XMLSS)                                                                                                                  
    XREF(FULL)                                                                                                                       
  NOZONECHECK                                                                                                                        
    YEARWINDOW(1900)                                                                                                                 
    ZWB                                                                                                                              
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page     3                
   LineID  PL SL  ----+-*A-1-B--+----2----+----3----+----4----+----5----+----6----+----7-|--+----8 Map and Cross Reference           
0/* SL                                                                                                                               
   000001               * Copy the KC02708.FINAL1.COBOL data set to your userid KC03XXX                                              
   000002               *                                                                                                            
   000003               * For each program in your solution:                                                                         
   000004               * - Copy the EMPTY.cbl member to an appropriate name                                                         
   000005               *      for your solution                                                                                     
   000006               * - Copy your COBOL source file on your PC                                                                   
   000007               * - Paste source into this file                                                                              
   000008               * - Save                                                                                                     
   000009               *                                                                                                            
   000010                                                                                                                            
   000011                identification division.                                                                                    
   000012                program-id. SL.                                                                                             
   000013                author. Jared Howie.                                                                                        
   000014                environment division.                                                                                       
   000015                configuration section.                                                                                      
   000016                input-output section.                                                                                       
   000017                file-control.                                                                                               
   000018                                                                                                                            
   000019                    select input-file ASSIGN TO SLDAT                                     27                                
   000020                        ORGANIZATION IS SEQUENTIAL.                                                                         
   000021                                                                                                                            
   000022                    select report-file ASSIGN TO SLREP                                    43                                
   000023                        ORGANIZATION IS SEQUENTIAL.                                                                         
   000024                                                                                                                            
   000025                data division.                                                                                              
   000026                file section.                                                                                               
   000027                fd input-file                                                                                               
   000028                    RECORDING MODE IS F                                                                                     
   000029                    data record is input-file                                             *                                 
   000030                    record contains 36 characters.                                                                          
   000031                                                                                                                            
   000032                01 input-line.                                                                                              
   000033                    05 il-trans-code     pic x.                                                                             
   000034                    05 il-trans-amt      pic 9(5)v99.                                                                       
   000035                    05 il-pay-type       pic xx.                                                                            
   000036                    05 il-store-num      pic 99.                                                                            
   000037                    05 il-inv-num-x1    pic x.                                                                              
   000038                    05 il-inv-num-x2    pic x.                                                                              
   000039                    05 il-inv-num-dash  pic x.                                                                              
   000040                    05 il-inv-num       pic 9(6).                                                                           
   000041                    05 il-sku-num       pic 9(15).                                                                          
   000042                                                                                                                            
   000043                fd report-file                                                                                              
   000044                    RECORDING MODE IS F                                                                                     
   000045                    data record is report-file                                            *                                 
   000046                    record contains 132 characters.                                                                         
   000047                01 report-line.                                                                                             
   000048                    05 rl-trans-code     pic x.                                                                             
   000049                    05 filler            pic x(5).                                                                          
   000050                    05 rl-trans-amt      pic zzzz9v99.                                                                      
   000051                    05 filler            pic x(5).                                                                          
   000052                    05 rl-pay-type       pic xx.                                                                            
   000053                    05 filler            pic x(5).                                                                          
   000054                    05 rl-store-num      pic 99.                                                                            
   000055                    05 filler            pic x(5).                                                                          
   000056                    05 rl-inv-num-x1     pic x.                                                                             
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page     4                
   LineID  PL SL  ----+-*A-1-B--+----2----+----3----+----4----+----5----+----6----+----7-|--+----8 Map and Cross Reference           
0  000057                    05 rl-inv-num-x2     pic x.                                                                             
   000058                    05 rl-inv-num-dash   pic x.                                                                             
   000059                    05 rl-inv-num        pic 9(6).                                                                          
   000060                    05 filler            pic x(5).                                                                          
   000061                    05 rl-sku-num        pic 9(15).                                                                         
   000062                    05 filler            pic x(5).                                                                          
   000063                                                                                                                            
   000064                working-storage section.                                                                                    
   000065                01 ws-report-heading.                                                                                       
   000066                    05 filler                   pic x(1)                                                                    
   000067                        value spaces.                                                     IMP                               
   000068                    05 filler                   pic x(8)                                                                    
   000069                        value 'Group 15'.                                                                                   
   000070                    05 filler                   pic x(6)                                                                    
   000071                        value spaces.                                                     IMP                               
   000072                    05 filler                   pic x(13)                                                                   
   000073                        value 'Final Project'.                                                                              
   000074                    05 filler                   pic x(5)                                                                    
   000075                        value spaces.                                                     IMP                               
   000076                    05 filler                   pic x(10)                                                                   
   000077                        value 'S&L Report'.                                                                                 
   000078                                                                                                                            
   000079                01 ws-page-heading1.                                                                                        
   000080                    05 filler                   pic x(5)                                                                    
   000081                        value 'Trans'.                                                                                      
   000082                    05 filler                   pic x(2)                                                                    
   000083                        value spaces.                                                     IMP                               
   000084                    05 filler                   pic x(5)                                                                    
   000085                        value 'Trans'.                                                                                      
   000086                    05 filler                   pic x(3)                                                                    
   000087                        value spaces.                                                     IMP                               
   000088                    05 filler                   pic x(7)                                                                    
   000089                        value 'Payment'.                                                                                    
   000090                    05 filler                   pic x(2)                                                                    
   000091                        value spaces.                                                     IMP                               
   000092                    05 filler                   pic x(5)                                                                    
   000093                        value 'Store'.                                                                                      
   000094                    05 filler                   pic x(4)                                                                    
   000095                        value spaces.                                                     IMP                               
   000096                    05 filler                   pic x(7)                                                                    
   000097                        value 'Invoice'.                                                                                    
   000098                    05 filler                   pic x(10)                                                                   
   000099                        value spaces.                                                     IMP                               
   000100                    05 filler                   pic x(3)                                                                    
   000101                        value 'SKU'.                                                                                        
   000102                                                                                                                            
   000103                01 ws-page-heading2.                                                                                        
   000104                    05 filler                   pic x(4)                                                                    
   000105                        value 'Code'.                                                                                       
   000106                    05 filler                   pic x(3)                                                                    
   000107                        value spaces.                                                     IMP                               
   000108                    05 filler                   pic x(6)                                                                    
   000109                        value 'Amount'.                                                                                     
   000110                    05 filler                   pic x(3)                                                                    
   000111                        value spaces.                                                     IMP                               
   000112                    05 filler                   pic x(4)                                                                    
   000113                        value 'Type'.                                                                                       
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page     5                
   LineID  PL SL  ----+-*A-1-B--+----2----+----3----+----4----+----5----+----6----+----7-|--+----8 Map and Cross Reference           
0  000114                    05 filler                   pic x(4)                                                                    
   000115                        value spaces.                                                     IMP                               
   000116                    05 filler                   pic x(6)                                                                    
   000117                        value 'Number'.                                                                                     
   000118                    05 filler                   pic x(3)                                                                    
   000119                        value spaces.                                                     IMP                               
   000120                    05 filler                   pic x(6)                                                                    
   000121                        value 'Number'.                                                                                     
   000122                    05 filler                   pic x(11)                                                                   
   000123                        value spaces.                                                     IMP                               
   000124                    05 filler                   pic x(4)                                                                    
   000125                        value 'Code'.                                                                                       
   000126                                                                                                                            
   000127                01 ws-total-line1.                                                                                          
   000128                    05 filler               pic x(15)                                                                       
   000129                        value 'Total Records: '.                                                                            
   000130                    05 ws-tl1-total-records pic 99 value 0.                                                                 
   000131                    05 filler               pic x                                                                           
   000132                        value spaces.                                                     IMP                               
   000133                    05 filler               pic x(11)                                                                       
   000134                        value 'S Records: '.                                                                                
   000135                    05 ws-tl1-s-records     pic 99 value 0.                                                                 
   000136                    05 filler               pic x                                                                           
   000137                        value spaces.                                                     IMP                               
   000138                    05 filler               pic x(11)                                                                       
   000139                        value 'L Records: '.                                                                                
   000140                    05 ws-tl1-l-records     pic 99 value 0.                                                                 
   000141                                                                                                                            
   000142                01 ws-total-line2.                                                                                          
   000143                    05 filler               pic x(14)                                                                       
   000144                        value 'Total Amount: '.                                                                             
   000145                    05 ws-tl2-total-amount  pic $$$$,$$9.99.                                                                
   000146                    05 filler               pic x                                                                           
   000147                        value spaces.                                                     IMP                               
   000148                    05 filler               pic x(9)                                                                        
   000149                        value 'S Total: '.                                                                                  
   000150                    05 ws-tl2-s-total       pic $$$$,$$9.99.                                                                
   000151                    05 filler               pic x                                                                           
   000152                        value spaces.                                                     IMP                               
   000153                    05 filler               pic x(9)                                                                        
   000154                        value 'L Total: '.                                                                                  
   000155                    05 ws-tl2-l-total       pic $$,$$9.99.                                                                  
   000156                    05 filler               pic x(8)                                                                        
   000157                        value spaces.                                                     IMP                               
   000158                                                                                                                            
   000159                01 ws-total-line3.                                                                                          
   000160                    05 filler               pic x(6)                                                                        
   000161                        value 'Cash: '.                                                                                     
   000162                    05 ws-tl3-ca-total      pic 99 value 0.                                                                 
   000163                    05 filler               pic x                                                                           
   000164                        value spaces.                                                     IMP                               
   000165                    05 filler               pic x(8)                                                                        
   000166                        value 'Credit: '.                                                                                   
   000167                    05 ws-tl3-cr-total      pic 99 value 0.                                                                 
   000168                    05 filler               pic x                                                                           
   000169                        value spaces.                                                     IMP                               
   000170                    05 filler               pic x(7)                                                                        
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page     6                
   LineID  PL SL  ----+-*A-1-B--+----2----+----3----+----4----+----5----+----6----+----7-|--+----8 Map and Cross Reference           
0  000171                        value 'Debit: '.                                                                                    
   000172                    05 ws-tl3-db-total      pic 99 value 0.                                                                 
   000173                                                                                                                            
   000174                01 ws-total-line4.                                                                                          
   000175                    05 filler               pic x(6)                                                                        
   000176                        value 'Cash: '.                                                                                     
   000177                    05 ws-tl4-ca-pcnt       pic 99.99.                                                                      
   000178                    05 filler               pic x                                                                           
   000179                        value "%".                                                                                          
   000180                    05 filler               pic x                                                                           
   000181                        value spaces.                                                     IMP                               
   000182                    05 filler               pic x(8)                                                                        
   000183                        value 'Credit: '.                                                                                   
   000184                    05 ws-tl4-cr-pcnt       pic 99.99.                                                                      
   000185                    05 filler               pic x                                                                           
   000186                        value "%".                                                                                          
   000187                    05 filler               pic x                                                                           
   000188                        value spaces.                                                     IMP                               
   000189                    05 filler               pic x(7)                                                                        
   000190                        value 'Debit: '.                                                                                    
   000191                    05 ws-tl4-db-pcnt       pic 99.99.                                                                      
   000192                    05 filler               pic x                                                                           
   000193                        value "%".                                                                                          
   000194                                                                                                                            
   000195                01 ws-total-line5.                                                                                          
   000196                    05 filler               pic x(11)                                                                       
   000197                        value 'Total Tax: '.                                                                                
   000198                    05 ws-tl5-total-tax     pic $$$$,$$9.99.                                                                
   000199                    05 filler               pic x                                                                           
   000200                        value spaces.                                                     IMP                               
   000201                                                                                                                            
   000202                01 ws-total-line6.                                                                                          
   000203                    05 filler               pic x(31)                                                                       
   000204                        value 'Store With Highest Trans Amnt: '.                                                            
   000205                    05 ws-tl6-highest-trans-amt                                                                             
   000206                                            pic 99.                                                                         
   000207                    05 filler               pic x                                                                           
   000208                    value spaces.                                                         IMP                               
   000209                    05 filler               pic x(30)                                                                       
   000210                        value 'Store With Lowest Trans Amnt: '.                                                             
   000211                    05 ws-tl6-lowest-trans-amt                                                                              
   000212                                            pic 99.                                                                         
   000213                77 ws-eof-flag              pic x    value "N".                                                             
   000214                                                                                                                            
   000215                77 ws-lines-per-page        pic 99                                                                          
   000216                    value 20.                                                                                               
   000217                77 ws-page-count            pic 99                                                                          
   000218                    value 0.                                                                                                
   000219                77 ws-line-count            pic 99                                                                          
   000220                    value 0.                                                                                                
   000221                                                                                                                            
   000222                77 ws-tl2-total-amount-unedited                                                                             
   000223                                            pic 9(7)v99.                                                                    
   000224                                                                                                                            
   000225                77 ws-tl2-s-total-unedited  pic 9(7)v99.                                                                    
   000226                                                                                                                            
   000227                77 ws-tl2-l-total-unedited  pic 9(7)v99.                                                                    
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page     7                
   LineID  PL SL  ----+-*A-1-B--+----2----+----3----+----4----+----5----+----6----+----7-|--+----8 Map and Cross Reference           
0  000228                                                                                                                            
   000229                77 ws-tl5-total-tax-unedited pic 9(7)v99.                                                                   
   000230                                                                                                                            
   000231                01 store-totals1.                                                                                           
   000232                    05 store-totals         pic 9(7)v99                                                                     
   000233                    occurs 6 times.                                                                                         
   000234                                                                                                                            
   000235                77 ws-highest                pic 9(7)v99.                                                                   
   000236                77 ws-lowest                 pic 9(7)v99.                                                                   
   000237                                                                                                                            
   000238                77 ws-highest-store-num      pic 99.                                                                        
   000239                77 ws-lowest-store-num       pic 99.                                                                        
   000240                77 ws-counter                pic 9 value 0.                                                                 
   000241                77 ws-calc-temp                 pic 9(5)v99.                                                                
   000242                procedure division.                                                                                         
   000243                                                                                                                            
   000244                000-main.                                                                                                   
   000245                                                                                                                            
   000246                    open input  input-file,                                               27                                
   000247                         output report-file.                                              43                                
   000248                                                                                                                            
   000249                    write report-line from ws-report-heading.                             47 65                             
   000250                                                                                                                            
   000251                    read input-file                                                       27                                
   000252      1                 at end move "Y" to ws-eof-flag.                                   213                               
   000253                                                                                                                            
   000254                    perform 100-process-pages                                             264                               
   000255                        varying ws-page-count from 1 by 1                                 217                               
   000256                        until ws-eof-flag = "Y".                                          213                               
   000257                                                                                                                            
   000258                    perform 400-print-totals.                                             329                               
   000259                                                                                                                            
   000260                    close input-file                                                      27                                
   000261                          report-file.                                                    43                                
   000262                                                                                                                            
   000263                    goback.                                                                                                 
   000264                100-process-pages.                                                                                          
   000265                                                                                                                            
   000266                    perform 200-print-headings.                                           273                               
   000267                    move spaces to report-line.                                           IMP 47                            
   000268                    perform 300-process-records                                           277                               
   000269                        varying ws-line-count from 1 by 1                                 219                               
   000270                        until ws-eof-flag = "Y" or ws-line-count >                        213 219                           
   000271                        ws-lines-per-page.                                                215                               
   000272                                                                                                                            
   000273                200-print-headings.                                                                                         
   000274                    write report-line from ws-page-heading1.                              47 79                             
   000275                    write report-line from ws-page-heading2.                              47 103                            
   000276                                                                                                                            
   000277                300-process-records.                                                                                        
   000278                    move il-trans-code to rl-trans-code.                                  33 48                             
   000279                    move il-trans-amt to rl-trans-amt.                                    34 50                             
   000280                    move il-pay-type to rl-pay-type.                                      35 52                             
   000281                                                                                                                            
   000282                    add 1 to ws-tl1-total-records.                                        130                               
   000283                    add il-trans-amt to ws-tl2-total-amount-unedited.                     34 222                            
   000284                    if(rl-trans-code is equal to "S")                                     48                                
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page     8                
   LineID  PL SL  ----+-*A-1-B--+----2----+----3----+----4----+----5----+----6----+----7-|--+----8 Map and Cross Reference           
0  000285      1                 add 1 to ws-tl1-s-records                                         135                               
   000286      1                 add il-trans-amt to ws-tl2-s-total-unedited                       34 225                            
   000287      1             else if(rl-trans-code is equal to "L")                                48                                
   000288      2                 add 1 to ws-tl1-l-records                                         140                               
   000289      2                 add il-trans-amt to ws-tl2-l-total-unedited                       34 227                            
   000290      1             end-if.                                                                                                 
   000291                                                                                                                            
   000292                    if(rl-pay-type is equal to "CA")                                      52                                
   000293      1                 add 1 to ws-tl3-ca-total                                          162                               
   000294      1             else if(rl-pay-type is equal to "CR")                                 52                                
   000295      2                 add 1 to ws-tl3-cr-total                                          167                               
   000296      2             else if(rl-pay-type is equal to "DB")                                 52                                
   000297      3                 add 1 to ws-tl3-db-total                                          172                               
   000298      2             end-if.                                                                                                 
   000299                                                                                                                            
   000300                                                                                                                            
   000301                    if(il-store-num = 01)then                                             36                                
   000302      1                 add il-trans-amt to store-totals(1)                               34 232                            
   000303      1             else if(il-store-num = 02)then                                        36                                
   000304      2                 add il-trans-amt to store-totals(2)                               34 232                            
   000305      2             else if(il-store-num = 03)then                                        36                                
   000306      3                 add il-trans-amt to store-totals(3)                               34 232                            
   000307      3             else if(il-store-num = 04)then                                        36                                
   000308      4                 add il-trans-amt to store-totals(4)                               34 232                            
   000309      4             else if(il-store-num = 05)then                                        36                                
   000310      5                 add il-trans-amt to store-totals(5)                               34 232                            
   000311      5             else if(il-store-num = 12)then                                        36                                
   000312      6                 add il-trans-amt to store-totals(6)                               34 232                            
   000313      5             end-if.                                                                                                 
   000314                    move ws-tl5-total-tax-unedited to ws-calc-temp                        229 241                           
   000315                    compute ws-tl5-total-tax-unedited = ws-calc-temp                      229 241                           
   000316                         + il-trans-amt * 0.13.                                           34                                
   000317                                                                                                                            
   000318                    move il-store-num to rl-store-num.                                    36 54                             
   000319                    move il-inv-num-x1 to rl-inv-num-x1                                   37 56                             
   000320                    move il-inv-num-x2 to rl-inv-num-x2.                                  38 57                             
   000321                    move "-" to rl-inv-num-dash.                                          58                                
   000322                    move il-inv-num to rl-inv-num.                                        40 59                             
   000323                    move il-sku-num to rl-sku-num.                                        41 61                             
   000324                                                                                                                            
   000325                    write report-line.                                                    47                                
   000326                    move spaces to report-line.                                           IMP 47                            
   000327                    read input-file                                                       27                                
   000328      1             at end move "Y" to ws-eof-flag.                                       213                               
   000329                400-print-totals.                                                                                           
   000330                    compute ws-tl4-ca-pcnt rounded = (ws-tl3-ca-total /                   177 162                           
   000331                    ws-tl1-total-records) * 100.                                          130                               
   000332                                                                                                                            
   000333                    compute ws-tl4-cr-pcnt rounded = (ws-tl3-cr-total /                   184 167                           
   000334                    ws-tl1-total-records) * 100.                                          130                               
   000335                                                                                                                            
   000336                    compute ws-tl4-db-pcnt rounded = (ws-tl3-db-total /                   191 172                           
   000337                    ws-tl1-total-records) * 100.                                          130                               
   000338                                                                                                                            
   000339                    move store-totals(1) to ws-highest.                                   232 235                           
   000340                    move store-totals(1) to ws-lowest.                                    232 236                           
   000341                    perform varying ws-counter from 2 by 1                                240                               
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page     9                
   LineID  PL SL  ----+-*A-1-B--+----2----+----3----+----4----+----5----+----6----+----7-|--+----8 Map and Cross Reference           
0  000342                      until ws-counter > 6                                                240                               
   000343      1               if(store-totals(ws-counter) > ws-highest)then                       232 240 235                       
   000344      2                   move store-totals(ws-counter) to ws-highest                     232 240 235                       
   000345                                                                                                                            
   000346      2                   if(ws-counter = 6)then                                          240                               
   000347      3                       move 12 to ws-highest-store-num                             238                               
   000348      2                   else                                                                                              
   000349      3                       move ws-counter to ws-highest-store-num                     240 238                           
   000350      2                   end-if                                                                                            
   000351      1               else                                                                                                  
   000352      2                  if (store-totals(ws-counter) < ws-lowest)                        232 240 236                       
   000353      3                      move store-totals(ws-counter) to ws-lowest                   232 240 236                       
   000354      3                      if(ws-counter = 6)then                                       240                               
   000355      4                          move 12 to ws-lowest-store-num                           239                               
   000356      3                      else                                                                                           
   000357      4                          move ws-counter to ws-lowest-store-num                   240 239                           
   000358      3                      end-if                                                                                         
   000359      2                  end-if                                                                                             
   000360      1               end-if                                                                                                
   000361                                                                                                                            
   000362                                                                                                                            
   000363                                                                                                                            
   000364                    end-perform.                                                                                            
   000365               *    divide ws-tl1-total-records by ws-tl3-ca-total giving                                                   
   000366               *    ws-tl4-ca-pcnt rounded.                                                                                 
   000367               *    divide ws-tl1-total-records by ws-tl3-cr-total giving                                                   
   000368               *    ws-tl4-cr-pcnt rounded.                                                                                 
   000369               *    divide ws-tl1-total-records by ws-tl3-db-total giving                                                   
   000370               *    ws-tl4-db-pcnt rounded.                                                                                 
   000371                                                                                                                            
   000372                    move ws-tl2-total-amount-unedited to                                  222                               
   000373                    ws-tl2-total-amount.                                                  145                               
   000374                    move ws-tl2-s-total-unedited to ws-tl2-s-total.                       225 150                           
   000375                    move ws-tl2-l-total-unedited to ws-tl2-l-total.                       227 155                           
   000376                    move ws-tl5-total-tax-unedited to ws-tl5-total-tax.                   229 198                           
   000377                    move ws-highest-store-num to ws-tl6-highest-trans-amt.                238 205                           
   000378                    move ws-lowest-store-num to ws-tl6-lowest-trans-amt.                  239 211                           
   000379                                                                                                                            
   000380                    write report-line from ws-total-line1.                                47 127                            
   000381                    write report-line from ws-total-line2.                                47 142                            
   000382                                                                                                                            
   000383                    write report-line from ws-total-line3.                                47 159                            
   000384                    write report-line from ws-total-line4.                                47 174                            
   000385                    write report-line from ws-total-line5.                                47 195                            
   000386                    write report-line from ws-total-line6.                                47 202                            
   000387                end program SL.                                                           12                                
 */ SL                                                                                                                               
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page    10                
0An "M" preceding a data-name reference indicates that the data-name is modified by this reference.                                  
                                                                                                                                     
  Defined   Cross-reference of data names   References                                                                               
                                                                                                                                     
       40   IL-INV-NUM . . . . . . . . . .  322                                                                                      
       39   IL-INV-NUM-DASH                                                                                                          
       37   IL-INV-NUM-X1. . . . . . . . .  319                                                                                      
       38   IL-INV-NUM-X2. . . . . . . . .  320                                                                                      
       35   IL-PAY-TYPE. . . . . . . . . .  280                                                                                      
       41   IL-SKU-NUM . . . . . . . . . .  323                                                                                      
       36   IL-STORE-NUM . . . . . . . . .  301 303 305 307 309 311 318                                                              
       34   IL-TRANS-AMT . . . . . . . . .  279 283 286 289 302 304 306 308 310 312 316                                              
       33   IL-TRANS-CODE. . . . . . . . .  278                                                                                      
       27   INPUT-FILE . . . . . . . . . .  19 246 251 260 327                                                                       
       32   INPUT-LINE                                                                                                               
       43   REPORT-FILE. . . . . . . . . .  22 247 261                                                                               
       47   REPORT-LINE. . . . . . . . . .  M249 M267 M274 M275 325 M326 M380 M381 M383 M384 M385 M386                               
       59   RL-INV-NUM . . . . . . . . . .  M322                                                                                     
       58   RL-INV-NUM-DASH. . . . . . . .  M321                                                                                     
       56   RL-INV-NUM-X1. . . . . . . . .  M319                                                                                     
       57   RL-INV-NUM-X2. . . . . . . . .  M320                                                                                     
       52   RL-PAY-TYPE. . . . . . . . . .  M280 292 294 296                                                                         
       61   RL-SKU-NUM . . . . . . . . . .  M323                                                                                     
       54   RL-STORE-NUM . . . . . . . . .  M318                                                                                     
       50   RL-TRANS-AMT . . . . . . . . .  M279                                                                                     
       48   RL-TRANS-CODE. . . . . . . . .  M278 284 287                                                                             
      232   STORE-TOTALS . . . . . . . . .  M302 M304 M306 M308 M310 M312 339 340 343 344 352 353                                    
      231   STORE-TOTALS1                                                                                                            
      241   WS-CALC-TEMP . . . . . . . . .  M314 315                                                                                 
      240   WS-COUNTER . . . . . . . . . .  M341 342 343 344 346 349 352 353 354 357                                                 
      213   WS-EOF-FLAG. . . . . . . . . .  M252 256 270 M328                                                                        
      235   WS-HIGHEST . . . . . . . . . .  M339 343 M344                                                                            
      238   WS-HIGHEST-STORE-NUM . . . . .  M347 M349 377                                                                            
      219   WS-LINE-COUNT. . . . . . . . .  M269 270                                                                                 
      215   WS-LINES-PER-PAGE. . . . . . .  271                                                                                      
      236   WS-LOWEST. . . . . . . . . . .  M340 352 M353                                                                            
      239   WS-LOWEST-STORE-NUM. . . . . .  M355 M357 378                                                                            
      217   WS-PAGE-COUNT. . . . . . . . .  M255                                                                                     
       79   WS-PAGE-HEADING1 . . . . . . .  274                                                                                      
      103   WS-PAGE-HEADING2 . . . . . . .  275                                                                                      
       65   WS-REPORT-HEADING. . . . . . .  249                                                                                      
      140   WS-TL1-L-RECORDS . . . . . . .  M288                                                                                     
      135   WS-TL1-S-RECORDS . . . . . . .  M285                                                                                     
      130   WS-TL1-TOTAL-RECORDS . . . . .  M282 331 334 337                                                                         
      155   WS-TL2-L-TOTAL . . . . . . . .  M375                                                                                     
      227   WS-TL2-L-TOTAL-UNEDITED. . . .  M289 375                                                                                 
      150   WS-TL2-S-TOTAL . . . . . . . .  M374                                                                                     
      225   WS-TL2-S-TOTAL-UNEDITED. . . .  M286 374                                                                                 
      145   WS-TL2-TOTAL-AMOUNT. . . . . .  M373                                                                                     
      222   WS-TL2-TOTAL-AMOUNT-UNEDITED .  M283 372                                                                                 
      162   WS-TL3-CA-TOTAL. . . . . . . .  M293 330                                                                                 
      167   WS-TL3-CR-TOTAL. . . . . . . .  M295 333                                                                                 
      172   WS-TL3-DB-TOTAL. . . . . . . .  M297 336                                                                                 
      177   WS-TL4-CA-PCNT . . . . . . . .  M330                                                                                     
      184   WS-TL4-CR-PCNT . . . . . . . .  M333                                                                                     
      191   WS-TL4-DB-PCNT . . . . . . . .  M336                                                                                     
      198   WS-TL5-TOTAL-TAX . . . . . . .  M376                                                                                     
      229   WS-TL5-TOTAL-TAX-UNEDITED. . .  314 M315 376                                                                             
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page    11                
0 Defined   Cross-reference of data names   References                                                                               
                                                                                                                                     
0     205   WS-TL6-HIGHEST-TRANS-AMT . . .  M377                                                                                     
      211   WS-TL6-LOWEST-TRANS-AMT. . . .  M378                                                                                     
      127   WS-TOTAL-LINE1 . . . . . . . .  380                                                                                      
      142   WS-TOTAL-LINE2 . . . . . . . .  381                                                                                      
      159   WS-TOTAL-LINE3 . . . . . . . .  383                                                                                      
      174   WS-TOTAL-LINE4 . . . . . . . .  384                                                                                      
      195   WS-TOTAL-LINE5 . . . . . . . .  385                                                                                      
      202   WS-TOTAL-LINE6 . . . . . . . .  386                                                                                      
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page    12                
0Context usage is indicated by the letter preceding a procedure-name reference.                                                      
 These letters and their meanings are:                                                                                               
     A = ALTER (procedure-name)                                                                                                      
     D = GO TO (procedure-name) DEPENDING ON                                                                                         
     E = End of range of (PERFORM) through (procedure-name)                                                                          
     G = GO TO (procedure-name)                                                                                                      
     P = PERFORM (procedure-name)                                                                                                    
     T = (ALTER) TO PROCEED TO (procedure-name)                                                                                      
     U = USE FOR DEBUGGING (procedure-name)                                                                                          
                                                                                                                                     
  Defined   Cross-reference of procedures   References                                                                               
                                                                                                                                     
      244   000-MAIN                                                                                                                 
      264   100-PROCESS-PAGES. . . . . . .  P254                                                                                     
      273   200-PRINT-HEADINGS . . . . . .  P266                                                                                     
      277   300-PROCESS-RECORDS. . . . . .  P268                                                                                     
      329   400-PRINT-TOTALS . . . . . . .  P258                                                                                     
1PP 5655-S71 IBM Enterprise COBOL for z/OS  4.2.0               SL        Date 11/28/2019  Time 14:09:50   Page    13                
0 Defined   Cross-reference of programs     References                                                                               
                                                                                                                                     
       12   SL . . . . . . . . . . . . . .  387                                                                                      
-* Statistics for COBOL program SL:                                                                                                  
 *    Source records = 387                                                                                                           
 *    Data Division statements = 60                                                                                                  
 *    Procedure Division statements = 82                                                                                             
0End of compilation 1,  program SL,  no statements flagged.                                                                          
0Return code 0                                                                                                                       
