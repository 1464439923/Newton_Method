function x1=newton_one_step(F, x, eps)
    jac=eval_jacobian( F, x, eps );
    n=size(x,2);
    judge=isnan(jac);
    if judge(1,1) || judge(1,2) || judge(2,1) || judge(2,2)
        x1=nan(1,n);
        return;
    end
    if rank(null(jac))~=0
        x1=nan(1,n);
    else
        x1=x-(inv(jac)*F(x)')';
    end
end