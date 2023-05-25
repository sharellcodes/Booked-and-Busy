//
//  timeAvailableController.swift
//  bookedNbusy
//
//  Created by Sharell Scott on 5/2/19.
//  Copyright © 2019 Dante Jaquan Harris. All rights reserved.
//

import UIKit

class timeAvailableController: UIViewController {
    var pickedTimes: [String] = []
    var buttons = [UIButton]()
    //var testButton = UIButton()
    
    
    @IBOutlet weak var mainStackView: UIStackView!
    
   // var test = UIScrollView!
    
    func makeButtonWithText(text: String) -> UIButton {
        let timeButton = UIButton()
        timeButton.frame = CGRect(x: 30, y: 600, width: 150, height: 36)
        timeButton.backgroundColor = UIColor.gray
        timeButton.setTitle(text, for: .normal)
        timeButton.setTitleColor(UIColor.white, for: .normal)
        //print(pickedTimes)
        // print(pickedTimes.count)
        
        timeButton.addTarget(self, action: #selector(timeBtnFunc), for: .touchUpInside)
        
        return timeButton
    }
    
    func availableTimeButtons(count: Int) {
        for i in 0...(count-1) {
            let titleString = String(pickedTimes[i])
            let button = makeButtonWithText(text: titleString)
            buttons.append(button)
            mainStackView.addArrangedSubview(buttons[i])
           // let testButton = button
        }
        //testButton = makeButtonWithText(text: "test")
    }
    
    @IBAction func timeBtnFunc(sender: UIButton) {
        self.performSegue(withIdentifier: "confirm", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        for i in 0...(pickedTimes.count-1) { // keeps returning the very last time
            if (segue.identifier == "confirm" && pickedTimes[i] == buttons[i].title(for: UIControl.State.normal)!) {
                let DVC = segue.destination as! confirmationViewController
                DVC.pickedTime = pickedTimes[i]
               // print(pickedTimes[i])
                print(buttons[i].title(for: UIControl.State.normal)!)
            }
        }
       // print(button.title(for: UIControl.State.normal)!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        availableTimeButtons(count: pickedTimes.count)
        mainStackView.spacing = 2.0
        mainStackView.distribution = UIStackView.Distribution.fillEqually
    }
    
}
