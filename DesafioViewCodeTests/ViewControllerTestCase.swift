import XCTest
import SnapshotTesting
@testable import DesafioViewCode

class   ViewControllerTestCase: XCTestCase {
    
    var systemUnderTest: ViewController!
    
    override func setUp() {
        super.setUp()
        systemUnderTest =
        
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func testComponentView() {
        if let message = verifySnapshot(matching: systemUnderTest, as: .image, record: isRecording) {
            XCTFail(message)
            
        }
    }
}

