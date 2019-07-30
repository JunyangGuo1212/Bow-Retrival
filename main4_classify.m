% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% ��������
clc; clear all;
close all;
load('ClusterInfo.mat');
load('LocalHist.mat');
ImgNum = 1000; 

%% ��ÿ��ͼƬÿ������з���
clusterNum = size(C,1);
Final_Hist=zeros(ImgNum,clusterNum);%��¼ÿ��ͼƬ��ֱ��ͼ
for i = 1:ImgNum;
    similarDistances = pdist2(cell2mat(LocalHist_Y(i)),C); 
    [minElements,idx] = min(similarDistances,[],2);
    bins = 0.5:1:clusterNum+0.5;
    hist = histogram(idx,bins);
    Features = hist.Values;
    Final_Hist(i,:) = Features;
end

save('Final_Hist.mat','Final_Hist');