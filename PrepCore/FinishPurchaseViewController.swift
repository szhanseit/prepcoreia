//
//  FinishPurchaseViewController.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/22/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

class FinishPurchaseViewController: UIViewController {
    
    // Outlets connecting to Storyboard elements on the final page
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var meal = Meals(mealType: "Lean Lunch", generalInfo: "The Lean lunch involves: ", entree: ["Chicken","Fish"], side: ["Rice", "Potato"], image: #imageLiteral(resourceName: "menuFoodImg2"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Confirms the  meal the user picks and thanks them!
        label.text = "Thank you for purchasing " + meal.mealType + "!"
        
        // Do any additional setup after loading the view.
    }
}
