//
//  ViewController.swift
//  WidgetKullanimi
//
//  Created by Mehmet Ali Kılıçlı on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mSwitch:  UISwitch!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldGirdi: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttoYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    
    @IBAction func buttonResim1(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu")
    }
    @IBAction func buttonResim2(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")
        
    }
    @IBAction func switchKontrol(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch : On")
        } else {
            print("Switch : Off")
        }
    }
    
    @IBAction func buttonGoster(_ sender: Any) {
        
        print("Switch en son durum : \(mSwitch.isOn)")
        
    }
    
}

