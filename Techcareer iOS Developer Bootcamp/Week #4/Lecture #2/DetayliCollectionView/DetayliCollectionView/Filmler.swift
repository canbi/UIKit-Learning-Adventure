//
//  Filmler.swift
//  DetayliCollectionView
//
//  Created by Can Bi on 9.03.2022.
//

import Foundation

class Filmler {
    var filmId: Int?
    var filmAdi: String?
    var filmResimAdi: String?
    var filmYonetmenAdi: String?
    var filmFiyat: Double?
    
    init(){}
    
    init(filmId: Int, filmAdi: String, filmResimAdi: String, filmYonetmenAdi: String, filmFiyat: Double) {
        self.filmId = filmId
        self.filmAdi = filmAdi
        self.filmResimAdi = filmResimAdi
        self.filmYonetmenAdi = filmYonetmenAdi
        self.filmFiyat = filmFiyat
    }
}
