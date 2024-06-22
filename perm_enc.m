function C=perm_enc(I,rk,ck,key4)
s=size(I);

for i=1:s(1)
    for j = 1:s(2)
        C(i,j) = bitxor(I(rk(i),ck(j)),key4(rk(i),ck(j)));
    end
end
C = mod(C,256);
