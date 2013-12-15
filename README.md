# picam

A simple Raspberry Pi camera library, written in C. Access
image and video data programatically.

## Intallation

First, you'll need to install [raspberrypi/userland][1].

```
$ git clone https://github.com/raspberrypi/userland.git
$ cd userland
$ ./buildme
```

Then, in the picam directory, run:

```
$ make
$ sudo make install
```

[1]: https://github.com/raspberrypi/userland


## Linking

Picam relies in libmmal, libvcos and libbcm_host.

```
$(CC) $(CFLAGS) project.c -lpicam -lmmal -lvcos -lbcm_host
```

See the examples folder for more information.

## Documentation

For now, see the examples folder and read `src/picam.h`. I plan on 
changing the API shortly.

## Licence

See LICENCE.
