//
//  ViewController.swift
//  Switch-Example
//
//  Created by MacBookPro on 27/01/1946 Saka.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: Outlate as var
    @IBOutlet weak var switchb: UISwitch!
    
    @IBOutlet weak var lablet: UILabel!
    
//MARK: Function That on off switch Status
    @IBAction func status(_ sender: UISwitch) {
        
        if switchb.isOn {
            lablet.text = "Switch is On"
            lablet.isHidden = false
            self.view.backgroundColor = UIColor.blue
        }else{
            lablet.text = "Switch is Off"
            lablet.isHidden = false
            self.view.backgroundColor = UIColor.black
            lablet.textColor = UIColor.white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lablet.isHidden = true
    }


}

