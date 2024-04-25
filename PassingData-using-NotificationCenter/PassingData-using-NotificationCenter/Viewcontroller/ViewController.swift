//
//  ViewController.swift
//  PassingData-using-NotificationCenter
//
//  Created by MacBookPro on 05/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var selectionLbl: UILabel!
    @IBOutlet weak var imgPreview: UIImageView!
    
    @IBAction func chooseSocials(_ sender: Any) {
        //MARK: Choose From SecondVC
        let secVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    //Selector for facebook
    @objc func selectFB(notification:Notification){
        selectionLbl.text = "Selected Image Is Facebook"
        imgPreview.image = UIImage(imageLiteralResourceName: "fb")
    }
    //Selector for instagram
    @objc func selectIG(notification:Notification){
        selectionLbl.text = "Selected Image Is Instagram"
        imgPreview.image = UIImage(imageLiteralResourceName: "ig")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: When view loading frist
        NotificationCenter.default.addObserver(self, selector: #selector(selectFB(notification: )), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(selectIG(notification: )), name: .instagram, object: nil)
    }


}


