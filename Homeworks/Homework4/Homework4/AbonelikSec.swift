//
//  AbonelikSec.swift
//  Homework4
//
//  Created by Mehmet Ali Kılıçlı on 1.10.2022.
//

import UIKit

class AbonelikSec: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func birAylikTiklandi(_ sender: Any) {
        
        performSegue(withIdentifier: "toOdemePlani", sender: nil)
        
        
    }
    
    @IBAction func yillikPlanTiklandi(_ sender: Any) {
        performSegue(withIdentifier: "toOdemePlani", sender: nil)
    }
    
}
