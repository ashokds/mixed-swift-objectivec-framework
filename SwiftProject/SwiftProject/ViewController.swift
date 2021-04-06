import ObjectiveCFramework
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("%d", ObjectiveCManager.swiftEnum())
    }

    @IBAction func loadObjCVCTapped(_ sender: Any) {
        ObjectiveCManager.presentObjectiveCViewController("Loading ObjC VC from Swift app", presenting: self) { (_, error) in
            if let error = error {
                print(error)
                return
            }
            print ("Presented objCVC successfully.")
        }
    }
    
    @IBAction func loadSwiftVCTapped(_ sender: Any) {
        ObjectiveCManager.presentSwiftViewController("Presented Swift VC from app", presenting: self) { (_, error) in
            if let error = error {
                print(error)
                return
            }
            print ("Presented swiftVC successfully.")
        }
    }
}

