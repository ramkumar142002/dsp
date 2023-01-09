x={1,2,3,4};
h={2,3,4,5};
n1=length(x);
n2=length(h);
N=n1+n2-1;
x=[x zeros(1,n2)];
h=[h zeros(1,n1)];
y=zeros(1,N);

for i=1:N
    for j=1:N
        y(i)=y(i)+(x(j)*h(i-j+1));
    end
end

disp(y);
