FROM ubuntu:22.04
RUN apt-get update && apt-get install -y p7zip-full grub2-common mtools xorriso squashfs-tools-ng curl squashfs-tools wget
RUN wget https://aka.ms/downloadazcopy-v10-linux
RUN tar -xvf downloadazcopy-v10-linux
RUN mv azcopy_linux_amd64_*/azcopy /usr/local/bin/
RUN chmod +x /usr/local/bin/azcopy
RUN rm -rf azcopy_linux_amd64_* downloadazcopy-v10-linux
WORKDIR /var/live
