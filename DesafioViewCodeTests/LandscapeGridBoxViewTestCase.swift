import SnapshotTesting
import XCTest
@testable import DesafioViewCode

class LandscapeGridBoxViewTestCase: XCTestCase {
    
    var systemUnderTest: LandscapeGridBoxView!
    
    override func setUp() {
        super.setUp()
        isRecording = true
        systemUnderTest =  LandscapeGridBoxView(frame: .init(origin: .zero, size: .init(width: 700, height: 700)))
        
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
