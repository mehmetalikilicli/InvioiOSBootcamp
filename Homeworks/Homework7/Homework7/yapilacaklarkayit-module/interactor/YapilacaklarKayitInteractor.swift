//
//  YapilacaklarKayitInteractor.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import Foundation

class YapilacaklarKayitInteractor: PresenterToInteractorYapilacaklarKayitProtocol {
    
    let db : FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func yapilacakEkle(yapilacak_is: String) {

        db?.open()
        
        do {
            try db!.executeUpdate("INSERT INTO yapilacaklar (yapilacak_is) VALUES (?)", values: [yapilacak_is])
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()

    }
    
}
