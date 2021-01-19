//
//  MenuViewController.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/4/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var menu = Menu()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        navigationItem.hidesBackButton = true
        
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

extension MenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell
        let menuFood = menu.data[indexPath.row]
        cell.foodImage.image = menuFood.image
        cell.foodLabel.text = menuFood.mealType
        return cell
    }

}
