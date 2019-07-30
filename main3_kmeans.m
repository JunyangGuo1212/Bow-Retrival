% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% ��������
clc; clear all;
close all;
clusterNum = 300;
clusterDistanceType = 'cityblock';
maxIter = 500;
load('SelectHist.mat');

%% ����
SelectHist_Y = double(SelectHist_Y);
tic
[Idx,C] = kmeans(SelectHist_Y,clusterNum,'distance',clusterDistanceType,'MaxIter',maxIter);
runningtime = toc

save('ClusterInfo.mat','Idx','C');