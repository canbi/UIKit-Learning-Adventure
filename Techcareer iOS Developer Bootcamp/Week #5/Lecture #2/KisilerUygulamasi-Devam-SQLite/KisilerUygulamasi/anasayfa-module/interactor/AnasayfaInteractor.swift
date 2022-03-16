//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

class AnasayfaInteractor: PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db: FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabanıURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabanıURL.path)
    }
    
    func tumKisileriAl() {
        var liste = [Kisiler]()
        db?.open()
        do {
            let q = try db!.executeQuery("SELECT * FROM kisiler", values: nil)
            
            while q.next() {
                let kisi_id = Int(q.string(forColumn: "kisi_id"))!
                let kisi_ad = q.string(forColumn: "kisi_ad")!
                let kisi_tel = q.string(forColumn: "kisi_tel")!
                let tempKisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
                liste.append(tempKisi)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch{}
        
        db?.close()
        
    }
    
    func kisiAra(aramaKelimesi: String) {
        var liste = [Kisiler]()
        
        db?.open()
        do {
            let q = try db!.executeQuery("SELECT * FROM kisiler WHERE kisi_ad like '%\(aramaKelimesi)%'", values: nil)
            
            while q.next() {
                let kisi_id = Int(q.string(forColumn: "kisi_id"))!
                let kisi_ad = q.string(forColumn: "kisi_ad")!
                let kisi_tel = q.string(forColumn: "kisi_tel")!
                let tempKisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
                liste.append(tempKisi)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch{}
        
        db?.close()
    }
    
    func kisiSil(kisi_id: Int) {
        db?.open()
        do {
            try db?.executeUpdate("DELETE FROM kisiler WHERE kisi_id = ?", values: [kisi_id])
            tumKisileriAl()
        } catch {}
        db?.close()
    }
}
