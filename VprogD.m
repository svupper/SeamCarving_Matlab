function [ P ] = VprogD( I )
%A matrice en double ou niveau de gris

[L,C]=size(I);
P=I;

for i=2:L
    %Pour j=1;
    j=1;
    M=min([P(i-1,j) P(i-1,j+1)]);
    P(i,j)=M+P(i,j);
    
    for j=2:(C-1)
        M=min([P(i-1,j-1) P(i-1,j) P(i-1,j+1)]);
        P(i,j)=M+P(i,j);
    end 
    
    %Pour j=C;
    j=C;
    M=min([P(i-1,j-1) P(i-1,j)]);
    P(i,j)=M+P(i,j);
end
