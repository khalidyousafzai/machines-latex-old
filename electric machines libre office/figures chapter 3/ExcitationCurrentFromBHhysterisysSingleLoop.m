# Brillouin function
#Excitation Current from BH Brillouin curve
#

clc
clear all
format long

grid off
axis off



Bn=@(J,y) ((2.*J.+1)./J).*coth((2.*J+1)./J.*y)-1./(2.*J).*coth(y./(2.*J));

J=0.5;
ylmt=2;
yhys=0.25;

y=0:0.001:ylmt;

ty=asin(Bn(J,y)./Bn(J,ylmt));

#plot(y,Bn(J,y))
hold on

#plots BH loop

yp=(ylmt.+yhys)./ylmt.*y.*sin(y.*3.142./(2.*ylmt))-yhys;

plot(yp,Bn(J,y),-yp,-Bn(J,y)) 

ym=yhys.+(ylmt.-yhys)./ylmt.*y.*sin(y.*3.142./(2.*ylmt));
plot(ym,Bn(J,y),-ym,-Bn(J,y))


print -demf ExcitationCurrentBHloop.emf 


hold off

hold on
axis off
grid off

#plots Excitation Current

plot (-ty,-yp,-pi+ty,-ym,ty,ym,pi-ty,yp)  #this plots the excitation curve


print -demf ExcitationCurrent.emf
