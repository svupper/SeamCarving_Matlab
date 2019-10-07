function [ ] = afficherEnergie( I )
%AFFICHERENERGIE Summary of this function goes here
%   Detailed explanation goes here
    
    [L,C,dim]=size(I);

    %Masque pour calculer gradient image
        M=[ 0 -1 0; -1 4 -1 ; 0 -1 0];

    E=zeros(L,C);
    for i=1:dim
        E(:,:,i)=conv2(I(:,:,i),M,'same'); %same , pour recuperer une image de meme taille que I
    end
    E=1/dim*sum(E,3);  
    
    U=uint8(E);
    imshow(U);

end

