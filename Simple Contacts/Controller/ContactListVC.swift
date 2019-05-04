//
//  ViewController.swift
//  Simple Contacts
//
//  Created by Andrew Lundy on 4/28/19.
//  Copyright © 2019 Andrew Lundy. All rights reserved.
//

import UIKit

class ContactListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var data = DataService.instance
    var contactIndex: IndexPath!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactListCell") as! ContactListCell
        let contact = data.contacts[indexPath.row]
        cell.contactNameLbl.text = contact.name
        cell.phoneNumberLbl.text = contact.phone
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

