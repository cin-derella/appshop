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
    
    private let BestSeller = [
        Product(title: "Becoming Superntural" , price:"¥0.99",imageName: "supernatural.jpg"),
        Product(title: "Relentless" , price:"¥3.99",imageName: "relentless.jpg"),
        Product(title: "Becoming Michelle Obama" , price:"¥1.99",imageName: "obama.jpg"),
        Product(title: "The Art of Racing in the Rain" , price:"¥1.99",imageName: "racing.jpg"),
        Product(title: "Never Split the Difference" , price:"¥1.99",imageName: "difference.jpg")
    ]

    private let SmallBusiness = [
        Product(title: "The Lean Startup" , price:"¥2.99",imageName: "lean.jpg")
     
    ]
    
    private let LanguageLearning = [
        Product(title: "Classic English Rhetoric" , price:"¥2.99",imageName: "rhetoric.jpg")
        
        ]
    
    private let GraphicDesign = [
        Product(title: "Change by Design" , price:"¥2.99",imageName: "design.jpg")
        
        ]
    
    func getCategories()->[Category]{
        return categories
        
    }
    
    func getScienceFiction()->[Product]{
        return ScienceFiction
        
    }
    
    func getBestSeller()->[Product]{
        return BestSeller
        
    }
    
    func getSmallBusiness()->[Product]{
        return SmallBusiness
        
    }
    
    func getLanguageLearning()->[Product]{
        return LanguageLearning
        
    }
    
    func getGraphicDesign()->[Product]{
        return GraphicDesign
        
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "Science Fiction":
            return getScienceFiction()
        case "Best Seller":
                return getBestSeller()
        case "Small Business":
            return getSmallBusiness()
        case "Language Learning":
            return getLanguageLearning()
        case "Graphic Design":
            return getGraphicDesign()
        default:
            return getScienceFiction()
        }
        
       
    }
}
