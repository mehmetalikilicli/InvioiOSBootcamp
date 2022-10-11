//
//  Router.swift
//  ViperKullanimi
//
//  Created by Mehmet Ali Kılıçlı on 6.10.2022.
//

import Foundation
class Router : PresenterToRouterProtocol {
    static func createModul(ref: ViewController) {
        let presenter = Presenter()
        
        //View katmani degiskeni
        ref.presenterNesnesi = presenter
        
        //Presenter katmani degiskeni
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        //Interactor katmani degiskeni
        ref.presenterNesnesi?.interactor?.presenter = presenter
    }
    
}
