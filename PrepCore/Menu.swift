//
//  Menu.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/8/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

// The Menu struct which contains the information and data regarding the meals
// More meals can be added into to the array to create an even bigger menu!
struct Menu {
    let data = [
        Meals(mealType: "Lean Lunch", generalInfo: "The Lean lunch meal, less calories and fat, for active athletes!", entree: ["Chicken","Fish"], side: ["Rice", "Potato"], image: #imageLiteral(resourceName: "menuFoodImg2")),
        Meals(mealType: "Bulk lunch", generalInfo: "The Bulk lunch meal, more calories and fat, to gain mass!", entree: ["Chicken","Beef"], side: ["Rice","Pasta"], image: #imageLiteral(resourceName: "MenuFoodImage")),
        Meals(mealType: "High Calorie Lunch", generalInfo: "The High Calorie Lunch meal, large amount of calories, for energy!", entree: ["Beef", "Fish"], side: ["Pasta"], image: #imageLiteral(resourceName: "menuFoodImg"))
    ]
}


