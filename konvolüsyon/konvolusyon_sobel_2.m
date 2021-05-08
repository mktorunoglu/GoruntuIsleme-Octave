A1 = imread('C:\Users\Mehmet Kamil\Desktop\octave\blue_hat.jpg');
A2 = rgb2hsv(A1);
sat = size(A2)(1);
sut = size(A2)(2);

imwrite(A2, 'C:\Users\Mehmet Kamil\Desktop\octave\blue_hat_rgb2hsv.jpg');

A = uint8(255*A2(:,:,1));
esik = 120;
A3 = 0;

for i=1:sat
  for j=1:sut
    if (A(i,j) > esik)
      A3(i,j) = 1;
    else 
      A3(i,j) = 0;
    end
  end
end

imwrite(A3, 'C:\Users\Mehmet Kamil\Desktop\octave\blue_hat_H_mask.jpg');

A = uint8(255*A2(:,:,2));
esik = 150

for i=1:sat
  for j=1:sut
    if (A(i,j) > esik)
      A4(i,j) = 1;
    else 
      A4(i,j) = 0;
    end
  end
end

imwrite(A4, 'C:\Users\Mehmet Kamil\Desktop\octave\blue_hat_S_mask.jpg');

Amsk = 0;
Amsk = (A3.*A4);
% Küçük yamaları yok etmek için bwareaopen(Amsk,25) işlemi yapılır.
% 25, bitişik beyaz piksellerin eşik değeridir. Daha az sayıda olanlar karartılır.
Amsk = bwareaopen(Amsk, 25);

imwrite(255*Amsk, 'C:\Users\Mehmet Kamil\Desktop\octave\blue_hat_full_mask_1.jpg');

A = A2(:,:,3);

imwrite(A, 'C:\Users\Mehmet Kamil\Desktop\octave\blue_hat_V_mask.jpg');

A1(:,:,1) = Amsk.*A1(:,:,1);
A1(:,:,2) = Amsk.*A1(:,:,2);
A1(:,:,3) = Amsk.*A1(:,:,3);

imwrite(A1, 'C:\Users\Mehmet Kamil\Desktop\octave\blue_hat_full_mask_2.jpg');
