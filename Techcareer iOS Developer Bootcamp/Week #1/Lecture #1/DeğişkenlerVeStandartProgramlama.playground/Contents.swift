import UIKit

/* Destur
print("Merhaba Dünya")
*/

/* DEĞİŞKENLER */

//Örnek #1

var ogrenciAdi = "Ahmet"
var ogrenciYas = 18
var ogrenciBoy = 1.78
var ogrenciBasharf = "A"
var ogrenciDevamEdiyorMu = true

print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)


//Örnek #2

var urun_id : Int = 3416
var urun_adi : String = "Kol saati"
var urun_adet : Int = 100
var urun_fiyat : Double = 149.99
var urun_tedarikci : String = "Rolex"

print("Ürün id : \(urun_id)")
print("Ürün adı : \(urun_adi)")
print("Ürün adet : \(urun_adet)")
print("Ürün fiyat : \(urun_fiyat)₺")
print("Ürün tedarikçi : \(urun_tedarikci)")


/* CONSTANT - Sabitler */

var sayi = 10 //var -> daha sonradan değiştirilebilir
print(sayi)
sayi = 20
print(sayi)

let numara = 100 //let -> constant variable
print(numara)
// numara = 200 -> not valid

 
/* TÜR DÖNÜŞÜMÜ */

//Sayısaldan sayısala
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)

//Sayısandan Metine
var sonuc3 = String(i)
var sonuc4 = String(d)
print(sonuc3)
print(sonuc4)

//Metinden sayısala
var yazi = "34"
var sonuc5 = Int(yazi)
//print(sonuc5!) //force unwrapping

if let sonuc5 = Int(yazi) {
    print(sonuc5)
}


/* TUPLES */

var kisi = ("Ahmet", "Aksoy")
var ad = kisi.0
var soyad = kisi.1
print(ad)
print(soyad)

var nokta = (x: 10, y: 20)
print(nokta.x)
print(nokta.y)

var hataMesajı = (404, "Not Found")
var (kod,mesaj) = hataMesajı
print(kod)
print(mesaj)


/* KARŞILAŞTIRMA - COMPARISON */

var x1 = 60
var x2 = 50

var y1 = 70
var y2 = 80

print(x1 == x2) //false
print(x1 != x2) //true
print(x1 > x2)  //true
print(x1 >= x2) //true
print(x1 < x2)  //false
print(x1 <= x2) //false

print(x1 > x2 || y1 > y2) //|| -> OR,   result -> true
print(x1 > x2 && y1 > y2) //&& -> AND,  result -> false


/* IF */

var yas = 17
var isim = "Ahmet"

if yas >= 18 {
    print("Reşitsiniz")
}
else{
    print("Reşit Değilsinz")
}

if isim == "Ahmet" {
    print("Merhaba Ahmet")
} else if isim == "Mehmet" {
    print("Merhaba Mehmet")
} else {
    print("Tanınmayan Kişi")
}

var ka = "admin"
var s = 12345

if ka == "admin" && s == 12345 {
    print("Hoş Geldiniz")
} else {
    print("Hatalı giriş")
}

var sinif = 10

if sinif == 9 || sinif == 10 {
    print("Sınıf 9 veya 10'dur")
} else {
    print("Sınıf 9 veya 10 değildir.")
}


var a = 10
var b = 20

a == b ? print("Eşittir") : print("Eşit değildir")

//Switch
var gun = 1

switch gun {
case 1:
    print("Pazartesi")
case 2:
    print("Salı")
case 3:
    print("Çarşamba")
case 4:
    print("Perşembe")
case 5:
    print("Cuma")
case 6:
    print("Cumartesi")
case 7:
    print("Pazar")
default:
    print("Böyle bir gün yok")
}

/* LOOPS - Döngüler */
//1,2,3
for i in 1...3 {
    print("Döngü 1: \(i)")
}

//10 ile 20, 5'er artış
for i in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2: \(i)")
}

//20 ile 10, 5'er azalış
for i in stride(from: 20, through: 10, by: -5){
    print("Döngü 3: \(i)")
}

//1,2,3
var sayac = 1

while sayac < 5 {
    print("Döngü 4: \(sayac)")
    sayac += 1 // sayac = sayac + 1
}


for i in 1...5 {
    if i == 3 {
        break
    }
    print("Döngü 5: \(i)")
}

for i in 1...5{
    if i == 3 {
        continue
    }
    print("Döngü 6: \(i)")
}

/* OPTIONAL - Nullable */

//null -> nil

var str: String?
str = "Merhaba"

if str != nil {
    print(str!) //Unwrap: Optional'dan kurtarma
} else {
    print("str nil değer içeriyor")
}


if var temp = str { //Optional binding
    print(temp)
    temp = "Hello"
    print(temp)
} else {
    print("str nil değer içeriyor")
}
