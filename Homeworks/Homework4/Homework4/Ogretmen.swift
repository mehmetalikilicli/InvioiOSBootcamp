//
//  Egitmenler.swift
//  Homework4
//
//  Created by Mehmet Ali Kılıçlı on 2.10.2022.
//

import Foundation
import UIKit


class Ogretmen {
    
    var isim : String?
    var aciklama : String?
    var image : UIImage?
    
    init(isim: String, aciklama: String, image: UIImage) {
        self.isim = isim
        self.aciklama = aciklama
        self.image = image
    }
    
}
