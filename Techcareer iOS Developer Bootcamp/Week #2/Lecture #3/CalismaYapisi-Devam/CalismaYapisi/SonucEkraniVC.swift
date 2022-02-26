//
//  SonucEkraniVC.swift
//  CalismaYapisi
//
//  Created by Can Bi on 23.02.2022.
//

import UIKit

class SonucEkraniVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonKapatTikla(_ sender: Any) {
        //Sayfa üzerinde açılan yapıları kapatır
        self.dismiss(animated: true, completion: nil)
    }
}
