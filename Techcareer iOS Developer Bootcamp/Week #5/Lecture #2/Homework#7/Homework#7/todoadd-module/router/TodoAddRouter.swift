//
//  TodoAddRouter.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class TodoAddRouter: PresenterToRouterTodoAddProtocol {
    static func createModule(ref: TodoAddVC) {
        ref.AddTodoPresenterObject = TodoAddPresenter()
        ref.AddTodoPresenterObject?.todoAddInteractor = TodoAddInteractor()
    }
}
