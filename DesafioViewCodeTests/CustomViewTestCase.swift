import XCTest
import SnapshotTesting
@testable import DesafioViewCode

class CustomViewTestCase: XCTestCase {
    
    var systemUnderTest: CustomView!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = CustomView(frame: .init(origin: .zero, size: UIScreen.main.bounds.size))
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
