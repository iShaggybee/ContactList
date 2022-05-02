//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Kislov Vadim on 02.05.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = contact.fullName
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
