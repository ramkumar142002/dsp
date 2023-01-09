x=[1,2,3,4];
y=[4,5,6,7];
z=[7,8,9,10];

a=conv(conv(x,y),z);
b=conv(x,conv(y,z));

if(a==b)
    disp('done!!!!!');
end