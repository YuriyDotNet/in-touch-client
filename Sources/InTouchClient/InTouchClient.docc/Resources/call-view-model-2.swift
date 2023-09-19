import Foundation

final class CallViewModel {

    private var callClient: CallClient?
    private var status: CallStatus = .disconnected

    internal func connect(name: String) {
        let configuration = Configuration()
        callClient = InTouchClient(with: configuration)
        callClient?.delegate = self
        callClient?.connect(to: name)
    }
}

extension CallViewModel: CallClientDelegate {
    func callStatusDidChange(_ status: CallStatus) {
        self.status = status
    }

    func receivedRemoteMessage(_ message: CallMessage) {
        print("receivedRemoteMessage \(message.content)")
    }
}
