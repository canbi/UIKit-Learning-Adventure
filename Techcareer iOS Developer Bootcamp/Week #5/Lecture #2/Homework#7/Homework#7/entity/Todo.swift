//
//  Todo.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import Foundation

class Todo {
    var yapilacak_id: Int?
    var yapilacak_is: String?
    
    init(){
        
    }
    
    init(yapilacak_id: Int, yapilacak_is: String) {
        self.yapilacak_id = yapilacak_id
        self.yapilacak_is = yapilacak_is
    }
}
