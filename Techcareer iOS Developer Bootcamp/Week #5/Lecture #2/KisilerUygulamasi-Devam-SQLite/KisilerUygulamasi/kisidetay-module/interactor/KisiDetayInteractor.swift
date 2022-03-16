//
//  KisiDetayInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

class KisiDetayInteractor: PresenterToInteractorKisiDetayProtocol {
    let db: FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabanıURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabanıURL.path)
    }
    
    func kisiGuncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        db?.open()
        
        do {
            try db?.executeUpdate("UPDATE kisiler SET kisi_ad = ? , kisi_tel = ? WHERE kisi_id = ?", values: [kisi_ad,kisi_tel,kisi_id])
        } catch {}
        
        db?.close()
    }
}
