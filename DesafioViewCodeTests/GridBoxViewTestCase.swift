import XCTest
import SnapshotTesting
@testable import DesafioViewCode

class GridBoxViewTestCase: XCTestCase {
    
    var systemUnderTest: GridBoxView!
    
    override func setUp() {
        super.setUp()
        systemUnderTest =  GridBoxView(frame: .init(origin: .zero, size: CGSize(width: 250, height: 200)))
        
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
