x=[1,2,3,4];
y=[4,5,6,7];
z=[7,8,9,10];

h=y+z;
a=conv(x,h);
b=conv(x,y)+conv(x,z);

if(a==b)
    disp('Done!');
end