tic
img=imread('model2.jpg');
tmp=imread("o2.png");
output=eap(img,tmp, 0.1, @(a, b)l1flattening(a, b, struct()));
imwrite(output, 'output.png');
toc
