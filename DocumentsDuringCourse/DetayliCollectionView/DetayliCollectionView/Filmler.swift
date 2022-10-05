//
//  Filmler.swift
//  DetayliCollectionView
//
//  Created by Mehmet Ali Kılıçlı on 4.10.2022.
//

import Foundation

class Filmler {
     
    
    var filmId : Int?
    var filmAd : String?
    var filmResimadi : String?
    var filmYonetmenAdi : String?
    var filmFiyat : Int?
    
    init(filmId: Int, filmAd: String, filmResimadi: String, filmYonetmenAdi: String, filmFiyat: Int) {
       self.filmId = filmId
       self.filmAd = filmAd
       self.filmResimadi = filmResimadi
       self.filmYonetmenAdi = filmYonetmenAdi
       self.filmFiyat = filmFiyat
   }

    
}
