//
//  ViewController.swift
//  disneyCharacter
//
//  Created by Furkan Erzurumlu on 6.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homePageTitle: UILabel!
    @IBOutlet weak var characterCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLayout()
        
        characterCollectionView.register(DisneyCharacterCollectionViewCell.nibName, forCellWithReuseIdentifier: DisneyCharacterCollectionViewCell.identifier)
        
        characterCollectionView.delegate = self
        characterCollectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        characterCollectionView.setCollectionViewLayout(layout, animated: true)
        
        
    }
    func setLayout(){
        homePageTitle.text = "Disney Character"
        homePageTitle.textColor = .white
    }
    

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = characterCollectionView.dequeueReusableCell(withReuseIdentifier: DisneyCharacterCollectionViewCell.identifier, for: indexPath) as! DisneyCharacterCollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1.0, left: 1.5, bottom: 1.0, right: 1.5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = characterCollectionView.frame.width/2 - lay.minimumInteritemSpacing
        return CGSize(width:widthPerItem, height:100)
    }
}
