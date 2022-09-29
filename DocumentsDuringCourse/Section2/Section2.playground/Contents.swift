import UIKit

//OPTIONAL - NULLABLE - NULL SAFETY
// ? - !
// ?? -> Default variable decleration

/*
 
 var message = "Hello"
 
 //the other languages nil = null
 var str : String? = nil
 
 //description
 var text : String?
 
 print(text)
 
 text = "Hello"
 
 if text != nil {
 print(text!)//When you put "!" the end of the variable, it is make "unwrap"
 } else {
 print("\"text\" is nil!")
 }
 
 //Optional Binding
 
 if let temp = text {
 print(temp)//automatically unwrapping
 } else {
 print("\"text\" is nil!")
 }
 
 if var temp = text {
 print(temp)//automatically unwrapping
 temp = "How are you?"
 print(temp)
 } else {
 print("\"text\" is nil!")
 }
 
 //OBJECT ORIENTED PROGRAMMING
 class Car {
 var color : String?
 var speed : Int?
 var isActive : Bool?
 
 //Constructor, when object is created from class
 init() {
 print("Empty Constructor worked")
 }
 
 //init(carColor : String, carSpeed : Int, carIsActive : Bool) {
 init(color : String, speed : Int, isActive : Bool) {
 self.color = color
 self.speed = speed
 self.isActive = isActive
 print("Not Empty Constructor worked")
 }
 
 func writeData() {
 print("------------")
 print("Color : \(color!)")
 print("Speed : \(speed!)")
 print("Is Active : \(isActive!)")
 }
 
 func runCar() {//Side effect : Bir fonksiyonun sınıf değişkenlerini etkilemesi
 isActive = true
 speed = 5
 }
 func stopCar(){
 isActive = false
 speed = 0
 }
 
 func changeSpeed(changeSpeed : Int) {
 speed! += changeSpeed
 }
 }
 
 //Object Creation
 
 var mercedes = Car(color: "Blue", speed: 200, isActive: true)
 
 mercedes.writeData()
 
 mercedes.stopCar()
 
 mercedes.writeData()
 
 mercedes.runCar()
 
 mercedes.writeData()
 
 mercedes.changeSpeed(changeSpeed: 10)
 
 mercedes.writeData()
 
 
 
 
 var bmw = Car()
 print("------------")
 
 //value assignment
 bmw.color = "Red"
 bmw.speed = 100
 bmw.isActive = true
 
 bmw.writeData()
 
 var sahin = Car()
 print("------------")
 
 sahin.color = "White"
 sahin.speed = 0
 sahin.isActive = false
 
 print("------------")
 print("Color : \(sahin.color!)")
 print("Speed : \(sahin.speed!)")
 print("Is Active : \(sahin.isActive!)")
 
 
 
 
 //FUNCTIONS
 class Functions {
 //Void : No return value
 func sayHello() {
 let result = "Hello Mehmet"
 print(result)
 }
 
 // return : Have return value
 func sayHello2() -> String {
 let result = "Hello Mehmet"
 return result
 }
 
 //Usage Parameters
 
 func sayHello3(name: String) -> String {
 let result = "Hello \(name)"
 return result
 }
 
 func adding(number1 : Int, number2 : Int) -> Int {
 let temp = number1 + number2
 return temp
 }
 
 func carpma(number1 : Int, number2 : Int){
 print("Carpma : \(number1 * number2)")
 }
 
 func carpma(number1 : Double, number2 : Double){
 print("Carpma : \(number1 * number2)")
 }
 
 func carpma(number1 : Int, number2 : Int, name : String){
 print("Carpma : \(number1 * number2) - Islemi yapan : \(name)")
 }
 
 }
 
 let returnValue1 = Functions()
 returnValue1.sayHello()
 
 let comingResult = returnValue1.sayHello2()
 print("Coming Result : \(comingResult)")
 
 let comingResult2 = returnValue1.sayHello3(name: "Ahmet")
 print("Coming Result : \(comingResult2)")
 
 let comingResult3 = returnValue1.adding(number1: 10, number2: 15)
 print(comingResult3)
 
 let comingResult4 = returnValue1.carpma(number1: 5, number2: 5)
 let comingResult5 = returnValue1.carpma(number1: 5, number2: 5)
 let comingResult6 = returnValue1.carpma(number1: 5, number2: 5, name: "Mehmet Ali")
 
 */

//STATIC - (KOTLIN -> COMPANION OBJECT)
class ClassA {
    static var variable1 = 10
    
    static func method1() {
        print("Method Run")
    }
    
}

