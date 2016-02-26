//
//  GameViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    //Child ViewControllers - DECLARATION
    var politicsViewController: UIViewController!
    var categoryViewController: UIViewController!
    
    var readyViewController: UIViewController!
    
    

    @IBOutlet var contentView: UIView!

    // GAME TRACKING
    var newGame = false
    var round = 0
    
    //var category = String("none")
    
    var team1Score = 0
    var team2Score = 0
    
    func startGame() {
        
        print("Game Started")
        
        
        //Check if user has selected a category 
        //Once selected, move the game forward
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Game View Controller Loaded")
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Category Child ViewControllers - INSTANTIATION
        
        categoryViewController = storyboard.instantiateViewControllerWithIdentifier("CategoryViewController") as! CategoryViewController
        
        politicsViewController = storyboard.instantiateViewControllerWithIdentifier("PoliticsViewController") as! PoliticsViewController
        
        
        // Add Category View Controller as child
        addChildViewController(categoryViewController)
        
        contentView.addSubview(categoryViewController.view)
        
        categoryViewController.didMoveToParentViewController(self)
        
        startGame()
        

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
