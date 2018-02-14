# waifu2x
Image upscaling and noise reduction using deep neural networks.

For details see https://github.com/nagadomi/waifu2x.

## How to run
The [pre-built container image](https://hub.docker.com/r/swkim773/waifu2x) is already available from Docker Hub. You can also build your own image with [NVIDIA CUDA toolkit](https://developer.nvidia.com/cuda-downloads) installed on your host.

Pull the image and run with `--runtime=nvidia` option enabled:

```bash
$ docker run -it --rm --runtime=nvidia swkim773/waifu2x [WAIFU2X OPTIONS]
```

or use the provided script: (specify your image file in the `images` directory using `-i`)

```cmd
$ ./waifu2x.sh -i images/pepe.png
```

For any other help, use `--help`:

```cmd
$ ./waifu2x.sh --help
```
