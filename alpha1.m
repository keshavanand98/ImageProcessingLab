Ibg=imread('hello.jpg');
Ifg=imread('second.jpg');

% if length(size(Ibg))==3
%         Ibg=rgb2gray(Ibg);
% end
% if length(size(Ifg))==3
%         Ifg=rgb2gray(Ifg);
% end

alpha = 0.2;

[x,y,z] = size(Ifg);
I = zeros(x,y,z);
I = uint8(I);
for i = 1:x
    for j = 1:y
        for k=1:z
            I(i,j,k) = alpha * Ibg(i,j,k) + (1 - alpha) * Ifg(i,j,k);
        end
    end
end

subplot(1,3,3); imshow(Ibg);
subplot(1,3,2); imshow(Ifg);
subplot(1,3,1); imshow(I);
