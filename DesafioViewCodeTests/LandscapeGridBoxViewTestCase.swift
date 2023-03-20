import SnapshotTesting
import XCTest
@testable import DesafioViewCode

class LandscapeGridBoxViewTestCase: XCTestCase {
    
    var systemUnderTest: LandscapeGridBoxView!
    
    override func setUp() {
        super.setUp()
        systemUnderTest =  LandscapeGridBoxView(frame: .init(origin: .zero, size: CGSize(width: 2500, height: 700)))
        
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
