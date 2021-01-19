//
//  Menu.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/8/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

struct Menu {
    let data = [
        Meals(mealType: "Lean Lunch", generalInfo: "The Lean lunch involves: ", entree: ["Chicken","Fish"], side: ["Rice", "Potato"]),
        Meals(mealType: "Bulk lunch", generalInfo: "The Bulk lunch involves: ", entree: ["Chicken","Beef"], side: ["Rice","Pasta"]),
        Meals(mealType: "High Calorie Lunch", generalInfo: "The High Calorie Lunch involves: ", entree: ["Beef, Fish"], side: ["Pasta"])
    ]
    
    
    //let data = ["Rice with chicken","Rice with beef","Rice with fish","Mashed potato with chicken","Mashed potato with beef","Mashed potato with fish","Pasta with chicken","Pasta with beef","Pasta with fish"]
}


