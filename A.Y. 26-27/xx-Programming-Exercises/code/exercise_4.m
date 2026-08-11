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
clear variables
clc

% Generate random 8x8 matrix
A = rand(8, 8);

fprintf('Original matrix:\n');
disp(A);

% Replace central 4x4 submatrix with ones
% Central 4x4 is from rows 3:6 and columns 3:6
A(3:6, 3:6) = ones(4, 4);

fprintf('\nModified matrix:\n');
disp(A);