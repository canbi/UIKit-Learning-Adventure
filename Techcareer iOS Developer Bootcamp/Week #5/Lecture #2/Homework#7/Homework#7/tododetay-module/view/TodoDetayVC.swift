//
//  TodoDetayVC.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import UIKit

class TodoDetayVC: UIViewController {

    @IBOutlet weak var tfTodoName: UITextField!
    
    
    var todo: Todo?
    var todoDetayPresenterObject: ViewToPresenterTodoDetayProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = todo {
            tfTodoName.text = k.yapilacak_is
        }
        TodoDetayRouter.createModule(ref: self)
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonUpdate(_ sender: Any) {
        if let name = tfTodoName.text, let k = todo {
            todoDetayPresenterObject?.update(todo_id: k.yapilacak_id!, todo_name: name)
        }
    }
}
