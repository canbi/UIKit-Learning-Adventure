//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation
import Alamofire

class AnasayfaInteractor: PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func tumKisileriAl() {
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php", method: .get).response { response in
            if let data = response.data {
                do {
                    let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data)
                    if let gelenListe = cevap.kisiler {
                        self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: gelenListe)
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func kisiAra(aramaKelimesi: String) {
        let params: Parameters = ["kisi_ad": aramaKelimesi]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do {
                    let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data)
                    if let gelenListe = cevap.kisiler {
                        self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: gelenListe)
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func kisiSil(kisi_id: Int) {
        let params: Parameters = ["kisi_id": kisi_id]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        print(json)
                        self.tumKisileriAl()
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    
}
