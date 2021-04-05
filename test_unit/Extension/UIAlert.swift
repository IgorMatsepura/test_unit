//
//  UIAlert.swift
//  test_unit
//
//  Created by Igor Matsepura on 03.04.2021.
//

import UIKit

extension UIViewController {
    
    func alertShow(with title: String, and message: String, completion: @escaping () -> Void = { } ) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { (_) in
            completion()
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
