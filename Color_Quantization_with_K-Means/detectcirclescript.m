filename = 'jupiter.jpg';
jupiter = imread(filename); 

filename = 'egg.jpg';
egg = imread(filename); 


subplot(4,2,1);
blah = detectCircles(jupiter, 105, 0); 
title('Accumlation Array of jupiter with useGradient = 0 and radius = 105'); 
vecofcenters = blah(:,1); 
vecofcenters(:) = 105; 
subplot(4,2,2);
imagesc(jupiter); 
viscircles(blah, vecofcenters); 
title('jupiter.jpg with useGradient = 0 and radius = 105'); 

subplot(4,2,3);
blah1 = detectCircles(jupiter, 105, 1); 
title('Accumlation Array of jupiter with useGradient = 1 and radius = 105'); 
vecofcenters = blah1(:,1); 
vecofcenters(:) = 105; 
subplot(4,2,4);
imagesc(jupiter); 
viscircles(blah1, vecofcenters); 
title('jupiter.jpg with useGradient = 1 and radius = 105'); 

subplot(4,2,5);
blah2 = detectCircles(egg, 7, 0); 
title('Accumlation Array of egg with useGradient = 0 and radius = 7'); 
vecofcenters = blah2(:,1); 
vecofcenters(:) = 7; 
subplot(4,2,6);
imagesc(egg); 
viscircles(blah2, vecofcenters); 
title('egg.jpg with useGradient = 0 and radius = 7'); 

subplot(4,2,7);
blah3 = detectCircles(egg, 7, 1); 
title('Accumlation Array of egg with useGradient = 1 and radius = 7'); 
vecofcenters = blah3(:,1); 
vecofcenters(:) = 7; 
subplot(4,2,8);
imagesc(egg); 
viscircles(blah3, vecofcenters); 
title('egg.jpg with useGradient = 1 and radius = 7'); 
