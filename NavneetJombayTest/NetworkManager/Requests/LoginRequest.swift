//
//  LoginRequest.swift
//  NavneetJombayTest
//
//  Created by Navneet Singh on 11/08/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit

class LoginRequest: Request {

    func createLoginRequestWith(email:String, password:String) -> LoginRequest {
        
        parameters[kUsername] = email
        parameters[kPassword] = password
        parameters["grant_type"] = "password"
        parameters["scope"] = "user"
        
        self.urlPath = kLoginApiUrl
        return self
    }
    
    func getCurrentUserRequest() -> LoginRequest {
        
        self.urlPath = kGetCurrentUserApiUrl
        return self
    }
    
}
