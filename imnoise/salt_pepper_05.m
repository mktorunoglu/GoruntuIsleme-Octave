A = imread ('C:\Users\Mehmet Kamil\Desktop\octave\safari_2d.jpg');
sat = size(A)*[1;0];
sut = size(A)*[0;1];

C = imnoise(A, 'salt & pepper', 0.05);
imwrite(C, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_2d_salt_pepper_05.jpg');