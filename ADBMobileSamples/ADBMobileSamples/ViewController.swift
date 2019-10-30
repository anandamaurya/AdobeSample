//
//  ViewController.swift
//  LoginTest
//
//  Created by Himanshu Saraswat on 26/08/19.
//  Copyright © 2019 Himanshu Saraswat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginController = LFLoginController()
        loginController.delegate = self
        //2. Present the timePicker
        self.navigationController?.pushViewController(loginController, animated: true)
        
    }
    
}

extension ViewController: LFLoginControllerDelegate {
    func forgotPasswordTapped(email: String) {
        print("forgot password")

    }
    
    
    func loginDidFinish(email: String, password: String, type: LFLoginController.SendType) {
        
        print(email)
        print(password)
        print(type)
        
        if type == LFLoginController.SendType.Login {
            
            if email == "anand" && password == "anand"
            {
                if let viewController = UIStoryboard(name: "MainStoryboard_iPhone", bundle: nil).instantiateViewController(withIdentifier: "storiesTableViewController") as? StoriesTableViewController {
                    if let navigator = navigationController {
                        navigator.pushViewController(viewController, animated: true)
                    }
                }
            }
            else{
                let alert = UIAlertController(title: "Alert", message: "Please enter correct email and password.", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
