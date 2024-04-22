//
//  ViewController.swift
//  Validation of Email Password PhoneNumber
//
//  Created by MacBookPro on 02/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var emailtF: UITextField!
    
    @IBOutlet weak var passwordtF: UITextField!
    
    @IBOutlet weak var phonetF: UITextField!
    
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        if (emailtF.text?.isValidEmail)! {
            print("Valid Email")
        }
        else{
            print("Invalid Email")
            
        }
        if (passwordtF.text?.isValidPassword)!{
            print("Valid Password")
        }else{
            print("Invalid Password")
        }
        if (phonetF.text?.isValidPhone)!{
            print("Valid Phone Number")
        }else{
            print("Invalid Phone Number")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

