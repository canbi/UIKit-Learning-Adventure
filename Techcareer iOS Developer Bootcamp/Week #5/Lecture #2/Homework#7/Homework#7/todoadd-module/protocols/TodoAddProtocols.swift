//
//  TodoAddProtocols.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation


protocol ViewToPresenterTodoAddProtocol {
    var todoAddInteractor: PresenterToInteractorTodoAddProtocol? {get set}
    
    func add(todoName: String)
}

protocol PresenterToInteractorTodoAddProtocol {
    func todoAdd(todoName: String)
}

protocol PresenterToRouterTodoAddProtocol {
    static func createModule(ref: TodoAddVC)
}
