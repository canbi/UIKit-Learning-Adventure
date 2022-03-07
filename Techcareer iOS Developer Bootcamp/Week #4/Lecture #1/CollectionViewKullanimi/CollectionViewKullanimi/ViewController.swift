//
//  ViewController.swift
//  CollectionViewKullanimi
//
//  Created by Can Bi on 7.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ulkelerCollectionView: UICollectionView!
    
    var ulkelerListesi = [Ulkeler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkelerCollectionView.delegate = self
        ulkelerCollectionView.dataSource = self
        
        
        let u1 = Ulkeler(ulkeId: 1, ulkeAd: "Türkiye", ulkeBaskent: "Ankara")
        let u2 = Ulkeler(ulkeId: 2, ulkeAd: "Fransa", ulkeBaskent: "Paris")
        let u3 = Ulkeler(ulkeId: 3, ulkeAd: "İtalya", ulkeBaskent: "Roma")
        let u4 = Ulkeler(ulkeId: 4, ulkeAd: "İngiltere", ulkeBaskent: "Londra")
        let u5 = Ulkeler(ulkeId: 5, ulkeAd: "Japonya", ulkeBaskent: "Tokyo")
        
        ulkelerListesi.append(contentsOf: [u1,u2,u3,u4,u5])
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 5
        tasarim.minimumLineSpacing = 5
        
        let genislik = self.ulkelerCollectionView.frame.size.width
        tasarim.itemSize = CGSize(width: (genislik - 25)/2, height: (genislik - 25)/2)
        
        ulkelerCollectionView.collectionViewLayout = tasarim
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, HucreProtocol {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkelerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ulke = ulkelerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! UlkeCollectionViewCell
        
        cell.ulkeLabel.text = ulke.ulkeAd
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 10
        
        //Delegate
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ulke = ulkelerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: ulke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let ulke = sender as? Ulkeler
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.ulke = ulke
        }
    }
    
    func buttonTiklandi(indexPath: IndexPath) {
        let ulke = ulkelerListesi[indexPath.row]
        print("Button ile \(ulke.ulkeAd!) seçildi.")
    }
}
