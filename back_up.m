%key =[1 2 3; 2 3 1; 3 1 2; 1 3 2; 2 1 3; 3 2 1];
%[t, v] = ode45('lu_system', [0 num],[0.8;-0.4;1.2;1]);
ruf = randi(255, [96 96]);
[tt key] = sort(ruf,2);
key2 = randi(95,[512 512]);
rk1 = randperm(512);
ck1 = randperm(512);
rk2 = randperm(512);
ck2 = randperm(512);
rk3 = randperm(512);
ck3 = randperm(512);
diff_key = randi(255, [512 512 3]);


key3 = randi(255,[128 64 96]);
key4 = randi(255,[512 512]);

