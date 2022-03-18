//
//  CustomTableViewCell.swift
//  BottomNavigation
//
//  Created by Idwall Go Dev 012 on 17/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var bandName: UILabel!
    @IBOutlet weak var bandImage: UIImageView!
    @IBOutlet weak var bandDuration: UILabel!
    @IBOutlet weak var bandGender: UILabel!
    
    static let identifier:String  = "CustomTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(band:Band){
        bandImage.image = UIImage(named: band.image)
        bandName.text = band.name
        bandDuration.text = band.duration
        bandGender.text = band.genre
    }
}
