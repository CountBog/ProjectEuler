clc;
clear;

%smallest positive number evenly divisible by the numbers 1 through 20.
%Commented code below works but takes too long.  A friend thought of the
%idea in the quicker code here.

int = 20;
numbers = ones(int,4);
for i = 1:int
    x = factor(i);
    col = length(x);
    numbers(i,1:col) = x;
end

freq = zeros(length(unique(numbers)),2);
freq(:,1) = unique(numbers);
freq(:,2) = zeros;
for f = 1:length(freq)
    for i = 1:int
        set = 0;
        for c = 1:4
            if freq(f) == numbers(i,c);
                set = set + 1;
            end
        end
        if set > freq(f,2)
            freq(f,2) = set;
        end
    end
end

product = [];
for f = 1:length(freq)
    product(f) = freq(f,1)^freq(f,2);
end
answer = prod(product)
    

%Super slow code that only works for smaller vectors of numbers (like the 1
%through 10 case)
% for i = 232000000:233000000
%     num = mod(i,1:20);
%     if isempty(num(num > 0)) == 1;
%         answer = i;
%         break
%     end    
% end
  

