import UIKit

class ThirdViewController: UIViewController {
    weak var delegate: DataDelegate!
    
    var hamTraVe2: ((String) -> Void)!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func guiData(_ sender: Any) {
        navigationController?.popViewController(animated: true)
       // delegate.hamTraVe("data tra ve") // dung delegate tra ve second
        hamTraVe2("data tra ve") // dung closure tra ve second
    }

    // ham ban data ve 1
    @IBAction func troVe1(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true) // tro ve goc
        NotificationCenter.default.post(name: FirstViewController.tbdata, object: nil, userInfo: ["data": "data tu 3"]) // gui thong tin
    }
}
protocol DataDelegate: class { // class protocol : protocol cho class : struct enum k ke thua
    func hamTraVe(_ str: String) // ham tra ve second
}
