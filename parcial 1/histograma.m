clc;
%Formula 1
obj = imread("images/descargar.jpg");
%figura original
%figure(1);
imshow(obj);
[m,n,p] = size(obj);
for i=1 : m
    for j=1 : n
        x = obj(i,j)*0.299 + obj(i,j)*0.587 + obj(i,j)*0.114;
        obj(i,j,1) = x;
        obj(i,j,2) = x;
        obj(i,j,3) = x;
    end
end
%Por pesos
a = imread("images/descargar.jpg");
pesos = [0.2989,0.5870,0.1140];
apesos = a(:,:,1)*pesos(1)+a(:,:,2)*pesos(2)+a(:,:,3)*pesos(3);
figure(2);
imshow(apesos)
%Por promedio
%figure(3);
imshow(obj);
%Binario
binario = apesos;
[m,n,p] = size(binario);
for i = 1 : m
    for j = 1 : n
        if a(i,j) <= 128
            binario(i,j)=0;
        else
            binario(i,j) = 255;
        end
    end
end
%figure(4);
imshow(binario);

%Im = Imread("images/descargar.jpg");
Im = obj;
Im = imshow(Im);

[FIL, COL] = size(obj);
pixmax = 256;
tam = zeros(pixmax);

for rxp = 1:FIL
    for ryp = 1:COL
        rxyp = apesos(rxp, ryp);
        for val = 1:pixmax
            if rxyp == val
                tam(val) = tam(val) + 1;
            end
        end
    end
end

figure(5);
stem(tam);

%Histograma Acumulativo
H = [1:256];
Vo = 0;

for ru = 1:256
    H(ru) = Vo + tam(ru);
    Vo = H(ru);
end
figure(6)