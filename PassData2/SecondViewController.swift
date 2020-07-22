import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var nhan: UILabel!
    var str: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        nhan.text = str
    }

    @IBAction func next(_ sender: Any) {
        let vc = ThirdViewController()
       // vc.delegate = self
        vc.hamTraVe2 = { [weak self] str in // ham nhan data tra ve tu third (dung closue)
            self?.nhan.text = str
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
     // let arr =  navigationController!.viewControllers
        navigationController?.popToRootViewController(animated: true) // pop ve VC truoc
    }
}

extension SecondViewController: DataDelegate {
    func hamTraVe(_ str: String) { // ham nhan data ve tu third (dung delegate)
        nhan.text = str
    }
}
