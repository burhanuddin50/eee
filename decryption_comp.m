function CCC = decryption_comp(T1,level,index,K1,K2)
%==========2. Block merge shuffling=============
T2=T1;
DN = read(T1,'cfs',index:(4^level)+index-1);
ruf = DN{1,1};
e = size(ruf);
rufc = matrix_decryption_row(ruf,e(1),e(2),K2);
rufc = double((bitxor(bitxor(int16(rufc),int16(K1),'int16'),int16(K2),'int16')))+double(rufc-round(rufc));
rufc = matrix_decryption_col(rufc,e(1),e(2),K1);
DN{1,1} = rufc;
 for i =index:(4^level)+index-1
    cfs = DN{1,i};
    T2 = write(T2,'cfs',i,cfs);
 end 
 
CCC = wprec2(T2);
