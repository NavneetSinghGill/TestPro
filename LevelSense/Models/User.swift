//
//  User.swift
//  LevelSense
//
//  Created by BestPeers on 12/08/17.
//  Copyright © 2017 BestPeers. All rights reserved.
//

import Foundation

class User : NSObject {
    
    static var accessToken: String!
    static var expiresIn: Int64!
    static var tokenType: String!
    static var user: User!
    
    var userID: String!
    var companyIDs: NSArray!
    
    
    
    override init() {
        super.init()
        
    }
    
    init(userJson: Dictionary<String, Any>) {
        let user = User()
        
        user.initWithDictionary(dictionary: userJson)
        
        //Set final user
        User.user = user
    }
    
    //MARK: Class methods
    
    static func handleLoginResponse(loginResponse: Dictionary<String, Any>) {
        accessToken = loginResponse["access_token"] as! String
        expiresIn = loginResponse["expires_in"] as! Int64
        tokenType = loginResponse["token_type"] as! String
        
        if (accessToken != nil) {
            UserDefaults.standard.set(accessToken, forKey: "accessToken")
        }
        if (expiresIn != nil) {
            UserDefaults.standard.set(expiresIn, forKey: "expiresIn")
        }
        if tokenType != nil {
            UserDefaults.standard.set(tokenType, forKey: "token_type")
        }
        UserDefaults.standard.synchronize()
    }

    //MARK: Private methods
    
    private func initWithDictionary(dictionary : Dictionary<String, Any>) {
        let user = dictionary["user"] as! Dictionary<String, Any>
        
        let companyIDs: NSArray = user["company_ids"] as! NSArray
        self.companyIDs = companyIDs
        
        self.userID = user["_id"] as! String
    }
    
}
