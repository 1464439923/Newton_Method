function x1=newton(F, x, eps, s)
    for i=1:s
        x1=newton_one_step(F, x, eps);
        if isnan(x1)
            break
        end
        x=x1;
    end
end