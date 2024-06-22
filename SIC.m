 [t, v1] = ode45('lu_system', [0 1500],[0.8;-0.4;1.2;1]);
  [t, v2] = ode45('lu_system', [0 1500],[0.8;-0.4;1.2;1]);
plot(v1(1:9800,1),'r');
hold on
plot(v2(1:9800,1),'g');
hold off