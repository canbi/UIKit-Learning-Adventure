//
//  DetayVC.swift
//  CollectionViewKullanimi
//
//  Created by Can Bi on 7.03.2022.
//

import UIKit

class DetayVC: UIViewController {
    @IBOutlet weak var ulkeAdLabel: UILabel!
    @IBOutlet weak var ulkeBaskentLabel: UILabel!
    
    var ulke: Ulkeler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let ulke = ulke {
            ulkeAdLabel.text = ulke.ulkeAd
            ulkeBaskentLabel.text = ulke.ulkeBaskent
        }
    }

    @IBAction func vizeButton(_ sender: Any) {
        if let ulke = ulke {
            print("\(ulke.ulkeAd!) ülkesine vize başvurusu yapıldı.")
        }
    }
    
}
