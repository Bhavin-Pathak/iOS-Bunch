//
//  TableViewController.swift
//  MVC-Udemy-stuffs
//
//  Created by MacBookPro on 24/02/1946 Saka.
//

import UIKit

class TableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Initial Or Register TableView With Identifire
        tableView.register(UITableView.self, forCellReuseIdentifier: "Cell")
    }
  
}


extension TableViewController : UITableViewDelegate, UITableViewDataSource{
    
    //MARK: Number of Rows Registerd In Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //MARK: Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "cell text"
        return cell
    }
    
    
    
}
