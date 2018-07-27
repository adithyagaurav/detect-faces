%% Detect Faces in an Image Using the Frontal Face Classification Model

% Copyright 2015 The MathWorks, Inc.


%% Create a detector object.
    faceDetector = vision.CascadeObjectDetector; 
    cam=webcam();
%% Read input image.
    while(1)
        img=snapshot(cam);
        bboxes = step(faceDetector, img);
        Faces = insertObjectAnnotation(img, 'rectangle', bboxes, 'Face');   
        figure, imshow(Faces), title('Detected faces'); 
    end