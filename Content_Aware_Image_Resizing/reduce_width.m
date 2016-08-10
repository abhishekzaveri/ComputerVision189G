function [reducedColorImage,reducedEnergyImage] = reduce_width(im,energyImage)
    

M = cumulative_minimum_energy_map(energyImage, 'VERTICAL');
verticalseam = find_optimal_vertical_seam(M); 
[rows,~,~] = size(im);
newim = im;
newim(:,1,:) = [];

for i = 1:rows
    deletepixelim = im(i,:,:); 
    deletepixelim(:,verticalseam(i),:) = [];
    newim(i,:,:) = deletepixelim; 
    
end
reducedColorImage = newim;
reducedEnergyImage = energy_image(newim); 