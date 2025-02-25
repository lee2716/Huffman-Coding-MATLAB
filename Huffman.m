% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Information Theory and Coding
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

clear all
clc

% Input the probability distribution of the discrete source symbols
p = input('Enter the probability distribution of the discrete source, e.g., [p1, p2, ... , pn]:\n');
N = length(p); % Number of symbols
p0 = p; % Store the original probability distribution

% Generate source symbol names
symbols = cell(1, N);
for i = 1:N
    symbols{i} = ['x', num2str(i)];
end

% Perform Huffman coding for the original source
[dict, L_ave] = huffmandict(symbols, p); % Generate Huffman dictionary

% Transpose the dictionary for easier access
dict = dict.';

% Calculate source entropy
H = sum(-p .* log2(p));

% Compute coding efficiency
yita = H / L_ave;

% Initialize codewords array
CODE = strings(1, N);
for i = 1:N
    CODE(i) = num2str(dict{2, i});
end

% Output the results
fprintf('\nComputation Results:\n');
disp('Source symbols:'); disp(dict(1,1:N));
disp(['Corresponding probabilities: ', num2str(p)]);
disp('Corresponding codewords:'); disp(CODE);
disp(['Average code length: ', num2str(L_ave)]);
disp(['Coding efficiency: ', num2str(yita)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Huffman coding for the second-order expanded source

% Compute the joint probability distribution for second-order expansion
p = p' * p;
p = p(:)'; % Flatten the matrix to a vector
N = length(p); % Update the number of symbols

% Generate new symbols for the second-order expanded source
symbols = cell(1, N);
for i = 1:N
    symbols{i} = ['x', num2str(i)];
end

% Perform Huffman coding for the second-order expanded source
[dict, L_ave] = huffmandict(symbols, p);
dict = dict.';

% Calculate source entropy
H = sum(-p .* log2(p));

% Compute coding efficiency
yita = H / L_ave;

% Initialize codewords array
CODE = strings(1, N);
for i = 1:N
    CODE(i) = num2str(dict{2, i});
end

% Output the results
fprintf('\nSecond-order expanded source computation results:\n');
disp('Second-order expanded source symbols:'); disp(dict(1,1:N));
disp(['Second-order expanded source corresponding probabilities: ', num2str(p)]);
disp('Second-order expanded source corresponding codewords:'); disp(CODE);
disp(['Second-order expanded source average code length: ', num2str(L_ave)]);
disp(['Second-order expanded source coding efficiency: ', num2str(yita)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Huffman coding for the third-order expanded source

% Compute the joint probability distribution for third-order expansion
p = p(:) * p0;
p = p(:)'; % Flatten the matrix to a vector
N = length(p); % Update the number of symbols

% Generate new symbols for the third-order expanded source
symbols = cell(1, N);
for i = 1:N
    symbols{i} = ['x', num2str(i)];
end

% Perform Huffman coding for the third-order expanded source
[dict, L_ave] = huffmandict(symbols, p);
dict = dict.';

% Calculate source entropy
H = sum(-p .* log2(p));

% Compute coding efficiency
yita = H / L_ave;

% Initialize codewords array
CODE = strings(1, N);
for i = 1:N
    CODE(i) = num2str(dict{2, i});
end

% Output the results
fprintf('\nThird-order expanded source computation results:\n');
disp('Third-order expanded source symbols:'); disp(dict(1,1:N));
disp(['Third-order expanded source corresponding probabilities: ', num2str(p)]);
disp('Third-order expanded source corresponding codewords:'); disp(CODE);
disp(['Third-order expanded source average code length: ', num2str(L_ave)]);
disp(['Third-order expanded source coding efficiency: ', num2str(yita)]);
