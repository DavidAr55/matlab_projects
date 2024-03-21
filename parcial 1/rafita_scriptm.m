clc;
close all;
clear;
img1 = imread('images/descargar.jpg');
img2 = imread('images/descargar.jpg');
% figure(1);
imshow(img1);
% ESCALA DE GRISES 1
pesos = [0.299 0.587 0.114];
apesos = (img1(:,:,1)*pesos(1) + img1(:,:,2)*pesos(2) + img1(:,:,3)*pesos(3));
figure(2);
imshow(apesos);
% HISTOGRAMA ORIGIBNAL
[m,n,p] = size(img1);
pixmax = 256;
tam = zeros(pixmax);
for rxp=1:m
    for ryp=1:n
        rxyp=apesos(rxp, ryp);
        for val=1:pixmax
            if rxyp == val
                tam(val) = tam(val)+1;
            end
        end
    end
end
figure(3);
stem(tam);