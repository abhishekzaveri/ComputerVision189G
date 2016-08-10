function [centers] = detectCircles(im, radius, useGradient)

cannyedges = edge(rgb2gray(im), 'canny'); 
[x,y] = find(cannyedges);
accumlationarray = zeros(size(rgb2gray(im)));
[r,c] = size(cannyedges);

if(useGradient == 0)
    for i = 1:length(x) 
            for t = 1:360 
               a = round(x(i) - radius*cos(t));
               b = round(y(i) + radius*sin(t));
               if a > 0 && a <= r && b > 0 && b <= c
                   accumlationarray(a,b) = accumlationarray(a,b) + 1;
               end
            end
    end
    
elseif(useGradient == 1)
    [~,gradientdirection] = imgradient(cannyedges); 
    for i = 1:length(x)
        t = gradientdirection(x(i),y(i)); 
        for k = (t-45):(t+45)
            a = round(x(i) - radius*cos(k)); 
            b = round(y(i) + radius*sin(k)); 
        if a > 0 && a < r && b > 0 && b < c
            accumlationarray(a,b) = accumlationarray(a,b) + 1;
        end
        end
        for k = (-t-45):(-t+45)
            a = round(x(i) - radius*cos(k)); 
            b = round(y(i) + radius*sin(k)); 
        if a > 0 && a < r && b > 0 && b < c
            accumlationarray(a,b) = accumlationarray(a,b) + 1;
        end
        end    
    end
end
accumlationarray = accumlationarray./max(accumlationarray(:)); 

[x,y] = find(accumlationarray > 0.85);
centers = [y x]; 

imagesc(accumlationarray); 
    
    
