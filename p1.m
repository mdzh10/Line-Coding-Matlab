a = [7 11 12 0 6 0];
s = sum(a);
arr = flip(de2bi(s));
n = length(arr);
arr1 = [];
arr2 = [];
one = [];
j=n-4+1;

for i=1:n-4
    arr1(j) = arr(i);
    j = j+1;
end

k = 1;
for i = n-4+1:n
    arr2(k) = arr(i);
    one(k) = 1;
    k = k+1;
end

x = xor(arr2,arr1);
%c = bin2dec(num2str(x));
%checksum = bitcmp(x);
%x1 = xor(x,one);
x1 = ~x;
chsum = bin2dec(num2str(x1))
