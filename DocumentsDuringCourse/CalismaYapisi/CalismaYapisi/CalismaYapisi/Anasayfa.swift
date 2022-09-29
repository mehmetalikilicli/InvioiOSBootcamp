//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Mehmet Ali Kılıçlı on 27.09.2022.
//

import UIKit

class Anasayfa: UIViewController {
    
    var sayac = 0

    
    @IBOutlet weak var labelAnasayfa: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelAnasayfa.text = String(sayac)


    }

    @IBAction func buttonTikla(_ sender: Any) {
        
            sayac += 1
        labelAnasayfa.text = String(sayac)
        
    }
    
}

