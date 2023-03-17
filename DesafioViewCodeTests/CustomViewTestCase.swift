import XCTest
import SnapshotTesting
@testable import DesafioViewCode

class CustomViewTestCase: XCTestCase {
    
    var systemUnderTest: CustomView!
    
    override func setUp() {
        super.setUp()
        systemUnderTest =  CustomView(frame: UIScreen.main.nativeBounds.size.width = 100)
        
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

