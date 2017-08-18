//
//  LoginInterface.swift
//  LevelSense
//
//  Created by BestPeers on 11/08/17.
//  Copyright © 2017 BestPeers. All rights reserved.
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
    
    //MARK: Parsing methods
    
    func parseLoginReponse(response : Dictionary<String, Any>) {
        User.handleLoginResponse(loginResponse: response)
        self.interfaceBlock!(true, "", nil)
    }
    
}
