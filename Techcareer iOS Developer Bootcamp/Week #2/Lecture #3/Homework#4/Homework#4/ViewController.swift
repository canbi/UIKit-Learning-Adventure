//
//  ViewController.swift
//  Homework#4
//
//  Created by Can Bi on 27.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark  
    }


    @IBAction func buttonGoToA(_ sender: Any) {
        performSegue(withIdentifier: "homeToA", sender: nil)
    }
    
    @IBAction func buttonGoToX(_ sender: Any) {
        performSegue(withIdentifier: "homeToX", sender: nil)
    }
}

