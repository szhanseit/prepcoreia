//
//  FoodPageViewController.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/5/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

class FoodPageViewContoller: UIViewController {
    
    // Outlets connecting to Storyboard elements in the food page
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var mealTitle: UILabel!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var selectEntree: UILabel!
    @IBOutlet weak var selectSide: UILabel!
    @IBOutlet weak var entreeTable: UITableView!
    @IBOutlet weak var purchaseButton: UIButton!
    @IBOutlet weak var sideTable: UITableView!
    
    var meal = Meals(mealType: "Lean Lunch", generalInfo: "The Lean lunch involves: ", entree: ["Chicken","Fish"], side: ["Rice", "Potato"], image: #imageLiteral(resourceName: "menuFoodImg2"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Replace titles and image with the data from Menu struct
        mealTitle.text = meal.mealType
        info.text = meal.generalInfo
        image.image = meal.image
        
        // Do any additional setup after loading the view.
        entreeTable.dataSource = self
        sideTable.dataSource = self
    }
}

// Creates to table views for entrees and sides just like the one in the MenuViewController.swift file
extension FoodPageViewContoller: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count : Int?
        
    if tableView == entreeTable {
        count = meal.entree.count
    }
    if tableView == sideTable {
        count = meal.side.count
    }
        return count!
}
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell : UITableViewCell!
    
    if tableView == entreeTable{
    cell = tableView.dequeueReusableCell(withIdentifier: "EntreeCell", for: indexPath as IndexPath)
        cell.textLabel?.text = meal.entree[indexPath.row]
    }
    if tableView == sideTable{
    cell = tableView.dequeueReusableCell(withIdentifier: "SideCell", for: indexPath as IndexPath)
        cell.textLabel?.text = meal.side[indexPath.row]

    }
    return cell
}
}
