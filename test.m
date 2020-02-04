eval_jacobian( @F, [1,0], 1e-6 )
% should return [2 0
%                0 0]
eval_jacobian( @F, [1,1], 1e-6 )
% should return [2 2
%                0 2]
eval_jacobian( @F, [1,-3], 1e-6 )
% should return [2 -6
%                0 -6]

eval_jacobian( @G, [1,0,0], 1e-6 )
% should return [2 0  0
%                0 0  0 
%                0 -2 0]
eval_jacobian( @G, [1,1,1], 1e-6 )
% should return [2 2  2
%                0 2  2 
%                0 0  2]
eval_jacobian( @G, [1,3,-2], 1e-6 )
% should return [2 6  -4
%                0 6  -4 
%                0 4  -4]

newton_one_step( @F, [1,0], 1e-6 )
newton_one_step( @F, [1,1], 1e-6 )
newton_one_step( @F, [1,-3], 1e-6 )
% %
newton_one_step( @G, [1,0,0], 1e-6 )
newton_one_step( @G, [1,1,1], 1e-6 )
newton_one_step( @G, [1,3,-2], 1e-6 )
%  %  
newton(@F, [1,0], 1e-6, 10)
newton(@F, [1,1], 1e-6, 10)
newton(@F, [1,-3], 1e-6, 10)
%  %  
newton( @G, [1,0,0], 1e-6, 10 )
newton( @G, [1,1,1], 1e-6, 10 )
newton( @G, [1,3,-2], 1e-6, 10 )
