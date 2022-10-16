//
//  YapilacaklarDetayPresenter.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import Foundation
class YapilacaklarDetayPresenter : ViewToPresenterYapilacakDetayProtocol {
    var yapilacakDetayInteractor: PresenterToInteractorYapilacakDetayProtocol?
    
    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        yapilacakDetayInteractor?.yapilacakGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }
    
    
}
