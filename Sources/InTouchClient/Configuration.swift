import Foundation

/// A configuration struct for setting up the InTouchClient.
///
/// Use this struct to configure various settings and options for the Client before initializing it. The ``Configuration`` struct allows you to customize the behavior and appearance of the call functionality.
///
/// Example usage:
/// ```
/// var callConfig = Configuration()
/// callConfig.isVideoEnabled = true
/// callConfig.audioCodec = .opus
/// callConfig.videoCodec = .h264
/// let client = InTouchClient(configuration: callConfig)
/// ```
public struct Configuration {
    /// A Boolean value indicating whether video calling is enabled.
    ///
    /// If set to `true`, the Client will support video calls. If set to `false`, the Client will support only audio calls.
    public var isVideoEnabled: Bool = false
    
    /// The preferred audio codec for calls.
    ///
    /// Use this property to specify the audio codec to use for audio calls. The default value is ``AudioCodec/opus``.
    public var audioCodec: AudioCodec = .opus
    
    /// The preferred video codec for video calls.
    ///
    /// Use this property to specify the video codec to use for video calls. The default value is ``VideoCodec/h264``.
    public var videoCodec: VideoCodec = .h264
    
    /// The maximum allowed duration for a call in seconds.
    ///
    /// You can set this value to limit the duration of calls. If not specified, there is no maximum call duration.
    public var maxCallDuration: TimeInterval?
    
    /// Initializes a new ``Configuration`` with default values.
    public init() {}
}

/// An enum representing supported audio codecs for calls.
public enum AudioCodec {
    case opus
    case g711
}

/// An enum representing supported video codecs for video calls.
public enum VideoCodec {
    case h264
    case vp8
}
