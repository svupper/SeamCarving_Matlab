clear all;
close all;

%Chargement
    I= imread('\image\lion.jpg');
    D=double(I);
%Image Original
    [L,C]=size(I);
    l = num2str(L);
    c = num2str(C/3);
    figure(1);
    imshow(I);
    title(['Image Original : ' l ' X ' c]);
    
%Parametres
    debug=1;    %Affiche la carte d'energie et les chemins avant supressions
    LS=700;     %Largeur Souhaité
    CS=590;     %Longeur Souhaité
    vit=0.01;   %Vitesse de traitement
    
%Test Taille Souhaité vs Taille Image
    assert(CS<C/3&&LS<L); 
    
%Carte Energie
    figure(2);
    if(debug)        
        G=rgb2gray(I);
        DG=double(G);
        afficherEnergie(DG);
        figure(3);
    end
    %%
%TRAITEMENT%
    ls = num2str(LS);
    cs = num2str(CS);
     for i=1:(L-LS)

         if(debug)
             D=SeamCarvingDebug( D,0,vit );
         else
             D=SeamCarving( D,0,vit );
         end
     end    
     for j=1:((C/3)-CS)
         if(debug)
             D=SeamCarvingDebug( D,1,vit );
         else
             D=SeamCarving( D,1,vit );
         end
     end
    
    U=uint8(D);
    imshow(U);
    [L,C]=size(D);
    l = num2str(L);
    c = num2str(C/3);
    title(['Rendu : ' l ' X ' c]);
