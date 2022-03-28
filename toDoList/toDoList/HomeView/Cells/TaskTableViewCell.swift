import UIKit

class TaskTableViewCell: UITableViewCell {
    static let identifier:String = "TaskTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(iconImageView)
        self.configIconImageView()
        addSubview(taskName)
        self.configtTaskName()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var iconImageView: UIImageView = {
            let icon = UIImageView()
            icon.image = UIImage(systemName: "checkmark.circle.fill")
            icon.contentMode = .scaleAspectFit
            icon.tintColor = .purple
            icon.translatesAutoresizingMaskIntoConstraints = false
            return icon
    }()
    
    private func configIconImageView(){
        NSLayoutConstraint.activate([
                iconImageView.widthAnchor.constraint(equalToConstant: 30),
                iconImageView.heightAnchor.constraint(equalToConstant: 30),
                iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])
    }
    
    lazy var taskName: UILabel = {
            let name = UILabel()
            name.text = "Task Name"
            name.textColor = .label
            name.font = UIFont
            return name
    }()

    private func configtTaskName(){
        NSLayoutConstraint.activate([
                iconImageView.widthAnchor.constraint(equalToConstant: 30),
                iconImageView.heightAnchor.constraint(equalToConstant: 30),
                iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])
    }


}
