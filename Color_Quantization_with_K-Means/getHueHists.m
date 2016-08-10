function [histEqual, histClustered] = getHueHists(im, k)

[x,y,~] = size(im);
HSVimage = rgb2hsv(im); 
hue = reshape(double(HSVimage(:,:,1)),x*y,1);
histEqual = hist(hue,k);
[idx,~] = kmeans(hue,k);
histClustered = hist(idx,k); 