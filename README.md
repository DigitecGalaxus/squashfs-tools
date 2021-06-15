# Squashfs Tools

This repository contains a Dockerfile that eases the handling of Squashfs files. Read more about squashfs [here](https://tldp.org/HOWTO/SquashFS-HOWTO/whatis.html).

[![Build Status](https://digitecgalaxus.visualstudio.com/SystemEngineering/_apis/build/status/Github/DigitecGalaxus.squashfs-tools?repoName=DigitecGalaxus%2Fsquashfs-tools&branchName=main)](https://digitecgalaxus.visualstudio.com/SystemEngineering/_build/latest?definitionId=1164&repoName=DigitecGalaxus%2Fsquashfs-tools&branchName=main)

## Prerequisites

- A docker host to build it manually or access to Azure DevOps to build it automatically with the [azure-pipelines.yml](azure-pipelines.yml) file.

## Usage

Build the docker image:

```sh
docker image build -t anymodconrst001dg.azurecr.io/planetexpress/squashfs-tools:latest .
```

Use the docker image, e.g. to create a squashfs file from a tar file

```sh
docker run -d -v $(pwd)/filesystem.tar:/var/live/filesystem.tar anymodconrst001dg.azurecr.io/planetexpress/squashfs-tools:latest /bin/sh -c "tar2sqfs --quiet filesystem.squashfs < /var/live/filesystem.tar"
```

## Contribute

No matter how small, we value every contribution! If you wish to contribute,

1. Please create an issue first - this way, we can discuss the feature and flesh out the nitty-gritty details
2. Fork the repository, implement the feature and submit a pull request
3. Add yourself to the CONTRIBUTORS.txt file in that pull request
4. Your feature will be added once the pull request is merged
