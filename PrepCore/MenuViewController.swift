//
//  MenuViewController.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/4/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate {
    
    // Outlet connecting to Storyboard element in the menu page
    @IBOutlet var tableView: UITableView!
    
    var menu = Menu()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Table view's data source and delegate
        self.tableView.delegate = self
        self.tableView.dataSource = self
        navigationItem.hidesBackButton = true
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.
        if segue.identifier == "GoToFood" {
            let vc = segue.destination as! FoodPageViewContoller
            let row = tableView.indexPathForSelectedRow?.row
            vc.meal = menu.data[row!]
        }
        
       }
}

extension MenuViewController: UITableViewDataSource {
    // Creates a number of different cells depending on how many elements the Menu struct contains
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.data.count
    }
    // Replaces label and image of the custom cells with the data in the Menu struct and creating a new cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell
        let menuFood = menu.data[indexPath.row]
        cell.foodImage.image = menuFood.image
        cell.foodLabel.text = menuFood.mealType
        return cell
    }
    
    // Segue which navigates and passes on information on to the food page
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "GoToFood", sender: self)
    }
}
