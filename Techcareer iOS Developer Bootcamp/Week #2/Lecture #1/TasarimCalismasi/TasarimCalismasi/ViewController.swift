//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Can Bi on 21.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        //Arkaplan rengi
        appearance.backgroundColor = UIColor(named: "anaRenk")
        //Başlık rengi
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!,
                                          NSAttributedString.Key.font: UIFont(name: "Pacifico-Regular", size: 22)!]
        
        //RGB renk paletine göre arkaplanı yükler
        navigationController?.navigationBar.isTranslucent = true
        //Status bar rengi değişimi
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}
