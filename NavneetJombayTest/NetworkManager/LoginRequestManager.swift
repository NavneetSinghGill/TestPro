//
//  LoginRequestManager.swift
//  NavneetJombayTest
//
//  Created by Navneet Singh on 11/08/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit

class LoginRequestManager: NSObject {

    static func postLoginAPICallWith(email:String, password:String, block:@escaping requestCompletionBlock)
    {
        if appDelegate.isNetworkAvailable {
            LoginInterface().performLoginWith(request: LoginRequest().createLoginRequestWith(email: email, password: password), withCompletionBlock: block)
            
        } else{
            //TODO: show network failure error
        }
        
    }
    
    static func getCurrentUserWith(block:@escaping requestCompletionBlock)
    {
        if appDelegate.isNetworkAvailable {
            LoginInterface().getCurrentUserWith(request: LoginRequest().getCurrentUserRequest(), withCompletionBlock: block)
            
        } else{
            //TODO: show network failure error
        }
        
    }
    
}
