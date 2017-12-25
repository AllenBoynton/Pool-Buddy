//
//  EquipmentCell.swift
//  Pool Buddy
//
//  Created by Allen Boynton on 11/20/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import UIKit

class EquipmentCell: BaseCollectionCell {
        
    var poolData: PoolData? {
        didSet {
            if let name = poolData?.label {
                nameLabel.text = name
            }
            
            if let image = poolData?.image {
                imageView.image = UIImage(named: image)
            }
        }
    }
    
//    func configureCell(_ poolData: PoolData) {
//        self.poolData = poolData
//
//        imageView.image = UIImage(named: "\(self.poolData.image)")
//        nameLabel.text = self.poolData.label
//    }
    
    let imageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override func setupViews() {
        
        addSubview(nameLabel)
        
        addConstraintsWithFormat(format: "H:|-14-[v0(80)]-14-[v1]", views: imageView, nameLabel)
        addConstraintsWithFormat(format: "V:|[v0(80)]", views: imageView)
        addConstraintsWithFormat(format: "V:|-32-[v0]", views: nameLabel)
    }
}
