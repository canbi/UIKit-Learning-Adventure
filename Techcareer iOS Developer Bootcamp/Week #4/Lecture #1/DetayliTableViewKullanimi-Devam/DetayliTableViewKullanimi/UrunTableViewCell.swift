//
//  UrunTableViewCell.swift
//  DetayliTableViewKullanimi
//
//  Created by Can Bi on 5.03.2022.
//

import UIKit

protocol HucreProtocol {
    func buttonTiklandi(indexPath: IndexPath)
}

class UrunTableViewCell: UITableViewCell {
    @IBOutlet weak var urunResimImageView: UIImageView!
    @IBOutlet weak var urunAdLabel: UILabel!
    @IBOutlet weak var urunFiyatLabel: UILabel!
    @IBOutlet weak var hucreArkaplan: UIView!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    @IBAction func sepeteEkleButton(_ sender: Any) {
        hucreProtocol?.buttonTiklandi(indexPath: indexPath!)
    }
}
