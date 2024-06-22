  [t, v1] = ode45('lu_system', [0 1500],[0.800000000000001;-0.4;1.2;1]);
  [t, v2] = ode45('lu_system', [0 1500],[0.8;-0.4;1.2;1]);
   v=[v1;v2];
vv = [v(:,1); v(:,2); v(:,3); v(:,4)];
%============key1============
 ruf = reshape(v(1:9216,1), [96 96]);
 [tt key1] = sort(ruf,2);                             %key1
 
 %============key2==============
 key2 = mod(abs(1000*reshape(vv(9217:9217+262143,1),[512 512])),95)+1;     %key2
 
 %============2d_keys===========
 [temp rk(1,:)] = sort(v(1:512,2)');                      %key5
 [temp ck(1,:)] = sort(v(512+1:512+512,2)');              %key6
 [temp rk(2,:)] = sort(v(1024+1:1024+512,2)');            %key7
 [temp ck(2,:)] = sort(v(1536+1:1536+512,2)');            %key8
 [temp rk(3,:)] = sort(v(2048+1:2048+512,2)');            %key9
 [temp ck(3,:)] = sort(v(2560+1:2560+512,2)');            %key10
 
 %============key3===============
 
 key3 = double(abs(1000*reshape(vv(1:786432),[128 64 96])));            %key3
 key4 = abs(1000*reshape(vv(1:262144),[512 512]));                     %key4

%=============wp_keys==========
I = imread('baboon.png');
level=1;
index=0;
for i =0:level-1
    index = index+4^i;
end
index
K = abs(1000*reshape(v(1:65536,4),[256 256]));       %key11      
[temp K1] = sort(K);
[temp K2] = sort(K,2);

a = randi(1000,[512 512]);
[temp ckk] = sort(a,2);
[temp rkk] = sort(a);