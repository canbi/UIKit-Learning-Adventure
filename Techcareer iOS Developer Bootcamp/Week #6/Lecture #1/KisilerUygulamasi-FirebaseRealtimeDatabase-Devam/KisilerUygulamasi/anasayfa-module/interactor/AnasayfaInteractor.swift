//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation
import Firebase

class AnasayfaInteractor: PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    var refKisiler = Database.database().reference().child("kisiler")
    
    func tumKisileriAl() {
        refKisiler.observe(.value) { snapshot in
            var liste = [Kisiler]()
            
            if let gelenVeri = snapshot.value as? [String: AnyObject] {
                for satir in gelenVeri {
                    if let dict = satir.value as? NSDictionary {
                        let kisi = Kisiler(kisi_id: satir.key,
                                           kisi_ad: dict["kisi_ad"] as? String ?? "",
                                           kisi_tel: dict["kisi_tel"] as? String ?? "")
                        liste.append(kisi)
                    }
                }
            }
            self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }
        
    }
    
    func kisiAra(aramaKelimesi: String) {
        refKisiler.observe(.value) { snapshot in
            var liste = [Kisiler]()
            
            if let gelenVeri = snapshot.value as? [String: AnyObject] {
                for satir in gelenVeri {
                    if let dict = satir.value as? NSDictionary {
                        
                        let kisi_ad = dict["kisi_ad"] as? String ?? ""
                        if kisi_ad.lowercased().contains(aramaKelimesi.lowercased()) {
                            let kisi_id = satir.key
                            let kisi_tel = dict["kisi_tel"] as? String ?? ""
                            
                            let kisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
                            liste.append(kisi)
                        }
                    }
                }
            }
            self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }
    }
    
    func kisiSil(kisi_id: String) {
        refKisiler.child(kisi_id).removeValue()
    }
    
    
}
