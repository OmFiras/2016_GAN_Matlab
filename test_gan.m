netStruct = load('./data/GAN/net-epoch-9.mat');
net = dagnn.DagNN.loadobj(netStruct.net);
net.mode = 'test';
net.move('gpu');
net.conserveMemory = false;
%im_mean = net.meta.normalization.averageImage;
im = rand(32,32,1,'single');
net.eval({'data_rand',gpuArray(im)});
result = gather(net.vars(net.getVarIndex(('G3x'))).value);% + net.meta.averageImage;
imshow(result);