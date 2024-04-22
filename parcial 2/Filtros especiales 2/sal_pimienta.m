function salPimientaImg = sal_pimienta(imagen, porcentaje_sal, porcentaje_pimienta)
    % Crear una matriz de valores aleatorios del mismo tamaño que la imagen
    aleatorios = rand(size(imagen));

    % Aplicar filtro de sal
    imagen_sal = imagen;
    imagen_sal(aleatorios < porcentaje_sal) = 255;

    % Aplicar filtro de pimienta
    imagen_pimienta = imagen_sal;
    imagen_pimienta(aleatorios > 1 - porcentaje_pimienta) = 0;

    % Asignar la imagen filtrada como salida
    salPimientaImg = imagen_pimienta;
end