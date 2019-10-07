function [ P ] = HprogD( I )
%A matrice en double ou niveau de gris

[L,C]=size(I);
P=I;

for j=2:C
    %Pour j=1;
    i=1;
    M=min([P(i,j-1) P(i+1,j-1)]);
    P(i,j)=M+P(i,j);
    
    for i=2:(L-1)
        M=min([P(i-1,j-1) P(i,j-1) P(i+1,j-1)]);
        P(i,j)=M+P(i,j);
    end 
    
    %Pour j=C;
    i=L;
    M=min([P(i-1,j-1) P(i,j-1)]);
    P(i,j)=M+P(i,j);
end
