% rgb to grayscale conversion
% eqn:- grayscale value at (i, j) = 0.2989 * R(i, j) + 0.5870 * G(i, j) + 0.1140 * B(i, j);
img=imread('rgb.jfif');

[M, N, Z]=size(img);
gray_img=zeros(M, N, 'uint8');
for i=1:M
         for j=1:N
               gray_img(i, j)=((img(i, j,1)*0.2989)+(img(i, j,2)*0.5870)+(img(i, j,3)*0.114))/3;
         end
end

imshow(gray_img)