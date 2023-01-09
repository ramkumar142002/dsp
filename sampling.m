a=5;
f=0.1;
t=0:0.01:30;
x=a*cos(2*pi*f*t);
% plot(t,x);

fs=1.5*f;
ts=1/fs;
td=0:ts:30;
x1=a*cos(2*pi*f*td);
plot(td,x1,'b--');

fs=2*f;
ts=1/fs;
td=0:ts:30;
x2=a*cos(2*pi*f*td);
plot(td,x2,'g--');

fs=10*f;
ts=1/fs;
td=0:ts:30;
x3=a*cos(2*pi*f*td);
plot(t,x,'b',td,x3,'r--');