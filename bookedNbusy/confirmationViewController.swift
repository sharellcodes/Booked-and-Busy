//
//  confirmationViewController.swift
//  bookedNbusy
//
//  Created by Sharell Scott on 5/2/19.
//  Copyright © 2019 Dante Jaquan Harris. All rights reserved.
//

/* This class represents the confirmation page. This page pops up and confirms the information
   that the user chose.  */

import UIKit

class confirmationViewController: UIViewController {
    
    // represents the desired time chosen by the user
    var pickedTime: String = ""
    
    // label that says "Congratulations!" on the simulator
    @IBOutlet weak var congratsLabel: UILabel!
    
    // label that shows the desire information
    @IBOutlet weak var confirmLabel: UILabel!
    
    // the function "labelFillIn" is called here with the desired values
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmLabel.text = "You're all set for your appointment. Thank you!"
        /* the time will not show up on the screen, so we wanted to show, through the console,
         that the proper timedoes in fact get transferred based on what the user picked */
        print("the time previously picked " + pickedTime)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
