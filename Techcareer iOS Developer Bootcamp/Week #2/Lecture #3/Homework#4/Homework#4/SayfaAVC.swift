//
//  SayfaAVC.swift
//  Homework#4
//
//  Created by Can Bi on 27.02.2022.
//

import UIKit

class SayfaAVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonGoToB(_ sender: Any) {
        performSegue(withIdentifier: "aToB", sender: nil)
    }
    
}
