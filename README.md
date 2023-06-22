# EdgeCenter Demo – Stream Live Video Online on IOS
# Introduction
Set up live streaming in 15 minutes in your IOS project instead of 7 days of work and setting wild parameters of codecs, network, etc. This demo project is a quick tutorial how to stream live video from your own mobile app to an audience of 1 000 000+ viewers like Instagram, Youtube, etc.

# Features
1. Authorization
2. HLS & MPEG-DASH playback
3. RTMP streaming
5. Creating a new live stream
6. Camera switching
7. Mute mode
8. Video:
    * Network adaptive bitrate mechanism
    * Source: front and back cameras
    * Orientation: portrait
    * Codec: AVC/H.264
    * Configurable bitrate, resolution, iFrameInterval, encoder profile
9. Audio:
    * Codec: AAC
    * Configurable bitrate, sample rate, stereo/mono
    * Processing: noise suppressor, echo cancellation
# Testing the app with your EdgeCenter account
1. You can clone this project and run it in Android Studio, where you can test it either by connecting a real device or through an Android emulator
2. Sign in with your EdgeCenter account email and password.
3. On the Streams screen, you can watch the available streams
4. On the Select stream screen, you can select/create a stream to start streaming
5. On the Start Broadcast screen, you can start broadcasting, set the video quality, and select push url or backup push url for streaming

## Screenshots
<img src="/preview/preview_login.png" width=240/> <img src ="/preview/preview_viewing.png" width=240/> <img src ="/preview/preview_streams.png" width=240/>

# Quick Start

### 1. Permissions
In order to broadcast, you will also need an internet connection, a background mode, a camera and a microphone. To use them, add the following permissions to your app's Info.plist file:
``` swift
    <key>NSCameraUsageDescription</key>
    <string>Allow record video</string>
    <key>NSMicrophoneUsageDescription</key>
    <string>Allow record microphone</string>
    <key>UIApplicationSupportsIndirectInputEvents</key>
    <true/>
    <key>UIBackgroundModes</key>
    <array>
        <string>audio</string>
```
### 2. Start streaming
Streaming with default params:
``` swift
let rtmpManager = RTMPStreamManager()
rtmpManager.start()
rtmpManager.play()

rtmpManager.close()
```

You can find out how to get rtmpUrl for streaming in the EdgeCenter API [documentation](https://apidocs.edgecenter.ru/streaming#tag/Streams).
# Requirements
* The presence of an Internet connection on the device
* The presence of a camera and microphone on the device.
* IOS 12.1 or newer
# License
      MIT License
      
      Copyright (c) 2023 Edge-Center
      
      Permission is hereby granted, free of charge, to any person obtaining a copy
      of this software and associated documentation files (the "Software"), to deal
      in the Software without restriction, including without limitation the rights
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
      copies of the Software, and to permit persons to whom the Software is
      furnished to do so, subject to the following conditions:
      
      The above copyright notice and this permission notice shall be included in all
      copies or substantial portions of the Software.
      
      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
      SOFTWARE.
