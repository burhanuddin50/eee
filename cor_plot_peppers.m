        R = O_peppers(:,:,1);
        G = O_peppers(:,:,2);
        B = O_peppers(:,:,3);
        cR = E_peppers(:,:,1);
        cG = E_peppers(:,:,2);
        cB = E_peppers(:,:,3);



%===================================Horizontal direction================
  correlation(R(55:75,:), R(56:76,:), 1);
  correlation(cR(55:75,:), cR(56:76 ,:), 2);
% 
% correlation(G(491:510,:), G(492:511,:), 3);
% correlation(cG(491:510,:), cG(492:511,:), 4);
% 
% correlation(B(4:24,:), B(3:23,:), 5);
% correlation(cB(4:24,:), cB(3:23,:), 6);
%===================================Vertical direction================
%   correlation(R(:,1:20),  R(:,2:21), 1);
%  correlation(cR(:,1:20), cR(:,2:21), 2);
% 
% correlation(R(:,6:26), R(:,7:27), 1);
% correlation(cR(:,6:26), cR(:,7:27), 2);
% 
% correlation(G(:,490:510), G(:,491:511), 3);
% correlation(cG(:,490:510), cG(:,491:511), 4);
% 
% correlation(B(:,3:23), B(:,4:24), 5);
% correlation(cB(:,3:23), cB(:,4:24), 6);

%===================================Diagonal direction================
idx=1;
l=1;
size1 = length(diag(R))
for m =1:10
% a = zeros(size1)-1;
% b = zeros(size1)-1;
m1 =m;
 l1 =l;
while ( l1 < size1 && m1 < size1)
        
       
        ar(idx) = R(l1,m1);
        br(idx) = R(l1+1,m1);
        cr(idx) = cR(l1,m1);
        dr(idx) = cR(l1+1,m1);
        
        ag(idx) = G(l1,m1);
        bg(idx) = G(l1+1,m1);
        cg(idx) = cG(l1,m1);
        dg(idx) = cG(l1+1,m1);
        
        ab(idx) = B(l1,m1);
        bb(idx) = B(l1+1,m1);
        cb(idx) = cB(l1,m1);
        db(idx) = cB(l1+1,m1);

        m1 = m1+1;
        l1 = l1+1;
        idx = idx+1;
end
end

%   correlation(ar, br, 1);
%   correlation(cr, dr, 2);
% %  
%   correlation(ag, bg, 3);
%   correlation(cg, dg, 4);
% %  
%   correlation(ab, bb, 5);
%   correlation(cb, db, 6);

