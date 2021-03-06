numerator = poly([0 -1j 1j -5j 5j -7j 7j -9j 9j])

sys1 = tf(numerator, 1);
%bode(sys1);

denominator = poly([-4 -4 -4 -4 -4 -4 -4 -4 -4]);
sys2 = tf(numerator, denominator);
%bode(sys2);

denominator2 = poly([-4 -4 -4 -4 -4 -4 -4 -4 -4 -4 -4 -4]);
sys3 = tf(numerator, denominator2);
%bode(sys3);

sys4 = tf(numerator/abs(evalfr(sys3, 3j)), denominator2);

%pzmap(sys4)
