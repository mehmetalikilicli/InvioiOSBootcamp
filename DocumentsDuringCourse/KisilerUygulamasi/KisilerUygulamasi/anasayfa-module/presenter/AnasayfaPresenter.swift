//
//  AnasayfaPresenter.swift
//  KisilerUygulamasi
//
//  Created by Mehmet Ali Kılıçlı on 9.10.2022.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol{
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func kisileriYukle() {
        anasayfaInteractor?.tumKisileriAl()
    }
    
    func ara(aramaKelimes: String) {
        anasayfaInteractor?.kisiAra(aramaKelimes: aramaKelimes)
    }
    
    func sil(kisi_id: Int) {
        anasayfaInteractor?.kisiSil(kisi_id: kisi_id)
    }
    
    
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi: [Kisiler]) {
        anasayfaView?.vieweVeriGonder(kisilerListesi: kisilerListesi)
    }
    
    
}
