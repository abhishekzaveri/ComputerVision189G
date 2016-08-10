function [error] = computeQuantizationError(origImg,quantizedImg)

difference = imsubtract(origImg,quantizedImg);
sqdiff = difference.^2;
error = sum(sqdiff(:));