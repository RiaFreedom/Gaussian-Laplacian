
function [OutImg] = convolve(I, F)

[ih, iw, ~]=size(I);

OutImg=double(zeros((ih+1)/2, (iw+1)/2, 3));

for j=1:3 
    for iy=1:2:ih 
        for ix=1:2:iw 
            pixelSum=0;  
            countF=0; 
            for y=1:5 
                for x=1:5 
                    if (iy+y-3>0 && iy+y-4<ih && ix+x-3>0 && ix+x-4<iw)
                        pixelSum = pixelSum + F(y, x) * I(iy+y-3, ix+x-3, j);
                        countF=countF+F(y, x);
                    end
                end
            end
            OutImg((iy+1)/2,(ix+1)/2, j) = pixelSum/countF;
        end
    end
end

