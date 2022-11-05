//
//  WelcomeViewController.swift
//  LoginAppNew
//
//  Created by Борис Сонин on 04.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = name
        
    }
    
}

