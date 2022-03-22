//
//  ItemTableViewCell.swift
//  apiChallenge
//
//  Created by Idwall Go Dev 012 on 21/03/22.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var ownerName: UILabel!
    @IBOutlet weak var ownerImage: UIImageView!
    @IBOutlet weak var companyNAme: UILabel!
    
    static let identifier = "ItemTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUp(with model:Information){
        ownerName.text = model.name
        companyNAme.text = model.company.name
        ownerImage!.downloaded(from: URL(string: model.photo)!)
        ownerImage.layer.cornerRadius = ownerName.frame.size.height/2
        
    }
    
}
