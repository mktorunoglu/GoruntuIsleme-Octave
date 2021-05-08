A = imread ('C:\Users\Mehmet Kamil\Desktop\octave\safari_2d.jpg');
sat = size(A)*[1; 0];
sut = size(A)*[0; 1];

C = imnoise(A, 'salt & pepper', 0.3);
imwrite(C, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_2d_salt_pepper_30.jpg');

for i=1:sat
  for j=1:sut
    B(i+1, j+1, :) = C(i, j, :);
    
 	  if i == 1
	    B(1, j, :) = C(1, j, :);
	  end
    
	  if i == sat
	    B(sat+2, j+1, :) = C(sat, j, :);
	  end
	
	  if j == 1
	    B(i+1, 1, :) = C(i, 1, :);
    	  end

	  if j == sut
	    B(i+1, sut+2, :)=C(i, sut, :);
	  end
  end
end

B(1, 1, :) = C(1, 1, :);
B(sat+2, 1, :) = C(sat, 1, :);
B(1, sut+2, :) = C(1, sut, :);
B(sat+2, sut+2, :) = C (sat, sut, :);

for i=1:sat
  for j=1:sut
    winmd = [B(i, j) B(i, j+1) B(i, j+2)  B(i+1, j) B(i+1, j+1) B(i+1, j+2)  B(i+2, j) B(i+2, j+1) B(i+2, j+2)];
  
    if (B(i+1, j+1) == 0 || B(i+1, j+1) == 255)
      C(i, j) = median(winmd);
    end
  end
end

imwrite(C, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_2d_medyan_filtresi.jpg');