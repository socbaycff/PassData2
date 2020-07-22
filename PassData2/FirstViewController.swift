//
//  MyViewController.swift
//  PassData2
//
//  Created by L Khang on 7/21/20.
//  Copyright © 2020 L Khang. All rights reserved.
//

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
    

    @IBAction func next(_ sender: Any) {
        let secondvc = SecondViewController()
        secondvc.str = "data truyen"
      //  self.present(secondvc, animated: true, completion: nil)
        navigationController?.pushViewController(secondvc, animated: true)
    }
    

}
