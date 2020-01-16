I = imread('sample1.jpg');
[x,y,z]=size(I);
disp(I);
I = double(I);
sum=0;
for i=1:x
    for j=1:y
        sum=sum+I(i,j);
    end
end
threshold=sum/(x*y);
binary=zeros(x,y);
for i=1:x
    for j=1:y
        if I(i,j) >=threshold
         binary(i,j)=1;
        
        else
            binary(i,j)=0;
        end
    end
end
imshow(binary);

