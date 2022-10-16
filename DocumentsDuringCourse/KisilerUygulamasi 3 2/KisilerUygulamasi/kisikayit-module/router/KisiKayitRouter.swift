//
//  KisiKayitRouter.swift
//  KisilerUygulamasi
//
//  Created by Kasım on 9.10.2022.
//

import Foundation

class KisiKayitRouter : PresenterToRouterKisiKayitProtocol {
    static func createModule(ref: KisiKayitVC) {
        ref.kisiKayitPresenterNesnesi = KisiKayitPresenter()
        ref.kisiKayitPresenterNesnesi?.kisiKayitInteractor = KisiKayitInteractor()
    }
}
