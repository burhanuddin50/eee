
a1=double(O_peppers(:,:,1));
b1=double(E_peppers(:,:,1));
          
im1 = double(a1);
im2 = double(b1);

mse = sum((im1(:)-im2(:)).^2) / prod(size(im1))

psnr = 10*log10(127*127/mse)

%============================================================================
a1=double(O_peppers(:,:,2));
b1=double(E_peppers(:,:,2));
          
im1 = double(a1);
im2 = double(b1);

mse = sum((im1(:)-im2(:)).^2) / prod(size(im1))

psnr = 10*log10(127*127/mse)

%=============================================================================
a1=double(O_peppers(:,:,3));
b1=double(E_peppers(:,:,3));
          
im1 = double(a1);
im2 = double(b1);

mse = sum((im1(:)-im2(:)).^2) / prod(size(im1))

psnr = 10*log10(127*127/mse)