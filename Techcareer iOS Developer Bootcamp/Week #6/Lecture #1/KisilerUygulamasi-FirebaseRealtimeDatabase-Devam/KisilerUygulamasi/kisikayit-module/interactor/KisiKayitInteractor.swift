//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation
import Firebase

class KisiKayitIteractor: PresenterToInteractorKisiKayitProtocol {
    var refKisiler = Database.database().reference().child("kisiler")
    
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        let yeniKisi = ["kisi_id": "",
                        "kisi_ad": kisi_ad,
                        "kisi_tel": kisi_tel]
        
        refKisiler.childByAutoId().setValue(yeniKisi)
    }
}
