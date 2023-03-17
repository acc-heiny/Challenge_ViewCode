import UIKit

class ViewController: UIViewController {
    
    private let customView: CustomView = CustomView()
    
    override func loadView() {
        customView.delegate = self
        self.view = customView
    }
}
    
extension ViewController: CustomViewDelegate {
    
    func openGenericScreen() {
        
        let alert: UIAlertController = UIAlertController(title: "Welcome", message: "This is my challenge in ViewCode", preferredStyle: .alert)
        let alertAction: UIAlertAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
}
