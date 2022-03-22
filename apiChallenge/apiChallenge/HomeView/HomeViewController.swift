import UIKit

class HomeViewController: UIViewController {

   // private var informations = [Information(
   //     id: 1,
    //    name: "Steve Jobs",
    //    photo: "https://t.ctcdn.com.br/s2JXi8cJqXFQE7SAkzV2IBz8AKw=/400x400/smart/filters:format(webp)/i490761.jpeg",
        //company:Company(name: "apple")
      //)]
    private var informations = [Information](){
        didSet{
            DispatchQueue.main.async {
                self.tableView.reloadData()
        }
      }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegates()
        registerCells()
        fetchInformation()
    }
    
    
    func delegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func registerCells(){
        let nib = UINib(nibName: ItemTableViewCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: ItemTableViewCell.identifier)
    }
    
    private func fetchInformation(){
        let service = FetchInformationService()
        service.fetchAll{
            result in
            switch result {
            case .success(let informations):
                print(informations)
                self.informations = informations
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }
    
}

extension HomeViewController: UITableViewDelegate{
    
}

extension HomeViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return informations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ItemTableViewCell.identifier, for: indexPath) as? ItemTableViewCell else {return UITableViewCell()}
        
        let information = informations[indexPath.row]
        
        cell.setUp(with: information)
        
        return cell
        
        
    }
    
    
    
    
}
