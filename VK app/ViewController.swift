//
//  ViewController.swift
//  VK app
//
//  Created by Maxim Bekmetov on 04.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var phoneOrEmailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        navigationController?.isNavigationBarHidden = true
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if phoneOrEmailTextField.text == "admin", passwordTextField.text == "qwerty" {
            print("next View Controller")
        } else {
            print("Deny")
        }
    }
}

