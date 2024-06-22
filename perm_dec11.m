function C1=perm_dec11(I,rk,ck)
s=size(I);

for i=1:s(1)
    for j = 1:s(2)
        C(rk(i,j),j) = I(i,j);
    end
end
for i=1:s(1)
    for j = 1:s(2)
        C1(i,ck(i,j)) = C(i,j);
    end
end
