clear all
clc
% Input discrete source symbol probabilities
p = input('Enter the probability distribution of the discrete source, e.g., [p1, p2, ... , pn]:\n');
N = length(p);
p0 = p;
symbols = cell(1,N);
for i = 1:N         % i represents the i-th symbol
    symbols{i} = ['x', num2str(i)];
end
[dict, L_ave] = huffmandict(symbols, p);
dict = dict.';
H = sum(-p .* log2(p)); % Calculate the source entropy
yita = H / L_ave; % Calculate the coding efficiency
CODE = strings(1, N); % Initialize corresponding codewords
for i = 1:N            % i represents the i-th symbol
    CODE(i) = num2str(dict{2,i});
end
% Output codewords, average code length, and coding efficiency
fprintf('\nComputation Results:\n');
disp('Source symbols:'); disp(dict(1,1:N));
disp(['Corresponding probabilities: ', num2str(p)]);
disp('Corresponding codewords:'); disp(CODE);
disp(['Average code length: ', num2str(L_ave)]);
disp(['Coding efficiency: ', num2str(yita)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Huffman coding for the second-order expanded source
p = p' * p;
p = p(:)';
N = length(p);

symbols = cell(1, N);
for i = 1:N         % i represents the i-th symbol
    symbols{i} = ['x', num2str(i)];
end
[dict, L_ave] = huffmandict(symbols, p);
dict = dict.';
H = sum(-p .* log2(p)); % Calculate the source entropy
yita = H / L_ave; % Calculate the coding efficiency
CODE = strings(1, N); % Initialize corresponding codewords
for i = 1:N            % i represents the i-th symbol
    CODE(i) = num2str(dict{2,i});
end
% Output codewords, average code length, and coding efficiency
fprintf('\nSecond-order expanded source computation results:\n');
disp('Second-order expanded source symbols:'); disp(dict(1,1:N));
disp(['Second-order expanded source corresponding probabilities: ', num2str(p)]);
disp('Second-order expanded source corresponding codewords:'); disp(CODE);
disp(['Second-order expanded source average code length: ', num2str(L_ave)]);
disp(['Second-order expanded source coding efficiency: ', num2str(yita)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Huffman coding for the third-order expanded source

p = p(:) * p0;
p = p(:)';
N = length(p);

symbols = cell(1, N);
for i = 1:N         % i represents the i-th symbol
    symbols{i} = ['x', num2str(i)];
end
[dict, L_ave] = huffmandict(symbols, p);
dict = dict.';
H = sum(-p .* log2(p)); % Calculate the source entropy
yita = H / L_ave; % Calculate the coding efficiency
CODE = strings(1, N); % Initialize corresponding codewords
for i = 1:N            % i represents the i-th symbol
    CODE(i) = num2str(dict{2,i});
end
% Output codewords, average code length, and coding efficiency
fprintf('\nThird-order expanded source computation results:\n');
disp('Third-order expanded source symbols:'); disp(dict(1,1:N));
disp(['Third-order expanded source corresponding probabilities: ', num2str(p)]);
disp('Third-order expanded source corresponding codewords:'); disp(CODE);
disp(['Third-order expanded source average code length: ', num2str(L_ave)]);
disp(['Third-order expanded source coding efficiency: ', num2str(yita)]);
