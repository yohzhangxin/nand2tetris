// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// 3 * 4 => 3+3+3+3
@i
M=1   //M[i]=1
@2
M=0   //M[2]=0

(LOOP) //循环开始
@1 
D=M   //D=M[1]-->D=R[1]

@i
D=D-M  //D=M[1]-1  //M[1]就是第二个书，如果为0，则累加结束

@END
D,JLT    //if D<0 goto END   ？？

@0
D=M  //D=M[0] --把M[0]自加M[1]次
@2
D=D+M  //第一个数加自己，M[2]是保存结果的位置

@2
M=D  //把值存回去

@LOOP
0,JMP   //要回到循环的开始位置

(END)
@END
0,JMP