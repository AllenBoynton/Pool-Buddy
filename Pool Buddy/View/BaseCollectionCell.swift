//
//  BaseCollectionCell.swift
//  Pool Buddy
//
//  Created by Allen Boynton on 11/20/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import UIKit

class BaseCollectionCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
    }
}
