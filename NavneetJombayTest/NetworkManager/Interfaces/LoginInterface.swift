//
//  LoginInterface.swift
//  NavneetJombayTest
//
//  Created by Navneet Singh on 11/08/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit

class LoginInterface: Interface {

    func performLoginWith(request:Request, withCompletionBlock block:@escaping requestCompletionBlock)
    {
        self.interfaceBlock = block
        RealAPI().performPostAPICallWith(request: request, completionBlock: { success, response, error in
            if success {
                self.parseLoginReponse(response: response as! Dictionary<String, Any>)
                print("Success Inside Login Block")
            } else {
                block(success, response, error)
            }
        })
    }
    
    func parseLoginReponse(response : Dictionary<String, Any>) {
        User.handleLoginResponse(loginResponse: response)
        self.interfaceBlock!(true, "", nil)
    }
    
}
