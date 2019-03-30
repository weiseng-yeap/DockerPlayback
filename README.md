
# Sample Playback MP4 relying on gstreamer

Example of use:
```
$ docker run -it --rm -e XDG_RUNTIME_DIR=XDG_RUNTIME_DIR=/run/ias -v="$XDG_RUNTIME_DIR:$XDG_RUNTIME_DIR" --device=/dev/dri my_container_app_
```
