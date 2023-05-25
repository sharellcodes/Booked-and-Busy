//
//  bookingTableViewCell.swift
//  bookedNbusy
//
//  Created by Dante Jaquan Harris on 4/30/19.
//  Copyright © 2019 Dante Jaquan Harris. All rights reserved.
//

import UIKit

class bookingTableViewCell: UITableViewCell {
        
    
    
    @IBOutlet weak var label1: UILabel!
    
    
    
    @IBAction func toConfirmationAction(_ sender: Any) {
        toConfirmationActionTapAction?()
        
    }
    
    var toConfirmationActionTapAction :(()->())?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
