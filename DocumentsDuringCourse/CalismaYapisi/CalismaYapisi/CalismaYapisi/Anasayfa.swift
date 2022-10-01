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
        //Sayfa yuklendiğinde bir kere çalışır.
        print("viewDidLoad çalıştı")
        
        labelAnasayfa.text = String(sayac)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear calisti")
        //Sayfa her görüntülendiğinde calisir
        //Sayfaya geri donuldugunde calisir
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear calisti")
        //Sayfa her kapatildiginde calisir
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraniGecis", sender: kisi)
    }
    
    @IBAction func buttonTikla(_ sender: Any) {
        sayac += 1
        labelAnasayfa.text = String(sayac)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare methodu çalıştı")
        if segue.identifier == "oyunEkraniGecis" {
            print("oyunEkraniGecis çalıştı")
            
            if let veri = sendpoper as? Kisiler {
                print("Veri : \(veri)")
                
                let gidilecekVC = segue.destination as! OyunEkrani
                gidilecekVC.kisi = veri
            }
        }
    }
    
    
    
    @IBAction func buttonEkle(_ sender: Any) {
print("Ekle calisti")    }
    
    @IBAction func buttonYap(_ sender: Any) {
        print("Yap calisti")
    }
}

