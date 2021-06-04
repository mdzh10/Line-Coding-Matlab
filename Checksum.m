load checksum_txt.txt
m=checksum_txt;
x=sum(m);
binary=de2bi(x);
revBinary=flip(binary);
s=[0 0];
s1=revBinary(1:2);
s2=revBinary(3:6);
s1=[s s1];
s3=s1+s2;
s4=[1 1 1 1];
s5=xor(s3,s4)
