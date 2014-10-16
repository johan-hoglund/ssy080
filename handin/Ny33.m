%generera en fyrkantigvåg
t=0:0.01:81.92;
x = square(t);
plot(t,x);

%Man ser att den är udda

%generera 3 nollskilda fourierkoefficienter
% k blir ? = 1,3,5 i loopen
for k = 1:2:5
    ko = @(k) (-1i * 2) / (pi * k);
    B = @(k) 2 * ko(k) / (-1i);
    B(k)
end
%B(k) ger teoretiska värden

% plotta DFT
Fs=100; % 100 Hz
N=8192;
for k = 1:N
    w(k) = (2 * pi * Fs * k) / N;
end

y = abs(fft(x));
plot(w,y);


%TODO
% praktiska beräknas av B = 2|X[k0]|/N