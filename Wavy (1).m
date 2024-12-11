t= 0:pi/20:80*pi;
x= (20.*t).*cos(0.2.*t);
y= 10.*sin(t);
plot (x,y)
n=1600;
xplus= ((20.*t).*cos(0.2.*t));
xminus= ((20.*t).*cos(0.2.*t));
yplus= (10.*sin(t));
yminus= (10.*sin(t));

[a0,b0,a1,b1,a2,b2,a3,b3]=Bezier_Curve(n,x,y,xplus,yplus,xminus,yminus);
figure()

for i=1: n
fx(i)=a0(i)+(a1(i).*t(i))+(a2(i).*t(i).^2)+(a3(i).*t(i).^3);
fy(i)=b0(i)+(b1(i).*t(i))+(b2(i).*t(i).^2)+(b3(i).*t(i).^3);
end
plot(fx,fy)