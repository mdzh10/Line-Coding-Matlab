load ask.txt
% txt file e 1 0 1 1 0 ache
m=ask;
n=length(m);
x=[];
y=[];
for i=1:n
    x=[x i-1 i];
    if m(i)==0
        y=[y 0 0];
    else
        y=[y 1 1];
    end
end
subplot(3,1,1)
plot(x,y),axis([0,n,-2,2])

ac=5;
fc=20;
t=0:.001:n;
carrier=ac*sin(2*pi*fc*t);

fc2=5;
carrier2=ac*sin(2*pi*fc2*t);


subplot(3,1,2)
plot(t,carrier,'g')

modulated=[];
for i=1:n
    for j=(i-1)*1000:i*1000
        if m(i)==1
            modulated(j+1)=carrier(j+1);
        else
            modulated(j+1)=carrier2(j+1);
        end
    end
end

subplot(3,1,3)
plot(t,modulated,'r')
   