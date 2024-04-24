//
//  ThirdScreen.swift
//  NavigateoneVCtoAnotherVC USING Button Segue
//
//  Created by MacBookPro on 04/02/1946 Saka.
//

import UIKit

class ThirdScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func navigateToSecondVC(_ sender: UIButton) {
        //MARK: Return back to second VC   or Screen
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func navigateToMainScreen(_ sender: UIButton) {
        //MARK: Root View Means Where form navigatio start there navigate directly 
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
