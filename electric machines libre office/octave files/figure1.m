% kkk fourier series of a square wave taking six terms

clc
clear all
format long e


f=@(x) 1/2+2/pi*(cos(x)-1/3*cos(3*x)+1/5*cos(5*x));
x=linspace(-10,10,200);
plot (x,f(x))
grid on

