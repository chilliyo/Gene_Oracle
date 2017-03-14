//
//  SecondViewController.swift
//  Carissa_Ward_and_Qili_Sui_Gene_Oracle
//
//  Created by Carissa Ward on 3/5/17.
//  Copyright © 2017 DePaul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let blueColor = UIColor(red: 140/255.0, green: 206/255.0, blue: 225/255.0, alpha: 1.0)
    
    let greenColor = UIColor(red: 197/255.0, green: 225/255.0, blue: 169/255.0, alpha: 1.0)
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet var bloodTypes: [UIButton]!
    
    @IBOutlet var scdStatus: [UIButton]!
    
    @IBOutlet var hdStatus: [UIButton]!
    
    @IBOutlet var cfStatus: [UIButton]!

    @IBAction func changeToBlue(_ sender: UIButton) {
        if (bloodTypes.contains(sender)) {
            for button in bloodTypes{
                button.backgroundColor = UIColor(white: 1, alpha: 0.0)
            }
        }else if scdStatus.contains(sender){
            for button in scdStatus{
                button.backgroundColor = UIColor(white: 1, alpha: 0.0)
            }
        }else if hdStatus.contains(sender){
            for button in hdStatus{
                button.backgroundColor = UIColor(white: 1, alpha: 0.0)
            }
        }else{
            for button in cfStatus{
                button.backgroundColor = UIColor(white: 1, alpha: 0.0)
            }
        }
        sender.backgroundColor = blueColor
    }
    
    @IBAction func createProfile(_ sender: UIButton) {
        let sendName = name.text ?? "failed"
        let sendBT = whichIsSelected(in: bloodTypes)
        let sendSCD = whichIsSelected(in: scdStatus)
        let sendHD = whichIsSelected(in: hdStatus)
        let sendCF = whichIsSelected(in: cfStatus)
        
        if (sendName == ""){
            alert(displayMessage: "Please enter name to identify this profile.")
        }
        else if (sendName == "failed" || sendBT == "failed" || sendSCD == "failed" || sendHD == "failed" || sendCF == "failed"){
            alert(displayMessage: "Make sure you have a selection for each trait.")
        } else {
            profiles.append(Profile(
                name:       sendName,
                bloodType:  sendBT,
                scd:        sendSCD == "Afflicted" ? true : false,
                hd:         sendHD == "Afflicted" ? true : false,
                cf:         sendCF == "Afflicted" ? true : false
            ))
        }
    }
    
    func alert(displayMessage m : String){
        let message = m
        let alertController = UIAlertController(title: "Invalid Selection", message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
    }
    
    
    func whichIsSelected(in traitList:[UIButton]) -> String {
        for status in traitList{
            if status.backgroundColor == blueColor{
                return status.currentTitle!
            }
        }
        return "failed"
    }
    
    @IBAction func clearFields(_ sender: UIButton) {
        name.text = ""
        for button in bloodTypes{
            button.backgroundColor = UIColor(white: 1, alpha: 0.0)
        }
        for button in scdStatus{
            button.backgroundColor = UIColor(white: 1, alpha: 0.0)
        }
        for button in hdStatus{
            button.backgroundColor = UIColor(white: 1, alpha: 0.0)
        }
        for button in cfStatus{
            button.backgroundColor = UIColor(white: 1, alpha: 0.0)
        }
    }
    
    @IBAction func editEnded(_ sender: UITextField) { sender.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = greenColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

