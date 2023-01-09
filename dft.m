x=[1,1,0,0];
n=length(x);
y=fft(x);
disp(y);

a=abs(y);
stem(a);

b=rad2deg(angle(y));
% stem(b);
polar(b,'*');