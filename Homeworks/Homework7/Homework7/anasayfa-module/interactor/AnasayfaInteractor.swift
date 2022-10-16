//
//  AnasayfaInteractor.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db : FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    
    
    func tumYapilacaklariAl() {
        
        var liste = [YapilacakIs]()
        
        db?.open()
        
        do {
            let r = try db!.executeQuery("SELECT * FROM yapilacaklar", values: nil)
            
            while r.next() {
                let yapilacak = YapilacakIs(yapilacak_id: Int(r.string(forColumn: "yapilacak_id"))!, yapilacak_is: r.string(forColumn: "yapilacak_is")!)
                liste.append(yapilacak)
            }
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)

        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
        
    }
    
    func yapilacakArama(aramaKelimesi: String) {

        var liste = [YapilacakIs]()
        
        db?.open()
        
        do {
            let r = try db!.executeQuery("SELECT * FROM yapilacaklar WHERE yapilacak_is like '%\(aramaKelimesi)%'", values: nil)
            
            while r.next() {
                let yapilacak = YapilacakIs(yapilacak_id: Int(r.string(forColumn: "yapilacak_id"))!, yapilacak_is: r.string(forColumn: "yapilacak_is")!)
                liste.append(yapilacak)
            }
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)

        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()

    }
    
    func yapilacakSil(yapilacak_id: Int) {

        db?.open()
        
        do {
            try db!.executeUpdate("DELETE FROM yapilacaklar WHERE yapilacak_id = ?", values: [yapilacak_id])
            tumYapilacaklariAl()
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()


    }
    
    
}
