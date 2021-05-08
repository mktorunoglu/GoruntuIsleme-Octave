A = imread('C:\Users\Mehmet Kamil\Desktop\octave\safari.jpg');

satir = size(A)*[1; 0; 0];
sutun = size(A)*[0; 1; 0];

center_x = sutun / 2;
center_y = satir / 2;

alfa = -pi / 6;     % döndürme açısı

B = ones(satir, sutun, 3);
B = B.*255;
B = uint8(B);

for i=1:satir
  for j=1:sutun
    orjin = A(i, j, :);
    l = ceil(cos(alfa) * (j - center_x) - sin(alfa) * (i - center_y) + center_x);
    k = ceil(sin(alfa) * (j - center_x) + cos(alfa) * (i - center_y) + center_y);
    
    if((k <= satir) && (l <= sutun)) && ((k >= 1) && (l >= 1))
      B(k, l, :) = uint8(orjin);
    end
  endfor
endfor

imwrite(B, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_rotate_2.jpg');
