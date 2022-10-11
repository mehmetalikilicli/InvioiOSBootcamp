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
    
    var kisiKayitPresenterNesnesi : ViewToPresenterKisiKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        KisiKayitRouter.createModule(ref: self)

    }
    

    @IBAction func butonKaydet(_ sender: Any) {
        
        if let kisiAdi = tfKisiAd.text, let kisiTel = tfKisiTel.text {
            kisiKayitPresenterNesnesi?.ekle(kisi_ad: kisiAdi, kisi_tel: kisiTel)
        }
        
    }
    
}
