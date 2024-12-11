t= 0:pi/200:2*pi;
x=5.*cos(3.*t);
y=2.*sin(3.*t);
plot (x,y)
n=141;
xplus= 5.*cos(3.*t)+0.001;
xminus= 5.*cos(3.*t)-0.001;
yplus= 2.*sin(3.*t)+0.001;
yminus= 2.*sin(3.*t)-0.001;
[a0,b0,a1,b1,a2,b2,a3,b3]=Bezier_Curve(n,x,y,xplus,yplus,xminus,yminus);
figure()

for i=1: n
fx(i)=a0(i)+(a1(i).*t(i))+(a2(i).*t(i).^2)+(a3(i).*t(i).^3);
fy(i)=b0(i)+(b1(i).*t(i))+(b2(i).*t(i).^2)+(b3(i).*t(i).^3);
T(i)=t(i);
end
plot(fx,fy)