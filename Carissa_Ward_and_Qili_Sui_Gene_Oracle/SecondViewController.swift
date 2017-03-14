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
        sender.backgroundColor = blueColor
    }
    
    @IBAction func createProfile(_ sender: UIButton) {
        let sendName = name.text ?? "failed"
        let sendBT = whichIsSelected(in: bloodTypes)
        
        if (sendName == "failed" || sendBT == "failed"){
            ///do nothing for now
        } else {
            profiles.append(Profile(
                name:       sendName,
                bloodType:  sendBT,
                scd:        false,
                hd:         false,
                cf:         false
            ))
        }
    }
    
    func whichIsSelected(in traitList:[UIButton]) -> String {
        for status in traitList{
            if status.backgroundColor == blueColor{
                return status.currentTitle!
            }
        }
        return "failed"
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

