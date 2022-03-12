//
//  Protocols.swift
//  ViperPatternKullanimi
//
//  Created by Can Bi on 12.03.2022.
//

import Foundation

//MARK: Ana Protocols
protocol ViewToPresenterProtocol {
    var interactor: PresenterToInteractorProtocol? {get set}
    var view: PresenterToViewProtocol? {get set}
    
    func toplamaYap(sayi1: String, sayi2: String)
    func carpmaYap(sayi1: String, sayi2: String)
}

protocol PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol? {get set}
    
    func topla(sayi1: String, sayi2: String)
    func carp(sayi1: String, sayi2: String)
}

//MARK: Taşıyıcı Protocols
protocol InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc: String)
}

protocol PresenterToViewProtocol {
    func VieweVeriGonder(sonuc: String)
}


//MARK: Router Protocol
protocol PresenterToRouterProtocol {
    static func createModule(ref: ViewController)
}

