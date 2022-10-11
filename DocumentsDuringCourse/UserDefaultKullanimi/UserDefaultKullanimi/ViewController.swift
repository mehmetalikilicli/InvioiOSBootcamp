//
//  ViewController.swift
//  UserDefaultKullanimi
//
//  Created by Mehmet Ali Kılıçlı on 9.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefault = UserDefaults.standard
        
        //Kayit
        userDefault.set("Ahmet", forKey: "ad")
        userDefault.set(23, forKey: "yas")
        userDefault.set(1.72, forKey: "boy")
        userDefault.set(true, forKey: "bekar")
        
        let liste = ["ali", "ece"]
        userDefault.set(liste, forKey: "liste")
        
        let sehirler = ["16":"Bursa", "38":"Kayseri"]
        userDefault.set(sehirler, forKey: "sehirler")
        
        //Silme
        //userDefault.removeObject(forKey: "ad")
        
        
        //Okuma
        let gelenAd = userDefault.string(forKey: "ad") ?? "isim yok"
        let gelenYas = userDefault.integer(forKey: "yas")// int : 0
        let gelenBoy = userDefault.double(forKey: "boy")// double : 0.0
        let gelenBekar = userDefault.bool(forKey: "bekar")// bool : false
        let gelenListe = userDefault.array(forKey: "liste") ?? [String]()
        let gelenSehirler = userDefault.dictionary(forKey: "sehirler") ?? [String:String]()
        print("Gelen ad : \(gelenAd)")
        print("Gelen yas : \(gelenYas)")
        print("Gelen boy : \(gelenBoy)")
        print("Gelen bekar : \(gelenBekar)")
        
        for eleman in gelenListe {
            print("Gelen Arkadaş : \(eleman)")
        }
        
        for (anahtar, deger) in gelenSehirler {
            print("\(anahtar) - \(deger)")
        }
        
        //Saya uygulamasi
        var sayac = userDefault.integer(forKey: "sayac")
        
        sayac = sayac + 1
        
        userDefault.set(sayac, forKey: "sayac")
        
        labelSayac.text = String(sayac)

        
    }
}

