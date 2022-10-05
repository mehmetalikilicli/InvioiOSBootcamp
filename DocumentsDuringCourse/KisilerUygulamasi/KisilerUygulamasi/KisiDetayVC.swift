//
//  KisiDetayVC.swift
//  KisilerUygulamasi
//
//  Created by Mehmet Ali Kılıçlı on 2.10.2022.
//

import UIKit

class KisiDetayVC: UIViewController {
    
    

    @IBOutlet weak var tfKisiad: UITextField!
    
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var kisi : Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let kisi = kisi {
            tfKisiad.text = kisi.kisi_ad
            tfKisiTel.text = kisi.kisi_tel
        }
        
    }
    

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let kisiAd = tfKisiad.text, let kisiTel = tfKisiTel.text, let kisi = kisi {
            guncelle(kisi_id: kisi.kisi_id!, kisi_ad: kisiAd, kisi_tel: kisiTel)
        }
    }
    
    func guncelle(kisi_id : Int, kisi_ad : String, kisi_tel : String) {
        print("Kişi Güncelle : \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
}
