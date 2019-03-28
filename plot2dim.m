clear all;
syms a c er ep x y;
a=10;
c=10;

er= 15;
ep=1:.1:er;
for k=1:length(ep)
if er >= (a*c/4) && ep(k) >= (a*c/4)
z(k)=1;
elseif er >= ((a*c* ep(k))^(1/2) -ep(k))  && ep(k) <= (a*c/4)
z(k)=(((a*c/ep(k))^(1/2)) -1 );
else 
z(k)=er/ep(k);
end
end
plot(ep, z,'r');
hold on;
er= 20;
ep=1:.1:er;
for k=1:length(ep)
if er >= (a*c/4) && ep(k) >= (a*c/4)
z1(k)=1;
elseif er >= ((a*c* ep(k))^(1/2) -ep(k)) && ep(k) <= (a*c/4)
z1(k)=(((a*c/ep(k))^(1/2)) -1 );
else 
z1(k)=er/ep(k);
end
end
plot(ep, z1,'b');
hold on;

er= 100;
ep=1:.1:er;
for k=1:length(ep)
if er >= (a*c/4) && ep(k) >= (a*c/4)
z2(k)=1;
elseif er  >= ((a*c* ep(k))^(1/2) -ep(k)) && ep(k) <= (a*c/4)
z2(k)=(((a*c/ep(k))^(1/2)) -1 );
else 
z2(k)=er/ep(k);
end
end
plot(ep, z2,'c');
hold on;

er= 50;
ep=1:.1:er;
for k=1:length(ep)
if er >= (a*c/4) && ep(k) >= (a*c/4)
z3(k)=1;
elseif er  >= ((a*c* ep(k))^(1/2) -ep(k)) && ep(k) <= (a*c/4)
z3(k)=(((a*c/ep(k))^(1/2)) -1 );
else 
z3(k)=er/ep(k);
end
end
plot(ep, z3,'g');
grid on;
