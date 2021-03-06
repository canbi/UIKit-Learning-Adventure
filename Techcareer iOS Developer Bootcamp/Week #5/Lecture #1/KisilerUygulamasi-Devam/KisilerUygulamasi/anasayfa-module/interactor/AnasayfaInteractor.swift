//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

class AnasayfaInteractor: PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func tumKisileriAl() {
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "11111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "22222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Ece", kisi_tel: "33333")
        
        liste.append(contentsOf: [k1,k2,k3])
        anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
    }
    
    func kisiAra(aramaKelimesi: String) {
        print("Arama sonucu: \(aramaKelimesi)")
    }
    
    func kisiSil(kisi_id: Int) {
        print("\(kisi_id) silindi.")
    }
    
    
}
