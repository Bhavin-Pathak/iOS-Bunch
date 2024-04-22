//
//  ViewController.swift
//  Switch Using SwiftySwitch
//
//  Created by MacBookPro on 02/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController, SwiftySwitchDelegate {
    
    func valueChanged(sender: SwiftySwitch) {
        if switchTo.isOn{
            view.backgroundColor = UIColor(ciColor: .blue)
        }else{
            view.backgroundColor = UIColor(ciColor: .red)
        }
    }

    @IBOutlet weak var switchTo: SwiftySwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switchTo.delegate = self
    }


}

