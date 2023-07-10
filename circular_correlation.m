% Circular correlation using FFT

clc;
clear;
close;
%Taking signal sequence as input
x=[5 10; 15 20]	 %First signal x[m,n]
h=[6 9; 4 2]  	 %Second signal h[m,n]
h1=fliplr(h)    	%To fold the signal along column-wise
h2=flipud(h1)   	 %To fold the signal along row-wise
x1=(fft2(x));      	%Fourier transform of x[m,n]
h3=(fft2(h2)); %Fourier transform of h[-m,-n];
y1=x1.*h3    %Multiplication of spectrum of x[m,n] and h[-m,-n] to get Y [K,L]
y1 = real(y1)
y2=(ifft2(y1)) 

%Taking images as input
a=imread('lena.bmp');
a1=imread('lena.bmp');
figure(1),
imshow(a);
title('Original image');
h1=fliplr(a1);    	%To fold the signal along column-wise
figure(2),
imshow(h1);
h2=flipud(a1);   	 %To fold the signal along row-wise
figure(3),
imshow(h2);
x1=(fft2(a));      	%Fourier transform of x[m,n]
h3=(fft2(h2)); %Fourier transform of h[-m,-n];
y1=x1.*h3;    %Multiplication of spectrum of x[m,n] and h[-m,-n] to get Y [K,L]
figure(4),
imshow(y1);
y1 = real(y1);
y2=(ifft2(y1));
figure(5),
imshow(y2);

