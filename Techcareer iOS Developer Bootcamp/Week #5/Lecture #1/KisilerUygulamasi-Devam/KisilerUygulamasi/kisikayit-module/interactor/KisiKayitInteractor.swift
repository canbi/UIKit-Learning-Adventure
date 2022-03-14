//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

class KisiKayitIteractor: PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        //Database stuff
        print("Kişi kayit: \(kisi_ad) - \(kisi_tel)")
    }
    
    
}
