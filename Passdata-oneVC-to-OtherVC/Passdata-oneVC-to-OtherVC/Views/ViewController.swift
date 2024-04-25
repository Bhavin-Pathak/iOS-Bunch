//
//  ViewController.swift
//  Passdata-oneVC-to-OtherVC
//
//  Created by MacBookPro on 05/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Outlets For Textfilds 
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var emailAdddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: Save Button And Navigate To SecondVC
    @IBAction func saveContinue(_ sender: UIButton) {
        //Property of SecondVC
        let secVC:SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        //Get Acess of varibles using property of secondVC and Assign Textfilds values to lable strings
        secVC.name = userName.text ?? "Faild To Load Name"
        secVC.email = emailAdddress.text ?? "Faild To Load Email Address"
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    


}

