#!/bin/bash
# Starts the Arduino IDE using the docker image.
# see also: ...

docker run \
    -it \
    --network=host \
    --privileged \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --device /dev/ttyACM0:/dev/ttyACM0 \
    -v /dev/bus/usb:/dev/bus/usb \
    -v $HOME/container-data/darduino_test:/topics \
    -v $HOME/container-data/darduino_test/arduino:/home/developer/Arduino \
    --name arduino \
    mbkamble/darduino:latest \
    /bin/bash
# Replace /bin/bash with arduino to directly launch the app
# I prefer to work in command line mode. See https://github.com/arduino/Arduino/blob/master/build/shared/manpage.adoc

