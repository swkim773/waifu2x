# waifu2x
Image upscaling and noise reduction using deep neural networks.

For details see https://github.com/nagadomi/waifu2x.

## Quick Starts
- The [pre-built application image](https://hub.docker.com/r/swkim773/waifu2x) is already available from Docker Hub. You can also build your own image with [NVIDIA CUDA toolkit](https://developer.nvidia.com/cuda-downloads) installed on your host.

- Pull the image and simply run with `--runtime=nvidia` option enabled:

  ```bash
  docker run -it --rm --runtime=nvidia swkim773/waifu2x [WAIFU2X OPTIONS]
  ```
  
  or use the provided shell script (recommended), for example:

  ```cmd
  ./waifu2x.sh -i images/pepe.png
  ```
  
  You can specify your image file in `images` directory using `-i`.

- For any other help, use `--help`:

  ```cmd
  ./waifu2x.sh --help
  ```
