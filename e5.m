clc;
clear all;
%% Image synthesises
I1=zeros (10, 50);
I2=ones (10, 50);
I=[I1; I2; I1; I2; I1; I1; I2; I2; I1];
%figure;
subplot(2,2,1)
imshow (I);
x= [25 25];
y=[0 100];
subplot(2,2,2)
improfile(I, x, y) ;
% Perfect square wave
I3=zeros(25,50) ;
I4=ones(25,50);
Inew=[I3;I4;I3;I4];
%figure;
subplot(2,2,3)
imshow(Inew);
subplot(2,2,4)
improfile(Inew, x, y);
sgtitle(‘102156002)