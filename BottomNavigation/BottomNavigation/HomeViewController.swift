//
//  HomeViewController.swift
//  BottomNavigation
//
//  Created by Idwall Go Dev 012 on 17/03/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var bands: [Band] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        delegates()
        registerTableViewCell()
        bands = Band.bandsInfo()
    }
    
    private func delegates(){
        tableView.delegate = self
        tableView.dataSource = self

    }

    private func registerTableViewCell(){
        let nib = UINib(nibName: CustomTableViewCell.identifier, bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailsViewController" {
            if let detailsViewController = segue.destination as? DetailsViewController {
                guard let data = sender as? Band else {return}
                detailsViewController.setData(data: data)
                print("foi \(detailsViewController)")
            }
        }

    }
    
}

extension HomeViewController:UITableViewDelegate{
    
}

extension HomeViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return bands.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        guard  let  cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        
        cell.setup(band: bands[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sender = bands[indexPath.row]
        print(sender)
        performSegue(withIdentifier: "DetailsViewController", sender: sender)
    }
}
