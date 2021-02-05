//
//  FinishPurchaseViewController.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/22/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

class FinishPurchaseViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var meal = Meals(mealType: "Lean Lunch", generalInfo: "The Lean lunch involves: ", entree: ["Chicken","Fish"], side: ["Rice", "Potato"])
    let finalLbl = "Thank you for purchasing "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = finalLbl + meal.mealType + "!"
        
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
