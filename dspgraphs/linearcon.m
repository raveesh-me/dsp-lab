x = [1 2 2 1]
Nx = length(x)
h = [1 -1 -1 1]
Nh = length(h)
Ny=Nx + Nh -1;
xn = [x zeros(1,(Ny-Nx))]
hn = [h zeros(1,(Ny-Nh))]
y=zeros(1,Ny)
for n=0:Ny-1
    m=0:Ny-1
    n1=mod(n-m,Ny)
    xs2=(hn(n1+1))
    x12=xn.*xs2
    y(n+1)=sum(x12)
end
n=0:Ny-1
subplot(1,3,1)
stem(n,xn,'filled')
xlabel('n-->')
title('x(n)')
subplot(1,3,2)
stem(n,hn,'filled')
xlabel('n-->')
title('h(n)')
subplot(1,3,3)
stem(n,y,'filled')
xlabel('n-->');
title('y(n)')