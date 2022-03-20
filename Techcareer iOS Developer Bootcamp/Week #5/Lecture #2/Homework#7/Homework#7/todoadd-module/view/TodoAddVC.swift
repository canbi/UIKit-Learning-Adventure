//
//  TodoAddVC.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import UIKit

class TodoAddVC: UIViewController {
    @IBOutlet weak var tfTodoName: UITextField!
    
    var AddTodoPresenterObject: ViewToPresenterTodoAddProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TodoAddRouter.createModule(ref: self)
    }
    

    @IBAction func buttonEkle(_ sender: Any) {
        if let kname = tfTodoName.text{
            AddTodoPresenterObject?.add(todoName: kname)
        }
    }
}
