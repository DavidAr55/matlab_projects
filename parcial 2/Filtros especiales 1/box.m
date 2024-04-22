function boxImg = box(imgGray)
    % Definir el kernel del filtro de box
    box_kernel = [0, 0, 0, 0, 0; 
                  0, 1, 1, 1, 0;
                  0, 1, 1, 1, 0;
                  0, 1, 1, 1, 0;
                  0, 0, 0, 0, 0];

    % Normalizar el kernel para que la suma sea 1
    box_kernel = box_kernel / sum(box_kernel, 'all');

    % Convertir la imagen a double
    A = double(imgGray) / 255;

    % Aplicar el filtro de box a la imagen en escala de grises
    boxImg = conv2(A, box_kernel, 'same');
end

