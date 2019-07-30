% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% ��������
clc; clear all;
close all;
ImgNum = 1000; 
ImgFolder = './test1/';
ImgInfo = cell(ImgNum,1);
load('ImgInfo.mat');
LocalHist_Y = cell(ImgNum,1);

%% �ָ�ͼƬ
% for i = 1:ImgNum
%     ImgHist = cell2mat(ImgInfo(i));
% 
%     %�ú��������ǰ�ԭ������8*8�Ŀ���зָ�,����ĵڶ�������8����������
%     %ÿһ��8*8�ľ��󷵻�ֵ���ǽ�����ƽ�̳�һ��
%     %��i��8*8�Ŀ飬��Ӧ�ľ���LocalHist_Y{i}�ĵ�i��
%     LocalHist_Y{i} =Func_divide(ImgHist(:,:,1),8);    
% end
% save('LocalHist.mat','LocalHist_Y');
load('LocalHist.mat');

%% �����ȡ��������
% ���ݴ������ɣ�����Ŀ���ȥ��ϰһ�¸�ͳ������������һ�������ʱ��һ����Ҫ������ȡ������ֵ��
% �������ѡȡһ���ֽ��о���
SelectHist_Y = [];
ratio = 0.2; % ѡȡ��ı���
for i=1:ImgNum
    SelectHist_Y = [SelectHist_Y;Func_SelectHist(LocalHist_Y{i},ratio)];
end
save('SelectHist.mat','SelectHist_Y');

