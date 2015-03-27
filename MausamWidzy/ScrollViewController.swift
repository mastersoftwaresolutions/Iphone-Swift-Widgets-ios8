//
//  ScrollViewController.swift
//  MausamWidzy
//
//  Created by Poonam Parmar on 3/16/15.
//  Copyright (c) 2015 MSS. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor .redColor()

        var myColor : UIColor = UIColor(red: (51/255.0), green: (50/255.0), blue: (50/255.0), alpha: 1.0)
        var viewScroll : UIView = UIView()
       
        viewScroll.backgroundColor=myColor
        self.view.addSubview(viewScroll)
        
        var userLabel : UILabel = UILabel()
        userLabel.backgroundColor = UIColor .clearColor()
        userLabel.text = "Steps To Follow"
        userLabel.textAlignment = NSTextAlignment.Center
        userLabel.textColor = UIColor .whiteColor()
        userLabel.font = UIFont.systemFontOfSize(18)
        viewScroll.addSubview(userLabel)
        
        let btnImg = UIImage(named: "back_button")
        var backButton :UIButton = UIButton()
        backButton.frame = CGRectMake(10, 25, 30, 30);
        backButton.backgroundColor = UIColor .clearColor()
        backButton.setImage(btnImg, forState: UIControlState.Normal)
        //backButton.setTitle("Back", forState: UIControlState.Normal)
        backButton.addTarget(self, action: "backAction", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(backButton);
        
        
        var ScrollView : UIScrollView = UIScrollView()
        
        self.view.addSubview(ScrollView)
        
        var step1Label : UILabel = UILabel()
        step1Label.frame = CGRectMake(5, 13, self.view.frame.width, 40)
        step1Label.backgroundColor = UIColor .clearColor()
        step1Label.text = "1. Pull down the notification center."
        step1Label.textAlignment = NSTextAlignment.Left
        step1Label.textColor = UIColor .blackColor()
        step1Label.font = UIFont.systemFontOfSize(16)
        ScrollView.addSubview(step1Label)
        
        var step1Image:UIImageView = UIImageView()
        step1Image.image = UIImage (named: "Step1")
        ScrollView.addSubview(step1Image)
        step1Image.frame = CGRectMake(35, 53, 250, 300)
        
        var step2Label : UILabel = UILabel()
        step2Label.frame = CGRectMake(5, 373, self.view.frame.width, 40)
        step2Label.backgroundColor = UIColor .clearColor()
        step2Label.text = "2. Tap on Edit button."
        step2Label.textAlignment = NSTextAlignment.Left
        step2Label.textColor = UIColor .blackColor()
        step2Label.font = UIFont.systemFontOfSize(16)
        ScrollView.addSubview(step2Label)
        
        var step2Image:UIImageView = UIImageView()
        step2Image.image = UIImage (named: "Step2")
        ScrollView.addSubview(step2Image)
        step2Image.frame = CGRectMake(35, 413, 250, 300)
        
        
        var step3Label : UILabel = UILabel()
        step3Label.frame = CGRectMake(5, 733, self.view.frame.width, 40)
        step3Label.backgroundColor = UIColor .clearColor()
        step3Label.text = "3. Tap + to add the Mausam widget."
        step3Label.textAlignment = NSTextAlignment.Left
        step3Label.textColor = UIColor .blackColor()
        step3Label.font = UIFont.systemFontOfSize(16)
        ScrollView.addSubview(step3Label)
        
        var step3Image:UIImageView = UIImageView()
        step3Image.image = UIImage (named: "Step3")
        ScrollView.addSubview(step3Image)
        step3Image.frame = CGRectMake(35, 773, 250, 300)
        
        var step4Label : UILabel = UILabel()
        step4Label.frame = CGRectMake(5, 1093, self.view.frame.width, 40)
        step4Label.backgroundColor = UIColor .clearColor()
        step4Label.text = "4. Mausam widget added."
        step4Label.textAlignment = NSTextAlignment.Left
        step4Label.textColor = UIColor .blackColor()
        step4Label.font = UIFont.systemFontOfSize(16)
        ScrollView.addSubview(step4Label)
        
        var step4Image:UIImageView = UIImageView()
        step4Image.image = UIImage (named: "Step5")
        ScrollView.addSubview(step4Image)
        step4Image.frame = CGRectMake(35, 1133, 250, 300)
        
        
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            if UIScreen.mainScreen().nativeBounds.height == 480 {
                viewScroll.frame = CGRectMake(0, 0, 320, 64)
                userLabel.frame = CGRectMake(0, 8, 320, 64)
                ScrollView.frame = CGRectMake(0, 64, self.view.frame.width, 568)
                ScrollView.contentSize = CGSize(width:320, height: 1650)
               
                
            }
            if UIScreen.mainScreen().nativeBounds.height == 960 {
                viewScroll.frame = CGRectMake(0, 0, 320, 64)
                userLabel.frame = CGRectMake(0, 8, 320, 64)
                ScrollView.frame = CGRectMake(0, 64, self.view.frame.width, 568)
                ScrollView.contentSize = CGSize(width:320, height: 1650)
               
            }
            if UIScreen.mainScreen().nativeBounds.height == 1136 {
                 viewScroll.frame = CGRectMake(0, 0, 320, 64)
                userLabel.frame = CGRectMake(0, 8, 320, 64)
                ScrollView.frame = CGRectMake(0, 64, self.view.frame.width, 568)
                 ScrollView.contentSize = CGSize(width:320, height: 1550)
                
            }
            if UIScreen.mainScreen().nativeBounds.height == 1334 {
                 viewScroll.frame = CGRectMake(0, 0, 375, 64)
                userLabel.frame = CGRectMake(0, 8, 375, 64)
                ScrollView.frame = CGRectMake(0, 64, self.view.frame.width, 776)
               ScrollView.contentSize = CGSize(width:375, height: 1650)
                
            }
            if UIScreen.mainScreen().nativeBounds.height == 2208 {
                 viewScroll.frame = CGRectMake(0, 0, 414, 64)
                userLabel.frame = CGRectMake(0, 8, 414, 64)
                ScrollView.frame = CGRectMake(0, 64, self.view.frame.width, 776)
               ScrollView.contentSize = CGSize(width:414, height: 1550)
            }
    }
}
    func backAction(){
        navigationController?.popViewControllerAnimated(true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
