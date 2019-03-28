clear all;
syms a c er ep x y ;

c=100;
ep= 1: 1: 100;
er= ep:1:100;
[x,y]= meshgrid(er, ep);
for ep= 1:100
     for er=ep:100
         temp1=simplify (x+ep)^3 - c*(x+ep)/4 + c*ep/4;
         temp=solve ('temp1=0','x' );
         temp=temp(imag(temp)==0);
     if er >= ((c/32)^(1/2)) && ep >= ((c/32)^(1/2))
z( er, ep)=1;
elseif er >=temp && ep <= ((c/32)^(1/2))
z( er, ep)=temp/ep;
else 
z( er , ep)=er/ep;
end
end
end
surf(x, y, z);
