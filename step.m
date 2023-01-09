x = -10:1:10;
impulse = x == 0;
unitstep = x >= 0;
y = x;
t = exp(x);
subplot(4,1,1);
stem(x,impulse);
subplot(4,1,2);
stem(x,unitstep);
subplot(4,1,3);
plot(y);
subplot(4,1,4);
plot(t);