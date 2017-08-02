ls -la
gst-launch-1.0 v4l2src ! video/x-raw-yuv,width=640,height=480,framerate=30/1 ! xvimagesink
gst-launch-1.0 -e v4l2src ! video/x-raw-yuv,width=640,height=480,framerate=30/1 ! xvimagesink
gst-launch-1.0 -e v4l2src ! video/x-raw-yuv,width=640,height=480,framerate=30/1 ! filesink location=test.png
gst-launch v4l2camsrc device=/dev/video0 num-buffers=1 ! dspjpegenc ! filesink location=test.jpg 
gst-launch-1.0 v4l2camsrc device=/dev/video0 num-buffers=1 ! dspjpegenc ! filesink location=test.jpg 
gst-launch-1.0 v4l2src device=/dev/video0 num-buffers=1 ! dspjpegenc ! filesink location=test.jpg 
gst-launch-1.0 v4l2src device=/dev/video0 num-buffers=1 ! pngenc ! filesink location=test.png
gst-launch-1.0 v4l2src device=/dev/video0 num-buffers=1 ! jpegenc ! filesink location=test.png
gst-launch-1.0 v4l2src device=/dev/video0 ! ffmpegcolorspace ! jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src device=/dev/video0 ! jpegenc ! filesink location=test.jpg
python3
sudo apt install python3-v4l2
gst-launch-1.0 v4l2src device=/dev/video0 num-buffers=1 ! video/x-raw-yuv, framerate=10/1, width=320, height=240 ! jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src device=/dev/video0 num-buffers=1 ! jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! jpegenc ! filesink location=test.jpg
gst-launch-1.0 uvch264src num-buffers=1 ! jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! queue !  jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! queue ! video/x-h264,width=1280,height=720,framerate=30/1 ! jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! queue !  jpegdec ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! video/x-raw-rgb,width=640,height=480,framerate=8/1 !  jpegdec ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! video/x-raw-rgb,width=640,height=480,framerate=8/1 !  jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! video/x-raw-rgb,width=640,height=480,framerate=8/1 ! ffmpegcolorspace ! jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! video/x-raw-rgb,width=640,height=480,framerate=8/1 ! omx_jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! videoscale ! video/x-raw-rgb,width=640,height=480,framerate=8/1 !  jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! videoscale ! video/x-raw-yuv,width=640,height=480,framerate=8/1 !  jpegenc ! filesink location=test.jpg
gst-launch-1.0 v4l2src num-buffers=1 ! image/jpeg,width=640,height=480,framerate=8/1 ! jpegenc ! filesink location=test.jpg
gst-launch v4l2src device=/dev/video2 ! video/x-raw-yuv,framerate=30/1 ! xvidenc ! queue ! avimux ! filesink location=test.avi
gst-launch-1.0 v4l2src device=/dev/video2 ! video/x-raw-yuv,framerate=30/1 ! xvidenc ! queue ! avimux ! filesink location=test.avi
gst-launch-1.0 v4l2src ! tee name=t ! queue ! videoconvert ! autovideosink t. ! queue ! videoconvert ! jpegenc ! multifilesink location=image_%06d.jpg
gst-launch-1.0 -v v4l2src device=/dev/video0 ! video/x-raw,framerate=30/1,width=1280,height=720 ! xvimagesink
gst-launch-1.0 -v v4l2src device=/dev/video0 ! video/x-raw,framerate=30/1,width=1280,height=720 ! filesink location=video.mpg
gst-launch-1.0 -v v4l2src device=/dev/video0 ! video/x-h264,framerate=30/1,width=1280,height=720 ! filesink location=video.mpg
gst-launch-1.0 v4l2src ! video/x-raw, width=(int)640, height=(int)480, framerate=10/1 ! videoconvert ! filesink location=out.yuv  
gst-launch-1.0 v4l2src ! video/x-raw, width=640, height=480, framerate=10/1 ! videoconvert ! filesink location=out.yuv  
echo $VIDEO_CAPABILITIES
gst-launch-1.0 v4l2src ! video/x-raw, width=640, height=480, framerate=10/1 ! avimux ! filesink location=out.yuv  
gst-launch-1.0 v4l2src ! video/x-raw, width=640, height=480, framerate=10/1 ! avimux !    gst-launch-1.0 -v v4l2src ! video/x-raw,width=960,height=720,framerate=30/1 ! x264enc ! mux. alsasrc ! audio/x-raw,width=16,depth=16,rate=44100,channels=2 ! mux. avimux name=mux ! filesink location=test.avi  filesink location=out.yuv  
gst-launch-1.0 -v v4l2src ! video/x-raw,width=960,height=720,framerate=30/1 ! x264enc ! mux. alsasrc ! audio/x-raw,width=16,depth=16,rate=44100,channels=2 ! mux. avimux name=mux ! filesink location=test.avi  filesink location=out.yuv  
gst-launch-1.0 -v v4l2src ! video/x-raw,width=960,height=720,framerate=30/1 ! x264enc ! filesink location=test.avi  filesink location=out.yuv  
gst-launch-1.0 -v v4l2src ! video/x-raw,width=960,height=720,framerate=30/1 ! queue ! x264enc ! filesink location=test.avi  filesink location=out.yuv  
gst-launch-1.0 -v v4l2src ! queue ! video/x-raw,width=960,height=720,framerate=30/1 ! queue ! x264enc ! filesink location=test.avi  filesink location=out.yuv  
gst-launch-1.0 -v v4l2src ! queue ! video/x-raw,width=960,height=720,framerate=30/1 ! queue ! x264enc ! filesink location=test.avi
gst-launch-1.0 -v v4l2src ! queue ! video/x-raw,width=960,height=720,framerate=30/1 ! queue ! x264enc ! queue ! filesink location=test.avi
gst-launch-1.0 v4l2src ! videoscale ! videoconvert ! autovideosink
gst-launch-1.0 v4l2src ! videoscale ! videoconvert ! filesink test.avi
gst-launch-1.0 v4l2src ! videoscale ! videoconvert ! filesink=test.avi
gst-launch-1.0 v4l2src ! videoscale ! videoconvert ! filesink location=test.avi
gst-launch-1.0 v4l2src ! videoscale ! theoraenc ! filesink location=test.ogv
gst-launch-1.0 v4l2src ! video/x-raw-yuv,width=640,height=480,framerate=30/1 ! videoscale ! theoraenc ! filesink location=test.ogv
gst-launch-1.0 v4l2src ! video/x-raw-yuv,width=640,height=480,framerate=30/1 ! theoraenc ! filesink location=test.ogv
gst-launch-1.0 v4l2src ! video/x-raw-yuv,width=640,height=480,framerate=30/1 ! queue ! theoraenc ! filesink location=test.ogv
gst-launch-1.0 v4l2src ! queue ! video/x-raw-yuv,width=640,height=480,framerate=30/1 ! queue ! theoraenc ! filesink location=test.ogv
v4l2src ! 'video/x-raw-yuv, width=640, height=480' ! videorate ! 'video/x-raw-yuv, framerate=15/1' ! queue max-size-bytes=100000000 max-size-time=0 ! theoraenc bitrate=150 ! filesink location=test.ogv
gst-launch-1.0 v4l2src ! 'video/x-raw-yuv, width=640, height=480' ! videorate ! 'video/x-raw-yuv, framerate=15/1' ! queue max-size-bytes=100000000 max-size-time=0 ! theoraenc bitrate=150 ! filesink location=test.ogv
gst-launch-1.0 v4l2src ! 'video/x-raw-yuv, width=640, height=480' ! videorate ! queue max-size-bytes=100000000 max-size-time=0 ! theoraenc bitrate=150 ! filesink location=test.ogv
gst-launch-1.0 v4l2src ! videorate ! queue max-size-bytes=100000000 max-size-time=0 ! theoraenc bitrate=150 ! filesink location=test.ogv
gst-launch-1.0 -v v4l2src ! 'video/x-raw, width=(int)640, height=(int)480, framerate=10/1' ! videoconvert ! filesink location=out.yuv  
gst-launch-1.0 -v v4l2src ! 'video/x-raw, width=640, height=480, framerate=10/1' ! videoconvert ! filesink location=out.yuv  
gst-launch-1.0 -v v4l2src ! video/x-raw, width=640, height=480, framerate=10/1' ! videoconvert ! filesink location=out.yuv  
gst-launch-1.0 -v v4l2src ! video/x-raw, width=640, height=480, framerate=10/1 ! videoconvert ! filesink location=out.yuv  
gst-launch-1.0 v4l2src ! video/x-raw, width=640, height=480, framerate=10/1 ! filesink location=out.yuv  
gst-launch-1.0 v4l2src ! video/x-raw-yuv, width=640, height=480, framerate=10/1 ! jpegenc ! avimux ! filesink location=out.yuv  
gst-launch-1.0 v4l2src ! jpegenc ! avimux ! filesink location=out.yuv  
gst-launch-1.0 v4l2src ! jpegenc ! avimux ! filesink location=out.avi
gst-launch-1.0 v4l2src ! jpegenc ! avimux ! videoconvert ! videoscale ! gdkpixbufsink name=sink
gst-launch-1.0 v4l2src ! videoconvert ! videoscale ! gdkpixbufsink name=sink
gst-launch-1.0 v4l2src ! jpegenc ! videoconvert ! videoscale ! gdkpixbufsink name=sink
gst-launch-1.0 v4l2src ! jpegenc ! videoscale ! gdkpixbufsink name=sink
gst-launch-1.0 v4l2src ! jpegenc ! gdkpixbufsink name=sink
gst-launch-1.0 v4l2src num-buffers=1 ! jpegenc ! filesink location=/tmp/capture1.jpeg
gst-launch-1.0 v4l2src num-buffers=1 ! jpegenc ! filesink location=/home/lorenzo/Escritorio/capture1.jpeg
gst-launch-1.0 -v autovideosrc ! omxh264enc ! 'video/x-h264, 
stream-format=(string)byte-stream' ! h264parse ! qtmux ! filesink 
location=test.mp4 sync=false
gst-launch videotestsrc ! videorate ! video/x-raw-yuv,framerate=5/1 ! queue ! theoraenc ! queue ! mux. pulsesrc device="alsa_input.usb-046d_HD_Pro_Webcam_C920_F1894590-02-C920.analog-stereo" ! audio/x-raw-int,rate=48000,channels=2,depth=16 ! queue ! audioconvert ! queue ! vorbisenc ! queue ! mux. oggmux name=mux ! filesink location=stream.ogv
gst-launch v4l2 ! videorate ! video/x-raw-yuv,framerate=5/1 ! queue ! theoraenc ! queue ! vorbisenc ! queue ! filesink location=stream.ogv
gst-launch-1.0 v4l2 ! videorate ! video/x-raw-yuv,framerate=5/1 ! queue ! theoraenc ! queue ! vorbisenc ! queue ! filesink location=stream.ogv
gst-launch-1.0 v4l2src ! videorate ! video/x-raw-yuv,framerate=5/1 ! queue ! theoraenc ! queue ! vorbisenc ! queue ! filesink location=stream.ogv
gst-launch-1.0 v4l2src ! video/x-raw-yuv,framerate=5/1 ! queue ! theoraenc ! queue ! vorbisenc ! queue ! filesink location=stream.ogv
gst-launch-1.0 v4l2src ! theoraenc ! queue ! vorbisenc ! queue ! filesink location=stream.ogv
rm stream.ogv 
gst-launch-1.0 v4l2src ! theoraenc ! queue ! filesink location=stream.ogv
gst-launch-1.0 v4l2src ! location=stream.ogv
gst-launch-1.0 v4l2src ! queue ! filesink location=stream.ogv
gst-launch-1.0 v4l2src ! queue ! filesink location=stream2.ogv
gst-launch-1.0 v4l2src ! videoconvert ! videoscale ! queue ! filesink location=stream2.ogv
gst-launch-1.0 v4l2src ! h264parse ! videoconvert ! videoscale ! queue ! filesink location=stream2.ogv
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! videoconvert ! videoscale ! queue ! filesink location=stream2.ogv
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! filesink location=stream2.ogv
gst-launch v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! ffmpegcolorspace ! queue ! vpuenc codec=6 ! avimux ! filesink location=outputh264.avi sync=false
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! ffmpegcolorspace ! queue ! vpuenc codec=6 ! avimux ! filesink location=outputh264.avi sync=false
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! vpuenc codec=6 ! avimux ! filesink location=outputh264.avi sync=false
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! avimux ! filesink location=outputh264.avi sync=false
gst-launcg-1.0 v4l2src device=/dev/video0 timestamp=true ! video/x-h264, width=1920, height=1080, framerate=30/1
gst-launch-1.0 v4l2src device=/dev/video0 timestamp=true ! video/x-h264, width=1920, height=1080, framerate=30/1
gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-h264, width=1920, height=1080, framerate=30/1
gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-h264, width=1920, height=1080, framerate=30/1 ! xvimagesink
gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-h264, width=1920, height=1080, framerate=30/1 ! h264parse ! xvimagesink
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg, width=1920, height=1080 ! jpegparse ! jpegdec ! xvimagesink
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg, width=1920, height=1080 ! jpegparse ! jpegdec ! autovideoconvert ! filesink location=test
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg, width=1920, height=1080 ! jpegparse ! jpegdec ! filesink location=test
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg ! jpegparse ! jpegdec ! filesink location=test
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg ! jpegparse ! jpegenc ! filesink location=test
gst-launch-1.0 videotestsrc ! video/x-raw,width=640,height=480 ! autovideosink
gst-launch-1.0 v4l2src device="/dev/video0" ! video/x-raw,width=640,height=480 ! autovideosink
gst-launch-1.0 v4l2src device="/dev/video0" ! video/x-raw,width=640,height=480 ! filesink location=test
gst-launch-1.0 v4l2src device="/dev/video0" ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! jpegenc ! filesink location=test
gst-launch-1.0 v4l2src device="/dev/video0" ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! jpegenc ! filesink location=test.mpeg
gst-launch-1.0 v4l2src device="/dev/video0" ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! jpegenc ! queue ! gdkpixbufsink
gst-launch-1.0 v4l2src device="/dev/video0" ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! jpegenc ! gdkpixbufsink
uridecodebin uri=file:///tmp.test.png ! videoconvert ! videoscale ! autovideosik
uridecodebin uri=file:///tmp.test.png ! videoconvert ! videoscale ! autovideosink
gst-launch-1.0 uridecodebin uri=file:///tmp.test.png ! videoconvert ! videoscale ! autovideosink
gst-launch-1.0 uridecodebin uri=file:///tmp/test.png ! videoconvert ! videoscale ! autovideosink
gst-launch-1.0 uridecodebin uri=file:///tmp/test.mpeg ! videoconvert ! videoscale ! autovideosink
cd /datos/Sync/Programacion/Python/backlight-indicator/src/
python3 webcam2.py 
ls
cd Es
cd 
cd Escritorio
fswebcam -r 640x480 --jpeg 85 -D 1 web-cam-shot.jpg
fswebcam -r 640x480 --jpeg 85 -D 2 web-cam-shot.jpg
fswebcam -r 640x480 --jpeg 85 -D 5 web-cam-shot.jpg
ffmpeg -f video4linux2 -s 640x480 -i /dev/video0 -ss 0:0:2 -frames 1 /tmp/out.jpg
ffmpeg -f video4linux2 -s 640x480 -i /dev/video0 -ss 0:0:2 -frames 1 out.jpg
ffmpeg -f video4linux2 -s 6fswebcam -r 640x480 --jpeg 100 -D 3 -S 13 fswebcam.jpg40x480 -i /dev/video0 -ss 0:0:2 -frames 1 out.jpg
fswebcam -r 640x480 --jpeg 100 -D 3 -S 13 fswebcam.jpg
fswebcam -r 640x480 --jpeg 100 -D 1 -S 13 fswebcam.jpg
man fswebcam
fswebcam -r 640x480 --jpeg 100 --no-banner -D 1 -S 13 fswebcam.jpg
fswebcam -r 640x480 --jpeg 100 --no-banner -S 13 fswebcam.jpg
gst-launch-1.0 v4l2src ! video/x-raw-yuv,framerate=5/1 ! queue ! theoraenc ! queue ! vorbisenc ! queue ! filesink location=stream.ogv
gst-launch-1.0 v4l2src ! theoraenc ! queue ! vorbisenc ! queue ! filesink location=stream.ogv
rm stream.ogv 
gst-launch-1.0 v4l2src ! theoraenc ! queue ! filesink location=stream.ogv
gst-launch-1.0 v4l2src ! location=stream.ogv
gst-launch-1.0 v4l2src ! queue ! filesink location=stream.ogv
gst-launch-1.0 v4l2src ! queue ! filesink location=stream2.ogv
gst-launch-1.0 v4l2src ! videoconvert ! videoscale ! queue ! filesink location=stream2.ogv
gst-launch-1.0 v4l2src ! h264parse ! videoconvert ! videoscale ! queue ! filesink location=stream2.ogv
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! videoconvert ! videoscale ! queue ! filesink location=stream2.ogv
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! filesink location=stream2.ogv
gst-launch v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! ffmpegcolorspace ! queue ! vpuenc codec=6 ! avimux ! filesink location=outputh264.avi sync=false
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! ffmpegcolorspace ! queue ! vpuenc codec=6 ! avimux ! filesink location=outputh264.avi sync=false
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! vpuenc codec=6 ! avimux ! filesink location=outputh264.avi sync=false
gst-launch-1.0 v4l2src num-buffers=100 ! video/x-raw-yuv ! queue ! avimux ! filesink location=outputh264.avi sync=false
gst-launcg-1.0 v4l2src device=/dev/video0 timestamp=true ! video/x-h264, width=1920, height=1080, framerate=30/1
gst-launch-1.0 v4l2src device=/dev/video0 timestamp=true ! video/x-h264, width=1920, height=1080, framerate=30/1
gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-h264, width=1920, height=1080, framerate=30/1
gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-h264, width=1920, height=1080, framerate=30/1 ! xvimagesink
gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-h264, width=1920, height=1080, framerate=30/1 ! h264parse ! xvimagesink
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg, width=1920, height=1080 ! jpegparse ! jpegdec ! xvimagesink
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg, width=1920, height=1080 ! jpegparse ! jpegdec ! autovideoconvert ! filesink location=test
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg, width=1920, height=1080 ! jpegparse ! jpegdec ! filesink location=test
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg ! jpegparse ! jpegdec ! filesink location=test
gst-launch-1.0 v4l2src device=/dev/video0 ! image/jpeg ! jpegparse ! jpegenc ! filesink location=test
gst-launch-1.0 videotestsrc ! video/x-raw,width=640,height=480 ! autovideosink
gst-launch-1.0 v4l2src device="/dev/video0" ! video/x-raw,width=640,height=480 ! autovideosink
gst-launch-1.0 v4l2src device="/dev/video0" ! video/x-raw,width=640,height=480 ! filesink location=test
gst-launch-1.0 v4l2src device="/dev/video0" ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! jpegenc ! filesink location=test
gst-launch-1.0 v4l2src device="/dev/video0" ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! jpegenc ! filesink location=test.mpeg
gst-launch-1.0 v4l2src device="/dev/video0" ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! jpegenc ! queue ! gdkpixbufsink
gst-launch-1.0 v4l2src device="/dev/video0" ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! jpegenc ! gdkpixbufsink
uridecodebin uri=file:///tmp.test.png ! videoconvert ! videoscale ! autovideosik
uridecodebin uri=file:///tmp.test.png ! videoconvert ! videoscale ! autovideosink
gst-launch-1.0 uridecodebin uri=file:///tmp.test.png ! videoconvert ! videoscale ! autovideosink
gst-launch-1.0 uridecodebin uri=file:///tmp/test.png ! videoconvert ! videoscale ! autovideosink
gst-launch-1.0 uridecodebin uri=file:///tmp/test.mpeg ! videoconvert ! videoscale ! autovideosink
python3 webcam2.py 
cd Es
cd Escritorio
fswebcam -r 640x480 --jpeg 85 -D 1 web-cam-shot.jpg
fswebcam -r 640x480 --jpeg 85 -D 2 web-cam-shot.jpg
fswebcam -r 640x480 --jpeg 85 -D 5 web-cam-shot.jpg
ffmpeg -f video4linux2 -s 640x480 -i /dev/video0 -ss 0:0:2 -frames 1 /tmp/out.jpg
ffmpeg -f video4linux2 -s 640x480 -i /dev/video0 -ss 0:0:2 -frames 1 out.jpg
ffmpeg -f video4linux2 -s 6fswebcam -r 640x480 --jpeg 100 -D 3 -S 13 fswebcam.jpg40x480 -i /dev/video0 -ss 0:0:2 -frames 1 out.jpg
fswebcam -r 640x480 --jpeg 100 -D 3 -S 13 fswebcam.jpg
fswebcam -r 640x480 --jpeg 100 -D 1 -S 13 fswebcam.jpg
man fswebcam
fswebcam -r 640x480 --jpeg 100 --no-banner -D 1 -S 13 fswebcam.jpg
fswebcam -r 640x480 --jpeg 100 --no-banner -S 13 fswebcam.jpg
umake android
cat /proc/acpi/button/lid/LID0/state
python3
cd /datos/Sync/Programacion/Python/backlight-indicator/src/
ls -la
python3 calculation.py 
python3 backlightindicator.py 
dch -r
dch -i
git commit -m "Fixed bugs #2 and #3"
mybuilder
umake
sudo add-apt-repository ppa:webupd8team/java
sudo apt upgrade
sudo apt-get install oracle-java9-installer
sudo apt-get install oracle-java8-installer
sudo apt install oracle-java8-set-default
oracle-java8-set-default
sudo oracle-java8-set-default
sudo apt install x11vnc
x11vnc -display:0
x11vnc
killall x11vnc
x11vnc -clear-all
killall x11vnc && /usr/bin/x11vnc -rfbport 5900 -bg -vncconnect -xvnc -forever 
x11vnc -R stop
cd ..
cd Nautilus/
cp nautilus-locompress/ nautilus-loextract
cd nautilus-loextract/
git remove remote
git remote remove origin
git remote -v
git remote add origin git@github.com:atareao/nautilus-loextract.git
git commit -m "First release"
git push -u origin master
ls
git add .
git commit -m "Updated icon"
git push
compile_extension 
sudo apt install vino
vnc
cd 
sudo apt install vncserver
sudo apt install tightvncserver
vncserver -kill :2
nano .vnc/xstartup 
vncserver -kill :1
vncserver
cat .vnc/xps13\:1.log 
sudo apt instal vnc4server
sudo apt install vnc4server
sudo apt remove tightvncserver
vncpasswd
vnc4server 
cat .vnc/xps13\:2.log 
sudo apt install gufw
sudo apt remove gufw
gufw
sudo apt remove vnc4server
sudo apt autoremove
sudo apt remove vnc*
sudo apt updat
sudo apt update
sudo apt install nautilus-loextract
killall nautilus
nautilus
sudo apt install x11vnc
x11vnc -display :0 -auth /var/lib/gdm/:0.Xauth
x11vnc -display :0 -auth ~/.Xauthority
x11vnc -noxdamage -many -display :0 -auth /var/run/gdm/$(sudo ls /var/run/gdm | grep $(whoami))/database -forever -bg
sudo apt remove x11vnc
sudo apt autoremove
vino
sudo apt install fonts-font-awesome
/opt/extras.ubuntu.com/backlight-indicator/bin/backlight-indicator 
sudo apt remove vnc4server
sudo apt remove vnc*
sudo apt updat
sudo apt install nautilus-loextract
nautilus
sudo apt install x11vnc
x11vnc -display :0 -auth /var/lib/gdm/:0.Xauth
x11vnc -display :0 -auth ~/.Xauthority
x11vnc -noxdamage -many -display :0 -auth /var/run/gdm/$(sudo ls /var/run/gdm | grep $(whoami))/database -forever -bg
sudo apt remove x11vnc
vino
sudo apt install fonts-font-awesome
/opt/extras.ubuntu.com/backlight-indicator/bin/backlight-indicator 
cd Descargas
cd Telegram\ Desktop/
ffmpeg -i filename.mp4 filename.mp3
ffmpeg -i instalacion_ubuntu_server.mp4 instalacion_ubuntu_server.mp3
cp instalacion_ubuntu_server.mp4 ~/Escritorio/
ls -la
ffmpeg -i instalacion_ubuntu_server.mp4 -i instalacion_ubuntu_server.mp3 -vcodec copy -acodec copy -map 0:0 -map 1:0 output.mp4
cd 
cd Escritorio
ffmpeg -i instalacion_ubuntu_server.mp4 -i instalacion_ubuntu_server.mp3 -c:v copy -map 0:v:0 -map 1:a:0 output.mp4
sudo add-apt-repository ppa:atareao/nautilus-extensions
sudo apt install nautilus-iconify
killall nautilus
cd /datos/Sync/Programacion/Nautilus/nautilus-iconify/
ls
cd src/
cd ..
dch -i 
mybuilder 
sudo apt update
sudo apt upgrade
sudo apt autoremove
killall nautilus
nautilus
sudo apt remove vnc4server
sudo apt remove vnc*
sudo apt updat
sudo apt install nautilus-loextract
nautilus
sudo apt install x11vnc
x11vnc -display :0 -auth /var/lib/gdm/:0.Xauth
x11vnc -display :0 -auth ~/.Xauthority
x11vnc -noxdamage -many -display :0 -auth /var/run/gdm/$(sudo ls /var/run/gdm | grep $(whoami))/database -forever -bg
sudo apt remove x11vnc
vino
sudo apt install fonts-font-awesome
/opt/extras.ubuntu.com/backlight-indicator/bin/backlight-indicator 
cd Descargas
cd Telegram\ Desktop/
ffmpeg -i filename.mp4 filename.mp3
ffmpeg -i instalacion_ubuntu_server.mp4 instalacion_ubuntu_server.mp3
cp instalacion_ubuntu_server.mp4 ~/Escritorio/
ffmpeg -i instalacion_ubuntu_server.mp4 -i instalacion_ubuntu_server.mp3 -vcodec copy -acodec copy -map 0:0 -map 1:0 output.mp4
cd 
cd Escritorio
ffmpeg -i instalacion_ubuntu_server.mp4 -i instalacion_ubuntu_server.mp3 -c:v copy -map 0:v:0 -map 1:a:0 output.mp4
sudo add-apt-repository ppa:atareao/nautilus-extensions
sudo apt install nautilus-iconify
killall nautilus
cd /datos/Sync/Programacion/Nautilus/nautilus-iconify/
dch -i 
mybuilder 
sudo apt update
sudo apt upgrade
sudo apt autoremove
killall nautilus
nautilus
cd /datos/Sync/Programacion/
cd Python/
git commit -m "some changes"
git pull
ls -la
cd src/
rm -rf comun.pyc
rm -rf __pycache__/
git commit -m
git remote remove origin
git remote -v
git remote add 
git remote add origin git@github.com:atareao/national-geographic-wallpaper.git
git push -u origin master
./national-geographic-wallpaper.py 
cd /datos/Sync/Programacion/Python/backlight-indicator/src/
ba
python3 backlightindicator.py 
dch -e
git commit -m "free webcam when not used"
cd national-geographic-wallpaper/
git add .
git commit -m "merged"
git push
dch -r
dch -i
cd ..
cd backlight-indicator/
ls
mybuilder
cd .ssh
ls
cat id_rsa.pub
git pull
cd src/
rm -rf comun.pyc
rm -rf __pycache__/
git commit -m
git remote remove origin
git remote -v
git remote add 
git remote add origin git@github.com:atareao/national-geographic-wallpaper.git
git push -u origin master
./national-geographic-wallpaper.py 
cd /datos/Sync/Programacion/Python/backlight-indicator/src/
ba
python3 backlightindicator.py 
dch -e
git commit -m "free webcam when not used"
cd national-geographic-wallpaper/
git commit -m "merged"
dch -i
cd ..
cd backlight-indicator/
sudo apt update
sudo apt upgrade
sudo apt install national-geographic-wallpaper
cd /datos/Sync/Programacion/Python/national-geographic-wallpaper/
dch -r
git add .
git commit -m "Notification for GoPro"
git push
mybuilder
ssh -W 192.168.1.26:2222
ssh 192.168.
ssh 192.168.1.118
ssh 192.168.1.151
ssh 192.168.1.181
ssh 192.168.1.26
ssh 192.168.1.26:2222
ssh
ssh 192.168.1.26 -p 2222
scp
scp user@192.168.1.26:2222//storage/emulated/0/Pictures/Screenshots/Screenshot_20170616-074923.png ./
scp -P 2222 user@192.168.1.26://storage/emulated/0/Pictures/Screenshots/Screenshot_20170616-074923.png ./
scp -P 2222 user@192.168.1.26://storage/emulated/0/Pictures/Screenshots/Screenshot_20170616-074926.png ./
mv * .png ~/Escritorio/
mv *.png ~/Escritorio/
ls -la
cd
cd Escritorio
ls
ssh -p 2222 user@192.168.1.26
scp -P 2222 user@192.168.1.26:/sdcard/Pictures/Screenshots/Screenshot_20170616-0802*.png ./
scp
scp user@192.168.1.26:2222//storage/emulated/0/Pictures/Screenshots/Screenshot_20170616-074923.png ./
scp -P 2222 user@192.168.1.26://storage/emulated/0/Pictures/Screenshots/Screenshot_20170616-074923.png ./
scp -P 2222 user@192.168.1.26://storage/emulated/0/Pictures/Screenshots/Screenshot_20170616-074926.png ./
mv * .png ~/Escritorio/
mv *.png ~/Escritorio/
ls -la
cd
cd Escritorio
ssh -p 2222 user@192.168.1.26
scp -P 2222 user@192.168.1.26:/sdcard/Pictures/Screenshots/Screenshot_20170616-0802*.png ./
cd /datos/Sync/Programacion/
cd Android/
cd InstaShare/
git init
git commit -m "First commit"
git remote add origin git@github.com:atareao/InstaShare.git
git push -u origin master
cp ../../Nautilus/nautilus-loextract/README ./
nano README 
git commit -m "Added README"
cp ../../Python/my-weather-indicator/.gitignore ./
git commit -m "Added .gitignore"
cp ../../Nautilus/nautilus-loextract/AUTHORS ./
cp ../../Nautilus/nautilus-loextract/COPYING ./
ls
git add .
git commit -m "Added license"
git push
cd Escritorio
ls
rm instalacion_ubuntu_server.mp3
ffmpeg -i instalacion_ubuntu_server.mp4 instalacion_ubuntu_server.mp3
history | ffmpeg
history | grep ffmpeg
ffmpeg -i video.mp4 -i audio_mejorado.mp3 -c:v copy -map 0:v:0 -map 1:a:0 video_mejorado.mp4
history | grep ffmpeg
rm instalacion_ubuntu_server.mp3
ffmpeg -i instalacion_ubuntu_server.mp4 instalacion_ubuntu_server.mp3
history | ffmpeg
history | grep ffmpeg
ffmpeg -i video.mp4 -i audio_mejorado.mp3 -c:v copy -map 0:v:0 -map 1:a:0 video_mejorado.mp4
history | grep ffmpeg
sudo apt install curl
curl http://demo.wp-api.org/wp-json/wp/v2/media
clear
curl https://www.atareao.es/wp-json/wp/v2/media
curl https://www.atareao.es/wp-json/wp/v2/posts
curl https://www.atareao.es/wp-json/
sudo apt install python3-requests_oauthlib
sudo apt install python3-requests-oauthlib
sudo apt install python3-oauthlib
umake
umake ide
umake ide atom
sudo apt install pylama
sudo apt remove pylama
autoremove
flake8
sudo apt install flake8
apm
apm install linter
apm intall flake8
apm install flake8
apt install linter-pep8
apm install linter-pep8
sudo apt install pep8
apm install atom-beautify
apm install python-tools
apm install python-indent
apm install autocomplete-python
apm install linter-flake8
cd src/
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
apm remove
apm removeatom-beautify
apm remove atom-beautify
apm install hidrogen
apm install hydrogen
apm install magicpython
apm install sublime-style-column-selection
apm install file-icons
apm remove linter-flake8
apm install linter-lintr
apm intall minimap
apm install minimap minimap-cursorline minimap-selection minimap-find-and-replace
apm remove linter-pylint
apm install highlight-line highlight-selected
apm remove linter-pycodestyle
sudo apt install flake8
sudo apt install flake8-docstrings
sudo apt install pylint
sudo apt install linter-pylint
apm install linter-pylint
pylint
sudo apt install pep8
apm install linter-python-pep8
apm remove linter-pylint linter-ui-default
pep8
apm install linter-flake8
apm install linter-pep8
apm list --installed
cd Escritorio
ls
ls Spanish.*
cp Spanish.* /datos/apps/atom/resources/app/node_modules/spellchecker/vendor/hunspell_dictionaries/
autoremove
flake8
sudo apt install flake8
apm
apm install linter
apm intall flake8
apm install flake8
apt install linter-pep8
apm install linter-pep8
sudo apt install pep8
apm install atom-beautify
apm install python-tools
apm install python-indent
apm install autocomplete-python
apm install linter-flake8
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
python3 logindialog.py 
apm remove
apm removeatom-beautify
apm remove atom-beautify
apm install hidrogen
apm install hydrogen
apm install magicpython
apm install sublime-style-column-selection
apm install file-icons
apm remove linter-flake8
apm install linter-lintr
apm intall minimap
apm install minimap minimap-cursorline minimap-selection minimap-find-and-replace
apm remove linter-pylint
apm install highlight-line highlight-selected
apm remove linter-pycodestyle
sudo apt install flake8
sudo apt install flake8-docstrings
sudo apt install pylint
sudo apt install linter-pylint
apm install linter-pylint
pylint
sudo apt install pep8
apm install linter-python-pep8
apm remove linter-pylint linter-ui-default
pep8
apm install linter-flake8
apm install linter-pep8
apm list --installed
cd /usr/share/atom/resources/app.asar.unpacked/node_modules/spell-check/node_modules/spellchecker/vendor/hunspell_dictionaries
cd app
cd /datos/apps/
cd atom/
cd app/
mv en_US.aff en_US.aff.backup
mv en_US.dic en_US.dic.backup
ln -s Spanish.aff en_US.aff
ln -s Spanish.dic en_US.dic
rm en_US.add
rm en_US.aff
rm en_US.dic
cp Spanish.aff en_US.aff
cp Spanish.dic en_US.dic
cd static/
cd resources/
cd node_modules/
cd spell-check/
cd spec/
cd lib/
sudo apt install hunspell-es
huspell
hunspell
sudo apt install hunspell
hunspell -D
ls /usr/share/myspell
cd spellchecker/
cd vendor/
cd hunspell_dictionaries/
history grep | umake
history | grep umake
sudo apt remove sublime-text
sudo apt remove sublime-text-installer
cd /datos/apps/atom/
cd 
cd /datos/Sync/Programacion/Python/palettes-extra-for-inkscape/
mybuilder 
cd palettes-extra-for-gimp/
dch -i
mybuilder
cd ,,ç
cd podcastgetter/
cd src/
ls
./podcastgetter.py 
ls -la
cd ..
git add .
git commit -m "Updated podcasts"
git push
curl http://demo.wp-api.org/wp-json/wp/v2/media
cd_upodcatcher 
dch -r
git add .
git commit -m "Fixed some bugs"
git push
mybuilder
hunspell -D
ls /usr/share/myspell
cd spellchecker/
cd vendor/
cd hunspell_dictionaries/
history grep | umake
history | grep umake
sudo apt remove sublime-text
sudo apt remove sublime-text-installer
cd /datos/apps/atom/
cd 
cd /datos/Sync/Programacion/Python/palettes-extra-for-inkscape/
mybuilder 
cd palettes-extra-for-gimp/
cd ,,ç
cd podcastgetter/
cd src/
./podcastgetter.py 
ls -la
git commit -m "Updated podcasts"
curl http://demo.wp-api.org/wp-json/wp/v2/media
dch -r
git commit -m "Fixed some bugs"
cd_upodcatcher 
cat debian/changelog 
cd data/
cd icons/
for i in refresh-*.svg do inkscape $i --export-png=`echo $i | sed -e 's/svg$/png/'`; done
for i in refresh-*.svg do inkscape $i --export-png=`echo $i | sed -e 's/svg/png/'`; done
convert -delay 20 -loop 0 refresh-*.png
convert -delay 20 -loop 0 refresh-*.png result.gif
mv result.gif refresh.gif
convert refresh-*.png -background white -flatten refresh-*.jpg
mogrify refresh-*.png -background white -flatten refresh-*.jpg
rm refresh-12-*
for i in refresh-*.svg; do inkscape $i --export-background=WHITE --export-png=`echo $i | sed -e 's/svg$/png/'`; done
rm *.png
rm *.png~
sed -i -- 's/fill:#000000/fill:#ffffff/g' *.svg
for i in refresh-*.svg; do inkscape $i --export-png=`echo $i | sed -e 's/svg$/png/'`; done
cd bin/
ls
./upodcatcher 
cd ..
git add .
git commit -m "Added refresh button"
git push
dch -i
mybuilder
dch -r
git commit -m "Fixed some bugs"
cat debian/changelog 
cd data/
cd icons/
for i in refresh-*.svg do inkscape $i --export-png=`echo $i | sed -e 's/svg$/png/'`; done
for i in refresh-*.svg do inkscape $i --export-png=`echo $i | sed -e 's/svg/png/'`; done
convert -delay 20 -loop 0 refresh-*.png
convert -delay 20 -loop 0 refresh-*.png result.gif
mv result.gif refresh.gif
convert refresh-*.png -background white -flatten refresh-*.jpg
mogrify refresh-*.png -background white -flatten refresh-*.jpg
rm refresh-12-*
for i in refresh-*.svg; do inkscape $i --export-background=WHITE --export-png=`echo $i | sed -e 's/svg$/png/'`; done
rm *.png
rm *.png~
sed -i -- 's/fill:#000000/fill:#ffffff/g' *.svg
for i in refresh-*.svg; do inkscape $i --export-png=`echo $i | sed -e 's/svg$/png/'`; done
cd ..
git add .
git commit -m "Added refresh button"
git push
dch -i
mybuilder
cd_upodcatcher 
cd bin/
ls
./upodcatcher 
cd_upodcatcher 
cd bin/
./upodcatcher 
cd Sync/Programacion/Python/national-geographic-wallpaper/
it pull
fit pull
git pull
ls
cat debian/changelog 
mybuilder
it pull
fit pull
git pull
cat debian/changelog 
cd Sync/Programacion/Python/national-geographic-wallpaper/
dch -i
git commit -m
git commit -m "Added Fstoppers"
mybuilder
groupadd telegram
sudo groupadd telegram
cd
cd apps
cd Sync/Programacion/Nautilus/nautilus-500px-uploader/
ls
dch -r
git add .
git commit -m "Minor"
git push
compile_extension 
git commit -m "Minor"
compile_extension 
cd /datos/Sync/Programacion/Python/podcastgetter/
cd src/
./podcastgetter.py 
ls
ls -la
git add .
git commit -m "updated"
git push
atom podcasts.html 
ssh lorenzo@192.168.1.185
ssh lorenzo@192.168.1.181
exit
git add .
git commit -m "updated"
git push
atom podcasts.html 
cd Descargas
cd EasyRSA-3.0.1/
cd pki/
cd certs_by_serial/
cd ..
cd issued/
ls
sudo apt install openvpn network-manager-openvpn-gnome
service network-manager restart
exit
git commit -m "Added refresh button"
git push
dch -i
mybuilder
dch -r
git commit -m "Fixed some bugs"
cat debian/changelog 
cd data/
cd icons/
for i in refresh-*.svg do inkscape $i --export-png=`echo $i | sed -e 's/svg$/png/'`; done
for i in refresh-*.svg do inkscape $i --export-png=`echo $i | sed -e 's/svg/png/'`; done
convert -delay 20 -loop 0 refresh-*.png
convert -delay 20 -loop 0 refresh-*.png result.gif
mv result.gif refresh.gif
convert refresh-*.png -background white -flatten refresh-*.jpg
mogrify refresh-*.png -background white -flatten refresh-*.jpg
rm refresh-12-*
for i in refresh-*.svg; do inkscape $i --export-background=WHITE --export-png=`echo $i | sed -e 's/svg$/png/'`; done
rm *.png
rm *.png~
sed -i -- 's/fill:#000000/fill:#ffffff/g' *.svg
for i in refresh-*.svg; do inkscape $i --export-png=`echo $i | sed -e 's/svg$/png/'`; done
git commit -m "Added refresh button"
git push
dch -i
mybuilder
cd_upodcatcher 
./upodcatcher 
cd_upodcatcher 
./upodcatcher 
cd Sync/Programacion/Python/national-geographic-wallpaper/
it pull
fit pull
git pull
cat debian/changelog 
mybuilder
it pull
fit pull
git pull
cat debian/changelog 
cd Sync/Programacion/Python/national-geographic-wallpaper/
dch -i
git commit -m
git commit -m "Added Fstoppers"
mybuilder
groupadd telegram
sudo groupadd telegram
cd apps
cd Sync/Programacion/Nautilus/nautilus-500px-uploader/
dch -r
git commit -m "Minor"
git push
compile_extension 
git commit -m "Minor"
compile_extension 
cd /datos/Sync/Programacion/Python/podcastgetter/
cd src/
./podcastgetter.py 
git commit -m "updated"
git push
atom podcasts.html 
ssh -P 2222 user@192.168.1.15
ssh
ssh user@192.168.1.15:2222
cd Descargas
scp
scp -P 2222 openvpn.zip user@192.168.1.15:/storage/emulated/0/ssh
scp -P 2222 openvpn.zip user@192.168.1.15
sudo apt install openvpn
sudo apt autoremove
build-key
easy-rsa
ssh admin@192.168.1.181
ssh lorenzo@192.168.1.181
unzip EasyRSA-3.0.1.zip 
cd EasyRSA-3.0.1/
cd bin/
./easyrsa 
./easyrsa help 14327
./easyrsa help build-client-full
cp ../openvpn/ca.crt ./
mv ca.crt pki/
rm pki/reqs/server.req 
rm pki/private/server.key 
rm pki/ca.crt 
./easyrsa init-pki
./easyrsa build-ca
./easyrsa build-server-full server
./easyrsa build-client-full lorenzo
./easyrsa build-client-full ana
./easyrsa build-client-full belcar
cd pki/
cd certs_by_serial/
ssh -p 2222 user@192.168.1.15
cp ca.crt -P 2222 user@192.168.1.15
cp ca.crt -p 2222 user@192.168.1.15
scp ca.crt -p 2222 user@192.168.1.15
scp ca.crt -p 2222 user@192.168.1.15:/storage/emulated/0/ssh/openvpn/
scp ca.crt -P 2222 user@192.168.1.15:/storage/emulated/0/ssh/openvpn/
man scp
scp -P 2222  ca.crt user@192.168.1.15:/storage/emulated/0/ssh/openvpn/
cd issued/
cd private/
cd ..
scp -P 2222  issued/lorenzo.crt user@192.168.1.15:/storage/emulated/0/ssh/openvpn/
scp -P 2222  private/lorenzo.key user@192.168.1.15:/storage/emulated/0/ssh/openvpn/
cd
cd temporal
mkdir ejemplos
cd ejemplos/
git init
git add articulo_01.md
touch articulo_01.md
clear
git add articulo_01.md 
git checkout articulo_01.md
touch articulo_02.md 
nano articulo_01.md 
git add .
git commit -m "test"
ls
ls -la
git reset --soft HEAD^
git reset HEAD articulo_01.md
git status
exit
ssh -P 2222 lorenzo@192.168.1.181
ssh -p 2222 lorenzo@192.168.1.181
ssh lorenzo@192.168.1.181
atom podcasts.html 
cd ..
cd issued/
sudo apt install openvpn network-manager-openvpn-gnome
service network-manager restart
exit
nano
cd Descargas
cd EasyRSA-3.0.1/
cd pki/
cd certs_by_serial/
ls
scp 01.pem lorenzo@192.168.1.181:\volume1\homes\lorenzo
scp 01.pem lorenzo@192.168.1.181:/volume2/homes/lorenzo
ssh lorenzo@192.168.1.181
git commit -m
git commit -m "Added Fstoppers"
mybuilder
groupadd telegram
sudo groupadd telegram
cd
cd apps
cd Sync/Programacion/Nautilus/nautilus-500px-uploader/
dch -r
git add .
git commit -m "Minor"
git push
compile_extension 
git commit -m "Minor"
compile_extension 
cd /datos/Sync/Programacion/Python/podcastgetter/
cd src/
./podcastgetter.py 
git add .
git commit -m "updated"
git push
atom podcasts.html 
sudo apt install byobu
sudo apt install terminator
ssh -p 2222 lorenzo@192.168.1.181
cd Descargas
ls -la
cd EasyRSA-3.0.1/
cd x509-types/
cd pki/
cd ..
nano index.txt
dh
cd certs_by_serial/
cat 02.pem 
cat 03.pem 
cat 01.pem 
cd 
cd Escritorio
ls
scp -P 2222 VPNConfig.ovpn user@192.168.1.15
ssh -p 2222 user@192.168.1.15:/storage/0/ssh
scp -P 2222 VPNConfig.ovpn user@192.168.1.15:/storage/emulated/0/ssh
ssh -p 2222 user@192.168.1.15
ssh -p 2222 user@192.168.1.181
ssh user@192.168.1.181
ssh -p 2222 user@10.8.0.14
tracepath -n belcar.synology.me
ssh -p 2222 user@10.8.0.6
scp 01.pem lorenzo@192.168.1.181:/volume2/homes/lorenzo
ssh lorenzo@192.168.1.181
ssh -p 2222 user@10.8.0.14
cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf /etc/openvpn/
sudo cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf /etc/openvpn/
cd /etc/openvpn/
cat client.conf 
openvpn
cd Es
cd
cd Escritorio
ls
cat VPNConfig.ovpn 
openvpn --config VPNConfig.ovpn
sudo openvpn --config VPNConfig.ovpn
sudo nano /etc/default/openvpn 
sudo cp VPNConfig.ovpn /etc/openvpn/config.conf
sudo openvpn
ssh -p 2222 user@10.8.0.6
cd Descargas
cd EasyRSA-3.0.1/
cd pki/
cd certs_by_serial/
scp 01.pem lorenzo@192.168.1.181:\volume1\homes\lorenzo
scp 01.pem lorenzo@192.168.1.181:/volume2/homes/lorenzo
ssh lorenzo@192.168.1.181
cd temporal
cd ejemplos/
ls
git checkout articulo_01.md
clear
git status
cd temporal
cd ejemplos/
git checkout articulo_01.md
git status
cd_upodcatcher 
cd bin/
clear
./upodcatcher 
cd
ls
cat my_atom_packages.txt 
git checkout articulo_01.md
clear
git status
ls
apm list --installed --bare > package-list.txt
cat package-list.txt 
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
ls
ls
cat package-list.txt 
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
ls
ls
clear
cmatrix
sudo apt install cmatrix
sudo apt install htop
htop
cmatrix
sudo add-apt-repository ppa:costales/anoise
sudo apt update
sudo apt install anoise
sudo apt install anoise-community-extension1
sudo apt install anoise-community-extension2 anoise-community-extension3 anoise-community-extension4 anoise-community-extension5
git upgrade
sudo apt upgrade
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
ls
ls
sudo apt install neofetch
neofetch
clear
cmatrix
sudo apt install cmatrix
sudo apt install htop
htop
cmatrix
sudo add-apt-repository ppa:costales/anoise
sudo apt install anoise
sudo apt install anoise-community-extension1
sudo apt install anoise-community-extension2 anoise-community-extension3 anoise-community-extension4 anoise-community-extension5
git upgrade
sudo apt upgrade
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
sudo apt install neofetch
neofetch
sudo add-apt-repository ppa:audio-recorder/ppa
sudo apt update
sudo apt install audio-recorder
sudo autoremove
sudo apt install python3-sounddevice
sudo apt install python-sounddevice
cd
cd Sync/Programacion/Python/
git clone git@github.com:spatialaudio/python-sounddevice.git
cd python-sounddevice/
cat make_dist.sh 
cd examples/
ln -s ../sounddevice.py soundevice.py
rm soundevice.py 
cp ../sounddevice.py ./
ls -la
cat rec_unlimited.py 
sudo apt install python3-cffi
ls
./rec_unlimited.py -l
sudo apt install python3-ecasound
sudo apt install python-ecasound
ecasound 
sudo apt remove python-ecasound
sudo apt autoremove
cat my_atom_packages.txt 
apm list --installed --bare > package-list.txt
cat package-list.txt 
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
cat package-list.txt 
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
cmatrix
sudo apt install cmatrix
sudo apt install htop
htop
cmatrix
sudo add-apt-repository ppa:costales/anoise
sudo apt update
sudo apt install anoise
sudo apt install anoise-community-extension1
sudo apt install anoise-community-extension2 anoise-community-extension3 anoise-community-extension4 anoise-community-extension5
git upgrade
sudo apt upgrade
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
sudo apt install neofetch
neofetch
cd temporal
cd ejemplos/
GIT STATUS
git checkout articulo_01.md
git add articulo_03.md 
ls
git reset articulo_03.md
git add articulo_03.md
nano articulo_01.md 
git reset HEAD~
git add .
git commit -m "First commit"
clear
ls -la
git add articulo_02.md 
nano articulo_02.md 
git status
sudo apt install portaudio
sudo apt install python3-pysoundfile
sudo apt install python-pysoundfile
sudo apt install python3-soundfile
sudo apt install python3-pysoundfile
sudo apt install python-pysoundfile
sudo apt install python3-soundfile
sudo apt install jokosher
cd Descargas
sudo dpkg -i jokosher_0.11.5-0ubuntu1_all.deb 
cd /datos/Sync/Programacion/Python/
git clone git@github.com:atareao/jokosher.git 
cd jokosher/
ls
nano AUTHORS 
sudo apt install -f
sudo apt remove traverso
autoremove
sudo apt install gir1.2-gweather-3.0
python3
sudo apt install python3-pysoundfile
sudo apt install python-pysoundfile
sudo apt install python3-soundfile
sudo apt install jokosher
cd Descargas
sudo dpkg -i jokosher_0.11.5-0ubuntu1_all.deb 
cd /datos/Sync/Programacion/Python/
git clone git@github.com:atareao/jokosher.git 
cd jokosher/
nano AUTHORS 
sudo apt install -f
sudo apt remove traverso
autoremove
sudo apt install gir1.2-gweather-3.0
python3
sincroniza_xps13 
apm install super-vala
cd /datos/Sync/Programacion/Vala/equival/
./quickbuild.sh -h
cmake
sudo apt install cmake
sudo apt install glib2-devel   
sudo apt install glib2-de
sudo apt install glib2-dev
sudo apt install libglib2.0-dev
sudo apt install libglib2.0-doc
sudo apt install libgtk-3-dev libgtk-3-doc libcairo2-dev
sudo apt install valac-0.36.3
sudo apt install valac-0.36
sudo apt install valac-0.34
sudo apt install vala-0.34
sudo apt install debhelper
sudo apt install libgtk-3-dev libjson-glib-dev
sudo apt install valac
./quickbuild.sh -b
./equival 
history grep vala
history | grep vala
apm remove super-vala
cd_upodcatcher 
ls
dch -r
git add .
git commit -m "sync"
git push
mybuilder
git commit -m "sync"
git push
mybuilder
cat pulseeffects 
sudo apt install python3-scipy
ls
python3 setup.py 
python3 setup.py install
sudo python3 setup.py install
pulseeffects 
./pulseeffects 
exit
sudo apt install python3-pysoundfile
sudo apt install python-pysoundfile
sudo apt install python3-soundfile
sudo apt install jokosher
sudo dpkg -i jokosher_0.11.5-0ubuntu1_all.deb 
git clone git@github.com:atareao/jokosher.git 
cd jokosher/
nano AUTHORS 
sudo apt install -f
sudo apt remove traverso
autoremove
sudo apt install gir1.2-gweather-3.0
python3
sincroniza_xps13 
apm install super-vala
cd /datos/Sync/Programacion/Vala/equival/
./quickbuild.sh -h
cmake
sudo apt install cmake
sudo apt install glib2-devel   
sudo apt install glib2-de
sudo apt install glib2-dev
sudo apt install libglib2.0-dev
sudo apt install libglib2.0-doc
sudo apt install libgtk-3-dev libgtk-3-doc libcairo2-dev
sudo apt install valac-0.36.3
sudo apt install valac-0.36
sudo apt install valac-0.34
sudo apt install vala-0.34
sudo apt install debhelper
sudo apt install libgtk-3-dev libjson-glib-dev
sudo apt install valac
./quickbuild.sh -b
./equival 
history grep vala
history | grep vala
apm remove super-vala
git commit -m "sync"
cd Descargas
sudo dpkg -i draftSight.deb 
upodcatcher 
dpkg-query -W upodcatcher
cat /usr/share/gnome/gnome-version.xml
killall python3
cd /datos/Sync/Programacion/Python/
cd upodcatcher/
git commit -c
git commit -C
dhc -r
cd data/
cd icons/
history | grep sed
sed -i -- 's/fill:#000000/fill:#ffffff/g' delete.svg
sed -i -- 's/fill:#ffffff/fill:#000000/g' delete.svg
sed -i -- 's/fill:#ffffff/fill:#000000/g' download.svg
sed -i -- 's/fill:#ffffff/fill:#000000/g' info.svg
sed -i -- 's/fill:#ffffff/fill:#000000/g' listened.svg
sed -i -- 's/fill:#ffffff/fill:#000000/g' pause.svg
sed -i -- 's/fill:#ffffff/fill:#000000/g' wait.svg
sed -i -- 's/fill:#ffffff/fill:#000000/g' nolistened.svg
cd Escritorio
cd pulseeffects-master/
sudo cp -r share/* /usr/share/
./pulseeffects sudo cp -r share/* /usr/share/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
cd PulseEffects
cat gst.py 
sudo apt install gst-plugins-bad
sudo apt install gst-plugins-bad1.0
sudo apt install gstreamer1.0-plugins-bad
sudo apt install swh-plugins
./pulseeffects 
cd
cd Sync/
cd Programacion/
cd Python/
git clone git@github.com:atareao/pulseeffects.git
git@github.com:atareao/qrcode.git
git clone git@github.com:atareao/qrcode.git
cd qrcode/
python3 myqr.py 
python3 myqr.py https://www.atareao.es
cp ~/Escritorio/icono-128x128.png ./
python3 myqr.py https://www.atareao.es -p icono-128x128.png
python3 myqr.py https://www.atareao.es -p icono-128x128.png -c
sudo apt install python3-imageio
sudo apt install python3-numpy
sudo apt install python3-pillow
pdfbooklet 
ls -la /usr/share/pdfbooklet/
ls -la
cd ..
cd_upodcatcher 
ls
dch -r
git add .
git commit -m "ugeek"
git push
mybuilder
wget -q -O - http://geoip.ubuntu.com/lookup
sudo apt install gir1.2-osmgpsmap-1.0
mybuilder
wget -q -O - http://geoip.ubuntu.com/lookup
sudo apt install gir1.2-osmgpsmap-1.0
cd /datos/Sync/Programacion/Python/gqrcode/
cd bin/
ls
./gqrcode 
cd /datos/Sync/Programacion/Python/gqrcode/
cd Sync/Programacion/Python/gqrcode/
cd bin/
ls
./gqrcode 
cd ..
cd upodcatcher/
cd debian/
cat changelog 
git@github.com:atareao/qrcode.git
git clone git@github.com:atareao/qrcode.git
cd qrcode/
python3 myqr.py 
python3 myqr.py https://www.atareao.es
cp ~/Escritorio/icono-128x128.png ./
python3 myqr.py https://www.atareao.es -p icono-128x128.png
python3 myqr.py https://www.atareao.es -p icono-128x128.png -c
sudo apt install python3-imageio
sudo apt install python3-numpy
sudo apt install python3-pillow
pdfbooklet 
ls -la /usr/share/pdfbooklet/
cd_upodcatcher 
git commit -m "ugeek"
wget -q -O - http://geoip.ubuntu.com/lookup
sudo apt install gir1.2-osmgpsmap-1.0
wget -q -O - http://geoip.ubuntu.com/lookup
sudo apt install gir1.2-osmgpsmap-1.0
./gqrcode 
cd Sync/Programacion/Python/gqrcode/
./gqrcode 
cd /datos/Sync/Programacion/Python/gqrcode/
./tools babilon
dch -i
git commit -m "Gifs"
git remote remove origin
git remote add git@github.com:atareao/gqrcode.git
git remote add origin git@github.com:atareao/gqrcode.git
git remote -v
git commit -m "Updated dependencies"
git push -u origin master
cd bin/
cd ..
ls -la
git commit -m "updated README"
ls
git add .
git commit -m "Fixed requeriments"
git push
./bin/gqrcode 
sudo apt update
sudo apt upgrade
sudo apt install gqrcode
gqrcode
qrcode
cd /usr/share/application
cd /usr/share/applications/
car gqrcode.desktop 
cat gqrcode.desktop 
cd -
bin/gqrcode 
dch -r
mybuilder
cd ..
cd upodcatcher/
cd debian/
cat changelog 
cd
cd Escritorio
ls
zbarimg qr.png 
cd /usr/share/applications
car gqrcode.desktop 
cat gqrcode.desktop 
sudo apt update
sudo apt upgrade
gqrcode 
cd /usr/share/applications
car gqrcode.desktop 
cat gqrcode.desktop 
gqrcode 
cd /datos/Sync/Programacion/Python/gqrcode/
ls
git add .
dch -r
mybuilder 
sudo apt update
sudo apt upgrade
dch -i
git commit -m "Gifs"
git remote remove origin
git remote add git@github.com:atareao/gqrcode.git
git remote add origin git@github.com:atareao/gqrcode.git
git remote -v
git commit -m "Updated dependencies"
git push -u origin master
git commit -m "updated README"
git add .
git commit -m "Fixed requeriments"
git push
./bin/gqrcode 
sudo apt update
sudo apt upgrade
sudo apt install gqrcode
gqrcode
qrcode
cd /usr/share/application
cd /usr/share/applications/
car gqrcode.desktop 
cat gqrcode.desktop 
cd -
bin/gqrcode 
dch -r
mybuilder
cd upodcatcher/
cat changelog 
cd Escritorio
zbarimg qr.png 
cd /usr/share/applications
car gqrcode.desktop 
cat gqrcode.desktop 
sudo apt update
sudo apt upgrade
gqrcode 
cd /usr/share/applications
car gqrcode.desktop 
cat gqrcode.desktop 
gqrcode 
git add .
dch -r
mybuilder 
sudo apt update
sudo apt upgrade
cd Sync/Programacion/Python/gqrcode/
git submodule add git@github.com:ewino/qreader.git
cd qreader/
git pull
sudo apt install python3-six
git clone git@github.com:lrq3000/reedsolomon.git
cd reedsolomon/
mv reedsolomon/ python3-reedsolomon
cd python3-reedsolomon/
cp-R ../python3-v4l2capture/debian/ ./
cp-R . ./python3-v4l2capture/debian/ ./
cp-R .  ./python3-v4l2capture/debian/ ./
cp -R .  ./python3-v4l2capture/debian/ ./
mkdir debian
cp../python3-v4l2capture/debian/* ./debian/
cp../p ython3-v4l2capture/debian/* ./debian/
clear
cp ../python3-v4l2capture/debian/* ./debian/
cd debian/
cd source/
cd /datos/Sync/Programacion/Python/gqrcode/
ln -s ../qreader/ qreader
ls -la
ñs
rm qreader
ln -s ../qreader/qreader/ qreader
cd qreader
cd /tmp/
ls -la test.png 
cd
cd /datos/Sync/Programacion/Python/
cd src/
cd gqrcode/
cd ..
cd bin/
ls
./gqrcode 
cd bin/
./gqrcode 
cd Escritorio
convert -delay 20 -loop 0 test.gif test2.gif
convert -delay 10 -loop 0 test.gif test2.gif
convert -delay 5 -loop 0 test.gif test2.gif
cd /datos/Sync/Programacion/Python/gqrcode/
ls
dch -i
dch -r
mybuilder
exit
sudo apt update
sudo apt upgrade
autoremove
exit
autoremove
exit
cd /datos/Sync/Programacion/Python/gqrcode/
ls
git add .
git commit -m "GLib.idle_add"
git push
dch -r
mybuilder
dch -r
mybuilder
cd Escritorio
sudo rm -rf pulseeffects-master/
rm *.gif
rm *.png
rm *.jpg
ls -la
rm *.ttf *.woff
rm lista.m3u.txt~ 
mr puerta.pdf 
ls
rm puerta.pdf 
cd /datos/Sync/Programacion/Python/telegram/
ls
./update.sh 
ls -la
dch -r
mybuilder
cd /datos/Sync/Programacion/Python/gqrcode/
ls
./tools babilon
git add .
git commit -m "Improving UI"
git push
cd /datos/Sync/Programacion/Python/gqrcode/
ls
dch -r
dch -i
git add .
git commit -m "parse"
git push
git push
cd /usr/share/anoise/
cat anoise.py 
ls
cat sound_menu.py 
sudo apt install gir1.2-geocodeglib-1.0
cd /datos/Sync/Programacion/Python/telegram/
./update.sh 
dch -r
mybuilder
cd /datos/Sync/Programacion/Python/gqrcode/
./tools babilon
git commit -m "Improving UI"
cd /datos/Sync/Programacion/Python/gqrcode/
dch -r
dch -i
git commit -m "parse"
cd /usr/share/anoise/
cat anoise.py 
cat sound_menu.py 
sudo apt install gir1.2-geocodeglib-1.0
sudo apt install nautilus-image-tools
killall nautilus
cd /datos/Sync/Programacion/Python/my-weather-indicator/
git commit -m "Osm"
git remote remove origin
git remote add origin 
git remote add origin git@github.com:atareao/my-weather-indicator.git
git push origin
git pull remote origin
git remote -v
git pull
git pull origin
git pull origin master
git add .
git commit -m "Merged"
git push
git push -u origin master
git remote -v 
git push -u alt master
cd
cd /datos/Sync/Programacion/Python/
git clone git@github.com:atareao/PdfBooklet.git
cd PdfBooklet/
cd bin/
ls -la
chmod +x pdfbooklet 
./pdfbooklet 
cat pdfbooklet 
d ..
cd ..
cd pdfbooklet/
ls
cat pdfbooklet
cat pdfbooklet.py 
cat pdfbooklet.py 
crontab
crontab -e
cat pdfbooklet
cat pdfbooklet.py 
cat pdfbooklet.py 
crontab
crontab -e
cd Descargas
ssh lorenzo@192.168.1.181
scp lorenzo@192.168.1.181:/volume1/downloads/ubuntu-16.04.2-desktop-amd64.iso
scp lorenzo@192.168.1.181:/volume1/downloads/ubuntu-16.04.2-desktop-amd64.iso ./
sudo mkdir -p /mnt/cloudstation/downloads/
sudo mount 192.168.1.181:/volume1/downloads /mnt/cloudstation/downloads
cd /mnt/cloudstation/downloads/
cp ubuntu-16.04.2-desktop-amd64.iso ~/Descargas
cd ~/.bash_it
cd custom/
cd lib/
cat custom.bash 
cd ..
cd aliases/
ls
cat custom.aliases.bash 
nano custom.aliases.bash 
exit
exit
cd Descargas
cd /mnt/cloudstation/downloads/
ls
cp ubuntu-16.04.2-desktop-amd64.iso ~/Descargas
ls -la
sudo cp ubuntu-16.04.2-desktop-amd64.iso ~/Descargas
sudo pv ubuntu-16.04.2-desktop-amd64.iso ~/Descargas
sudo apt install pv
man pv
sudo rsync -avzhi --progress ubuntu-16.04.2-desktop-amd64.iso /home/lorenzo/Descargas/
sudo mkdir -p /mnt/cloudstation/downloads/
sudo mount 192.168.1.181:/volume1/downloads /mnt/cloudstation/downloads
cd /mnt/cloudstation/downloads/
cp ubuntu-16.04.2-desktop-amd64.iso ~/Descargas
cd ~/.bash_it
cd custom/
cd lib/
cat custom.bash 
cd ..
cd aliases/
cat custom.aliases.bash 
nano custom.aliases.bash 
exit
cd /datos/Sync/Programacion/
cd Python/
cd podcastgetter/
cd src/
./podcastgetter.py 
ls -la
cd
cd temporal
sudo apt install bzr
bzr branch lp:anoise
mv anoise /datos/Sync/Programacion/Python/
cd /datos/Sync/Programacion/Python/anoise/
cd /usr/share/anoise/
ls
sudo nano anoise.py 
killall anoise
cd ~/.bash_it
cd custom/
cd lib/
cat custom.bash 
cd aliases/
cat custom.aliases.bash 
nano custom.aliases.bash 
cd podcastgetter/
cd src/
./podcastgetter.py 
ls -la
cd temporal
sudo apt install bzr
bzr branch lp:anoise
mv anoise /datos/Sync/Programacion/Python/
cd /datos/Sync/Programacion/Python/anoise/
cd /usr/share/anoise/
sudo nano anoise.py 
killall anoise
cd .bash_it
git pull
sudo apt remove byobu
autoremove
sudo add-apt-repository ppa:sebastian-stenzel/cryptomator
sudo apt update
sudo apt install cryptomator
sudo apt upgrade
sudo apt remove cryptomator
sudo apt autoremove
cd
/datos/Sync/Programacion/
cd /datos/Sync/Programacion/
cd Python/
git clone git@github.com:atareao/typecatcher.git
cd typecatcher/
dh -l
dh-translatrions
sudo apt install dh-translations
dh -l | grep -xF translations
sudo apt install typecatcher
cd /usr/share/typecatcher/
cd /usr/bin
ls typecatcher 
cat typecatcher 
cd /usr/local/
cd bin/
cd /usr/lib/
cd /usr/share/lib
cd /usr/share/python3
cd dist/
cd ..
cd /usr/lib/python3
cd dist-packages/
ls
exit
cryptomator.sh 
exit
sudo apt install adobe-flashplugin
sudo apt install adobe-flash-plugin
sudo apt install chromen
sudo apt install chrome
sudo apt install google-chrome
cd /usr/share/python3
cd dist/
cd ..
cd /usr/lib/python3
cd dist-packages/
exit
cryptomator.sh 
exit
sudo apt install adobe-flash-plugin
sudo apt install chromen
sudo apt install chrome
sudo apt install google-chrome
sudo apt install adobe-flashplugin
sudo apt install -f
cd /datos/Sync/Programacion/
cd Python/
cd telegram/
./update.sh 
dch -i
dch -r
mybuilder
gsettings get org.gnome.shell enabled-extensions
cd
cd Descargas
xzcar
xzcat
szcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.153
hitory | zcat 
history | zcat 
history | "zcat"
ls
sincroniza_xps13 
history | grep zcat
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.154
xzcat
szcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.153
hitory | zcat 
history | zcat 
history | "zcat"
ls
sincroniza_xps13 
history | grep zcat
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.154
ssh lorenzo-carbonell@192.168.1.153
hitory | zcat 
history | zcat 
history | "zcat"
ls
sincroniza_xps13 
history | grep zcat
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.154
history | grep zcat
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
nmcli d status
nmcli d list
ssh lorenzo-carbonell@192.168.1.154
sudo apt install arp-scan
sudo arp-scan -l --interface=wlan0
sudo arp-scan -l
for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
history | "zcat"
ls
sincroniza_xps13 
history | grep zcat
sudo arp-scan -l --interface=wlp2s0
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.154
ssh lorenzo-carbonell@192.168.1.154
testdisk /dev/mmcblk0
sudo testdisk /dev/mmcblk0
sincroniza_xps13 
history | grep zcat
ssh lorenzo-carbonell@192.168.1.154
history | grep zcat
nmcli d status
nmcli d list
ssh lorenzo-carbonell@192.168.1.154
sudo apt install arp-scan
sudo arp-scan -l --interface=wlan0
sudo arp-scan -l
for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
sudo apt install procinfo
lsdev
cd Descargas
ls
rm "ubuntu-core-16-pi3.img (1).xz" 
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sudo fdisk -l
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=512 count 1
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=512 count=1
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=512
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=4M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=8M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=2048
sudo dd of=/dev/mmcblk0 if=/dev/zero
cfdisk
sudo cfdisk /dev/mmcblk0
sudo mkfs.vfat /dev/mmcblk0 -I
sudo dd of=/dev/mmcblk0 if=/dev/zero count=4
dd if=/dev/zero bs=1M count=8 | md5sum
sudo dd if=/dev/mmcblk0 bs=32G count=1 | md5sum
emerge parted
parted
sudo parted /dev/mmcblk0
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1G count=32
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1M count=8
testdisk /dev/mmcblk0
fdisk -l /dev/mmcblk
fdisk -l /dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1M count=8
testdisk /dev/mmcblk0
fdisk -l /dev/mmcblk
fdisk -l /dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
cd Descargas
rm ubuntu-core-16-pi3.img.xz 
mv "ubuntu-core-16-pi3.img (1).xz" ubuntu-core-16-pi3.img.xz 
rm -rf ubuntu-core-16-pi3.img.xz 
sudo dd of=/dev/mmcblk0 if=/dev/zero
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32Mls
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32M
sudo mkfs.vfat /dev/mmcblk0
sudo fdisk -l
sudo mkfs.vfat /dev/mmcblk0p1
ls
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img | sudo dd of=/dev/mmcblk0 bs=32M
ls -la
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo apt install vbox
sudo apt install virtualbox
rm ubuntu-core*
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ls
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1M count=8
testdisk /dev/mmcblk0
fdisk -l /dev/mmcblk
fdisk -l /dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
mv "ubuntu-core-16-pi3.img (1).xz" ubuntu-core-16-pi3.img.xz 
rm -rf ubuntu-core-16-pi3.img.xz 
sudo dd of=/dev/mmcblk0 if=/dev/zero
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32Mls
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32M
sudo mkfs.vfat /dev/mmcblk0
sudo fdisk -l
sudo mkfs.vfat /dev/mmcblk0p1
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img | sudo dd of=/dev/mmcblk0 bs=32M
ls -la
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo apt install vbox
sudo apt install virtualbox
rm ubuntu-core*
rm ubuntu-16.04-preinstalled-server-armhf+raspi3.img*
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
lorenzo-carbonell@192.168.1.154
cd /home/lorenzo/.ssh
cat known_hosts
ssh lorenzo-carbonell@192.168.1.154
cd
cd Descargas
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sudo apt install nmap
rm ubuntu-16.04-preinstalled-server-armhf+raspi3.img.xz 
rm ubuntu-core-16-pi3.img.xz 
rm NOOBS_v2_4_2.zip 
rm Informe\ de\ Vida\ Laboral\ \(1\).pdf
ls
sha1sum 2017-07-05-raspbian-jessie-lite.zip 
unzip 2017-07-05-raspbian-jessie-lite.zip 
sudo dd bs=1M if=2017-07-05-raspbian-jessie-lite.img of=/dev/mmcblk0
sudo sync
sudo nmap -P 192.168.1.2-254
sudo nmap -sP 192.168.1.2-254
ssh-keygen -f "/home/lorenzo/.ssh/known_hosts" -R 192.168.1.154
ssh-copy-id -i ~/.ssh/id_rsa.pub pi@192.168.1.154
ssh pi@192.168.1.154
sudo nmap -P 192.168.1.2-254
sudo nmap -sP 192.168.1.2-254
ssh-keygen -f "/home/lorenzo/.ssh/known_hosts" -R 192.168.1.154
ssh-copy-id -i ~/.ssh/id_rsa.pub pi@192.168.1.154
ssh pi@192.168.1.154
python nautilus-svgresize.py 
sudo apt update
sudo apt install nautilus-svgresize
sudo apt update && sudo apt upgrade
cd /usr/share/nautilus-python/
cd extensions/
ls
sudo nano nautilus-svgresize.py 
killall nautilus
ssh-keygen -f "/home/lorenzo/.ssh/known_hosts" -R 192.168.1.154
ssh-copy-id -i ~/.ssh/id_rsa.pub pi@192.168.1.154
lsusb
sane-find-scanner
sudo sane-find-scanner
sudo nano /etc/sane.d/epson.conf 
scanimage -L
sudo nano /etc/udev/rules.d/40-permissons.rules
cd /etc/udev/rules.d/
ls
sudo nano 40-permissions.rules
ssh pi@192.168.1.154
ssh pi@192.168.1.50
fdisk -l /dev/mmcblk
fdisk -l /dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1M count=8
testdisk /dev/mmcblk0
fdisk -l /dev/mmcblk
fdisk -l /dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
cd Descargas
rm ubuntu-core-16-pi3.img.xz 
mv "ubuntu-core-16-pi3.img (1).xz" ubuntu-core-16-pi3.img.xz 
rm -rf ubuntu-core-16-pi3.img.xz 
sudo dd of=/dev/mmcblk0 if=/dev/zero
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32Mls
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32M
sudo mkfs.vfat /dev/mmcblk0
sudo fdisk -l
sudo mkfs.vfat /dev/mmcblk0p1
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img | sudo dd of=/dev/mmcblk0 bs=32M
ls -la
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo apt install vbox
sudo apt install virtualbox
rm ubuntu-core*
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
history | grep ping
echo for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
for ip in $(seq 2 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
cd
cd .bash_it
cd ..
zip -r bashit.zip ~/.bash_it
scp bashit.zip pi@192.168.1.154
rm pi@192.168.1.154 
scp bashit.zip pi@192.168.1.154:/
scp bashit.zip pi@192.168.1.154:/home/pi/
ls .bashrc 
cat .bashrc 
S
killall nautilus
cd /datos/Sync/Programacion/Nautilus/
cd nautilus-svgresize/
ls
dch -i
gpgv
nautilus
dch -r
compile_extension 
sudo apt update && sudo apt upgrade
ssh pi@192.168.1.50
sudo apt update && sudo apt upgrade
ssh pi@192.168.1.50
cd ..
cd Nautilus/nautilus-svgresize/
dch -r
compile_extension 
sudo apt update && sudo apt upgrade -y
killall nautilus
nautilus
wget https://images-na.ssl-images-amazon.com/images/I/71pb%2BOaH7bL._SY450_.jpg
wget https://images-na.ssl-images-amazon.com/images/I/71pb%2BOaH7bL._SY355_.jpg
wget https://images-na.ssl-images-amazon.com/images/I/71pb%2BOaH7bL._SX425_.jpg
wget https://images-na.ssl-images-amazon.com/images/I/71pb%2BOaH7bL._SX466_.jpg
wget https://images-na.ssl-images-amazon.com/images/I/71pb%2BOaH7bL._SX522_.jpg
dch -r 
git add .
git commit -m "fixed dependencies"
git push
compile_extension 
history | "zcat"
history | grep zcat
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.154
xzcat
szcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.153
hitory | zcat 
history | zcat 
history | "zcat"
history | grep zcat
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.154
ssh lorenzo-carbonell@192.168.1.153
hitory | zcat 
history | zcat 
history | "zcat"
history | grep zcat
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.154
history | grep zcat
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
nmcli d status
nmcli d list
ssh lorenzo-carbonell@192.168.1.154
sudo apt install arp-scan
sudo arp-scan -l --interface=wlan0
sudo arp-scan -l
for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
history | "zcat"
history | grep zcat
sudo arp-scan -l --interface=wlp2s0
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
ssh lorenzo-carbonell@192.168.1.154
ssh lorenzo-carbonell@192.168.1.154
testdisk /dev/mmcblk0
sudo testdisk /dev/mmcblk0
history | grep zcat
ssh lorenzo-carbonell@192.168.1.154
history | grep zcat
nmcli d status
nmcli d list
ssh lorenzo-carbonell@192.168.1.154
sudo apt install arp-scan
sudo arp-scan -l --interface=wlan0
sudo arp-scan -l
for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
sudo apt install procinfo
lsdev
rm "ubuntu-core-16-pi3.img (1).xz" 
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=512 count 1
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=512 count=1
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=512
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=4M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=8M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=2048
sudo dd of=/dev/mmcblk0 if=/dev/zero
cfdisk
sudo cfdisk /dev/mmcblk0
sudo mkfs.vfat /dev/mmcblk0 -I
sudo dd of=/dev/mmcblk0 if=/dev/zero count=4
dd if=/dev/zero bs=1M count=8 | md5sum
sudo dd if=/dev/mmcblk0 bs=32G count=1 | md5sum
emerge parted
parted
sudo parted /dev/mmcblk0
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1G count=32
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1M count=8
testdisk /dev/mmcblk0
fdisk -l /dev/mmcblk
fdisk -l /dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1M count=8
testdisk /dev/mmcblk0
fdisk -l /dev/mmcblk
fdisk -l /dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
rm ubuntu-core-16-pi3.img.xz 
mv "ubuntu-core-16-pi3.img (1).xz" ubuntu-core-16-pi3.img.xz 
rm -rf ubuntu-core-16-pi3.img.xz 
sudo dd of=/dev/mmcblk0 if=/dev/zero
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32Mls
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32M
sudo mkfs.vfat /dev/mmcblk0
sudo mkfs.vfat /dev/mmcblk0p1
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img | sudo dd of=/dev/mmcblk0 bs=32M
ls -la
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo apt install vbox
sudo apt install virtualbox
rm ubuntu-core*
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1M count=8
testdisk /dev/mmcblk0
fdisk -l /dev/mmcblk
fdisk -l /dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
mv "ubuntu-core-16-pi3.img (1).xz" ubuntu-core-16-pi3.img.xz 
rm -rf ubuntu-core-16-pi3.img.xz 
sudo dd of=/dev/mmcblk0 if=/dev/zero
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32Mls
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32M
sudo mkfs.vfat /dev/mmcblk0
sudo mkfs.vfat /dev/mmcblk0p1
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img | sudo dd of=/dev/mmcblk0 bs=32M
ls -la
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo apt install vbox
sudo apt install virtualbox
rm ubuntu-core*
rm ubuntu-16.04-preinstalled-server-armhf+raspi3.img*
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
lorenzo-carbonell@192.168.1.154
cd /home/lorenzo/.ssh
cat known_hosts
ssh lorenzo-carbonell@192.168.1.154
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sudo apt install nmap
rm ubuntu-16.04-preinstalled-server-armhf+raspi3.img.xz 
rm ubuntu-core-16-pi3.img.xz 
rm NOOBS_v2_4_2.zip 
rm Informe\ de\ Vida\ Laboral\ \(1\).pdf
sha1sum 2017-07-05-raspbian-jessie-lite.zip 
sudo sync
sudo nmap -P 192.168.1.2-254
sudo nmap -sP 192.168.1.2-254
ssh-keygen -f "/home/lorenzo/.ssh/known_hosts" -R 192.168.1.154
ssh-copy-id -i ~/.ssh/id_rsa.pub pi@192.168.1.154
ssh pi@192.168.1.154
cd temporal
cd /datos/Sync/Programacion/Python/telegram/
sudo add-apt-repository ppa:atareao/telegram
sudo apt update
sudo apt upgrade
sudo apt install telegram-cli
telegram-cli
crontab -e
crontab -l
cat /sys/class/thermal/thermal_zone0/temp
cat /sys/class/thermal/thermal_zone0/tempcat >> titi.log
cat /sys/class/thermal/thermal_zone0/temp >> titi.log
cat titi.log 
rm titi.log 
scrot
sudo apt install scrot
scrot -b -d 5 '%Y:%m:%d:%H:%M:%S.png' -e 'mv $f ~/Desktop/'
scrot -b -d 1 '%Y:%m:%d:%H:%M:%S.png' -e 'mv $f ~/Escritorio/'
cat /sys/class/thermal/thermal_zone0/temp >> caca.txt
cat caca.txt 
sudo apt install pdfmod
sudo apt install nautilus-pdf-tools
sincroniza_xps13 
git remote remove origin
git remote -v
git remote add origin 
git remote add origin git@github.com:atareao/nautilus-svgresize.git
git commit -m "First release"
git push -u origin master
compile-extension
git commit -m "progress dialog"
/usr/share/nautilus-python/extensions/
cd /usr/share/nautilus-python/extensions/
sudo nano nautilus-reduceimages.py 
fg 1
sudo nano nautilus-svgresize.py 
cd /datos/Sync/Programacion/Nautilus/
git commit -m "GLib"
git
history 181
ssh lorenzo@192.168.1.81
ssh lorenzo@192.168.1.181
scp lorenzo@192.168.1.181:/volume1/downloads/neon-useredition-20170706-1018-amd64.iso /home/lorenzo/Descargas/
rm neon-useredition-20170706-1018-amd64.iso 
wget https://files.kde.org/neon/images/neon-useredition/current/neon-useredition-20170706-1018-amd64.iso
cd /datos/Sync/Programacion/Nautilus/nautilus-svgresize/
git add .
git commit -m "basename"
git push
sudo apt update && sudo apt upgrade
sudo apt remove byobu
cd Nautilus/
cd nautilus-svgresize/
dch -i
compile_extension 
python3
cd ..
cd Python/upodcatcher/
dch -r
mybuilder
sudo apt update && sudo apt upgrade -y
killall atom
atom
clear
killall nautilus
history | grep pi
ssh pi@192.168.1.50
history | grep apm
lsusb
sudo apt install pcscd pcsc-tools
pcsc_scan
sudo apt install opensc-pkcs11
sudo updatedb
locate opensc
cd
cd Descargas
rm Ubuntu_\(16.04_LTS_Xenial\ Xerus_15.10\ Wily\ Werewolf\)_libpkcs11-dnie_1.4.0_amd64.deb 
ls
unzip 2017-07-05-raspbian-jessie-lite.zip 
df
df -h
sudo fdisk -l
sudo dd bs=1M if=2017-07-05-raspbian-jessie-lite.img of=/dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=1M count=8
testdisk /dev/mmcblk0
fdisk -l /dev/mmcblk
fdisk -l /dev/mmcblk0
fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0
sudo fdisk -l /dev/mmcblk0p1
sudo fdisk -l /dev/mmcblk0p2
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
rm ubuntu-core-16-pi3.img.xz 
mv "ubuntu-core-16-pi3.img (1).xz" ubuntu-core-16-pi3.img.xz 
rm -rf ubuntu-core-16-pi3.img.xz 
sudo dd of=/dev/mmcblk0 if=/dev/zero
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32Mls
sudo dd of=/dev/mmcblk0 if=/dev/zero bs=32M
sudo mkfs.vfat /dev/mmcblk0
sudo mkfs.vfat /dev/mmcblk0p1
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img | sudo dd of=/dev/mmcblk0 bs=32M
xzcat ubuntu-16.04-preinstalled-server-armhf+raspi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
sfdisk -C 1 -H 255 -S 63 /dev/mmcblk0
sfdisk -s /dev/mmcblk0
sfdisk -g /dev/mmcblk0
sudo apt install vbox
sudo apt install virtualbox
rm ubuntu-core*
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
history | grep ping
echo for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
for ip in $(seq 2 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
cd .bash_it
zip -r bashit.zip ~/.bash_it
scp bashit.zip pi@192.168.1.154
rm pi@192.168.1.154 
scp bashit.zip pi@192.168.1.154:/
scp bashit.zip pi@192.168.1.154:/home/pi/
ls .bashrc 
cat .bashrc 
S
cd /datos/Sync/Programacion/Nautilus/
cd nautilus-svgresize/
dch -i
gpgv
sudo apt update && sudo apt upgrade
ssh pi@192.168.1.50
clear
nautilus
cd /datos/Sync/Programacion/Nautilus/nautilus-svgresize/
sudo apt update && sudo apt upgrade -y
killall nautilus
git add .
git commit -m "PNG"
git push
dch -r
mybuilder
compile_extension 
cd /usr/share/applications/
cat org.gnome.Calendar.desktop 
cp org.gnome.Calendar.desktop ~/.local/share/applications/
cd ~/.local/share/applications/
gtk-update-icon-cache
nano org.gnome.Calendar.desktop 
rm org.gnome.Calendar.desktop 
gtk-update-icon-cache --force
sudo apt install emacs
history | grep raspbian
history | grep fg
history | grep df
sudo fdisk -l
sudo fdisk -l | grep /dev/mmcblk
cd Sync
mkdir RaspberryPi
dd if=/dev/mmcblk0 of=/home/lorenzo/Sync/RaspberryPi/cds_20170714.dd bs=4M status=progress conv=sync,noerror
sudo dd if=/dev/mmcblk0 of=/home/lorenzo/Sync/RaspberryPi/cds_20170714.dd bs=4M status=progress conv=sync,noerror
sha1sun cds_20170714.dd 
sha1sum /dev/mmcblk0
sudosha1sum /dev/mmcblk0
sudo sha1sum /dev/mmcblk0
rm cds_20170714.dd 
sudo dd if=/dev/mmcblk0 of=/home/lorenzo/Sync/RaspberryPi/cds_20170714.dd bs=4M status=progress; sync
sha1sum cds_20170714.dd 
tar -czvf cds_20170714.tar.gz cds_20170714.dd
cd ..
cd RaspberryPi/
sincroniza_xps13 
cd Des
cd Descargas
sudo dd bs=1M if=2017-07-05-raspbian-jessie-lite.img of=/dev/mmcblk0 status=progress; sync
dh -f
df -h
umount /dev/mmcblk0p1
umount /dev/mmcblk0p2
gunzip LibreELEC-RPi2.arm-8.0.2.img.gz 
sudo dd bs=1M if=LibreELEC-RPi2.arm-8.0.2.img of=/dev/mmcblk0 status=progress; sync
ssh 192.168.1.48
man wpa_passphrase 
wpa_passphrase ONO 123
wpa_passphrase ONO6577 123
wpa_passphrase ONO65771 12345678
wpa_passphrase NOMBREDERED CONTRASEÑA
apm install git-time-machine
apm install goto-definition
apm install todo-show
history | grep apm
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
cat my_atom_packages.txt 
cd
cd temporal
git clone git@github.com:alexanderepstein/Bash-Snippets.git 
cd Bash-Snippets/
cd weather/
./weather 
ls
ls -la
cat weather
exit
geo
geo
geo
xzcat ubuntu-core-16-pi3.img.xz | sudo dd of=/dev/mmcblk0 bs=32M
history | grep ping
echo for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
for ip in $(seq 2 254); do ping -c 1 192.168.1.$ip>/dev/null;      [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
cd .bash_it
zip -r bashit.zip ~/.bash_it
scp bashit.zip pi@192.168.1.154
rm pi@192.168.1.154 
scp bashit.zip pi@192.168.1.154:/
scp bashit.zip pi@192.168.1.154:/home/pi/
ls .bashrc 
cat .bashrc 
S
cd /datos/Sync/Programacion/Nautilus/
cd nautilus-svgresize/
gpgv
sudo apt update && sudo apt upgrade
ssh pi@192.168.1.50
nautilus
git add .
git commit -m "PNG"
git push
dch -r
mybuilder
cd /usr/share/applications/
cat org.gnome.Calendar.desktop 
cp org.gnome.Calendar.desktop ~/.local/share/applications/
cd ~/.local/share/applications/
gtk-update-icon-cache
nano org.gnome.Calendar.desktop 
rm org.gnome.Calendar.desktop 
gtk-update-icon-cache --force
sudo apt install emacs
history | grep raspbian
history | grep fg
history | grep df
sudo fdisk -l
sudo fdisk -l | grep /dev/mmcblk
cd Sync
mkdir RaspberryPi
dd if=/dev/mmcblk0 of=/home/lorenzo/Sync/RaspberryPi/cds_20170714.dd bs=4M status=progress conv=sync,noerror
sudo dd if=/dev/mmcblk0 of=/home/lorenzo/Sync/RaspberryPi/cds_20170714.dd bs=4M status=progress conv=sync,noerror
sha1sun cds_20170714.dd 
sha1sum /dev/mmcblk0
sudosha1sum /dev/mmcblk0
sudo sha1sum /dev/mmcblk0
rm cds_20170714.dd 
sudo dd if=/dev/mmcblk0 of=/home/lorenzo/Sync/RaspberryPi/cds_20170714.dd bs=4M status=progress; sync
sha1sum cds_20170714.dd 
tar -czvf cds_20170714.tar.gz cds_20170714.dd
cd RaspberryPi/
sincroniza_xps13 
cd Des
cd Descargas
sudo dd bs=1M if=2017-07-05-raspbian-jessie-lite.img of=/dev/mmcblk0 status=progress; sync
dh -f
df -h
umount /dev/mmcblk0p1
umount /dev/mmcblk0p2
gunzip LibreELEC-RPi2.arm-8.0.2.img.gz 
sudo dd bs=1M if=LibreELEC-RPi2.arm-8.0.2.img of=/dev/mmcblk0 status=progress; sync
ssh 192.168.1.48
man wpa_passphrase 
wpa_passphrase ONO 123
wpa_passphrase ONO6577 123
wpa_passphrase ONO65771 12345678
wpa_passphrase NOMBREDERED CONTRASEÑA
apm install git-time-machine
apm install goto-definition
apm install todo-show
history | grep apm
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
cat my_atom_packages.txt 
cd temporal
git clone git@github.com:alexanderepstein/Bash-Snippets.git 
cd Bash-Snippets/
cd weather/
./weather 
cat weather
exit
geo
cd Escritorio
cd scmccid_5.0.33_linux_64bit_rel/
cat ReadmeFirst.txt 
cd cardos/
ls -la
cd ../usr/
cd local/
cd..
sudo cp etc/sieca.conf /etc
cd etc/
cd ..
sudo cp -R usr/* /usr/
cd usr/
cd loca
cd local
cd bin/
adb
sudo apt install android-tools-adb
clear
sudo nano /etc/udev/rules.d/51-android.rules
cd /lib/udev/rules.d/
cat 70-android-tools-adb.rules 
chmod a+r 51-android.rules 
sudo chmod a+r 51-android.rules 
cd platform
adb devices 
sudo ./adb devices
adb shell
umake
umake android
lsusb
cat 51-android.rules 
sudo udevadm control --reloadcd
cd Android
cd Sdk/
cd platform-tools/
ñs
./adb devices
./adb shell
cd /etc/udev/rules.d/
sudo nano 51-android.rules 
sudo service udev restart
sudo adb kill-server
sudo adb start-server
adb devices
sudo udevadm control --reload
sudo adb devices
sudo apt install python3-ezodf
google-chrome --app=http://web.whatsapp.com 
chromium-browser --app=http://web.whatsapp.com 
sudo apt install python-gevent
sudo apt install python-asyncio
chromium-browser --app=http://m.youtube.com
chromium-browser --app=http://m.facebook.es
chromium-browser --app=http://m.twitter.com
chromium-browser --app=http://m.instagram.com
chromium-browser --app=http://m.instagram.es
chromium-browser --app=http://www.instagram.com
sudo apt install python-concurrent
sudo apt install python-concurrent.futures
cd
cd /datos/Sync/Programacion/Nautilus/nautilus-svgresize/
ls
dch -i
compile_extension 
sudo apt update && sudo apt upgrade -y
killall nautilus
gunzip LibreELEC-RPi2.arm-8.0.2.img.gz 
sudo dd bs=1M if=LibreELEC-RPi2.arm-8.0.2.img of=/dev/mmcblk0 status=progress; sync
ssh 192.168.1.48
man wpa_passphrase 
wpa_passphrase ONO 123
wpa_passphrase ONO6577 123
wpa_passphrase ONO65771 12345678
wpa_passphrase NOMBREDERED CONTRASEÑA
apm install git-time-machine
apm install goto-definition
apm install todo-show
history | grep apm
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
cat my_atom_packages.txt 
git clone git@github.com:alexanderepstein/Bash-Snippets.git 
cd weather/
./weather 
ls -la
cat weather
exit
cd temporal
cd Bash-Snippets/
cd cheat/
./cheat 
cd cloudup/
./cloudup 
cd crypt/
./crypt 
cd geo/
./geo 
./geo -w
./geo -g
bash-it update
sudo apt remove emacs*
sudo apt remove emacs
sudo apt upgrade -y
cd
cd ..
cat .bashrc 
cd .bash_it
cat bash_it.sh 
sudo apt install gtypist
gtypist 
sudo apt remove gtypist
sudo apt autoremove
cd Es
cd 
cd Escritorio
cd scmccid_5.0.33_linux_64bit_rel/
ls
sudo ./install.sh 
history | grep pcsc
sudo pcscd -restart
man pcscd
updategrade
updagrade
killall nautilus
nautilus
killall nautilus
sudo apt-get update && sudo apt-get install freemind
cd /usr/lib/
sudo mkdir pkcs11
ls pkcs11
cd pkcs11/
ls
ls -la
cd
sudo find / -name opensc.conf
sudo nano /etc/opensc/opensc.conf
sudo gedit /etc/opensc/opensc.conf
apm install git-time-machine
apm install goto-definition
apm install todo-show
history | grep apm
apm list --installed --bare | grep '^[^@]\+' -o > my_atom_packages.txt
cat my_atom_packages.txt 
git clone git@github.com:alexanderepstein/Bash-Snippets.git 
cd weather/
./weather 
ls -la
cat weather
exit
cd Bash-Snippets/
cd cheat/
./cheat 
cd cloudup/
./cloudup 
cd crypt/
./crypt 
cd geo/
./geo 
./geo -w
./geo -g
bash-it update
sudo apt remove emacs*
sudo apt remove emacs
sudo apt upgrade -y
cat .bashrc 
cd .bash_it
cat bash_it.sh 
sudo apt install gtypist
gtypist 
sudo apt remove gtypist
sudo apt autoremove
cd Es
cd 
cd Escritorio
cd scmccid_5.0.33_linux_64bit_rel/
sudo ./install.sh 
history | grep pcsc
sudo pcscd -restart
man pcscd
updategrade
updagrade
killall nautilus
nautilus
killall nautilus
sudo apt-get update && sudo apt-get install freemind
pcsc_scan
sudo apt install opensc-pkcs11
sudo updatedb
locate opensc
locate opensc | grep opensc-pkcs11
killall chromium
sudo apt install libnss3-tools
killall chromium-browser
modutil -dbdir sql:$HOME/.pki/nssdb -add "DNI-e" -libfile /usr/lib/x86_64-linux-gnu/pkcs11/opensc-pkcs11.so
modutil -list -dbdir sql:$HOME/.pki/nssdb
cd Descargas
cab ACRAIZ-DNIE2.cab 
cabextract
sudo apt install cabextract
cabextract ACRAIZ-SHA1.CAB 
cabextract ACRAIZ-SHA2.CAB 
cabextract ACRAIZ-DNIE2\ \(1\).cab 
rm *.cab
cabextract ACRAIZ-DNIE2.cab 
unzip ACRAIZ-DNIE2.cab 
ls *.crt
ls OCSP_VA_DNIE_FNMT_SHA2A.rar 
unrar
install unrar
unrar Ocsp\ Responder\ AV\ DNIE-FNMT_SHA2.rar 
unrar e Ocsp\ Responder\ AV\ DNIE-FNMT_SHA2.rar 
unrar e OCSP_VA_DNIE_FNMT_SHA2A.rar 
sudo apt install firefox
sudo apt install libc6 libltdl3 libss10.9.8 libpcsclite1 libopenct1 
sudo apt install opensc
sudo apt install libopensc2
sudo apt install pinentry-gtk2
sudo apt-get install oracle-java8-installer
/usr/bin/ControlPanel 
sudo apt-get install autoconf subversion libpcsclite-dev libreadline6 libreadline-dev openssl libssl-dev libtool libltdl-dev libccid pinentry-gtk2
sudo apt-get install build-essential autoconf subversion openssl libssl-dev libtool libltdl-dev pkg-config
sudo apt autoremove opensc
cd
cd temporal
svn checkout https://github.com/securez/opendnie/
cd opendnie/trunk/
echo $LIBS
echo LIBS
./bootstrap
./configure
cd branches/
cd opensc-dnie/
sudo apt icd ..
cd opensc-opendnie/
cd trunk/
cd src/
cd tools/
sudo find / -name libltdl.la
nano Makefile.am 
cd ..
ls
./bootstrap 
./configure --prefix=/usr --sysconfdir=/etc/opensc
make
sudo make install
killall firefox
updagrade
sudo apt install python3-flask
sudo apt install python3-misaka
cd /datos/Sync/Programacion/
ls
cd Python/
git clone git@github.com:xolox/python-preview-markup.git
killall atom
umake ide 
umake ide sublime-text
sudo apt install sublime-text
sudo apt install sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt updagrade
updagrade
cd /datos/Sync/Programacion/Python/utext
mkdir mokups
mv mokups/ mockups
cd mockups/
ls
git clone git@github.com:gnacho/Gnome-MD.git
chromium-browser -app=https://mail.google.com/mail/u/0/#inbox
updagrade
mkdir mokups
mv mokups/ mockups
cd mockups/
git clone git@github.com:gnacho/Gnome-MD.git
chromium-browser -app=https://mail.google.com/mail/u/0/#inbox
cd /datos/Sync/Programacion/Python/utext
cd src/
ls
python3 utext
python3 utext.py 
cd
cat mimeapps.list 
cat ~/.config/mimeapps.list 
sudo apt install python-trollius
sudo apt autoremove && sudo apt autoclean
man systemd.special
ps -ax |grep -m 1 /usr/bin/gnome-shell |awk '{ print $1 }' |xargs pmap -x
ps -ax | grep -m 1 /usr/bin/gnome-shell | awk '{ print $1 }' | xargs pmap -x
nano ps_mem.py
cd 
cd Descargas
ls
scp my_atom_packages.txt pi@192.168.1.48:./
./bootstrap
./configure
cd branches/
cd opensc-dnie/
sudo apt icd ..
cd opensc-opendnie/
cd trunk/
cd src/
cd tools/
sudo find / -name libltdl.la
nano Makefile.am 
cd ..
./bootstrap 
./configure --prefix=/usr --sysconfdir=/etc/opensc
make
sudo make install
killall firefox
sudo apt install python3-flask
sudo apt install python3-misaka
cd /datos/Sync/Programacion/
cd Python/
git clone git@github.com:xolox/python-preview-markup.git
killall atom
umake ide 
umake ide sublime-text
sudo apt install sublime-text
sudo apt install sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt updagrade
cd /datos/Sync/Programacion/Python/utext
mkdir mokups
mv mokups/ mockups
cd mockups/
git clone git@github.com:gnacho/Gnome-MD.git
chromium-browser -app=https://mail.google.com/mail/u/0/#inbox
mkdir mokups
mv mokups/ mockups
cd mockups/
git clone git@github.com:gnacho/Gnome-MD.git
chromium-browser -app=https://mail.google.com/mail/u/0/#inbox
cd /datos/Sync/Programacion/Python/utext
cd src/
python3 utext
python3 utext.py 
gsettings list-recursively | grep launcher
gsettings list-recursively | grep desktop
gsettings list-recursively | grep backlight
gsettings list-recursively | grep brightness
gsettings get org.gnome.desktop.default-applications.terminal
gsettings --schemadir get org.gnome.desktop.default-applications get terminal
gsettings --schemadir org.gnome.desktop.default-applications get terminal
gsettings --schemadir org.gnome.desktop.default-applications.office.tasks get exec
gsettings --schemadir org.gnome.desktop.applications.office.tasks get exec
gsettings --schemadir /org/gnome/desktop/applications/office/tasks get exec
cd /usr
cd share/glib-2.0/
cd schemas/
cat org.gnome.desktop.default-applications.gschema.xml 
cd 
cd .local/share/applications/
cat mimeapps.list 
cat /usr/share/applications/chromium-browser.desktop 
sudo mkdir downloads
sudo mount 192.168.1.181:/volume1/downloads /mnt/downloads/
sudo mkdir media
sudo rm -rf peliculas/
sudo rm -rf cloudstation/
sudo mount 192.168.1.181:/volume4/downloads /mnt/media/
sudo mount 192.168.1.181:/volume4/media /mnt/media/
cd downloads/
groups
cut -d: -f1 /etc/group
cut -d: -f1 /etc/group | grep users
useradd -G users lorenzo
useradd -g users lorenzo
usermod -a -G users lorenzo
sudo usermod -a -G users lorenzo
rm "Ladron De Guante Blanco - Temp1 [HDTV][Cap.1*"
rm Ladron\ De\ Guante\ Blanco\ -\ Temp1*
rm -rf Ladron\ De\ Guante\ Blanco\ -\ Temp1*
sudo rm -rf Ladron\ De\ Guante\ Blanco\ -\ Temp1*
cd /datos/Sync/Programacion/Python/telegram/
./update.sh 
nano update.sh 
dch -r
dch -i
mybuilder
sudo apt install nautilus-renamer
killall nautilus
cd ~/.config/
cd autostart/
ls -la
nano national-geographic-wallpaper-autostart.desktop 
nano gnome-encfs-manager.desktop 
cd /mnt
ls
sudo mkdir raspberry
sudo mount 192.168.1.48:/home/pi/compartir /mnt/raspberry
sudo mount 192.168.1.48:/home/pi/compartir /mnt/raspberry/
sudo apt install nfs-kernel-server
exportfs
sudo exportfs
sudo apt remove nfs-kernel-server
cd
youtube-dl https://www.youtube.com/watch?v=6Mgqbai3fKo
yoytube-dl https://www.youtube.com/watch?v=4KnAzpi4avo
apt list --installed | grep youtube
sudo add-apt-repository ppa:nilarimogard/webupd8
updagrade
youtube-dl https://www.youtube.com/watch?v=4KnAzpi4avo
sudo mount 192.168.1.48:/srv/nfsserver /mnt/raspberry/
sudo mount -t nfs 192.168.1.48:/srv/nfsserver /mnt/raspberry/
nano /etc/default/services
sudo nano /etc/default/services
rpcinfo
sudo mount -t nfs -o proto=tcp,port=2049,vers=3 192.168.1.48:/srv/nfsserver /mnt/raspberry/
man mount
sudo mount -t nfs -o vers=3 192.168.1.48:/srv/nfsserver /mnt/raspberry
sudo mount -t nfs -o proto=tcp,port=2049,vers=3 192.168.1.48:/srv/nfsserver /mnt/raspberry
sudo mount 192.168.1.48:/srv/nfsserver /mnt/raspberry
sudo mount -t nfs 192.168.1.48:/srv/nfsserver /mnt/raspberry -v
sudo mount -t nfs -o vers=3 192.168.1.48:/srv/nfsserver /mnt/raspberry -v
install unrar
unrar Ocsp\ Responder\ AV\ DNIE-FNMT_SHA2.rar 
unrar e Ocsp\ Responder\ AV\ DNIE-FNMT_SHA2.rar 
unrar e OCSP_VA_DNIE_FNMT_SHA2A.rar 
sudo apt install firefox
sudo apt install libc6 libltdl3 libss10.9.8 libpcsclite1 libopenct1 
sudo apt install opensc
sudo apt install libopensc2
sudo apt install pinentry-gtk2
sudo apt-get install oracle-java8-installer
/usr/bin/ControlPanel 
sudo apt-get install autoconf subversion libpcsclite-dev libreadline6 libreadline-dev openssl libssl-dev libtool libltdl-dev libccid pinentry-gtk2
sudo apt-get install build-essential autoconf subversion openssl libssl-dev libtool libltdl-dev pkg-config
sudo apt autoremove opensc
cd temporal
svn checkout https://github.com/securez/opendnie/
cd opendnie/trunk/
echo $LIBS
echo LIBS
./bootstrap
./configure
cd branches/
cd opensc-dnie/
sudo apt icd ..
cd opensc-opendnie/
cd trunk/
cd src/
cd tools/
sudo find / -name libltdl.la
nano Makefile.am 
./bootstrap 
./configure --prefix=/usr --sysconfdir=/etc/opensc
make
sudo make install
killall firefox
updagrade
sudo apt install python3-flask
sudo apt install python3-misaka
cd /datos/Sync/Programacion/
cd Python/
git clone git@github.com:xolox/python-preview-markup.git
killall atom
umake ide 
umake ide sublime-text
sudo apt install sublime-text
sudo apt install sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt updagrade
updagrade
cd /datos/Sync/Programacion/Python/utext
mkdir mokups
mv mokups/ mockups
cd mockups/
git clone git@github.com:gnacho/Gnome-MD.git
chromium-browser -app=https://mail.google.com/mail/u/0/#inbox
updagrade
mkdir mokups
mv mokups/ mockups
cd mockups/
git clone git@github.com:gnacho/Gnome-MD.git
chromium-browser -app=https://mail.google.com/mail/u/0/#inbox
cd /datos/Sync/Programacion/Python/utext
cd src/
python3 utext
python3 utext.py 
cat mimeapps.list 
cat ~/.config/mimeapps.list 
sudo apt install python-trollius
sudo apt autoremove && sudo apt autoclean
man systemd.special
ps -ax |grep -m 1 /usr/bin/gnome-shell |awk '{ print $1 }' |xargs pmap -x
ps -ax | grep -m 1 /usr/bin/gnome-shell | awk '{ print $1 }' | xargs pmap -x
nano ps_mem.py
ls ps_mem.py 
ls -la ps_mem.py 
./ps_mem.py gnome-shell
./ps_mem.py
sudo ./ps_mem.py gnome-shell
sudo ./ps_mem.py gnome-shell -t
sudo ./ps_mem.py -t
sudo ./ps_mem.py -d
killall gnome-software
sudo ./ps_mem.py | grep gnome
sudo ./ps_mem.py | grep chromium
sudo ./ps_mem.py | grep sublime
sudo ./ps_mem.py | grep atom
sudo ./ps_mem.py | grep tg
sudo ./ps_mem.py | grep telegram
sudo ./ps_mem.py | grep Telegram
cd /mnt/
cd peliculas/
cd cloudstation/
cd downloads/
sudo mount 192.168.1.181:/volume1/homes /mnt/cloudstation/
ssh lorenzo@192.168.1.181
cd 
sudo ./ps_mem.py | grep stacer
cd ~/Descargas
ls ps
ls ps*
chmod +x ps_mem.py 
sudo ./ps_mem.py  | stacer
sudo ./ps_mem.py  | grep stacer
killall gnome-documents
sudo stacer
killall chromium-browser 
sudo ./ps_mem.py
cd /datos/Sync/Programacion/Python/youtube-indicator/
./setup.py translate
dch -i
dch -r
mybuilder
ssh pi@192.168.1.50
s
clean
ls -la
git reset HEAD
git add .
git commit -m 'Fixed bug with language"
git reset HEAD debian/changelog
git add debian/changelog 
git commit -m "Fixed bug with app name"
git push
cd utext
git diff status
git add data/icons/*
cd ..
cd Nautilus/
cd nautilus-crusher/
git diff src/nautilus-crusher.py
git add src/nautilus-crusher.py 
git diff --cached
git status
clear git diff
git diff cached
clear
git diff
git diff --staged
cd
cd Escritorio
ls
sudo ./pe
sudo ./ps_mem.py 
ssh 192.168.1.48
ssh pi@192.168.1.48
ssh 192.168.1.48
ssh pi@192.168.1.48
ls
history grep | nfs
history | grep nfs
sudo mount 192.168.1.48:/src/nfs4/share /mnt/raspberry
sudo mount.nfs4 192.168.1.48:/src/nfs4/share /mnt/raspberry
sudo mount.nfs4 192.168.1.48:/srv/nfs4/share /mnt/raspberry
cp Descargas/Kid\ Rock\ -\ Po-Dunk\ \[Official\ Video\]_14.webm /mnt/raspberry/
sudo cp Descargas/Kid\ Rock\ -\ Po-Dunk\ \[Official\ Video\]_14.webm /mnt/raspberry/
ls
ssh 192.168.1.48
ssh pi@192.168.1.48
ssh pi@192.168.1.48
cd Escritorio
sudo ./ps_mem.py 
cd /etc/udev/rules.d/
ls
sudo nano 70-u2f.rules
ls -la
udevadm control --reload-rules && udevadm trigger
sudo udevadm control --reload-rules && sudo udevadm trigger
killall firefox
sudo apt update
sudo apt upgrade
history grep | nfs
history | grep nfs
sudo mount 192.168.1.48:/src/nfs4/share /mnt/raspberry
sudo mount.nfs4 192.168.1.48:/src/nfs4/share /mnt/raspberry
sudo mount.nfs4 192.168.1.48:/srv/nfs4/share /mnt/raspberry
cp Descargas/Kid\ Rock\ -\ Po-Dunk\ \[Official\ Video\]_14.webm /mnt/raspberry/
sudo cp Descargas/Kid\ Rock\ -\ Po-Dunk\ \[Official\ Video\]_14.webm /mnt/raspberry/
ls
ssh 192.168.1.48
killall umount
umount /mnt/raspberry
cd /datos/Sync/Programacion/Python/youtube-indicator/
dch -r
git commit -a -m "Added icon to progress dialog"
git push
mybuilder
ssh pi@192.168.1.48
sudo apt install gnome-cups-manager
sudo apt install print-manager
sudo apt install gnome-print-manager
clean
git reset HEAD
git commit -m 'Fixed bug with language"
git reset HEAD debian/changelog
git add debian/changelog 
git commit -m "Fixed bug with app name"
cd utext
git diff status
git add data/icons/*
git diff src/nautilus-crusher.py
git add src/nautilus-crusher.py 
git diff --cached
git status
clear git diff
git diff cached
clear
git diff
git diff --staged
cd Escritorio
sudo ./pe
sudo ./ps_mem.py 
ssh 192.168.1.48
ssh pi@192.168.1.48
ssh 192.168.1.48
ssh pi@192.168.1.48
history grep | nfs
history | grep nfs
sudo mount 192.168.1.48:/src/nfs4/share /mnt/raspberry
sudo mount.nfs4 192.168.1.48:/src/nfs4/share /mnt/raspberry
cp Descargas/Kid\ Rock\ -\ Po-Dunk\ \[Official\ Video\]_14.webm /mnt/raspberry/
sudo cp Descargas/Kid\ Rock\ -\ Po-Dunk\ \[Official\ Video\]_14.webm /mnt/raspberry/
ssh 192.168.1.48
ssh pi@192.168.1.48
ssh pi@192.168.1.48
cd Escritorio
sudo ./ps_mem.py 
cd /etc/udev/rules.d/
sudo nano 70-u2f.rules
udevadm control --reload-rules && udevadm trigger
sudo udevadm control --reload-rules && sudo udevadm trigger
killall firefox
sudo apt update
sudo apt upgrade
history grep | nfs
history | grep nfs
sudo mount 192.168.1.48:/src/nfs4/share /mnt/raspberry
sudo mount.nfs4 192.168.1.48:/src/nfs4/share /mnt/raspberry
cp Descargas/Kid\ Rock\ -\ Po-Dunk\ \[Official\ Video\]_14.webm /mnt/raspberry/
sudo cp Descargas/Kid\ Rock\ -\ Po-Dunk\ \[Official\ Video\]_14.webm /mnt/raspberry/
ssh 192.168.1.48
killall umount
umount /mnt/raspberry
cd /datos/Sync/Programacion/Python/youtube-indicator/
git commit -a -m "Added icon to progress dialog"
ssh pi@192.168.1.48
sudo apt install gnome-cups-manager
sudo apt install print-manager
sudo apt install gnome-print-manager
cd /datos/Sync/Programacion/Python/gqrcode/
./tools -
./tools -translate
cat tools 
./tools
sublime_text
sublimetext
git commit -a -m "Updated"
cd .. 
git commit -a -m "fractions"
cd Python/gqrcode/
debuild -i -us -uc -b
sudo apt update && sudo apt upgrade
sudo apt autoremove
sudo snap install wekan
snap interfaces
sudo systemctl status snap.wecan.mongodb
sudo systemctl status snap.wekan.mongodb
sudo systemctl status snap.wekan.wekan
sudo snap set wekan root-url="http://localhost:5000"
sudo apt install virtualbox
cd ..
cd Nautilus/
cd nautilus-crusher/
cd /usr/share/nautilus-python/
cd extensions/
fg 1
sudo nano nautilus-crusher.py 
killall nautilus
cd /datos/Sync/Programacion/Nautilus/nautilus-crusher/
git commit -a -m "Fixed a bug"
git remote add origin git@github.com:atareao/gqrcode.git 
git remote remove origin
git remote -v
git add origin git@github.com:atareao/nautilus-crusher.git
git remote add origin git@github.com:atareao/nautilus-crusher.git
git push -u origin master
compile_extension 
cd
cd /datos/Sync/Programacion/Python/
rm gqrcode_0.5.0-0extras17.04.1_a*
cd gqrcode/
dch -r
./tools babilon
nano template1/es.po 
git add .
git commit -a -m "Updated translations and fixed bugs"
git push
mybuilder
updagrade
cd 
cd .bash_it/aliases/
nano custom.aliases.bash 
history | grep mount
sudo mount.nfs4 192.168.1.48:/srv/nfs4/share /mnt/raspberry
cd /mnt/raspberry/
ls
cp ~/Escritorio/git-repositorio-local.jpg ./
ls -la
sudo add-apt-repository ppa:bookworm-team/bookworm
sudo apt update && sudo apt install bookworm
mybuilder
ssh pi@192.168.1.48
sudo apt install gnome-cups-manager
sudo apt install print-manager
sudo apt install gnome-print-manager
nautilus
sudo apt install gnome-print-manager
uupgrade
killall nautilus
nautilus
uupgrade
ls -la
uupgrade
killall nautilus
nautilus
uupgrade
ls -la
l
history | grep mount
sudo mount.nfs4 192.168.1.48:/srv/nfs4/share /mnt/raspberry
cd /mnt
cd raspberry/
cp ~/Escritorio/pi_logo.png ./
ls
nautilus
sudo add-apt-repository ppa:webupd8team/terminix
update
sudo apt install tilix
nano .bashrc
ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
nano .bashrc 
sudo apt remove terminix
sudo apt remove terminator
autoremove
exit
ls
man tilix 
tilix --help
sudo apt install tilix
nano .bashrc
ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
nano .bashrc 
sudo apt remove terminix
sudo apt remove terminator
autoremove
exit
man tilix 
tilix --help
cd /datos/Sync/Programacion/Python/gqrcode/
dch -r
mybuilder
git commit -a -m "Removed dh_python"
git push
cd
cd /datos/Sync/Programacion/Python/utext/
echo 'es' >> languages.txt 
cat languages.txt 
./tools.py babilon
cd template1/
ls
cat es.po 
cd ..
./tools.py 
uupgrade
cd /datos/Sync/Programacion/Python/ut
cd /datos/Sync/Programacion/Python/utext
ls
./tools.py 
tilix --help
sudo apt install tilix
nano .bashrc
ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
nano .bashrc 
sudo apt remove terminix
sudo apt remove terminator
autoremove
exit
man tilix 
tilix --help
git commit -a -m "Removed dh_python"
cd
cd /datos/Sync/Programacion/Python/utext/
echo 'es' >> languages.txt 
cat languages.txt 
./tools.py babilon
cd template1/
cat es.po 
cd ..
cd /datos/Sync/Programacion/Python/gqrcode/
./tools 
./tools babilon
nano template1/es.po 
./tools.py 
python3 tools.py
git status
git add tools.py 
git commit -a -m "Updated translations"
git push
sudo apt upgrade
uupgrade
cd ~/Escritorio
killall chromium-browser
killall python2.7
killall python
sudo ./ps_mem.py 
cd /datos/Sync/Programacion/Python/telegram/
ls
dch -i
ls -la
./update.sh 
dch -r
mybuilder
cd /datos/Sync/Programacion/Python/utext/bin/
ls
./utext 
ssh pi@192.168.1.48
killall python
dch -i
ls -la
dch -r
mybuilder
cd 
cd Escritorio
sudo ./ps_mem.py 
cd /datos/Sync/Programacion/Python/telegram/
./update.sh 
ls
nano update.sh 
killall chromium-browser
htop
cd /datos/Sync/Programacion/Python/utext/bin/
./utext 
htop
./utext 
htop
killall chromium-browser 
cd /usr/bin/
ls
tilix -a session-add-right -x ls
ls
ls
htop
sudo update-alternatives --config x-terminal-emulator
uupgrade
killall chromium-browser
sudo update-alternatives --config x-terminal-emulator
uupgrade
killall chromium-browser
cd .bash_it
cd lib/
cp ~/Escritorio/ps_mem.py ./
nano custom.bash 
ls
geany custom.bash 
htop
killall chromium-browser
cd Escritorio
ls
neofetch
ssh lorenzo#192.168.1.181
ssh lorenzo@192.168.1.181
cd lib/
cp ~/Escritorio/ps_mem.py ./
nano custom.bash 
geany custom.bash 
mem
cd /mnt/
cd ..
sudo mount 192.168.1.181:/volume4/media /mnt/media
cd media/
ls
ncdu
uupgrade
killall chromium-browser
cd .bash_it
cd lib/
cp ~/Escritorio/ps_mem.py ./
nano custom.bash 
geany custom.bash 
htop
killall chromium-browser
cd Escritorio
neofetch
ssh lorenzo#192.168.1.181
ssh lorenzo@192.168.1.181
cd lib/
cp ~/Escritorio/ps_mem.py ./
nano custom.bash 
geany custom.bash 
cd /mnt/
sudo mount 192.168.1.181:/volume4/media /mnt/media
cd media/
sudo apt install gt5
gt5
sudo apt remove gt5
sudo apt install ncdu
cd VirtualBox\ VMs/
cd .atom/
sudo apt remove atom
umake
umake ide
umake ide remove atom
umake remove ide atom
umake --help
umake idea atom -h
umake ide atom -h
umake ide atom -r
rm -rf .atom/
ncdu
cd .config/
ls google-chrome/
sudo rm -rf google-chrome/
cd ..
cd .cache/
ls
rm -rf google-chrome/
ls -la
killall shutter
killall shutt
killall node
sudo killall node
mem
cd .cache/
rm -rf google-chrome/
killall shutter
killall shutt
killall node
sudo killall node
mem
ls -la Ardour/
cd Ardour/
cd --
ls -la
cd /opt/
cd Ardour-5.10.0/
cd bin/
./ardour-5.10.0 
./ardour
usermod -a -G audio lorenzo
sudo usermod -a -G audio lorenzo
./ardour5
sudo nano /etc/security/limits.conf 
cd /etc/security/limits.d/
ls
sudo touch 99-realtime.conf
sudo nano 99-realtime.conf 
sudo groupadd realtime
usermod -a -G realtime lorenzo
sudo usermod -a -G realtime lorenzo
cd .config/
ls google-chrome/
sudo rm -rf google-chrome/
cd ..
cd .cache/
rm -rf google-chrome/
ls -la
killall shutter
killall shutt
killall node
sudo killall node
mem
cd Descargas
rm Shakira\ -\ Chantaje\ \(Official\ video\)\ ft.\ Maluma_*
rm Ubuntu_\(16.04_LTS_Xenial\ Xerus_15.10\ Wily\ Werewolf\)_libpkcs11-dnie_1.4.0_amd64.deb Stacer_1.0.1_amd64.deb stacer_1.0.7_amd64.deb 
rm get_video_info*
rm MAMÁ\,\ QUIERO\ SER\ YOUTUBER_22.mp4 
rm Rope\ Tutorial\ -\ Blender\ Guru_0.m4a 
rm Ro*
rm w_lina09.pdf 
rm LibreELEC-RPi2.arm-8.0.2.img 
rm M1200.ppd 
rm messengerfordesktop-2.0.9-linux-amd64.deb 
rm my_atom_packages.txt 
rm neon-useredition-20170706-1018-amd64.iso 
rm Ocsp\ Responder\ AV\ DNIE-FNMT_SHA2.*
rm Photos.zip 
rm Plantilla\ añadir\ obra.xlsx 
rm archive*
rm certificado_cifrado*
rm cita_previa.pdf 
rm icons8-*
rm iMedia\ Talk\ on\ The\ Visual\ Organization_*
rm impreso-solicitud-prestacion-contributiva.pdf Informe\ de\ Vida\ Laboral.pdf Kid\ Rock\ -\ Po-Dunk\ \[Official\ Video\]_14.webm Keyboard\ Typing\ Sound\ 2\ hours\ \ \ Sonido\ de\ persona\ tecleando\ en\ computadora\ 2\ horas-Rfcm2IoAyds.mp3 
rm 2017-07-05-raspbian-jessie-lite.*
rm *.crt
rm *.ca
rm *.cab
ls -la Ardour-5.10.0-x86_64.run 
chmod +x Ardour-5.10.0-x86_64.run 
./Ardour-5.10.0-x86_64.run 
cd /opt/
cd Ardour-5.10.0/
cd bin/
ls
ultimit -l
ulimit -l
ulimit -a
sudo ulimit -l unlimited
ulimit -l unlimited
cd Ardour-5.10.0/
cd bin/
ultimit -l
ulimit -l
ulimit -a
sudo ulimit -l unlimited
ulimit -l unlimited
cd /opt/Ardour-5.10.0/bin/
ls
./ardour5
sudo apt instlal pulseaudio-module-jack
sudo apt install pulseaudio-module-jack
sudo nano /etc/pulse/default.pa 
fg 1
pulseaudio --check
pulseaudio -k
pulseaudio -D
install cadence
remove pulseaudio*
remove jack
remove pulseaudio-module-jack
remove pulseaudio-module-utils
remove pulseaudio-utils
sudo apt installl ubuntu-gnome-desktop
sudo apt install ubuntu-gnome-desktop
sudo apt install pavumeter pavucontrol paman paprefs ubuntu-sounds
ls
./ardour5
sudo apt instlal pulseaudio-module-jack
sudo apt install pulseaudio-mod
fg 1
pulseaudio --check
pulseaudio -D
install cadence
remove pulseaudio*
remove jack
remove pulseaudio-module-jack
remove pulseaudio-module-utils
remove pulseaudio-utils
sudo apt installl ubuntu-gnome-desktop
sudo apt install ubuntu-gnome-desktop
sudo apt install pavumeter pavucontrol paman paprefs ubuntu-sounds
sudo /etc/init.d/pulseaudio restart
sudo apt remove module-jack-sink
history | grep jack
pulseaudio 
pulseaudio -l
killall pulseaudio
sudo nano /etc/pulse/default.pa 
pulseaudio
sudo alsa force-reload
pulseaudio -k
alsamixer
sudo apt remove jack
pulseaudio --check
pulseaudio -k
pulseaudio -D
install cadence
remove pulseaudio*
remove jack
remove pulseaudio-module-jack
remove pulseaudio-module-utils
remove pulseaudio-utils
sudo apt installl ubuntu-gnome-desktop
sudo apt install ubuntu-gnome-desktop
sudo apt install pavumeter pavucontrol paman paprefs ubuntu-sounds
./ardour5
sudo apt instlal pulseaudio-module-jack
sudo apt install pulseaudio-mod
fg 1
pulseaudio --check
pulseaudio -D
install cadence
remove pulseaudio*
remove jack
remove pulseaudio-module-jack
remove pulseaudio-module-utils
remove pulseaudio-utils
sudo apt installl ubuntu-gnome-desktop
sudo apt install ubuntu-gnome-desktop
sudo apt install pavumeter pavucontrol paman paprefs ubuntu-sounds
sudo /etc/init.d/pulseaudio restart
sudo apt remove module-jack-sink
history | grep jack
pulseaudio 
pulseaudio -l
killall pulseaudio
sudo nano /etc/pulse/default.pa 
pulseaudio
sudo alsa force-reload
pulseaudio -k
alsamixer
sudo apt remove jack
cd Descargas
sudo dpkg -i kxstudio-repos_9.4.6-kxstudio1_all.deb 
uupgrade
cd Escritorio/regextools/
sudo apt-get install libreoffice-dev*
killall libreoffice
killall soffice
htop
cd 
rm -rf Regextools
rm -rf Regextools.oxt 
cd /datos/Sync/Programacion/libreoffice/
cd hidraulica/
cd
cd Escritorio
cd regextools/
ls
./make.sh 
sudo apt install ubuntu-gnome-desktop
sudo apt install pavumeter pavucontrol paman paprefs ubuntu-sounds
sudo /etc/init.d/pulseaudio restart
sudo apt remove module-jack-sink
history | grep jack
pulseaudio 
pulseaudio -l
killall pulseaudio
sudo nano /etc/pulse/default.pa 
pulseaudio
sudo alsa force-reload
pulseaudio -k
alsamixer
sudo apt remove jack
cd Descargas
sudo dpkg -i kxstudio-repos_9.4.6-kxstudio1_all.deb 
uupgrade
cd Escritorio/regextools/
sudo apt-get install libreoffice-dev*
killall soffice
cd 
rm -rf Regextools
rm -rf Regextools.oxt 
cd /datos/Sync/Programacion/libreoffice/
cd hidraulica/
cd .config/libreoffice/
cd 4
cd user/
cd cache/
killall libreoffice
htop
ps aux | grep office
killall soffice.bin
cd uno_packages/
cd registry/
cat uno_packages
cat uno_packages.pmap 
rm uno_packages.pmap 
rm -rf *
cd
cd Escritorio
cd ..
cd casa/
cd regextools/
ls
./make.sh 
man stow
