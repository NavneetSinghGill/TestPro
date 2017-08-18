//
//  LSViewController.swift
//  LevelSense
//
//  Created by BestPeers on 8/18/17.
//  Copyright © 2017 BestPeers. All rights reserved.
//


/*
 *
 *
 *      BASE VIEW CONTROLLER
 *
 *
 */

import UIKit

class LSViewController: UIViewController {
    
    @IBOutlet var menuButton: UIBarButtonItem!
    var navigationTitleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Public methods
    
    func addMenuButton() {
        menuButton = UIBarButtonItem(image: UIImage.init(named: "menuIcon"), style: UIBarButtonItemStyle.plain, target: self, action: Selector(("menuButtonTapped:")))
        self.navigationController?.navigationItem.leftBarButtonItem = menuButton
        
        
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    func setNavigationTitle(title:String) {
        if (navigationTitleLabel == nil) {
            navigationTitleLabel = UILabel()
        }
        navigationTitleLabel.textColor = blueColor
        navigationTitleLabel.font = UIFont(name: "HelveticaNeueu-Bold", size: 16)
        navigationTitleLabel.text = title
        navigationTitleLabel.sizeToFit()
        
        self.navigationController?.navigationBar.topItem?.titleView = navigationTitleLabel
    }
    
    //MARK:- IBAction methods
    
    func menuButtonTapped(sender: UIButton) {
        
    }

}
