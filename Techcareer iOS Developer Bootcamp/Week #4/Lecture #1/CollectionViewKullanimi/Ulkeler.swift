//
//  Ulkeler.swift
//  CollectionViewKullanimi
//
//  Created by Can Bi on 7.03.2022.
//

import Foundation

class Ulkeler {
    var ulkeId: Int?
    var ulkeAd: String?
    var ulkeBaskent: String?
    
    init(){
    }
    
    init(ulkeId: Int, ulkeAd: String, ulkeBaskent: String) {
        self.ulkeId = ulkeId
        self.ulkeAd = ulkeAd
        self.ulkeBaskent = ulkeBaskent
    }
}
