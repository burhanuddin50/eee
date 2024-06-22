% v0=[0.3; -0.4; 1.2; 1];
% k=0.2 ;
% 
% [t, v] = ode45('lu_system', [0 500],[1.2;0.8;1.6;0.7]);
% 
% [t, v1] = ode45('lu_system',[0 500],[1.2;0.8;1.6;0.7]);
% plot(v(:,1)); hold on;
% plot(v1(:,1))
I = imread('baboon.png');
a = randi(1000,[512 512]);
[temp ckk] = sort(a,2);
[temp rkk] = sort(a);
parfor i =1:3
    II(:,:,i) = perm_enc11(I(:,:,i),rkk,ckk);
end

parfor i =1:3
    III(:,:,i) = perm_dec11(II(:,:,i),rkk,ckk);
end
imshow(uint8(III));