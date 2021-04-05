//
//  NewWorkerViewController.swift
//  test_unit
//
//  Created by Igor Matsepura on 02.04.2021.
//

import UIKit

class NewWorkerViewController: UITableViewController {
    
    var companyName = ""
    @IBOutlet weak var imageFoto: UIImageView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var birthdayTF: UITextField!
    @IBOutlet weak var companyTF: UILabel!

    @IBAction func saveBtn(_ sender: Any) {
        self.alertShow(with: "Успешно сохранено!", and: "")

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        companyTF.text = companyName
    }
}

