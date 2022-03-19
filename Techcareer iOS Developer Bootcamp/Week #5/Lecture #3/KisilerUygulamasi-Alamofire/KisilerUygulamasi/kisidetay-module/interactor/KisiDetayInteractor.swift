//
//  KisiDetayInteractor.swift
//  KisilerUygulamasi
//
//  Created by Can Bi on 14.03.2022.
//

import Foundation
import Alamofire

class KisiDetayInteractor: PresenterToInteractorKisiDetayProtocol {
    func kisiGuncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        let params: Parameters = ["kisi_id": kisi_id,"kisi_ad": kisi_ad, "kisi_tel": kisi_tel]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/update_kisiler.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        print(json)
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    
}
