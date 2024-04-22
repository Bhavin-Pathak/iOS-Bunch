//
//  ViewController.swift
//  Alert And ActionSheet Using UIAlertController
//
//  Created by MacBookPro on 02/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController {

//MARK: THERE ARE THREE ACTION FOR BUTTONS :-
    
    @IBAction func openAleart(_ sender: UIButton) {
        
        //MARK: For Open Aleart BoX
        
        //Simaple Alert Open
        let aleart = UIAlertController(title: "Upper Titel", message: "Center Message", preferredStyle: .alert)
        //Buttons For Alert
        
        let defaultButton = UIAlertAction(title: "Default", style: .default) { (action) in
            print("Default button pressed")
        }
        let cancelButon = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancel button pressed")
            
        }
        let districtiveButton = UIAlertAction(title: "Destrictive Button", style: .destructive) { (action) in
            print("Destrictive button pressed")
        }
        //Present Alert
        aleart.addAction(defaultButton)
        aleart.addAction(cancelButon)
        aleart.addAction(districtiveButton)
        present(aleart, animated: true, completion: nil)
    }
    
    @IBAction func openActionSheet(_ sender: UIButton) {
        
        //MARK: For open ActionSheet
        let aSheet = UIAlertController(title: "Upper Titel", message: "Center Message", preferredStyle: .actionSheet)
        //Buttons For Alert
        let sheetDefaultButton = UIAlertAction(title: "Default", style: .default) { (action) in
            print("Default button pressed")
            
        }
        let sheetCencleButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancel button pressed")
            
        }
        let districtiveButton = UIAlertAction(title: "Destrictive Button", style: .destructive) { (action) in
            print("Destrictive button pressed")
        }
        //Present Aleart
        aSheet.addAction(sheetDefaultButton)
        aSheet.addAction(sheetCencleButton)
        aSheet.addAction(districtiveButton)
        present(aSheet, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

