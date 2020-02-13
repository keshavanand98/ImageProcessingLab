% log transformation
clc; clear all; close all;
f=imread('images.jpeg');
g=rgb2gray(f);
c=input('Enter the constant value, c = ');
z=im2double(f);
tem=c*log(1+z)*256;
tem=uint8(tem);
imshow(tem);