function cumulativeEnergyMap = cumulative_minimum_energy_map(energyImage,seamDirection)

r = size(energyImage,1);
c = size(energyImage,2);
M = energyImage; 
if (strcmp(seamDirection,'VERTICAL'))
    for i = 2:r
        for j = 1:c
            if(j == 1)
                  M(i,j) = energyImage(i,j) + min([M(i-1,j) M(i-1,j+1)]);
            elseif(j == c)
                M(i,j) = energyImage(i,j) + min([M(i-1,j-1) M(i-1,j)]); 
            else
               M(i,j) = energyImage(i,j) + min([M(i-1,j-1) M(i-1,j) M(i-1,j+1)]); 
            end
        end
    end
elseif (strcmp(seamDirection, 'HORIZONTAL'))
   for j = 2:c
        for i = 1:r
            if(i == 1)
                M(i,j) = energyImage(i,j) + min([M(i,j-1) M(i+1,j-1)]);
            elseif(i == r)
                M(i,j) = energyImage(i,j) + min([M(i-1,j-1) M(i,j-1)]);
            else
                M(i,j) = energyImage(i,j) + min([M(i-1,j-1) M(i,j-1) M(i+1,j-1)]);
            end
        end
   end
end
cumulativeEnergyMap = M;

    
    
    
