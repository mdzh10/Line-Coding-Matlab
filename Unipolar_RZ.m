load input.txt;
m = input;
n = length(m);
x = [];
y = [];

for i=1:n
    x=[x i-1 i-1+0.5 i-1+0.5 i];
    if(m(i)==0)
        y=[y -1 -1 1 1];
    else
        y=[y 1 1 -1 -1];
    end
end

plot(x,y),axis([0,n,-2,2]);
title('Unipolar RZ');