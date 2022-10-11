//
//  ViewController.swift
//  Homework6
//
//  Created by Mehmet Ali Kılıçlı on 9.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var category1CollectionView: UICollectionView!
    @IBOutlet weak var category2CollectionView: UICollectionView!
    @IBOutlet weak var category3CollectionView: UICollectionView!
    
    @IBOutlet weak var barbuttonItem1: UIBarButtonItem!
    
    var categoryListesi1 = [Category]()
    var categoryListesi2 = [Category]()
    var categoryListesi3 = [Category]()

    

    override func viewDidLoad() {
        super.viewDidLoad()

       let category1 = Category(categoryId: 1,  categoryResimAdi: "image1", categoryBaslik: "fizy vitamin", categoryAltBaslik: "fizy - 38 Şarkı")
        let category2 = Category(categoryId: 2, categoryResimAdi: "image2", categoryBaslik: "Tiktok Hits", categoryAltBaslik: "fizy - 163 Şarkı")
        let category3 = Category(categoryId: 3, categoryResimAdi: "image3", categoryBaslik: "Haftalık Keşif Listesi", categoryAltBaslik: "fizy - 82 Şarkı")
        let category4 = Category(categoryId: 4, categoryResimAdi: "image4", categoryBaslik: "Karışık Kaset", categoryAltBaslik: "fizy - 31 Şarkı")
        let category5 = Category(categoryId: 5, categoryResimAdi: "image5", categoryBaslik: "Tatil Kafası", categoryAltBaslik: "fizy - 38 Şarkı")
        let category6 = Category(categoryId: 6, categoryResimAdi: "image6", categoryBaslik: "Yaz Coşkusu", categoryAltBaslik: "fizy - 60 Şarkı")
        let category7 = Category(categoryId: 7, categoryResimAdi: "image7", categoryBaslik: "Güne Güzel Başla!", categoryAltBaslik: "fizy - 104 Şarkı")
        let category8 = Category(categoryId: 8, categoryResimAdi: "image8", categoryBaslik: "LooP", categoryAltBaslik: "fizy - 43 Şarkı")
        let category9 = Category(categoryId: 9, categoryResimAdi: "image9", categoryBaslik: "Rap Türkçe", categoryAltBaslik: "fizy - 59 Şarkı")

        categoryListesi1.append(category1)
        categoryListesi1.append(category2)
        categoryListesi1.append(category3)
        categoryListesi1.append(category1)
        categoryListesi1.append(category2)
        categoryListesi1.append(category3)
        

        categoryListesi2.append(category4)
        categoryListesi2.append(category5)
        categoryListesi2.append(category6)
        categoryListesi2.append(category4)
        categoryListesi2.append(category5)
        categoryListesi2.append(category6)
        
        categoryListesi3.append(category7)
        categoryListesi3.append(category8)
        categoryListesi3.append(category9)
        categoryListesi3.append(category7)
        categoryListesi3.append(category8)
        categoryListesi3.append(category9)
        
        category1CollectionView.delegate = self
        category1CollectionView.dataSource = self
        
        category2CollectionView.delegate = self
        category2CollectionView.dataSource = self
        
        category3CollectionView.delegate = self
        category3CollectionView.dataSource = self
        
        
        
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        tasarim.scrollDirection = .horizontal
        
        let ekranGenisligi = UIScreen.main.bounds.width
        let hucreGenisligi = (ekranGenisligi - 10) / 2.4
        tasarim.itemSize = CGSize(width: hucreGenisligi, height: hucreGenisligi * 1.13)
        category1CollectionView.collectionViewLayout = tasarim
        category2CollectionView.collectionViewLayout = tasarim
        category3CollectionView.collectionViewLayout = tasarim
        
        

    }


}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //Sayfada birden fazla collection  view varsa bunu emun şeklinde yapmak mantıklı
        //https://www.youtube.com/watch?v=9Aoi-4sW6JU bu videoda anlatıyo
        if collectionView == self.category1CollectionView {
            return categoryListesi1.count
        } else if collectionView == self.category2CollectionView{
            return categoryListesi2.count
        } else {
            return categoryListesi3.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.category1CollectionView {
            
            let category = categoryListesi1[indexPath.row]

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryHucre", for: indexPath) as! MusicCollectionViewCell
            
            cell.imageView.image = UIImage(named: category.categoryResimAdi!)
            cell.label1.text = category.categoryBaslik
            cell.label2.text = category.categoryAltBaslik
            return cell
            
        } else if collectionView == self.category2CollectionView {
            let category = categoryListesi2[indexPath.row]
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "category2Hucre", for: indexPath) as! Music2CollectionViewCell

            cell.imageView.image = UIImage(named: category.categoryResimAdi!)
            cell.label1.text = category.categoryBaslik
            cell.label2.text = category.categoryAltBaslik
            return cell
            
        } else {
            let category = categoryListesi3[indexPath.row]
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "category3Hucre", for: indexPath) as! Music3CollectionViewCell

            cell.imageView.image = UIImage(named: category.categoryResimAdi!)
            cell.label1.text = category.categoryBaslik
            cell.label2.text = category.categoryAltBaslik
            return cell
        }
        
    }
    
}

