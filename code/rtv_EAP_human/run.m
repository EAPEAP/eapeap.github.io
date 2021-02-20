img=imread('input.jpg');
mask=imread('mask.png');
output = tsmooth(img,mask,0.015,3);
imwrite(output, 'output.png');
