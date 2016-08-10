function [outputImg, meanColors] = quantizeRGB(origImg, k)

red = origImg(:,:,1);
green = origImg(:,:,2);
blue = origImg(:,:,3);

newred = reshape(red,[],1);
newgreen =  reshape(green,[],1);
newblue = reshape(blue,[],1);

reshapeimg=[newred, newgreen, newblue];

[idx,C]=kmeans(double(reshapeimg),k); 
meanColors = C;
eucdist = pdist2(reshapeimg(:,1:3),C(:,1:3));  
[~,M]=min(eucdist,[],2);
quantizedimg = meanColors(M,1:3);  
outputImg = origImg;
outputImg(:,:,1)=reshape(quantizedimg(:,1),size(origImg(:,:,1))); 
outputImg(:,:,2)=reshape(quantizedimg(:,2),size(origImg(:,:,1)));
outputImg(:,:,3)=reshape(quantizedimg(:,3),size(origImg(:,:,1)));

imshow(outputImg);

