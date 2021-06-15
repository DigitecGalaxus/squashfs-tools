FROM ubuntu:20.04
RUN apt-get update && apt-get install -y p7zip-full grub2-common mtools xorriso squashfs-tools-ng curl squashfs-tools
WORKDIR /var/live
