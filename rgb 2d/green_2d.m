A = imread ('C:\Users\Mehmet Kamil\Desktop\octave\safari.jpg');
Anew = A(:, :, 2);

imwrite(Anew, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_green_2d.jpg');
