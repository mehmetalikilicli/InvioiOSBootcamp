//
//  YapilacaklarDetayProtocols.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import Foundation
protocol ViewToPresenterYapilacakDetayProtocol {
    var yapilacakDetayInteractor:PresenterToInteractorYapilacakDetayProtocol? {get set}
     
    func guncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakDetayProtocol{
    func yapilacakGuncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref:YapilacaklarDetayVC)
}
