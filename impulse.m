clc;
clear all;
close all;
y=input('Enter the Numerator coefficients: ');
x=input('Enter the Denominator coefficients: ');
N=input('Enter the required impulse samples:  ');
h=impz(y,x,N);
disp('The impulse response of the system is: ');
disp(h);
n=0:length(h)-1;
stem(0:length(h)-1,h);
xlabel ('sample');
ylabel('Amplitude');
title('Impulse response');