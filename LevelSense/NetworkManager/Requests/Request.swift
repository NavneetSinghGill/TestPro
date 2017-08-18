//
//  Request.swift
//  LevelSense
//
//  Created by BestPeers on 11/08/17.
//  Copyright © 2017 BestPeers. All rights reserved.
//

import UIKit

class Request: NSObject {
    var parameters = [String:Any]()
    var urlPath : String!
    
    func getParams() -> Dictionary<String, Any> {
        return self.parameters
    }
    
}
