//
//  DetayVC.swift
//  ViperPatternKullanimi
//
//  Created by Can Bi on 12.03.2022.
//

import UIKit

class DetayVC: UIViewController {
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    var delegate: DetayVCtoViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonGonder(_ sender: Any) {
        if let text = textFieldGirdi.text {
            delegate?.veriGonder(mesaj: text)
        }
    }
}
