import UIKit

//Array kullanımı

var ondalikSayilar = [10.0, 20.0, 30.0]
var sayilar = [Int](repeating: 0, count: 100)

var meyveler = [String]()

//Veri ekleme
meyveler.append("Elma") //0.
meyveler.append("Muz") //1.
meyveler.append("Kiraz") //2.
print(meyveler)

//Güncelleme
meyveler[0] = "Yeni Elma"

print(meyveler)

//insert
meyveler.insert("Portakal", at: 1)
print(meyveler)

print(meyveler.isEmpty)
print(meyveler.count)
print(meyveler.first!)
print(meyveler.last!)
print(meyveler.contains("Kiraz"))


for meyve in meyveler {
    print("Sonuç : \(meyve)")
}


for (index, meyve) in meyveler.enumerated() {
    print("\(index). -> \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)


//Nesne tabanlı Array kullanımı

class Ogrenciler {
    var no: Int?
    var ad: String?
    var sinif: String?
    
    init(no: Int, ad: String, sinif: String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Ahmet", sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad: "Beyza", sinif: "12A")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(contentsOf: [o1,o2,o3])

for o in ogrencilerListesi {
    print("No : \(o.no!) Ad : \(o.ad!) Sınıf : \(o.sinif!)")
}

//Filtreleme
var f1 = ogrencilerListesi.filter({ $0.no! > 100 })
print("Filtreleme 1")
for o in f1 {
    print("No : \(o.no!) Ad : \(o.ad!) Sınıf : \(o.sinif!)")
}

var f2 = ogrencilerListesi.filter({ $0.ad!.contains("yz") })
print("Filtreleme 2")
for o in f2 {
    print("No : \(o.no!) Ad : \(o.ad!) Sınıf : \(o.sinif!)")
}

//Sıralama
var s1 = ogrencilerListesi.sorted(by: { $0.no! > $1.no! })
print("Sayısal olarak büyükten küçüğe")
for o in s1 {
    print("No : \(o.no!) Ad : \(o.ad!) Sınıf : \(o.sinif!)")
}

var s2 = ogrencilerListesi.sorted(by: { $0.no! < $1.no! })
print("Sayısal olarak küçükten büyüğe")
for o in s2 {
    print("No : \(o.no!) Ad : \(o.ad!) Sınıf : \(o.sinif!)")
}

var s3 = ogrencilerListesi.sorted(by: { $0.ad! > $1.ad! })
print("Harfsel olarak büyükten küçüğe")
for o in s3 {
    print("No : \(o.no!) Ad : \(o.ad!) Sınıf : \(o.sinif!)")
}

var s4 = ogrencilerListesi.sorted(by: { $0.ad! < $1.ad! })
print("Harfsel olarak küçükten büyüğe")
for o in s4 {
    print("No : \(o.no!) Ad : \(o.ad!) Sınıf : \(o.sinif!)")
}

//Set Çalışması
var meyveler1 = Set<String>()
meyveler1.insert("Elma")
meyveler1.insert("Portakal")
meyveler1.insert("Muz")
print(meyveler1)

meyveler1.insert("Elma")
print(meyveler1)

for meyve in meyveler1 {
    print("Sonuç : \(meyve)")
}

for (indeks, meyve) in meyveler1.enumerated() {
    print("\(indeks). -> \(meyve)")
}

print(meyveler1.count)

//Dictionary Çalışması

var iller = [Int: String]()
iller[16] = "Bursa"
iller[34] = "İstanbul"
print(iller)

iller[16] = "YENİ BURSA"
print(iller)

for (anahtar, deger) in iller {
    print("Anahtar : \(anahtar) - Değer : \(deger)")
}

