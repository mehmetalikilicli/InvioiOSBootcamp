//
//  KisiDetayInteractor.swift
//  KisilerUygulamasi
//
//  Created by Mehmet Ali Kılıçlı on 9.10.2022.
//

import Foundation
class KisiDetayInteractor :PresenterToInteractorKisiDetayProtocol{
    
    let dataBase : FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.db")
        dataBase = FMDatabase(path: kopyalanacakYer.path)
    }
    
    
    
    func kisiGuncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        print("Kişi Güncelle : \(kisi_id) - \(kisi_ad) - \(kisi_tel)")

    }
}
