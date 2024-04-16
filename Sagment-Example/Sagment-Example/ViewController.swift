//
//  ViewController.swift
//  Sagment-Example
//
//  Created by MacBookPro on 27/01/1946 Saka.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var sagmentout: UISegmentedControl!
    @IBOutlet weak var lableforans: UILabel!
    @IBAction func SelectedSagment(_ sender: Any) {
        
        if sagmentout.selectedSegmentIndex == 0{
            lableforans.text = "CODE IS SELECTED" // CODE
            imageview.image = UIImage(named: "code")
            imageview.isHidden = false
            lableforans.isHidden = false
        }
        else if sagmentout.selectedSegmentIndex == 1{
            lableforans.text = "API IS SELECTED" // API
            imageview.image = UIImage(named: "api")
            imageview.isHidden = false
            lableforans.isHidden = false
        }
        else if sagmentout.selectedSegmentIndex == 2{
            lableforans.text = "DB IS SELECTED" // DB
            imageview.image = UIImage(named: "db")
            imageview.isHidden = false
            lableforans.isHidden = false
        }
        else if sagmentout.selectedSegmentIndex == 3{
            lableforans.text = "SAS IS SELECTED" // SAS
            imageview.image = UIImage(named: "sas")
            imageview.isHidden = false
            lableforans.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.isHidden = true
        lableforans.isHidden = true
    }
    
}

