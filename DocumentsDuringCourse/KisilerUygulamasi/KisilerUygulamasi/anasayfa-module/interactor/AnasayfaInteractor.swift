//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by Mehmet Ali Kılıçlı on 9.10.2022.
//

import Foundation
class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol{
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let dataBase : FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.db")
        dataBase = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func tumKisileriAl() {
        var liste = [Kisiler]()
        
        dataBase?.open()
        
        do {
            
            let r = try dataBase!.executeQuery("SELECT * FROM kisiler", values: nil)
            
            while r.next() {
                let kisi = Kisiler(kisi_id: Int(r.string(forColumn: "kisi_id"))!, kisi_ad: r.string(forColumn: "kisi_ad")!, kisi_tel: r.string(forColumn: "kisi_tel")!)
                liste.append(kisi)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)

        } catch {
            print(error.localizedDescription)
        }
        
        dataBase?.close()
        
    }
    
    func kisiAra(aramaKelimes: String) {
        print("Kisi ara : \(aramaKelimes)")
    }
    
    func kisiSil(kisi_id: Int) {
        print("Kisi sil : \(kisi_id)")
    }
    
    
}
