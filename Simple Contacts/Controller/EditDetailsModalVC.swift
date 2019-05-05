//
//  EditDetailsModalVC.swift
//  Simple Contacts
//
//  Created by Andrew Lundy on 5/5/19.
//  Copyright © 2019 Andrew Lundy. All rights reserved.
//

import UIKit

class EditDetailsModalVC: UIViewController {
    
    var contact: Contact!
    var data = DataService.instance
    
    @IBOutlet weak var contactNameLbl: UILabel!
    @IBOutlet weak var phoneNumberTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var companyTxtField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        navigationItem.leftBarButtonItem?.isEnabled = false
        edgesForExtendedLayout = []
    }
    

    @IBAction func cancelBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        
    }
    
    func updateView() {
        phoneNumberTxtField.becomeFirstResponder()
        contactNameLbl.text = contact.name
        phoneNumberTxtField.placeholder = contact.phone
        emailTxtField.placeholder = contact.email
        companyTxtField.placeholder = contact.company
        let tap = UITapGestureRecognizer(target: self.view, action: Selector("endEditing:"))
        view.addGestureRecognizer(tap)
    }
    
}
