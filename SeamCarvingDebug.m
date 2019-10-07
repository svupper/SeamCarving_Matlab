function [I] = SeamCarvingDebug( I,bool,sec )
%SEAMCARVINGDEBUG Summary of this function goes here
%   Image in Double
%   bool=1 Vertical Carving 0 Horizontal Carving
%   Time before next carving

    R = I(:,:,1) ; % REd
    G = I(:,:,2) ; % Green
    B = I(:,:,3) ; % Blue
    
    [L,C]=size(R);  
   
    if(bool)
        P=VprogD(R);
        S=Vseam(P);

        for i=1:L

            j=S(i); 
            G(i,j)=1;
            B(i,j)=1;

        end

        E = reshape ([R G B], size(R,1), size(R,2), 3) ;
        U=uint8(E);
        imshow(U);

        pause(sec);

        [I]=seamC_vert(I);
        U=uint8(I);
        imshow(U);
    else
        P=HprogD(R);
        S=Hseam(P);

        for j=1:C

            i=S(j); %%L'indice horizontal est dans S ,la taille du vecteur S n'est pas celui de la colonne
            G(i,j)=1;
            B(i,j)=1;

        end

        E = reshape ([R G B], size(R,1), size(R,2), 3) ;
        U=uint8(E);
        imshow(U);

        pause(sec);

        [I]=seamC_horz(I);
        U=uint8(I);
        imshow(U);
end

