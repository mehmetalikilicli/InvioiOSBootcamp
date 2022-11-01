//
//  ViewController.swift
//  BildirimKullanimi
//
//  Created by Mehmet Ali Kılıçlı on 16.10.2022.
//

import UIKit

class ViewController: UIViewController {

    var isinKontrol = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge], completionHandler: {
            (granted, error) in
            self.isinKontrol = granted
        })

    }


}
