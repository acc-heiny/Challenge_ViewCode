import XCTest
import SnapshotTesting
@testable import DesafioViewCode

class GridBoxViewTestCase: XCTestCase {
    
    var systemUnderTest: GridBoxView!
    
    override func setUp() {
        super.setUp()
        isRecording = true
        systemUnderTest =  GridBoxView(frame: .init(origin: .zero, size: .init(width: 600, height: 800)))
        
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
