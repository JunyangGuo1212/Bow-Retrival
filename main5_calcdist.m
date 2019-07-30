% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% ��������
clc; clear all;
close all;
load('Final_Histmat');
ImgNum = 1000;

%% �����ͼƬ������ͼƬ��ľ���
Hist_Dist=[];
for i=1:ImgNum
    for j=1:ImgNum
        a = Final_Hist(i,:);
        b = Final_Hist(j,:);
        similarDistance(j) = pdist2(a,b,'cityblock');
    end
    Hist_Dist = [Hist_Dist;similarDistance];
end
save('Hist_Dist.mat','Hist_Dist');

%% ����
img = 36; %��36��ͼƬ
temp = Hist_Dist(36,:);
[Y,I] = sort(temp);