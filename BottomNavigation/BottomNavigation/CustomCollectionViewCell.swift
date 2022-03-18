//
//  CustomCollectionViewCell.swift
//  BottomNavigation
//
//  Created by Idwall Go Dev 012 on 17/03/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var Categorycontiner: UIStackView!
    
    static let identifier: String = "CustomCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        
        Categorycontiner.layer.cornerRadius = 8
        
    }

    func setup(category:Category){
        categoryImage.image = UIImage(named: category.image)
        categoryLabel.text =  category.name
    }

}
