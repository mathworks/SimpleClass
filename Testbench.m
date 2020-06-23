% Copyright 2020 - 2020 The MathWorks, Inc.

input = [1,2;3,4];
disp('Inputs:');
disp(['Point A: [' num2str(input(1)) ' ' num2str(input(2)) ']']);
disp(['Point B: [' num2str(input(3)) ' ' num2str(input(4)) ']']);

result = myAlg(input);

disp('Outputs:');
disp(['Distance between points: ' num2str(result)]);