//
//  YapilacaklarRouter.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import Foundation

class YapilacaklarKayitRouter : PresenterToRouterYapilacaklarKayitProtocol{
    static func createModule(ref: YapilacaklarKayitVC) {
        ref.yapilacakKayitPresenterNesnesi = YapilacaklarKayitPresenter()
        ref.yapilacakKayitPresenterNesnesi?.yapilacakKayitInteractor = YapilacaklarKayitInteractor()
    }
    
    
}
