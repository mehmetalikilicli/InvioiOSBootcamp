//
//  YapilacaklarKayitProtocols.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import Foundation
protocol ViewToPresenterYapilacaklarKayitProtocol {
    var yapilacakKayitInteractor:PresenterToInteractorYapilacaklarKayitProtocol? {get set}
    
    func ekle(yapilacak_is:String)}

protocol PresenterToInteractorYapilacaklarKayitProtocol {
    func yapilacakEkle(yapilacak_is:String)}

protocol PresenterToRouterYapilacaklarKayitProtocol {
    static func createModule(ref:YapilacaklarKayitVC)
}
