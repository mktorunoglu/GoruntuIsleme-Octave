A = imread ('C:\Users\Mehmet Kamil\Desktop\octave\safari.jpg');
Anew = A(:, :, 3);

imwrite(Anew, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_blue_2d.jpg');
