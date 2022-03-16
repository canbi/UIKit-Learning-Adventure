//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

class AnasayfaInteractor: PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    let context = appDelegate.persistentContainer.viewContext
    
    func tumKisileriAl() {
        do {
            let liste = try context.fetch(KisilerModel.fetchRequest())
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        } catch {}
    }
    
    func kisiAra(aramaKelimesi: String) {
        let fr = KisilerModel.fetchRequest()
        fr.predicate = NSPredicate(format: "kisi_ad CONTAINS[c] %@", aramaKelimesi)
        do {
            let liste = try context.fetch(fr)
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        } catch {}
        
    }
    
    func kisiSil(kisi: KisilerModel) {
        context.delete(kisi)
        appDelegate.saveContext()
        tumKisileriAl()
    }
    
    
}
