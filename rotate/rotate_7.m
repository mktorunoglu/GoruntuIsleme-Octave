A = imread('C:\Users\Mehmet Kamil\Desktop\octave\safari.jpg');

satir = size(A)(1);
sutun = size(A)(2);

shfact = 100;
orjin = A;

for i=1:satir
  for j=1:sutun
    k = floor(i + shfact * i / sutun);
    l = floor(j + shfact * sin(pi * i / satir));
    B(k, l, :) = orjin(i, j, :);
  endfor
endfor

imwrite(B, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_rotate_7.jpg');