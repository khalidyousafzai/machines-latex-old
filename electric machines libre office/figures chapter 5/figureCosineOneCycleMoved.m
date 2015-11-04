% cosine wave in a coil urdu electric machine 


clc
clear all
format long

grid off
axis off

t=-pi/2:pi/100:3*pi/2;
%plot(t,cos(t),"linewidth",1)
%xlabel('\theta')

plot(t,cos(t),".",t+pi/4,cos(t))

axis off


print -demf figureCosineOneCycleMoved.emf
