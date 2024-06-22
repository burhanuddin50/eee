    A = double(E_baboon(:,:,1));
   B = double(E_baboon1(:,:,1));
     r = size(A)
     npcr =0;
     uaci = double(0);
     count=0;
     for i=1:r(1)
         for j =1:r(2)
             if (A(i,j) == B(i,j) )
                 D(i,j) =0;
                 
             else
                 D(i,j) = 1;
                 count = count+1;
             end
             npcr = npcr +D(i,j);
             
             temp(i,j) = abs(A(i,j) - B(i,j));
             uaci = uaci+temp(i,j);
         end
     end
%      abs(A(1,2) - B(1,2))
%      npcr
 %     uaci
 npcr
     npcr = double(count)/(r(1)*r(2)) *100
     uaci = double(uaci)/(128*r(1)*r(2)) *100
