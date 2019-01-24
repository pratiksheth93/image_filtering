
% PROGRAM TO IMPLEMENT SMOOTHING FILTER,AVERAGING FILTER & MEDIAN FILTER %

close all;
clc;
clf;

b=imread('cameraman.tif');
subplot(2,2,1);
imshow(b);
title('Original image');
c=imnoise(b,'salt & pepper',0.05);
subplot(2,2,2);
imshow(c);
title('Image with salt & pepper noise');

d=medfilt2(c,[3 3]);
subplot(2,2,3);
imshow(d);

e=medfilt2(c,[5 5]);
subplot(2,2,4);
imshow(e);

figure(2);
subplot(2,2,1);
imshow(b);
c=imnoise(b,'Gaussian');
subplot(2,2,2);
imshow(c);
title('Image with gaussian noise');

d=medfilt2(c,[3 3]);
subplot(2,2,3);
imshow(d);
title('Median Filtering');

e=medfilt2(c,[5 5]);
subplot(2,2,4);
imshow(e);
figure(3);
x=[1 1 1;1 1 1;1 1 1];
x=x/9;
subplot(2,2,1);
imshow(b);
title('Original Image');

c=imnoise(b,'salt & pepper noise',0.05);
subplot(2,2,2);
imshow(c);
title('Image with salt & pepper');

subplot(2,2,3);
d=conv2(c,x);
d=uint8(d);
imshow(d);
title('Result of average filtering');

y=[11111;11111;11111;11111;11111];
y=y/25;
subplot(2,2,4);
e=conv2(c,y);
e=uint8(e);
imshow(e);
title('Result of average filtering');

figure(4);
x=[111;111;111];
x=x/9;
subplot(2,2,1);
imshow(b);
title('Original Image');

c=imnoise(b,'gaussian');
subplot(2,2,2);
imshow(c);
title('Image with gaussian noise');

subplot(2,2,3);
d=conv2(e,x);
d=uint8(d);
imshow(d);
title('Result of 3 x 3 averaging filter');

bx=[11111;11111;11111;11111;11111];
bx=bx/25;
subplot(2,2,4);
e=conv2(c,bx);
e=uint8(e);
imshow(c);