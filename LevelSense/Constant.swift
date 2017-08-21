//
//  Constant.swift
//  LevelSense
//
//  Created by BestPeers on 11/08/17.
//  Copyright © 2017 BestPeers. All rights reserved.
//

import UIKit


let appDelegate = UIApplication.shared.delegate as! AppDelegate

public typealias requestCompletionBlock = (_ success: Bool, _ response: Any, _ error: Error?) -> Void

//MARK: Colors

let blueColor = UIColor.init(colorLiteralRed: 0, green: 110/255.0, blue: 190/255, alpha: 1.0)

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

//MARK: Parameters

let kUsername = "username"
let kPassword = "password"
let kAccessToken = "access_token"
let kAuthorization = "Authorization"


//MARK: Api URLs

let kBaseUrl = "https://api.es-q.co"

let kLoginApiUrl = "/oauth/token.json"
