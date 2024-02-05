#!/bin/bash

block_webcam() {
    sudo modprobe -r uvcvideo
}

unblock_webcam() {
    sudo modprobe uvcvideo
}

case "$1" in
    block)
        block_webcam
        ;;
    unblock)
        unblock_webcam
        ;;
    *)
        echo "Usage: $0 {block|unblock}"
        exit 1
        ;;
esac

exit 0
