//
//  BookApptTableViewController.swift
//  bookedNbusy
//
//  Created by Dante Jaquan Harris on 5/1/19.
//  Copyright © 2019 Dante Jaquan Harris. All rights reserved.
//

/* this file repreents ??? */

import UIKit

class BookApptTableViewController: UITableViewController {
     var pickedTimes: [String] = []
    var pickedTime : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    // represents number of sections in the table
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }

    // represents the number of rows in the table. It is dependent on the number of times picked
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pickedTimes.count
    }

    // creates a cell. The label of the cell is an element of the array
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cellB = tableView.dequeueReusableCell(withIdentifier: "cellB", for: indexPath) as! bookingTableViewCell
        
        
        //print(pickedTimes)
        cellB.label1.text = pickedTimes[indexPath.row]
        
        
        cellB.toConfirmationActionTapAction = {
            self.pickedTime = self.pickedTimes[indexPath.row]
            //print(self.pickedTime)
            self.performSegue(withIdentifier: "confirm", sender: cellB.label1)
        }
       
        
        return (cellB)
        
            
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "confirm") {
            let DVC = segue.destination as! confirmationViewController
            DVC.pickedTime = pickedTime
           // print(pickedTime)
            
            
        }
    }
        
    
    }
    

    

    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


