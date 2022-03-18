//
//  DetailsViewController.swift
//  BottomNavigation
//
//  Created by Idwall Go Dev 012 on 17/03/22.
//

import UIKit

class DetailsViewController: UIViewController {
    static let identifier:String  = "DetailsViewController"
    @IBOutlet weak var bandName: UILabel!
    
    @IBOutlet weak var bandDescription: UILabel!
    @IBOutlet weak var bandImage: UIImageView!
    private var bandDetail: Band?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if (bandDetail != nil) {
            showData()
        }

    }
    
    func setData(data: Band)  {
        self.bandDetail = data
    }
  
    func showData(){
        bandName.text = bandDetail?.description
        bandImage.image = UIImage(named: bandDetail!.image)
        bandDescription.text = bandDetail?.name
    }

}
