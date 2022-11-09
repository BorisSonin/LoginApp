//
//  BiographyViewController.swift
//  LoginAppNew
//
//  Created by Борис Сонин on 08.11.2022.
//

import UIKit

class BiographyViewController: UIViewController {

    @IBOutlet var biography: UILabel!

    @IBOutlet var biographyText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        addText()
       
    }
    
    func addText () {
        biography.text = "Биография"
        biographyText.text = user1.person.biography
        
    }
   
}
