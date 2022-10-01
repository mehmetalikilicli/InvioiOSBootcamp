//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Mehmet Ali Kılıçlı on 29.09.2022.
//

import UIKit

class OyunEkrani: UIViewController {
    
    var kisi : Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let kisi = kisi {
            print("Kisi ad : \(kisi.ad!)")
            print("Kisi yas : \(kisi.yas!)")
            print("Kisi boy : \(kisi.boy!)")
            print("Kisi bekar : \(kisi.bekar!)")

        }
        
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true)
        navigationController?.popToRootViewController(animated: true)
    }
    //Pop : geri dönüşü temsil eder
    
    
    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraniGecis", sender: nil)
    }
    
}
