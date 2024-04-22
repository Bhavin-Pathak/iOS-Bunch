//
//  ViewController.swift
//  UITextField Auto-Capitalization
//
//  Created by MacBookPro on 02/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf4: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Some Examples Of AutoCapitalization
        tf1.autocapitalizationType = .allCharacters
        tf2.autocapitalizationType = .none
        tf3.autocapitalizationType = .sentences
        tf4.autocapitalizationType = .words
    }
    //MARK: There Are 4 Properties Of TF
    // 1 :- "All Charectoers" is the same as double tapping the shiftkey basically capsLock
    // 2 :- "none" is pretty selft-explanatory keybord will nver try to capitlize letters
    // 3 :- "Sentance" will try to Capitlize the next word after em mark punch
    // 4 :- "Words" will try to capitilize every new word after a space
}

