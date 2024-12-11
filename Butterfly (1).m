t= 0:pi/10000:2*pi;
x= sin(t).*((exp(cos(t)))-(2.*cos(4.*t))-((sin(t./12)).^5));
y= cos(t).*((exp(cos(t)))-(2.*cos(4.*t))-((sin(t./12)).^5));
plot (x,y)
n=20000;
xplus= (sin(t).*((exp(cos(t)))-(2.*cos(4.*t))-((sin(t./12)).^5)))+0.00001;
xminus= (sin(t).*((exp(cos(t)))-(2.*cos(4.*t))-((sin(t./12)).^5)))-0.00001;
yplus= (cos(t).*((exp(cos(t)))-(2.*cos(4.*t))-((sin(t./12)).^5)))+0.0001;
yminus= (cos(t).*((exp(cos(t)))-(2.*cos(4.*t))-((sin(t./12)).^5)))-0.0001;
[a0,b0,a1,b1,a2,b2,a3,b3]=Bezier_Curve(n,x,y,xplus,yplus,xminus,yminus);
figure()

for i=1: n
fx(i)=a0(i)+(a1(i).*t(i))+(a2(i).*t(i).^2)+(a3(i).*t(i).^3);
fy(i)=b0(i)+(b1(i).*t(i))+(b2(i).*t(i).^2)+(b3(i).*t(i).^3);
end
plot(fx,fy)