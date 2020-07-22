import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var data: UILabel!
    static let tbdata = Notification.Name("thongBaoCoData") // khoi tao kieu thong bao
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // dang ky nhan thong bao data
        NotificationCenter.default.addObserver(self, selector: #selector(hamXuLy), name: FirstViewController.tbdata, object: nil)
    }
    
    
    @objc func hamXuLy(notification: Notification) {
        let str = notification.userInfo?["data"] as! String
        data.text = str
    }
    
    deinit { // huy dang ky nhan thong bao luc denit
        NotificationCenter.default.removeObserver(self, name: FirstViewController.tbdata, object: nil)
    }
    
    // truyen data tu First -> Second
    @IBAction func next(_ sender: Any) {
        let secondvc = SecondViewController()
        secondvc.str = "data truyen"
      //  self.present(secondvc, animated: true, completion: nil) // chieu Vc kieu modal
        navigationController?.pushViewController(secondvc, animated: true)
    }
    

}
