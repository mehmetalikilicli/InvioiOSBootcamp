//
//  FilmCollectionViewCell.swift
//  DetayliCollectionView
//
//  Created by Mehmet Ali Kılıçlı on 4.10.2022.
//

import UIKit

protocol HucreProtocol {
    func buttonTiklandi(indexPath : IndexPath)
}



class FilmCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var filmAdLabel: UILabel!
    
    @IBOutlet weak var filmImageView: UIImageView!
    
    @IBOutlet weak var filmFiyatLable: UILabel!
    
    var hucreProtocol : HucreProtocol?
    var indexPath : IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        
        hucreProtocol?.buttonTiklandi(indexPath: indexPath!)
        
    }
    
    
}
