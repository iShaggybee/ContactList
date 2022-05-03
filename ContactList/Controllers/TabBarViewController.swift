//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Kislov Vadim on 02.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contacts = Person.getPersonList()
        
        initViewControllers(contacts: contacts)
    }
    
    private func initViewControllers(contacts: [Person]) {
        for viewController in viewControllers ?? [] {
            guard let navigationVC = viewController as? UINavigationController else { return }
            
            if let contactListVC = navigationVC.topViewController as? ContactListViewController {
                contactListVC.contacts = contacts
            } else if let contactListExpandedVC = navigationVC.topViewController as? ContactListExpandedViewController {
                contactListExpandedVC.contacts = contacts
            }
        }
    }
}
