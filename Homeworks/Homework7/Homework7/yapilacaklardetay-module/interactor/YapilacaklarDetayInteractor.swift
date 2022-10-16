//
//  YapilacaklarDetayInteractor.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import Foundation
class YapilacaklarDetayInteractor : PresenterToInteractorYapilacakDetayProtocol{
    
    let db : FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func yapilacakGuncelle(yapilacak_id: Int, yapilacak_is: String) {

        db?.open()
        
        do {
            try db!.executeUpdate("UPDATE yapilacaklar SET yapilacak_is = ? WHERE yapilacak_id = ?", values: [yapilacak_is, yapilacak_id])
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()


    }
    
    
}
