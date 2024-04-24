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

    @IBAction func navigateToMainScreen(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
