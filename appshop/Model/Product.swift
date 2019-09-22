//
//  Product.swift
//  appshop
//
//  Created by Dante on 2019/9/22.
//  Copyright © 2019 cinderella. All rights reserved.
//

import Foundation
struct Product {
    private(set) public var title:String
    private(set) public var price:String
    private(set) public var imageName:String
    
    //title is parameter name, not var title above
    init(title:String,price:String,imageName:String) {
        self.title=title
        self.price=price
        self.imageName=imageName
    
    }
}
