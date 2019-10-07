function [I] = SeamCarving( I,bool,sec )
%SEAMCARVINGDEBUG Summary of this function goes here
%   Image in Double
%   bool=1 Vertical Carving 0 Horizontal Carving
%   Time before next carving
    
   
    if(bool)
        [I]=seamC_vert(I);
        U=uint8(I);
        imshow(U);
        pause(sec);
    else
        
        [I]=seamC_horz(I);
        U=uint8(I);
        imshow(U);
        pause(sec);
    end
end

