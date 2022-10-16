//
//  YapilacaklarKayitPresenter.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import Foundation

class YapilacaklarKayitPresenter : ViewToPresenterYapilacaklarKayitProtocol {
    var yapilacakKayitInteractor: PresenterToInteractorYapilacaklarKayitProtocol?
    
    func ekle(yapilacak_is: String) {
        yapilacakKayitInteractor?.yapilacakEkle(yapilacak_is: yapilacak_is)
    }
    
     
}
