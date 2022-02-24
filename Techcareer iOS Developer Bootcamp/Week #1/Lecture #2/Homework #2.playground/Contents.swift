// Author Can Bi
// 19.02.2022

import UIKit

class Odevler {
    //Celcius to fahrenheit
    func odev1(celcius: Double) -> Double {
        let fahreinheit = celcius * 1.8 + 32
        return fahreinheit
    }
    
    //Dikdörtgen çevre hesabı
    func odev2(kısaKenar: Double, uzunKenar: Double) -> Double {
        let cevre = (kısaKenar + uzunKenar) * 2
        return cevre
    }
    
    //Faktoriyel hesabı
    func odev3(numara: Int) -> Int {
        var result = numara
        
        for i in (1..<numara).reversed() {
            result *= i
        }
        
        return result
    }
    
    //Harfi kelime içerisinde kaç kere geçtiğini bulmak
    func odev4(char: Character, word: String) -> Int {
        let result = word.filter { $0 == char }.count
        return result
    }
    
    //Kenar sayısına göre iç açılar toplamı bulmak
    func odev5(numberOfEdge: Int) -> Int {
        let total = (numberOfEdge - 2 ) * 180
        return total
    }
    
    //Gün sayısına göre maaş hesabı
    func odev6(numberOfDays: Int ) -> Int {
        let dailyWorkHour = 8
        let workPay = 10
        let overtimePay = 20
        let overtimeLimit = 160
        
        var overtimeHours = 0
        var workHours = numberOfDays * dailyWorkHour
        
        if workHours > overtimeLimit {
            overtimeHours = workHours - overtimeLimit
            workHours = overtimeLimit
        }
        
        let payment = (overtimeHours * overtimePay) + (workHours * workPay)
        return payment
    }
    
    //Kota miktarına göre ücret hesaplama
    func odev7(usedInternet: Int) -> Int {
        let baseInternetPay = 100 //₺
        let overquotaPay = 4 //₺
        let quotaLimit = 50 //GB
        let overquotaSize = 1 //GB
        
        var overquota = 0
        var resultPrice = 0
        
        resultPrice += baseInternetPay
        if usedInternet > quotaLimit {
            overquota = usedInternet - quotaLimit
            
            let numberOfOverquota = overquota / overquotaSize
            resultPrice += numberOfOverquota * overquotaPay
        }
        
        return resultPrice
    }
}
    
let odev = Odevler()

let result1 = odev.odev1(celcius: 32)
let result2 = odev.odev2(kısaKenar: 12, uzunKenar: 23)
let result3 = odev.odev3(numara: 4)
let result4 = odev.odev4(char: "a", word: "v")
let result5 = odev.odev5(numberOfEdge: 3)
let result6 = odev.odev6(numberOfDays: 25)
let result7 = odev.odev7(usedInternet: 56)
