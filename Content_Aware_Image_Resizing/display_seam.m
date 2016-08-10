function display_seam(im,seam,seamDirection)


if (strcmp(seamDirection,'VERTICAL'))
    imagesc(im); 
    hold on; 
    plot(seam,1:numel(seam))

elseif (strcmp(seamDirection,'HORIZONTAL'))
    imagesc(im); 
    hold on; 
    plot(seam)

end