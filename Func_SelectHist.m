function y = Func_SelectHist(x,ratio)
    m = size(x,1);
    BlockNum = round(ratio*m);
    p=randperm(m,BlockNum);  %����һ�д�1��n�������е�num��������num����Ҳ�ǲ���ͬ��
    p=sort(p,2);
    y=[];
    for i=1:BlockNum
        y=[y;x(p(i),:)];
    end
end