# picam.c

Raw C bindings for the raspberry pi camera, able to capture still images and
video.

## Dependencies

Libpicam relies on headers and libraries provided by raspberrypi/userland.
Specically, `libmmal`, `libvcos` and `libbcm_host`.


## Linking `libpicam`

This is currently very messy because of of libpicam's dependencies on the 
headers in `/internal/mmal` etc. However, this could change soon. For 
details, see the examples folder.

## Documentation

For now, see the examples folder and read `src/picam.h`.
