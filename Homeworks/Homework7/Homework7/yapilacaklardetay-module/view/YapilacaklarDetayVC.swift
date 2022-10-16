//
//  YapilacaklarDetayVC.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import UIKit

class YapilacaklarDetayVC: UIViewController {

    @IBOutlet weak var textFieldYapilacakIs: UITextField!
    
    var yapilacakIs:YapilacakIs?
    
    var yapilacakDetayPresenterNesnesi : ViewToPresenterYapilacakDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        YapilacaklarDetayRouter.createModule(ref: self)

        if let yapilacakIs = yapilacakIs {
            textFieldYapilacakIs.text = yapilacakIs.yapilacak_is
        }
         

    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let yi = textFieldYapilacakIs.text, let yapilacak = yapilacakIs {

            yapilacakDetayPresenterNesnesi?.guncelle(yapilacak_id: yapilacak.yapilacak_id!, yapilacak_is: yi)

        }
    }
    
   
    
}
