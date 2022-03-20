//
//  TodoDetayProtocols.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

protocol ViewToPresenterTodoDetayProtocol {
    var todoDetayInteractor: PresenterToInteractorTodoDetayProtocol? {get set}
    
    func update(todo_id: Int, todo_name: String)
}

protocol PresenterToInteractorTodoDetayProtocol {
    func todoUpdate(todo_id: Int, todo_name: String)
}

protocol PresenterToRouterTodoDetayProtocol {
    static func createModule(ref: TodoDetayVC)
}
