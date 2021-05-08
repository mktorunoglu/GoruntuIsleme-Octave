% Örnek dosyanın 3x3 konvolüsyon ile Sobel filtresini alan fonksiyon

A = imread ('C:\Users\Mehmet Kamil\Desktop\octave\safari_2d.jpg');
sat = size(A)*[1;0];
sut = size(A)*[0;1];

for i=1:sat
  for j=1:sut
    B(i+1, j+1) = A(i, j);
    
 	  if i == 1
	    B(1, j) = A(1, j);
	  end
	
    if i == sat
	    B(sat+2, j+1) = A(sat, j);
	  end
	
	  if j == 1
	    B(i+1, 1) = A(i, 1);
	  end
    
	  if j == sut
	    B(i+1, sut+2) = A(i, sut);
	  end
  end
end

B(1, 1) = A(1, 1);
B(sat+2, 1) = A(sat, 1);
B(1, sut+2) = A(1, sut);
B(sat+2, sut+2) = A(sat, sut);

A = 0;
A = B;

orj = double(A);
cnvx = [-1 0 1; -2 0 2; -1 0 1];
cnvy = [1 2 1; 0 0 0; -1 -2 -1];

for i=1:sat
  for j=1:sut
    tmp = [orj(i, j) orj(i, j+1) orj(i, j+2);
    orj(i+1, j) orj(i+1, j+1) orj(i+1, j+2); 
    orj(i+2, j) orj(i+2, j+1) orj(i+2, j+2)];
    
    Bx = uint8(sum(sum(tmp.*cnvx)));
    By = uint8(sum(sum(tmp.*cnvy)));
    Bxy = floor(Bx + By);
    
    Ax(i, j) = Bx;
    Ay(i, j) = By;
    Axy(i, j) = Bxy;
  end
end

imwrite(Ax, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_2d_konvolusyon_sobel_x.jpg');
imwrite(Ay, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_2d_konvolusyon_sobel_y.jpg');
imwrite(Axy, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_2d_konvolusyon_sobel_xy.jpg');
