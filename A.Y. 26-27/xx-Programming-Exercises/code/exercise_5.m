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

% Test the function
A = [1 2 3; 4 5 6; 7 8 9];
B = diagonal_row_average(A);
fprintf('Original matrix A:\n');
disp(A);
fprintf('Modified matrix B:\n');
disp(B);

function B = diagonal_row_average(A)
    % Create copy of matrix A
    B = A;
    n = size(A, 1);
    
    % Replace each diagonal element with its row average
    for i = 1:n
        row_avg = sum(A(i, :)) / n;
        B(i, i) = row_avg;
    end
end