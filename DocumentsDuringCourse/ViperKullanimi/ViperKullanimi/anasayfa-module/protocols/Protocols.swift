//
//  Protocols.swift
//  ViperKullanimi
//
//  Created by Mehmet Ali Kılıçlı on 6.10.2022.
//

import Foundation

//View -> Presenter -> Interactor

//Ana protocoller
protocol ViewToPresenterProtocol {
    var interactor:PresenterToInteractorProtocol? {get set}
    var view:PresenterToViewProtocol? {get set}
    
    
    func toplamaYap(sayi1:String, sayi2:String)
    func carpmaYap(sayi1:String, sayi2:String)
}

protocol PresenterToInteractorProtocol {
    var presenter:InteractorToPresenterProtocol? {get set}
    
    func topla(sayi1:String, sayi2:String)
    func carp(sayi1:String, sayi2:String)
}

//Taşıyıcı protocoller
protocol InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc:String)
}

protocol PresenterToViewProtocol {
    func vieweVeriGonder(sonuc:String)
}
//Router
protocol PresenterToRouterProtocol {
    static func createModul(ref:ViewController)
}
