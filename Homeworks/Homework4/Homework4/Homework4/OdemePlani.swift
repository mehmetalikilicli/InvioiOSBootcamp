//
//  OdemePlani.swift
//  Homework4
//
//  Created by Mehmet Ali Kılıçlı on 1.10.2022.
//

import UIKit

class OdemePlani: UIViewController {

    @IBOutlet weak var kartNumarasiTextField: UITextField!
    @IBOutlet weak var kartUzerindekiIsımTextField: UITextField!
    
    @IBOutlet weak var secure3DSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func DSecureSwitch(_ sender: Any) {
        
    }
    
    @IBAction func secure3DSwitchKontrol(_ sender: UISwitch) {
        
        
    }
    
    @IBAction func odemeYapTiklandi(_ sender: Any) {
        
        if !secure3DSwitch.isOn {
            uyariGoster(baslik: "Uyarı!", mesaj: "3D Secure kullanmak zorundasiniz!")
        } else if kartNumarasiTextField.text == "" || kartUzerindekiIsımTextField.text == "" {
            uyariGoster(baslik: "Uyarı!", mesaj: "Kart numarası/ Kart üzerindeki isim boş olamaz!")
        } else {
            performSegue(withIdentifier: "fromOdemePlaniToDers", sender: nil)
        }
        
        
    }
    
    func uyariGoster(baslik: String, mesaj: String) {
        let uyari = UIAlertController(title: baslik, message: mesaj, preferredStyle: UIAlertController.Style.alert)
        let okButonu = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        uyari.addAction(okButonu)
        self.present(uyari, animated: true, completion: nil)
    }
    
}
