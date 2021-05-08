A = imread('C:\Users\Mehmet Kamil\Desktop\octave\safari_2d.jpg');

satir = size(A)*[1;0];
sutun = size(A)*[0;1];
orjin = A;

for i=1:satir
  for j=1:sutun
    A(i,j) = orjin(satir - i + 1, j);
  endfor
endfor

imwrite(A, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_2d_mirroring_y.jpg');
