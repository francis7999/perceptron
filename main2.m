x1 = [1, 0;
      1, 1];
x2 = [0, 1;
      1, 0];
[m1,n1]=size(x1);    
[m2,n2]=size(x2);    
X1=double(ones(m1,n1+1));   
X2=double(ones(m2,n2+1));
X1(:,1:n1) = x1;
X2(:,1:n2) = x2;
X2 = - X2;
X = [X1; X2]; 
w = double([1,1,1]);                 
k=0;                         
p=1;          
n=0;                            
while ((n<4)&&(k<100))          
    i=mod(k,4)+1;    
    g= dot(X(i,:), w);
    if(g<=0)        
        w=w + p * X(i,:);        
        n=0;
    else
        n=n+1;
    end
    k=k+1;
end
scatter(x1(:,1),x1(:,2),'r');
hold on;
plot(x1(:,1),x1(:,2),'r');
hold on;
scatter(x2(:,1),x2(:,2),'g'); 
hold on;
plot(x2(:,1),x2(:,2),'g'); 
hold on;
line([0,2],[-w(3)/w(2), -(w(3)+2*w(1))/w(2)], 'Color', 'b');
axis([-0.5 1.5 -0.5 1.5]);