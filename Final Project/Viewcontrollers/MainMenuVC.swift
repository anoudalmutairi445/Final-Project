//
//  MainMenuVC.swift
//  Final Project
//
//  Created by ❦𝔸❦ 𝕄 on 7/11/20.
//  Copyright © 2020 ❦𝔸❦ 𝕄. All rights reserved.
//

import UIKit
import AVFoundation

class MainMenuVC: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
     

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Maindetails.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell

        // Configure the cell...
        let menu = Maindetails[indexPath.row]
        cell.categoryLabel.text = menu.categoryName

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 256
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if Maindetails[indexPath.row].categoryName == "Citations"{
            performSegue(withIdentifier: "nextci", sender: indexPath.row)
        }
        else if Maindetails[indexPath.row].categoryName == "Research"{
        performSegue(withIdentifier: "nextr", sender: indexPath.row)
        }
       else if Maindetails[indexPath.row].categoryName == "Sources"{
        performSegue(withIdentifier: "nexts", sender: indexPath.row)
        }
        else if Maindetails[indexPath.row].categoryName == "Tips and Tricks"{
        performSegue(withIdentifier: "nextt", sender: indexPath.row)
        }
        print(indexPath.row)

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "nexts"{
        let category = Maindetails[sender as! Int]
            let index = sender as! Int; 3
            let vc = segue.destination as! SourcesTableViewController
            vc.categorydata = Maindetails[index]
        
    }
   else if segue.identifier == "nextci"{
        let category = Maindetails[sender as! Int]
        let index = sender as! Int; 0
            let vc = segue.destination as!
                CitationsViewController
            vc.categorydata = Maindetails[index]
        
            
        }
       else if segue.identifier == "nextr"{
            let category = Maindetails[sender as! Int]
            let index = sender as! Int; 2
                let vc = segue.destination as! ReasearchTableViewController
                vc.categorydata = Maindetails[index]
            
        }
       else if segue.identifier == "nextt"{
            let category = Maindetails[sender as! Int]
            let index = sender as! Int; 4
                let vc = segue.destination as! TipsandTtricksTableViewController
            vc.categorydata = Maindetails[index]
            
        }
    }
}
