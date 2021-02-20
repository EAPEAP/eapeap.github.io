img=imread('input.jpg');
mask=imread('mask.png');
output=TVL1denoise(img, mask, 1.0, 100);
imwrite(output, 'output.png');
