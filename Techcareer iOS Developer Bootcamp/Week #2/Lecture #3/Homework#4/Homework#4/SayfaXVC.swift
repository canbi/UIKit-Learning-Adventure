//
//  SayfaXVC.swift
//  Homework#4
//
//  Created by Can Bi on 27.02.2022.
//

import UIKit

class SayfaXVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func buttonGoToY(_ sender: Any) {
        performSegue(withIdentifier: "xToY", sender: nil)
    }
}
