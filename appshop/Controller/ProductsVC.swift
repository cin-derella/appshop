//
//  ProductsVC.swift
//  appshop
//
//  Created by Dante on 2019/9/22.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
  
    
    @IBOutlet weak var productsCollection:UICollectionView!

    @IBOutlet weak var VCName: UILabel!
    var categoryName: String = ""
    
    
    private(set) public var products = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       productsCollection.dataSource = self
       productsCollection.delegate = self
    }
    

    func initProducts(category:Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        navigationItem.title=category.title
        self.categoryName = category.title
        //VCName = UILabel()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        VCName.text = "I Love " + self.categoryName + "!"
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell",for:indexPath)as? ProductCell
        if cell != nil {
            let product = products[indexPath.row]
            cell?.updateViews(product:product)
            
            return cell!
            
        }
        return ProductCell()
    }
    

    
}
