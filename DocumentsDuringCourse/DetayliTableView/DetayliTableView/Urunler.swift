//
//  Urunler.swift
//  DetayliTableView
//
//  Created by Mehmet Ali Kılıçlı on 4.10.2022.
//

import Foundation
import UIKit

class Urunler {
     
    
    var urunId : Int?
    var urunAd : String?
    var urunResimAd : String?
    var urunFiyat : Int?
    
    init(urunId: Int, urunAd: String, urunResimAd: String, urunFiyat: Int) {
       self.urunId = urunId
       self.urunAd = urunAd
       self.urunResimAd = urunResimAd
       self.urunFiyat = urunFiyat
   }
    
    
}
