//
//  MainMenuCell.swift
//  Pool Buddy
//
//  Created by Allen Boynton on 11/19/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import UIKit

class MainMenuCell: BaseCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "equipment1")
        iv.layer.cornerRadius = 16
        iv.layer.borderColor = UIColor.black.cgColor
        iv.layer.borderWidth = 1
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    override func setupViews() {
        
        addSubview(imageView)
        addSubview(dividerLineView)
        
        addConstraintsWithFormat(format: "H:|[v0(80)]|", views: imageView)
        addConstraintsWithFormat(format: "V:|[v0(80)]|", views: imageView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: dividerLineView)
        addConstraintsWithFormat(format: "V:[v0(1)]|", views: dividerLineView)
    }
}
