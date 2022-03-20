//
//  TodoAddInteractor.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class TodoAddInteractor: PresenterToInteractorTodoAddProtocol {
    let db: FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabanıURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar2.sqlite")
        db = FMDatabase(path: veritabanıURL.path)
    }
    
    
    func todoAdd(todoName: String) {
        db?.open()
        
        do {
            try db?.executeUpdate("INSERT INTO yapilacaklar (yapilacak_is) VALUES (?)", values: [todoName])
        } catch {}
        
        db?.close()
    }
    
    
}
