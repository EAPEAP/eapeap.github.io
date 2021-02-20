addpath('./libs');
img=imread('input.jpg');
mask=imread('mask.png');
output = l1flattening(img, mask, struct());
imwrite(output, 'output.png');