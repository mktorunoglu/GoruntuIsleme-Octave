clear all
A = imread('C:\Users\Mehmet Kamil\Desktop\octave\safari.jpg')

B = zeros(size(A));
B = uint8(B);
B = A;

satir = size(B)(1);
sutun = size(B)(2);
x_shift = 70;
y_shift = 30;

for i=1:satir
  for j=1:sutun
    new_i = i - y_shift;
    if(new_i < 1)
      new_i = new_i + satir
    end
    
    new_j = j + x_shift;
    C(new_i, new_j, 1) = B(i, j, 1);
    C(new_i, new_j, 2) = B(i, j, 2);
    C(new_i, new_j, 3) = B(i, j, 3);
  end
end

imwrite(C, 'C:\Users\Mehmet Kamil\Desktop\octave\safari_shift_2.jpg');
