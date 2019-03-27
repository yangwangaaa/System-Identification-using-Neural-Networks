clc
clear all
close all
w=0;
wk=[0.5 1.0 1.5 2.0 2.5 3.0];
zk=[0.2 0.4 0.6 0.8 1.0];
t=0;
i=0;
nnin=zeros(1001,3);
nnout=zeros(1001,1);
for k=1:5
  z=zk(k);  
  for i=1:6
    w=wk(i);
    [t,y]=sim('Hw5P1',[0 10]);
    if i==1
        nnin=NN_In;
        nnout=NN_Out;
    else
       nnin=[nnin;NN_In];
       nnout=[nnout;NN_Out];
    end
    
   end
end