//
//  CompanyVC.swift
//  test_unit
//
//  Created by Igor Matsepura on 02.04.2021.
//

import UIKit

class CompanyVC: UITableViewController {
    
    let company = ["Apple", "Google", "IBM", "Tesla", "Microsoft"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    //MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return company.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = company[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(company[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "company" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let firstController = segue.destination as! NewWorkerViewController
                firstController.companyName = self.company[indexPath.row]
                firstController.companyTF?.text =  self.company[indexPath.row]
                firstController.modalPresentationStyle = .fullScreen
            }
        }
    }
    
}
