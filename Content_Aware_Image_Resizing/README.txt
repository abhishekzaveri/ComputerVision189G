In this project, I implemented a version of a content-aware image resizing technique that uses seam carving in order to resize images. The method uses dynamic programming where sub-optimal seams are carved out of the images, leaving the resized image with the optimal seams which are selected based on the energy of their pixels. 

energy_image.m computes the energy at each pixel using the magnitude of the x and y gradients. 

cumulative_minimum_energy_map.m uses the output of energy_image.m and computes the minimum cumulative energy. 

find_optimal_vertical_seam.m and find_optimal_horizontal_seam.m computes the optimal vertical/horizontal seam based on the 2D matrix developed by the cumulative minimum energy map. 

display_seam.m displays the selected type of seam on top of an image. 

reduce_width/reduce_height.m take images as inputs and the energy_image output to create a reduced color image and a reduced energy image. From here, we can display the resized image. 

