
    faceDetector = vision.CascadeObjectDetector; 
    cam=webcam();

    while(1)
        img=snapshot(cam);
        bboxes = step(faceDetector, img);
        Faces = insertObjectAnnotation(img, 'rectangle', bboxes, 'Face');   
        figure, imshow(Faces), title('Detected faces'); 
    end
