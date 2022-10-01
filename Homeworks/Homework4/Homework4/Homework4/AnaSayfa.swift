//
//  AnaSayfa.swift
//  Homework4
//
//  Created by Mehmet Ali Kılıçlı on 1.10.2022.
//

import UIKit

class AnaSayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func abonlikSecTiklandi(_ sender: Any) {
        
        performSegue(withIdentifier: "toAbonelikSec", sender: nil)
        
        
    }
    
    @IBAction func ogretmenSecTiklandi(_ sender: Any) {
        
        performSegue(withIdentifier: "toOgretmenSec", sender: nil)
    }
}
