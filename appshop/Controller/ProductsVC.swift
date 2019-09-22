//
//  ProductsVC.swift
//  appshop
//
//  Created by Dante on 2019/9/22.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {

    private(set) public var products = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func initProducts(category:Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        
    }

    
}
