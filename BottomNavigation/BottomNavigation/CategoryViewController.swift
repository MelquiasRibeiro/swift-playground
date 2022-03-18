//
//  CategoryViewController.swift
//  BottomNavigation
//
//  Created by Idwall Go Dev 012 on 17/03/22.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var categories: [Category] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        delegates()
        
        registerCollectionView()
        
        categories = Category.categoriesInfo()
        
        collectionLayout()
    
    }
    
    private func delegates(){
        collectionView.delegate = self
        collectionView.dataSource = self
    }
//
    private func registerCollectionView(){
        let nib = UINib(nibName: CustomCollectionViewCell.identifier, bundle: nil)
        
        collectionView.register(nib, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
    
    func collectionLayout(){
        let layout = UICollectionViewFlowLayout()
        let size = Int(view.frame.size.width/2)
        
        layout.itemSize = CGSize(width: size - 15 , height: size)
        layout.minimumLineSpacing = 10
        
        collectionView.collectionViewLayout = layout
        
    }
    
}


extension CategoryViewController:UICollectionViewDelegate {
    
}

extension CategoryViewController:UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.setup(category: categories[indexPath.row])
        
        return cell
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int ) -> Int {
    
        return categories.count
        
    }
    
    
}
