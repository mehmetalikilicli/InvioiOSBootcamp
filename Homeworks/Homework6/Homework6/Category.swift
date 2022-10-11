//
//  Category.swift
//  Homework6
//
//  Created by Mehmet Ali Kılıçlı on 11.10.2022.
//

import Foundation

class Category {
    
    var categoryId:Int?
    var categoryResimAdi:String?
    var categoryBaslik:String?
    var categoryAltBaslik:String?
    
    init(categoryId: Int, categoryResimAdi: String, categoryBaslik: String, categoryAltBaslik: String) {
       self.categoryId = categoryId
       self.categoryResimAdi = categoryResimAdi
       self.categoryBaslik = categoryBaslik
       self.categoryAltBaslik = categoryAltBaslik
   }
    
    
}
