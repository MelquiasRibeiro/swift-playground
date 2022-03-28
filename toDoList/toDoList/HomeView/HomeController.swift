import UIKit

class HomeController: UIViewController {
    lazy var tableview: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tasks"
        view.backgroundColor = .white
        view.addSubview(tableview)
        self.configTableView()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(TaskTableViewCell.self, forCellReuseIdentifier: TaskTableViewCell.identifier)

    }
    
    private func configTableView(){
        NSLayoutConstraint.activate([
                tableview.topAnchor.constraint(equalTo: view.topAnchor),
                tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }
    
    
}

extension HomeController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TaskTableViewCell.identifier, for: indexPath) as? TaskTableViewCell else {
                return UITableViewCell()
            }
            
            return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    
}
