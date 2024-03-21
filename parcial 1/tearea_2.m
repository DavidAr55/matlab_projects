clc;
close all;
clear;

imagen_original = imread("images/descargar.jpg");
imshow(imagen_original)

imagen_gris = rgb2gray(imagen_original);
[filas, columnas] = size(imagen_gris);
valor_maximo = 256;
histograma = zeros(valor_maximo);

% Histograma de la imagen original
for fila = 1:filas
    for columna = 1:columnas
        pixel = imagen_gris(fila, columna);
        for valor = 1:valor_maximo
            if pixel == valor
                histograma(valor) = histograma(valor) + 1;
            end
        end
    end
end

figure;
stem(histograma)

figure;
imshow(imagen_gris)

% Histograma acumulativo
histograma_acumulativo = 1:256;
acumulativo_anterior = 0;
for i = 1:256
    histograma_acumulativo(i) = acumulativo_anterior + histograma(i);
    acumulativo_anterior = histograma_acumulativo(i);
end

figure;
stem(histograma_acumulativo)

figure;
imshow(imagen_gris)

% Histograma Lineal (Ecualizado)
imagen_ecualizada = 1:256;
for fila = 1:filas
    for columna = 1:columnas
        valor_pixel = imagen_gris(fila, columna);
        if valor_pixel == valor
            imagen_ecualizada(fila, columna) = histograma(valor_pixel + 1) * 255 / (filas * columnas);
        end
    end
end

figure;
stem(imagen_ecualizada)

figure;
imshow(imagen_gris)