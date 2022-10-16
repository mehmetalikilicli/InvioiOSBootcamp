//
//  ViewController.swift
//  Homework7
//
//  Created by Mehmet Ali Kılıçlı on 15.10.2022.
//

import UIKit

class AnasayfaVC: UIViewController {
    
    
    @IBOutlet weak var yapilacakTableVeiew: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var yapilacakListe = [YapilacakIs]()
    
    var anasayfaPresenterNesnesi : ViewToPresenterAnasayfaProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        yapilacakTableVeiew.delegate = self
        yapilacakTableVeiew.dataSource = self
        
        veriTabaniKopyala()
        
        AnasayfaRouter.createModule(ref: self )
        
    }

    //sayfa her açıldığında çalışır
    override func viewWillAppear(_ animated: Bool) {
        anasayfaPresenterNesnesi?.yapilacaklarYukle()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let yapilacak = sender as? YapilacakIs {
                let gidilecekVC = segue.destination as! YapilacaklarDetayVC
                gidilecekVC.yapilacakIs = yapilacak
            }
        }
    }
    
    func veriTabaniKopyala() {
        let bundleYolu = Bundle.main.path(forResource: "yapilacaklar", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        let fileManager = FileManager.default
        
        if fileManager.fileExists(atPath: kopyalanacakYer.path) {
            print("Veri Tabanı Daha Once Kopyalanmış")
        } else {
            do {
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            } catch {
                print(error)
            }
        }
    }
    
}

extension AnasayfaVC : PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(yapilacaklarListesi: [YapilacakIs]) {
        self.yapilacakListe = yapilacaklarListesi
        self.yapilacakTableVeiew.reloadData()
        
    }
}

extension AnasayfaVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        anasayfaPresenterNesnesi?.ara(aramaKelimesi: searchText )

    }
}

extension AnasayfaVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yapilacakListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yapilacak = yapilacakListe[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "yapilacaklarHucre") as! TableViewHucre
        hucre.yapilacakLabel.text = "\(yapilacak.yapilacak_is!)"
        return hucre
    }
    
    //Seçilen son satir üstü animasyonlu kalıyor onu kaldırıyoruz.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let yapilacak = yapilacakListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: yapilacak)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") { (contextualAction, view, bool) in
            let yapilacak = self.yapilacakListe[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(yapilacak.yapilacak_is!) silinecek emin misiniz?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){ action in
                self.anasayfaPresenterNesnesi?.sil(yapilacak_id: yapilacak.yapilacak_id!)
                
            }
            alert.addAction(evetAction)
            self.present(alert, animated: true)
            
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}
