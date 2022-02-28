//
//  SayfaYVC.swift
//  Homework#4
//
//  Created by Can Bi on 27.02.2022.
//

import UIKit

class SayfaYVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func buttonGoToHome(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
