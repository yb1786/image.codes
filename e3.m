clc
clear all
x=imread('C:\Users\STUDENT\Desktop\oip.jpg') ;
subplot(2,2,1)
imshow('C:\Users\STUDENT\Desktop\oip.jpg');
title('Original image')

z=rgb2gray(x)
subplot(2,2,2)
imshow(z)
title('Gray image')

%contrast
C=1.5*z;
subplot(2,2,3)
imshow(C)
title('contrast image')

%brghtness
B=1.5*z+50;
subplot(2,2,4)
imshow(B)
title('bright image’)