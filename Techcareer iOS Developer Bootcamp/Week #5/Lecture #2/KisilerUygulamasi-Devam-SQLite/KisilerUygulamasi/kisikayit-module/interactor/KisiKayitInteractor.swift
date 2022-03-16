//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

class KisiKayitIteractor: PresenterToInteractorKisiKayitProtocol {
    let db: FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabanıURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabanıURL.path)
    }
    
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        db?.open()
        
        do {
            try db?.executeUpdate("INSERT INTO kisiler (kisi_ad,kisi_tel) VALUES (?,?)", values: [kisi_ad,kisi_tel])
        } catch {}
        
        db?.close()
    }
    
    
}
