//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Can Bi on 23.02.2022.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi : Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let kisi = kisi {
            print("Gelen : \(kisi.ad!) - \(kisi.yas!) - \(kisi.boy!) - \(kisi.bekar!)")
        }
    }

    @IBAction func buttonBitirTikla(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraniGecis", sender: nil)
    }
    
    @IBAction func buttonGeriTikla(_ sender: Any) {
        navigationController?.popViewController(animated: true) //Bir önceki sayfaya geri dönmek için
        //navigationController?.popToRootViewController(animated: true) //Anasayfaya geri dönmek için
    }
}
