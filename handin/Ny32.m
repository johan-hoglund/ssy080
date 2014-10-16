%Num = (s+0.1)(s+10) blir s^2+10.1s+1
num=[1 10.1 1];
%Den = (s+1)(s^2+s+9) blir s^3+2s^2+10s+9
den=[1 2 10 9];

sys=tf(num,den);
bode(sys);

pzmap(sys);

t=0:0.01:81.92;

x1=sin(1*t);
x2=sin(3*t);
x3=sin(5*t);

y1=lsim(sys,x1,t);
y2=lsim(sys,x2,t);
y3=lsim(sys,x3,t);

%verifiera ekvationen y(t) = g(?)sin(?t + ?(?)) beräkna g(?) och ?(?) för
% ?=3

gw = (abs(evalfr(sys,3i)));
fi = (angle(evalfr(sys,3i)));
y = gw*sin(3*t + fi);

plot(y2);
hold on;
plot(y);
