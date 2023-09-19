import Foundation

final class CallViewModel: CallClientDelegate {

    private var callClient: CallClient?

    internal func connect(name: String) {
        let configuration = Configuration()
        callClient = InTouchClient(with: configuration)
        callClient?.delegate = self
        callClient?.connect(to: name)
    }
}
