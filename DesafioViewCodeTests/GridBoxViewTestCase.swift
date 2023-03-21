import XCTest
import SnapshotTesting
@testable import DesafioViewCode

class GridBoxViewTestCase: XCTestCase {
    
    var systemUnderTest: GridBoxView!
    
    override func setUp() {
        super.setUp()
        systemUnderTest =  GridBoxView(frame: .init(origin: .zero, size: CGSize(width: (UIScreen.main.bounds.size.width - 160) / 3, height: 130)))
        
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func test_gridBoxView_shouldHaveExpectedlayout () {
        if let message = verifySnapshot(matching: systemUnderTest, as: .image, record: isRecording) {
            XCTFail(message)
            
        }
    }
}
