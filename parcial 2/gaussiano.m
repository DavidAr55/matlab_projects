function gaussianoImg = gaussiano(imgGray)
    % Definir el tamaño del kernel gaussiano
    kernel_size = 5;

    % Calcular el desplazamiento del centro del kernel
    center = floor(kernel_size / 2) + 1;

    % Crear el kernel gaussiano utilizando la función de distribución normal
    sigma = 1; % Parámetro de dispersión
    [x, y] = meshgrid(1:kernel_size, 1:kernel_size);
    gauss_kernel = exp(-((x - center).^2 + (y - center).^2) / (2 * sigma^2));
    gauss_kernel = gauss_kernel / sum(gauss_kernel, 'all'); % Normalizar el kernel para que la suma sea 1

    % Convertir la imagen a double
    A = double(imgGray) / 255;

    % Aplicar el filtro gaussiano a la imagen en escala de grises
    gaussianoImg = conv2(A, gauss_kernel, 'same');
end
