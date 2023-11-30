clear
clc

num = [2 5 3 6];
den = [1 6 11 6];
[r,p,k] = residue(num,den);
[num,den] = residue(r,p,k);
printsys(num,den,'s')

%%%%%%%%%%
clear
clc

num = [1 2 3];
den = [1 3 3 1];
[z,p,k] = tf2zp(num,den);
z;
p;
k;


%%%%%%%%%%
clear
clc

num = [4 16 12];
den = [1 12 44 48 0];
[z,p,k] = tf2zp(num,den);
z;
p;
k;


%%%%%%%%%%%%%%
clear
clc

num = [5 30 55 30];
den = [1 9 33 65];
[z,p,k] = tf2zp(num,den);
z;
p;
k;


%%%%%%%%%%%%%%
clear
clc

z = [-1;-2;-3];
p = [-2+j*3;-2-j*3;-5];
k = 5;
[num,den] = zp2tf(z,p,k);


%%%%%%%%%%%%%%
clear
clc

num = [100 1000];
den = [1 10 100 600 0];
[r,p,k] = residue(num,den);


%%%%%%%%%%%%%%
clear
clc

num = [1 8 23 35 28 3];
den = [1 6 8 0];
[r,p,k] = residue(num,den);


%%%%%%%%%%%%%%
clear
clc

z = [];
p = [-1+2*j;-1-2*j];
k = 10;
[num,den] = zp2tf(z,p,k);
printsys(num,den);


%%%%%%%%%%%%%%
clear
clc

z = [0];
p = [-1+2*j;-1-2*j];
k = 10;
[num,den] = zp2tf(z,p,k);
printsys(num,den);


%%%%%%%%%%%%%%
clear
clc

z = [-1];
p = [-2;-4;-8];
k = 12;
[num,den] = zp2tf(z,p,k);
printsys(num,den);


%%%%%%%%%%%%%%
clear
clc

num = [2];
den = [1 2 10 0 0 0];
[r,p,k] = residue(num,den);
r
p
k


%%%%%%%%%%%%%%
clear
clc

d = [1 2 3 4];
r = roots(d)
d = poly(r)


%%%%%%%%%%%%%%
clear
clc

num = [10 10];
den = [1 6 5 10];
[A,B,C,D] = tf2ss(num,den)


%%%%%%%%%%%%%%
clear
clc

A = [0 1 0; 0 0 1; -5.008 -25.1026 -5.03247];
B = [0;25.04;-121.005];
C = [1 0 0];
D = [0];
[num,den] = ss2tf(A,B,C,D)


%%%%%%%%%%%%%%
clear
clc

A = [0 1; -2 -3];
B = [1 0; 0 1];
C = [1 0];
D = [0 0];
[num,den] = ss2tf(A,B,C,D,1)


%%%%%%%%%%%%%%
clear
clc

A = [0 1; -2 -3];
B = [1 0; 0 1];
C = [1 0];
D = [0 0];
[num,den] = ss2tf(A,B,C,D,2)


%%%%%%%%%%%%%%
clear
clc

A = [0 1; -25 -4];
B = [1 1; 0 1];
C = [1 0; 0 1];
D = [0 0; 0 0];
[num,den] = ss2tf(A,B,C,D,1)


%%%%%%%%%%%%%%
clear
clc

A = [0 1; -25 -4];
B = [1 1; 0 1];
C = [1 0; 0 1];
D = [0 0; 0 0];
[num,den] = ss2tf(A,B,C,D,2)


%%%%%%%%%%%%%%
clear
clc

A = [0 1; -25 -4];
B = [0; 1];
[G,H] = c2d(A,B,0.05)


%%%%%%%%%%%%%%
clear
clc

A = [0 1; -25 -4];
B = [0; 1];
format long
[G,H] = c2d(A,B,0.05)


%%%%%%%%%%%%%%
clear
clc

num1 = [10];
den1 = [1 2 10];
num2 = [5];
den2 = [1 5];
[num,den] = series(num1,den1,num2,den2)
printsys(num,den)


%%%%%%%%%%%%%%
clear
clc

num1 = [10];
den1 = [1 2 10];
num2 = [5];
den2 = [1 5];
[num,den] = parallel(num1,den1,num2,den2)
printsys(num,den)


%%%%%%%%%%%%%%
clear
clc

num1 = [10];
den1 = [1 2 10];
num2 = [5];
den2 = [1 5];
[num,den] = feedback(num1,den1,num2,den2)
printsys(num,den)


%%%%%%%%%%%%%%
clear
clc

sysg1 = [4];
numg2 = [2];
deng2 = [1 9 8];
sysg2 = tf(numg2,deng2);
numg3 = [1];
deng3 = [1 0];
sysg3 = tf(numg3,deng3);
sysh = [0.2];
sys1 = feedback(sysg2,sysh);
sys2 = series(sys1,sysg3);
sys3 = series(sysg1,sys2);
sys = feedback(sys3,[1])


%%%%%%%%%%%%%%
clear
clc

numg1 = [2];
deng1 = [1 0];
sysg1 = tf(numg1,deng1);
numg2 = [1];
deng2 = [1 0];
sysg2 = tf(numg2,deng2);
sysg3 = [1];
sys1 = parallel(sysg1,sysg3);
sys2 = series(sys1,sysg2);
sys = feedback(sys2,[1])
sys_ss = ss(sys)


%%%%%%%%%%%%%%
clear
clc

num = [1 2];
den = [1 1 2];
[A,B,C,D] = tf2ss(num,den)


%%%%%%%%%%%%%%
clear
clc

num1 = [1 2 1];
den1 = [1 0 0];
sys1 = tf(num1,den1);
num2 = [2];
den2 = [1 5];
sys2 = tf(num2,den2);
sys_ss1 = ss(sys1);
sys_ss2 = ss(sys2);
sys_ss3 = series(sys_ss1,sys_ss2);
sys_ss = feedback(sys_ss3,[1]);
sys_tf = tf(sys_ss)


%%%%%%%%%%%%%%
clear
clc

num = [1 3 2];
den = [1 8 19 12];
sys = tf(num,den)
sys_min = minreal(sys)































