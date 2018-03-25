# waifu2x
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/swkim773/waifu2x/blob/master/LICENSE)

Image upscaling and noise reduction using deep neural networks.

For details see https://github.com/nagadomi/waifu2x.

## Quick Start

- **Requirements**

  - [Docker](https://docs.docker.com/install)
  - [NVIDIA runtime for Docker](https://github.com/NVIDIA/nvidia-docker)

- **How to build the Docker application image**

  The pre-built image ([swkim773/waifu2x](https://hub.docker.com/r/swkim773/waifu2x)) is already available from Docker Hub. 

  You can also build your own image from the [Dockerfile](Dockerfile) with [the CUDA toolkit](https://developer.nvidia.com/cuda-downloads) installed.

- **Basic usage**

  Download the image and simply run with `--runtime=nvidia` option enabled:

  ```bash
  docker run -it --rm --runtime=nvidia swkim773/waifu2x --help
  ```

- **Examples**

  - Using `images/pepe.png` as an input: (the output saved as `images/pepe_noise_sacle.png`)

    ```bash
    docker run -it --rm --runtime=nvidia -v $(pwd)/images:/workspace/waifu2x/images \
      swkim773/waifu2x -i images/pepe.png
    ```

  - Simple shell script (`waifu2x.sh`) version:

    ```bash
    ./waifu2x.sh -i images/pepe.png
    ```

  - Using the latest image in `images/` directory as an input: (the output saved in the current directory)

    ```bash
    docker run -it --rm --runtime=nvidia -v $(pwd)/:/workspace/waifu2x/pwd \
      swkim773/waifu2x -i pwd/images/$(ls -t1 images | head -n 1) -o pwd/$(ls -t1 images | head -n 1)
    ```
