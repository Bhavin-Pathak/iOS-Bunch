//
//  SecondScreen.swift
//  NavigateoneVCtoAnotherVC USING Button Segue
//
//  Created by MacBookPro on 04/02/1946 Saka.
//

import UIKit

class SecondScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func navigatetoThirdVC(_ sender: UIButton) {
        let gotoThirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdScreen") as! ThirdScreen
        //MARK: Asign Storybord Identifire Same as ViewController Name
        self.navigationController?.pushViewController(gotoThirdVC, animated: true)
    }
    
    @IBAction func navigateToMainScreen(_ sender: UIButton) {
        //MARK:  GO BACK TO THAT SCRREN WHERE IT"S FROM NAVIGATE
        self.navigationController?.popViewController(animated: true)
    }
    
}
