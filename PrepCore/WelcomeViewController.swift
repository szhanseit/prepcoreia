//
//  WelcomeViewController.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/4/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    // Outlets connecting to Storyboard elements in the welcome page
    @IBOutlet weak var LoginButton: UIButton!
    
    @IBOutlet weak var RegisterButton: UIButton!
    
    // An action performed which activates the segue to navigate user to next page
    @IBAction func pressLogin(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Done in order to hide navigation bar
        self.navigationController?.isNavigationBarHidden = true
    }
}
