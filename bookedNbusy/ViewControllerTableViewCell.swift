//
//  ViewControllerTableViewCell.swift
//  bookedNbusy
//
//  Created by Dante Jaquan Harris on 4/23/19.
//  Copyright © 2019 Dante Jaquan Harris. All rights reserved.
//

import UIKit


class ViewControllerTableViewCell: UITableViewCell {
    
  
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Services: UILabel!
    @IBOutlet weak var Availability: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
   
    
    @IBOutlet weak var contactmeButton: UIButton!
    
    @IBOutlet weak var bookButton: UIButton!
    @IBOutlet weak var bioButton: UIButton!
    
    
    //--------- BIO BUTTON ACTIONS -----------------------------------
    
    @IBAction func bioAction(_ sender: UIButton) {
        bioButtonTapAction?()
    }
    
    var bioButtonTapAction : (()->())?
    
    @IBOutlet weak var bioParagraph: UILabel!
    
    @IBAction func bioExit(_ sender: Any) {
        bioExitTapAction?()
    }
    
    var bioExitTapAction : (()->())?
    
    // ---------------------------------------------------------------
    
    //-------- CONTACT ME BUTTON ACTIONS -----------------------------
    
    
    @IBAction func contactmeAction(_ sender: UIButton) {
        contactmeButton.setTitle("917-463-9372", for: .normal)
    }
    
    //----------------------------------------------------------------
    
    
    
    //--------- BOOK BUTTON ACTIONS ----------------------------------
    
    @IBAction func bookAction(_ sender: Any) {
        bookTapAction?()
    }
    
    
    var bookTapAction : (()->())?
    
    //----------------------------------------------------------------
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
