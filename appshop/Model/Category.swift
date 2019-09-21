//
//  Category.swift
//  appshop
//
//  Created by Dante on 2019/9/21.
//  Copyright © 2019 cinderella. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title:String
    private(set) public var imageName:String
    
    //title is parameter name, not var title above
    init(title:String,imageName:String) {
        self.title=title
        self.imageName=imageName
    }
}
