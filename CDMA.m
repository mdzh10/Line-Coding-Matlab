w1=input('please give the value of w1\n')
w2=[w1 w1;w1 -w1];
w4=[w2 w2;w2 -w2];
c1=w4(1,:);
c2=w4(2,:);
c3=w4(3,:);
c4=w4(4,:);
d1='0';
d2='0';
d3='silent';
d4='1';
if d1=='0'
    c1=c1.*(-1);
elseif d1=='1'
    c1=c1.*1;
else
    c1=c1.*0;
end

if d2=='0'
    c2=c2.*(-1);
elseif d2=='1'
    c2=c2.*1;
else
    c2=c2.*0;
end

if d3=='0'
    c3=c3.*(-1);
elseif d3=='1'
    c3=c3.*1;
else
    c3=c3.*0;
end

if d4=='0'
    c4=c4.*(-1);
elseif d4=='1'
    c4=c4.*1;
else
    c4=c4.*0;
end
c=c1+c2+c3+c4;
x=[];
y=[];
for i=1:length(c1)
    x=[x i-1 i];
    y=[y c1(i) c1(i)];
end

subplot(5,1,1)
plot(x,y),axis([0,length(c1),-2,2])


x1=[];
y1=[];
for i=1:length(c1)
    x1=[x i-1 i];
    y1=[y c2(i) c2(i)];
end

subplot(5,1,2)
plot(x1,y1),axis([0,length(c1),-2,2])



x1=[];
y1=[];
for i=1:length(c1)
    x1=[x1 i-1 i];
    y1=[y1 c2(i) c2(i)];
end

subplot(5,1,2)
plot(x1,y1),axis([0,length(c1),-2,2])
   
   
x2=[];
y2=[];
for i=1:length(c1)
    x2=[x2 i-1 i];
    y2=[y2 c3(i) c3(i)];
end

subplot(5,1,3)
plot(x2,y2),axis([0,length(c1),-2,2])
       
x3=[];
y3=[];
for i=1:length(c1)
    x3=[x3 i-1 i];
    y3=[y3 c4(i) c4(i)];
end

subplot(5,1,4)
plot(x3,y3),axis([0,length(c1),-2,2])


x4=[];
y4=[];
for i=1:length(c1)
    x4=[x4 i-1 i];
    y4=[y4 c(i) c(i)];
end

subplot(5,1,5)
plot(x4,y4),axis([0,length(c1),-4,4])

