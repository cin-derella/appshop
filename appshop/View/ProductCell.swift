//
//  ProductCell.swift
//  appshop
//
//  Created by Dante on 2019/9/22.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    func updateViews(product:Product){
        productImage.image=UIImage(named:product.imageName)
        productTitle.text=product.title
        productPrice.text=product.price
    }
}
