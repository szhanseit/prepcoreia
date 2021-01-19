//
//  Meals.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/5/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

struct Meals {
    
    var mealType: String
    var generalInfo: String
    var entree: Array<String>
    var side: Array<String>
    var image = UIImage(named: "menuFoodImg")
    
    init(mealType : String, generalInfo : String, entree: Array<String>, side: Array<String>) {
        self.mealType = mealType
        self.generalInfo = generalInfo
        self.entree = entree
        self.side = side
    }
    

}
