clc;
clear;

%The 10001st prime number.  Probably a better way to do this, but this
%works
primes = [];
inc = 1;
for i = 1:1000000
    if isprime(i) == 1
        primes(inc) = i;
        inc = inc + 1;
    end
    if length(primes) == 10001
        answer = primes(inc - 1);
        break
    end
end



        
