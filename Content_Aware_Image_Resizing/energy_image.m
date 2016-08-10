function energyImage = energy_image(im)
    im2 = rgb2gray(im);
    im3 = double(im2);
    h = fspecial('prewitt'); 
    energyImage = imfilter(im3,h,'replicate');
    
    