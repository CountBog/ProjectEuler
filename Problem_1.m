clear;
clc;

numbers = 0;
for i = 1:999
    if rem(i,3) == 0;
        numbers = numbers + i;
    elseif rem(i,5) == 0;
        numbers = numbers + i;
    end
end
numbers 
