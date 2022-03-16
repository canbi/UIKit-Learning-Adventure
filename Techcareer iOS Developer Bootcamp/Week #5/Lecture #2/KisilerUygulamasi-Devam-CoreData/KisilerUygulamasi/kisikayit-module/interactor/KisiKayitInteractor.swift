//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

class KisiKayitIteractor: PresenterToInteractorKisiKayitProtocol {
    let context = appDelegate.persistentContainer.viewContext
    
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        let kisi = KisilerModel(context: context)
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        appDelegate.saveContext()
    }
}
