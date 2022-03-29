//
//  ViewController.swift
//  BildirimKullanimi
//
//  Created by Can Bi on 21.03.2022.
//

import UIKit

class ViewController: UIViewController {
    var izinKontrol = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().delegate = self
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { granted, error in
            self.izinKontrol = granted
            
            if granted {
                print("izin alma işlemi başarılı")
            }else {
                print("izin alma işlemi başarısız")
            }
        }
    }

    @IBAction func bildirimOlustur(_ sender: Any) {
        if izinKontrol {
            let icerik = UNMutableNotificationContent()
            icerik.title = "Başlık"
            icerik.subtitle = "Altbaşlık"
            icerik.body = "İçerik"
            icerik.badge = 1
            icerik.sound = .default
            
            let tetikleme = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
            
            let istek = UNNotificationRequest(identifier: "Bildirim", content: icerik, trigger: tetikleme)
            UNUserNotificationCenter.current().add(istek, withCompletionHandler: nil)
        }
    }
}

extension ViewController: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner,.sound,.badge])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        let app = UIApplication.shared
        
        if app.applicationState == .active {
            print("Önplandayken bildirim tıklandı")
            app.applicationIconBadgeNumber = 0
        }
        if app.applicationState == .inactive {
            print("Arkaplandayken bildirim tıklandı")
            app.applicationIconBadgeNumber = 0
        }
        
        completionHandler()
    }
}
