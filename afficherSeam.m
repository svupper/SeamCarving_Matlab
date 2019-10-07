function [ ] = afficherSeam( I,Hrz )
%AFFICHERSEAM Summary of this function goes here
%   Detailed explanation goes here

    R = I(:,:,1) ; % REd
    G = I(:,:,2) ; % Green
    B = I(:,:,3) ; % Blue
    [L,C]=size(I);
    
    if(Hrz)

        %%Programation Dynamique
        P=HprogD(R);
        %%
        %Chemin
        S=Hseam(P);
        for i=1:L
            j=S(i);         
            G(i,j)=0;
            B(i,j)=0;
        end
        E = reshape ([R G B], size(R,1), size(R,2), 3) ;
        U=uint8(E);
        imshow(U);
    else
        %%Programation Dynamique
        P=VprogD(R);
        %%
        %Chemin
        S=Vseam(P);
        for i=1:L
            
            j=S(i); 
            G(i,j)=0;
            B(i,j)=0;

        end
        E = reshape ([R G B], size(R,1), size(R,2), 3) ;
        U=uint8(E);
        imshow(U);
    end
end

