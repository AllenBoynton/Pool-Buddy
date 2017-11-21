//
//  EquipmentController.swift
//  Pool Buddy
//
//  Created by Allen Boynton on 11/19/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import UIKit

class EquipmentController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let mainMenuController = MainMenuController()
    
    private let cellId = "cellId"
    
    // MARK: - Data Source
    
    // Gives us access to the pool product inventory info listed in PoolCategory
    lazy var poolEquipment: [PoolCategory] = {
        return PoolCategory.poolEquipment()
    }()
    
    var app: PoolCategory? {
        didSet {
            
            navigationItem.title = app?.group
            print("\(String(describing: app?.group))")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationItem.title = "Equipment"
        mainMenuController.setBackgroundImage()
        
        collectionView?.alwaysBounceVertical = true
        collectionView?.backgroundColor = .white
        
        collectionView?.register(EquipmentCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return poolEquipment.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let poolCategory = poolEquipment[section]
        return poolCategory.products.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: EquipmentCell
        
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! EquipmentCell
        
        let poolCategory = poolEquipment[indexPath.section]
        print(poolCategory)
        let product = poolCategory.products[indexPath.item]
        
        let poolData = PoolData(label: product.label, image: product.image, label2: product.label2, image2: product.image2, description: product.description)
        cell.poolData = poolData
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 100)
    }
}
