% kcosine wave for urdu electric machine 


clc
clear all
format long

grid on
axis on

t=0:pi/100:2*pi;
plot(t,cos(t),"linewidth",10)
xlabel('\theta')



print -demf kcosineOneCycle.emf
