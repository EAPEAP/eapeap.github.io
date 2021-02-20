myDir = './DanbooRegion2020/train/';
myFiles = dir(fullfile(myDir,'*.image.png'));

fprintf("%d\n", length(myFiles));
mkdir("tmp");
mkdir("results");

for i = 1 : length(myFiles)
    name = strcat(myDir, myFiles(i).name);
    status = copyfile(name, './tmp');
    status = movefile(strcat('./tmp/', myFiles(i).name), './tmp/input.png');
    
    img=imread('./tmp/input.png');
    img = imresize(img, 0.5);
    output=eap(img, 0.1, @(a, b)l1flattening(a, b, struct()));
    imwrite(output, './tmp/output.png');
    
    for j = 1: 5
        copyfile(strcat('./tmp/output', num2str(j), '.png'), strcat('./results/', myFiles(i).name, '.output', num2str(j), '.png'));
        copyfile(strcat('./tmp/mask', num2str(j), '.png'), strcat('./results/', myFiles(i).name, '.mask', num2str(j), '.png'));
    end
end