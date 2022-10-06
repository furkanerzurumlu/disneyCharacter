//
//  ViewController.swift
//  disneyCharacter
//
//  Created by Furkan Erzurumlu on 6.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homePageTitle: UILabel!
    
    @IBOutlet weak var CharacterCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLayout()
        
    }
    func setLayout(){
        homePageTitle.text = "Disney Character"
        homePageTitle.textColor = .white
    }
    

}

