        R = O_baboon(:,:,1);
        G = O_baboon(:,:,2);
        B = O_baboon(:,:,3);
        cR = I2(:,:,1);
        cG = I2(:,:,2);
        cB = I2(:,:,3);



%===================================Horizontal direction================
 correlation(R(265:266,:), R(266:267,:), 1);
 correlation(cR(265:266,:), cR(266:267 ,:), 2);

 correlation(G(265:285,:), G(266:286,:), 3);
 correlation(cG(265:285,:), cG(266:286,:), 4);
% 
% correlation(B(265:285,:), B(266:286,:), 5);
% correlation(cB(265:285,:), cB(266:286,:), 6);
%===================================Vertical direction================
%   correlation(R(:,1:20),  R(:,266:286), 1);
%  correlation(cR(:,1:20), cR(:,266:286), 2);
% 
% correlation(R(:,265:285), R(:,266:286), 1);
% correlation(cR(:,265:285), cR(:,266:286), 2);
% 
% correlation(G(:,201:211), G(:,202:212), 3);
% correlation(cG(:,201:211), cG(:,202:212), 4);
% 
% correlation(B(:,201:211), B(:,202:212), 5);
% correlation(cB(:,201:211), cB(:,202:212), 6);

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

