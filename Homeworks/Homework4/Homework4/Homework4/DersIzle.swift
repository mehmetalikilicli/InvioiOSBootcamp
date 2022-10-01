//
//  DersIzle.swift
//  Homework4
//
//  Created by Mehmet Ali Kılıçlı on 1.10.2022.
//

import UIKit

class DersIzle: UIViewController {
    
    var egitmen : Ogretmen = Ogretmen(isim: "Kasım Adalan", aciklama: "#ios, #android, #flutter, #softwaretrainer, and #softwaredeveloper", image: UIImage(named: "kasimAdalan")!)

    @IBOutlet weak var labelEgitmenAdi: UILabel!
    
    @IBOutlet weak var dersIzleImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()


        labelEgitmenAdi.text = egitmen.isim
        dersIzleImageView.image = egitmen.image

    }

    @IBAction func anaSayfayaDon(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)

    }
}
