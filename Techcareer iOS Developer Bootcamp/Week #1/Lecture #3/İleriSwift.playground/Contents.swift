import UIKit

//Guard
func kisiTanima(ad: String) {
    guard ad == "Ahmet" else {
        print("Tanınmayan kişi")
        return
    }
    
    print("Merhaba Ahmet")
}

kisiTanima(ad: "Ahmet")
kisiTanima(ad: "Ahmet2")

func buyukHarfYap(str: String?){
    guard let temp = str else {
        print("str nil'dir.")
        return
    }
    
    print(temp.uppercased())
}

buyukHarfYap(str: nil)
buyukHarfYap(str: "ahmet")

//Exception kullanımı

enum Hatalar: Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1: Int, sayi2: Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

/* Yöntem 1
do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
} catch Hatalar.sifiraBolunmeHatasi {
    print("Sayı sıfıra bölünemez")
} catch {
    print("error \(error.localizedDescription)")
}
*/

// Yöntem 2
let sonuc = try? bolme(sayi1: 10, sayi2: 0)

if let temp = sonuc {
    print(temp)
} else {
    print("Sayı sıfıra bölünemez")
}
