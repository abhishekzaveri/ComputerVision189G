
filename = 'fish.jpg';
pic = imread(filename); 

subplot(4,2,1);
[RGBquantizedImg1, meanRGB1] = quantizeRGB(pic,5);
title('Quantized RGB Image with k = 5'); 

subplot(4,2,2);
[RGBquantizedImg2, meanRGB2] = quantizeRGB(pic,25); 
title('Quantized RGB Image with k = 25');

subplot(4,2,3);
[HSVquantizedImg1, meanHues1] = quantizeHSV(pic,5); 
title('Quantized HSV Image with k = 5'); 

subplot(4,2,4);
[HSVquantizedImg2, meanHues2] = quantizeHSV(pic,25);
title('Quantized HSV Image with k = 25'); 

[histEqual, histClustered] = getHueHists(HSVquantizedImg1, 5);
[histEqual1, histClustered1] = getHueHists(HSVquantizedImg2, 25);

subplot(4,2,5); 
bar(histEqual); 
title('histEqual for k=5');

subplot(4,2,6); 
bar(histClustered); 
title('histClustered for k=5');

subplot(4,2,7); 
bar(histEqual1); 
title('histEqual for k=25');

subplot(4,2,8); 
bar(histClustered1); 
title('histClustered for k=25');
 

error = computeQuantizationError(pic,RGBquantizedImg1);

error1 = computeQuantizationError(pic,RGBquantizedImg2); 

error2 = computeQuantizationError(pic,HSVquantizedImg1); 

error3 = computeQuantizationError(pic,HSVquantizedImg2); 
 