function imagen_filtrada = mediana(imagen_con_ruido, vecindario)
    % Obtener dimensiones de la imagen
    [m, n] = size(imagen_con_ruido);
    % Inicializar la imagen filtrada
    imagen_filtrada = uint8(zeros(m, n));
    
    % Recorrer la imagen
    for i = 1:m
        for j = 1:n
            % Obtener el vecindario para el píxel actual
            vecindario_pixels = obtener_vecindario(imagen_con_ruido, i, j, vecindario);
            % Calcular la mediana del vecindario
            mediana_valor = median(vecindario_pixels(:));
            % Asignar el valor de la mediana a la imagen filtrada
            imagen_filtrada(i, j) = mediana_valor;
        end
    end
end

function vecindario_pixels = obtener_vecindario(imagen, x, y, vecindario)
    % Obtener dimensiones de la imagen
    [m, n] = size(imagen);
    % Calcular límites del vecindario
    min_x = max(1, x - floor(vecindario / 2));
    max_x = min(m, x + floor(vecindario / 2));
    min_y = max(1, y - floor(vecindario / 2));
    max_y = min(n, y + floor(vecindario / 2));
    % Obtener el vecindario de la imagen
    vecindario_pixels = imagen(min_x:max_x, min_y:max_y);
end
