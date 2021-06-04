data=[1 0 0 1];
divisor=[1 0 1 1];
divisor1=[0 0 0 0];
data1=data;
result=[];
for i=1:length(divisor)
    if (data1(1)==1)
        result=bitxor(data1,divisor);
        result=result(2:4);
        if length(result)<length(divisor)
            data1=result;
            data1=[data1 0];
        end
    else
        result=bitxor(data1,divisor1);
        result=result(2:4);
        if length(result)<length(divisor)
            data1=result;
            data1=[data1 0];
        end
    end
end
data=[data result]

        
