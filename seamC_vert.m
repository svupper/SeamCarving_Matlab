function [E]=seamC_vert(I)
%A matrice d'energie
%B vecteur des indices du chemin 
%E matrice reduite
    
    R = I(:,:,1) ; % REd
    G = I(:,:,2) ; % Green
    B = I(:,:,3) ; % Blue
    
    %%Programation Dynamique
    P=VprogD(R);
    %%
    %Chemin
    S=Vseam(P);
    %%
    %Matrice reduite
    R=deleteVseam(R,S);
    G=deleteVseam(G,S);
    B=deleteVseam(B,S);
    
    E = reshape ([R G B], size(R,1), size(R,2), 3) ;
    %%

