//
//  ViewController.swift
//  DetayliCollectionView
//
//  Created by Kasım on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let f1 = Filmler(filmId: 1, filmAdi: "Django", filmResimAdi: "django", filmYonetmenAdi: "Quentin Tarantino", filmFiyat: 15)
        let f2 = Filmler(filmId: 2, filmAdi: "Inception", filmResimAdi: "inception", filmYonetmenAdi: "Chrsitopher Nolan", filmFiyat: 10)
        let f3 = Filmler(filmId: 3, filmAdi: "Interstellar", filmResimAdi: "interstellar", filmYonetmenAdi: "Chrsitopher Nolan", filmFiyat: 23)
        let f4 = Filmler(filmId: 4, filmAdi: "Anadoluda", filmResimAdi: "anadoluda", filmYonetmenAdi: "Nuri Bilge Ceylan", filmFiyat: 15)
        let f5 = Filmler(filmId: 5, filmAdi: "The Hateful Eight", filmResimAdi: "thehatefuleight", filmYonetmenAdi: "Quentin Tarantino", filmFiyat: 12)
        let f6 = Filmler(filmId: 6, filmAdi: "The Pianist", filmResimAdi: "thepianist", filmYonetmenAdi: "Roman Polanski", filmFiyat: 7)
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
        
        filmlerCollectionView.delegate = self
        filmlerCollectionView.dataSource = self
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        let ekranGenisligi = UIScreen.main.bounds.width
        let hucreGenisligi = (ekranGenisligi - 30) / 2
        tasarim.itemSize = CGSize(width: hucreGenisligi, height: hucreGenisligi*1.7)
        
        filmlerCollectionView.collectionViewLayout = tasarim
        //4 item , kenarlar 3 , ara boşluklar 4
        //3 X 4 X 4 X 4 X 3
    }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,HucreProtocol {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = filmlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmCollectionViewCell
        
        cell.filmAdiLabel.text = film.filmAdi
        cell.filmImageView.image = UIImage(named: film.filmResimAdi!)
        cell.filmFiyatLabel.text = "\(film.filmFiyat!) ₺"
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func buttonTiklandi(indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmAdi!) sepete eklendi")
    }
}
