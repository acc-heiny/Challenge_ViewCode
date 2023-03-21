import UIKit

class CustomViewDelegateSpy: CustomViewDelegate {
    
    var openGenericScreenCalledCount: Int = 0
    
    func openGenericScreen() {
        openGenericScreenCalledCount += 1
    }
}
