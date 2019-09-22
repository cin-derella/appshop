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
        Category(title: "Best Seller" , imageName: "best_seller.png"),
        Category(title: "Science Fiction" , imageName: "science_fiction.png"),
        Category(title: "Small Business" , imageName: "small_business.png"),
        Category(title: "Language Learning" , imageName: "language_learning.png"),
        Category(title: "Graphic Design" , imageName: "graphic_design.png")
    ]
    
    private let ScienceFiction = [
        Product(title: "Three-Body Problem Cixin Liu" , price:"¥1.99",imageName: "threebody.jpg"),
        Product(title: "The Dark Forest Cixin Liu" , price:"¥1.99",imageName: "darkforest.jpg"),
        Product(title: "Death's Ends Cixin Liu" , price:"¥1.99",imageName: "deathsend.jpg"),
        Product(title: "Ball Lightning Cixin Liu" , price:"¥1.99",imageName: "balllightning.jpg"),
        Product(title: "Supernova Era Cixin Liu" , price:"¥1.99",imageName: "supernova.jpg")
    ]
    
    

    
    func getCategories()->[Category]{
        return categories
        
    }
    
    func getScienceFiction()->[Product]{
        return ScienceFiction
        
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SCIENCEFICTION":
            return getScienceFiction()
        default:
            return getScienceFiction()
        }
        
       
    }
}
