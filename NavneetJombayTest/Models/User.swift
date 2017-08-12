//
//  User.swift
//  NavneetJombayTest
//
//  Created by Navneet Singh on 12/08/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import Foundation

class User : NSObject {
    
    static var accessToken: String!
    static var expiresIn: Int64!
    
    init(userJson: Dictionary<String, Any>) {
        
    }
    
    static func handleLoginResponse(loginResponse: Dictionary<String, Any>) {
        accessToken = loginResponse["access_token"] as! String
        expiresIn = loginResponse["expires_in"] as! Int64
        
        if (accessToken != nil) {
            UserDefaults.standard.set(accessToken, forKey: "accessToken")
        }
        if (expiresIn != nil) {
            UserDefaults.standard.set(expiresIn, forKey: "expiresIn")
        }
        UserDefaults.standard.synchronize()
    }
    
}
