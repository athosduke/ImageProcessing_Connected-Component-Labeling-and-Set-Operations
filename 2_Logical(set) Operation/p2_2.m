 A=imread('D:\Work&Files\PSU-Course\EE455\Images\match1.gif');
 B=imread('D:\Work&Files\PSU-Course\EE455\Images\match2.gif');
 C=imread('D:\Work&Files\PSU-Course\EE455\Images\mandril_gray.tif');
 D=imread('D:\Work&Files\PSU-Course\EE455\Images\cameraman.tif');
 
f_and=AND(A,B);
imtool(f_and);
imwrite(f_and,'f_and','tif');

f_or=OR(A,B);
imtool(f_or);
imwrite(f_or,'f_or','tif');

f_xor=XOR(A,B);
imtool(f_xor);
imwrite(f_xor,'f_xor','tif');

f_min=MIN(C,D);
imtool(f_min);
imwrite(f_min,'f_min','tif');