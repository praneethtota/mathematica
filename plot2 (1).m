clear all;
syms a c er ep x y;
a=15;
c=15;
ep= 1: 1: 100;
er= ep:1:100;
[x,y]= meshgrid(er, ep);
for ep= 1:100
     for er=ep:100
     if er >= (a*c/4) && ep >= (a*c/4)
z( er, ep)=1;
elseif er >= ((a*c* ep)^(1/2) -ep) && ep <= (a*c/4)
z( er, ep)=(((a*c/ep)^(1/2)) -1 );
else 
z( er , ep)=er/ep;
end
end
end
surf(x, y, z);
