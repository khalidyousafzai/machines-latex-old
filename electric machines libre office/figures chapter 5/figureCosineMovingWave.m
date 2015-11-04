## CosineMovingWave

t=-pi/2:pi/100:1.5*pi;
plot(t,cos(t),t.+pi/10,cos(t),t.+pi/3,cos(t))

grid off
axis off

print -demf figureCosineMovingWave.emf

