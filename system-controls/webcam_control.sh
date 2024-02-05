#!/bin/bash

block_webcam() {
    sudo modprobe -r uvcvideo
    echo "blacklist uvcvideo" | sudo tee -a /etc/modprobe.d/blacklist-webcam.conf > /dev/null
    echo "Webcam blocked!"
}

unblock_webcam() {
    sudo sed -i '/blacklist uvcvideo/d' /etc/modprobe.d/blacklist-webcam.conf
    sudo modprobe uvcvideo
    echo "Webcam unblocked!"
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
