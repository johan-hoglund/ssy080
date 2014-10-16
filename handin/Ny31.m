T=1;
w=2*pi/T;
M=200;
t=T*(0:M-1)/M;
y=zeros(1,200);

ind=30; %intervall

C= 1:(ind*2 + 1);
for a = 1:(ind*2 + 1)
    k = a - ind - 1;
    syms p;
    C(a) = 1/T *(int(exp(-1i*p*w*k) , 0 , T/2 ) + int ( -exp(-1i*p*w*k) , T/2 , T));
end

for k = -ind:ind
    a = k+ind + 1;
    y = y + C(a)*exp(1i*w*t*k);
end

plot(t,y);