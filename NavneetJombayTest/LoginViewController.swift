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
        
//        if isDataValid() {
//            print("Valid entries. Peforming api call")
//            showLoader()
            
            //perform api call
            LoginRequestManager.postLoginAPICallWith(email: "sqfos18@jombay.com", password: "test123", block: { (success, response, error) in
                if success {
//                    self.performDealerRelatedAPICalls()
//                    Util.setDefaultControllerAsRootController()
                    
                    self.getCurrentUser()
                    
                } else {
//                    Util.showAlertWith(title: "Login Failed", message: error?.localizedDescription, inController: self)
                }
//                self.removeLoader()
            })
//        } else {
//            print("Invalid entries")
//        }
    }
    
    func getCurrentUser() {
        LoginRequestManager.getCurrentUserWith(block: { (success, response, error) in
            if success {
                
                self.getUserWith(companyID: User.user.companyIDs.firstObject as! String,userID: User.user.userID)
            }
        })
    }
    
    func getUserWith(companyID: String!, userID: String!) {
        LoginRequestManager.getUserProfileWith(companyID: companyID, userID: userID) { (success, response, error) in
            
        }
    }

}