/*
 //Without static
 let description1 = ClassA()
 print(description1.variable1)
 description1.method1()
 
 print("--------")
 print(ClassA().variable1) // virtual object - Sanal nesne
 ClassA().method1() // virtual object - Sanal nesne
 
 
 // With static
 print(ClassA.variable1)
 ClassA.method1()
 

//ENUM
enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut: KonserveBoyut, adet : Int) {
    
    switch boyut {
    case .kucuk : print("Fiyat : \(adet * 13)")
    case .orta : print("Fiyat : \(adet * 26 )")
    case .buyuk : print("Fiyat : \(adet * 58 )")
    }
}

ucretHesapla(boyut: .orta, adet: 40)



//Composition : Bir sınıf içerisinde başka sınıftan nesne kullanma
class Kategoriler {
    var kategoriId : Int?
    var kategoriAd :String?
    
    init(kategoriId : Int, kategoriAd : String) {
        self.kategoriId = kategoriId
        self.kategoriAd = kategoriAd
    }
}

class Yonetmenler {
    var yonetmenId : Int?
    var yonetmenAd :String?
    
    init(yonetmenId : Int, yonetmenAd : String) {
        self.yonetmenId = yonetmenId
        self.yonetmenAd = yonetmenAd
    }
}

class Filmler {
    var filmId : Int?
    var filmAd : String?
    var filmYili : Int?
    var kategori : Kategoriler?
    var yonetmen : Yonetmenler?
    
    init(filmId : Int, filmAd : String, filmYili : Int, kategori : Kategoriler, yonetmen : Yonetmenler) {
        self.filmId = filmId
        self.filmAd = filmAd
        self.filmYili = filmYili
        self.kategori = kategori
        self.yonetmen = yonetmen
        
    }
}


let kategori1 = Kategoriler(kategoriId: 1, kategoriAd: "Dram")
let kategori2 = Kategoriler(kategoriId: 2, kategoriAd: "Bilim Kurgu")

let yonetmen1 = Yonetmenler(yonetmenId: 1, yonetmenAd: "Quentin Tarantino")
let yonetmen2 = Yonetmenler(yonetmenId: 2, yonetmenAd: "Christopher Nolan")


let film1 = Filmler(filmId: 1, filmAd: "Interstellar", filmYili: 2013, kategori: kategori1, yonetmen: yonetmen1)

print("Film id : \(film1.filmId!)")
print("Film ad : \(film1.filmAd!)")
print("Film yil : \(film1.filmYili!)")
print("Film kategorisi : \(film1.kategori!.kategoriAd!)")
print("Film yonetmen : \(film1.yonetmen!.yonetmenAd!)")


*/

//INHERITANCE
class Ev {
    
    var pencereSayisi : Int?
    init(pencereSayisi : Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Villa : Ev {
    var garajVarmi : Bool?
    init(garajVarmi : Bool, pencereSayisi : Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Saray : Ev {
    
    var kuleSayisi : Int?
    
    init(kuleSayisi : Int, pencereSayisi : Int) {
        self.kuleSayisi = kuleSayisi
       super.init(pencereSayisi: pencereSayisi)
    }
}


var topkapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 300)
var bogazVilla = Villa(garajVarmi: true, pencereSayisi: 30)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)
print(bogazVilla.pencereSayisi!)
print(bogazVilla.garajVarmi!)

 /*

//Override
class Hayvan {
    func sesCikar(){
        print("Sesim Yok")
    }
}

class Memeli : Hayvan {
    
}

class Kedi : Memeli {
    override func sesCikar() {
        print("Miyav Miyav")
    }
}

class Kopek : Memeli {
    override func sesCikar() {
        print("Hav Hav")
    }
}


var hayvan = Hayvan()//Kalıtım olmadan, kendi metoduna erişim sağladı.
hayvan.sesCikar()

var memeli = Memeli()//Kalıtım yoluyla kendisinde metod olmadığı için üst sınıfın metoduna
memeli.sesCikar()    //erişim sağladı.

var kedi = Kedi()   //Kalıtım yoluyla kendi override metodlarına erişim sağladılar
kedi.sesCikar()

var kopek = Kopek() //Kalıtım yoluyla kendi override metodlarına erişim sağladılar
kopek.sesCikar()

var kedi2 = Memeli()
kedi2.sesCikar()


//Nesen Dönüşümleri

// Ön koşul kalıtım olması


*/

//Upcasting

var ev = Saray(kuleSayisi: 3, pencereSayisi: 10) as Ev

//Downcasting

var saray = Ev(pencereSayisi: 4) as? Saray

if let saray2 = Ev(pencereSayisi: 4) as? Saray {
    
}


if ev is Ev {
    print("Nesne ev sinifindan turemistir")
} else {
    print("Nesne ev sinifindan turememistir")
}


//Protocol - Interface


protocol MyProtocol {
    var degisken : Int { get set}
    
    func method1()
    func method2() -> String
    
}


class ClassB : MyProtocol {
    var degisken: Int = 0
    
    func method1() {
        print("Method 1 calisti")
    }//

    
    func method2() -> String {
        return "Method 2 calisti"
    }
    
}

var classBobject = ClassB()

classBobject.method1()
print("\(classBobject.method2())")

//Extension

extension Int {
    func carp(sayi : Int) -> Int {
     return self * sayi
    }
}

let extensionX = 3.carp(sayi: 5)
print(extensionX)

// Closure

let message = {
    print("Calisti ")
}

message()

let topla = {
    (sayi1 : Int, sayi2 : Int) -> Int in
    return sayi1 + sayi2
}

let topla1 = topla(10,30)
print(topla1)


