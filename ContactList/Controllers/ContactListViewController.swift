//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Kislov Vadim on 02.05.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    var contacts: [Person]!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactItem", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = contacts[indexPath.row].fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactInfoVC = segue.destination as? ContactInfoViewController else { return }
        guard let indexSelected = tableView.indexPathForSelectedRow else { return }
        
        contactInfoVC.contact = contacts[indexSelected.row]
    }
}
