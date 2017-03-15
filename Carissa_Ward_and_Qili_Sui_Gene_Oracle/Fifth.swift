//
//  Fifth.swift
//  Carissa_Ward_and_Qili_Sui_Gene_Oracle
//
//  Created by Carissa Ward on 3/5/17.
//  Copyright © 2017 DePaul. All rights reserved.
//

import UIKit

class Fifth: UIViewController {
    
    var parent1: Profile?
    var parent2: Profile?
    
    @IBOutlet weak var childname: UILabel!
    @IBOutlet weak var typeA: UILabel!
    @IBOutlet weak var typeB: UILabel!
    @IBOutlet weak var typeAB: UILabel!
    @IBOutlet weak var typeO: UILabel!
    @IBOutlet weak var scdAfflicted: UILabel!
    @IBOutlet weak var scdHealthy: UILabel!
    @IBOutlet weak var hdAfflicted: UILabel!
    @IBOutlet weak var hdHealthy: UILabel!
    @IBOutlet weak var cfAfflicted: UILabel!
    @IBOutlet weak var cfHealthy: UILabel!
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    //It was necessary that the punnet square calculations be hardcoded. Having the calculations be done programatically would not have been more efficient, it it were possible at all.
    override func viewWillAppear(_ animated: Bool) {
        if let p1 = parent1{
            if let p2 = parent2{
                childname.text = "\(p1.name) and \(p2.name)'s child."
                
                //determine probable blood types
                switch p1.bloodType {
                case "A": switch p2.bloodType{
                        case "A": typeA.text = "81.64%"; typeO.text = "18.36%"
                        case "B": typeA.text = "25.35%"; typeB.text = "23.84%"; typeAB.text = "31.79%"; typeO.text = "19.01%"
                        case "AB": typeA.text = "50.00%"; typeB.text = "21.43%"; typeAB.text = "28.57%"
                        case "O": typeA.text = "57.14%"; typeO.text = "42.86%"
                        default: break}
                case "B":switch p2.bloodType{
                        case "A": typeA.text = "25.35%"; typeB.text = "23.84%"; typeAB.text = "31.79%"; typeO.text = "19.01%"
                        case "B":typeB.text = "80.3%"; typeO.text = "19.7%"
                        case "AB": typeA.text = "22.18%"; typeB.text = "50%"; typeAB.text = "27.82%"
                        case "O": typeB.text = "55.62%"; typeO.text = "44.38%"
                        default: break}
                case "AB":switch p2.bloodType{
                        case "A": typeA.text = "50.00%"; typeB.text = "21.43%"; typeAB.text = "28.57%"
                        case "B": typeA.text = "22.18%"; typeB.text = "50%"; typeAB.text = "27.82%"
                        case "AB": typeA.text = "25%"; typeB.text = "25%"; typeAB.text = "50%"
                        case "O": typeA.text = "50%"; typeB.text = "50%"
                        default: break}
                case "O":switch p2.bloodType{
                        case "A": typeA.text = "57.14%"; typeO.text = "42.86%"
                        case "B": typeB.text = "55.62%"; typeO.text = "44.38%"
                        case "AB": typeA.text = "50%"; typeB.text = "50%"
                        case "O": typeO.text = "100%"
                        default: break}
                default: break
                }
                
                //determine probablilty of Sickle Cell Disease
                if (p1.scd && p2.scd){
                    scdAfflicted.text = "100%"
                }else if (!p1.scd && !p2.scd){
                    scdAfflicted.text = ".0025%"
                    scdHealthy.text = "99.9975%"
                }else{//p1 has it and p2 doesn't, or p2 has it and p1 doesn't
                    scdAfflicted.text = ".5%"
                    scdHealthy.text = "99.5%"
                }
                
                //Determine probability of Huntington's Disease
                if (p1.hd && p2.hd){
                    hdAfflicted.text = "75%"
                    hdHealthy.text = "25%"
                }else if (!p1.hd && !p2.hd){
                    hdHealthy.text = "100%"
                }else{//p1 has it and p2 doesn't, or p2 has it and p1 doesn't
                    hdAfflicted.text = "50%"
                    hdHealthy.text = "50%"
                }
                
                //Determine probability of Cystic Fibrosis
                if (p1.cf && p2.cf){
                    cfAfflicted.text = "100%"
                }else if (!p1.cf && !p2.cf){
                    cfAfflicted.text = ".0625%"
                    cfHealthy.text = "99.9375%"
                }else{//p1 has it and p2 doesn't, or p2 has it and p1 doesn't
                    cfAfflicted.text = "2.5%"
                    cfHealthy.text = "97.5%"
                }
            }
        }
    }
    
    //colors the background upon loading.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let greenColor = UIColor(red: 197/255.0, green: 225/255.0, blue: 169/255.0, alpha: 1.0)
        view.backgroundColor = greenColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
