A = imread('C:\Users\Mehmet Kamil\Desktop\octave\safari.jpg');

satir = size(A)(1);
sutun = size(A)(2);

shfact = 100;
orjin = A;

for i=1:satir
  for j=1:sutun
    k = i;
    l = floor(j + shfact * abs(sin(2 * pi * i / satir)));
    B(k, l, :) = orjin(i, j, :);
  endfor
endfor

imwrite(B, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_rotate_6.jpg');
