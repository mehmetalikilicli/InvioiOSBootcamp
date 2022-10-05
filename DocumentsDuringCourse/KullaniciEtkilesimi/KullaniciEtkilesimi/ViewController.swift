//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Mehmet Ali Kılıçlı on 2.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func butonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) {
            action in
            print("Iptal secildi")
        }
        
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) {
            action in
            print("Tamam secildi")
        }
        
        alertController.addAction(tamamAction)
        
        
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func butonActionSheet(_ sender: Any) {
        
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) {
            action in
            print("Iptal secildi")
        }
        
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) {
            action in
            print("Tamam secildi")
        }
        
        alertController.addAction(tamamAction)
        
        
        
        self.present(alertController, animated: true)
        
    }
    
    @IBAction func butonOzelAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField{ textField in
            textField.placeholder = "Veri giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
            
            
        }
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive) {
            action in
            let textField = alertController.textFields![0] as UITextField
            
            if let alinanVeri = textField.text {
                print("Veri : \(alinanVeri)")
            }
        }
        
        alertController.addAction(kaydetAction)
        self.present(alertController, animated: true)
        
    }
}

