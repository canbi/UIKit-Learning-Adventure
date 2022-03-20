//
//  TodoDetayPresenter.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class TodoDetayPresenter: ViewToPresenterTodoDetayProtocol {
    var todoDetayInteractor: PresenterToInteractorTodoDetayProtocol?
    
    func update(todo_id: Int, todo_name: String) {
        todoDetayInteractor?.todoUpdate(todo_id: todo_id, todo_name: todo_name)
    }
}
