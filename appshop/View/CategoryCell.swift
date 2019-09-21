//
//  CategoryCell.swift
//  appshop
//
//  Created by Dante on 2019/9/21.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit

@IBDesignable
class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category:Category) {
        categoryImage.image=UIImage(named: category.imageName)
        categoryTitle.text=category.title
        
    }

}
