function y = HH( x )
    c1=[0,0];r1=0.5;c2=[2,2];r2=0.6;
    if x(1)~=0
       b=[-x(2)/x(1),0];
    else
        b=[1,x(2)];
    end
    a=[0,x(2)];
    % x input u and v and compute a,b then put into the following equation
    y(1)=norm((c1-a)-(dot(c1-a,b-a)/dot(b-a,b-a)) *(b-a))-r1;
    y(2)=norm((c2-a)-(dot(c2-a,b-a)/dot(b-a,b-a)) *(b-a))-r2;
end