import XCTest
import SnapshotTesting
@testable import DesafioViewCode

class ViewControllerTestCase: XCTestCase {
    
    var systemUnderTest: ViewController!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = ViewController()
        
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func test_loadView_shouldHaveCorrectViewType() {
        systemUnderTest.beginAppearanceTransition(true, animated: false)
        systemUnderTest.endAppearanceTransition()
        XCTAssertNotNil(systemUnderTest.customView.delegate)
        XCTAssertTrue(systemUnderTest.view is CustomView )
        
    }
}
