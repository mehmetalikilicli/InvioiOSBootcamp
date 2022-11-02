//
//  UrunTableViewCell.swift
//  DetayliTableView
//
//  Created by Kasım on 4.10.2022.
//

import UIKit

protocol HucreProtocol {
    func buttonTiklandi(indexPath:IndexPath)
}

class UrunTableViewCell: UITableViewCell {

    @IBOutlet weak var hucreArkaplan: UIView!
    @IBOutlet weak var urunResimImageView: UIImageView!
    @IBOutlet weak var urunAdLabel: UILabel!
    @IBOutlet weak var urunFiyatLabel: UILabel!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.buttonTiklandi(indexPath: indexPath!)
    }
}
