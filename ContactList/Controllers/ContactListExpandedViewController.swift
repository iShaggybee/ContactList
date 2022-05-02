//
//  ContactListExpandedViewController.swift
//  ContactList
//
//  Created by Kislov Vadim on 02.05.2022.
//

import UIKit

class ContactListExpandedViewController: UITableViewController {
    let countOfRowsInSection = 2
    var contacts: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countOfRowsInSection
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactItem", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = contact.phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text =  contact.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
