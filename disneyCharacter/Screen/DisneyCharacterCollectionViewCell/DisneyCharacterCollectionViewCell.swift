//
//  DisneyCharacterCollectionViewCell.swift
//  disneyCharacter
//
//  Created by Furkan Erzurumlu on 6.10.2022.
//

import UIKit



class DisneyCharacterCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var firstLayer: UIView!
    
    @IBOutlet weak var disneyCharacterImage: UIImageView!
    
    @IBOutlet weak var disneyCharacterName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code,
        setCellLayout()
    }
    func setCellLayout(){
        firstLayer.layer.cornerRadius = 10
        disneyCharacterImage.layer.borderWidth = 3
        disneyCharacterImage.layer.cornerRadius = 10
        disneyCharacterName.textColor = .red
        
    }
}



extension DisneyCharacterCollectionViewCell{
    static var identifier: String{
        return String(describing: self)
    }
    
    static var nibName: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
