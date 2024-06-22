HIST_R = imhist(mat2gray(O_peppers(:,:,1))); %RED
HIST_G = imhist(mat2gray(O_peppers(:,:,2))); %GREEN
HIST_B = imhist(mat2gray(O_peppers(:,:,3))); %BLUE


mymap=[1 0 0;0 0 0; 0 0 0];
mymap1=[0 1 0;0 0 0; 0 0 0];
mymap2=[0 0 1;0 0 0; 0 0 0];

figure,bar(HIST_R);colormap(mymap);legend('RED CHANNEL');
figure,bar(HIST_G);colormap(mymap1);legend('GREEN CHANNEL');
figure,bar(HIST_B);colormap(mymap2);legend('BLUE CHANNEL');

HIST_R = imhist(mat2gray(E_peppers(:,:,1))); %RED
HIST_G = imhist(mat2gray(E_peppers(:,:,2))); %GREEN
HIST_B = imhist(mat2gray(E_peppers(:,:,3))); %BLUE


mymap=[1 0 0;0 0 0; 0 0 0];
mymap1=[0 1 0;0 0 0; 0 0 0];
mymap2=[0 0 1;0 0 0; 0 0 0];

figure,bar(HIST_R);colormap(mymap);legend('RED CHANNEL');
figure,bar(HIST_G);colormap(mymap1);legend('GREEN CHANNEL');
figure,bar(HIST_B);colormap(mymap2);legend('BLUE CHANNEL');


HIST_R = imhist(mat2gray(D_peppers(:,:,1))); %RED
HIST_G = imhist(mat2gray(D_peppers(:,:,2))); %GREEN
HIST_B = imhist(mat2gray(D_peppers(:,:,3))); %BLUE


mymap=[1 0 0;0 0 0; 0 0 0];
mymap1=[0 1 0;0 0 0; 0 0 0];
mymap2=[0 0 1;0 0 0; 0 0 0];

figure,bar(HIST_R);colormap(mymap);legend('RED CHANNEL');
figure,bar(HIST_G);colormap(mymap1);legend('GREEN CHANNEL');
figure,bar(HIST_B);colormap(mymap2);legend('BLUE CHANNEL');