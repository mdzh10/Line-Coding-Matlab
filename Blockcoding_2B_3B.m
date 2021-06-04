m=[0 1 1 0 0 1 0 1 1 1];
n=length(m);
x=[];
y=[];
z=[];
for i=1:2:n;
    if(m(i)==0 && m(i+1)==0)
        z=[z 0 1 0];
    elseif(m(i)==0 && m(i+1)==1)
        z=[z 0 1 1];
    elseif(m(i)==1 && m(i+1)==0)
        z=[z 1 0 1];
    else
        z=[z 1 1 0];
    end
end
s=length(z);
prvlvl=-1;
for i=1:s;
    x=[x i-1 i];
    if(z(i)==0)
        y=[y prvlvl prvlvl];
    elseif(z(i)==1 && prvlvl==-1)
        y=[y 1 1];
        prvlvl=1;
    else
        y=[y -1 -1];
        prvlvl=-1;
    end
end
plot(x,y),axis([0,s,-2,2]);
        