//
//  ViewController.swift
//  KingfisherKullanimi
//
//  Created by Can Bi on 21.03.2022.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        resimGoster(resimAdi: "kofte")
    }

    @IBAction func buttonResim1(_ sender: Any) {
        resimGoster(resimAdi: "fanta")
    }
    
    @IBAction func buttonResim2(_ sender: Any) {
        resimGoster(resimAdi: "ayran")
    }
    
    func resimGoster(resimAdi: String){
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(resimAdi).png") {
            DispatchQueue.main.async {
                self.imageView.kf.setImage(with: url)
            }
        }
    }
}

