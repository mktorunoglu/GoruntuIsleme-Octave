A = imread('C:\Users\Mehmet Kamil\Desktop\octave\safari_2d.jpg');

satir = size(A)*[1;0];
sutun = size(A)*[0;1];

orjin = A;
alfa = pi / 8;

for i=1:satir
  for j=1:sutun
    delta = (j - (sutun / 2)) * sin(alfa) - (i - (satir / 2)) * cos(alfa);
    bx = ceil(j - 2 * delta * sin(alfa));
    by = ceil(i + 2 * delta * cos(alfa));
    
    if(bx > 0 && bx <= sutun) && (by > 0 && by <= satir)
      B(by, bx) = orjin(i, j);
    end
  endfor
endfor

imwrite(B, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_2d_mirroring_angled.jpg');
