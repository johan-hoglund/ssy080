num=[1 1.1 1];
den=[1 2 9 9];
sys=tf(num,den);
bode(sys);
pzmap(sys);
t = 0:0.01:81.91;
x1 = sin(1 * t);
x3 = sin(3 * t);
x5 = sin(5 * t);
lsim(sys, x1, t)


