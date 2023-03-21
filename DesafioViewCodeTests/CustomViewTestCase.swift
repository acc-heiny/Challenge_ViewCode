import XCTest
import SnapshotTesting
@testable import DesafioViewCode

class CustomViewTestCase: XCTestCase {
    
    var systemUnderTest: CustomView!
    var delegateSpy: CustomViewDelegateSpy!
    
    override func setUp() {
        super.setUp()
        delegateSpy = CustomViewDelegateSpy()
        systemUnderTest = CustomView(frame: .init(origin: .zero, size: UIScreen.main.bounds.size))
        systemUnderTest.delegate = delegateSpy
    }
    
    override func tearDown() {
        systemUnderTest = nil
        delegateSpy = nil
        super.tearDown()
    }
    
    func test_customView_shouldHaveExpectedlayout () {
        if let message = verifySnapshot(matching: systemUnderTest, as: .image, record: isRecording) {
            XCTFail(message)
            
        }
    }
    
    func test_didTapActionButton_shouldCallDelegate() {
        systemUnderTest.didTapActionButton()
        
        XCTAssertEqual(delegateSpy.openGenericScreenCalledCount, 1)
    }
}
