% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% ��������
clc; clear all;
close all;
ImgNum = 1000; 
ImgFolder = './test1/';
ImgInfo = cell(ImgNum,1);

%% ��ȡͼƬ��Ϣ
for i = 1:ImgNum
    ImgName = [ImgFolder int2str(i-1)];
    ImgName = [ImgName '.jpg'];
    disp(i);
    RGBImg = imread(ImgName);
    YUVImg = rgb2ycbcr(RGBImg);
    ImgInfo{i} = YUVImg;
end

%% �洢ͼƬ��Ϣ
save('ImgInfo.mat','ImgInfo');