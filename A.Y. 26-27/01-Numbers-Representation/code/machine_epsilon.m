%-------------------------------------------------------------------------%
%   __  __    _  _____ _        _    ____    _  _      ____    _ ____     %
%  |  \/  |  / \|_   _| |      / \  | __ )  | || |    / ___|__| |  _ \    %
%  | |\/| | / _ \ | | | |     / _ \ |  _ \  | || |_  | |   / _` | |_) |   %
%  | |  | |/ ___ \| | | |___ / ___ \| |_) | |__   _| | |__| (_| |  __/    %
%  |_|  |_/_/   \_\_| |_____/_/   \_\____/     |_|    \____\__,_|_|       %
%                                                                         %
%-------------------------------------------------------------------------%
%                                                                         %
%        Author: Marco Mehl <marco.mehl@polimi.it>                        %
%                Lorenzo Giardini <lorenzo.giardini@polimi.it>            %
%        CRECK Modeling Lab <www.creckmodeling.polimi.it>                 %
%        Department of Chemistry, Materials and Chemical Engineering      %
%        Politecnico di Milano                                            %
%        P.zza Leonardo da Vinci 32, 20133 Milano                         %
%                                                                         %
% ----------------------------------------------------------------------- %
clear, close, clc

% Test machine epsilon implementation
N = 1.0
eps_computed = macheps_implementation(N);
eps_builtin = eps(N);  % Compare with built-in function

% Display comparison
fprintf('Computed machine epsilon: %.16e\n', eps_computed);
fprintf('Built-in machine epsilon: %.16e\n', eps_builtin);
fprintf('Difference: %.16e\n', abs(eps_computed - eps_builtin));

function my_eps = macheps_implementation(N) 
                % N is the number we want the machEps of
    my_eps = N; % Initialize epsilon to 1
    while (N + my_eps/2) > N
        % Iterate as long as N + epsilon/2 is distinguishable from N
        my_eps = my_eps / 2 % Halve epsilon at each iteration
    end
    % At the end of the loop, epsilon is the machine epsilon
    % (the smallest value where 1.0 + epsilon > 1.0)
end