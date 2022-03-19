//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation

class AnasayfaInteractor: PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func tumKisileriAl() {
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil || data == nil {
                print("HATA")
                return
            }
            do {
                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                
                if let gelenListe = cevap.kisiler {
                    self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: gelenListe)
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func kisiAra(aramaKelimesi: String) {
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!
        var istek = URLRequest(url: url)
        istek.httpMethod = "POST"
        let posString = "kisi_ad=\(aramaKelimesi)"
        istek.httpBody = posString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: istek) { data, response, error in
            if error != nil || data == nil {
                print("HATA")
                return
            }
            do {
                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                
                if let gelenListe = cevap.kisiler {
                    self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: gelenListe)
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func kisiSil(kisi_id: Int) {
            let url = URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!
            var istek = URLRequest(url: url)
            istek.httpMethod = "POST"
            let posString = "kisi_id=\(kisi_id)"
            istek.httpBody = posString.data(using: .utf8)
            
            URLSession.shared.dataTask(with: istek) { data, response, error in
                if error != nil || data == nil {
                    print("HATA")
                    return
                }
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                        print(json)
                        self.tumKisileriAl()
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }.resume()
    }
    
    
}
