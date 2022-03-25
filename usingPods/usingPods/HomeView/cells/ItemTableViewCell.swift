import UIKit
import Kingfisher

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var repoImage: UIImageView!
    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var user: UILabel!
    
    static let identifier = "ItemTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(with model: Item){
        repoName.text = model.name
        user.text = model.owner.login  
        let url = URL(string: model.owner.avatarURL)
        repoImage.kf.setImage(with: url)
    }
    
}
