function [val] = horner(koef, baza, x)
n = length(koef);
val = 0;
for i=n:-1:1
    val = val * (x-baza(1,i)) + koef(1,i);
end
end