x=[1,2,3,4];
h=[2,3,4,5];
a=conv(x,h);
disp(a);
b=conv(h,x);

if(a==b)
    disp('commutative !!');
end
% else
%     disp('Not commutative');
% end
