In this project, I implemented a video search method to retrieve relevant frames from a video based on the features in a query region selected from some frame. Using an episode of Friends as the image data, I was able to search through 60,000 frames and find the frames containing the identical data. 

displaySIFTPatches.m draws the patches on top of an image.

getPatchFromSIFTParameters.m extracts the image patch and returns it as a single image. 

selectRegion.m allows a user to draw a polygon showing a region of interest and then returns the indices within the list of positions that fell within the polygon. 

dist2.m is a fast implementation of computing pairwise distances between two matrices for which each row is a data point. 

kmeansML.m is a faster k-means implementation that takes the data points as columns. 

rawDescriptorMatches.m allows a user to select a region of interest in one frame and then matches the descriptors in that region to the descriptors in the second image based on Euclidean distance in SIFT space. 

visualizeVocabulary.m builds a data file filled with image patches that are associated with two of the visual words and displays the patches. 

fullFrameQueries.m displays every query frame and its m=5 most similar frames based on the normalized scalar product between their bag of words histograms. 

regionQueries.m displays each query region and its m=5 most similar frames. 

