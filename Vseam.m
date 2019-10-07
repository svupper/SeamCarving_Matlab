function [ S ] = Vseam( P )
%A matrice apres programation dynamique
%B vecteur des indices de A du chemin

[L,C]=size(P);
S(1:L)=1;

[~,i_minC]=min(P(L,:));
S(L)=i_minC;

for i=(L-1):-1:1
    
    j=S(i+1);
    
    if(j==1)
        M=[ P(i,j) P(i,j+1)];
        [~,b]=minmat(M);
        S(i)=j+b-1;
    
    elseif(j==C)
        M=[P(i,j-1) P(i,j)];
        [~,b]=minmat(M);
        S(i)=j+b-2;
    
    else 
        M=[P(i,j-1) P(i,j) P(i,j+1)];
        [~,b]=minmat(M);
        S(i)=j+b-2;
    end
    
end


