#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

IMAGE_PATH="{{ udpbd_image_path }}"
MOUNT_POINT="{{ udpbd_mount_path }}"
SERVICE_NAME="udpbd.service"

if [ "$1" == "edit" ]; then
    echo "Enabling Edit Mode..."
    
    # 1. Stop the server
    sudo systemctl stop $SERVICE_NAME
    
    # 2. Ensure mount point exists
    mkdir -p "$MOUNT_POINT"
    
    # 3. Mount the image
    sudo mount -o loop,uid={{ docker_container_puid }},gid={{ docker_container_pgid }} "$IMAGE_PATH" "$MOUNT_POINT"
    
    echo "DONE: Server stopped. Image mounted at $MOUNT_POINT"

elif [ "$1" == "run" ]; then
    echo "Enabling Server Mode..."
    
    # 1. Unmount the image
    sudo umount "$MOUNT_POINT"
    
    # 2. Start the server
    sudo systemctl start $SERVICE_NAME
    
    echo "DONE: Image unmounted. UDPBD Server is now running."

else
    echo "Usage: $0 {edit|run}"
    exit 1
fi