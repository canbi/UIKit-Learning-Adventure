import UIKit

class Ev {
    var pencereSayisi: Int?
    
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray: Ev {
    var kuleSayisi: Int?
    
    init(kuleSayisi: Int, pencereSayisi: Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa: Ev {
    var garajVarmi: Bool?
    
    init(garajVarmi: Bool, pencereSayisi: Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
}

//Upcasting
var ev = Saray(kuleSayisi: 3, pencereSayisi: 10) as Ev

//Downcasting
var saray = Ev(pencereSayisi: 6) as? Saray

//Type control
if ev is Ev {
    print("Nesne ev sınıfından türemiştir")
} else {
    print("Nesne ev sınıfından türetilmiştir")
}


//Protocol (Interface)

protocol MyProtocol {
    var degisken: Int {get set}
    
    func metod1()
    func metod2() -> String
}

class ClassA: MyProtocol {
    var degisken: Int = 10
    
    func metod1() {
        print("Metod 1 çalıştı")
    }
    
    func metod2() -> String {
        return "Metod 2 çalıştı"
    }
}


var a = ClassA()

print(a.degisken)
a.metod1()
print(a.metod2())


//Extention

extension Int {
    func carp(sayi: Int) -> Int {
        return self * sayi
    }
}

let x = 12.carp(sayi: 2)
print(x)

// Closure

var ifade = {
    print("Closure çalıştı")
}

ifade()
