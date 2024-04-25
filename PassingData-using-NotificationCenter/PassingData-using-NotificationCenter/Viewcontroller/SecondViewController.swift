//
//  SecondViewController.swift
//  PassingData-using-NotificationCenter
//
//  Created by MacBookPro on 05/02/1946 Saka.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBAction func clickFacebook(_ sender: Any) {
        //MARK: Assign notificationcenter name to get data
        NotificationCenter.default.post(name: .facebook, object: nil)
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    
    @IBAction func clickInstagram(_ sender: Any) {
        //MARK: Assign notificationcenter name to get data
        NotificationCenter.default.post(name: .instagram, object: nil)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
