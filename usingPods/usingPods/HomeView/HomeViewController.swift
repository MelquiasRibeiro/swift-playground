//
//  HomeViewController.swift
//  usingPods
//
//  Created by Idwall Go Dev 012 on 22/03/22.
//

import UIKit

class HomeViewController: UIViewController {

    private var repos = [Item](){
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
            let service = FetchGitHubServices()
            service.fetchAll{
                result in
                switch result {
                case .success(let informations):
                    print("information: \(informations)")
                    self.repos = informations
                case .failure(let error):
                    print(error.localizedDescription)
                }
                
            }
    }

}

extension HomeViewController:UITableViewDelegate {
    
}

extension HomeViewController:UITableViewDataSource {
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return repos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell  = tableView.dequeueReusableCell(withIdentifier: ItemTableViewCell.identifier, for: indexPath) as? ItemTableViewCell else  {return UITableViewCell ()}
                
        let repo = repos[indexPath.row]

        cell.setup(with: repo)
        
        return cell
    }
    
    
}
