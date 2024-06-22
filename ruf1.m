I = imread('baboon.png');
iii = mat2gray(I(:,:,1));
level=1;
index=0;
for i =0:level-1
    index = index+4^i;
end
index
K=randi(95,[96 96]);
[temp K1] = sort(K);
K=randi(95,[96 96]);
[temp K2] = sort(K,2);
% [C1 ,T]=encryption_comp(I(:,:,1),level,index,K1,K2);
% C=decryption_comp(T,level,index,K1,K2);
% figure; imshow(uint8(C));
% figure; imshow(uint8(C1))