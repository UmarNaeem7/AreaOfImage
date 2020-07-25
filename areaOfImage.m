function [count] = areaOfImage(image)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a = image;
[p,q,r] = size(a);

if r==3
    A = rgb2gray(a);
else
    A = a;
end

A = uint8(A);
b = imbinarize(A,graythresh(A));

count = 0;

for i=1:p
    for j=1:q
        if b(i,j) == 1
            count = count + 1;
        end
    end
end

end

