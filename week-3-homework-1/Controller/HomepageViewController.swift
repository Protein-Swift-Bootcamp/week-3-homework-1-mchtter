//
//  RegisterViewController.swift
//  week-3-homework-1
//
//  Created by Mücahit Alperen Eryılmaz on 22.12.2022.
//

import Foundation
import UIKit

class HomepageViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let registerViewController = mainStoryboard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        
        registerViewController.closure = { text, age in
            self.usernameLabel.text = "Username: \(text)"
            self.ageLabel.text = "Your Age: \(age)"
            
        }
        
        navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}
