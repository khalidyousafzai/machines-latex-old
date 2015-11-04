## Copyright (C) 2011 khalid khan
## 
format long
clear all

speed=[1000,991.95,983.96,975.83];
torque=[0,250.088,527.35,804.65];



plot(torque,speed)
axis([0,900,700,1000],"manual")

print -deps figureDCmotorSpeedVersusTorque.eps