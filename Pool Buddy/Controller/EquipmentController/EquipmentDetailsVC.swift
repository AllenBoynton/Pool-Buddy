//
//  EquipmentDetailsVC.swift
//  Pool Buddy
//
//  Created by Allen Boynton on 11/20/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import UIKit

class EquipmentDetailsVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let headerId = "headerId"
    private let cellId = "cellId"
    private let descriptionCellId = "descriptionCellId"
    
    var poolData: PoolData? {
        didSet {
            
            navigationItem.title = poolData?.label
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.alwaysBounceVertical = true
        collectionView?.backgroundColor = .white
        
//        collectionView?.register(AppDetailHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
//        collectionView?.register(ScreenshotsCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(DescriptionCell.self, forCellWithReuseIdentifier: descriptionCellId)
    }
    
    // Creates text and text style with spacing for entire textView. Prevents needing multiple labels/textV
    private func descriptionAttributedText() -> NSAttributedString {
        // Creates text attribute for first line section
        let attributedText = NSMutableAttributedString(string: "Description\n", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14)])
        
        // Creates paragraph spacing
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 10
        
        // Creates the following text with text length
        let range = NSMakeRange(0, String(describing: attributedText).count)
        attributedText.addAttribute(NSAttributedStringKey.paragraphStyle, value: style, range: range)
        
        if let desc = poolData?.description {
            attributedText.append(NSAttributedString(string: desc, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 11), NSAttributedStringKey.foregroundColor: UIColor.darkGray]))
        }
        
        return attributedText
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if indexPath.item == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: descriptionCellId, for: indexPath) as! DescriptionCell

            cell.descriptionTextView.attributedText = descriptionAttributedText()

//            return cell
//        }

//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ScreenshotsCell
//        cell.app = app

        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // Creates proper spacing for height of section height
        if indexPath.item == 1 {
            let dummySize = CGSize(width: view.frame.width - 14 - 14, height: 1000)
            let options = NSStringDrawingOptions.usesFontLeading.union(NSStringDrawingOptions.usesLineFragmentOrigin)
            let rect = descriptionAttributedText().boundingRect(with: dummySize, options: options, context: nil)
            return CGSize(width: view.frame.width, height: rect.height + 30)
        }
        return CGSize(width: view.frame.width, height: 200)
    }
}
