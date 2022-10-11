//
//  AnasayfaProtocols.swift
//  KisilerUygulamasi
//
//  Created by Mehmet Ali Kılıçlı on 9.10.2022.
//

import Foundation

protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView: PresenterToViewAnasayfaProtocol? {get set}
    
    func kisileriYukle()
    func ara(aramaKelimes:String)
    func sil(kisi_id:Int)
}
protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumKisileriAl()
    func kisiAra(aramaKelimes:String)
    func kisiSil(kisi_id:Int)
}

protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi: [Kisiler])
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(kisilerListesi: [Kisiler])
}
protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
