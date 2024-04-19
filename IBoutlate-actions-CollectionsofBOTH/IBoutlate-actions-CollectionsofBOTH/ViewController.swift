//
//  ViewController.swift
//  IBoutlate-actions-CollectionsofBOTH
//
//  Created by MacBookPro on 30/01/1946 Saka.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: Collections of buttons that are connectd with storybord
    // Frist create outlet -> Connect more panding buttons with control... on storybord
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: Action or status button
    //create action(UIButton) -> Connect more panding buttons with control... on storybord
    @IBAction func buttonactionofstatus(_ sender: UIButton) {
        for bun in buttons{
            bun.isSelected = false
        }
        sender.isSelected.toggle()
        
    }
    
}

