
% PROGRAM TO IMPLEMENT A HIGH PASS FILTER %

close all;
clc;
clf;
 
a=[-1 -1 -1;-1 8 -1;-1 -1 -1];
a=a/9;
b=imread('saturn.png');

figure(1);
subplot(2,2,1);
imshow(b);

title('Original Image');
c=imnoise(b,'salt & pepper',0.05);
subplot(2,2,2);
imshow(c);
title('Image with salt & pepper noise');

d=conv2(c,a);
subplot(2,2,3);
imshow(d);
title('Result of 3 x 3 high pass filtering');

figure(2);
subplot(2,2,1);
imshow(b);
title('Original Image');

c=imnoise(b,'gaussian');
subplot(2,2,2);
imshow(c);
title('Image with gaussian noise');

d=conv2(c,a);
subplot(2,2,3);
imshow(d);
title('Result of 3 x 3 high pass filter');
