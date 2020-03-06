
function B = abunchofdets(n,k)
% B = abunchofdets(n,k), for positive integers n and k, returns a row
% vector whose elements are the determinants of k randomly-drawn n-by-n
% matrices with one-digit entries.

B=zeros(1,k);
for i = 1:k
    A = randi([0 9],n,n);
    B(1,i)=round(det(A));
end