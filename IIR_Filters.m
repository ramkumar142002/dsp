clc;
% clear all;
close all;
rp=input('Enter the passband ripple');
rs=input('Enter the stopband ripple');
wp=input('Enter the passband frequency');
ws=input('Enter the stopband frequency');
fs=input('Enter the sampling frequency');
w1=2*ws/fs;
w2=2*wp/fs;
[n,wn]=buttord(w1,w2,rp,rs,'s');
c=input('Enter the choice of filter,1 for LPF,2 for HPF,3 for BPF,4 for BSF' );
if(c==1)
    disp('Frequency response of IIR LPF is');
    [b,a]=butter(n,wn,'low','s');
end
if(c==2)
    disp('Frequency response of IIR HPF is');
    [b,a]=butter(n,wn,'high','s');
end
if(c==3)
    disp('Frequency response of IIR BPF is');
    [b,a]=butter(n,wn,'bandpass','s');
end
if(c==4)
    disp('Frequency response of IIR BSF is');
    [b,a]=butter(n,wn,'stop','s');
end
w=0:0.01:pi;
[h,om]=freqs(b,a,w);
m=20*log10(abs(h));
an=angle(h);
subplot(1,2,1);
plot(om/pi,m);
title('Magnitude response');
xlabel('Normalised frequency');
ylabel('gain in dB');

subplot(1,2,2);
plot(om/pi,an);
title('phase response');
xlabel('Normalised frequency');
ylabel('phase in rad');
   