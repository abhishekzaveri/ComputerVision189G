filename = 'inputSeamCarvingPrague.jpg';
pic = imread(filename); 

filename2 = 'inputSeamCarvingMall.jpg'; 
pic1 = imread(filename2); 

energy = energy_image(pic); 

%energy1 = energy_image(pic1); 
 


[A,B] = reduce_width(pic, energy);
for i = 1:99
   [A,B]  = reduce_width(A, B);
end 
    
%[A1, B1] = reduce_width(pic1, energy1);
%for i = 1:99
 %   [A1,B1]  = reduce_width(A1, B1);
%end


%imshow(A1); 
imshow(A);
