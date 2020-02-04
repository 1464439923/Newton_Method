function [u,v]=Fline(c1,r1,c2,r2)
% first find a,b: a=[0,v],b=[-v/u,0]
% use the equation to find the result [u,v]
% norm((c1-a)-dot(c1-a,b-a)/dot(b-a,b-a) *(b-a))=r1
% norm((c2-a)-dot(c2-a,b-a)/dot(b-a,b-a) *(b-a))=r2
    a=newton(@HH, [2,2], 1e-6, 30);
    u=a(1)
    v=a(2)
end