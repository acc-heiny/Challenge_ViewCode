import SnapshotTesting
import XCTest
@testable import DesafioViewCode

class CenterGridBoxViewTestCase: XCTestCase {
    
    var systemUnderTest: CenterGridBoxView!
    
    override func setUp() {
        super.setUp()
        systemUnderTest =  CenterGridBoxView(frame: .init(origin: .zero, size: .init(width: 50, height: 50)))
        
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
