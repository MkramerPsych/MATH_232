function SP = preserve(S,k)

SP = S;
for i=[k+1:min(size(S))];
    SP(i,i)=0;
end