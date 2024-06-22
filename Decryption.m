tic;
for i =1:3
    D(:,:,i)=uint16(decryption_comp(T(i),level,index,K1,K2));
end

for i =1:3
    D1(:,:,i) = perm_dec(int16(D(:,:,i)),rk(i,:),ck(i,:),int16(key4));
end
% D1(:,:,1) = perm_dec(int16(D(:,:,1)),rk1,ck1,int16(key4));
% D1(:,:,2) = perm_dec(int16(D(:,:,2)),rk2,ck2,int16(key4));
% D1(:,:,3) = perm_dec(int16(D(:,:,3)),rk3,ck3,int16(key4));
II = reshape(D1, [128 64 96]);
III = perm_dec_3d(uint16(II),uint16(key2),uint16(key1),uint16(key3));
D2 = reshape(III, [512 512 3]);
%D2 = ycbcr2rgb(uint8(D2));
figure; imshow(uint8(D2));
toc;

D_baboon = D2;