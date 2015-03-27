//
//  MainViewController.swift
//  MausamWidzy
//
//  Created by Poonam Parmar on 3/16/15.
//  Copyright (c) 2015 MSS. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myColor : UIColor = UIColor(red: (51/255.0), green: (50/255.0), blue: (50/255.0), alpha: 1.0)
        var mainView : UIView = UIView()
        mainView.backgroundColor=myColor
        self.view.addSubview(mainView)
        
        var userLabel : UILabel = UILabel()
        userLabel.backgroundColor = UIColor .clearColor()
        userLabel.text = "Getting Started"
        userLabel.textAlignment = NSTextAlignment.Center
        userLabel.textColor = UIColor .whiteColor()
        userLabel.font = UIFont.systemFontOfSize(18)
        mainView.addSubview(userLabel)
        
        var btnColor : UIColor = UIColor(red: (50/255.0), green: (127/255.0), blue: (255/255.0), alpha: 1.0)
        var tabButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        tabButton.titleLabel!.font =  UIFont(name:"", size: 15)
        tabButton.setTitleColor(btnColor, forState: UIControlState.Normal)
        tabButton.setTitle("Tap here for help", forState: UIControlState.Normal)
        tabButton.addTarget(self, action: "tabAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(tabButton)
        
        var useLabel : UILabel = UILabel()
        useLabel.backgroundColor = UIColor .clearColor()
        useLabel.text = "HOW TO USE WIDGET"
        useLabel.textAlignment = NSTextAlignment.Center
        useLabel.textColor = UIColor .blackColor()
        useLabel.font = UIFont.systemFontOfSize(15)
        self.view.addSubview(useLabel)
        
        var backImage:UIImageView = UIImageView()
        backImage.image = UIImage (named: "Step5")
        self.view.addSubview(backImage)
        
        var widgetView : UIView = UIView()
        widgetView.backgroundColor=btnColor
        self.view.addSubview(widgetView)
        
        var widgetLabel : UILabel = UILabel()
        widgetLabel.backgroundColor = UIColor .clearColor()
        widgetLabel.text = "Mausam Widzy"
        widgetLabel.textAlignment = NSTextAlignment.Center
        widgetLabel.textColor = UIColor .whiteColor()
        widgetLabel.font = UIFont.systemFontOfSize(16)
        widgetView.addSubview(widgetLabel)

        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            if UIScreen.mainScreen().nativeBounds.height == 480 {
                println("iPhone Classic")
                mainView.frame = CGRectMake(0, 0, 320, 64)
                userLabel.frame = CGRectMake(0, 4, 320, 64)
                tabButton.frame = CGRectMake(0, 30, 320, 100)
                useLabel.frame = CGRectMake(0, 80, 320, 64)
                backImage.frame = CGRectMake(35, 130, 250, 250)
                widgetView.frame = CGRectMake(0, 410, 320, 50)
                widgetLabel.frame = CGRectMake(0, 2, 320, 42)

            }
            if UIScreen.mainScreen().nativeBounds.height == 960 {
                println("iPhone 4 or 4S")
                mainView.frame = CGRectMake(0, 0, 320, 64)
                userLabel.frame = CGRectMake(0, 4, 320, 64)
                tabButton.frame = CGRectMake(0, 30, 320, 100)
                useLabel.frame = CGRectMake(0, 80, 320, 64)
                backImage.frame = CGRectMake(35, 130, 250, 250)
                widgetView.frame = CGRectMake(0, 410, 320, 45)
                widgetLabel.frame = CGRectMake(0, 2, 320, 42)
            }
            if UIScreen.mainScreen().nativeBounds.height == 1136 {
                println("iPhone 5 or 5S or 5C")
                mainView.frame = CGRectMake(0, 0, 320, 64)
                userLabel.frame = CGRectMake(0, 4, 320, 64)
                tabButton.frame = CGRectMake(0, 50, 320, 100)
                useLabel.frame = CGRectMake(0, 105, 320, 64)
                backImage.frame = CGRectMake(35, 160, 250, 300)
                widgetView.frame = CGRectMake(0, 490, 320, 50)
                widgetLabel.frame = CGRectMake(0, 2, 320, 42)
            }
            if UIScreen.mainScreen().nativeBounds.height == 1334 {
                println("iPhone 6")
                mainView.frame = CGRectMake(0, 0, 375, 64)
                userLabel.frame = CGRectMake(0, 4, 375, 64)
                tabButton.frame = CGRectMake(0, 50, 375, 100)
                useLabel.frame = CGRectMake(0, 105, 375, 64)
                backImage.frame = CGRectMake(65, 160, 250, 300)
                widgetView.frame = CGRectMake(0, 520, 375, 50)
                widgetLabel.frame = CGRectMake(0, 2, 375, 42)

            }
            if UIScreen.mainScreen().nativeBounds.height == 2208 {
                println("iPhone 6+")
                mainView.frame = CGRectMake(0, 0, 414, 64)
                userLabel.frame = CGRectMake(0, 4, 414, 64)
                tabButton.frame = CGRectMake(0, 50, 414, 100)
                useLabel.frame = CGRectMake(0, 105, 414, 64)
                backImage.frame = CGRectMake(85, 160, 250, 320)
                widgetView.frame = CGRectMake(0, 520, 414, 50)
                widgetLabel.frame = CGRectMake(0, 2, 414, 42)

            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func tabAction(sender:UIButton)
    {
        var vc = ScrollViewController (nibName: "ScrollViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}
