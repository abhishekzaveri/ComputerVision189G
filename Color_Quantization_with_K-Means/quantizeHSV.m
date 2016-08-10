function [outputImg, meanHues] = quantizeHSV(origImg, k)

origImg = double(rgb2hsv(origImg));
H = origImg(:,:,1);
S = origImg(:,:,2);
V = origImg(:,:,3);
hue = reshape(H,[],1);
huevector = [hue];

[idx,C]=kmeans(double(huevector),k);  
meanHues = C;
eucdist = pdist2(huevector(:,1),C(:,1));  
[~,M] = min(eucdist,[],2);

quantizedimg=C(M,1);  
outputImg=origImg;
outputImg(:,:,1)=reshape(quantizedimg(:,1),size(origImg(:,:,1))); 
outputImg(:,:,2)=reshape(S,size(origImg(:,:,1)));
outputImg(:,:,3)=reshape(V,size(origImg(:,:,1))); 

outputImgv1 = hsv2rgb(outputImg); 
outputImgv2 = outputImgv1.*255; 
outputImg = uint8(outputImgv2); 

imshow(outputImg);