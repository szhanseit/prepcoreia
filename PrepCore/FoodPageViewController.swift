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
    @IBOutlet weak var entreeTable: UITableView!
    @IBOutlet weak var purchaseButton: UIButton!
    @IBOutlet weak var sideTable: UITableView!
    
    var meal = Meals(mealType: "Lean Lunch", generalInfo: "The Lean lunch involves: ", entree: ["Chicken","Fish"], side: ["Rice", "Potato"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealTitle.text = meal.mealType
        info.text = meal.generalInfo
        image.image = UIImage(named: "menuFoodImg")
        
        // Do any additional setup after loading the view.
        entreeTable.dataSource = self
        sideTable.dataSource = self
        
        
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
        var count : Int?
        
    if tableView == entreeTable {
        count = meal.entree.count
    }
    if tableView == sideTable {
        count = meal.side.count
    }
        return count!
  //  return meal.entree.count
}
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell : UITableViewCell!
    
    if tableView == entreeTable{
    cell = tableView.dequeueReusableCell(withIdentifier: "EntreeCell", for: indexPath as IndexPath)
    let entreeLbl = cell.viewWithTag(1)as! UILabel
        entreeLbl.text = meal.entree[indexPath.row] 
    }
    if tableView == sideTable{
    cell = tableView.dequeueReusableCell(withIdentifier: "SideCell", for: indexPath as IndexPath)
    let sideLbl = cell.viewWithTag(2)as! UILabel
        sideLbl.text = meal.side[indexPath.row] 
    }
    return cell
  /*  let cell = tableView.dequeueReusableCell(withIdentifier: "EntreeCell", for: indexPath) as! EntreeCell
    let entreeList = meal.entree
    cell.entreeLabel.text = entreeList[indexPath.row]
    return cell
  */
}
}
