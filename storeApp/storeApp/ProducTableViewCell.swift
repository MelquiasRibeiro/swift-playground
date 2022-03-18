//
//  ProducTableViewCell.swift
//  storeApp
//
//  Created by Idwall Go Dev 012 on 16/03/22.
//

import UIKit

class ProducTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productColor: UILabel!
    @IBOutlet weak var productSize: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setup(image:String,name:String,color:String,size:String,price:String){
        
        productImage.image = UIImage(named: image)

        productName.text = name
        productColor.text = color
        productSize.text = size
        productPrice.text = price
    }

}
