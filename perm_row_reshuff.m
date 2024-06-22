function C = perm_row_reshuff(I, rk)
X = reshape(I, [1024 768]);
tt = wpdec2(X,1,'db4');
%plot(tt);
for i=1:4
cfs = read(tt, 'cfs', [i]);
cfs = reshuffle(cfs,rk);
tt1 = write(tt,'cfs', [i], cfs); 
end
A = wprec2(tt); 
C = reshape(A, [512 512 3]);
%imshow(uint8(B))

function C=reshuffle(I,rk)
s=size(I);
for i=1:s(1)
    for j = 1:s(2)
        C(rk(i,j),j) = I(i,j);
    end
end
