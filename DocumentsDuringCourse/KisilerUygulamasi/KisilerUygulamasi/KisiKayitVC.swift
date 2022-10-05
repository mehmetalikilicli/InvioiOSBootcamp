//
//  KisiKayitVC.swift
//  KisilerUygulamasi
//
//  Created by Mehmet Ali Kılıçlı on 2.10.2022.
//

import UIKit

class KisiKayitVC: UIViewController {
    
    
    @IBOutlet weak var tfKisiAd: UITextField!
    
    @IBOutlet weak var tfKisiTel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func butonKaydet(_ sender: Any) {
        
        if let kisiAdi = tfKisiAd.text, let kisiTel = tfKisiTel.text {
            kayit(kisi_ad: kisiAdi, kisi_tel: kisiTel)
        }
        
    }
    
    func kayit(kisi_ad : String, kisi_tel : String) {
        print("Kişi kayıt : \(kisi_ad) - \(kisi_tel)")
    }
    

}
