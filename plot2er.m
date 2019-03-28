clear all;
syms a c er ep x y;
a=10;
c=10;
ep=10;
er=ep:.1:100;
for k=1:length(er)
if er(k) >= (a*c/4) && ep >= (a*c/4)
z(k)=1;
elseif er(k) >= ((a*c* ep)^(1/2) -ep)  && ep <= (a*c/4)
z(k)=(((a*c/ep)^(1/2)) -1 );
else 
z(k)=er(k)/ep;
end
end
plot(er, z,'r');
hold on;

ep= 15;
er=ep:.1:100;
for k=1:length(er)
if er(k) >= (a*c/4) && ep >= (a*c/4)
z(k)=1;
elseif er(k) >= ((a*c* ep)^(1/2) -ep)  && ep <= (a*c/4)
z(k)=(((a*c/ep)^(1/2)) -1 );
else 
z(k)=er(k)/ep;
end
end
plot(er, z1,'b');
hold on;

ep= 25;
er=ep:.1:100;
for k=1:length(er)
if er(k) >= (a*c/4) && ep >= (a*c/4)
z(k)=1;
elseif er(k) >= ((a*c* ep)^(1/2) -ep)  && ep <= (a*c/4)
z(k)=(((a*c/ep)^(1/2)) -1 );
else 
z(k)=er(k)/ep;
end
end
plot(er, z2,'c');
hold on;

er= 30;
er=ep:.1:100;
for k=1:length(er)
if er(k) >= (a*c/4) && ep >= (a*c/4)
z(k)=1;
elseif er(k) >= ((a*c* ep)^(1/2) -ep)  && ep <= (a*c/4)
z(k)=(((a*c/ep)^(1/2)) -1 );
else 
z(k)=er(k)/ep;
end
end
plot(er, z3,'g');
grid on;
