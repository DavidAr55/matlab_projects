clc;
close all,
clear;

img = imread("images/descargar.jpg");

figure(1);
imshow(img);

figure(2);
imgGray = rgb2gray(img);
imshow(imgGray);

[m,n,p] = size(img);

for i = 1: m
    for j = 1: n
        x = (img(i,j)*0.299 + img(i,j)*0.587 + img(i,j)*0.114);
        % x = img(i,j,1); x =  
    end;
end;

%binario

pesos = [0.2989, 0.5870, 0.1140];
aPesos = A(:,:,1)*pesos(1) + A(:,:,2)*pesos(2) + A(:,:,3)*pesos(3);

