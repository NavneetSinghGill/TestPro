//
//  LoginViewController.swift
//  NavneetJombayTest
//
//  Created by Navneet Singh on 11/08/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logInButtonTapped(_ sender: UIButton) {
        self.performLogin()
    }

    func performLogin() -> Void {
//            showLoader()
            //perform api call
            LoginRequestManager.postLoginAPICallWith(email: "sqfos18@jombay.com", password: "test123", block: { (success, response, error) in
                if success {
                    
                }
//                self.removeLoader()
            })
    }

}

