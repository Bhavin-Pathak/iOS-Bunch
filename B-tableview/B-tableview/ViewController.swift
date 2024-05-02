//
//  ViewController.swift
//  B-tableview
//
//  Created by MacBookPro on 09/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var name = ["Bhavin","Mayur","Himanshu"]
    var work = ["iOS Developer", "FSDeveloper","SEO Ececutive"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return work.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cells = tableView.dequeueReusableCell(withIdentifier: "cell")
        cells?.textLabel?.text = name[indexPath.row]
        cells?.detailTextLabel?.text = work[indexPath.row]
        return cells!
    }
    

}

