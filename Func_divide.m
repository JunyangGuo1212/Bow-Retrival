% ��֪����ѭ��д�ܴ���������
function y=Func_divide(x,BlockSize)
    y = [];
    n = size(x,1)/8;
    m = size(x,2)/8;
    for i = 1:n
        for j = 1:m
            posx = (i-1)*BlockSize+1; %ĳ��8*8�Ŀ���ʼλ�ú�����
            posy = (j-1)*BlockSize+1; %ĳ��8*8�Ŀ���ʼλ��������
            temp = x(posx:posx+BlockSize-1,posy:posy+BlockSize-1);
            temp = reshape(temp',1,BlockSize*BlockSize); %��ת��������ƴ
            % ƽ��
            y = [y;temp];
        end
    end
end