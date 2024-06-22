function C1=perm_enc11(I,rk,ck)
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

