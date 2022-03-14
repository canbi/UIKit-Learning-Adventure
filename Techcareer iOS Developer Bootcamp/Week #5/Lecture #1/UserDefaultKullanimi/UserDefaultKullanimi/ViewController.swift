//
//  ViewController.swift
//  UserDefaultKullanimi
//
//  Created by Can Bi on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userDefaultCalismasi()
    }
    
    func userDefaultCalismasi(){
        let ud = UserDefaults.standard
        
        //Kayıt
        ud.set("Ahmet", forKey: "ad")
        
        //Silme
        ud.removeObject(forKey: "ad")
        
        //Okuma
        let gelenAd = ud.string(forKey: "ad") ?? "İsim yok"
        
        print("\(gelenAd)")
    }

}

