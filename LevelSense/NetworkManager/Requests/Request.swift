//
//  Request.swift
//  LevelSense
//
//  Created by Navneet Singh on 11/08/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit

class Request: NSObject {
    var parameters = [String:Any]()
    var urlPath : String!
    
    func getParams() -> Dictionary<String, Any> {
        return self.parameters
    }
    
}
