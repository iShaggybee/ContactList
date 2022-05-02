//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Kislov Vadim on 02.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    let contacts = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
