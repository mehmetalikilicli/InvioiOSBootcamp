//
//  ViewController.swift
//  DetayliTableView
//
//  Created by Mehmet Ali Kılıçlı on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urunlerTableView: UITableView!
    
    var urunlerListe = [Urunler]()
    override func viewDidLoad() {
        super.viewDidLoad()

        let urun1 = Urunler(urunId: 1, urunAd: "Macbook Pro 14", urunResimAd: "bilgisayar", urunFiyat: 43999)
        let urun2 = Urunler(urunId: 2, urunAd: "Rayban Club Master", urunResimAd: "gozluk", urunFiyat: 1600)
        let urun3 = Urunler(urunId: 3, urunAd: "Sony Series", urunResimAd: "kulaklik", urunFiyat: 2199)
        let urun4 = Urunler(urunId: 4, urunAd: "Gio Armani", urunResimAd: "parfum", urunFiyat: 1799)
        let urun5 = Urunler(urunId: 5, urunAd: "Casio X Series", urunResimAd: "saat", urunFiyat: 3999)
        let urun6 = Urunler(urunId: 6, urunAd: "Dyson V8", urunResimAd: "supurge", urunFiyat: 8799)
        let urun7 = Urunler(urunId: 7, urunAd: "Iphone 13", urunResimAd: "telefon", urunFiyat: 27999)

        urunlerListe.append(urun1)
        urunlerListe.append(urun2)
        urunlerListe.append(urun3)
        urunlerListe.append(urun4)
        urunlerListe.append(urun5)
        urunlerListe.append(urun6)
        urunlerListe.append(urun7)

        urunlerTableView.delegate = self
        urunlerTableView.dataSource = self
        
        urunlerTableView.separatorColor = UIColor(white: 0.95, alpha: 1)
        

    }


}


extension ViewController : UITableViewDelegate, UITableViewDataSource, HucreProtocol {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urunlerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let urun = urunlerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "urunHucre") as! UrunTableViewCell
        
        cell.urunResimImageView.image = UIImage(named: urun.urunResimAd!)
        cell.urunAdLabel.text = urun.urunAd
        cell.urunFiyatLabel.text = "\(urun.urunFiyat!) ₺"
        
        cell.backgroundColor = UIColor(white: 0.95, alpha: 1)
        cell.hucreArkaplan.layer.cornerRadius = 10.0
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        cell.selectionStyle = .none
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let urun = urunlerListe[indexPath.row]
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") {(contextalaction, view, bool) in
            print("\(urun.urunAd!) silindi")
            
        }
        
        let duzenleAction = UIContextualAction(style: .normal, title: "Duzenlendi") {(contextalaction, view, bool) in
            print("\(urun.urunAd!) duzenlendi")
            
        }
        
        return UISwipeActionsConfiguration(actions: [silAction,duzenleAction])

    }
    
    
    func buttonTiklandi(indexPath: IndexPath) {
        let urun = urunlerListe[indexPath.row]
        print("\(urun.urunAd) sepete eklendi")
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let urun = urunlerListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: urun)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let urun = sender as? Urunler {
                let gidilecekVC = segue.destination as! DetayVC
                gidilecekVC.urun = urun
            }
        }
    }
    
}
