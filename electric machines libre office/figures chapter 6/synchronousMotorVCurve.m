% kkk synchronous motor compounding curves
%Xs=1.0

clc
clear all
format long e


Eg=@(Ia,P) sqrt(1+1*Ia.*Ia-2.*sqrt(Ia.*Ia-P.*P)) ;
Ed=@(Ia,P) sqrt(1+1*Ia.*Ia+2.*sqrt(Ia.*Ia-P.*P)) ;
Ia=@(i) i/100 ;

%-----------

P=0;
i=P*100:P+1:100;


plot (Eg(Ia(i),P),Ia(i),Ed(Ia(i),P),Ia(i))

ylabel("Ia, power")
xlabel("Ea, field current")
title("synchronous motor V-curves")
hold on
%---

P=0.25;
i=P*100:P+1:100;

plot (Eg(Ia(i),P),Ia(i),Ed(Ia(i),P),Ia(i))

%-------------
P=0.50;
i=P*100:P+1:100;

plot (Eg(Ia(i),P),Ia(i),Ed(Ia(i),P),Ia(i))

%------------------------------

P=0.75;

i=P*100:P+1:100;

plot (Eg(Ia(i),P),Ia(i),Ed(Ia(i),P),Ia(i))

%--------------------------------------

P=1;

i=P*100:P+1:101;

plot (Eg(Ia(i),P),Ia(i),Ed(Ia(i),P),Ia(i))

hold off