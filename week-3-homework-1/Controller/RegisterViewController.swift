//
//  RegisterViewController.swift
//  week-3-homework-1
//
//  Created by Mücahit Alperen Eryılmaz on 22.12.2022.
//
import UIKit

typealias text = (String, String) -> ()

class RegisterViewController: UIViewController {
    var closure:text!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerAction(_ sender: Any) {
        guard let txt = usernameTextField.text else {return}
        guard let age = ageTextField.text else {return}
        
        closure(txt, age)

        navigationController?.popViewController(animated: true)
    }
    
    

}
