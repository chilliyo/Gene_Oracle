//
//  Forth.swift
//  Carissa_Ward_and_Qili_Sui_Gene_Oracle
//
//  Created by Chilli on 3/5/17.
//  Copyright © 2017 DePaul. All rights reserved.
//

import UIKit

class Forth: UITableViewController {
    
    var selectedProfile = [Profile]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blueColor = UIColor(red: 140/255.0, green: 206/255.0, blue: 225/255.0, alpha: 1.0)
        view.backgroundColor = blueColor
        
        //allow multiple selection in this table view. - Qili Sui
        tableView.allowsMultipleSelection = true
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profiles.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let profile = profiles[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: profile.type.rawValue, for: indexPath)
        
        // Configure the cell with an AccessoryType: checkmark - Qili Sui
        
        if (cell.isSelected) {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark;
            cell.textLabel?.text = profile.name
            cell.detailTextLabel?.text = profile.bloodType
        }else{
            cell.accessoryType = UITableViewCellAccessoryType.none;
            cell.textLabel?.text = profile.name
            cell.detailTextLabel?.text = profile.bloodType
        }
        return cell
    }
    
    /* override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
     
     is handling deselecting for reponsivness. 
     
     - Qili Sui
     */
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        //let profile = profiles[indexPath.row]
        if (cell?.isSelected)! {
            cell?.accessoryType = UITableViewCellAccessoryType.checkmark
            selectedProfile.append(profiles[indexPath.row])
        } else {
            cell?.accessoryType = UITableViewCellAccessoryType.none
        }
    }
    


    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)        
        if (!((cell?.isSelected)!)) {
            cell?.accessoryType = UITableViewCellAccessoryType.none
            selectedProfile.removeLast()
        }
    
    }
    /* override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
     
     handling the number of selection the user made. 
     If the number of selection is not 2, then the segue will not continue
     and and alert will popup.
     
     - Qili Sui
     */
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "segueTest"{
            
            if (selectedProfile.count != 2){
                let message = "You have to select exactly two profile to continue."
                let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
                let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
                alertController.addAction(okayAction)
                present(alertController, animated: true, completion: nil)
                
                return false
            }
            else {
                return true
            }
        }
        //by default, transition
        return true

    }

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let Fifth = segue.destination as? Fifth {
            
                //storing the only two profile object form the arary for the next screen - Qili Sui
                Fifth.parent1 = selectedProfile[0]
                Fifth.parent2 = selectedProfile[1]
            
                //empty the array for the next set of selection - Qili Sui
                selectedProfile = []
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
    
}
