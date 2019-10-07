clear all;

I1=[1 2 5 8; 5 7 4 2; 14 4 5 8; 7 2 1 3];

I=randi([0, 5], 5)

nb=3;%Nombre de chemin a supprimer de l'image
E=[];


    %%Programation Dynamique
    P=VprogD(I)
    %%
    %Chemin
    S=Vseam(P)
    %%
    %Matrice reduite
    
    Ds=addVSeam(I,S);
    E=[E Ds];
    %%
%end

E