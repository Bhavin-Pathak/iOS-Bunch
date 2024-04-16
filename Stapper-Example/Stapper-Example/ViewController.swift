//
//  ViewController.swift
//  Stapper-Example
//
//  Created by MacBookPro on 27/01/1946 Saka.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var lableforvalue: UILabel!
    
   
    @IBAction func changeValue(_ sender: UIStepper) {
        
        
        lableforvalue.text = Int(sender.value).description
    }
}

