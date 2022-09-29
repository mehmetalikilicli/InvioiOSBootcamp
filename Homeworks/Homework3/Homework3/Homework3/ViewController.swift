//
//  ViewController.swift
//  Homework3
//
//  Created by Mehmet Ali Kılıçlı on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Abone Ol"

        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "yaziRenk2")
        //Navigation bar daki on yuz rengini isimdeki renk, fontunu isimdeki font yap
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!, .font: UIFont(name: "SourceSansPro-Regular", size: 22)!]
        // ust kısımdaki pil, saati koyu temaya gore ayarla(.black)
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }

}

