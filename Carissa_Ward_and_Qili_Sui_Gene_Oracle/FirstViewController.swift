//
//  FirstViewController.swift
//  Carissa_Ward_and_Qili_Sui_Gene_Oracle
//
//  Created by Carissa Ward on 3/5/17.
//  Copyright © 2017 DePaul. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {



    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profiles.append(    Profile(
            name:       "Mac",
            bloodType:  "O",
            scd:        false,
            hd:         false,
            cf:         false
        ))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

