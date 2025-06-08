%LA Final Project
clear
for n=1:1:61
    N(n)=n-11;
    if (N(n)>40) || (N(n)<0)
        x(n)=0;
    else
        x(n)=((1.02)^N(n))+0.5*cos(2*pi*N(n)/8+pi/4);
    end
end

for n=2:1:60
    P(n)=n-11;
    y3(n)=(x(n-1)+x(n+1)+x(n))/3;
end

for n=4:1:58
    Q(n)=n-11;
    y7(n)=(x(n-3)+x(n-2)+x(n-1)+x(n+1)+x(n+2)+x(n+3)+x(n))/7;
end

subplot(3,1,1);
stem(N,x,'filled',LineWidth=1)
title('x[n]')

subplot(3,1,2);
stem(P,y3,'filled',LineWidth=1)
title('y3[n]')

subplot(3,1,3);
stem(Q,y7,'filled',LineWidth=1)
title('y7[n]')
