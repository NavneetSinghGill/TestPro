//
//  LoginInterface.swift
//  NavneetJombayTest
//
//  Created by Navneet Singh on 11/08/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit

class LoginInterface: Interface {

    //MARK: Perfrom API methods
    
    func performLoginWith(request:Request, withCompletionBlock block:@escaping requestCompletionBlock)
    {
        self.interfaceBlock = block
        RealAPI().performPostAPICallWith(request: request, completionBlock: { success, response, error in
            if success {
                NSLog("\n \n Login response: \(response)")
                self.parseLoginReponse(response: response as! Dictionary<String, Any>)
            } else {
                block(success, response, error)
            }
        })
    }
    
    func getCurrentUserWith(request:Request, withCompletionBlock block:@escaping requestCompletionBlock)
    {
        self.interfaceBlock = block
        RealAPI().performGetAPICallWith(request: request, completionBlock: { success, response, error in
            if success {
                NSLog("\n \n Get current user response: \(response)")
                self.parseUserReponse(response: response as! Dictionary<String, Any>)
            } else {
                block(success, response, error)
            }
        })
    }
    
    func getUserProfileWith(request:Request, withCompletionBlock block:@escaping requestCompletionBlock)
    {
        self.interfaceBlock = block
        RealAPI().performGetAPICallWith(request: request, completionBlock: { success, response, error in
            if success {
                NSLog("\n \n User profile response: \(response)")
                self.parseUserProfileReponse(response: response as! Dictionary<String, Any>)
            } else {
                block(success, response, error)
            }
        })
    }
    
    //MARK: Parsing methods
    
    func parseLoginReponse(response : Dictionary<String, Any>) {
        User.handleLoginResponse(loginResponse: response)
        self.interfaceBlock!(true, "", nil)
    }
    
    func parseUserReponse(response : Dictionary<String, Any>) {
        let user = User.init(userJson: response)
        self.interfaceBlock!(true, user, nil)
    }
    
    func parseUserProfileReponse(response : Dictionary<String, Any>) {
        User.user.updateUserWithProfileDictionary(profileJson: response)
        self.interfaceBlock!(true, User.user, nil)
    }
    
}
