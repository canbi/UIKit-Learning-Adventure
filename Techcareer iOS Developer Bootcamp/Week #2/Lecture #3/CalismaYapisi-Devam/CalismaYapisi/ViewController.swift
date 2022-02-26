//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Can Bi on 23.02.2022.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad çalıştı")
        //Bir kere çalışır
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear çalıştı")
        //Geri dönüşü yakalama
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear çalıştı")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear çalıştı")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear çalıştı")
    }
    
    
    @IBAction func buttonBaslaTikla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraniGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraniGecis" {
            print("oyunEkraniGecis çalıştı")
            
            if let veri = sender as? Kisiler {
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    @IBAction func ekleItem(_ sender: Any) {
        print("Ekle çalıştı")
    }
    @IBAction func kameraItem(_ sender: Any) {
        print("Kamera çalıştı")
    }
}

