function horizontalSeam = find_optimal_horizontal_seam(cumulativeEnergyMap)

M = cumulativeEnergyMap;
[rows,columns] = size(M);
horizontals = zeros(columns); 
horizontals = horizontals(1,:); 
[~,x] = min(M(:,columns));
horizontals(columns) = x; 
for i = 1:columns-1
        c = columns - i;
        j = horizontals(c + 1); 
        minimum = M(j,c);
        r = j; 
            if(j == 1)
                if(M(j+1,c) < minimum)
                   r = j + 1;
                end 
            elseif(j == rows)
                 if(M(j-1,c) < minimum)
                     r = j - 1;
                 end
            else
               if(M(j-1,c) < minimum)
                 minimum = M(j-1,c);
                 r = j - 1;
               end
               
               if(M(j+1,c) < minimum)
                   r = j + 1;
               end 
            end
      horizontals(c) = r;     
end
horizontalSeam = horizontals;    