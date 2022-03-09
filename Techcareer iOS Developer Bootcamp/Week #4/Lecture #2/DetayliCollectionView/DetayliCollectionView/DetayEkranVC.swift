//
//  DetayEkranVC.swift
//  DetayliCollectionView
//
//  Created by Can Bi on 9.03.2022.
//

import UIKit

class DetayEkranVC: UIViewController {

    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmYonetmenAdiLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var film: Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let film = film {
            filmAdiLabel.text = film.filmAdi
            filmYonetmenAdiLabel.text = film.filmYonetmenAdi
            filmImageView.image = UIImage(named: film.filmResimAdi!)
            filmFiyatLabel.text = "\(film.filmFiyat!) ₺"
        }
    }
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let film = film {
            print("\(film.filmAdi!) \(film.filmFiyat!) fiyatla sepete eklendi")
        }
    }
}
