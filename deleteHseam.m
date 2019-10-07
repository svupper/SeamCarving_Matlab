function [E] = deleteHseam(I,S)

%A matrice d'energie
%B vecteur des indices du chemin 
%E matrice reduite


[L,C]=size(I);
    E=zeros(L-1,C);

    %%Pre calcul
    i=S(1);
       
    if(i==1)
        E(:,1)=I(2:L,1);
    
    
    elseif(i==L)
        E(:,1)=I(1:(L-1),1);

    else 
        H1=I(1:i-1,1);
        H2=I(i+1:end,1);
    
        E(:,1)=vertcat(H1,H2);
    end
%%
for j=2:C
    i=S(j);

    if(i==1)
        E(:,j)=I(2:L,j);
    
    
    elseif(i==L)
        E(:,j)=I(1:(L-1),j);

    else 
        H1=I(1:i-1,j);
        H2=I(i+1:end,j);
    
        E(:,j)=vertcat(H1,H2);
    end

end


