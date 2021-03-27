//
//  Meals.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/5/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

// The Meals struct which contains the different variables which will be used in the menu
struct Meals {
    
    var mealType: String
    var generalInfo: String
    var entree: Array<String>
    var side: Array<String>
    var image = UIImage()
    
    // A constructor that will allow for new information to be added when making a new meal
    init(mealType : String, generalInfo : String, entree: Array<String>, side: Array<String>, image: UIImage) {
        self.mealType = mealType
        self.generalInfo = generalInfo
        self.entree = entree
        self.side = side
        self.image = image
    }
}
