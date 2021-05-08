A = [1 2 3 3 5; 6 7 8 9 10; 11 12 13 14 15];
sat = size(A)*[1;0]
sut = size(A)*[0;1]

for i=1:sat
  for j=1:sut
    B(i+1, j+1) = A(i, j);  %A matrisi, B matrisinin merkezine taşınır
 	
    if i == 1
	    B(1, j+1) = A(1, j);  % A matrisinin 1. satırı B matrisinin 1. satırına kopyalanır
	  end
	
	  if i == sat
	    B(sat+2, j+1) = A(sat, j);  % A matrisinin son satırı B matrisinin son satırına kopyalanır
	  end
	
	  if j == 1
	    B(i+1, 1) = A(i, 1);  % A matrisinin 1. sütunu, B matrisinin 1. sütununa kopyalanır
    end

	  if j==sut
	    B(i+1, sut+2) = A(i, sut);  % A matrisinin son sütunu, B matrisinin son sütununa kopyalanır
	  end
  end
end

B(1, 1) = A(1, 1);
B(sat+2, 1) = A(sat, 1);
B(1, sut+2) = A(1, sut);
B(sat+2, sut+2) = A(sat, sut);
