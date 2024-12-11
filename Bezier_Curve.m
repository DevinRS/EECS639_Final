function [a0,b0,a1,b1,a2,b2,a3,b3]=Bezier_Curve(n,X,Y,XPlus,YPlus,XMinus,YMinus)
for i=1: n
a0(i)= X(i);
b0(i)= Y(i);
a1(i)= 3.*(XPlus(i)-X(i));
b1(i)= 3.*(YPlus(i)-Y(i));
a2(i)= 3.*(X(i)+XMinus(i+1)-2.*XPlus(i));
b2(i)= 3.*(Y(i)+YMinus(i+1)-2.*YPlus(i));
a3(i)= X(i+1)-X(i)+3.*XPlus(i)-3.*XMinus(i+1);
b3(i)= Y(i+1)-Y(i)+3.*YPlus(i)-3.*YMinus(i+1);
end
end
