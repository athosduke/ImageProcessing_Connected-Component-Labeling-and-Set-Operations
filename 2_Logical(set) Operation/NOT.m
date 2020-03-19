function [f] = NOT(A)
[m,n]=size(A);
for x=1:m
    for y=1:n
        if A(x,y) ==1
            f(x,y)=0;
        else 
            f(x,y)=1;
        end
    end
end
