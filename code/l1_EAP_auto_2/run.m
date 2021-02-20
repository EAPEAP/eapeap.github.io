tic
img=imread('s.png');
%mask=imread('mask0.png');
output=eap(img, 0.1, @(a, b)l1flattening(a, b, struct()));
imwrite(output, 'output.png');
toc
disp(['运行时间: ',num2str(toc)]);