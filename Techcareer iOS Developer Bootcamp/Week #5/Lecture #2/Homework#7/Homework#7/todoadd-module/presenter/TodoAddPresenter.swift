//
//  TodoAddPresenter.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class TodoAddPresenter: ViewToPresenterTodoAddProtocol {
    var todoAddInteractor: PresenterToInteractorTodoAddProtocol?
    
    func add(todoName: String) {
        todoAddInteractor?.todoAdd(todoName: todoName)
    }
    
    
}
