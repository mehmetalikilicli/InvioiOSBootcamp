//
//  DetayVC.swift
//  DetayliTableView
//
//  Created by Mehmet Ali Kılıçlı on 4.10.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var urunResim: UIImageView!
    @IBOutlet weak var urunFiyat: UILabel!
    
    var urun : Urunler?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let urun = urun {
            self.navigationItem.title = urun.urunAd
            urunResim.image = UIImage(named: urun.urunResimAd!)
            urunFiyat.text = "\(urun.urunFiyat) ₺"
        }

    }
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        
        if let urun = urun {
            print("\(urun.urunAd!) \(urun.urunFiyat!) ₺ fiyatla sepete eklendi")
        }
        
    }
    
    
}
