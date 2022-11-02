//
//  FilmCollectionViewCell.swift
//  DetayliCollectionView
//
//  Created by Kasım on 4.10.2022.
//

import UIKit

protocol HucreProtocol {
    func buttonTiklandi(indexPath:IndexPath)
}

class FilmCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.buttonTiklandi(indexPath: indexPath!)
    }
}
