x1=[1,0;
    1,1;
    0,2];   
x2=[2,1;
    2,2;
    1,3];     
[m,n]=size(x1);   
w=double(ones(1,n+1));  
w=double([1,1,1]);    
w=perceptron(x1,x2,w,0.5);       
scatter(x1(:,1),x1(:,2),'r');
hold on;
scatter(x2(:,1),x2(:,2),'g');
axis([-0.5 2.5 -0.5 3.5]);
line([0,-w(3)/w(1)],[-w(3)/w(2),0], 'Color', 'b');