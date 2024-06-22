function C1=perm_enc11_crop(I,rk,ck)
s=size(I);

for i=1:s(1)
    for j = 1:s(2)
        C(i,j) = I(i,ck(i,j));
        
    end
end

for i=1:s(1)
    for j = 1:s(2)
        
        C1(i,j) = C(rk(i,j),j);
    end
end
%C1(1:250,:) = 0;
C1(:,1:256)=0;

