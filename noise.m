
  function NoiseImg = noise(B)
%   A=imread('lena.jpg');
%    B = A(:,:,1);
%  B=rgb2gray(A);


black=3;
white=125;
%Adjust the values in 'black' and 'white' to increase the noise.

NoiseImg = B;
s = size(B);
    Rmatrix = randi(128,[s(1) s(2)]);
    NoiseImg(Rmatrix <= black) =1;
    NoiseImg(Rmatrix >=white) = 255;
    RImg=NoiseImg;
    %figure,subplot(1,2,1),imshow(NoiseImg),title('Add ''Salt and Pepper'' Noise');
    %subplot(1,2,2),imshow(RImg),title('After Noise Removal');
    %imshow(NoiseImg)