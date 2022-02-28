//
//  SayfaBVC.swift
//  Homework#4
//
//  Created by Can Bi on 27.02.2022.
//

import UIKit

class SayfaBVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonGoToY(_ sender: Any) {
        performSegue(withIdentifier: "bToY", sender: nil)
    }
}
