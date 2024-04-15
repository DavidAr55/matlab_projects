function laplaceImg = laplace(imgGray)
    % Definir el kernel del filtro de Laplace
    A = double(imgGray)./255;
    [m,n,p] = size(A);

    % Definir el kernel del filtro de Laplace
    lap = [ 0,  0, -1,  0,  0;
            0, -1, -2, -1,  0;
           -1, -2, 16, -2, -1;
            0, -1, -2, -1,  0;
            0,  0, -1,  0,  0];
    
    % Aplicar el filtro de Laplace a la imagen en escala de grises
    % laplaceImg = zeros(m, n);
    % for i = 3:m-2
    %     for j = 3:n-2
    %         laplaceImg(i ,j) = lap(1,1)*A(i-2,j-2) + lap(1,2)*A(i-2,j-1) + lap(1,3)*A(i-2,j) + lap(1,4)*A(i-2,j+1) + lap(1,5)*A(i-2,j+2) ...
    %                          + lap(2,1)*A(i-1,j-2) + lap(2,2)*A(i-1,j-1) + lap(2,3)*A(i-1,j) + lap(2,4)*A(i-1,j+1) + lap(2,5)*A(i-1,j+2) ...
    %                          + lap(3,1)*A(i,j-2)   + lap(3,2)*A(i,j-1)   + lap(3,3)*A(i,j)   + lap(3,4)*A(i,j+1)   + lap(3,5)*A(i,j+2) ...
    %                          + lap(4,1)*A(i+1,j-2) + lap(4,2)*A(i+1,j-1) + lap(4,3)*A(i+1,j) + lap(4,4)*A(i+1,j+1) + lap(4,5)*A(i+1,j+2) ...
    %                          + lap(5,1)*A(i+2,j-2) + lap(5,2)*A(i+2,j-1) + lap(5,3)*A(i+2,j) + lap(5,4)*A(i+2,j+1) + lap(5,5)*A(i+2,j+2);
    %     end
    % end

    % Aplicar el filtro de Laplace a la imagen en escala de grises
    laplaceImg = conv2(A, lap, 'same');
end
