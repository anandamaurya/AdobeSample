//
//  PaymentViewController.swift
//  ADBMobileSamples
//
//  Created by Anand on 1/9/19.
//  Copyright © 2019 Adobe. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {

    @IBAction func backToHome(_ sender: Any) {
        
       
        print(self.navigationController?.viewControllers)
        self.navigationController?.popToViewController(self.navigationController?.viewControllers[2] ?? self, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.self.
        
        self.navigationController?.navigationBar.isHidden = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
