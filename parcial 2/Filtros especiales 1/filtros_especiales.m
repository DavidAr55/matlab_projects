clc;
close all;
clear;

% Leer la imagen
img = imread("images/descargar.jpg");

% Convertir la imagen a escala de grises
imgGray = rgb2gray(img);

% Mostrar la imagen con el filtro de escala de grises
figure;
imshow(imgGray);
title('Imagen con escala de grises');

% Aplicar el filtro de Laplace a la imagen en escala de grises usando la función
laplaceImg = laplace(imgGray);

% Mostrar la imagen con el filtro de Laplace
figure;
imshow(laplaceImg);
title('Imagen Filtrada con Filtro de Laplace');

% Aplicar el filtro gaussiano a la imagen en escala de grises usando la función
gaussianoImg = gaussiano(imgGray);

% Mostrar la imagen con el filtro gaussiano
figure;
imshow(gaussianoImg);
title('Imagen Filtrada con Filtro Gaussiano');

% Aplicar el filtro de suavizado (soft) a la imagen en escala de grises usando la función
softImg = soft(imgGray);

% Mostrar la imagen con el filtro de suavizado
figure;
imshow(softImg);
title('Imagen Filtrada con Filtro Suavizado (Soft)');

% Aplicar el filtro de Box a la imagen en escala de grises usando la función
boxFilteredImg = box(imgGray);

% Mostrar la imagen filtrada
figure;
imshow(boxFilteredImg);
title('Imagen Filtrada con Filtro de Box');
