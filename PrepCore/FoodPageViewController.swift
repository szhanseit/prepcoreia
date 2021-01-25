//
//  FoodPageViewController.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/5/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

class FoodPageViewContoller: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var mealTitle: UILabel!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var selectEntree: UILabel!
    @IBOutlet weak var selectSide: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var tableViewTwo: UITableView!
    @IBOutlet weak var purchaseButton: UIButton!
    
    var meal = Meals(mealType: "Lean Lunch", generalInfo: "The Lean lunch involves: ", entree: ["Chicken","Fish"], side: ["Rice", "Potato"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealTitle.text = meal.mealType
        info.text = meal.generalInfo
        image.image = UIImage(named: "menuFoodImg")
        
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
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

extension FoodPageViewContoller: UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return meal.entree.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "EntreeCell", for: indexPath) as! EntreeCell
    let entreeList = meal.entree[indexPath.row]
    return cell
}
}
