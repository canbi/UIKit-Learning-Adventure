//
//  TodoDetayRouter.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class TodoDetayRouter: PresenterToRouterTodoDetayProtocol {
    static func createModule(ref: TodoDetayVC) {
        ref.todoDetayPresenterObject = TodoDetayPresenter()
        ref.todoDetayPresenterObject?.todoDetayInteractor = TodoDetayInteractor()
    }
}
