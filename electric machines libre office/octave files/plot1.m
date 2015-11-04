% kkk fourier series of a square wave taking six terms

clc
clear all
format long e

f=1;

flux=@(t) sin(2*pi*f*t);
t=0:0.01:10;
plot (t,flux(t))

