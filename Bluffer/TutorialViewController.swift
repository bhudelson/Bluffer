//
//  TutorialViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet var scrollView: UIScrollView!
    

    @IBAction func onSkip3(sender: AnyObject) {
    }
    
    @IBAction func onSkip2(sender: AnyObject) {
        
    }
    
    @IBAction func onStartGame(sender: AnyObject) {
        
        //NOTE BUG HERE
        // When a game is finisheed and user taps "Exit"
        // Will exit to the Tutorial screen if that was loaded prior to the game
        // Instead of the main screen
        
        performSegueWithIdentifier("StartGame", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Tutorial View Controller Loaded")
        
        print("scrollView width: ", scrollView.bounds.width)
        print("scrollView height: ", scrollView.bounds.height)
        
        //contentWidth is 3x scrollView bounds because we have 3 horizontal tutorial screens
        let contentWidth = scrollView.bounds.width * 3
        let contentHeight = scrollView.bounds.height
        
        scrollView.contentSize = CGSizeMake(contentWidth, contentHeight)

        // Do any additional setup after loading the view.
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
