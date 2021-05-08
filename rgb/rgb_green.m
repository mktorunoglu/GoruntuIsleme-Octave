A = imread('C:\Users\Mehmet Kamil\Desktop\octave\safari.jpg')
size(A)

x = zeros(3)
x = zeros(3, 4)
x = zeros(3, 4, 2)

B = zeros(183, 275, 3)
B = uint8(B)
B(:, :, 2) = A(:, :, 2)

imshow(B)
imwrite(B, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_green.jpg')
