clc;
clear;

num = 100;
sum_of_sq = 0;
sq_of_sum = 0;
for i = 1:num
    sum_of_sq = sum_of_sq + i^2;
    sq_of_sum = sq_of_sum + i;
end
sq_of_sum = sq_of_sum^2;
answer = sq_of_sum - sum_of_sq
    