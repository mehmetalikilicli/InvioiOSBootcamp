//
//  ViewController.swift
//  IntResimKullanimi
//
//  Created by Mehmet Ali Kılıçlı on 13.10.2022.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var ivResim: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        resimGosterKingfisher(resimAdi: "ayran.png")

    }

    
    @IBAction func buttonResim1(_ sender: Any) {
        resimGosterKingfisher(resimAdi: "su.png")
    }
    
    @IBAction func buttonResim2(_ sender: Any) {
        resimGosterKingfisher(resimAdi: "kofte.png")
    }
    
    func resimGosterURLSession(resimAdi:String) {
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(resimAdi)"){
            DispatchQueue.global().async {
                if let data = try? Data(contentsOf: url) {
                    DispatchQueue.main.async {
                        self.ivResim.image = UIImage(data: data)
                    }
                }
            }
        }
    }
    
    func resimGosterKingfisher(resimAdi:String) {
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(resimAdi)"){
            DispatchQueue.main.async {
                self.ivResim.kf.setImage(with: url)
            }
            
        }
    }
    
    
    
}

