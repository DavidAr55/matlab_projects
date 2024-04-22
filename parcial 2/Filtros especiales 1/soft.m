function softImg = soft(imgGray)
    % Definir el tamaño del kernel triangular
    kernel_size = 5;

    % Calcular el desplazamiento del centro del kernel
    center = floor(kernel_size / 2) + 1;

    % Crear el kernel triangular
    triangular_kernel = zeros(kernel_size);
    for i = 1:kernel_size
        for j = 1:kernel_size
            triangular_kernel(i, j) = max(abs(i - center), abs(j - center)) + 1;
        end
    end

    % Normalizar el kernel para que la suma sea 1
    triangular_kernel = triangular_kernel / sum(triangular_kernel, 'all');

    % Convertir la imagen a double
    A = double(imgGray) / 255;

    % Aplicar el filtro de suavizado "soft" a la imagen en escala de grises
    softImg = conv2(A, triangular_kernel, 'same');
end