//
//  datePickController.swift
//  bookedNbusy
//
//  Created by Sharell Scott on 5/2/19.
//  Copyright © 2019 Dante Jaquan Harris. All rights reserved.
//

/* This file represents the page that allows buyers to pick their desired availability */

import UIKit

class datePickController: UIViewController {
    
    @IBOutlet weak var addTimeButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var textInput: UITextField!
    
    // the datePicker is created here
    private var datePick: UIDatePicker?
    
    // array that will hold all the dates that the user chooses
    var pickedTimes: [String] = []
    
    
    // when the text field is pressed, the date picker will show up
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePick = UIDatePicker()
        datePick?.addTarget(self, action: #selector(datePickController.dateChanged(datePick:)), for: .valueChanged)
        
        textInput.inputView = datePick
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /* this function shows the date that the date picker is currently on in "Day of the week, M D at time" format*/
    @objc func dateChanged(datePick: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE, MMM d 'at' hh:mm aaa"
        
        let availableTime = dateFormatter.string(from: datePick.date)
        
        textInput.text = availableTime
    }
    
    /* this is for the add button. If the time they are trying to add is already there,
        an alert appears. If not, it's added to the array */
    @IBAction func addButtonFunction(_ sender: Any) {
        let alert = UIAlertController(title: "You are trying to enter a duplicate time", message: "Duplicate times are not allowed", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE, MMM d 'at' hh:mm aaa"
        
        let availableTime = dateFormatter.string(from: datePick!.date)
        
        if pickedTimes.contains(availableTime) {
            self.present(alert, animated: true)
        }
        else {
            pickedTimes.append(availableTime)
        }
    }
    
    /* the done button takes you from this page back to the _____ page (FILL IN!!!!) */
    @IBAction func doneButtonFunc(_ sender: Any) {
        performSegue(withIdentifier: "dateToBookSegue", sender: self)
    }
    
    /* this function is used to transfer the data in this array to the data in the viewController's array */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "dateToBookSegue") {
            let DVC = segue.destination as! ViewController
            DVC.pickedTimes = pickedTimes
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
