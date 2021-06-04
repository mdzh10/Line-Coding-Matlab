x=[];
y=[];
m=[1 0 0 0 0 0 0 0 0 0];
n=length(m);
z=[];
i=1;
V=4;
B=5;
prv=1;
while(i+7<=n)
    if(m(i)==0 & m(i+1)==0 & m(i+2)==0 & m(i+3)==0 & m(i+4)==0 & m(i+5)==0 & m(i+6)==0 & m(i+7)==0 )
        z=[z 0 0 0 V B 0 V B];
        i=i+8;
    else
     z=[z m(i)];
     i = i+1;
    end
end

for j=1:length(z)
    if(z(j)==1)
        prv=-prv;
        x=[x j-1 j];
        y=[y prv prv];
    elseif(z(j)==4)
        x=[x j-1 j];
        y=[y prv prv];
    elseif(z(j)==5)
         prv=-prv;
        x=[x j-1 j];
        y=[y prv prv];
    elseif(z(j)==0)
        x=[x j-1 j];
        y=[y 0 0];
    end
end
plot(x,y),axis([0,n,-4,4]);