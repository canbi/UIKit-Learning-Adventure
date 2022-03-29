//
//  KisiDetayInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation
import Firebase

class KisiDetayInteractor: PresenterToInteractorKisiDetayProtocol {
    var refKisiler = Database.database().reference().child("kisiler")
    
    func kisiGuncelle(kisi_id: String, kisi_ad: String, kisi_tel: String) {
        let guncellenenKisi = ["kisi_id": "",
                        "kisi_ad": kisi_ad,
                        "kisi_tel": kisi_tel]
        
        refKisiler.child(kisi_id).updateChildValues(guncellenenKisi)
    }
    
    
}
