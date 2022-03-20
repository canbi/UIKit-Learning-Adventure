//
//  HomepageVC.swift
//  Homework#7
//
//  Created by Can Bi on 20.03.2022.
//

import UIKit

class HomepageVC: UIViewController {

    @IBOutlet weak var todoTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var todoList = [Todo]()
    var homepagePresenterObject: ViewToPresenterHomepageProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        todoTableView.delegate = self
        todoTableView.dataSource = self
        
        veritabaniKopyala()
        
        HomepageRouter.createModule(ref: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        homepagePresenterObject?.loadTodos()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let todo = sender as? Todo
            let gidilecekVC = segue.destination as! TodoDetayVC
            gidilecekVC.todo = todo
        }
    }
    
    func veritabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "yapilacaklar", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar2.sqlite")
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            print("veritabanı zaten var, kopyalamaya gerek yok.")
        } else {
            do {
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            } catch {}
        }
        
    }
}

extension HomepageVC: PresenterToViewHomepageProtocol{
    func viewSendData(todoList: Array<Todo>) {
        self.todoList = todoList
        self.todoTableView.reloadData()
    }
}

extension HomepageVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        homepagePresenterObject?.search(searchText: searchText)
    }
}

extension HomepageVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = todoList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! TodoTableViewCell
        
        cell.nameLabel.text = "\(todo.yapilacak_is!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todo = todoList[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: todo)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil") { (contextualAction, view, bool) in
            let todo = self.todoList[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(todo.yapilacak_is!) silinsin mi?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { action in }
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive) { action in
                self.homepagePresenterObject?.delete(todo_id: todo.yapilacak_id!)
            }
            alert.addAction(evetAction)
            
            self.present(alert, animated: true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}
