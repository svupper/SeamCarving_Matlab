
clear all;
I= imread('\image\lion.jpg');

D=double(I);

[L,C]=size(D);
nb=10;%Nombre de chemin a supprimer de l'image
assert(nb<C);

figure(1);

for a=1:nb
    
    R = D(:,:,1) ; % REd
    G = D(:,:,2) ; % Green
    B = D(:,:,3) ; % Blue
      
    [L,C]=size(R);  
   
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

    pause(1);

    [D]=seamC_vert(D);
    U=uint8(D);
    imshow(U);
end
     




