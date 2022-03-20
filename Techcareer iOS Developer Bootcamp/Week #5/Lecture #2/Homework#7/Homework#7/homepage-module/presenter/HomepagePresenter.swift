//
//  HomepagePresenter.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class HomepagePresenter: ViewToPresenterHomepageProtocol {
    var homepageInteractor: PresenterToInteractorHomepageProtocol?
    
    var homepageView: PresenterToViewHomepageProtocol?
    
    func loadTodos() {
        homepageInteractor?.loadAllTodos()
    }
    
    func search(searchText: String) {
        homepageInteractor?.searchTodo(searchText: searchText)
    }
    
    func delete(todo_id: Int) {
        homepageInteractor?.deleteTodo(todo_id: todo_id)
    }
}

extension HomepagePresenter: InteractorToPresenterHomepageProtocol {
    func presenterSendData(todoList: Array<Todo>) {
        homepageView?.viewSendData(todoList: todoList)
    }
}
