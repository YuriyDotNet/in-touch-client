import Foundation

/// An enum representing possible errors during a call.
public enum CallError: Error {
    case recipientNotFound
    case networkError
    case audioProcessingError
}
