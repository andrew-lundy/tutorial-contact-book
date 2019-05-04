//
//  ContactListCell.swift
//  Simple Contacts
//
//  Created by Andrew Lundy on 4/28/19.
//  Copyright © 2019 Andrew Lundy. All rights reserved.
//

import UIKit

class ContactListCell: UITableViewCell {

    @IBOutlet weak var contactNameLbl: UILabel!
    @IBOutlet weak var phoneNumberLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
