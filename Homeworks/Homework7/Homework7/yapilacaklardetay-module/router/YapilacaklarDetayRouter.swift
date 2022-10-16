//
//  YapilacaklarDetayRouter.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import Foundation
class YapilacaklarDetayRouter : PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref: YapilacaklarDetayVC) {
        ref.yapilacakDetayPresenterNesnesi = YapilacaklarDetayPresenter()
        ref.yapilacakDetayPresenterNesnesi?.yapilacakDetayInteractor = YapilacaklarDetayInteractor()
    }
    
    
     
    
}
