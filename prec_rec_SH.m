function result=prec_rec_SH(Diff_Hist_Data)

image_class=10;%ͼ�����𣬹�10��
[N_test,N_train]=size(Diff_Hist_Data);
diff_hist=Diff_Hist_Data;
count=0;
pr_rc=zeros(N_test,10);%recall��ָ��0.1:1��ʮ��ֵ��ÿ�μ���precision��Ӧ��ֵ��
rc_count=zeros(N_test,10);%recall��ָ��0.1:1��ʮ��ֵ��ÿ�μ������ص�ͼ��������

for i=1:N_test
   [original,location]=sort(diff_hist(i,:));

   m=floor((i-1)/(N_test/image_class));
   j=N_train/100;
   
   flg=zeros(1,9); %��ֹcount==10ͳ�������Σ���Ϊ�п��ܼ�10��ͼ���count����Ϊ10������ͬ��
      
   while(j<=N_train)
       count=length(intersect(location(1:j),[m*(N_train/image_class)+1:(N_train/image_class)*(m+1)]));
       
       if(count==(N_train/100))
           if flg(1)==0
           rc_count(i,1)=j;
           pr_rc(i,1)=(N_train/100)/j;
           j=j+(N_train/100-1);
           flg(1)=1;
           else
           end;
       end
       if(count==2*(N_train/100))
           if flg(2)==0
           rc_count(i,2)=j;
           pr_rc(i,2)=2*(N_train/100)/j;
           j=j+(N_train/100-1);
           flg(2)=1;
           else
           end
       end
       if(count==3*(N_train/100))
           if flg(3)==0
           rc_count(i,3)=j;
           pr_rc(i,3)=3*(N_train/100)/j;
           j=j+(N_train/100-1);
           flg(3)=1;
           else
           end
       end
       if(count==4*(N_train/100))
           if flg(4)==0
           rc_count(i,4)=j;
           pr_rc(i,4)=4*(N_train/100)/j;
          j=j+(N_train/100-1);
          flg(4)=1;
           else
           end
       end
       if(count==5*(N_train/100))
            if flg(5)==0
           rc_count(i,5)=j;
           pr_rc(i,5)=5*(N_train/100)/j;
          j=j+(N_train/100-1);
          flg(5)=1;
            else
            end
          
       end
       if(count==6*(N_train/100))
           if flg(6)==0
           rc_count(i,6)=j;
           pr_rc(i,6)=6*(N_train/100)/j;
           j=j+(N_train/100-1);
           flg(6)=1;
           else
           end
       end
       if(count==7*(N_train/100))
           if flg(7)==0
           rc_count(i,7)=j;
           pr_rc(i,7)=7*(N_train/100)/j;
           j=j+(N_train/100-1);
           flg(7)=1;
           else
           end
       end
       if(count==8*(N_train/100))
           if flg(8)==0
           rc_count(i,8)=j;
           pr_rc(i,8)=8*(N_train/100)/j;
           j=j+(N_train/100-1);
           flg(8)=1;
           else
           end
       end
        if(count==9*(N_train/100))
            if flg(9)==0
           rc_count(i,9)=j;
           pr_rc(i,9)=9*(N_train/100)/j;
           j=j+(N_train/100-1);
           flg(9)=1;
            else
            end
        end
        if(count==10*(N_train/100))
           
           rc_count(i,10)=j;
           pr_rc(i,10)=10*(N_train/100)/j;
           break;
        end
        j=j+1;
         
   end
   
end

result=mean(pr_rc);

clear pr_rc rc_count;

end





