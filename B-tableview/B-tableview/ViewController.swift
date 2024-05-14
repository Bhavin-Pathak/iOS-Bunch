//
//  ViewController.swift
//  B-tableview
//
//  Created by MacBookPro on 09/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController{

    var countries: [String] = ["Germany", "France", "China", "Brazil", "Australia", "India", "Canada", "USA", "Mexico", "Ghana", "Egypt", "Argentina", "Aara"]
    
    var continentCountry: [String: String] = ["Germany" : "Europe", "France": "Europe", "China": "Asia", "Brazil": "South America", "Australia": "Australia", "India": "Asia", "Canada": "North America", "USA": "North America", "Mexico": "North America", "Ghana": "Africa", "Egypt": "Africa", "Argentina": "South America", "Aara" : "Sagwara"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: Constants.cellIdentifier)
    }
    
}

//MARK: Table View Configration
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        //MARK: Cell Count According to Array Count
        return countries.count
    }
//MARK: TableView Data Parcing Methods
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath)

        var cellContentConfiguration = tableViewCell.defaultContentConfiguration() //MARK: Cell Style Config
        let countryName = countries[indexPath.row]
        cellContentConfiguration.text = countryName
        cellContentConfiguration.secondaryText = continentCountry[countryName] ?? ""
        tableViewCell.contentConfiguration = cellContentConfiguration

        return tableViewCell
    }
}
//MARK: Selection On Cell Tapped
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        print("user tapped on cell at \(indexPath) indexPath")
        tableView.deselectRow(at: indexPath,
                              animated: true)
    }
}

//MARK: IDENTIFIRE Constants
struct Constants {
   static let cellIdentifier = "Cells"
}
