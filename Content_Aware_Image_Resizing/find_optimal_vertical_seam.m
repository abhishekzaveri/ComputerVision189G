function verticalSeam = find_optimal_vertical_seam(cumulativeEnergyMap)

M = cumulativeEnergyMap;
[rows,columns] = size(M);
verticals = zeros(rows); 
verticals = verticals(1,:); 
[~,x] = min(M(rows,:));
verticals(rows) = x; 
for i = 1:rows-1
        r = rows - i;
        j = verticals(r + 1); 
        minimum = M(r,j);
        c = j; 
            if(j == 1)
                if(M(r,j+1) < minimum)
                   c = j + 1;
                end 
            elseif(j == columns)
                 if(M(r,j-1) < minimum)
                     c = j - 1;
                 end
            else
               if(M(r,j-1) < minimum)
                 minimum = M(r,j-1);
                 c = j - 1;
               end
               
               if(M(r,j+1) < minimum)
                   c = j + 1;
               end 
            end
      verticals(r) = c;     
end
verticalSeam = verticals;    