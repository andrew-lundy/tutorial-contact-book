//
//  ContactDetailsVC.swift
//  Simple Contacts
//
//  Created by Andrew Lundy on 5/5/19.
//  Copyright © 2019 Andrew Lundy. All rights reserved.
//

import UIKit

class ContactDetailsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var contactNameLbl: UILabel!
    
    
    var contact: Contact!
    var data = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        contactNameLbl.text = contact.name
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editDetails))
        tableView.reloadData()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToEditDetailsVC" {
            let modal = segue.destination as! EditDetailsModalVC
            modal.contact = contact
            modal.modalTransitionStyle = .crossDissolve
            modal.modalPresentationStyle = .custom
            present(modal, animated: true, completion: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactDetailsCell") as! ContactDetailsCell
        
        if indexPath.row == 0 {
            cell.cellHeaderLbl.text = "Phone"
            cell.cellDetailsLbl.text = contact.phone
        } else if indexPath.row == 1 {
            cell.cellHeaderLbl.text = "Email"
            cell.cellDetailsLbl.text = contact.email
        } else if indexPath.row == 2 {
            cell.cellHeaderLbl.text = "Company"
            cell.cellDetailsLbl.text = contact.company
        }
        return cell
    }

    @objc func editDetails() {
        performSegue(withIdentifier: segueToEditDetailsVC, sender: nil)
    }
    
    
}
