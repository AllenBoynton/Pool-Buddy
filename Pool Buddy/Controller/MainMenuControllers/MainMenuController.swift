//
//  MainMenuController.swift
//  Pool Buddy
//
//  Created by Allen Boynton on 11/19/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import UIKit

class MainMenuController: UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    private let equipmentCellId = "equipmentCellId"
    private let toolsCellId = "toolsCellId"
    private let chemicalCellId = "chemicalCellId"
    private let waterChemCellId = "waterChemCellId"
    private let maintCellId = "maintCellId"
    private let reminderCellId = "reminderCellId"
    private let calculatorCellId = "calculatorCellId"
    private let galleryCellId = "galleryCellId"
    private let serviceCellId = "serviceCellId"
    private let retailCellId = "retailCellId"
    
    private let poolCategories = PoolCategories()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Pool Buddy"
        setBackgroundImage()
        
        collectionView?.backgroundColor = UIColor(white: 1.0, alpha: 0.85)
        collectionView?.alwaysBounceVertical = true
        
        collectionView?.register(MainMenuCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func setBackgroundImage() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "poolwater2")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    func showAppDetail(_ app: PoolCategory) {
        let layout = UICollectionViewFlowLayout()
        let equipmentController = EquipmentController(collectionViewLayout: layout)
        equipmentController.app = app
        navigationController?.pushViewController(equipmentController, animated: true)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MainMenuCell
        let name = poolCategories.categoriesArray[indexPath.row]
        cell.menuNameLabel.text = name
        cell.imageView.image = UIImage(named: "\(name)")
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return poolCategories.categoriesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    }
}
