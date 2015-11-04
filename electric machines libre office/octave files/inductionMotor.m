% this draw the slip-torque vurve of an induction motor
% Rr=0.144

f=@(s,Rr)(Rr ./s) ./( (0.113+ Rr ./s) .^2 + (0.49+0.209  ) .^2 ) ;

s=-1:0.01:2;
Rr=0.144;

plot((1-s),f(s,Rr))

axis off
hold on

Rr=0.288;
plot((1-s),f(s,Rr))

Rr=0.72;
plot((1-s),f(s,Rr))


hold off

axis ([0,1,0,0.65])

print -demf inductionMotorTorqueSlipCurve.emf