clc;
tic;
%dwtmode('per');
I = imread('baboon.png');
O_baboon=I;
%I = rgb2ycbcr(I);
%==============================Intershuflling between R,G and B=========
II = reshape(I, [128 64 96]);
III = perm_enc_3d(uint16(II),uint16(key2),uint16(key1),uint16(key3));
I1 = reshape(III, [512 512 3]);
for i =1:3
    I2(:,:,i) = perm_enc(I1(:,:,i),rk(i,:),ck(i,:),int16(key4));
end
% I2(:,:,1) = perm_enc(I1(:,:,1),rk1,ck1,uint16(key4));
% I2(:,:,2) = perm_enc(I1(:,:,2),rk2,ck2,uint16(key4));
% I2(:,:,3) = perm_enc(I1(:,:,3),rk3,ck3,uint16(key4));
toc;
tic;
%============3==================Wavelet packet================================
level=1;
index=0;
for i =0:level-1
    index = index+4^i;
end
index

I3 = zeros(512, 512 ,3);

for i =1:3
    [I3(:,:,i) ,T(i)]=encryption_comp((I2(:,:,i)),level,index,K1,K2);
end

% parfor i =1:3
%     I4(:,:,i) = perm_enc11(I3(:,:,i),rkk,ckk);
% end
% 
 figure; imshow(O_baboon);
 figure; imshow(mat2gray(I3),[]);


E_baboon=I3;
toc;
