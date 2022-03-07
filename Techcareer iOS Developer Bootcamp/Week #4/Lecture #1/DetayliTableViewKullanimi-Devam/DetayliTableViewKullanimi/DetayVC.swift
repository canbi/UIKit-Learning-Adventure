//
//  DetayVC.swift
//  DetayliTableViewKullanimi
//
//  Created by Can Bi on 7.03.2022.
//

import UIKit

class DetayVC: UIViewController {
    @IBOutlet weak var urunFiyat: UILabel!
    @IBOutlet weak var urunResim: UIImageView!
    
    var urun: Urunler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let urun = urun {
            self.navigationItem.title = urun.urun_ad
            urunResim.image = UIImage(named: urun.urun_resim_ad!)
            urunFiyat.text = "\(urun.urun_fiyat!)"
            
        }
    }

    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let urun = urun {
            print("\(urun.urun_ad!) sepete eklendi.")
        }
    }
}
