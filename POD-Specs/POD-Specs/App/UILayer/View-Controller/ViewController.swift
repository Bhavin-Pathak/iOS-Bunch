//
//  ViewController.swift
//  POD-Specs
//
//  Created by MacBookPro on 25/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: CreateViewModel Instance Here And Acess Function Data With instance Perameter Name
    private let schoolViewModel: SchoolViewModel = SchoolViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Acess Function With Instance Variable Name
        schoolViewModel.getSchoolData()
    }
}

