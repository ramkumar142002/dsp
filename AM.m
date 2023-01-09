% Amplitude Modulation
% Message Signal
Am=5;
Ac=5;
m=1;
f=10;
fc=10*f;
F=2000;
T=1/F;
t=0:T:1;
xm=Am*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,xm);
title('Message Signal');
% Carrier Signal
xc=Ac*sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,xc);
title('Carrier Signal');
% Modulated Wave
y=Ac+Am*(1+m*sin(2*pi*f*t)).*sin(2*pi*fc*t);
subplot(3,1,3);
plot(t,y);
title('AM Modulated Waveform');