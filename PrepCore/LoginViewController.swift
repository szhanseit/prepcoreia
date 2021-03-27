//
//  LoginViewController.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/4/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // Outlets connecting to Storyboard elements in the login page
    @IBOutlet weak var EmailAddress: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
