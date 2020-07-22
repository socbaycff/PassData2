//
//  SecondViewController.swift
//  PassData2
//
//  Created by L Khang on 7/21/20.
//  Copyright © 2020 L Khang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var nhan: UILabel!
    var str: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        nhan.text = str
        // Do any additional setup after loading the view.
    }

    @IBAction func next(_ sender: Any) {
        let vc = ThirdViewController()
       // vc.delegate = self
        vc.hamTraVe2 = { [weak self] str in
            self?.nhan.text = str
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
      let arr =  navigationController!.viewControllers
        navigationController?.popToRootViewController(animated: true)
    }
}

extension SecondViewController: DataDelegate {
    func hamTraVe(_ str: String) {
        nhan.text = str
    }
}
