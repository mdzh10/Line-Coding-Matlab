i = input('input number :','s');
x = linspace(-pi,pi,100);
z = str2DOUBLE(i);
if(even(z)==1)
    y = tan(x);
    plot(x,y),axis([-pi pi -2 2]);
elseif(even(z)==0)
    y = exp(x);
    plot(x,y),axis([-pi pi -2 2]);
elseif(ischar(i))
    y=cos(x);
    plot(x,y),axis([-pi pi -2 2]);
end
