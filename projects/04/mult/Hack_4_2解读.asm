@i
M=1   //M[i]=1
@sum
M=0    //M[sum]=0
(LOOP)
@i
D=M    //D=M[i]=1
@100
D=D-A   //D=1-100
@END
D;JGT   //if D>0 goto @END  如果要转跳，转跳到@END这个地址啊。。。
@i
D=M    //D=M[i]=1
@sum
M=D+M  //M[sum]=M[i]+M[sum]  ->M[sum]=0+1
@i
M=M+1  //M[i]=M[i]+1  -->M[i]=1+1=2(自增)
@LOOP
0;JMP  //强制转跳到(LOOP)处，直到11条语句跳出来
(END)
@END
0;JMP   //无条件转跳