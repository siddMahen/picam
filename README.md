picam
=====

Raspberry Pi Camera Module Python Library


This module will allow some basic functionality to use the camera module from within Python without starting a new process to take the photo.

Based largely on a stripped down version of the raspistill code, with a python wrapper.

Returns a PIL Image object


    import picam
    
    i = picam.takePhoto()
    
    ii = picam.takePhotoWithDetails(640,480, 85)
    