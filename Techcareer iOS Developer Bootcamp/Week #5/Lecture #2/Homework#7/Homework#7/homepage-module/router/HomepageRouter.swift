//
//  HomepageRouter.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class HomepageRouter: PresenterToRouterHomepageProtocol {
    static func createModule(ref: HomepageVC) {
        let presenter = HomepagePresenter()
        
        //View
        ref.homepagePresenterObject = presenter
        
        //Presenter
        ref.homepagePresenterObject?.homepageInteractor = HomepageInteractor()
        ref.homepagePresenterObject?.homepageView = ref
        
        //Interactor
        ref.homepagePresenterObject?.homepageInteractor?.homepagePresenter = presenter
    }
}
