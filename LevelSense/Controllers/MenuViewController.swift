//
//  MenuViewController.swift
//  LevelSense
//
//  Created by BestPeers on 8/18/17.
//  Copyright © 2017 BestPeers. All rights reserved.
//

import UIKit

class MenuViewController: LSViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var optionNames: NSArray!
    var optionImageNames: NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let nib = UINib(nibName: "MenuTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MenuTableViewCell")
        
        optionNames = ["My Devices","Claim Device","Notifications","Personal Information","Logout"]
        optionImageNames = ["myDevices","claimDevice","notifications","personalInfo","logout"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionNames.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuCell: MenuTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        menuCell.optionImageView.image = UIImage(named: optionImageNames.object(at: indexPath.row) as! String)
        menuCell.optionNameLabel.text = optionNames.object(at: indexPath.row) as? String
        
        return menuCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let halfViewHeight = self.view.frame.size.height/2
        return (halfViewHeight/CGFloat(optionNames.count))
        //This will make tableview fit all cell to half of tableview height
    }

}
