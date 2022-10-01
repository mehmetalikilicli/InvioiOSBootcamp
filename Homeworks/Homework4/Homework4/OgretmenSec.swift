//
//  OgretmenSec.swift
//  Homework4
//
//  Created by Mehmet Ali Kılıçlı on 1.10.2022.
//

import UIKit

class OgretmenSec: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func kasimAdalanSecildi(_ sender: Any) {
        
        let egitmenKasimAdalan = Ogretmen(isim: "Kasım Adalan", aciklama: "#ios, #android, #flutter, #softwaretrainer, and #softwaredeveloper", image: UIImage(named: "kasimAdalan")!)
        
        performSegue(withIdentifier: "fromOgretmenSecToDers", sender: egitmenKasimAdalan)
        
    }
    
    @IBAction func mehmetAliSecildi(_ sender: Any) {
        
        let egitmenMehmetAli = Ogretmen(isim: "Mehmet Ali", aciklama: "#ios, #flutter, #softwaretrainer, #dart #softwaredeveloper", image: UIImage(named: "mehmetAliKilicli")!)
        
        performSegue(withIdentifier: "fromOgretmenSecToDers", sender: egitmenMehmetAli)
    }
    
    
    @IBAction func sadiEvrenSekerSecildi(_ sender: Any) {
        let egitmenSadiEvrenSeker = Ogretmen(isim: "Sadi Evren Seker", aciklama: "Prof. Dr. @ Antalya Bilim University, Computer Science Dept. CEO @ OptiWisdom Studying on Responsible AI, Explainable AI", image: UIImage(named: "sadiEvrenSeker")!)
        
        performSegue(withIdentifier: "fromOgretmenSecToDers", sender: egitmenSadiEvrenSeker)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let veri = sender as? Ogretmen{
            let gidilecekVC = segue.destination as! DersIzle
            gidilecekVC.egitmen = veri
        }
    }
    
}
