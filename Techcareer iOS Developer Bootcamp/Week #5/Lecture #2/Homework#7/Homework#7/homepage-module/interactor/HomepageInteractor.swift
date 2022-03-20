//
//  HomepageInteractor.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class HomepageInteractor: PresenterToInteractorHomepageProtocol {
    var homepagePresenter: InteractorToPresenterHomepageProtocol?
    
    let db: FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabanıURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar2.sqlite")
        db = FMDatabase(path: veritabanıURL.path)
    }
    
    func loadAllTodos() {
        var list = [Todo]()
        db?.open()
        do {
            let q = try db!.executeQuery("SELECT * FROM yapilacaklar", values: nil)
            
            while q.next() {
                let todo_id = Int(q.string(forColumn: "yapilacak_id"))!
                let todo_name = q.string(forColumn: "yapilacak_is")!
                let tempTodo = Todo(yapilacak_id: todo_id, yapilacak_is: todo_name)
                list.append(tempTodo)
            }
            
            homepagePresenter?.presenterSendData(todoList: list)
        }catch{}
        
        db?.close()
    }
    
    func searchTodo(searchText: String) {
        var list = [Todo]()
        
        db?.open()
        do {
            let q = try db!.executeQuery("SELECT * FROM yapilacaklar WHERE yapilacak_is like '%\(searchText)%'", values: nil)
            
            while q.next() {
                let todo_id = Int(q.string(forColumn: "yapilacak_id"))!
                let todo_name = q.string(forColumn: "yapilacak_is")!
                let tempTodo = Todo(yapilacak_id: todo_id, yapilacak_is: todo_name)
                list.append(tempTodo)
            }
            homepagePresenter?.presenterSendData(todoList: list)
        }catch{}
        
        db?.close()
    }
    
    func deleteTodo(todo_id: Int) {
        db?.open()
        do {
            try db?.executeUpdate("DELETE FROM yapilacaklar WHERE yapilacak_id = ?", values: [todo_id])
            loadAllTodos()
        } catch {}
        db?.close()
    }
}
