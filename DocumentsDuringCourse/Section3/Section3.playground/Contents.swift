import UIKit

//Array kullanımı
//Tanımlama

var numaralar = [10,20,30]

var meyveler = [String]()


meyveler.append("Elma")//0
meyveler.append("Muz")//1
meyveler.append("Kiraz")//2
print(meyveler)

//Güncelleme
meyveler[0] = "Yeni Elma"
print(meyveler)


//Insert
meyveler.insert("Portakal", at: 1)
print(meyveler)

//Veri okuma
let veriOkuma = meyveler[2]
print("2. indeks : \(veriOkuma)")

print(meyveler.isEmpty)//Bos mu
print(meyveler.count)//Boyut
print(meyveler.first)// ilk eleman
print(meyveler.last)// son indeks elaman - 3 ) meyveler.count - 1
print(meyveler.firstIndex(of: "Muz")!)
print(meyveler.contains("Muz"))

for meyve in meyveler {
    print("Sonuç 1 : \(meyve )")
}

for (indeks,meyve) in meyveler.enumerated() {//kotlin - withindex
    print("\(indeks). -> \(meyve)")
}

meyveler.removeAll()

print(meyveler)

//Array Nesne Tabanlı Kullanımı

class Urunler {
    var id : Int?
    var ad : String?
    var fiyat : Int?
    
    init(id : Int, ad : String, fiyat : Int) {
        self.id = id
        self.ad = ad
        self.fiyat = fiyat
    }
    
}

var urun1 = Urunler(id: 1, ad: "TV", fiyat: 7000)
var urun2 = Urunler(id: 2, ad: "Bilgisayar", fiyat: 15000)
var urun3 = Urunler(id: 3, ad: "Kulaklıl", fiyat: 1000)


var urunlerListesi = [Urunler]()
urunlerListesi.append(urun1)
urunlerListesi.append(urun2)
urunlerListesi.append(urun3)

for urun in urunlerListesi {
    print("Id : \(urun.id!) - Ad : \(urun.ad!) - Fiyat : \(urun.fiyat!)")
}

//Filtreleme
var filter1 = urunlerListesi.filter({$0.fiyat! > 5000 && $0.fiyat! < 10000})
print("Filtreleme1")
for urun in filter1 {
    print("Id : \(urun.id!) - Ad : \(urun.ad!) - Fiyat : \(urun.fiyat!)")
    
}

var filter2 = urunlerListesi.filter({$0.ad!.contains("lg")})
print("Filtreleme 2")
for urun in filter2 {
    print("Id : \(urun.id!) - Ad : \(urun.ad!) - Fiyat : \(urun.fiyat!)")
}

//Sort - Sıralama
var sort1 = urunlerListesi.sorted(by: {$0.fiyat! > $1.fiyat! })
print("Fiyata gore azalan")
for urun in sort1 {
    print("Id : \(urun.id!) - Ad : \(urun.ad!) - Fiyat : \(urun.fiyat!)")
}

var sort2 = urunlerListesi.sorted(by: {$0.fiyat! < $1.fiyat! })
print("Fiyata gore artan")
for urun in sort2 {
    print("Id : \(urun.id!) - Ad : \(urun.ad!) - Fiyat : \(urun.fiyat!)")
}

var sort3 = urunlerListesi.sorted(by: {$0.ad! < $1.ad! })
print("Alfabetik ")
for urun in sort3 {
    print("Id : \(urun.id!) - Ad : \(urun.ad!) - Fiyat : \(urun.fiyat!)")
}

//Set kullanımı
var meyveler1 = Set<String>()

//Veri aktarımı
meyveler1.insert("Elma")
meyveler1.insert("Portakal")
meyveler1.insert("Muz")
print(meyveler1)

for meyve in meyveler1 {
    print("Sonuç : \(meyve)")
}

for (i,m) in meyveler1.enumerated() {
    print("\(i). -> \(m)")
}

print(meyveler1.count)
meyveler1.remove("Muz")
print(meyveler1)

var index = meyveler1.firstIndex(of: "Elma")
meyveler1.remove(at: index!)
print(meyveler1)

meyveler1.removeAll()
print(meyveler1)

// Dictionary - Map
// Json

var iller = [Int : String]()

//Veri ekleme
iller[16] = "Bursa"
iller[34] = "Istanbul"
print(iller)


//Veri okuma

print(iller[34]!)

//Veri güncelleme

iller[16] = "Yeni Bursa"
print(iller)

for(anahtar,deger) in iller {
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 16)
print(iller)

// Guard kullanımı
// if'in tersi
// Fonksiyon içinde kullanılır

func kisiTanimlamaIf(ad : String) {
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    } else {
        print("Tanınmayan kişi")
    }
}

kisiTanimlamaIf(ad: "Ahmet")

func kisiTanimlamaGuard(ad : String) {
    guard ad == "Ahmet" else {
        print("Tanınmayan kişi")
        return
    }
    print("Merhaba Ahmet Guard")
}

kisiTanimlamaGuard(ad: "Ahmet")


// Hata Ayıklama
//1. Derleme (Compile Error)
let c = 4
//c = "d"

//2. Hata ( Run time Exception )

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1 : Int, sayi2 : Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
return sayi1/sayi2
}



do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc )
} catch Hatalar.sifiraBolunmeHatasi {
    print("Sayi sıfıra bolunemez")
}

let sonuc1 = try? bolme(sayi1: 10, sayi2: 0)

if let temp = sonuc1 {
    print(temp)
} else {
    print("Sayi sıfıra bolunemez")
}
