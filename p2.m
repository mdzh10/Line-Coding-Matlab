w1 = 1;
w2 = [w1 w1
      w1 -w1];
w4 = [w2 w2
     w2 -w2];
 c1 = w4(1,:);
 c2 = w4(2,:);
 c3 = w4(3,:);
 c4 = w4(4,:);
 
 d=[];
 for i =1:4
     x1 = input('','s');
     x(i) = str2double(x1);
     if(x(i)==0)
         d=[d -1];
     elseif(x(i)==1)
         d=[d 1];
     else
        d=[d 0];
     end
 end
 d
 f1 = c1.*d(1);
 f2 = c2.*d(2);
 f3 = c3.*d(3);
 f4 = c4.*d(4);
 x=[];
 y=[];
 f1
 for i=1:length(f1)
     x=[x i-1 i]
     if(f1(i)==1)
         y=[y 1 1];
     elseif(f1(i)==-1)
         y=[y -1 -1];
     else
         y=[y 0 0];
     end
 end
 plot(x,y),axis([0,length(f1),-2,2])
%  y=[];
%  f11=[];
%  f22=[];
%  f33=[];
%  f44=[];
%  for i=1:4
%      y=[y i-1 i];
%      f11=[f11 f1(i) f1(i)];
%      f22=[f22 f2(i) f2(i)];
%      f33=[f33 f3(i) f3(i)];
%      f44=[f44 f4(i) f4(i)];
%  end
%  
%  subplot(2,2,1);
%  plot(n,f11)
%  subplot(2,2,2);
%  plot(n,f22)
%  subplot(2,2,3);
%  plot(n,f33)
%  subplot(2,2,4);
%  plot(n,f44)
%  
%  