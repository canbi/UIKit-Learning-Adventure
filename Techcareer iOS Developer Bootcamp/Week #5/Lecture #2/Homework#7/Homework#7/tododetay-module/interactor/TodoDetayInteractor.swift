//
//  TodoDetayInteractor.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class TodoDetayInteractor: PresenterToInteractorTodoDetayProtocol {
    let db: FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabanıURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar2.sqlite")
        db = FMDatabase(path: veritabanıURL.path)
    }
    
    func todoUpdate(todo_id: Int, todo_name: String) {
        db?.open()
        
        do {
            try db?.executeUpdate("UPDATE yapilacaklar SET yapilacak_is = ? WHERE yapilacak_id = ?", values: [todo_name,todo_id])
        } catch {}
        
        db?.close()
    }
}
