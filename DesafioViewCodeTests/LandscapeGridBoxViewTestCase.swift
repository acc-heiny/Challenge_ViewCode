import SnapshotTesting
import XCTest
@testable import DesafioViewCode

class LandscapeGridBoxViewTestCase: XCTestCase {
    
    var systemUnderTest: LandscapeGridBoxView!
    
    override func setUp() {
        super.setUp()
        systemUnderTest =  LandscapeGridBoxView(frame: .init(origin: .zero, size: CGSize(width: UIScreen.main.bounds.size.width - 80, height: 75)))
        
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func test_landscapeGridBoxView_shouldHaveExpectedlayout() {
        if let message = verifySnapshot(matching: systemUnderTest, as: .image, record: isRecording) {
            XCTFail(message)
            
        }
    }
}
