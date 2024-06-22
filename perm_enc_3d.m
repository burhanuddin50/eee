function C=perm_enc_3d(I,key1,key2,key3)
s=size(I);
C = zeros(s(1),s(2),s(3));
for i=1:s(1)
    for j = 1:s(2)
        for k=1:s(3)
            C(i,j,k) = bitxor(I(i,j,key2(key1(i,j),k)),  key3(i,j,key2(key1(i,j),k)));
        end
    end
end
C = mod(C,256);