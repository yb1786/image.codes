%intensity enhancement of gray image
x=imread('C:\Users\STUDENT\Desktop\oip.jpg') ;
subplot(3,3,1)
imshow(x)
title('original image')

z=rgb2gray(x);
subplot(3,3,2)
imshow(z)
title('Gray image')

l=256;
s=(l-1)-z;
subplot(3,3,3)
imshow(s)
title('intensity enhanced image')

%quantize image in 4 level
I=imresize(x,[256,256]);
quantized=I
for i=1:256;
for j=1:256;
if I(i,j)<=64;
quantized(i,j)=64;
else if I(i,j)<=128;
quantized(i,j)=128;
else if I(i,j)<=192;
quantized(i,j)=192;
else if I(i,j)<=256;
quantized(i,j)=256;
end
end
end
end
end
end
subplot(3,3,4)
imshow(quantized)
title('quantized image')

%divide image in 4 unequal parts
I=imresize(x,[256,256]);
i1=I(1:128,1:256);
i2=I(129:256,1:128);
i3=I(129:192,129:256);
i4=I(193:256,129:256);
subplot(3,3,5)
imshow(i1)
title('one part')
subplot(3,3,6)
imshow(i2)
title('second part')
subplot(3,3,7)
imshow(i3)
title('third part')
subplot(3,3,8)
imshow(i4)
title('fourth part’)