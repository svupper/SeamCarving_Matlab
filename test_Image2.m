
clear all;
I = imread('SeamCarving.png');

D=double(I);

[L,C]=size(D);

nb=100;%Nombre de chemin a supprimer de l'image

assert(nb<C);

figure(1);
for i=1:nb
    D=seamC_horz(D);    
    U=uint8(D);
    imshow(U);
    pause(1)
end    




