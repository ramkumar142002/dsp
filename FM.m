fs=10000;
Ac=1;
Am=1;
fm=35;
fc=500;
B=10;
t=(0:0.1*fs)/fs;
wc=2*pi*fc;
wm=2*pi*fm;
mt=Am*cos(wm*t);
subplot(3,1,1);
plot(t,mt);
title('Message signal');

ct=Ac*cos(wc*t);
subplot(3,1,2);
plot(t,ct);
title('Carrier signal');

st=Ac*cos((wc*t)+B*sin(wm*t));
subplot(3,1,3);
plot(t,st);
title('FM Modulated Waveform');