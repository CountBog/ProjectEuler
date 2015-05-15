clear;
clc;

%Flexible solution.  A sufficiently large N is 1000000 for the solution to
%the problem.
Fibonacci = [0 1];
N = input('Number in Fib sequence ');
IN = 0;
for i = 1:N
    Fibonacci(3 + IN) = Fibonacci(1 + IN) + Fibonacci(2 + IN);
    IN = IN + 1;
end
Fibonacci(Fibonacci > 4000000) = [];
answer = sum(Fibonacci(rem(Fibonacci, 2) == 0))
