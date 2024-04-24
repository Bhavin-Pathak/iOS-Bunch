//
//  ViewController.swift
//  NavigateoneVCtoAnotherVC USING Button Segue
//
//  Created by MacBookPro on 04/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: Navigation On Button Click To SecondScreen VC
    @IBAction func navigateToSecondVC(_ sender: UIButton) {
        //Methods to navigate to another VC
        print("Buton Workss")
        let gotoSecondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondScreen") as! SecondScreen
        //MARK: Asign Storybord Identifire Same as ViewController Name 
        self.navigationController?.pushViewController(gotoSecondVC, animated: true)
        
    }
}

