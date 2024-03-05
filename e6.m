clc
clear all
x1=imread('111IMAGE(1).jpg');
z1=rgb2gray(x1);
zn=imresize(z1,[150 200]);
subplot(1,3,1)
imshow(z1)
title('orginal image')
x2=imread('white11(1).jpg');
z2=rgb2gray(x2);
zn2=imresize(z2,[150 200]);
subplot(1,3,2)
imshow(z2)
title('white background')
z=zn-zn2;
subplot(1,3,3)
imshow(z)
title('subtracted image')