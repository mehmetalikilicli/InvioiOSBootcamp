//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Mehmet Ali Kılıçlı on 25.09.2022.
//

import UIKit
// left = leading -> start
// right = trailing -> end

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Pizza"

        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        //Navigation bar daki on yuz rengini isimdeki renk, fontunu isimdeki font yap
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!, .font: UIFont(name: "Pacifico-Regular", size: 22)!]
        // ust kısımdaki pil, saati koyu temaya gore ayarla(.black)
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
    }
}

