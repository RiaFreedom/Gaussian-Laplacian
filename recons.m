
function OutImg = recons(I, F )

[ih, iw, ~]=size(I);

% 513x513 
% 257x257
ihout=2*ih-1;
iwout=2*iw-1;

InImg=double(zeros(ihout, iwout, 3));
OutImg=double(zeros(ihout, iwout, 3));

for iy=1:ih 
    for ix=1:iw 
        InImg(2*iy-1, 2*ix-1,:)=I(iy, ix,:);
    end
end

for j=1:3 %  red, green , blue
    for iy=1:ihout 
        for ix=1:iwout 
            pixelSum=0;  
            countF=0; 
            for y=1:5 
                for x=1:5 
                    if (iy+y-3>0 && iy+y-4<ihout && ix+x-3>0 && ix+x-4<iwout)
                        pixelSum =pixelSum + F(y, x) * InImg(iy+y-3, ix+x-3, j);   
                        if(mod(iy+y-3,2)==1 && mod(ix+x-3,2)==1)
                            countF=countF+F(y, x);
                        end
                    end    
                end
            end
            OutImg(iy, ix, j) = pixelSum/countF;
        end
    end
    
end

