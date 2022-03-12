//
//  Router.swift
//  ViperPatternKullanimi
//
//  Created by Can Bi on 12.03.2022.
//

import Foundation

class Router: PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        //View sınıfı değişkeni
        ref.presenterNesnesi = presenter
        
        //Presenter sınıfı değişkenleri
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        //Interactor değişkeni
        ref.presenterNesnesi?.interactor?.presenter = presenter
    }
}
