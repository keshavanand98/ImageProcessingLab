% negation of an image 
img1=imread("images.jpeg");
[x,y,z]=size(img1);
img2=zeros(x,y,z);
for i=1:x
    for j=1:y
        for k=1:z
            img2(i,j,k)=255-img1(i,j,k);
        end
    end
end
img2=uint8(img2);
imshow(img2);