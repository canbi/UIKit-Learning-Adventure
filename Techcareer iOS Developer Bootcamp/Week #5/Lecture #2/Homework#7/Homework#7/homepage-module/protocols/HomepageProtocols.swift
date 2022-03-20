//
//  HomepageProtocols.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

//MARK: Ana Protocols
protocol ViewToPresenterHomepageProtocol {
    var homepageInteractor: PresenterToInteractorHomepageProtocol? {get set}
    var homepageView: PresenterToViewHomepageProtocol? {get set}
    func loadTodos()
    func search(searchText: String)
    func delete(todo_id: Int)
}

protocol PresenterToInteractorHomepageProtocol {
    var homepagePresenter: InteractorToPresenterHomepageProtocol? {get set}
    
    func loadAllTodos()
    func searchTodo(searchText: String)
    func deleteTodo(todo_id: Int)
}

//MARK: Taşıyıcı Protocols
protocol InteractorToPresenterHomepageProtocol {
    func presenterSendData(todoList: Array<Todo>)
}

protocol PresenterToViewHomepageProtocol {
    func viewSendData(todoList: Array<Todo>)
}

//MARK: Router
protocol PresenterToRouterHomepageProtocol {
    static func createModule(ref: HomepageVC)
}
