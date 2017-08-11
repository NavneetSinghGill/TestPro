//
//  Constant.swift
//  NavneetJombayTest
//
//  Created by Navneet Singh on 11/08/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit


let appDelegate = UIApplication.shared.delegate as! AppDelegate

public typealias requestCompletionBlock = (_ success: Bool, _ response: Any, _ error: Error?) -> Void

//MARK: - Parameters

let kUsername = "username"
let kPassword = "password"
let kAccessToken = "access_token"
let kAuthorization = "Authorization"


//MARK: Api URLs

let kBaseUrl = "https://api.es-q.co"

let kLoginApiUrl = "/oauth/token.json"
