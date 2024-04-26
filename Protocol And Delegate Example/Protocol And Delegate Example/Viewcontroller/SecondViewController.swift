//
//  SecondViewController.swift
//  Protocol And Delegate Example
//
//  Created by MacBookPro on 05/02/1946 Saka.
//

import UIKit

class SecondViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var tatName: UITextField!
    @IBOutlet weak var tatEmail: UITextField!
    @IBOutlet weak var tatAddress: UITextField!
    
    var deligate: DataPassing!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: SAve Data on Click
    @IBAction func saveData(_ sender: Any) {
        //MARK: Acess deligate Method from deligate variable and assign textfild values
        deligate.passData(name: tatName.text!, email: tatEmail.text!, address: tatAddress.text!)
        
    }
}
