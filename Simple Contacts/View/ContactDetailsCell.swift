//
//  ContactDetailsCell.swift
//  Simple Contacts
//
//  Created by Andrew Lundy on 5/5/19.
//  Copyright © 2019 Andrew Lundy. All rights reserved.
//

import UIKit

class ContactDetailsCell: UITableViewCell {

    @IBOutlet weak var cellHeaderLbl: UILabel!
    @IBOutlet weak var cellDetailsLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
