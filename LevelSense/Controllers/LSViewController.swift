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
    
    var menuBarButton: UIBarButtonItem!
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
        if self.revealViewController() != nil && menuBarButton == nil {
            
            menuBarButton = UIBarButtonItem(customView: menuButton())
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.navigationItem.leftBarButtonItem = menuBarButton!
            
            self.revealViewController().rearViewRevealWidth = screenWidth - 80 //80 is the width of main screens that will the seen when left menu is open
        }
    }
    
    func menuButton() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        button.backgroundColor = .clear
        button.setImage(UIImage(named: "menuIcon"), for: .normal)
        button.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        return button
    }
    
    func setNavigationTitle(title:String) {
        if (navigationTitleLabel == nil) {
            navigationTitleLabel = UILabel()
        }
        navigationTitleLabel.textColor = blueColor
        navigationTitleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 16)
        navigationTitleLabel.text = title
        navigationTitleLabel.sizeToFit()
        
        self.navigationController?.navigationBar.topItem?.titleView = navigationTitleLabel
    }
    
    //MARK:- IBAction methods
    
    @IBAction func menuButtonTapped(sender: UIButton) {
        self.revealViewController().revealToggle(self)
    }

}
