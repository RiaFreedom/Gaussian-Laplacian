# Gaussian-Laplacian
Analysis and synthesis of a hybrid image using the technique of Laplacian pyramid and image mixing

1. Reads the first image.
2. If the image is not already 513x513 analysis, convert in this analysis.(To have finer image processing I use double precision numbers)
3. Reads the second image (as the first).
4. Define a mask with as central element .
5. Load the two images and implement the Gaussian Pyramid using the convolve. 
6. Upon completion of the four steps in this process, the process of finding the Laplacian Pyramid begins. 
7. From the original image I remove each time the result of recons to get the Laplacian.
8. Reconstruct the image by adding the result of recons to Laplacian,  iteratively.
9. Follow the same procedure for the second image.
10. Use of a picture half white and half black (mask.jpg file)  513x513. Get the image of the mask loaded and divide by 255 = 256-1.
11. Do the same to the resulting images of the applying of Gaussian pyramid to the mask, to get the wanted weights to lie between 0 and 1. 
12. After finding the weights, get their supplementary to find out how much you will get from the second picture.
13. Construct the hybrid image : get the low frequencies from an image (Gaussian) and the other picture will get high (Laplacian) and  compose low to high frequencies.

