In this project, I applied k-means clustering to the pixels in a given input image in order to quantize a color space in both RGB and HSV. 

quantizeRGB.m quantizes the 3D RGB space and maps each pixel in the input image to its nearest k-means center. 

quantizeHSV.m quantizes the 1D Hue space and maps each pixel in the input image to its nearest quantized Hue value, while keeping its Saturation and Value channels the same as the input. It then converts the output back to the RGB color space. 

computeQuantizationError.m calculates the sum of squared distances error between the original RGB pixel values and the quantized values. 

getHueHists.m computes and displays two histograms of its hue values. The first histogram uses k equally-spaced bins and the second uses bins defined by the k cluster center memberships. 

colorQuantizeMain.m calls the functions and displays the results. 