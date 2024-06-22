function C=perm_dec(I,rk,ck,key4)
s=size(I);

for i=1:s(1)
    for j = 1:s(2)
        C(rk(i),ck(j)) = bitxor(I(i,j),key4(rk(i),ck(j)));
    end
end
C = mod(C,256);
