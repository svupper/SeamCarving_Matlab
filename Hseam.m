function [ S ] = Hseam( P )
%A matrice apres programation dynamique
%B vecteur des indices de A du chemin

[L,C]=size(P);
S(1:C)=1;

[~,i_minL]=min(P(:,C));
S(C)=i_minL;

for j=(C-1):-1:1
    
    i=S(j+1);
    
    if(i==1)
        M=[ P(i,j) P(i+1,j)];
        [~,b]=minmat(M);
        S(j)=i+b-1;
    
    elseif(i==L)
        M=[P(i-1,j) P(i,j)];
        [~,b]=minmat(M);
        S(j)=i+b-2;
    
    else 
        M=[P(i-1,j) P(i,j) P(i+1,j)];
        [~,b]=minmat(M);
        S(j)=i+b-2;
    end
    
end


