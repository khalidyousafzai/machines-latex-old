% kkk fourier series of a square wave taking six terms
% this assumes Xs=1 per unit and takes R=0


clc
clear all
format long e

Eg=@(Ia,t) sqrt(1+Ia.*Ia+2.*Ia.*sin(t));

Ia=0:0.1:1.1;

plot (Ia,Eg(Ia,0),Ia,Eg(Ia,0.64),Ia,Eg(Ia,-0.64))

