import Foundation
// private objective-c
//import ObjectiveCFramework_Private

// Removing public here would make it not included in the module header
@objc
public class SwiftViewController : UIViewController {
    
    @IBOutlet weak var swiftTextField: UITextField?
    var message: String?
    
    // forced to be public because of top-level visibility
    public override func viewDidLoad() {
        super.viewDidLoad()
        swiftTextField?.text = message ?? "Hi!! default message."
    }
    
    @objc
    public static func createViewController(_ customMessage: String) -> (SwiftViewController) {
        
        let resourceBundle: Bundle = Bundle(for: self)
        let storyboard = UIStoryboard(name: "SwiftStoryboard", bundle: resourceBundle)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SwiftViewController") // as! SwiftViewController
        if let viewController = viewController as? SwiftViewController {
            viewController.message = customMessage
            viewController.invokeObjectiveC()
            return viewController
        }
        
        return SwiftViewController()
    }
    
    func invokeObjectiveC() {
        ObjectiveCManager.objCEnum()
        ObjectiveCManager.swiftEnum()
        ObjectiveCManager.name()
    }
}
