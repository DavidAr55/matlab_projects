clc;
close all;
clear;

% Leer la imagen
img = imread("../images/descargar.jpg");

% Convertir la imagen a escala de grises
imgGray = gray_img(img);

% Mostrar la imagen con el filtro de escala de grises
figure;
imshow(imgGray);
title('Imagen con escala de grises');


% Aplicar filtro de sal y pimienta a la imagen
salPimientaImg = sal_pimienta(imgGray, 0.01, 0.05);

figure;
imshow(salPimientaImg);
title('Imagen con filtro de Sal y Pimienta');