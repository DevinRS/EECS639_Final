t= 0:pi/10010:2*pi;
a=2;
k=4;
x= a.*cos(k.*t).*cos(t);
y= a.*cos(k.*t).*sin(t);
plot (x,y)
n=20020;
xplus= (a.*cos(k.*t).*cos(t))+0.00001;
xminus= (a.*cos(k.*t).*cos(t))-0.00001;
yplus= (a.*cos(k.*t).*sin(t))+0.00001;
yminus= (a.*cos(k.*t).*sin(t))-0.00001;
[a0,b0,a1,b1,a2,b2,a3,b3]=Bezier_Curve(n,x,y,xplus,yplus,xminus,yminus);
figure()

for i=1: n
fx(i)=a0(i)+(a1(i).*t(i))+(a2(i).*t(i).^2)+(a3(i).*t(i).^3);
fy(i)=b0(i)+(b1(i).*t(i))+(b2(i).*t(i).^2)+(b3(i).*t(i).^3);
end
plot(fx,fy)