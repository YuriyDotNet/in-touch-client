import XCTest
@testable import InTouchClient

final class InTouchClientTests: XCTestCase {
    private let defaultConfiguration: Configuration = .init()
    
    func testClientConnect() throws {
        let client = InTouchClient(with: defaultConfiguration)
        
        client.connect(to: "test")
        
        XCTAssertTrue(client.isConnected)
    }
}
