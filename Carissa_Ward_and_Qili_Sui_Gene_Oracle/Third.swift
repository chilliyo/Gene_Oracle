//
//  Third.swift
//  Carissa_Ward_and_Qili_Sui_Gene_Oracle
//
//  Created by Chilli on 3/5/17.
//  Copyright © 2017 DePaul. All rights reserved.
//

import UIKit

class Third: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blueColor = UIColor(red: 140/255.0, green: 206/255.0, blue: 225/255.0, alpha: 1.0)
        view.backgroundColor = blueColor
        
        profiles.append(    Profile(
            name:       "Mac",
            bloodType:  "O",
            scd:        true,
            hd:         true,
            cf:         true
        ))
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

        // Configure the cell...
        
        cell.textLabel?.text = profile.name
        cell.detailTextLabel?.text = profile.bloodType
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let profile = profiles[indexPath.row]
        
        alert(with: profile)
        
        
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func alert(with profile: Profile){
        let name = profile.name
        let bloodType = profile.bloodType
        var message = "Name: " + name + "\nBloodType:" + bloodType
        if (profile.cf == true){message.append("\n Afflicted with Cystic Fibrosis")}
        if (profile.hd == true){message.append("\n Afflicted with Huntington's Disease")}
        if (profile.scd == true){message.append("\n Afflicted with Sickle Cell Disease")}
        let alertController = UIAlertController(title: name, message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
