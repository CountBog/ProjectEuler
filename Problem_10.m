clc
clear

%Sum of all Primes under 2 million. Brute forced it but it works

Primes = [];
inc = 1;
for i = 1:2000000
    if isprime(i) == 1;
        Primes(inc) = i;
        inc = 1 + inc;
    end
end
Answer = sum(Primes);
fprintf(1, '%\n', Answer)
        