function [ out ] = perceptron( x1,x2,w,e )     
[m1,n1]=size(x1);    
[m2,n2]=size(x2);    
X1=double(ones(m1,n1+1));   
X2=double(ones(m2,n2+1));
X1(:,1:n1) = x1;
X2(:,1:n2) = x2;
X2 = - X2;
flag=0;
while flag < m1+m2
    flag = 0;
    for i=1:m1            
        g = X1(i,:).*w;           
        s = sum(g);
        if s <= 0                
            w = w + e * X1(i,:);
        else
            flag = flag+1;
        end
    end
    for i=1:m2            
        g = X2(i,:).*w;            
        s = sum(g);
        if s <= 0                
            w = w + e * X2(i,:);
        else
            flag = flag+1;
        end
    end
end
out = w;
end