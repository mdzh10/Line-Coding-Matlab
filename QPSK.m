m=[0 0 1 0 0 1 1 1];
x=[];
y=[];
n=length(m);
m1=[];
m2=[];
j=1;

modulated1=[];
modulated2=[];
for i=1:2:n
    m1(j)=m(i);
    j=j+1;
end
j=1;
for i=2:2:n
    m2(j)=m(i);
    j=j+1;
end
ac=5;
fc=4;

t=0:.001:n;
t1=0:.001:m1;
t2=0:.001:m2;

carrier1=ac*sin(2*pi*fc*t);
carrier2=ac*cos(2*pi*fc*t); % 1.57 rad value of 90

for i=1:n/2
    for j=(i-1)*1000:i*1000
        if(m1(i)==1)
            modulated1(j+1)=carrier1(j+1);
            modulated2(j+1)=carrier2(j+1);
        else
            modulated1(j+1)=-carrier1(j+1);
            modulated2(j+1)=-carrier2(j+1);
        end
        
    end
end

subplot(7,1,1)
plot(t1,m1)
subplot(7,1,2)
plot(t1,carrier1)
subplot(7,1,3)
plot(t1,modulated1)

subplot(7,1,4)
plot(t2,m2);
subplot(7,1,5)
plot(t2,carrier2)
subplot(7,1,6)
plot(t2,modulated2)

modulated = modulated1 + modulated2;
t3 = t1 + t2 ;
subplot(7,1,7)
plot(t3,modulated)