import Foundation

/// Represents the current status of a call.
public enum CallStatus {
    case connecting
    case connected
    case disconnected
    case error(Error)
}
