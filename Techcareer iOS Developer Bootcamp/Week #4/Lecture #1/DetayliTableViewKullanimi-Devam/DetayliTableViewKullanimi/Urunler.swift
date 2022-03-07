//
//  Urunler.swift
//  DetayliTableViewKullanimi
//
//  Created by Can Bi on 5.03.2022.
//

import Foundation

class Urunler {
    var urun_id: Int?
    var urun_ad: String?
    var urun_resim_ad: String?
    var urun_fiyat: Double?
    
    init(){
        
    }
    
    init(urun_id: Int, urun_ad: String, urun_resim_ad: String, urun_fiyat: Double){
        self.urun_id = urun_id
        self.urun_ad = urun_ad
        self.urun_resim_ad = urun_resim_ad
        self.urun_fiyat = urun_fiyat
    }
}
