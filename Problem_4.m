function answer = large_palin()
%There is probably an easier way to do this one, but this is what I found.
%Finds the largest palindrome made from the product of two 3-digit numbers.

MIN = 100 * 100;
MAX = 999 * 999;
x = MAX:-1:MIN;
for i = x
    i_rev = str2num(fliplr(num2str(i)));
    if i == i_rev
            if three_digit_factor(i) == 1
                answer = i;
                return
            end
    end
end

function success = three_digit_factor(x)
if(x <= 1000000)
    success = 0;
end

num = floor(sqrt(x)):-1:100;
for l = num
    if rem(x, l) == 0
        if length(num2str(x/l)) == 3
            success = 1;
            break
        end
    end
    success = 0;
end
end

end


