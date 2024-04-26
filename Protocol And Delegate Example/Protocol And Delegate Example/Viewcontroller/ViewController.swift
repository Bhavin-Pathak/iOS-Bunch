//
//  ViewController.swift
//  Protocol And Delegate Example
//
//  Created by MacBookPro on 05/02/1946 Saka.
//

import UIKit
    //MARK: Passing Delegate --------->
class ViewController: UIViewController, DataPassing {


    //MARK: Outlets
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: Function Or Action OnTap Submite Form Button 
    @IBAction func formButtton(_ sender: Any) {
        //MARK: Navigation to secondScreen
        let secVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secVC.deligate = self
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    //MARK: Delegate Method
    func passData(name: String, email: String, address: String) {
        lblName.text = name
        lblEmail.text = email
        lblAddress.text = address //MARK: Assign Labletext Values To Function Perameters
    }
    
}

