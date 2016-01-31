clc;
clear;

%I first sampled from a larger range in order to find the restricted range
%so the problem could be solved faster
loop = 0;
a = 0;
b = 0;
c = 0;
Asm = 200;
Alg = 340;
Bsm = 201;
Blg = 450;
Csm = 350;
Clg = 500;
while loop == 0;
    a = randi([Asm, Alg]);
    b = randi([Bsm, Blg]);
    c = randi([Csm, Clg]);
    if a > b || a > c
        continue
    end
    if b > c
        continue
    end
    if PythTrip(a, b, c) == 1
        if a + b + c == 1000
            answer = a*b*c
            loop = 1
        end
    end
end
           
        

