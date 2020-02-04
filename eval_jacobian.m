function jac = eval_jacobian( F, x, eps )
    jac = zeros(length(x),length(x));
    for i=1:length(x)
        xp = x; xm = x;
        xp(i) = xp(i)+eps; xm(i) = xm(i)-eps;
        jac(:,i) = ((F( xp ) - F( xm ))/(2*eps) )';
    end
end