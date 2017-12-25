//
//  MainMenuCell.swift
//  Pool Buddy
//
//  Created by Allen Boynton on 11/19/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import UIKit

class MainMenuCell: BaseCollectionCell {
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 16
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let menuNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Category Name"
        label.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 24)
        return label
    }()
    
    let dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()
    
    override func setupViews() {
        
        addSubview(imageView)
        addSubview(menuNameLabel)
        addSubview(dividerLineView)
        
        addConstraintsWithFormat(format: "H:|-14-[v0(80)]-14-[v1]", views: imageView, menuNameLabel)
        addConstraintsWithFormat(format: "V:|[v0(80)]", views: imageView)
        
        addConstraintsWithFormat(format: "V:|-32-[v0]", views: menuNameLabel)
        
        addConstraintsWithFormat(format: "H:|-14-[v0]|", views: dividerLineView)
        addConstraintsWithFormat(format: "V:[v0(1)]-2-|", views: dividerLineView)
    }
}
