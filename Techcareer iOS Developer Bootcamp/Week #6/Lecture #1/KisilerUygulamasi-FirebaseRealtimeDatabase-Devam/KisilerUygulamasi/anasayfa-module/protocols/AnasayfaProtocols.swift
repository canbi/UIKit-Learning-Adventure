//
//  AnasayfaProtocols.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

//MARK: Ana Protocols
protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView: PresenterToViewAnasayfaProtocol? {get set}
    func kisileriYukle()
    func ara(aramaKelimesi: String)
    func sil(kisi_id: String)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumKisileriAl()
    func kisiAra(aramaKelimesi: String)
    func kisiSil(kisi_id: String)
}

//MARK: Taşıyıcı Protocols
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi: Array<Kisiler>)
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(kisilerListesi: Array<Kisiler>)
}

//MARK: Router
protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref: AnasayfaVC)
}

