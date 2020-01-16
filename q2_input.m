% rgb to grayscale conversion
% eqn:- grayscale value at (i, j) = 0.2989 * R(i, j) + 0.5870 * G(i, j) + 0.1140 * B(i, j);
% input from user
img=imread('rgb.jfif');

[M, N, Z]=size(img);
gray_img=zeros(M, N, 'uint8');
x=input('x');
y=input('y');
z=input('z');
for i=1:M
         for j=1:N
               gray_img(i, j)=((img(i, j,1)*x)+(img(i, j,2)*y)+(img(i, j,3)*z))/3;
         end
end

imshow(gray_img)