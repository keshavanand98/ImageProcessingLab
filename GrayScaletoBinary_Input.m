I = imread('sample1.jpg');
[x,y,z]=size(I);
disp(I);
I = double(I);
threshold=input('Enter input');
binary=zeros(x,y);
for i=1:x1
    for j=1:y
        if I(i,j) >=threshold
         binary(i,j)=1;
        
        else
            binary(i,j)=0;
        end
    end
end
imshow(binary);

