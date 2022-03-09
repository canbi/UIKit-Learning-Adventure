//
//  FilmlerCollectionViewCell.swift
//  DetayliCollectionView
//
//  Created by Can Bi on 9.03.2022.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTikla(indexPath: IndexPath)
}

class FilmlerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexPath: indexPath!)
    }
}
