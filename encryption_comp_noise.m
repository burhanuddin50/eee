function [CC , T1] = encryption_comp_noise(R,level,index,K1,K2)
%==========1. Applying Wavelet==========
T= wpdec2(double(R),level,'db4');

%==========2. Block merge shuffling=============
T1=T;
DN = read(T,'cfs',index:(4^level)+index-1);
ruf = DN{1,1};
e = size(ruf);
rufc = matrix_encryption_col(ruf,e(1),e(2),K1);
rufc = double((bitxor(bitxor(int16(rufc),int16(K1),'int16'),int16(K2),'int16')))+double(rufc-round(rufc));
rufc = matrix_encryption_row(rufc,e(1),e(2),K2);
DN{1,1} = rufc;
 for i =index:(4^level)+index-1
    cfs = noise(DN{1,i});
    T1 = write(T1,'cfs',i,cfs);
 end 
 
 %===============================Concotenating====================
 C = read(T1,'cfs',index:(4^level)+index-1);
 ruf3 = [C{1,1} C{1,2}];
 idx=3;
for i =index:(4^level)+index-3
    ruf3 =[ruf3 C{1,idx}];
    idx = idx+1;
end
z = size(ruf3)
CC = reshape(ruf3, [z(1)*2, z(2)/2]);
