function y = H( x )
    c1=[0,0];r1=0.5;c2=[2,2];r2=0.6;
    y(1)= norm(x-c1)-r1;
    y(2)= norm(x-c2)-r2;
end