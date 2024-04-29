//
//  ViewController.swift
//  Custom-Tableview
//
//  Created by MacBookPro on 09/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    var names = ["Bhavin","Shivam","Sarita","Himanshu","Mayur","Mansi","Divya"]
    var details = ["iOS Developer","HR","Bank Office","SEO Executive","FullstackDeveloper","Webdeveloper","Nurse"]
    override func viewDidLoad() {
        super.viewDidLoad()
        print(names.description)
        print(details.description)
    }

    //MARK: No of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Return Details Array
        return details.count
       
    }
    
    //MARK: Cell for rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") //attech cell identifire with tableview
        cell?.textLabel?.text = names[indexPath.row] //asign textlable to name array
        cell?.detailTextLabel?.text = details[indexPath.row] // assign detail to details array
        return cell!
            // Simply return cell variable 
    }
    

}

