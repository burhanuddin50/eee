function C = perm_row_shuff(I, rk)
X = reshape(I, [1024 768]);
t = wpdec2(X,1,'db4');
for i=1:4
cfs = read(t, 'cfs', [i]);
cfs = shuffle(cfs,rk);
t1 = write(t,'cfs', [i], cfs); 
end
A = wprec2(t1); 
C = reshape(A, [512 512 3]);
%imshow(uint8(B))

function C=shuffle(I,rk)
s=size(I);

for i=1:s(1)
    for j = 1:s(2)
        C(i,j) = I(rk(i,j),j);
    end
end
