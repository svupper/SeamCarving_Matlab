function [E]=seamC_horz(I)
%A matrice d'energie
%B vecteur des indices du chemin 
%E matrice reduite
    
    R = I(:,:,1) ; % REd
    G = I(:,:,2) ; % Green
    B = I(:,:,3) ; % Blue
    
    %%Programation Dynamique
    P=HprogD(R);
    %%
    %Chemin
    S=Hseam(P);
    %%
    %Matrice reduite
    R=deleteHseam(R,S);
    G=deleteHseam(G,S);
    B=deleteHseam(B,S);
    
    E = reshape ([R G B], size(R,1), size(R,2), 3) ;
    %%

