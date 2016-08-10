function [reducedColorImage,reducedEnergyImage] = reduce_height(im,energyImage)

M = cumulative_minimum_energy_map(energyImage, 'HORIZONTAL');
horizontalseam = find_optimal_horizontal_seam(M); 
[~,columns,~] = size(im);
newim = im;
newim(1,:,:) = [];

for i = 1:columns
    deletepixelim = im(:,i,:); 
    deletepixelim(horizontalseam(i),:,:) = [];
    newim(:,i,:) = deletepixelim; 
    
end
reducedColorImage = newim;
reducedEnergyImage = energy_image(newim); 