import Foundation


/// A protocol defining the interface for a Call Client.
public protocol CallClient {
    
    /// The delegate for receiving call-related events.
    var delegate: CallClientDelegate? { get set }
    
    /// Indicates whether there is an active call.
    var isConnected: Bool { get }

    /// Connects to a recipient for a call.
    ///
    /// - Parameter recipient: The identifier of the recipient (e.g., username, SIP address).
    func connect(to recipient: String)
    
    /// Disconnects an ongoing call.
    func disconnect()
    
    /// Sends message to the remote party during a call.
    ///
    /// - Parameter message: The message to be sent.
    func sendMessage(_ message: CallMessage)
}

/// An implementation of the CallClient protocol.
public class InTouchClient: CallClient {

    /// The delegate for receiving call-related events.
    public weak var delegate: CallClientDelegate?
    
    /// Indicates whether there is an active call.
    public var isConnected: Bool = false
    
    /// Initializes the InTouch Client.
    public init(with configuration: Configuration) {
        // configure Client
    }
    
    /// Connects to a recipient for a call.
    ///
    /// - Parameter recipient: The identifier of the recipient (e.g., username, SIP address).
    public func connect(to recipient: String) {
        // Simulate connecting to a remote recipient.
        isConnected = true
        delegate?.callStatusDidChange(.connecting)
        
        // Simulate a successful connection after 2 seconds.
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            self.delegate?.callStatusDidChange(.connected)
        }
    }
    
    /// Disconnects an ongoing call.
    public func disconnect() {
        // Simulate disconnecting from the call.
        isConnected = false
        delegate?.callStatusDidChange(.disconnected)
    }
    
    /// Sends audio data to the remote party during a call.
    ///
    /// - Parameter audioData: The audio data to be sent.
    public func sendMessage(_ message: CallMessage) {
        // Simulate sending message to the remote recipient.
        if isConnected {
            // Simulate success.
            delegate?.receivedRemoteMessage(.init(sender: "Call Client", content: "Test", timestamp: Date()))
        } else {
            // Simulate an error (for testing).
            let error = CallError.recipientNotFound
            delegate?.callStatusDidChange(.error(error))
        }
    }
}

