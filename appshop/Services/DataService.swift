//
//  DataService.swift
//  appshop
//
//  Created by Dante on 2019/9/21.
//  Copyright © 2019 cinderella. All rights reserved.
//

import Foundation

class DataService{
    //singleton pattern: only one copy
    static let instance = DataService()
    
    private let categories = [
        Category(title: "Science Fiction" , imageName: "science_fiction.png"),
        Category(title: "Small Business" , imageName: "small_business.png"),
        Category(title: "Language Learning" , imageName: "language_learning.png"),
        Category(title: "Graphic Design" , imageName: "graphic_design.png")
    ]
    
    
    
    func getCategories()->[Category]{
        return categories
        
    }
    
    
}
