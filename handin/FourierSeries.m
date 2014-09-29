clear();
clf();

maxFreq = 50;
T = 1;
M = 200;
w = 2*pi;

A = 1:maxFreq;
B = 1:maxFreq;
x = 1:M;

for i = 1:maxFreq
    if(true)
        A(i) = sin(0.5*i*w)/i*w - sin(i*w);
        B(i) = -cos(0.5*i*w)/i*w + cos(i*w);
    else
        A(i) = 0;
        B(i) = 0;
        if(mod(i, 2) == 1)
            B(i) = 2 / i;
        end
    end
end;

for t = 1:M*5
    x(t) = 0;
    for k = 1:maxFreq
%        x(t) = x(t) + A(k) * cos(k*w*t/M) + B(k) * sin(k*w*t/M);
        
        x(t) = x(t) + B(k) * sin(k*w*t/M);
    end;
end;


plot(x);