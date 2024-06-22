function R_squared = correlation(x,y,idx)

X = double(x);
Y = double(y);
R=corrcoef(X,Y);
R_squared=R(2)^2

%text(X, Y, [ num2str(R_squared)])

if (idx == 1 || idx == 2)
    figure(idx);
mymapR=[1 0 0];
plot(X,Y,'r.'); colormap(mymapR);

ylabel('--- Pixel values on the red channel ---->');
xlabel('--- Pixel values on the red channel ---->'); 
end

if (idx == 3 || idx == 4)
    figure(idx);
mymapG=[0.2 1 0];
plot(X,Y,'g.'); colormap(mymapG);

ylabel('--- Pixel values on the green channel ---->');
xlabel('--- Pixel values on the green channel ---->'); 
end

if (idx == 5 || idx == 6)
    figure(idx);
mymapB=[0 0.2 1];
plot(X,Y,'b.'); colormap(mymapB);

ylabel('--- Pixel values on the blue channel ---->');
xlabel('--- Pixel values on the blue channel ---->'); 
end
end

