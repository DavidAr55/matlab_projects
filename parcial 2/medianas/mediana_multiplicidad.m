function imagen_filtrada = mediana_multiplicidad(imagen_con_ruido, multiplicidad)
    % Obtener dimensiones de la imagen
    [m, n] = size(imagen_con_ruido);
    % Inicializar la imagen filtrada
    imagen_filtrada = uint8(zeros(m, n));
    
    % Recorrer la imagen
    for i = 1:m
        for j = 1:n
            % Obtener el vecindario para el píxel actual
            vecindario_pixels = obtener_vecindario(imagen_con_ruido, i, j, multiplicidad);
            % Calcular la mediana ponderada del vecindario
            mediana_valor = weighted_median(vecindario_pixels);
            % Asignar el valor de la mediana ponderada a la imagen filtrada
            imagen_filtrada(i, j) = mediana_valor;
        end
    end
end

function vecindario_pixels = obtener_vecindario(imagen, x, y, multiplicidad)
    % Obtener dimensiones de la imagen
    [m, n] = size(imagen);
    % Calcular límites del vecindario
    min_x = max(1, x - multiplicidad);
    max_x = min(m, x + multiplicidad);
    min_y = max(1, y - multiplicidad);
    max_y = min(n, y + multiplicidad);
    % Obtener el vecindario de la imagen
    vecindario_pixels = imagen(min_x:max_x, min_y:max_y);
end

function mediana_valor = weighted_median(vecindario)
    % Obtener el número total de píxeles en el vecindario
    num_pixels = numel(vecindario);
    % Ordenar los valores del vecindario
    vecindario_ordenado = sort(vecindario(:));
    % Calcular la posición de la mediana ponderada
    mediana_pos = ceil((num_pixels + 1) / 2);
    % Obtener el valor de la mediana ponderada
    mediana_valor = vecindario_ordenado(mediana_pos);
end
