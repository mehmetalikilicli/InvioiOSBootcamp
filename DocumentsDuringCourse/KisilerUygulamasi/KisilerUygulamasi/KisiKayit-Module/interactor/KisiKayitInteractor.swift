//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Mehmet Ali Kılıçlı on 9.10.2022.
//

import Foundation

class KisiKayitInteractor : PresenterToInteractorKisiKayitProtocol {
    
    let dataBase : FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.db")
        dataBase = FMDatabase(path: kopyalanacakYer.path)
    }
    
    
    
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        print("Kişi \(kisi_ad) -- \(kisi_tel)")
    }
    
    
}
