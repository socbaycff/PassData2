
import UIKit

class ThirdViewController: UIViewController {
    weak var delegate: DataDelegate!
    
    var hamTraVe2: ((String) -> Void)!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func backtoRoot(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func guiData(_ sender: Any) {
        navigationController?.popViewController(animated: true)
       // delegate.hamTraVe("data tra ve")
        hamTraVe2("data tra ve")
    }

    @IBAction func troVe1(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        NotificationCenter.default.post(name: FirstViewController.tbdata, object: nil, userInfo: ["data": "data tu 3"]) // gui thong
    }
}
protocol DataDelegate: class { // class protocol : protocol cho class : struct enum k ke thua
    func hamTraVe(_ str: String)
}
