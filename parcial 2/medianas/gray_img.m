function imgGray = gray_img(img)
    % Conversión a escala de grises
    [m, n, ~] = size(img);
    imgGray = zeros(m, n);
    for i = 1:m
        for j = 1:n
            imgGray(i, j) = img(i, j, 1) * 0.299 + img(i, j, 2) * 0.587 + img(i, j, 3) * 0.114;
        end
    end
    imgGray = uint8(imgGray);
end
