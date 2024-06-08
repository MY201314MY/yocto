```shell
gst-launch-1.0 filesrc location=/home/weston/${1} ! qtdemux name=demux \
demux.audio_0 ! queue ! decodebin ! audioconvert ! audioresample ! autoaudiosink \
demux.video_0 ! queue ! decodebin ! videoconvert ! videoscale ! video/x-raw,width=240,height=135 ! kmssink driver-name="st7789v"
```

