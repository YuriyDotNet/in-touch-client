import Foundation

/// A protocol for receiving call-related events.
public protocol CallClientDelegate: AnyObject {
    
    /// Called when the call status changes.
    ///
    /// - Parameter status: The new call status.
    func callStatusDidChange(_ status: CallStatus)
    
    /// Called when remote message is received.
    ///
    /// - Parameter audioData: The message received from the remote party.
    func receivedRemoteMessage(_ message: CallMessage)
}
