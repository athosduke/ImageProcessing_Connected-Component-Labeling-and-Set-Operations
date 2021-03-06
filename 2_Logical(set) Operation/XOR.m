function [f] = XOR(A,B)
[m,n]=size(A);
[h,g]=size(B);

% The operation range is set to be the smaller one in case of the mismatch of
% the size of two images
for x=1:min(m,h)
    for y=1:min(n,g)
        if A(x,y) == B(x,y)
            f(x,y)=0;
        else 
            f(x,y)=1;
        end
    end
end
