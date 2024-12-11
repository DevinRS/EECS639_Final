t= 0:pi/10000:8*pi;
x= (2.*cos(t))+(5.*cos(2.*t./3));
y= (2.*sin(t))-(5.*sin(2.*t./3));
plot (x,y)
n=47861;

xplus= (2.*cos(t))+(5.*cos(2.*t./3))+0.0001;
xminus= (2.*cos(t))+(5.*cos(2.*t./3))-0.0001;
yplus= (2.*sin(t))-(5.*sin(2.*t./3))-0.0001;
yminus= (2.*sin(t))-(5.*sin(2.*t./3))+0.0001;

for i=33606:n
xplus(i)= (2.*cos(t(i)))+(5.*cos(2.*t(i)./3))+0.0001;
xminus(i)= (2.*cos(t(i)))+(5.*cos(2.*t(i)./3))-0.0001;
yplus(i)= (2.*sin(t(i)))-(5.*sin(2.*t(i)./3))+0.0002;
yminus(i)= (2.*sin(t(i)))-(5.*sin(2.*t(i)./3))-0.0002;
end

for i=47860:n
xplus(i)= (2.*cos(t(i)))+(5.*cos(2.*t(i)./3))+0.0008;
xminus(i)= (2.*cos(t(i)))+(5.*cos(2.*t(i)./3))-0.0008;
yplus(i)= (2.*sin(t(i)))-(5.*sin(2.*t(i)./3))-0.00012;
yminus(i)= (2.*sin(t(i)))-(5.*sin(2.*t(i)./3))+0.00012;
end

for i=60000:n
xplus(i)= (2.*cos(t(i)))+(5.*cos(2.*t(i)./3))-0.0003;
xminus(i)= (2.*cos(t(i)))+(5.*cos(2.*t(i)./3))+0.0003;
yplus(i)= (2.*sin(t(i)))-(5.*sin(2.*t(i)./3))-0.001;
yminus(i)= (2.*sin(t(i)))-(5.*sin(2.*t(i)./3))+0.001;
end

[a0,b0,a1,b1,a2,b2,a3,b3]=Bezier_Curve(n,x,y,xplus,yplus,xminus,yminus);
figure()

for i=1:n
fx(i)=a0(i)+(a1(i).*t(i))+(a2(i).*t(i).^2)+(a3(i).*t(i).^3);
fy(i)=b0(i)+(b1(i).*t(i))+(b2(i).*t(i).^2)+(b3(i).*t(i).^3);
end
plot(fx,fy)