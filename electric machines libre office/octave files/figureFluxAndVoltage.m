% figure for urdu electric machine book
%chapter 3
%induced voltage is sinusoidal if the flux is sinusoidal


clc
clear all
format long e

x=0:pi/100:2*pi;
plot (x,sin(x),"linewidth",3)

grid on
xlabel("angle")
ylabel("B")


print -deps figureOctaveFluxAndVoltage.eps

