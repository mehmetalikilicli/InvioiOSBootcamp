//
//  YapilacaklarKayitVC.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import UIKit

class YapilacaklarKayitVC: UIViewController {

    @IBOutlet weak var textFieldYapilacakIs: UITextField!
    
    var yapilacakKayitPresenterNesnesi : ViewToPresenterYapilacaklarKayitProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        YapilacaklarKayitRouter.createModule(ref: self)

    }
    


    @IBAction func buttonEkle(_ sender: Any) {
        if let yi = textFieldYapilacakIs.text {

            yapilacakKayitPresenterNesnesi?.ekle(yapilacak_is: yi)

        }
    }
    
    
}
