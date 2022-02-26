//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by Can Bi on 26.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let firstItem = tabItems[0]
            firstItem.badgeValue = "12"
            
            let secondItem = tabItems[1]
            secondItem.badgeValue = "New"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.gray
        
        itemRenkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        badgeRenkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        badgeRenkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        badgeRenkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }

    func itemRenkDegistir(itemAppearance: UITabBarItemAppearance){
        //Seçili olmayan durum
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        //seçili durum
        itemAppearance.selected.iconColor = UIColor.yellow
        itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.yellow]
    }
    
    func badgeRenkDegistir(itemAppearance: UITabBarItemAppearance){
        //Seçili olmayan durum
        itemAppearance.normal.badgeBackgroundColor = UIColor.green
        
        //Seçili durum
        itemAppearance.selected.badgeBackgroundColor = UIColor.blue
    }
}
