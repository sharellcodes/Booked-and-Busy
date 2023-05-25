//
//  ViewController.swift
//  bookedNbusy
//
//  Created by Dante Jaquan Harris on 4/23/19.
//  Copyright © 2019 Dante Jaquan Harris. All rights reserved.
//


//                  CHOOSING PERSON TO BOOK PAGE

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var pickedTimes: [String] = []
    
    
    
    //let profNames = ["name1, "name2"] <- array of profile names
    //let profServices = ["service1", "service2"] <- array of profile services
    //let profImg = ["pic1", "pic2"]    <- array of profile images
    //let profBio = ["Bio1", "Bio2"] <- array of profile bios
    //let profAvailability = ["Availability1", "Availability2"] <- array of availability
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1; //variable.count
        
    }
    
    
 public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
    
   
    cell.bioButtonTapAction = {
        self.performSegue(withIdentifier: "bioSegue", sender: self)
    }
    
   cell.bioExitTapAction = {
        self.performSegue(withIdentifier: "choosePerson", sender: self)
   }
        
    cell.bookTapAction = {
        self.performSegue(withIdentifier: "a", sender: self)
       
        }
        
    
        
   
   cell.Name.text = "Name" //variable for name
    cell.Services.text = "Services" //variable for service
    cell.Availability.text = "Availability" // variable for availability
    //cell.profileImage.image = UIImage(named: profImg[indexPath.row] + " .jpg"))
    cell.profileImage.image = UIImage(named: "sample.png")
    
  

    return (cell)
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "a") {
           let DVC = segue.destination as! BookApptTableViewController
            DVC.pickedTimes = pickedTimes
            // print(pickedTimes)
        }
    }
 

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
    }
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
     //   if (segue.identifier == "bookSegue") {
          //  let viewController = segue.destination as! BookApptTViewController
      //  }
   // }
}

