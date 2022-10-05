//
//  ViewController.swift
//  Homework5
//
//  Created by Mehmet Ali Kılıçlı on 3.10.2022.
//

import UIKit

class Calculator: UIViewController {
    
    var degisken1 = 0.0
    var degisken2 = 0.0
    
    // Uzerinde Calisilan label
    @IBOutlet weak var hesapMakinesiIslemler: UILabel!
    //Sonuc labelı
    @IBOutlet weak var hesapMakinesiSonuc: UILabel!
    
    var islem : String = ""
    
        override func viewDidLoad() {
        super.viewDidLoad()
        tamaminiTemizle()
    }
    
    @IBAction func artiTiklandi(_ sender: Any) {
        
        degisken1 = Double(hesapMakinesiIslemler.text!)!
        hesapMakinesiIslemler.text = ""
        islem = ""
        
    }
    
    @IBAction func esittirTiklandi(_ sender: Any) {
        
        degisken2 = Double(hesapMakinesiIslemler.text!)!
        
        let toplam = degisken2 + degisken1
        
        hesapMakinesiSonuc.text = String(toplam)
        
    }
    
    @IBAction func tamaminiTemizleTiklandi(_ sender: Any) {
       tamaminiTemizle()
    }
    
    @IBAction func silTiklandi(_ sender: Any) {
        if islem != "" {
            islem.removeLast()
            hesapMakinesiIslemler.text = islem
        }
    }
    
    @IBAction func modTiklandi(_ sender: Any) {
        ekle(deger: "%")
        
    }
    @IBAction func bolmeTiklandi(_ sender: Any) {
        ekle(deger: "/")
    }
    
    @IBAction func carpmaTiklandi(_ sender: Any) {
        ekle(deger: "*")
    }
    
    @IBAction func eksiTiklandi(_ sender: Any) {
        ekle(deger: "-")
    }
   
    @IBAction func virgulTiklandi(_ sender: Any) {
        ekle(deger: ".")
    }
    
    @IBAction func sifirTiklandi(_ sender: Any) {
        ekle(deger: "0")
    }
    @IBAction func birTiklandi(_ sender: Any) {
        ekle(deger: "1")
    }
    @IBAction func ikiTiklandi(_ sender: Any) {
        ekle(deger: "2")
    }
    
    @IBAction func ucTiklandi(_ sender: Any) {
        ekle(deger: "3")
    }
    @IBAction func dortTiklandi(_ sender: Any) {
        ekle(deger: "4")
    }
    
    @IBAction func besTiklandi(_ sender: Any) {
        ekle(deger: "5")
    }
    @IBAction func altiTiklandi(_ sender: Any) {
        ekle(deger: "6")    }
    
    @IBAction func yediTiklandi(_ sender: Any) {
        ekle(deger: "7")
    }
    
    @IBAction func sekizTiklandi(_ sender: Any) {
        ekle(deger: "8")
    }
    
    @IBAction func dokuzTiklandi(_ sender: Any) {
        ekle(deger: "9")
    }
    
    func ekle(deger : String) {
        islem = islem + deger
        hesapMakinesiIslemler.text = islem
    }
    
    func tamaminiTemizle()  {
        islem = ""
        hesapMakinesiIslemler.text = ""
        hesapMakinesiSonuc.text = ""
    }
    
}

