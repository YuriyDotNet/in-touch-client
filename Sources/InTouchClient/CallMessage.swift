import Foundation

/// Represents a message in a call.
public struct CallMessage {
    /// The sender of the message.
    public let sender: String
    /// The content of the message.
    public let content: String
    /// The timestamp when the message was sent.
    public let timestamp: Date
}
