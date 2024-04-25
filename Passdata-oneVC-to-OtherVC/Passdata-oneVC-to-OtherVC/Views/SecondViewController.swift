//
//  SecondViewController.swift
//  Passdata-oneVC-to-OtherVC
//
//  Created by MacBookPro on 05/02/1946 Saka.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    //MARK: Outlets
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    //MARK: Vaiables That Holds Email And Name Data
    
    var name: String = ""
    var email: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblUserName.text = name
        lblEmail.text = email
        // Do any additional setup after loading the view.
    }
    
}
