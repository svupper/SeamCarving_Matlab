function [E] = deleteVseam(I,S)

%A matrice d'energie
%B vecteur des indices du chemin 
%E matrice reduite


[L,C]=size(I);
    E=zeros(L,C-1);

    %%Pre calcul
    j=S(1);
       
    if(j==1)
        E(1,:)=I(1,2:C);
    
    
    elseif(j==C)
        E(1,:)=I(1,1:(C-1));

    else 
        H1=I(1,1:j-1);
        H2=I(1,j+1:end);
    
        E(1,:)=horzcat(H1,H2);
    end
%%
for i=2:L
    j=S(i);

    if(j==1)
        E(i,:)=I(i,2:end);
    elseif(j==C)
        E(i,:)=I(i,1:end-1);
    else 
        H1=I(i,1:j-1);
        H2=I(i,j+1:end);
    
        E(i,:)=horzcat(H1,H2);
    end

end


