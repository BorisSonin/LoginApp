//
//  InformationViewController.swift
//  LoginAppNew
//
//  Created by Борис Сонин on 08.11.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var company: UILabel!
    @IBOutlet var profession: UILabel!
    
//    private let user = User.username
//    private let password = User.paswword
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addUser()
    }
    
    func addUser () {
        name.text = user1.person.name
        surname.text = user1.person.surname
        company.text = user1.person.company
        profession.text = user1.person.profession
    }
    
    
}
