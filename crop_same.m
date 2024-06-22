 R22 =E_lena(:,:,1);
 G22 =E_lena(:,:,2);
 B22 =E_lena(:,:,3);
         for g = 1:200
             for k = 1:200
                     %R22(g,k) =0;
                    % G22(g,k) =0;
                     B22(g,k) =1;
             end
         end
         
                 for g = 1:150
             for k = 1:150
                   %R22(g,k) =0;
                  %  G22(g,k) = 0;
                   % B22(g,k) =0;
             end
         end

s=size(D(:,:,1));
row=s(1);
col=s(2);
         for g = row-105:row
             for k = col-110:col
                 R22(g,k) = double(0);
                   % G22(g,k) = 0;
                 % B22(g,k) = 0;
             end
         end
         for g = 145:285
             for k =95:250
                 % R22(g,k) = 0;
                  G22(g,k) = 0;
                %    B22(g,k) = 0;
             end
         end
% 
%         
% 
         for g =row-125:row
             for k = 1:60
                % R22(g,k) = 0;
               %  G22(g,k) = 0;
                B22(g,k) = 0;
             end
         end
 C1(:,:,1) = double(R22);
 C1(:,:,2) = double(G22);
 C1(:,:,3) = double(B22);
 imshow((C1),[]);