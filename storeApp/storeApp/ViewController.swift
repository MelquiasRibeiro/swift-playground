//
//  ViewController.swift
//  storeApp
//
//  Created by Idwall Go Dev 012 on 16/03/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    
    var products : [Sneakers]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegates()
        
        products = [Sneakers(productImage: "Nike1", productName: "Nike Kyrie 5", productColor: "black",                  productSize: "size 10.5",              productPrice: "$99"),
                    Sneakers(productImage: "Nike2", productName: "Nike Kyrie 5", productColor: "black", productSize: "size 10.5", productPrice: "$99"),
                    Sneakers(productImage: "Nike3", productName: "Nike Kyrie 5", productColor: "black", productSize: "size 10.5", productPrice: "$99"),
                    Sneakers(productImage: "Nike1", productName: "Nike Kyrie 5", productColor: "black", productSize: "size 10.5", productPrice: "$99")
        ]
    }

    private func delegates(){
        tableView.delegate = self;
        tableView.dataSource = self;
    }

    
}

extension ViewController:UITableViewDelegate {
    
}


extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let sneaker =  products[indexPath.row]

        
        let product = tableView.dequeueReusableCell(withIdentifier: "ProducTableViewCell", for: indexPath) as! ProducTableViewCell
        
        product.setup(image: sneaker.productImage, name: sneaker.productName, color: sneaker.productColor, size: sneaker.productSize, price: sneaker.productPrice)
        
        
        return product
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
        
    }
    
}

