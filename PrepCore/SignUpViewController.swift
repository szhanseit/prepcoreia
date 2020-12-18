//
//  SignUpViewController.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 10/26/20.
//  Copyright © 2020 Sultan Zhanseit. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var teleNumber: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }


}

