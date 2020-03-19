 f=imread('D:\Work&Files\PSU-Course\EE455\Images\lenna.gif');
 [m,n]=size(f);
 
for x = 1 : m        
    for y = 1 : m    
        fthresh(x,y) = 0;
    end
end
%Generate a zero image with dim of m,n

 for i=1:m
     for j=1:n
         if f(i,j)>150
             fthresh(i,j)=1;
         else
             fthresh(i,j)=0;
         end
     end
 end
 imshow(fthresh,[]);
 imwrite(fthresh,'threshold','tif');
 %Choose a threshold of 200 to fitler the image
 %------------------------------------------
 
[flabel, num] = bwlabel(fthresh, 8);
fRGB = label2rgb(flabel);
imshow(flabel,[])
imshow(fRGB,[])
imwrite(flabel,'label','tif');
imwrite(fRGB,'RGB','tif');
%-----------------------------

for i=1:num
    C(i)=sum(flabel(:)==i);
end
%Count the number of pixels of the component

C2=fliplr(sort(C));
for j=1:3
    X(j)=find(C==C2(j));
end
%C2 is the descending set of C
%X is to find the 3 largest components

for x = 1 : m        
    for y = 1 : m    
        f3(x,y) = 0;
    end
end
for x=1:m
    for y=1:n
        if flabel(x,y)==X(1)||flabel(x,y)==X(2)||flabel(x,y)==X(3)
            f3(x,y)=flabel(x,y);
        else
            f3(x,y)=0;
        end
    end
end
imtool(f3)
imwrite(f3,'result','tif');
