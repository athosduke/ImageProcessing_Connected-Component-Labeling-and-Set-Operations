function [E] = MIN(C,D)
[m,n]=size(C);
[h,g]=size(D);

% The operation range is set to be the smaller one in case of the mismatch of
% the size of two images
for x=1:min(m,h)
    for y=1:min(n,g)
        if C(x,y) < D(x,y)
            E(x,y) = C(x,y);
        else 
            E(x,y) = D(x,y);
        end
    end
end
