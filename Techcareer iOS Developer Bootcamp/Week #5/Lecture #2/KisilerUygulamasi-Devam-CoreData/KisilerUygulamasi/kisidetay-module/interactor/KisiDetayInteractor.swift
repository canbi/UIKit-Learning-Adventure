//
//  KisiDetayInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

class KisiDetayInteractor: PresenterToInteractorKisiDetayProtocol {
    func kisiGuncelle(kisi: KisilerModel, kisi_ad: String, kisi_tel: String) {
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        appDelegate.saveContext()
    }
}
