# Getting Started with InTouchClient

InTouchClient is a powerful Swift library that simplifies the integration of video call functionality into your iOS applications. This guide will walk you through the steps to quickly get started with InTouchClient and add video calling capabilities to your app.

## Prerequisites

Before you begin, make sure you have the following prerequisites:

1. Xcode installed on your development machine.
2. A valid Apple Developer account if you plan to distribute your app on the App Store.
3. Basic knowledge of Swift and iOS app development.

## Installation

To integrate InTouchClient into your iOS project, follow these simple steps:

1. **Install via SPM**:

    InTouchClient is available through Swift Package Manager, a dependency manager for Swift projects.
    Open your project and add the package to your project using Xcode menu File -> Add Packages. 
    To search the library enter a Github URL.

2. **Import InTouchClient**:

    In your Swift code, import InTouchClient to start using it:
    ```
    import InTouchClient
    ```

3. **Configuration**:

    Use this struct to configure various settings and options for the Client before initializing it. 
    The ``Configuration`` struct allows you to customize the behavior and appearance of the call functionality.

    ```
    var callConfig = Configuration()
    callConfig.isVideoEnabled = true
    callConfig.audioCodec = .opus
    callConfig.videoCodec = .h264
    let client = InTouchClient(configuration: callConfig)
    ```

4. **Usage**:

    Now that InTouchClient is integrated into your project, you can start adding video calling functionality to your app. Here's a basic example of how to create and initiate a video call:

```
// Create a Client instance
let client = InTouchClient(configuration: callConfig)

// Start the video call
client.connect(to: "user name")

// Handle call events, such as incoming calls, call termination, etc.
client.delegate = self
```

Don't forget to implement the necessary delegate methods and handle permissions for camera and microphone access.
